module slug_arty(
    input logic rst,
    input logic clk,
    output logic[3:0] led
    );

  logic[31:0] port_out;
  slug #("counter.data") slug_t(
    .clk(clk),
    .rst(rst),
    .port_in(32'b0),
    .port_out(port_out)
  );

  assign led = port_out[3:0];
  
endmodule