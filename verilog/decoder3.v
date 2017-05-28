module decoder3(
  input logic[2:0] x,
  output logic[7:0] y
);
  always_comb
    case (x)
      0: y = 'b00000001;
      1: y = 'b00000010;
      2: y = 'b00000100;
      3: y = 'b00001000;
      4: y = 'b00010000;
      5: y = 'b00100000;
      6: y = 'b01000000;
      7: y = 'b10000000;
      default: y = 0;
    endcase
endmodule