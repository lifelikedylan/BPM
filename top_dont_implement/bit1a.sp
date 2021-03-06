* FILE: bit1a.sp


* SPICE netlist for "bit1a" generated by MMI_SUE5.6.37 on Fri Nov 30 
*+ 16:32:50 CST 2018.

.SUBCKT mux21 In_0 In_1 Out Sel Sel_bar 
M_1 Out Sel In_1 gnd n W='3*1u' L='0.6*1u' 
M_2 Out Sel_bar In_1 vdd p W='3*1u' L='0.6*1u' 
M_3 Out Sel_bar In_0 gnd n W='3*1u' L='0.6*1u' 
M_4 Out Sel In_0 vdd p W='3*1u' L='0.6*1u' 
.ENDS	$ mux21

.SUBCKT inv IN OUT 
Mp0 OUT IN Vdd vdd p W='6*1u' L='0.6*1u' 
Mn0 OUT IN Gnd gnd n W='3*1u' L='0.6*1u' 
.ENDS	$ inv

.SUBCKT FA a b c cout sum 
M_1 net_10 net_2 net_9 gnd n W='3*1u' L='0.6*1u' 
M_2 net_9 a gnd gnd n W='3*1u' L='0.6*1u' 
M_3 net_9 b gnd gnd n W='3*1u' L='0.6*1u' 
M_4 net_9 c gnd gnd n W='3*1u' L='0.6*1u' 
M_5 net_10 c net_12 gnd n W='3*1u' L='0.6*1u' 
M_6 net_12 b net_8 gnd n W='3*1u' L='0.6*1u' 
M_7 net_8 a gnd gnd n W='3*1u' L='0.6*1u' 
M_8 net_2 c net_5 gnd n W='3*1u' L='0.6*1u' 
M_9 net_5 a gnd gnd n W='3*1u' L='0.6*1u' 
M_10 net_5 b gnd gnd n W='3*1u' L='0.6*1u' 
M_11 net_2 b net_4 gnd n W='3*1u' L='0.6*1u' 
M_12 net_4 a gnd gnd n W='3*1u' L='0.6*1u' 
M_13 net_11 a vdd vdd p W='6*1u' L='0.6*1u' 
M_14 net_11 b vdd vdd p W='6*1u' L='0.6*1u' 
M_15 net_11 c vdd vdd p W='6*1u' L='0.6*1u' 
M_16 net_10 net_2 net_11 vdd p W='6*1u' L='0.6*1u' 
M_17 net_1 b net_3 vdd p W='6*1u' L='0.6*1u' 
M_18 net_10 c net_1 vdd p W='6*1u' L='0.6*1u' 
M_19 net_3 a vdd vdd p W='6*1u' L='0.6*1u' 
M_20 net_6 a vdd vdd p W='6*1u' L='0.6*1u' 
M_21 net_6 b vdd vdd p W='6*1u' L='0.6*1u' 
M_22 net_2 c net_6 vdd p W='6*1u' L='0.6*1u' 
M_23 net_2 b net_7 vdd p W='6*1u' L='0.6*1u' 
M_24 net_7 a vdd vdd p W='6*1u' L='0.6*1u' 
Xinv net_2 cout inv 
Xinv_1 net_10 sum inv 
.ENDS	$ FA

.SUBCKT nand A B Y 
M_1 net_1 A gnd gnd n W='6*1u' L='0.6*1u' 
M_2 Y B net_1 gnd n W='6*1u' L='0.6*1u' 
M_3 Y A vdd vdd p W='6*1u' L='0.6*1u' 
M_4 Y B vdd vdd p W='6*1u' L='0.6*1u' 
.ENDS	$ nand

.SUBCKT andZ A B Z Z_b 
Xnand A B Z_b nand 
M_1 Z Z_b net_1 gnd n W='3*1u' L='0.6*1u' 
M_2 net_1 Z_b gnd gnd n W='3*1u' L='0.6*1u' 
M_3 net_2 Z_b vdd vdd p W='6*1u' L='0.6*1u' 
M_4 Z Z_b net_2 vdd p W='6*1u' L='0.6*1u' 
.ENDS	$ andZ

.SUBCKT dffposZ Clk Clk_b D Q 
M_1 net_12 net_2 gnd gnd n W='3*1u' L='0.6*1u' 
M_2 net_3 Clk net_12 gnd n W='3*1u' L='0.6*1u' 
M_3 net_9 net_2 gnd gnd n W='3*1u' L='0.6*1u' 
M_4 net_1 Clk net_9 gnd n W='3*1u' L='0.6*1u' 
M_5 net_1 Clk_b net_4 vdd p W='6*1u' L='0.6*1u' 
M_6 net_4 net_2 vdd vdd p W='6*1u' L='0.6*1u' 
M_7 net_10 D gnd gnd n W='3*1u' L='0.6*1u' 
M_8 net_3 Clk_b net_10 gnd n W='3*1u' L='0.6*1u' 
M_9 net_3 Clk net_6 vdd p W='6*1u' L='0.6*1u' 
M_10 net_6 D vdd vdd p W='6*1u' L='0.6*1u' 
M_11 net_5 Q gnd gnd n W='3*1u' L='0.6*1u' 
M_12 net_1 Clk_b net_5 gnd n W='3*1u' L='0.6*1u' 
M_13 net_1 Clk net_13 vdd p W='6*1u' L='0.6*1u' 
M_14 net_13 Q vdd vdd p W='6*1u' L='0.6*1u' 
M_15 net_7 net_2 vdd vdd p W='6*1u' L='0.6*1u' 
M_16 net_3 Clk_b net_7 vdd p W='6*1u' L='0.6*1u' 
M_17 net_2 net_3 gnd gnd n W='3*1u' L='0.6*1u' 
M_18 net_2 net_3 vdd vdd p W='6*1u' L='0.6*1u' 
M_19 net_8 net_1 vdd vdd p W='6*1u' L='0.6*1u' 
M_20 Q net_1 net_8 vdd p W='6*1u' L='0.6*1u' 
M_21 Q net_1 net_11 gnd n W='3*1u' L='0.6*1u' 
M_22 net_11 net_1 gnd gnd n W='3*1u' L='0.6*1u' 
.ENDS	$ dffposZ

.SUBCKT bit1a Cin Cout Init Out add_out clk en fa_in muxA_in muxB_in 
+ reg_in 
Xmux21 reg_in gnd net_2 Init net_4 mux21 
XFA net_2 fa_in Cin Cout add_out FA 
Xinv Init net_4 inv 
Xmux21_1 muxA_in muxB_in net_1 Init net_4 mux21 
XandZ clk en net_5 net_3 andZ 
XdffposZ net_5 net_3 net_1 Out dffposZ 
.ENDS	$ bit1a

.GLOBAL gnd vdd

