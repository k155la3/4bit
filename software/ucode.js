var fs = require('fs');
var ucode0 = new Buffer(2048);
var ucode1 = new Buffer(2048);

var ucode = [
  { or: 0x7ff, and: 0x781, u0: 0xff, u1: 0xff }, // PHASE0
  { or: 0x7fe, and: 0x79e, u0: 0xfe, u1: 0xff }, // NOP
  { or: 0x7fc, and: 0x7bc, u0: 0xfc, u1: 0xff }, // JC
  { or: 0x7dc, and: 0x79c, u0: 0xff, u1: 0xff }, // JC
  { or: 0x7fa, and: 0x7da, u0: 0xfc, u1: 0xff }, // JZ
  { or: 0x7ba, and: 0x79a, u0: 0xff, u1: 0xff }, // JZ
  { or: 0x7f8, and: 0x798, u0: 0xfc, u1: 0xff }, // JMP
  { or: 0x7f6, and: 0x796, u0: 0xae, u1: 0xf8 }, // LDI
  { or: 0x7f4, and: 0x794, u0: 0x96, u1: 0xf8 }, // ADDI
  { or: 0x7f2, and: 0x792, u0: 0x62, u1: 0xfa }, // CMPI
  { or: 0x7f0, and: 0x790, u0: 0x1e, u1: 0xf8 }, // NORI
];

for (var i = 0; i < ucode0.length; ++i) {
  for (var y = 0; y < ucode.length; ++y) {
    if (((i | ucode[y].or) === 0x7ff) &&
        ((i & ucode[y].and) === 0x0)) {
      ucode0[i] = ucode[y].u0;
      ucode1[i] = ucode[y].u1;
    }
  }
}

fs.writeFileSync('ucode0.bin', ucode0);
fs.writeFileSync('ucode1.bin', ucode1);
