* FILE: FA.sp


* SPICE netlist for "FA" generated by MMI_SUE5.6.37 on Wed Nov 14 
*+ 01:25:39 CST 2018.

.SUBCKT inv In Out_b 
M_1 Out_b In gnd gnd n W='3*1u' L='0.6*1u' 
M_2 Out_b In vdd vdd p W='6*1u' L='0.6*1u' 
.ENDS	$ inv

.SUBCKT FA a b c_in c_out sum 
M_1 net_9 net_4 net_2 gnd n W='3*1u' L='0.6*1u' 
M_2 net_2 a gnd gnd n W='3*1u' L='0.6*1u' 
M_3 net_2 b gnd gnd n W='3*1u' L='0.6*1u' 
M_4 net_2 c_in gnd gnd n W='3*1u' L='0.6*1u' 
M_5 net_9 c_in net_8 gnd n W='3*1u' L='0.6*1u' 
M_6 net_8 b net_3 gnd n W='3*1u' L='0.6*1u' 
M_7 net_3 a gnd gnd n W='3*1u' L='0.6*1u' 
M_8 net_4 c_in net_6 gnd n W='3*1u' L='0.6*1u' 
M_9 net_6 a gnd gnd n W='3*1u' L='0.6*1u' 
M_10 net_6 b gnd gnd n W='3*1u' L='0.6*1u' 
M_11 net_4 b net_12 gnd n W='3*1u' L='0.6*1u' 
M_12 net_12 a gnd gnd n W='3*1u' L='0.6*1u' 
M_13 net_5 a vdd vdd p W='6*1u' L='0.6*1u' 
M_14 net_5 b vdd vdd p W='6*1u' L='0.6*1u' 
M_15 net_5 c_in vdd vdd p W='6*1u' L='0.6*1u' 
M_16 net_9 net_4 net_5 vdd p W='6*1u' L='0.6*1u' 
M_17 net_7 b net_11 vdd p W='6*1u' L='0.6*1u' 
M_18 net_9 c_in net_7 vdd p W='6*1u' L='0.6*1u' 
M_19 net_11 a vdd vdd p W='6*1u' L='0.6*1u' 
M_20 net_1 a vdd vdd p W='6*1u' L='0.6*1u' 
M_21 net_1 b vdd vdd p W='6*1u' L='0.6*1u' 
M_22 net_4 c_in net_1 vdd p W='6*1u' L='0.6*1u' 
M_23 net_4 b net_10 vdd p W='6*1u' L='0.6*1u' 
M_24 net_10 a vdd vdd p W='6*1u' L='0.6*1u' 
Xinv net_4 c_out inv 
Xinv_1 net_9 sum inv 
.ENDS	$ FA

.GLOBAL gnd vdd

