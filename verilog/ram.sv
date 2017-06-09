module ram(
  input clk, we, re,
  input tri[ADDR_WIDTH-1:0] a,
  input tri[DATA_WIDTH-1:0] x,
  output tri[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 16;
  logic[DATA_WIDTH-1:0] m[0:2**ADDR_WIDTH-1];
  always @(posedge clk)
    if (we)
      m[a] <= x;
  assign y = re ? m[a] : 4'bz;
endmodule