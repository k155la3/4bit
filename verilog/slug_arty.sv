module slug_arty(
    input logic rst, sysclk,
    output logic uart_rxd,
    input logic uart_txd
    );

  logic clk0, clk1, clk2, clk3, clk_feedback;
  PLLE2_BASE #(
    .CLKFBOUT_MULT(8),
    .CLKIN1_PERIOD(10.0),
    .CLKOUT0_DIVIDE(32),
    .CLKOUT1_DIVIDE(32),
    .CLKOUT2_DIVIDE(32),
    .CLKOUT3_DIVIDE(32),
    .CLKOUT0_PHASE(0.0),
    .CLKOUT1_PHASE(90.0),
    .CLKOUT2_PHASE(180.0),
    .CLKOUT3_PHASE(270.0)
  ) genclock(
    .CLKOUT0(clk0),
    .CLKOUT1(clk1),
    .CLKOUT2(clk2),
    .CLKOUT3(clk3),
    .CLKFBOUT(clk_feedback),
    .CLKIN1(sysclk),
    .PWRDWN(1'b0),
    .RST(1'b0),
    .CLKFBIN(clk_feedback)
  );

  logic[31:0] port_out;
  logic[7:0] din, dout;
  logic rdy, tx_busy, wr_en, rdy_clr;

  assign din = port_out[7:0];
  assign wr_en = port_out[8];
  assign rdy_clr = port_out[9];

  uart uart(
      .clk_50m(sysclk),
      .tx(uart_rxd),
      .rx(uart_txd),
      .din(din),
      .dout(dout),
      .wr_en(wr_en),
      .tx_busy(tx_busy),
      .rdy(rdy),
      .rdy_clr(rdy_clr));

  slug #("echo.data") slug(
    .pclk(clk0),
    .uclk(clk1),
    .rclk(clk2),
    .wclk(clk3),
    .rst(rst),
    .port_in({22'b0, rdy, tx_busy, dout[7:0]}),
    .port_out(port_out)
  );
  
endmodule