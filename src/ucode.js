var fs = require('fs');
var ucode0 = new Buffer(2048);
var ucode1 = new Buffer(2048);

for (var i = 0; i < ucode.length; ++i) {
  if (!(i & 0x1)) {
    // PHASE0
    ucode0[i] = 0xff;
    ucode1[i] = 0xff;
  }
  else if (i === 0x1) {
    // NOP
    ucode0[i] = 0xfe;
    ucode1[i] = 0xff;
  }
  else if (i === 0x3) {
    // JC
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else if (i === 0x5) {
    // JZ
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else if (i === 0x7) {
    // JMP
    ucode0[i] = 0xfc;
    ucode1[i] = 0xff;
  }
  else {
    ucode0[i] = 0xfe;
    ucode1[i] = 0xff;
  }
}

fs.writeFileSync('ucode0.bin', ucode0);
fs.writeFileSync('ucode1.bin', ucode1);
