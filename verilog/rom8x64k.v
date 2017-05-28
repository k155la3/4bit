module rom8x64k(
  input logic[15:0] a,
  output logic[7:0] y
);
  parameter data_file = "rom8x64k.data";
  logic[7:0] m[0:65535];
  initial begin
    $readmemh(data_file, m);
  end
  assign y = m[a];
endmodule