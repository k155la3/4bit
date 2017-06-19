module ram(
  input wclk, rclk, we, re,
  input tri[ADDR_WIDTH-1:0] a,
  input tri[DATA_WIDTH-1:0] x,
  output tri[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 16;
  logic[DATA_WIDTH-1:0] m[0:2**ADDR_WIDTH-1];
  logic[DATA_WIDTH-1:0] yb;
  always @(posedge wclk)
    if (we)
      m[a] <= x;

  always @(posedge rclk)
    if (re)
      yb <= m[a];

  assign y = re ? yb : {DATA_WIDTH{1'bz}};
endmodule