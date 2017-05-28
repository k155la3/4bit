module slug_sim;
  logic clk_t, rst_t;

  slug slug_t(
    .clk(clk_t),
    .rst(rst_t)
  );
  
  initial begin
    clk_t = 0;
    rst_t = 1;
    #52 rst_t = 0;
  end

  always
    #5 clk_t = ~clk_t;

endmodule