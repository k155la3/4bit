var fs = require('fs');
var module = process.argv[2];
if (!module) {
  console.error('Use: asm <module>');
  process.exit(1);
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
var noparamCommands = { 'nop': true };
var addressCommands = { 'jc': true, 'jz': true, 'jmp': true };
var immediateCommands = { 'ldi': true, 'addi': true, 'cmpi': true, 'nori': true };
var addr = 0;
var labelAddrs = {};
for (var i = 0; i < model.length; ++i) {
  var label = model[i].label;
  if (label) {
    labelAddrs[label] = addr;
  }
  var command = model[i].command;
  if (noparamCommands[command]) {
    model[i].addr = addr;
    addr += 1;
  }
  else if (addressCommands[command]) {
    model[i].addr = addr;
    addr += 2;
  }
  else if (immediateCommands[command]) {
    model[i].addr = addr;
    addr += 1;
  }
  else {
    console.error('Unknown command: ' + command);
    process.exit(1);
  }
}
var code = { 'nop': 0, 'jc': 0x10, 'jz': 0x20, 'jmp': 0x30, 'ldi': 0x40, 'addi': 0x50, 'cmpi': 0x60, 'nori': 0x70 };
var obj = new Buffer(8192);
for (var i = 0; i < obj.length; ++i) {
  obj[i] = 0;
}
obj.writeWithAddress = function (code, paramAddr, addr) {
  this.writeUInt8(code | ((paramAddr >> 8) & 0xf), addr);
  this.writeUInt8(paramAddr & 0xff, addr + 1);
}
obj.writeWithImmediate = function (code, immediate, addr) {
  this.writeUInt8(code | (immediate & 0xf), addr);
}
for (var i = 0; i < model.length; ++i) {
  var command = model[i].command;
  if (noparamCommands[command]) {
    obj.writeUInt8(code[command], model[i].addr);
  }
  else if (addressCommands[command]) {
    var label = model[i].params[0];
    var labelAddr = labelAddrs[label];
    if (labelAddr === undefined) {
      console.error('Unknown label: ' + label);
      process.exit(1);
    }
    obj.writeWithAddress(code[command], labelAddr, model[i].addr);
  }
  else if (immediateCommands[command]) {
    var immediateHex = model[i].params[0];
    var immediate = parseInt(immediateHex, 16);
    obj.writeWithImmediate(code[command], immediate, model[i].addr);
  }
}
fs.writeFileSync(module + '.obj', obj);
