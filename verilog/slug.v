module slug(
  input logic clk,
  input logic rst);

  logic wclk, fclk, wrst;

  initial begin
    wclk = 0;
    fclk = 0;
    wrst = 0;
  end

  always @(negedge clk)
    wclk <= ~wclk;
  always @(posedge clk)
    fclk <= ~fclk;
  always @(posedge wclk)
    wrst <= ~rst;

  logic[15:0] prog_addr;

  logic[7:0] prog, prog_buffer, control0, control1, control2;

  /* verilator lint_off UNUSED */
  logic oec, oeb, ldbc, oein, ldout, reram, weram, ldalu, oealu, ldfl, lda, oeop, alum, crin, ldpc, incpc, unused;
  logic[3:0] alus; 
  logic[2:0] sel;
  logic[7:0] dsel;

  counter16 ip(.clk(wclk), .rst(wrst), .ld(ldpc), .inc(incpc), .x(addr), .y(prog_addr));

  rom8x64k #("prog.data") prog_rom(.a(prog_addr), .y(prog));

  always @(posedge fclk)
    prog_buffer <= prog;

  rom8x2k #("ucode0.data") ucode0_rom(.a({3'b0, prog_buffer}), .y(control0));
  rom8x2k #("ucode1.data") ucode1_rom(.a({3'b0, prog_buffer}), .y(control1));
  rom8x2k #("ucode2.data") ucode2_rom(.a({3'b0, prog_buffer}), .y(control2));

  assign oec = ~control2[7];
  assign oeb = ~control2[6];
  assign ldbc = ~control2[5];
  assign oein = ~control2[4];
  assign ldout = ~control2[3];
  assign sel = control2[2:0];
  assign unused = control1[7];
  assign reram = ~control1[6];
  assign weram = ~control1[5];
  assign ldalu = ~control1[4];
  assign oealu = ~control1[3];
  assign ldfl = ~control1[2];
  assign lda = ~control1[1];
  assign oeop = ~control1[0];
  assign alus = control0[7:4];
  assign alum = control0[3];
  assign crin = ~control0[2];
  assign ldpc = ~control0[1];
  assign incpc = control0[0];

  decoder3 sel_decoder(.x(sel), .y(dsel));

  tri[15:0] addr;
  tri[3:0] data;

  assign data = oeop ? prog_buffer[3:0] : 4'bz;

  register4 b0(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[0]), .oe(oeb), .x(data), .y(addr[3:0]));
  register4 b1(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[1]), .oe(oeb), .x(data), .y(addr[7:4]));
  register4 b2(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[2]), .oe(oeb), .x(data), .y(addr[11:8]));
  register4 b3(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[3]), .oe(oeb), .x(data), .y(addr[15:12]));

  register4 c0(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[4]), .oe(oec), .x(data), .y(addr[3:0]));
  register4 c1(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[5]), .oe(oec), .x(data), .y(addr[7:4]));
  register4 c2(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[6]), .oe(oec), .x(data), .y(addr[11:8]));
  register4 c3(.clk(wclk), .rst(wrst), .ld(ldbc && dsel[7]), .oe(oec), .x(data), .y(addr[15:12]));

  always @(posedge clk)
    $display("prog_a: %H %H %H", prog_addr, addr, data);
   
endmodule