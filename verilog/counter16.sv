module counter16(
  input logic clk, rst, ld, inc,
  input tri[15:0] x,
  output logic[15:0] y
);
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