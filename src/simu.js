var fs = require('fs');

var pc = 0;
var phase = 0;
var fetchHigh = 0;
var fetchLow = 0;

var ucode = fs.readFileSync('ucode.bin');
var module = process.argv[2];
if (!module) {
  throw new Error('Use: simu <module>');
}
var prog = fs.readFileSync(module + '.obj');
var binaryByte = function (x) {
  return ('00000000' + (x).toString(2)).substr(-8);
}
var binaryWord = function (x) {
  return ('0000' + (x).toString(2)).substr(-4);
}

while (true) {
  var currProg = prog[pc];
  if (phase === 0) {
    fetchHigh = currProg >> 4;
    fetchLow = currProg & 0xf;
  }
  var currUcode = phase | (fetchHigh << 1);
  var control = ucode[currUcode];
  var incPc = (control & 0x1);
  var notLoadPc = (control & 0x2);

  console.log(
    'PC: ' + pc.toString(16) +
    '\tprog: ' + binaryByte(currProg) +
    '\tphase: ' + phase +
    '\tfetchHigh: ' + binaryWord(fetchHigh) +
    '\tfetchLow: ' + binaryWord(fetchLow) +
    '\tucode: ' + binaryByte(currUcode) +
    '\tcontrol: ' + binaryByte(control));

  if (incPc) {
    pc++;
  }
  if (!notLoadPc) {
    pc = (fetchLow << 8) | currProg;
  }

  phase = 1 - phase;
}
