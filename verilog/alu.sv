module alu(
  input crin, m,
  input logic[3:0] a,
  input logic[3:0] b,
  input logic[3:0] s,
  output logic[3:0] f,
  output logic crout
);
  always_comb
    if (m) begin
      case (s)
        4'h1: f = ~(a | b);
        4'ha: f = b;
        default: f = 4'bx;
      endcase
      crout = 0; 
    end else begin
      logic[4:0] y;
      case (s)
        4'h0: y = {1'b0, a} + {4'b0, crin};
        4'h6: y = {1'b0, a} + {1'b0, (~b)} + {4'b0, crin};
        4'h9: y = {1'b0, a} + {1'b0, b} + {4'b0, crin};
        default: y = 5'bx;
      endcase
      crout = y[4];
      f = y[3:0];
    end
endmodule