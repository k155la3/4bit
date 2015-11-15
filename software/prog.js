var fs = require('fs');
var prog = new Buffer(8192);

for (var y = 0; y < prog.length; ++y) {
  prog[y] = 0;
}

fs.writeFileSync('prog.obj', prog);
