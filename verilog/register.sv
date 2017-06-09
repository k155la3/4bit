module register(
  input logic clk, rst, ld, oe,
  input tri[DATA_WIDTH-1:0] x,
  output tri[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  logic[DATA_WIDTH-1:0] r;
  initial begin
    r = 0;
  end
  always @(posedge clk)
    if (rst)
      r <= 0;
    else if (ld)
      r <= x;
  assign y = oe ? r : {DATA_WIDTH{1'bz}};
endmodule