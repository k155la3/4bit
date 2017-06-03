module rom8x2k(
  input logic[10:0] a,
  output logic[7:0] y
);
  parameter data_file = "rom8x2k.data";
  (* rom_style = "block" *) logic[7:0] m[0:2047];
  initial begin
    $readmemh(data_file, m);
  end
  assign y = m[a];
endmodule