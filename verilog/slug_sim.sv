module slug_sim;
  logic clk_t, rst_t;
  logic[31:0] port_in_t, port_out_t;

  slug #("counter.data") slug_t(
    .clk(clk_t),
    .rst(rst_t),
    .port_in(port_in_t),
    .port_out(port_out_t)
  );
  
  initial begin
    clk_t = 0;
    rst_t = 1;
    port_in_t = 0;
  end

  always
    #10 clk_t = ~clk_t;

endmodule