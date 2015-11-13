var fs = require('fs');
var csv = require('csv');

var pc = 0;
var phase = 0;
var fetchHigh = 0;
var fetchLow = 0;
var acumulator = 0;
var flags = 0;
var ucode0 = fs.readFileSync('ucode0.bin');
var ucode1 = fs.readFileSync('ucode1.bin');
var module = process.argv[2];
if (!module) {
  console.error('Use: simu <module>');
  process.exit(1);
}
var prog = fs.readFileSync(module + '.obj');
var binaryByte = function (x) {
  return '0b' + ('00000000' + (x).toString(2)).substr(-8);
}
var binaryWord = function (x) {
  return '0b' + ('0000' + (x).toString(2)).substr(-4);
}
var runAlu = function (m, s, notCarryIn, a, b) {
  var f = function (x) {
    return {f: (x & 0xf), notCarryOut: (x >> 4) ? 0 : 1};
  };
  if (m) {
    switch (s) {
      case 0x1:
        return f((~a) | (~b));
      case 0xa:
        return f(b);
      default:
        return null;
    }
  }
  else {
    switch (s) {
      case 0x0:
        return f(a + (notCarryIn ? 0 : 1));
      case 0x6:
        return f((a - b - 1) + (notCarryIn ? 0 : 1));
      case 0x9:
        return f((a + b) + (notCarryIn ? 0 : 1));
      default:
        return null;
    }
  }
}
var columns = {
  pc: 'PC',
  prog: 'PROG',
  phase: 'PH',
  fetchHigh: 'FHIGH',
  fetchLow: 'FLOW',
  acumulator: 'ACU',
  flags: '~(00ZC)',
  ucode: 'UCODE',
  control0: 'CONTROL0',
  control1: 'CONTROL1'
};
var stringifier = csv.stringify({ header: true, columns: columns });
stringifier.pipe(fs.createWriteStream(module + '_trace.csv'));
for (var i = 0; i < 64; ++i) {
  var currProg = prog[pc];
  if (phase === 0) {
    fetchHigh = currProg >> 4;
    fetchLow = currProg & 0xf;
  }
  var currUcode = phase | (fetchHigh << 1) | (flags << 5);
  var control0 = ucode0[currUcode];
  var incPc = (control0 & 0x1);
  var notLoadPc = (control0 & 0x2);
  var notCarryIn = (control0 & 0x4);
  var aluM = (control0 & 0x8);
  var aluS = (control0 >> 4);
  var control1 = ucode1[currUcode];
  var notOeOperand = (control1 & 0x1);
  var notLoadAcu = (control1 & 0x2);
  var notLoadFlags = (control1 & 0x4);

  stringifier.write({
    pc: '0x' + pc.toString(16),
    prog: binaryByte(currProg),
    phase: phase,
    fetchHigh: binaryWord(fetchHigh),
    fetchLow: binaryWord(fetchLow),
    acumulator: binaryWord(acumulator),
    flags: binaryWord(flags),
    ucode: binaryByte(currUcode),
    control0: binaryByte(control0),
    control1: binaryByte(control1)
  });

  var aluA = acumulator;
  var aluB = notOeOperand ? 0 : fetchLow;
  var aluR = runAlu(aluM, aluS, notCarryIn, aluA, aluB);
  if (incPc) {
    pc++;
  }
  if (!notLoadPc) {
    pc = (fetchLow << 8) | currProg;
  }
  if (!notLoadAcu) {
    acumulator = aluR.f;
  }
  if (!notLoadFlags) {
    if (aluR.notCarryOut) {
      flags |= 0x1;
    }
    else {
      flags &= (~0x1);
    }
    if (aluR.f === 0) {
      flags &= (~0x2);
    }
    else {
      flags |= 0x2;
    }
  }
  phase = 1 - phase;
}
stringifier.end();
