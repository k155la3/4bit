var fs = require('fs');
var prog = new Buffer(8192);

for (var y = 0; y < prog.length; ++y) {
  if (y === 1) {
    // jmp 110
    prog[y] = 0xf1;
    prog[++y] = 0x10;
  }
  else if (y === 0x111) {
    // jmp 0
    prog[y] = 0xf0;
    prog[++y] = 0;
  }
  else {
    // nop
    prog[y] = 0;
  }
}

fs.writeFileSync('prog.obj', prog);
console.log('OK');
