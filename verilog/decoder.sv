module decoder(
  input logic[WIDTH-1:0] x,
  output logic[2**WIDTH-1:0] y
);
  parameter WIDTH = 8;
  always_comb
    y = 'b1 << x;
endmodule