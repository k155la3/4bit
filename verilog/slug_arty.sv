module slug_arty(
    input logic rst,
    input logic clk,
    input logic[3:0] btn,
    input logic[3:0] sw,
    output logic[3:0] led,
    output logic[3:0] led_r
    );

  logic[31:0] port_out;
  slug slug_t(
    .clk(clk),
    .rst(rst),
    .port_in({20'b0, ~btn[3:0], 4'b0, sw[3:0]}),
    .port_out(port_out)
  );

  assign led = port_out[3:0];
  assign led_r = port_out[11:8];
  
endmodule