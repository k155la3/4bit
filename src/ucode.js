var fs = require('fs');
var ucode = new Buffer(2048);

for (var i = 0; i < ucode.length; ++i) {
  if (!(i & 0x1)) {
    // phase 0: incpc notloadpc
    ucode[i] = 0x1 | 0x2;
  }
  else if (i === 0x1) {
    // nop: notloadpc
    ucode[i] = 0x2;
  }
  else if (i === 0x1f) {
    // jmp:
    ucode[i] = 0;
  }
  else {
    ucode[i] = 0x2;
  }
}

fs.writeFileSync('ucode.bin', ucode);
console.log('OK');
