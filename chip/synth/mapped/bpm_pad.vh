/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Fri Dec  7 08:40:49 2018
/////////////////////////////////////////////////////////////


module bpm_pad ( q, cout, done, mplier, mcand, reset, clk );
  output [15:0] q;
  input [7:0] mplier;
  input [7:0] mcand;
  input reset, clk;
  output cout, done;
  wire   done_i, reset_i, init, clk_i, cout_i, N16, N15, N14, N13, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [15:0] q_i;
  wire   [3:0] CURRENT_STATE;

  bpm_custom custom ( .cout(cout_i), .mplier_7(mplier[7]), .mplier_6(mplier[6]), .mplier_5(mplier[5]), .mplier_4(mplier[4]), .mplier_3(mplier[3]), .mplier_2(
        mplier[2]), .mplier_1(mplier[1]), .mplier_0(mplier[0]), .mcand_7(
        mcand[7]), .mcand_6(mcand[6]), .mcand_5(mcand[5]), .mcand_4(mcand[4]), 
        .mcand_3(mcand[3]), .mcand_2(mcand[2]), .mcand_1(mcand[1]), .mcand_0(
        mcand[0]), .q_15(q_i[15]), .q_14(q_i[14]), .q_13(q_i[13]), .q_12(
        q_i[12]), .q_11(q_i[11]), .q_10(q_i[10]), .q_9(q_i[9]), .q_8(q_i[8]), 
        .q_7(q_i[7]), .q_6(q_i[6]), .q_5(q_i[5]), .q_4(q_i[4]), .q_3(q_i[3]), 
        .q_2(q_i[2]), .q_1(q_i[1]), .q_0(q_i[0]), .clk(clk_i), .en(1'b1), 
        .init(init) );
  PADOUT p39 ( .DO(done_i), .YPAD(done) );
  PADOUT p38 ( .DO(cout_i), .YPAD(cout) );
  PADOUT p37 ( .DO(q_i[15]), .YPAD(q[15]) );
  PADOUT p36 ( .DO(q_i[14]), .YPAD(q[14]) );
  PADOUT p35 ( .DO(q_i[13]), .YPAD(q[13]) );
  PADOUT p34 ( .DO(q_i[12]), .YPAD(q[12]) );
  PADOUT p33 ( .DO(q_i[11]), .YPAD(q[11]) );
  PADOUT p32 ( .DO(q_i[10]), .YPAD(q[10]) );
  PADOUT p31 ( .DO(q_i[9]), .YPAD(q[9]) );
  PADOUT p30 ( .DO(q_i[8]), .YPAD(q[8]) );
  PADOUT p29 ( .DO(q_i[7]), .YPAD(q[7]) );
  PADOUT p28 ( .DO(q_i[6]), .YPAD(q[6]) );
  PADOUT p27 ( .DO(q_i[5]), .YPAD(q[5]) );
  PADOUT p26 ( .DO(q_i[4]), .YPAD(q[4]) );
  PADOUT p25 ( .DO(q_i[3]), .YPAD(q[3]) );
  PADOUT p24 ( .DO(q_i[2]), .YPAD(q[2]) );
  PADOUT p23 ( .DO(q_i[1]), .YPAD(q[1]) );
  PADOUT p22 ( .DO(q_i[0]), .YPAD(q[0]) );
  PADVDD p21 (  );
  PADGND p20 (  );
  PADNC p19 (  );
  PADNC p18 (  );
  PADINC p17 ( .YPAD(reset), .DI(reset_i) );
  PADINC p16 ( .YPAD(clk), .DI(clk_i) );
  PADFC c04 (  );
  PADFC c03 (  );
  PADFC c02 (  );
  PADFC c01 (  );
  DFFPOSX1 \CURRENT_STATE_reg[3]  ( .D(N16), .CLK(clk_i), .Q(CURRENT_STATE[3])
         );
  DFFPOSX1 \CURRENT_STATE_reg[2]  ( .D(N15), .CLK(clk_i), .Q(CURRENT_STATE[2])
         );
  DFFPOSX1 \CURRENT_STATE_reg[0]  ( .D(N13), .CLK(clk_i), .Q(CURRENT_STATE[0])
         );
  DFFPOSX1 \CURRENT_STATE_reg[1]  ( .D(N14), .CLK(clk_i), .Q(CURRENT_STATE[1])
         );
  OAI21X1 U22 ( .A(n18), .B(done_i), .C(1'b1), .Y(init) );
  INVX1 U23 ( .A(CURRENT_STATE[2]), .Y(n28) );
  INVX1 U24 ( .A(CURRENT_STATE[3]), .Y(n19) );
  NOR2X1 U25 ( .A(CURRENT_STATE[0]), .B(CURRENT_STATE[1]), .Y(n21) );
  NAND2X1 U26 ( .A(n21), .B(n28), .Y(n23) );
  NOR2X1 U27 ( .A(n19), .B(n23), .Y(done_i) );
  NOR2X1 U28 ( .A(reset_i), .B(CURRENT_STATE[3]), .Y(n25) );
  NAND2X1 U29 ( .A(CURRENT_STATE[0]), .B(CURRENT_STATE[1]), .Y(n20) );
  NAND2X1 U30 ( .A(n25), .B(n20), .Y(n26) );
  NOR2X1 U31 ( .A(n21), .B(n26), .Y(N14) );
  INVX1 U32 ( .A(n25), .Y(n22) );
  NOR2X1 U33 ( .A(CURRENT_STATE[0]), .B(n22), .Y(N13) );
  INVX1 U34 ( .A(n23), .Y(n24) );
  NOR2X1 U35 ( .A(CURRENT_STATE[3]), .B(n24), .Y(n18) );
  NAND3X1 U37 ( .A(CURRENT_STATE[0]), .B(CURRENT_STATE[1]), .C(n25), .Y(n27)
         );
  AOI22X1 U38 ( .A(CURRENT_STATE[2]), .B(n26), .C(n27), .D(n28), .Y(N15) );
  INVX1 U39 ( .A(done_i), .Y(n29) );
  OAI22X1 U40 ( .A(reset_i), .B(n29), .C(n28), .D(n27), .Y(N16) );
endmodule

