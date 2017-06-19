module counter(
  input logic clk, rst, ld, inc,
  input tri[DATA_WIDTH-1:0] x,
  output logic[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  logic[DATA_WIDTH-1:0] yb;
  initial begin
    yb = 0;
  end
  always @(posedge clk)
    if (rst)
      yb <= 0;
    else if (ld)
      yb <= x;
    else if (inc)
      yb <= y + 1;
  assign y = yb;
endmodule