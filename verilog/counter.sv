module counter(
  input logic clk, rst, ld, inc,
  input tri[DATA_WIDTH-1:0] x,
  output logic[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  initial begin
    y = 0;
  end
  always @(posedge clk)
    if (rst)
      y <= 0;
    else if (ld)
      y <= x;
    else if (inc)
      y <= y + 1;
endmodule