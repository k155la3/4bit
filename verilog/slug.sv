module slug(
  input logic pclk, uclk, rclk, wclk, rst,
  input logic[31:0] port_in,
  output logic[31:0] port_out);
  parameter PROF_DATA_FILE = "echo.data";

  logic sync_rst;

  initial begin
    sync_rst = 0;
  end

  always @(posedge pclk)
    sync_rst <= ~rst;

  logic[15:0] prog_addr;
  logic[7:0] prog, control0, control2;
  logic[6:0] control1;

  logic oec, oeb, ldbc, oein, ldout, reram, weram, ldalu, oea, ldfl, lda, oeop, alum, crin, ldpc, incpc, crout, zero;

  logic[3:0] alus, aluf, alua, alub;
  logic[1:0] flags; 
  logic[2:0] sel;
  logic[7:0] dsel;

  tri[15:0] addr;
  tri[3:0] data;

  counter #(16) ip(.clk(wclk), .rst(sync_rst), .ld(ldpc), .inc(incpc), .x(addr), .y(prog_addr));
  
  rom #(8,16,PROF_DATA_FILE) prog_rom(.clk(pclk), .a(prog_addr), .y(prog));
  rom #(8,11,"ucode0.data") ucode0_rom(.clk(uclk), .a({1'b0, ~flags, prog}), .y(control0));
  rom #(7,11,"ucode1.data") ucode1_rom(.clk(uclk), .a({1'b0, ~flags, prog}), .y(control1));
  rom #(8,11,"ucode2.data") ucode2_rom(.clk(uclk), .a({1'b0, ~flags, prog}), .y(control2));

  assign oec = ~control2[7];
  assign oeb = ~control2[6];
  assign ldbc = ~control2[5];
  assign oein = ~control2[4];
  assign ldout = ~control2[3];
  assign sel = control2[2:0];
  assign reram = ~control1[6];
  assign weram = ~control1[5];
  assign ldalu = ~control1[4];
  assign oea = ~control1[3];
  assign ldfl = ~control1[2];
  assign lda = ~control1[1];
  assign oeop = ~control1[0];
  assign alus = control0[7:4];
  assign alum = control0[3];
  assign crin = ~control0[2];
  assign ldpc = ~control0[1];
  assign incpc = control0[0];
  assign data = oeop ? prog[3:0] : (oea ? alua : 4'bz);
  assign alub = ldalu ? data : {alua[0],alua[3],alua[2],alua[1]};
  assign zero = ~((aluf[0] | aluf[1]) | (aluf[2] | aluf[3]));

  decoder #(3) sel_decoder(.x(sel), .y(dsel));

  register #(4) b0(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[0]), .oe(oeb), .x(data), .y(addr[3:0]));
  register #(4) b1(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[1]), .oe(oeb), .x(data), .y(addr[7:4]));
  register #(4) b2(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[2]), .oe(oeb), .x(data), .y(addr[11:8]));
  register #(4) b3(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[3]), .oe(oeb), .x(data), .y(addr[15:12]));

  register #(4) c0(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[4]), .oe(oec), .x(data), .y(addr[3:0]));
  register #(4) c1(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[5]), .oe(oec), .x(data), .y(addr[7:4]));
  register #(4) c2(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[6]), .oe(oec), .x(data), .y(addr[11:8]));
  register #(4) c3(.clk(wclk), .rst(sync_rst), .ld(ldbc & dsel[7]), .oe(oec), .x(data), .y(addr[15:12]));

  alu alu(.crin(crin), .s(alus), .m(alum), .a(alua), .b(alub), .f(aluf), .crout(crout));

  register #(4) a(.clk(wclk), .rst(sync_rst), .ld(lda), .oe('b1), .x(aluf), .y(alua));
  register #(2) f(.clk(wclk), .rst(sync_rst), .ld(ldfl), .oe('b1), .x({zero, crout}), .y(flags));

  register #(4) in0(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[0]), .x(port_in[3:0]), .y(data));
  register #(4) in1(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[1]), .x(port_in[7:4]), .y(data));
  register #(4) in2(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[2]), .x(port_in[11:8]), .y(data));
  register #(4) in3(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[3]), .x(port_in[15:12]), .y(data));
  register #(4) in4(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[4]), .x(port_in[19:16]), .y(data));
  register #(4) in5(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[5]), .x(port_in[23:20]), .y(data));
  register #(4) in6(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[6]), .x(port_in[27:24]), .y(data));
  register #(4) in7(.clk(wclk), .rst(sync_rst), .ld('b1), .oe(oein & dsel[7]), .x(port_in[31:28]), .y(data));

  register #(4) out0(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[0]), .oe('b1), .x(data), .y(port_out[3:0]));
  register #(4) out1(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[1]), .oe('b1), .x(data), .y(port_out[7:4]));
  register #(4) out2(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[2]), .oe('b1), .x(data), .y(port_out[11:8]));
  register #(4) out3(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[3]), .oe('b1), .x(data), .y(port_out[15:12]));
  register #(4) out4(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[4]), .oe('b1), .x(data), .y(port_out[19:16]));
  register #(4) out5(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[5]), .oe('b1), .x(data), .y(port_out[23:20]));
  register #(4) out6(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[6]), .oe('b1), .x(data), .y(port_out[27:24]));
  register #(4) out7(.clk(wclk), .rst(sync_rst), .ld(ldout & dsel[7]), .oe('b1), .x(data), .y(port_out[31:28]));

  ram #(4,16) data_ram(.wclk(wclk), .rclk(rclk), .we(weram), .re(reram), .x(data), .y(data), .a(addr));

  //always @(clk0, clk1)
    //$display("%H %H", clk0, clk1);
   
endmodule