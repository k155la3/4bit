var fs = require('fs');
var ucode0 = new Buffer(2048);
var ucode1 = new Buffer(2048);

for (var i = 0; i < ucode0.length; ++i) {
  if (((i | 0x7ff) === 0x7ff) &&
      ((i & 0x781) === 0x0)) {
    // PHASE0
    ucode0[i] = 0xff;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7fe) === 0x7ff) &&
           ((i & 0x79e) === 0x0)) {
    // NOP
    ucode0[i] = 0xfe;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7fc) === 0x7ff) &&
           ((i & 0x7bc) === 0x0)) {
    // JC
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7dc) === 0x7ff) &&
           ((i & 0x79c) === 0x0)) {
    // JC
    ucode0[i] = 0xff;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7fa) === 0x7ff) &&
           ((i & 0x7da) === 0x0)) {
    // JZ
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7ba) === 0x7ff) &&
           ((i & 0x79a) === 0x0)) {
    // JZ
    ucode0[i] = 0xff;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7f8) === 0x7ff) &&
           ((i & 0x798) === 0x0)) {
    // JMP
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else if (((i | 0x7f6) === 0x7ff) &&
           ((i & 0x796) === 0x0)) {
    // LDI
    ucode0[i] = 0xae;
    ucode1[i] = 0xf8;
  }
  else if (((i | 0x7f4) === 0x7ff) &&
           ((i & 0x794) === 0x0)) {
    // ADDI
    ucode0[i] = 0x96;
    ucode1[i] = 0xf8;
  }
  else if (((i | 0x7f2) === 0x7ff) &&
           ((i & 0x792) === 0x0)) {
    // CMPI
    ucode0[i] = 0x62;
    ucode1[i] = 0xfa;
  }
  else if (((i | 0x7f0) === 0x7ff) &&
           ((i & 0x790) === 0x0)) {
    // NORI
    ucode0[i] = 0x1e;
    ucode1[i] = 0xf8;
  }
  else {
    ucode0[i] = 0xfe;
    ucode1[i] = 0xff;
  }
}

fs.writeFileSync('ucode0.bin', ucode0);
fs.writeFileSync('ucode1.bin', ucode1);
