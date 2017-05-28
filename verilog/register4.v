module register4(
  input logic clk, rst, ld, oe,
  input tri[3:0] x,
  output tri[3:0] y
);
  logic[3:0] r;
  initial begin
    r = 0;
  end
  always @(posedge clk)
    if (rst)
      r <= 0;
    else if (ld)
      r <= x;
  assign y = oe ? r : 4'bz;
endmodule