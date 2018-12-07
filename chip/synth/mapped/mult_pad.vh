/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Wed Nov  7 14:25:59 2018
/////////////////////////////////////////////////////////////


module mult_pad ( result, cout, a, b, reset, clk );
  output [7:0] result;
  input [3:0] a;
  input [3:0] b;
  input reset, clk;
  output cout;
  wire   cout_i, clk_i, reset_i, \carry3[0] , \carry2[0] , \carry1[0] ,
         \sum3[3] , \P1[0] , \P0[1] , S12, S15, S16, C27, S17, C17, n8, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103;
  wire   [7:0] multiplication;
  wire   [3:0] a_i;
  wire   [3:0] b_i;
  wire   [7:0] sum;
  wire   [7:0] result_i;

  rca8 custom ( .cout(cout_i), .sum_7(sum[7]), .sum_6(sum[6]), .sum_5(sum[5]), 
        .sum_4(sum[4]), .sum_3(sum[3]), .sum_2(sum[2]), .sum_1(sum[1]), 
        .sum_0(sum[0]), .a_7(multiplication[7]), .a_6(multiplication[6]), 
        .a_5(multiplication[5]), .a_4(multiplication[4]), .a_3(
        multiplication[3]), .a_2(multiplication[2]), .a_1(multiplication[1]), 
        .a_0(multiplication[0]), .b_7(result_i[7]), .b_6(result_i[6]), .b_5(
        result_i[5]), .b_4(result_i[4]), .b_3(result_i[3]), .b_2(result_i[2]), 
        .b_1(result_i[1]), .b_0(result_i[0]), .c_0(1'b0) );
  PADNC p39 (  );
  PADNC p38 (  );
  PADNC p37 (  );
  PADNC p36 (  );
  PADINC p35 ( .YPAD(a[3]), .DI(a_i[3]) );
  PADINC p34 ( .YPAD(a[2]), .DI(a_i[2]) );
  PADINC p33 ( .YPAD(a[1]), .DI(a_i[1]) );
  PADINC p32 ( .YPAD(a[0]), .DI(a_i[0]) );
  PADNC p31 (  );
  PADNC p30 (  );
  PADNC p29 (  );
  PADNC p28 (  );
  PADINC p27 ( .YPAD(b[3]), .DI(b_i[3]) );
  PADINC p26 ( .YPAD(b[2]), .DI(b_i[2]) );
  PADINC p25 ( .YPAD(b[1]), .DI(b_i[1]) );
  PADINC p24 ( .YPAD(b[0]), .DI(b_i[0]) );
  PADINC p23 ( .YPAD(reset), .DI(reset_i) );
  PADINC p22 ( .YPAD(clk), .DI(clk_i) );
  PADVDD p21 (  );
  PADGND p20 (  );
  PADNC p19 (  );
  PADNC p18 (  );
  PADNC p17 (  );
  PADNC p16 (  );
  PADNC p15 (  );
  PADNC p14 (  );
  PADNC p13 (  );
  PADOUT p12 ( .DO(cout_i), .YPAD(cout) );
  PADOUT p11 ( .DO(result_i[7]), .YPAD(result[7]) );
  PADOUT p10 ( .DO(result_i[6]), .YPAD(result[6]) );
  PADOUT p09 ( .DO(result_i[5]), .YPAD(result[5]) );
  PADOUT p08 ( .DO(result_i[4]), .YPAD(result[4]) );
  PADOUT p07 ( .DO(result_i[3]), .YPAD(result[3]) );
  PADOUT p06 ( .DO(result_i[2]), .YPAD(result[2]) );
  PADOUT p05 ( .DO(result_i[1]), .YPAD(result[1]) );
  PADOUT p04 ( .DO(result_i[0]), .YPAD(result[0]) );
  PADNC p03 (  );
  PADNC p02 (  );
  PADVDD p01 (  );
  PADGND p00 (  );
  PADFC c04 (  );
  PADFC c03 (  );
  PADFC c02 (  );
  PADFC c01 (  );
  DFFSR \q_reg[7]  ( .D(sum[7]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[7]) );
  DFFSR \q_reg[0]  ( .D(sum[0]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[0]) );
  DFFSR \q_reg[1]  ( .D(sum[1]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[1]) );
  DFFSR \q_reg[2]  ( .D(sum[2]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[2]) );
  DFFSR \q_reg[3]  ( .D(sum[3]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[3]) );
  DFFSR \q_reg[4]  ( .D(sum[4]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[4]) );
  DFFSR \q_reg[5]  ( .D(sum[5]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[5]) );
  DFFSR \q_reg[6]  ( .D(sum[6]), .CLK(clk_i), .R(n8), .S(1'b1), .Q(result_i[6]) );
  OAI21X1 U71 ( .A(n58), .B(n57), .C(1'b1), .Y(multiplication[0]) );
  OR2X1 U72 ( .A(C17), .B(C27), .Y(multiplication[7]) );
  XOR2X1 U73 ( .A(\P0[1] ), .B(\P1[0] ), .Y(multiplication[1]) );
  XOR2X1 U74 ( .A(n59), .B(\carry3[0] ), .Y(multiplication[4]) );
  XOR2X1 U75 ( .A(\carry1[0] ), .B(S12), .Y(multiplication[2]) );
  XOR2X1 U76 ( .A(\carry2[0] ), .B(S15), .Y(multiplication[3]) );
  XOR2X1 U77 ( .A(n60), .B(S16), .Y(multiplication[5]) );
  XOR2X1 U78 ( .A(\sum3[3] ), .B(S17), .Y(multiplication[6]) );
  INVX1 U79 ( .A(\P0[1] ), .Y(n62) );
  INVX1 U80 ( .A(n71), .Y(n73) );
  INVX1 U81 ( .A(n92), .Y(n60) );
  INVX1 U82 ( .A(reset_i), .Y(n8) );
  INVX1 U83 ( .A(b_i[0]), .Y(n57) );
  INVX1 U84 ( .A(a_i[1]), .Y(n82) );
  NOR2X1 U85 ( .A(n57), .B(n82), .Y(\P0[1] ) );
  INVX1 U86 ( .A(a_i[0]), .Y(n58) );
  INVX1 U87 ( .A(a_i[2]), .Y(n84) );
  NOR2X1 U88 ( .A(n57), .B(n84), .Y(n67) );
  INVX1 U89 ( .A(b_i[2]), .Y(n68) );
  NOR2X1 U90 ( .A(n84), .B(n68), .Y(n87) );
  INVX1 U91 ( .A(b_i[1]), .Y(n70) );
  INVX1 U92 ( .A(a_i[3]), .Y(n99) );
  NOR2X1 U93 ( .A(n70), .B(n99), .Y(n83) );
  OAI21X1 U94 ( .A(n67), .B(n87), .C(n83), .Y(n96) );
  NAND2X1 U95 ( .A(b_i[3]), .B(a_i[2]), .Y(n95) );
  NAND2X1 U96 ( .A(b_i[2]), .B(a_i[3]), .Y(n94) );
  NAND2X1 U97 ( .A(a_i[2]), .B(b_i[1]), .Y(n61) );
  NOR2X1 U98 ( .A(n62), .B(n61), .Y(n81) );
  AOI22X1 U99 ( .A(b_i[0]), .B(a_i[3]), .C(a_i[2]), .D(b_i[1]), .Y(n63) );
  AOI21X1 U100 ( .A(n83), .B(n67), .C(n63), .Y(n80) );
  NOR2X1 U101 ( .A(n82), .B(n68), .Y(n79) );
  NAND2X1 U102 ( .A(a_i[0]), .B(b_i[3]), .Y(n78) );
  INVX1 U103 ( .A(b_i[3]), .Y(n100) );
  OAI21X1 U104 ( .A(n100), .B(n58), .C(n75), .Y(n64) );
  OAI21X1 U105 ( .A(n75), .B(n78), .C(n64), .Y(S15) );
  NAND2X1 U106 ( .A(a_i[1]), .B(b_i[1]), .Y(n66) );
  NAND2X1 U107 ( .A(n67), .B(n66), .Y(n65) );
  OAI21X1 U108 ( .A(n67), .B(n66), .C(n65), .Y(n71) );
  NAND2X1 U109 ( .A(a_i[0]), .B(b_i[2]), .Y(n74) );
  OAI21X1 U110 ( .A(n58), .B(n68), .C(n71), .Y(n69) );
  OAI21X1 U111 ( .A(n71), .B(n74), .C(n69), .Y(S12) );
  NOR2X1 U112 ( .A(n58), .B(n70), .Y(\P1[0] ) );
  AND2X2 U113 ( .A(\P1[0] ), .B(\P0[1] ), .Y(\carry1[0] ) );
  NAND2X1 U114 ( .A(S12), .B(\carry1[0] ), .Y(n72) );
  OAI21X1 U115 ( .A(n74), .B(n73), .C(n72), .Y(\carry2[0] ) );
  INVX1 U116 ( .A(n75), .Y(n77) );
  NAND2X1 U117 ( .A(S15), .B(\carry2[0] ), .Y(n76) );
  OAI21X1 U118 ( .A(n78), .B(n77), .C(n76), .Y(\carry3[0] ) );
  FAX1 U119 ( .A(n81), .B(n80), .C(n79), .YC(n90), .YS(n75) );
  NOR2X1 U120 ( .A(n100), .B(n82), .Y(n89) );
  OAI21X1 U121 ( .A(n57), .B(n84), .C(n83), .Y(n86) );
  NAND2X1 U122 ( .A(n87), .B(n86), .Y(n85) );
  OAI21X1 U123 ( .A(n87), .B(n86), .C(n85), .Y(n88) );
  FAX1 U124 ( .A(n90), .B(n89), .C(n88), .YC(n91), .YS(n59) );
  AOI21X1 U125 ( .A(n59), .B(\carry3[0] ), .C(n91), .Y(n102) );
  NAND3X1 U126 ( .A(n91), .B(n59), .C(\carry3[0] ), .Y(n101) );
  OAI21X1 U127 ( .A(n92), .B(n102), .C(n101), .Y(n93) );
  INVX1 U128 ( .A(n93), .Y(n97) );
  FAX1 U129 ( .A(n96), .B(n95), .C(n94), .YC(n98), .YS(n92) );
  NOR2X1 U130 ( .A(n97), .B(n98), .Y(C17) );
  AOI21X1 U131 ( .A(n98), .B(n97), .C(C17), .Y(S17) );
  NOR2X1 U132 ( .A(n100), .B(n99), .Y(\sum3[3] ) );
  AND2X2 U133 ( .A(S17), .B(\sum3[3] ), .Y(C27) );
  INVX1 U134 ( .A(n101), .Y(n103) );
  NOR2X1 U135 ( .A(n103), .B(n102), .Y(S16) );
endmodule

