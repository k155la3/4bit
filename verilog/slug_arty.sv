module slug_arty(
    input logic rst, sysclk,
    output logic[3:0] led
    );

  logic clk, clk_feedback;
  PLLE2_BASE #(
    .CLKFBOUT_MULT(8),
    .CLKIN1_PERIOD(10.0),
    .CLKOUT0_DIVIDE(8),
    .CLKOUT0_PHASE(0.0)
  ) genclock(
    .CLKOUT0(clk),
    .CLKFBOUT(clk_feedback),
    .CLKIN1(sysclk),
    .PWRDWN(1'b0),
    .RST(1'b0),
    .CLKFBIN(clk_feedback)
  );

  logic[31:0] port_out;
  slug #("counter.data") slug(
    .clk(clk),
    .rst(rst),
    .port_in(32'b0),
    .port_out(port_out)
  );

  assign led = port_out[3:0];
  
endmodule