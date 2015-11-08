var fs = require('fs');
var module = process.argv[2];
if (!module) {
  throw new Error('Use: asm <module>');
}
var asm = fs.readFileSync(module + '.asm', 'utf8');
var lines = asm.split('\n');
var model = [];
for (var i = 0; i < lines.length; ++i) {
  var tokens = lines[i].split(/\t| /).filter(function (t) { return t.length; });
  if (!tokens.length) continue;
  var label = null;
  var y = 0;
  if (tokens[y].length > 1 && tokens[y][tokens[y].length - 1] === ':') {
    label = tokens[y].substr(0, tokens[y].length - 1);
    y += 1;
  }
  var command = tokens[y];
  var params = tokens.slice(y + 1);
  model.push({command: command, params: params, label: label});
}
var set = { nop: 'nop', jmp: 'jmp' };
var addr = 0;
var labelAddrs = {};
for (var i = 0; i < model.length; ++i) {
  var label = model[i].label;
  if (label) {
    labelAddrs[label] = addr;
  }
  var command = model[i].command;
  if (command === set.nop) {
    model[i].addr = addr;
    addr += 1;
  }
  else if (command === set.jmp) {
    model[i].addr = addr;
    addr += 2;
  }
  else {
    throw new Error('Unknown command: ' + command);
  }
}
var code = { nop: 0, jmp: 0x30 };
var obj = new Buffer(8192);
for (var i = 0; i < obj.length; ++i) {
  obj[i] = 0;
}
obj.writeWithAddr = function (code, paramAddr, addr) {
  this.writeUInt8(code | ((paramAddr >> 8) & 0xf), addr);
  this.writeUInt8(paramAddr & 0xff, addr + 1);
}
for (var i = 0; i < model.length; ++i) {
  var command = model[i].command;
  if (command === set.nop) {
    obj.writeUInt8(code.nop, model[i].addr);
  }
  else if (command === set.jmp) {
    var label = model[i].params[0];
    var labelAddr = labelAddrs[label];
    if (labelAddr === undefined) {
      throw new Error('Unknown label: ' + label);
    }
    obj.writeWithAddr(code.jmp, labelAddr, model[i].addr);
  }
}
fs.writeFileSync(module + '.obj', obj);
