/* verilator lint_off UNUSED */
module slug(
  input logic clk, rst,
  input logic[31:0] port_in,
  output logic[31:0] port_out);
  parameter PROF_DATA_FILE = "prog.data";

  logic sync_rst;

  initial begin
    sync_rst = 0;
  end

  always @(posedge clk)
    sync_rst <= ~rst;

  logic[15:0] st0_prog_addr;
  logic[1:0] st0_flags;
  logic[3:0] st0_a; 

  logic[7:0] st1_prog;
  logic[1:0] st1_flags;
  logic[3:0] st1_a; 
    
  logic[7:0] st2_control0, st2_control2;
  logic[6:0] st2_control1;
  logic[3:0] st2_op;
  logic[3:0] st2_a; 

  logic oec, oeb, oein;

  logic[7:0] st3_control0, st3_control2;
  logic[6:0] st3_control1;
  logic[2:0] st3_sel;
  logic[7:0] st3_dsel;
  logic[15:0] st3_addr;
  logic[3:0] st3_a;
  logic[3:0] st3_op;

  logic reram, oea, oeop;

  logic[7:0] st4_control0, st4_control2;
  logic[6:0] st4_control1;
  logic[2:0] st4_sel;
  logic[7:0] st4_dsel;
  logic[15:0] st4_addr;
  logic[3:0] st4_data;
  logic[3:0] st4_a;

  logic weram, ldbc, ldalu, ldfl, lda, ldout, alum, crin, ldpc, incpc, crout, zero;
  logic[3:0] alus, aluf, alub;

  counter #(16) ip(.clk(clk), .rst(sync_rst), .ld(ldpc), .inc(incpc), .x(st4_addr), .y(st0_prog_addr));
  
  // 0
  always @(posedge clk) begin
    st1_a <= st0_a;
    st1_flags <= st0_flags;
  end

  rom #(8,16,PROF_DATA_FILE) prog_rom(.clk(clk), .a(st0_prog_addr), .y(st1_prog));

  // 1
  rom #(8,11,"ucode0.data") ucodest0_rom(.clk(clk), .a({1'b0, ~st1_flags, st1_prog}), .y(st2_control0));
  rom #(7,11,"ucode1.data") ucodest1_rom(.clk(clk), .a({1'b0, ~st1_flags, st1_prog}), .y(st2_control1));
  rom #(8,11,"ucode2.data") ucodest2_rom(.clk(clk), .a({1'b0, ~st1_flags, st1_prog}), .y(st2_control2));

  always @(posedge clk) begin
    st2_a <= st1_a;
    st2_op <= st1_prog[3:0];
  end

  // 2
  assign oec = ~st2_control2[7];
  assign oeb = ~st2_control2[6];

  always @(posedge clk) begin
    st3_a <= st2_a;
    st3_op <= st2_op;
    st3_control0 <= st2_control0;
    st3_control1 <= st2_control1;
    st3_control2 <= st2_control2;
  end

  // 3
  assign reram = ~st3_control1[6];
  assign oein = ~st3_control2[4];
  assign oea = ~st3_control1[3];
  assign oeop = ~st3_control1[0];
  assign st3_sel = st3_control2[2:0];

  decoder #(3) st3_sel_decoder(.x(st3_sel), .y(st3_dsel));

  always @(posedge clk) begin
    st4_a <= st3_a;
    if (oeop)
      st4_data <= st3_op;
    else if (oea)
      st4_data <= st3_a;
    st4_addr <= st3_addr;
    st4_control0 <= st3_control0;
    st4_control1 <= st3_control1;
    st4_control2 <= st3_control2;
  end

  // 4
  assign weram = ~st4_control1[5];
  assign ldbc = ~st4_control2[5];
  assign ldout = ~st4_control2[3];
  assign st4_sel = st4_control2[2:0];
  assign ldalu = ~st4_control1[4];
  assign ldfl = ~st4_control1[2];
  assign lda = ~st4_control1[1];
  assign alus = st4_control0[7:4];
  assign alum = st4_control0[3];
  assign crin = ~st4_control0[2];
  assign ldpc = ~st4_control0[1];
  assign incpc = st4_control0[0];
  assign alub = ldalu ? st4_data : {st4_a[0],st4_a[3],st4_a[2],st4_a[1]};
  assign zero = ~((aluf[0] | aluf[1]) | (aluf[2] | aluf[3]));

  decoder #(3) st4_sel_decoder(.x(st4_sel), .y(st4_dsel));

  register #(4) b0(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[0]), .oe(oeb), .x(st4_data), .y(st3_addr[3:0]));
  register #(4) b1(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[1]), .oe(oeb), .x(st4_data), .y(st3_addr[7:4]));
  register #(4) b2(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[2]), .oe(oeb), .x(st4_data), .y(st3_addr[11:8]));
  register #(4) b3(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[3]), .oe(oeb), .x(st4_data), .y(st3_addr[15:12]));

  register #(4) c0(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[4]), .oe(oec), .x(st4_data), .y(st3_addr[3:0]));
  register #(4) c1(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[5]), .oe(oec), .x(st4_data), .y(st3_addr[7:4]));
  register #(4) c2(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[6]), .oe(oec), .x(st4_data), .y(st3_addr[11:8]));
  register #(4) c3(.clk(clk), .rst(sync_rst), .ld(ldbc & st4_dsel[7]), .oe(oec), .x(st4_data), .y(st3_addr[15:12]));

  alu alu(.crin(crin), .s(alus), .m(alum), .a(st4_a), .b(alub), .f(aluf), .crout(crout));

  register #(4) a_reg(.clk(clk), .rst(sync_rst), .ld(lda), .oe('b1), .x(aluf), .y(st0_a));
  register #(2) f_reg(.clk(clk), .rst(sync_rst), .ld(ldfl), .oe('b1), .x({zero, crout}), .y(st0_flags));

  /*register #(4) in0(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[0]), .x(port_in[3:0]), .y(st4_data));
  register #(4) in1(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[1]), .x(port_in[7:4]), .y(st4_data));
  register #(4) in2(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[2]), .x(port_in[11:8]), .y(st4_data));
  register #(4) in3(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[3]), .x(port_in[15:12]), .y(st4_data));
  register #(4) in4(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[4]), .x(port_in[19:16]), .y(st4_data));
  register #(4) in5(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[5]), .x(port_in[23:20]), .y(st4_data));
  register #(4) in6(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[6]), .x(port_in[27:24]), .y(st4_data));
  register #(4) in7(.clk(clk), .rst(sync_rst), .ld('b1), .oe(oein & st3_dsel[7]), .x(port_in[31:28]), .y(st4_data));*/

  register #(4) out0(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[0]), .oe('b1), .x(st4_data), .y(port_out[3:0]));
  register #(4) out1(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[1]), .oe('b1), .x(st4_data), .y(port_out[7:4]));
  register #(4) out2(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[2]), .oe('b1), .x(st4_data), .y(port_out[11:8]));
  register #(4) out3(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[3]), .oe('b1), .x(st4_data), .y(port_out[15:12]));
  register #(4) out4(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[4]), .oe('b1), .x(st4_data), .y(port_out[19:16]));
  register #(4) out5(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[5]), .oe('b1), .x(st4_data), .y(port_out[23:20]));
  register #(4) out6(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[6]), .oe('b1), .x(st4_data), .y(port_out[27:24]));
  register #(4) out7(.clk(clk), .rst(sync_rst), .ld(ldout & st4_dsel[7]), .oe('b1), .x(st4_data), .y(port_out[31:28]));

  //ram #(4,16) data_ram(.clk(clk), .we(weram), .re(reram), .x(st4_data), .y(st4_data), .ar(st3_addr), .aw(st4_addr));

  always @(posedge clk)
    $display("%H %H %H %H %H %H %H %H",
      st0_prog_addr, 
      st0_a,
      st1_prog,
      st1_a,
      st2_a,
      st3_a,
      st4_a,
      port_out);
   
endmodule