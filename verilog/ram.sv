module ram(
  input clk, we, re,
  input tri[ADDR_WIDTH-1:0] ar, aw,
  input tri[DATA_WIDTH-1:0] x,
  output tri[DATA_WIDTH-1:0] y
);
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 16;
  logic[DATA_WIDTH-1:0] m[0:2**ADDR_WIDTH-1];
  logic[DATA_WIDTH-1:0] yb;
  always @(posedge clk) begin
    if (we)
      m[aw] <= x;
    if (re)
      yb <= m[ar];
  end

  assign y = re ? yb : {DATA_WIDTH{1'bz}};
endmodule