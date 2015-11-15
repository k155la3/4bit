var fs = require('fs');
var ucode0 = new Buffer(2048);
var ucode1 = new Buffer(2048);

var ucode = [
  { or: 0x7ff, and: 0x0ff, u0: 0xff, u1: 0xff }, // NOP
  { or: 0x7f6, and: 0x1f6, u0: 0xfc, u1: 0xff }, // JC
  { or: 0x6f6, and: 0x0f6, u0: 0xff, u1: 0xff }, // JC
  { or: 0x7f5, and: 0x2f5, u0: 0xfc, u1: 0xff }, // JZ
  { or: 0x5f5, and: 0x0f5, u0: 0xff, u1: 0xff }, // JZ
  { or: 0x7f4, and: 0x0f4, u0: 0xfc, u1: 0xff }, // JMP
  { or: 0x7f0, and: 0x0f0, u0: 0xfe, u1: 0xff }, // HLT
  { or: 0x7ef, and: 0x0e0, u0: 0xaf, u1: 0xf8 }, // LDI
  { or: 0x7df, and: 0x0d0, u0: 0x97, u1: 0xf8 }, // ADDI
  { or: 0x7cf, and: 0x0c0, u0: 0x63, u1: 0xfa }, // CMPI
  { or: 0x7bf, and: 0x0b0, u0: 0x1f, u1: 0xf8 }, // NORI
  { or: 0x7af, and: 0x0a0, u0: 0x63, u1: 0xf8 }, // SUBI
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
