*********************************************************
*                                                       *
* Example HSPICE netlist for our AMI 0.5u technology    *
* James Stine, OSU                                      *
*                                                       *
* to run this file: hspice filename.sp                  *
* to display results: cscope (then open filename.sw0)   *
*                                                       *
*********************************************************

*****************************************
* Voltage Sources
*
* Format: Vname pin1 pin2 DC voltage
*****************************************
VA A gnd pulse 0 5V 0ns 200ps 200ps 4.8ns 10ns
VB B gnd pulse 0 5V 0ns 200ps 200ps 9.8ns 20ns
VC C gnd pulse 0 5V 0ns 200ps 200ps 19.8ns 40ns
VD D gnd pulse 0 5V 0ns 200ps 200ps 39.8ns 80ns

*****************************************************************
* Transistors
*
* Format: Mnumber Drain Gate Source Bulk Model Length Width
*****************************************************************

* SPICE3 file created from top.ext - technology: scmos

.option scale=0.3u

M1000 bs2_0[0]/dffpos_0/a_35_65# bs2_0[0]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=11920 ps=6704
M1001 bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1002 bs2_0[0]/dffpos_0/a_56_65# bs2_0[0]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1003 bs2_0[0]/dffpos_0/a_61_9# bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1004 bs2_0[0]/dffpos_0/a_69_65# bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1005 gnd bs2_0[0]/dffpos_0/a_72_7# bs2_0[0]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 bs2_0[0]/dffpos_0/a_72_7# bs2_0[0]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1007 bs2_0[0]/dffpos_0/a_99_65# bs2_0[0]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1008 bs2_0[0]/dffpos_0/a_104_9# bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1009 bs2_0[0]/dffpos_0/a_112_65# bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1010 gnd q_7 bs2_0[0]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 bs2_0[0]/dffpos_0/a_126_65# bs2_0[0]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1012 q_7 bs2_0[0]/dffpos_0/a_104_9# bs2_0[0]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1013 bs2_0[0]/dffpos_0/a_35_9# bs2_0[0]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=21440 ps=10144
M1014 bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1015 bs2_0[0]/dffpos_0/a_56_9# bs2_0[0]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1016 bs2_0[0]/dffpos_0/a_61_9# bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1017 bs2_0[0]/dffpos_0/a_69_9# bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1018 vdd bs2_0[0]/dffpos_0/a_72_7# bs2_0[0]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 bs2_0[0]/dffpos_0/a_72_7# bs2_0[0]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 bs2_0[0]/dffpos_0/a_99_9# bs2_0[0]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1021 bs2_0[0]/dffpos_0/a_104_9# bs2_0[0]/dffpos_0/clk_b bs2_0[0]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1022 bs2_0[0]/dffpos_0/a_112_9# bs2_0[0]/dffpos_0/clk bs2_0[0]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1023 vdd q_7 bs2_0[0]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 bs2_0[0]/dffpos_0/a_126_9# bs2_0[0]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1025 q_7 bs2_0[0]/dffpos_0/a_104_9# bs2_0[0]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1026 bs2_0[0]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1027 vdd clk bs2_0[0]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 bs2_0[0]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1029 bs2_0[0]/dffpos_0/clk_b clk bs2_0[0]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1030 bs2_0[0]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1031 bs2_0[0]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1032 bs2_0[0]/muxB_in init q_7 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1033 mplier_7 bs2_0[0]/bc1a_0/inverter_1/Y bs2_0[0]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1034 bs2_0[0]/muxB_in bs2_0[0]/bc1a_0/inverter_1/Y q_7 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1035 mplier_7 init bs2_0[0]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1036 bs2_0[0]/dffpos_0/D bs2_0[0]/bc1a_0/inverter_1/Y bs2_0[0]/muxA_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=100 ps=60
M1037 bs2_0[0]/muxB_in init bs2_0[0]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1038 bs2_0[0]/dffpos_0/D init bs2_0[0]/muxA_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=150 ps=80
M1039 bs2_0[0]/muxB_in bs2_0[0]/bc1a_0/inverter_1/Y bs2_0[0]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1040 bs2_0[0]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1041 bs1_0[0]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=9136 ps=8656
M1042 mcand_7 bs2_0[0]/a_52_99# bs1_0[0]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1043 bs1_0[0]/fa_in bs2_0[0]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1044 mcand_7 q_0 bs1_0[0]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1045 bs2_0[0]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1046 bs2_0[1]/dffpos_0/a_35_65# bs2_0[1]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1047 bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1048 bs2_0[1]/dffpos_0/a_56_65# bs2_0[1]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1049 bs2_0[1]/dffpos_0/a_61_9# bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1050 bs2_0[1]/dffpos_0/a_69_65# bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1051 gnd bs2_0[1]/dffpos_0/a_72_7# bs2_0[1]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1052 bs2_0[1]/dffpos_0/a_72_7# bs2_0[1]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1053 bs2_0[1]/dffpos_0/a_99_65# bs2_0[1]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1054 bs2_0[1]/dffpos_0/a_104_9# bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1055 bs2_0[1]/dffpos_0/a_112_65# bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1056 gnd q_6 bs2_0[1]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1057 bs2_0[1]/dffpos_0/a_126_65# bs2_0[1]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1058 q_6 bs2_0[1]/dffpos_0/a_104_9# bs2_0[1]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1059 bs2_0[1]/dffpos_0/a_35_9# bs2_0[1]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1060 bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1061 bs2_0[1]/dffpos_0/a_56_9# bs2_0[1]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1062 bs2_0[1]/dffpos_0/a_61_9# bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1063 bs2_0[1]/dffpos_0/a_69_9# bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1064 vdd bs2_0[1]/dffpos_0/a_72_7# bs2_0[1]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 bs2_0[1]/dffpos_0/a_72_7# bs2_0[1]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1066 bs2_0[1]/dffpos_0/a_99_9# bs2_0[1]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1067 bs2_0[1]/dffpos_0/a_104_9# bs2_0[1]/dffpos_0/clk_b bs2_0[1]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1068 bs2_0[1]/dffpos_0/a_112_9# bs2_0[1]/dffpos_0/clk bs2_0[1]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1069 vdd q_6 bs2_0[1]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1070 bs2_0[1]/dffpos_0/a_126_9# bs2_0[1]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1071 q_6 bs2_0[1]/dffpos_0/a_104_9# bs2_0[1]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1072 bs2_0[1]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1073 vdd clk bs2_0[1]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1074 bs2_0[1]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1075 bs2_0[1]/dffpos_0/clk_b clk bs2_0[1]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1076 bs2_0[1]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1077 bs2_0[1]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1078 bs2_0[1]/muxB_in init q_6 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1079 mplier_6 bs2_0[1]/bc1a_0/inverter_1/Y bs2_0[1]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1080 bs2_0[1]/muxB_in bs2_0[1]/bc1a_0/inverter_1/Y q_6 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1081 mplier_6 init bs2_0[1]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1082 bs2_0[1]/dffpos_0/D bs2_0[1]/bc1a_0/inverter_1/Y bs2_0[0]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1083 bs2_0[1]/muxB_in init bs2_0[1]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1084 bs2_0[1]/dffpos_0/D init bs2_0[0]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1085 bs2_0[1]/muxB_in bs2_0[1]/bc1a_0/inverter_1/Y bs2_0[1]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1086 bs2_0[1]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1087 bs1_0[1]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1088 mcand_6 bs2_0[1]/a_52_99# bs1_0[1]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1089 bs1_0[1]/fa_in bs2_0[1]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1090 mcand_6 q_0 bs1_0[1]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1091 bs2_0[1]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1092 bs2_0[2]/dffpos_0/a_35_65# bs2_0[2]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1093 bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1094 bs2_0[2]/dffpos_0/a_56_65# bs2_0[2]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1095 bs2_0[2]/dffpos_0/a_61_9# bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1096 bs2_0[2]/dffpos_0/a_69_65# bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1097 gnd bs2_0[2]/dffpos_0/a_72_7# bs2_0[2]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1098 bs2_0[2]/dffpos_0/a_72_7# bs2_0[2]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1099 bs2_0[2]/dffpos_0/a_99_65# bs2_0[2]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1100 bs2_0[2]/dffpos_0/a_104_9# bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1101 bs2_0[2]/dffpos_0/a_112_65# bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1102 gnd q_5 bs2_0[2]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 bs2_0[2]/dffpos_0/a_126_65# bs2_0[2]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1104 q_5 bs2_0[2]/dffpos_0/a_104_9# bs2_0[2]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1105 bs2_0[2]/dffpos_0/a_35_9# bs2_0[2]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1106 bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1107 bs2_0[2]/dffpos_0/a_56_9# bs2_0[2]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1108 bs2_0[2]/dffpos_0/a_61_9# bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1109 bs2_0[2]/dffpos_0/a_69_9# bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1110 vdd bs2_0[2]/dffpos_0/a_72_7# bs2_0[2]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 bs2_0[2]/dffpos_0/a_72_7# bs2_0[2]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1112 bs2_0[2]/dffpos_0/a_99_9# bs2_0[2]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1113 bs2_0[2]/dffpos_0/a_104_9# bs2_0[2]/dffpos_0/clk_b bs2_0[2]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1114 bs2_0[2]/dffpos_0/a_112_9# bs2_0[2]/dffpos_0/clk bs2_0[2]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1115 vdd q_5 bs2_0[2]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 bs2_0[2]/dffpos_0/a_126_9# bs2_0[2]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1117 q_5 bs2_0[2]/dffpos_0/a_104_9# bs2_0[2]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1118 bs2_0[2]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1119 vdd clk bs2_0[2]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1120 bs2_0[2]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1121 bs2_0[2]/dffpos_0/clk_b clk bs2_0[2]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1122 bs2_0[2]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1123 bs2_0[2]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1124 bs2_0[2]/muxB_in init q_5 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1125 mplier_5 bs2_0[2]/bc1a_0/inverter_1/Y bs2_0[2]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1126 bs2_0[2]/muxB_in bs2_0[2]/bc1a_0/inverter_1/Y q_5 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1127 mplier_5 init bs2_0[2]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1128 bs2_0[2]/dffpos_0/D bs2_0[2]/bc1a_0/inverter_1/Y bs2_0[1]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1129 bs2_0[2]/muxB_in init bs2_0[2]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 bs2_0[2]/dffpos_0/D init bs2_0[1]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1131 bs2_0[2]/muxB_in bs2_0[2]/bc1a_0/inverter_1/Y bs2_0[2]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1132 bs2_0[2]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1133 bs1_0[2]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1134 mcand_5 bs2_0[2]/a_52_99# bs1_0[2]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1135 bs1_0[2]/fa_in bs2_0[2]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1136 mcand_5 q_0 bs1_0[2]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1137 bs2_0[2]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1138 bs2_0[3]/dffpos_0/a_35_65# bs2_0[3]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1139 bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1140 bs2_0[3]/dffpos_0/a_56_65# bs2_0[3]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1141 bs2_0[3]/dffpos_0/a_61_9# bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1142 bs2_0[3]/dffpos_0/a_69_65# bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1143 gnd bs2_0[3]/dffpos_0/a_72_7# bs2_0[3]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1144 bs2_0[3]/dffpos_0/a_72_7# bs2_0[3]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1145 bs2_0[3]/dffpos_0/a_99_65# bs2_0[3]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1146 bs2_0[3]/dffpos_0/a_104_9# bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1147 bs2_0[3]/dffpos_0/a_112_65# bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1148 gnd q_4 bs2_0[3]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 bs2_0[3]/dffpos_0/a_126_65# bs2_0[3]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1150 q_4 bs2_0[3]/dffpos_0/a_104_9# bs2_0[3]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1151 bs2_0[3]/dffpos_0/a_35_9# bs2_0[3]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1152 bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1153 bs2_0[3]/dffpos_0/a_56_9# bs2_0[3]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1154 bs2_0[3]/dffpos_0/a_61_9# bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1155 bs2_0[3]/dffpos_0/a_69_9# bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1156 vdd bs2_0[3]/dffpos_0/a_72_7# bs2_0[3]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1157 bs2_0[3]/dffpos_0/a_72_7# bs2_0[3]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1158 bs2_0[3]/dffpos_0/a_99_9# bs2_0[3]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1159 bs2_0[3]/dffpos_0/a_104_9# bs2_0[3]/dffpos_0/clk_b bs2_0[3]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1160 bs2_0[3]/dffpos_0/a_112_9# bs2_0[3]/dffpos_0/clk bs2_0[3]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1161 vdd q_4 bs2_0[3]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1162 bs2_0[3]/dffpos_0/a_126_9# bs2_0[3]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1163 q_4 bs2_0[3]/dffpos_0/a_104_9# bs2_0[3]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1164 bs2_0[3]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1165 vdd clk bs2_0[3]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1166 bs2_0[3]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1167 bs2_0[3]/dffpos_0/clk_b clk bs2_0[3]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1168 bs2_0[3]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1169 bs2_0[3]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1170 bs2_0[3]/muxB_in init q_4 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1171 mplier_4 bs2_0[3]/bc1a_0/inverter_1/Y bs2_0[3]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1172 bs2_0[3]/muxB_in bs2_0[3]/bc1a_0/inverter_1/Y q_4 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1173 mplier_4 init bs2_0[3]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1174 bs2_0[3]/dffpos_0/D bs2_0[3]/bc1a_0/inverter_1/Y bs2_0[2]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1175 bs2_0[3]/muxB_in init bs2_0[3]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1176 bs2_0[3]/dffpos_0/D init bs2_0[2]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1177 bs2_0[3]/muxB_in bs2_0[3]/bc1a_0/inverter_1/Y bs2_0[3]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 bs2_0[3]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1179 bs1_0[3]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1180 mcand_4 bs2_0[3]/a_52_99# bs1_0[3]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1181 bs1_0[3]/fa_in bs2_0[3]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1182 mcand_4 q_0 bs1_0[3]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1183 bs2_0[3]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1184 bs2_0[4]/dffpos_0/a_35_65# bs2_0[4]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1185 bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1186 bs2_0[4]/dffpos_0/a_56_65# bs2_0[4]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1187 bs2_0[4]/dffpos_0/a_61_9# bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1188 bs2_0[4]/dffpos_0/a_69_65# bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1189 gnd bs2_0[4]/dffpos_0/a_72_7# bs2_0[4]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1190 bs2_0[4]/dffpos_0/a_72_7# bs2_0[4]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1191 bs2_0[4]/dffpos_0/a_99_65# bs2_0[4]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1192 bs2_0[4]/dffpos_0/a_104_9# bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1193 bs2_0[4]/dffpos_0/a_112_65# bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1194 gnd q_3 bs2_0[4]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1195 bs2_0[4]/dffpos_0/a_126_65# bs2_0[4]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1196 q_3 bs2_0[4]/dffpos_0/a_104_9# bs2_0[4]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1197 bs2_0[4]/dffpos_0/a_35_9# bs2_0[4]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1198 bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1199 bs2_0[4]/dffpos_0/a_56_9# bs2_0[4]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1200 bs2_0[4]/dffpos_0/a_61_9# bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1201 bs2_0[4]/dffpos_0/a_69_9# bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1202 vdd bs2_0[4]/dffpos_0/a_72_7# bs2_0[4]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1203 bs2_0[4]/dffpos_0/a_72_7# bs2_0[4]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1204 bs2_0[4]/dffpos_0/a_99_9# bs2_0[4]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1205 bs2_0[4]/dffpos_0/a_104_9# bs2_0[4]/dffpos_0/clk_b bs2_0[4]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1206 bs2_0[4]/dffpos_0/a_112_9# bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1207 vdd q_3 bs2_0[4]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1208 bs2_0[4]/dffpos_0/a_126_9# bs2_0[4]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1209 q_3 bs2_0[4]/dffpos_0/a_104_9# bs2_0[4]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1210 bs2_0[4]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1211 vdd clk bs2_0[4]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 bs2_0[4]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1213 bs2_0[4]/dffpos_0/clk_b clk bs2_0[4]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1214 bs2_0[4]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1215 bs2_0[4]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1216 bs2_0[4]/muxB_in init q_3 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1217 mplier_3 bs2_0[4]/bc1a_0/inverter_1/Y bs2_0[4]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1218 bs2_0[4]/muxB_in bs2_0[4]/bc1a_0/inverter_1/Y q_3 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1219 mplier_3 init bs2_0[4]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1220 bs2_0[4]/dffpos_0/D bs2_0[4]/bc1a_0/inverter_1/Y bs2_0[3]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1221 bs2_0[4]/muxB_in init bs2_0[4]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1222 bs2_0[4]/dffpos_0/D init bs2_0[3]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1223 bs2_0[4]/muxB_in bs2_0[4]/bc1a_0/inverter_1/Y bs2_0[4]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1224 bs2_0[4]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1225 bs1_0[4]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1226 mcand_3 bs2_0[4]/a_52_99# bs1_0[4]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1227 bs1_0[4]/fa_in bs2_0[4]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1228 mcand_3 q_0 bs1_0[4]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1229 bs2_0[4]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 bs2_0[5]/dffpos_0/a_35_65# bs2_0[5]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1231 bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1232 bs2_0[5]/dffpos_0/a_56_65# bs2_0[5]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1233 bs2_0[5]/dffpos_0/a_61_9# bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1234 bs2_0[5]/dffpos_0/a_69_65# bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1235 gnd bs2_0[5]/dffpos_0/a_72_7# bs2_0[5]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1236 bs2_0[5]/dffpos_0/a_72_7# bs2_0[5]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1237 bs2_0[5]/dffpos_0/a_99_65# bs2_0[5]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1238 bs2_0[5]/dffpos_0/a_104_9# bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1239 bs2_0[5]/dffpos_0/a_112_65# bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1240 gnd q_2 bs2_0[5]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1241 bs2_0[5]/dffpos_0/a_126_65# bs2_0[5]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1242 q_2 bs2_0[5]/dffpos_0/a_104_9# bs2_0[5]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1243 bs2_0[5]/dffpos_0/a_35_9# bs2_0[5]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1244 bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1245 bs2_0[5]/dffpos_0/a_56_9# bs2_0[5]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1246 bs2_0[5]/dffpos_0/a_61_9# bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1247 bs2_0[5]/dffpos_0/a_69_9# bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1248 vdd bs2_0[5]/dffpos_0/a_72_7# bs2_0[5]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1249 bs2_0[5]/dffpos_0/a_72_7# bs2_0[5]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1250 bs2_0[5]/dffpos_0/a_99_9# bs2_0[5]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1251 bs2_0[5]/dffpos_0/a_104_9# bs2_0[5]/dffpos_0/clk_b bs2_0[5]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1252 bs2_0[5]/dffpos_0/a_112_9# bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1253 vdd q_2 bs2_0[5]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 bs2_0[5]/dffpos_0/a_126_9# bs2_0[5]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1255 q_2 bs2_0[5]/dffpos_0/a_104_9# bs2_0[5]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1256 bs2_0[5]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1257 vdd clk bs2_0[5]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1258 bs2_0[5]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1259 bs2_0[5]/dffpos_0/clk_b clk bs2_0[5]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1260 bs2_0[5]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1261 bs2_0[5]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1262 bs2_0[5]/muxB_in init q_2 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1263 mplier_2 bs2_0[5]/bc1a_0/inverter_1/Y bs2_0[5]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1264 bs2_0[5]/muxB_in bs2_0[5]/bc1a_0/inverter_1/Y q_2 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1265 mplier_2 init bs2_0[5]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1266 bs2_0[5]/dffpos_0/D bs2_0[5]/bc1a_0/inverter_1/Y bs2_0[4]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1267 bs2_0[5]/muxB_in init bs2_0[5]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1268 bs2_0[5]/dffpos_0/D init bs2_0[4]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1269 bs2_0[5]/muxB_in bs2_0[5]/bc1a_0/inverter_1/Y bs2_0[5]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1270 bs2_0[5]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1271 bs1_0[5]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1272 mcand_2 bs2_0[5]/a_52_99# bs1_0[5]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1273 bs1_0[5]/fa_in bs2_0[5]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1274 mcand_2 q_0 bs1_0[5]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1275 bs2_0[5]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1276 bs2_0[6]/dffpos_0/a_35_65# bs2_0[6]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1277 bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1278 bs2_0[6]/dffpos_0/a_56_65# bs2_0[6]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1279 bs2_0[6]/dffpos_0/a_61_9# bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1280 bs2_0[6]/dffpos_0/a_69_65# bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1281 gnd bs2_0[6]/dffpos_0/a_72_7# bs2_0[6]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1282 bs2_0[6]/dffpos_0/a_72_7# bs2_0[6]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1283 bs2_0[6]/dffpos_0/a_99_65# bs2_0[6]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1284 bs2_0[6]/dffpos_0/a_104_9# bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1285 bs2_0[6]/dffpos_0/a_112_65# bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1286 gnd q_1 bs2_0[6]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1287 bs2_0[6]/dffpos_0/a_126_65# bs2_0[6]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1288 q_1 bs2_0[6]/dffpos_0/a_104_9# bs2_0[6]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1289 bs2_0[6]/dffpos_0/a_35_9# bs2_0[6]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1290 bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1291 bs2_0[6]/dffpos_0/a_56_9# bs2_0[6]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1292 bs2_0[6]/dffpos_0/a_61_9# bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1293 bs2_0[6]/dffpos_0/a_69_9# bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1294 vdd bs2_0[6]/dffpos_0/a_72_7# bs2_0[6]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1295 bs2_0[6]/dffpos_0/a_72_7# bs2_0[6]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1296 bs2_0[6]/dffpos_0/a_99_9# bs2_0[6]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1297 bs2_0[6]/dffpos_0/a_104_9# bs2_0[6]/dffpos_0/clk_b bs2_0[6]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1298 bs2_0[6]/dffpos_0/a_112_9# bs2_0[6]/dffpos_0/clk bs2_0[6]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1299 vdd q_1 bs2_0[6]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1300 bs2_0[6]/dffpos_0/a_126_9# bs2_0[6]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1301 q_1 bs2_0[6]/dffpos_0/a_104_9# bs2_0[6]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1302 bs2_0[6]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1303 vdd clk bs2_0[6]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1304 bs2_0[6]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1305 bs2_0[6]/dffpos_0/clk_b clk bs2_0[6]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1306 bs2_0[6]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1307 bs2_0[6]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1308 bs2_0[6]/muxB_in init q_1 Vdd CMOSPTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1309 mplier_1 bs2_0[6]/bc1a_0/inverter_1/Y bs2_0[6]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1310 bs2_0[6]/muxB_in bs2_0[6]/bc1a_0/inverter_1/Y q_1 Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1311 mplier_1 init bs2_0[6]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1312 bs2_0[6]/dffpos_0/D bs2_0[6]/bc1a_0/inverter_1/Y bs2_0[5]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1313 bs2_0[6]/muxB_in init bs2_0[6]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1314 bs2_0[6]/dffpos_0/D init bs2_0[5]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1315 bs2_0[6]/muxB_in bs2_0[6]/bc1a_0/inverter_1/Y bs2_0[6]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1316 bs2_0[6]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1317 bs1_0[6]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1318 mcand_1 bs2_0[6]/a_52_99# bs1_0[6]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1319 bs1_0[6]/fa_in bs2_0[6]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1320 mcand_1 q_0 bs1_0[6]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1321 bs2_0[6]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1322 bs2_0[7]/dffpos_0/a_35_65# bs2_0[7]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1323 bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1324 bs2_0[7]/dffpos_0/a_56_65# bs2_0[7]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1325 bs2_0[7]/dffpos_0/a_61_9# bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1326 bs2_0[7]/dffpos_0/a_69_65# bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1327 gnd bs2_0[7]/dffpos_0/a_72_7# bs2_0[7]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1328 bs2_0[7]/dffpos_0/a_72_7# bs2_0[7]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1329 bs2_0[7]/dffpos_0/a_99_65# bs2_0[7]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1330 bs2_0[7]/dffpos_0/a_104_9# bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1331 bs2_0[7]/dffpos_0/a_112_65# bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1332 gnd q_0 bs2_0[7]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1333 bs2_0[7]/dffpos_0/a_126_65# bs2_0[7]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1334 q_0 bs2_0[7]/dffpos_0/a_104_9# bs2_0[7]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1335 bs2_0[7]/dffpos_0/a_35_9# bs2_0[7]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1336 bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1337 bs2_0[7]/dffpos_0/a_56_9# bs2_0[7]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1338 bs2_0[7]/dffpos_0/a_61_9# bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1339 bs2_0[7]/dffpos_0/a_69_9# bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1340 vdd bs2_0[7]/dffpos_0/a_72_7# bs2_0[7]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1341 bs2_0[7]/dffpos_0/a_72_7# bs2_0[7]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1342 bs2_0[7]/dffpos_0/a_99_9# bs2_0[7]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1343 bs2_0[7]/dffpos_0/a_104_9# bs2_0[7]/dffpos_0/clk_b bs2_0[7]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1344 bs2_0[7]/dffpos_0/a_112_9# bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1345 vdd q_0 bs2_0[7]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1346 bs2_0[7]/dffpos_0/a_126_9# bs2_0[7]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1347 q_0 bs2_0[7]/dffpos_0/a_104_9# bs2_0[7]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1348 bs2_0[7]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1349 vdd clk bs2_0[7]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1350 bs2_0[7]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1351 bs2_0[7]/dffpos_0/clk_b clk bs2_0[7]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1352 bs2_0[7]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1353 bs2_0[7]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1354 bs2_0[7]/muxB_in init q_0 Vdd CMOSPTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1355 mplier_0 bs2_0[7]/bc1a_0/inverter_1/Y bs2_0[7]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1356 bs2_0[7]/muxB_in bs2_0[7]/bc1a_0/inverter_1/Y q_0 Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1357 mplier_0 init bs2_0[7]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1358 bs2_0[7]/dffpos_0/D bs2_0[7]/bc1a_0/inverter_1/Y bs2_0[6]/muxB_in Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1359 bs2_0[7]/muxB_in init bs2_0[7]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1360 bs2_0[7]/dffpos_0/D init bs2_0[6]/muxB_in Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1361 bs2_0[7]/muxB_in bs2_0[7]/bc1a_0/inverter_1/Y bs2_0[7]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1362 bs2_0[7]/a_52_99# q_0 vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1363 bs1_0[7]/fa_in q_0 gnd Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1364 mcand_0 bs2_0[7]/a_52_99# bs1_0[7]/fa_in Vdd CMOSPTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1365 bs1_0[7]/fa_in bs2_0[7]/a_52_99# gnd Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1366 mcand_0 q_0 bs1_0[7]/fa_in Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1367 bs2_0[7]/a_52_99# q_0 gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1368 bs1_0[0]/dffpos_0/a_35_65# bs1_0[0]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1369 bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1370 bs1_0[0]/dffpos_0/a_56_65# bs1_0[0]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1371 bs1_0[0]/dffpos_0/a_61_9# bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1372 bs1_0[0]/dffpos_0/a_69_65# bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1373 gnd bs1_0[0]/dffpos_0/a_72_7# bs1_0[0]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1374 bs1_0[0]/dffpos_0/a_72_7# bs1_0[0]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1375 bs1_0[0]/dffpos_0/a_99_65# bs1_0[0]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1376 bs1_0[0]/dffpos_0/a_104_9# bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1377 bs1_0[0]/dffpos_0/a_112_65# bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1378 gnd q_15 bs1_0[0]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1379 bs1_0[0]/dffpos_0/a_126_65# bs1_0[0]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1380 q_15 bs1_0[0]/dffpos_0/a_104_9# bs1_0[0]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1381 bs1_0[0]/dffpos_0/a_35_9# bs1_0[0]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1382 bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1383 bs1_0[0]/dffpos_0/a_56_9# bs1_0[0]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1384 bs1_0[0]/dffpos_0/a_61_9# bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1385 bs1_0[0]/dffpos_0/a_69_9# bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1386 vdd bs1_0[0]/dffpos_0/a_72_7# bs1_0[0]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1387 bs1_0[0]/dffpos_0/a_72_7# bs1_0[0]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1388 bs1_0[0]/dffpos_0/a_99_9# bs1_0[0]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1389 bs1_0[0]/dffpos_0/a_104_9# bs1_0[0]/dffpos_0/clk_b bs1_0[0]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1390 bs1_0[0]/dffpos_0/a_112_9# bs1_0[0]/dffpos_0/clk bs1_0[0]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1391 vdd q_15 bs1_0[0]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1392 bs1_0[0]/dffpos_0/a_126_9# bs1_0[0]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1393 q_15 bs1_0[0]/dffpos_0/a_104_9# bs1_0[0]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1394 bs1_0[0]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1395 vdd clk bs1_0[0]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1396 bs1_0[0]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1397 bs1_0[0]/dffpos_0/clk_b clk bs1_0[0]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1398 bs1_0[0]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1399 bs1_0[0]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1400 bs1_0[0]/fa_0/a init q_15 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1401 gnd bs1_0[0]/bc1a_0/inverter_1/Y bs1_0[0]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1402 bs1_0[0]/fa_0/a bs1_0[0]/bc1a_0/inverter_1/Y q_15 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1403 gnd init bs1_0[0]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1404 bs1_0[0]/dffpos_0/D bs1_0[0]/bc1a_0/inverter_1/Y cout Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=100 ps=60
M1405 gnd init bs1_0[0]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1406 bs1_0[0]/dffpos_0/D init cout Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=150 ps=80
M1407 gnd bs1_0[0]/bc1a_0/inverter_1/Y bs1_0[0]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1408 bs1_0[0]/fa_0/a_13_55# bs1_0[0]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1409 vdd bs1_0[0]/fa_in bs1_0[0]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1410 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/Cin bs1_0[0]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1411 bs1_0[0]/fa_0/a_53_55# bs1_0[0]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1412 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_0/a bs1_0[0]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1413 bs1_0[0]/fa_0/a_74_55# bs1_0[0]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1414 vdd bs1_0[0]/fa_in bs1_0[0]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1415 bs1_0[0]/fa_0/a_74_55# bs1_0[0]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1416 bs1_0[0]/fa_0/a_106_9# bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1417 bs1_0[0]/fa_0/a_122_55# bs1_0[0]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1418 bs1_0[0]/fa_0/a_127_55# bs1_0[0]/fa_in bs1_0[0]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1419 bs1_0[0]/fa_0/a_106_9# bs1_0[0]/fa_0/a bs1_0[0]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1420 bs1_0[0]/add_out bs1_0[0]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1421 cout bs1_0[0]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1422 bs1_0[0]/fa_0/a_13_9# bs1_0[0]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1423 gnd bs1_0[0]/fa_in bs1_0[0]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1424 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/Cin bs1_0[0]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1425 bs1_0[0]/fa_0/a_53_9# bs1_0[0]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1426 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_0/a bs1_0[0]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1427 bs1_0[0]/fa_0/a_74_9# bs1_0[0]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1428 gnd bs1_0[0]/fa_in bs1_0[0]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1429 bs1_0[0]/fa_0/a_74_9# bs1_0[0]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1430 bs1_0[0]/fa_0/a_106_9# bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1431 bs1_0[0]/fa_0/a_122_9# bs1_0[0]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1432 bs1_0[0]/fa_0/a_127_9# bs1_0[0]/fa_in bs1_0[0]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1433 bs1_0[0]/fa_0/a_106_9# bs1_0[0]/fa_0/a bs1_0[0]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1434 bs1_0[0]/add_out bs1_0[0]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1435 cout bs1_0[0]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1436 bs1_0[1]/dffpos_0/a_35_65# bs1_0[1]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1437 bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1438 bs1_0[1]/dffpos_0/a_56_65# bs1_0[1]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1439 bs1_0[1]/dffpos_0/a_61_9# bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1440 bs1_0[1]/dffpos_0/a_69_65# bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1441 gnd bs1_0[1]/dffpos_0/a_72_7# bs1_0[1]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1442 bs1_0[1]/dffpos_0/a_72_7# bs1_0[1]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1443 bs1_0[1]/dffpos_0/a_99_65# bs1_0[1]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1444 bs1_0[1]/dffpos_0/a_104_9# bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1445 bs1_0[1]/dffpos_0/a_112_65# bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1446 gnd q_14 bs1_0[1]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1447 bs1_0[1]/dffpos_0/a_126_65# bs1_0[1]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1448 q_14 bs1_0[1]/dffpos_0/a_104_9# bs1_0[1]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1449 bs1_0[1]/dffpos_0/a_35_9# bs1_0[1]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1450 bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1451 bs1_0[1]/dffpos_0/a_56_9# bs1_0[1]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1452 bs1_0[1]/dffpos_0/a_61_9# bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1453 bs1_0[1]/dffpos_0/a_69_9# bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1454 vdd bs1_0[1]/dffpos_0/a_72_7# bs1_0[1]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1455 bs1_0[1]/dffpos_0/a_72_7# bs1_0[1]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1456 bs1_0[1]/dffpos_0/a_99_9# bs1_0[1]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1457 bs1_0[1]/dffpos_0/a_104_9# bs1_0[1]/dffpos_0/clk_b bs1_0[1]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1458 bs1_0[1]/dffpos_0/a_112_9# bs1_0[1]/dffpos_0/clk bs1_0[1]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1459 vdd q_14 bs1_0[1]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1460 bs1_0[1]/dffpos_0/a_126_9# bs1_0[1]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1461 q_14 bs1_0[1]/dffpos_0/a_104_9# bs1_0[1]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1462 bs1_0[1]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1463 vdd clk bs1_0[1]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1464 bs1_0[1]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1465 bs1_0[1]/dffpos_0/clk_b clk bs1_0[1]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1466 bs1_0[1]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1467 bs1_0[1]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1468 bs1_0[1]/fa_0/a init q_14 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1469 gnd bs1_0[1]/bc1a_0/inverter_1/Y bs1_0[1]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1470 bs1_0[1]/fa_0/a bs1_0[1]/bc1a_0/inverter_1/Y q_14 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1471 gnd init bs1_0[1]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1472 bs1_0[1]/dffpos_0/D bs1_0[1]/bc1a_0/inverter_1/Y bs1_0[0]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1473 gnd init bs1_0[1]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1474 bs1_0[1]/dffpos_0/D init bs1_0[0]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1475 gnd bs1_0[1]/bc1a_0/inverter_1/Y bs1_0[1]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1476 bs1_0[1]/fa_0/a_13_55# bs1_0[1]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1477 vdd bs1_0[1]/fa_in bs1_0[1]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1478 bs1_0[1]/fa_0/a_37_9# bs1_0[1]/Cin bs1_0[1]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1479 bs1_0[1]/fa_0/a_53_55# bs1_0[1]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1480 bs1_0[1]/fa_0/a_37_9# bs1_0[1]/fa_0/a bs1_0[1]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1481 bs1_0[1]/fa_0/a_74_55# bs1_0[1]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1482 vdd bs1_0[1]/fa_in bs1_0[1]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1483 bs1_0[1]/fa_0/a_74_55# bs1_0[1]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1484 bs1_0[1]/fa_0/a_106_9# bs1_0[1]/fa_0/a_37_9# bs1_0[1]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1485 bs1_0[1]/fa_0/a_122_55# bs1_0[1]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1486 bs1_0[1]/fa_0/a_127_55# bs1_0[1]/fa_in bs1_0[1]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1487 bs1_0[1]/fa_0/a_106_9# bs1_0[1]/fa_0/a bs1_0[1]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1488 bs1_0[1]/add_out bs1_0[1]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1489 bs1_0[0]/Cin bs1_0[1]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1490 bs1_0[1]/fa_0/a_13_9# bs1_0[1]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1491 gnd bs1_0[1]/fa_in bs1_0[1]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1492 bs1_0[1]/fa_0/a_37_9# bs1_0[1]/Cin bs1_0[1]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1493 bs1_0[1]/fa_0/a_53_9# bs1_0[1]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1494 bs1_0[1]/fa_0/a_37_9# bs1_0[1]/fa_0/a bs1_0[1]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1495 bs1_0[1]/fa_0/a_74_9# bs1_0[1]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1496 gnd bs1_0[1]/fa_in bs1_0[1]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1497 bs1_0[1]/fa_0/a_74_9# bs1_0[1]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1498 bs1_0[1]/fa_0/a_106_9# bs1_0[1]/fa_0/a_37_9# bs1_0[1]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1499 bs1_0[1]/fa_0/a_122_9# bs1_0[1]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1500 bs1_0[1]/fa_0/a_127_9# bs1_0[1]/fa_in bs1_0[1]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1501 bs1_0[1]/fa_0/a_106_9# bs1_0[1]/fa_0/a bs1_0[1]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1502 bs1_0[1]/add_out bs1_0[1]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1503 bs1_0[0]/Cin bs1_0[1]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1504 bs1_0[2]/dffpos_0/a_35_65# bs1_0[2]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1505 bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1506 bs1_0[2]/dffpos_0/a_56_65# bs1_0[2]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1507 bs1_0[2]/dffpos_0/a_61_9# bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1508 bs1_0[2]/dffpos_0/a_69_65# bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1509 gnd bs1_0[2]/dffpos_0/a_72_7# bs1_0[2]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1510 bs1_0[2]/dffpos_0/a_72_7# bs1_0[2]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1511 bs1_0[2]/dffpos_0/a_99_65# bs1_0[2]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1512 bs1_0[2]/dffpos_0/a_104_9# bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1513 bs1_0[2]/dffpos_0/a_112_65# bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1514 gnd q_13 bs1_0[2]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1515 bs1_0[2]/dffpos_0/a_126_65# bs1_0[2]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1516 q_13 bs1_0[2]/dffpos_0/a_104_9# bs1_0[2]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1517 bs1_0[2]/dffpos_0/a_35_9# bs1_0[2]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1518 bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1519 bs1_0[2]/dffpos_0/a_56_9# bs1_0[2]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1520 bs1_0[2]/dffpos_0/a_61_9# bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1521 bs1_0[2]/dffpos_0/a_69_9# bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1522 vdd bs1_0[2]/dffpos_0/a_72_7# bs1_0[2]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1523 bs1_0[2]/dffpos_0/a_72_7# bs1_0[2]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1524 bs1_0[2]/dffpos_0/a_99_9# bs1_0[2]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1525 bs1_0[2]/dffpos_0/a_104_9# bs1_0[2]/dffpos_0/clk_b bs1_0[2]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1526 bs1_0[2]/dffpos_0/a_112_9# bs1_0[2]/dffpos_0/clk bs1_0[2]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1527 vdd q_13 bs1_0[2]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1528 bs1_0[2]/dffpos_0/a_126_9# bs1_0[2]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1529 q_13 bs1_0[2]/dffpos_0/a_104_9# bs1_0[2]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1530 bs1_0[2]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1531 vdd clk bs1_0[2]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1532 bs1_0[2]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1533 bs1_0[2]/dffpos_0/clk_b clk bs1_0[2]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1534 bs1_0[2]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1535 bs1_0[2]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1536 bs1_0[2]/fa_0/a init q_13 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1537 gnd bs1_0[2]/bc1a_0/inverter_1/Y bs1_0[2]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1538 bs1_0[2]/fa_0/a bs1_0[2]/bc1a_0/inverter_1/Y q_13 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1539 gnd init bs1_0[2]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1540 bs1_0[2]/dffpos_0/D bs1_0[2]/bc1a_0/inverter_1/Y bs1_0[1]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1541 gnd init bs1_0[2]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1542 bs1_0[2]/dffpos_0/D init bs1_0[1]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1543 gnd bs1_0[2]/bc1a_0/inverter_1/Y bs1_0[2]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1544 bs1_0[2]/fa_0/a_13_55# bs1_0[2]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1545 vdd bs1_0[2]/fa_in bs1_0[2]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1546 bs1_0[2]/fa_0/a_37_9# bs1_0[2]/Cin bs1_0[2]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1547 bs1_0[2]/fa_0/a_53_55# bs1_0[2]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1548 bs1_0[2]/fa_0/a_37_9# bs1_0[2]/fa_0/a bs1_0[2]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1549 bs1_0[2]/fa_0/a_74_55# bs1_0[2]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1550 vdd bs1_0[2]/fa_in bs1_0[2]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1551 bs1_0[2]/fa_0/a_74_55# bs1_0[2]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1552 bs1_0[2]/fa_0/a_106_9# bs1_0[2]/fa_0/a_37_9# bs1_0[2]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1553 bs1_0[2]/fa_0/a_122_55# bs1_0[2]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1554 bs1_0[2]/fa_0/a_127_55# bs1_0[2]/fa_in bs1_0[2]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1555 bs1_0[2]/fa_0/a_106_9# bs1_0[2]/fa_0/a bs1_0[2]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1556 bs1_0[2]/add_out bs1_0[2]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1557 bs1_0[1]/Cin bs1_0[2]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1558 bs1_0[2]/fa_0/a_13_9# bs1_0[2]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1559 gnd bs1_0[2]/fa_in bs1_0[2]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1560 bs1_0[2]/fa_0/a_37_9# bs1_0[2]/Cin bs1_0[2]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1561 bs1_0[2]/fa_0/a_53_9# bs1_0[2]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1562 bs1_0[2]/fa_0/a_37_9# bs1_0[2]/fa_0/a bs1_0[2]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1563 bs1_0[2]/fa_0/a_74_9# bs1_0[2]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1564 gnd bs1_0[2]/fa_in bs1_0[2]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1565 bs1_0[2]/fa_0/a_74_9# bs1_0[2]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1566 bs1_0[2]/fa_0/a_106_9# bs1_0[2]/fa_0/a_37_9# bs1_0[2]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1567 bs1_0[2]/fa_0/a_122_9# bs1_0[2]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1568 bs1_0[2]/fa_0/a_127_9# bs1_0[2]/fa_in bs1_0[2]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1569 bs1_0[2]/fa_0/a_106_9# bs1_0[2]/fa_0/a bs1_0[2]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1570 bs1_0[2]/add_out bs1_0[2]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1571 bs1_0[1]/Cin bs1_0[2]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1572 bs1_0[3]/dffpos_0/a_35_65# bs1_0[3]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1573 bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1574 bs1_0[3]/dffpos_0/a_56_65# bs1_0[3]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1575 bs1_0[3]/dffpos_0/a_61_9# bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1576 bs1_0[3]/dffpos_0/a_69_65# bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1577 gnd bs1_0[3]/dffpos_0/a_72_7# bs1_0[3]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1578 bs1_0[3]/dffpos_0/a_72_7# bs1_0[3]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1579 bs1_0[3]/dffpos_0/a_99_65# bs1_0[3]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1580 bs1_0[3]/dffpos_0/a_104_9# bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1581 bs1_0[3]/dffpos_0/a_112_65# bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1582 gnd q_12 bs1_0[3]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1583 bs1_0[3]/dffpos_0/a_126_65# bs1_0[3]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1584 q_12 bs1_0[3]/dffpos_0/a_104_9# bs1_0[3]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1585 bs1_0[3]/dffpos_0/a_35_9# bs1_0[3]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1586 bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1587 bs1_0[3]/dffpos_0/a_56_9# bs1_0[3]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1588 bs1_0[3]/dffpos_0/a_61_9# bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1589 bs1_0[3]/dffpos_0/a_69_9# bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1590 vdd bs1_0[3]/dffpos_0/a_72_7# bs1_0[3]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1591 bs1_0[3]/dffpos_0/a_72_7# bs1_0[3]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1592 bs1_0[3]/dffpos_0/a_99_9# bs1_0[3]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1593 bs1_0[3]/dffpos_0/a_104_9# bs1_0[3]/dffpos_0/clk_b bs1_0[3]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1594 bs1_0[3]/dffpos_0/a_112_9# bs1_0[3]/dffpos_0/clk bs1_0[3]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1595 vdd q_12 bs1_0[3]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1596 bs1_0[3]/dffpos_0/a_126_9# bs1_0[3]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1597 q_12 bs1_0[3]/dffpos_0/a_104_9# bs1_0[3]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1598 bs1_0[3]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1599 vdd clk bs1_0[3]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1600 bs1_0[3]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1601 bs1_0[3]/dffpos_0/clk_b clk bs1_0[3]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1602 bs1_0[3]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1603 bs1_0[3]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1604 bs1_0[3]/fa_0/a init q_12 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1605 gnd bs1_0[3]/bc1a_0/inverter_1/Y bs1_0[3]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1606 bs1_0[3]/fa_0/a bs1_0[3]/bc1a_0/inverter_1/Y q_12 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1607 gnd init bs1_0[3]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1608 bs1_0[3]/dffpos_0/D bs1_0[3]/bc1a_0/inverter_1/Y bs1_0[2]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1609 gnd init bs1_0[3]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1610 bs1_0[3]/dffpos_0/D init bs1_0[2]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1611 gnd bs1_0[3]/bc1a_0/inverter_1/Y bs1_0[3]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1612 bs1_0[3]/fa_0/a_13_55# bs1_0[3]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1613 vdd bs1_0[3]/fa_in bs1_0[3]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1614 bs1_0[3]/fa_0/a_37_9# bs1_0[3]/Cin bs1_0[3]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1615 bs1_0[3]/fa_0/a_53_55# bs1_0[3]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1616 bs1_0[3]/fa_0/a_37_9# bs1_0[3]/fa_0/a bs1_0[3]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1617 bs1_0[3]/fa_0/a_74_55# bs1_0[3]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1618 vdd bs1_0[3]/fa_in bs1_0[3]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1619 bs1_0[3]/fa_0/a_74_55# bs1_0[3]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1620 bs1_0[3]/fa_0/a_106_9# bs1_0[3]/fa_0/a_37_9# bs1_0[3]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1621 bs1_0[3]/fa_0/a_122_55# bs1_0[3]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1622 bs1_0[3]/fa_0/a_127_55# bs1_0[3]/fa_in bs1_0[3]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1623 bs1_0[3]/fa_0/a_106_9# bs1_0[3]/fa_0/a bs1_0[3]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1624 bs1_0[3]/add_out bs1_0[3]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1625 bs1_0[2]/Cin bs1_0[3]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1626 bs1_0[3]/fa_0/a_13_9# bs1_0[3]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1627 gnd bs1_0[3]/fa_in bs1_0[3]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1628 bs1_0[3]/fa_0/a_37_9# bs1_0[3]/Cin bs1_0[3]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1629 bs1_0[3]/fa_0/a_53_9# bs1_0[3]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1630 bs1_0[3]/fa_0/a_37_9# bs1_0[3]/fa_0/a bs1_0[3]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1631 bs1_0[3]/fa_0/a_74_9# bs1_0[3]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1632 gnd bs1_0[3]/fa_in bs1_0[3]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1633 bs1_0[3]/fa_0/a_74_9# bs1_0[3]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1634 bs1_0[3]/fa_0/a_106_9# bs1_0[3]/fa_0/a_37_9# bs1_0[3]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1635 bs1_0[3]/fa_0/a_122_9# bs1_0[3]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1636 bs1_0[3]/fa_0/a_127_9# bs1_0[3]/fa_in bs1_0[3]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1637 bs1_0[3]/fa_0/a_106_9# bs1_0[3]/fa_0/a bs1_0[3]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1638 bs1_0[3]/add_out bs1_0[3]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1639 bs1_0[2]/Cin bs1_0[3]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1640 bs1_0[4]/dffpos_0/a_35_65# bs1_0[4]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1641 bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1642 bs1_0[4]/dffpos_0/a_56_65# bs1_0[4]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1643 bs1_0[4]/dffpos_0/a_61_9# bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1644 bs1_0[4]/dffpos_0/a_69_65# bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1645 gnd bs1_0[4]/dffpos_0/a_72_7# bs1_0[4]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1646 bs1_0[4]/dffpos_0/a_72_7# bs1_0[4]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1647 bs1_0[4]/dffpos_0/a_99_65# bs1_0[4]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1648 bs1_0[4]/dffpos_0/a_104_9# bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1649 bs1_0[4]/dffpos_0/a_112_65# bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1650 gnd q_11 bs1_0[4]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1651 bs1_0[4]/dffpos_0/a_126_65# bs1_0[4]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1652 q_11 bs1_0[4]/dffpos_0/a_104_9# bs1_0[4]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1653 bs1_0[4]/dffpos_0/a_35_9# bs1_0[4]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1654 bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1655 bs1_0[4]/dffpos_0/a_56_9# bs1_0[4]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1656 bs1_0[4]/dffpos_0/a_61_9# bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1657 bs1_0[4]/dffpos_0/a_69_9# bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1658 vdd bs1_0[4]/dffpos_0/a_72_7# bs1_0[4]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1659 bs1_0[4]/dffpos_0/a_72_7# bs1_0[4]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1660 bs1_0[4]/dffpos_0/a_99_9# bs1_0[4]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1661 bs1_0[4]/dffpos_0/a_104_9# bs1_0[4]/dffpos_0/clk_b bs1_0[4]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1662 bs1_0[4]/dffpos_0/a_112_9# bs1_0[4]/dffpos_0/clk bs1_0[4]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1663 vdd q_11 bs1_0[4]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1664 bs1_0[4]/dffpos_0/a_126_9# bs1_0[4]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1665 q_11 bs1_0[4]/dffpos_0/a_104_9# bs1_0[4]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1666 bs1_0[4]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1667 vdd clk bs1_0[4]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1668 bs1_0[4]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1669 bs1_0[4]/dffpos_0/clk_b clk bs1_0[4]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1670 bs1_0[4]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1671 bs1_0[4]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1672 bs1_0[4]/fa_0/a init q_11 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1673 gnd bs1_0[4]/bc1a_0/inverter_1/Y bs1_0[4]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1674 bs1_0[4]/fa_0/a bs1_0[4]/bc1a_0/inverter_1/Y q_11 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1675 gnd init bs1_0[4]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1676 bs1_0[4]/dffpos_0/D bs1_0[4]/bc1a_0/inverter_1/Y bs1_0[3]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1677 gnd init bs1_0[4]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1678 bs1_0[4]/dffpos_0/D init bs1_0[3]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1679 gnd bs1_0[4]/bc1a_0/inverter_1/Y bs1_0[4]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1680 bs1_0[4]/fa_0/a_13_55# bs1_0[4]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1681 vdd bs1_0[4]/fa_in bs1_0[4]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1682 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/Cin bs1_0[4]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1683 bs1_0[4]/fa_0/a_53_55# bs1_0[4]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1684 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_0/a bs1_0[4]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1685 bs1_0[4]/fa_0/a_74_55# bs1_0[4]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1686 vdd bs1_0[4]/fa_in bs1_0[4]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1687 bs1_0[4]/fa_0/a_74_55# bs1_0[4]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1688 bs1_0[4]/fa_0/a_106_9# bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1689 bs1_0[4]/fa_0/a_122_55# bs1_0[4]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1690 bs1_0[4]/fa_0/a_127_55# bs1_0[4]/fa_in bs1_0[4]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1691 bs1_0[4]/fa_0/a_106_9# bs1_0[4]/fa_0/a bs1_0[4]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1692 bs1_0[4]/add_out bs1_0[4]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1693 bs1_0[3]/Cin bs1_0[4]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1694 bs1_0[4]/fa_0/a_13_9# bs1_0[4]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1695 gnd bs1_0[4]/fa_in bs1_0[4]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1696 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/Cin bs1_0[4]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1697 bs1_0[4]/fa_0/a_53_9# bs1_0[4]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1698 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_0/a bs1_0[4]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1699 bs1_0[4]/fa_0/a_74_9# bs1_0[4]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1700 gnd bs1_0[4]/fa_in bs1_0[4]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1701 bs1_0[4]/fa_0/a_74_9# bs1_0[4]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1702 bs1_0[4]/fa_0/a_106_9# bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1703 bs1_0[4]/fa_0/a_122_9# bs1_0[4]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1704 bs1_0[4]/fa_0/a_127_9# bs1_0[4]/fa_in bs1_0[4]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1705 bs1_0[4]/fa_0/a_106_9# bs1_0[4]/fa_0/a bs1_0[4]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1706 bs1_0[4]/add_out bs1_0[4]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1707 bs1_0[3]/Cin bs1_0[4]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1708 bs1_0[5]/dffpos_0/a_35_65# bs1_0[5]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1709 bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1710 bs1_0[5]/dffpos_0/a_56_65# bs1_0[5]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1711 bs1_0[5]/dffpos_0/a_61_9# bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1712 bs1_0[5]/dffpos_0/a_69_65# bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1713 gnd bs1_0[5]/dffpos_0/a_72_7# bs1_0[5]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1714 bs1_0[5]/dffpos_0/a_72_7# bs1_0[5]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1715 bs1_0[5]/dffpos_0/a_99_65# bs1_0[5]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1716 bs1_0[5]/dffpos_0/a_104_9# bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1717 bs1_0[5]/dffpos_0/a_112_65# bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1718 gnd q_10 bs1_0[5]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1719 bs1_0[5]/dffpos_0/a_126_65# bs1_0[5]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1720 q_10 bs1_0[5]/dffpos_0/a_104_9# bs1_0[5]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1721 bs1_0[5]/dffpos_0/a_35_9# bs1_0[5]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1722 bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1723 bs1_0[5]/dffpos_0/a_56_9# bs1_0[5]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1724 bs1_0[5]/dffpos_0/a_61_9# bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1725 bs1_0[5]/dffpos_0/a_69_9# bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1726 vdd bs1_0[5]/dffpos_0/a_72_7# bs1_0[5]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1727 bs1_0[5]/dffpos_0/a_72_7# bs1_0[5]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1728 bs1_0[5]/dffpos_0/a_99_9# bs1_0[5]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1729 bs1_0[5]/dffpos_0/a_104_9# bs1_0[5]/dffpos_0/clk_b bs1_0[5]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1730 bs1_0[5]/dffpos_0/a_112_9# bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1731 vdd q_10 bs1_0[5]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1732 bs1_0[5]/dffpos_0/a_126_9# bs1_0[5]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1733 q_10 bs1_0[5]/dffpos_0/a_104_9# bs1_0[5]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1734 bs1_0[5]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1735 vdd clk bs1_0[5]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1736 bs1_0[5]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1737 bs1_0[5]/dffpos_0/clk_b clk bs1_0[5]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1738 bs1_0[5]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1739 bs1_0[5]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1740 bs1_0[5]/fa_0/a init q_10 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1741 gnd bs1_0[5]/bc1a_0/inverter_1/Y bs1_0[5]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1742 bs1_0[5]/fa_0/a bs1_0[5]/bc1a_0/inverter_1/Y q_10 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1743 gnd init bs1_0[5]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1744 bs1_0[5]/dffpos_0/D bs1_0[5]/bc1a_0/inverter_1/Y bs1_0[4]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1745 gnd init bs1_0[5]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1746 bs1_0[5]/dffpos_0/D init bs1_0[4]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1747 gnd bs1_0[5]/bc1a_0/inverter_1/Y bs1_0[5]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1748 bs1_0[5]/fa_0/a_13_55# bs1_0[5]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1749 vdd bs1_0[5]/fa_in bs1_0[5]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1750 bs1_0[5]/fa_0/a_37_9# bs1_0[5]/Cin bs1_0[5]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1751 bs1_0[5]/fa_0/a_53_55# bs1_0[5]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1752 bs1_0[5]/fa_0/a_37_9# bs1_0[5]/fa_0/a bs1_0[5]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1753 bs1_0[5]/fa_0/a_74_55# bs1_0[5]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1754 vdd bs1_0[5]/fa_in bs1_0[5]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1755 bs1_0[5]/fa_0/a_74_55# bs1_0[5]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1756 bs1_0[5]/fa_0/a_106_9# bs1_0[5]/fa_0/a_37_9# bs1_0[5]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1757 bs1_0[5]/fa_0/a_122_55# bs1_0[5]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1758 bs1_0[5]/fa_0/a_127_55# bs1_0[5]/fa_in bs1_0[5]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1759 bs1_0[5]/fa_0/a_106_9# bs1_0[5]/fa_0/a bs1_0[5]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1760 bs1_0[5]/add_out bs1_0[5]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1761 bs1_0[4]/Cin bs1_0[5]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1762 bs1_0[5]/fa_0/a_13_9# bs1_0[5]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1763 gnd bs1_0[5]/fa_in bs1_0[5]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1764 bs1_0[5]/fa_0/a_37_9# bs1_0[5]/Cin bs1_0[5]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1765 bs1_0[5]/fa_0/a_53_9# bs1_0[5]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1766 bs1_0[5]/fa_0/a_37_9# bs1_0[5]/fa_0/a bs1_0[5]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1767 bs1_0[5]/fa_0/a_74_9# bs1_0[5]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1768 gnd bs1_0[5]/fa_in bs1_0[5]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1769 bs1_0[5]/fa_0/a_74_9# bs1_0[5]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1770 bs1_0[5]/fa_0/a_106_9# bs1_0[5]/fa_0/a_37_9# bs1_0[5]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1771 bs1_0[5]/fa_0/a_122_9# bs1_0[5]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1772 bs1_0[5]/fa_0/a_127_9# bs1_0[5]/fa_in bs1_0[5]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1773 bs1_0[5]/fa_0/a_106_9# bs1_0[5]/fa_0/a bs1_0[5]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1774 bs1_0[5]/add_out bs1_0[5]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1775 bs1_0[4]/Cin bs1_0[5]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1776 bs1_0[6]/dffpos_0/a_35_65# bs1_0[6]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1777 bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1778 bs1_0[6]/dffpos_0/a_56_65# bs1_0[6]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1779 bs1_0[6]/dffpos_0/a_61_9# bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1780 bs1_0[6]/dffpos_0/a_69_65# bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1781 gnd bs1_0[6]/dffpos_0/a_72_7# bs1_0[6]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1782 bs1_0[6]/dffpos_0/a_72_7# bs1_0[6]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1783 bs1_0[6]/dffpos_0/a_99_65# bs1_0[6]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1784 bs1_0[6]/dffpos_0/a_104_9# bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1785 bs1_0[6]/dffpos_0/a_112_65# bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1786 gnd q_9 bs1_0[6]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1787 bs1_0[6]/dffpos_0/a_126_65# bs1_0[6]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1788 q_9 bs1_0[6]/dffpos_0/a_104_9# bs1_0[6]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1789 bs1_0[6]/dffpos_0/a_35_9# bs1_0[6]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1790 bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1791 bs1_0[6]/dffpos_0/a_56_9# bs1_0[6]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1792 bs1_0[6]/dffpos_0/a_61_9# bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1793 bs1_0[6]/dffpos_0/a_69_9# bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1794 vdd bs1_0[6]/dffpos_0/a_72_7# bs1_0[6]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1795 bs1_0[6]/dffpos_0/a_72_7# bs1_0[6]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1796 bs1_0[6]/dffpos_0/a_99_9# bs1_0[6]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1797 bs1_0[6]/dffpos_0/a_104_9# bs1_0[6]/dffpos_0/clk_b bs1_0[6]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1798 bs1_0[6]/dffpos_0/a_112_9# bs1_0[6]/dffpos_0/clk bs1_0[6]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1799 vdd q_9 bs1_0[6]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1800 bs1_0[6]/dffpos_0/a_126_9# bs1_0[6]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1801 q_9 bs1_0[6]/dffpos_0/a_104_9# bs1_0[6]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1802 bs1_0[6]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1803 vdd clk bs1_0[6]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1804 bs1_0[6]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1805 bs1_0[6]/dffpos_0/clk_b clk bs1_0[6]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1806 bs1_0[6]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1807 bs1_0[6]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1808 bs1_0[6]/fa_0/a init q_9 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1809 gnd bs1_0[6]/bc1a_0/inverter_1/Y bs1_0[6]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1810 bs1_0[6]/fa_0/a bs1_0[6]/bc1a_0/inverter_1/Y q_9 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1811 gnd init bs1_0[6]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1812 bs1_0[6]/dffpos_0/D bs1_0[6]/bc1a_0/inverter_1/Y bs1_0[5]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1813 gnd init bs1_0[6]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1814 bs1_0[6]/dffpos_0/D init bs1_0[5]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1815 gnd bs1_0[6]/bc1a_0/inverter_1/Y bs1_0[6]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1816 bs1_0[6]/fa_0/a_13_55# bs1_0[6]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1817 vdd bs1_0[6]/fa_in bs1_0[6]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1818 bs1_0[6]/fa_0/a_37_9# bs1_0[6]/Cin bs1_0[6]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1819 bs1_0[6]/fa_0/a_53_55# bs1_0[6]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1820 bs1_0[6]/fa_0/a_37_9# bs1_0[6]/fa_0/a bs1_0[6]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1821 bs1_0[6]/fa_0/a_74_55# bs1_0[6]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1822 vdd bs1_0[6]/fa_in bs1_0[6]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1823 bs1_0[6]/fa_0/a_74_55# bs1_0[6]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1824 bs1_0[6]/fa_0/a_106_9# bs1_0[6]/fa_0/a_37_9# bs1_0[6]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1825 bs1_0[6]/fa_0/a_122_55# bs1_0[6]/Cin vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1826 bs1_0[6]/fa_0/a_127_55# bs1_0[6]/fa_in bs1_0[6]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1827 bs1_0[6]/fa_0/a_106_9# bs1_0[6]/fa_0/a bs1_0[6]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1828 bs1_0[6]/add_out bs1_0[6]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1829 bs1_0[5]/Cin bs1_0[6]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1830 bs1_0[6]/fa_0/a_13_9# bs1_0[6]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1831 gnd bs1_0[6]/fa_in bs1_0[6]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1832 bs1_0[6]/fa_0/a_37_9# bs1_0[6]/Cin bs1_0[6]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1833 bs1_0[6]/fa_0/a_53_9# bs1_0[6]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1834 bs1_0[6]/fa_0/a_37_9# bs1_0[6]/fa_0/a bs1_0[6]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1835 bs1_0[6]/fa_0/a_74_9# bs1_0[6]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1836 gnd bs1_0[6]/fa_in bs1_0[6]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1837 bs1_0[6]/fa_0/a_74_9# bs1_0[6]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1838 bs1_0[6]/fa_0/a_106_9# bs1_0[6]/fa_0/a_37_9# bs1_0[6]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1839 bs1_0[6]/fa_0/a_122_9# bs1_0[6]/Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1840 bs1_0[6]/fa_0/a_127_9# bs1_0[6]/fa_in bs1_0[6]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1841 bs1_0[6]/fa_0/a_106_9# bs1_0[6]/fa_0/a bs1_0[6]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1842 bs1_0[6]/add_out bs1_0[6]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1843 bs1_0[5]/Cin bs1_0[6]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1844 bs1_0[7]/dffpos_0/a_35_65# bs1_0[7]/dffpos_0/clk_b gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1845 bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_35_65# Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1846 bs1_0[7]/dffpos_0/a_56_65# bs1_0[7]/dffpos_0/D gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1847 bs1_0[7]/dffpos_0/a_61_9# bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_56_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1848 bs1_0[7]/dffpos_0/a_69_65# bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/a_61_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1849 gnd bs1_0[7]/dffpos_0/a_72_7# bs1_0[7]/dffpos_0/a_69_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1850 bs1_0[7]/dffpos_0/a_72_7# bs1_0[7]/dffpos_0/a_61_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1851 bs1_0[7]/dffpos_0/a_99_65# bs1_0[7]/dffpos_0/a_72_7# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1852 bs1_0[7]/dffpos_0/a_104_9# bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/a_99_65# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1853 bs1_0[7]/dffpos_0/a_112_65# bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_104_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1854 gnd q_8 bs1_0[7]/dffpos_0/a_112_65# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1855 bs1_0[7]/dffpos_0/a_126_65# bs1_0[7]/dffpos_0/a_104_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1856 q_8 bs1_0[7]/dffpos_0/a_104_9# bs1_0[7]/dffpos_0/a_126_65# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1857 bs1_0[7]/dffpos_0/a_35_9# bs1_0[7]/dffpos_0/clk_b vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1858 bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_35_9# Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1859 bs1_0[7]/dffpos_0/a_56_9# bs1_0[7]/dffpos_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1860 bs1_0[7]/dffpos_0/a_61_9# bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/a_56_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1861 bs1_0[7]/dffpos_0/a_69_9# bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_61_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1862 vdd bs1_0[7]/dffpos_0/a_72_7# bs1_0[7]/dffpos_0/a_69_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1863 bs1_0[7]/dffpos_0/a_72_7# bs1_0[7]/dffpos_0/a_61_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1864 bs1_0[7]/dffpos_0/a_99_9# bs1_0[7]/dffpos_0/a_72_7# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1865 bs1_0[7]/dffpos_0/a_104_9# bs1_0[7]/dffpos_0/clk_b bs1_0[7]/dffpos_0/a_99_9# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1866 bs1_0[7]/dffpos_0/a_112_9# bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/a_104_9# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1867 vdd q_8 bs1_0[7]/dffpos_0/a_112_9# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1868 bs1_0[7]/dffpos_0/a_126_9# bs1_0[7]/dffpos_0/a_104_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1869 q_8 bs1_0[7]/dffpos_0/a_104_9# bs1_0[7]/dffpos_0/a_126_9# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=80 as=0 ps=0
M1870 bs1_0[7]/dffpos_0/clk_b en vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1871 vdd clk bs1_0[7]/dffpos_0/clk_b Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1872 bs1_0[7]/nand_0/a_9_6# en gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1873 bs1_0[7]/dffpos_0/clk_b clk bs1_0[7]/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1874 bs1_0[7]/bc1a_0/inverter_1/Y init vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1875 bs1_0[7]/bc1a_0/inverter_1/Y init gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1876 bs1_0[7]/fa_0/a init q_8 Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1877 gnd bs1_0[7]/bc1a_0/inverter_1/Y bs1_0[7]/fa_0/a Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1878 bs1_0[7]/fa_0/a bs1_0[7]/bc1a_0/inverter_1/Y q_8 Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1879 gnd init bs1_0[7]/fa_0/a Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1880 bs1_0[7]/dffpos_0/D bs1_0[7]/bc1a_0/inverter_1/Y bs1_0[6]/add_out Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1881 gnd init bs1_0[7]/dffpos_0/D Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1882 bs1_0[7]/dffpos_0/D init bs1_0[6]/add_out Vdd CMOSPTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1883 gnd bs1_0[7]/bc1a_0/inverter_1/Y bs1_0[7]/dffpos_0/D Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1884 bs1_0[7]/fa_0/a_13_55# bs1_0[7]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1885 vdd bs1_0[7]/fa_in bs1_0[7]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1886 bs1_0[7]/fa_0/a_37_9# gnd bs1_0[7]/fa_0/a_13_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1887 bs1_0[7]/fa_0/a_53_55# bs1_0[7]/fa_in vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1888 bs1_0[7]/fa_0/a_37_9# bs1_0[7]/fa_0/a bs1_0[7]/fa_0/a_53_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1889 bs1_0[7]/fa_0/a_74_55# gnd vdd Vdd CMOSPTT w=20 l=2
+  ad=320 pd=152 as=0 ps=0
M1890 vdd bs1_0[7]/fa_in bs1_0[7]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1891 bs1_0[7]/fa_0/a_74_55# bs1_0[7]/fa_0/a vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1892 bs1_0[7]/fa_0/a_106_9# bs1_0[7]/fa_0/a_37_9# bs1_0[7]/fa_0/a_74_55# Vdd CMOSPTT w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1893 bs1_0[7]/fa_0/a_122_55# gnd vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1894 bs1_0[7]/fa_0/a_127_55# bs1_0[7]/fa_in bs1_0[7]/fa_0/a_122_55# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1895 bs1_0[7]/fa_0/a_106_9# bs1_0[7]/fa_0/a bs1_0[7]/fa_0/a_127_55# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1896 bs2_0[0]/muxA_in bs1_0[7]/fa_0/a_106_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1897 bs1_0[6]/Cin bs1_0[7]/fa_0/a_37_9# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1898 bs1_0[7]/fa_0/a_13_9# bs1_0[7]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1899 gnd bs1_0[7]/fa_in bs1_0[7]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1900 bs1_0[7]/fa_0/a_37_9# gnd bs1_0[7]/fa_0/a_13_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1901 bs1_0[7]/fa_0/a_53_9# bs1_0[7]/fa_in gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1902 bs1_0[7]/fa_0/a_37_9# bs1_0[7]/fa_0/a bs1_0[7]/fa_0/a_53_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1903 bs1_0[7]/fa_0/a_74_9# gnd gnd Gnd CMOSNTT w=10 l=2
+  ad=160 pd=92 as=0 ps=0
M1904 gnd bs1_0[7]/fa_in bs1_0[7]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1905 bs1_0[7]/fa_0/a_74_9# bs1_0[7]/fa_0/a gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1906 bs1_0[7]/fa_0/a_106_9# bs1_0[7]/fa_0/a_37_9# bs1_0[7]/fa_0/a_74_9# Gnd CMOSNTT w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1907 bs1_0[7]/fa_0/a_122_9# gnd gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1908 bs1_0[7]/fa_0/a_127_9# bs1_0[7]/fa_in bs1_0[7]/fa_0/a_122_9# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1909 bs1_0[7]/fa_0/a_106_9# bs1_0[7]/fa_0/a bs1_0[7]/fa_0/a_127_9# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1910 bs2_0[0]/muxA_in bs1_0[7]/fa_0/a_106_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1911 bs1_0[6]/Cin bs1_0[7]/fa_0/a_37_9# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 gnd q_9 6.817860fF
C1 en gnd 17.029682fF
C2 bs1_0[3]/fa_in bs1_0[3]/fa_0/a_37_9# 2.036880fF
C3 clk gnd 17.931598fF
C4 bs1_0[7]/fa_0/a_37_9# bs1_0[7]/fa_0/a 2.034300fF
C5 vdd bs1_0[1]/Cin 4.699320fF
C6 vdd gnd 16.883279fF
C7 q_13 gnd 6.817860fF
C8 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_0/a 2.034300fF
C9 vdd bs1_0[4]/Cin 4.699320fF
C10 bs1_0[7]/fa_in bs1_0[7]/fa_0/a_37_9# 2.036880fF
C11 vdd bs1_0[4]/add_out 5.929230fF
C12 bs1_0[3]/fa_0/a bs1_0[3]/fa_0/a_37_9# 2.034300fF
C13 bs1_0[5]/dffpos_0/clk bs1_0[5]/dffpos_0/D 2.254440fF
C14 bs1_0[0]/fa_in gnd 2.483310fF
C15 bs1_0[5]/fa_in bs1_0[5]/fa_0/a_37_9# 2.036880fF
C16 bs1_0[2]/Cin bs1_0[2]/add_out 2.228700fF
C17 bs1_0[2]/fa_in gnd 2.483310fF
C18 vdd bs1_0[2]/add_out 5.929230fF
C19 bs1_0[1]/fa_0/a bs1_0[1]/fa_0/a_37_9# 2.034300fF
C20 bs1_0[7]/bc1a_0/inverter_1/Y gnd 2.218440fF
C21 bs1_0[7]/dffpos_0/clk bs1_0[7]/dffpos_0/D 2.254440fF
C22 en init 4.331280fF
C23 bs2_0[2]/dffpos_0/D bs2_0[2]/dffpos_0/clk 2.254440fF
C24 clk init 4.331280fF
C25 vdd init 12.996240fF
C26 bs1_0[3]/bc1a_0/inverter_1/Y gnd 2.218440fF
C27 bs1_0[3]/add_out bs1_0[3]/Cin 2.228700fF
C28 bs2_0[6]/dffpos_0/D bs2_0[6]/dffpos_0/clk 2.254440fF
C29 bs1_0[4]/add_out bs1_0[4]/Cin 2.228700fF
C30 bs1_0[2]/dffpos_0/D bs1_0[2]/dffpos_0/clk 2.254440fF
C31 bs1_0[4]/bc1a_0/inverter_1/Y gnd 2.218440fF
C32 bs1_0[3]/dffpos_0/D bs1_0[3]/dffpos_0/clk 2.254440fF
C33 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_0/a 2.034300fF
C34 vdd bs1_0[3]/Cin 4.699320fF
C35 bs1_0[5]/fa_in gnd 2.483310fF
C36 bs1_0[2]/fa_0/a bs1_0[2]/fa_0/a_37_9# 2.034300fF
C37 vdd bs1_0[1]/add_out 5.929230fF
C38 vdd bs1_0[5]/Cin 4.699320fF
C39 q_8 gnd 6.817860fF
C40 init gnd 22.509836fF
C41 gnd bs1_0[5]/bc1a_0/inverter_1/Y 2.218440fF
C42 vdd bs1_0[0]/add_out 5.929230fF
C43 bs1_0[5]/add_out bs1_0[5]/Cin 2.228700fF
C44 bs1_0[0]/add_out bs1_0[0]/Cin 2.228700fF
C45 vdd bs1_0[6]/add_out 5.929230fF
C46 q_10 gnd 6.817860fF
C47 bs1_0[1]/fa_in gnd 2.483310fF
C48 bs1_0[6]/add_out bs1_0[6]/Cin 2.228700fF
C49 bs1_0[6]/fa_in bs1_0[6]/fa_0/a_37_9# 2.036880fF
C50 bs1_0[1]/add_out bs1_0[1]/Cin 2.228700fF
C51 bs1_0[7]/fa_in gnd 3.999630fF
C52 bs1_0[2]/fa_in bs1_0[2]/fa_0/a_37_9# 2.036880fF
C53 en q_0 2.426880fF
C54 bs1_0[6]/bc1a_0/inverter_1/Y gnd 2.218440fF
C55 bs1_0[4]/fa_0/a_37_9# bs1_0[4]/fa_in 2.036880fF
C56 q_0 clk 2.426880fF
C57 gnd q_15 6.817860fF
C58 bs1_0[1]/bc1a_0/inverter_1/Y gnd 2.218440fF
C59 vdd q_0 14.879280fF
C60 bs1_0[4]/dffpos_0/D bs1_0[4]/dffpos_0/clk 2.254440fF
C61 bs2_0[7]/dffpos_0/clk bs2_0[7]/dffpos_0/D 2.254440fF
C62 q_11 gnd 6.817860fF
C63 bs1_0[0]/dffpos_0/D bs1_0[0]/dffpos_0/clk 2.254440fF
C64 bs2_0[3]/dffpos_0/D bs2_0[3]/dffpos_0/clk 2.254440fF
C65 bs1_0[6]/fa_0/a bs1_0[6]/fa_0/a_37_9# 2.034300fF
C66 bs2_0[0]/dffpos_0/D bs2_0[0]/dffpos_0/clk 2.254440fF
C67 vdd bs1_0[3]/add_out 5.929230fF
C68 bs1_0[6]/dffpos_0/D bs1_0[6]/dffpos_0/clk 2.254440fF
C69 bs2_0[5]/dffpos_0/clk bs2_0[5]/dffpos_0/D 2.254440fF
C70 en clk 14.494805fF
C71 bs1_0[1]/dffpos_0/D bs1_0[1]/dffpos_0/clk 2.254440fF
C72 bs1_0[6]/fa_in gnd 2.483310fF
C73 vdd en 16.987924fF
C74 vdd clk 17.028240fF
C75 vdd bs1_0[2]/Cin 4.699320fF
C76 q_0 gnd 8.631960fF
C77 q_12 gnd 6.817860fF
C78 bs1_0[0]/fa_0/a_37_9# bs1_0[0]/fa_in 2.036880fF
C79 vdd bs1_0[0]/Cin 4.699320fF
C80 q_14 gnd 6.817860fF
C81 bs1_0[0]/bc1a_0/inverter_1/Y gnd 2.218440fF
C82 bs1_0[3]/fa_in gnd 2.483310fF
C83 vdd cout 8.408011fF
C84 bs1_0[5]/fa_0/a_37_9# bs1_0[5]/fa_0/a 2.034300fF
C85 vdd bs1_0[6]/Cin 4.699320fF
C86 vdd bs2_0[0]/muxA_in 4.736700fF
C87 vdd bs1_0[5]/add_out 5.929230fF
C88 bs1_0[1]/fa_0/a_37_9# bs1_0[1]/fa_in 2.036880fF
C89 bs2_0[4]/dffpos_0/clk bs2_0[4]/dffpos_0/D 2.254440fF
C90 bs1_0[4]/fa_in gnd 2.483310fF
C91 bs2_0[1]/dffpos_0/D bs2_0[1]/dffpos_0/clk 2.254440fF
C92 bs1_0[2]/bc1a_0/inverter_1/Y gnd 2.218440fF
C93 bs1_0[7]/fa_0/a_74_9# gnd! 2.554200fF
C94 bs1_0[6]/Cin gnd! 7.770780fF
C95 bs2_0[0]/muxA_in gnd! 14.318563fF
C96 bs1_0[7]/fa_0/a_74_55# gnd! 2.973600fF
C97 bs1_0[7]/fa_0/a_13_55# gnd! 2.124000fF
C98 bs1_0[7]/fa_0/a_106_9# gnd! 7.911000fF
C99 bs1_0[7]/fa_0/a_37_9# gnd! 12.970800fF
C100 bs1_0[7]/fa_0/a gnd! 11.533050fF
C101 bs1_0[6]/add_out gnd! 12.253439fF
C102 bs1_0[7]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C103 bs1_0[7]/dffpos_0/a_104_9# gnd! 4.015080fF
C104 q_8 gnd! 9.896400fF
C105 bs1_0[7]/dffpos_0/a_61_9# gnd! 3.452040fF
C106 bs1_0[7]/dffpos_0/a_72_7# gnd! 4.794840fF
C107 bs1_0[7]/dffpos_0/clk gnd! 7.541550fF
C108 bs1_0[7]/dffpos_0/D gnd! 6.976710fF
C109 bs1_0[7]/dffpos_0/clk_b gnd! 9.353609fF
C110 bs1_0[6]/fa_0/a_74_9# gnd! 2.554200fF
C111 bs1_0[5]/Cin gnd! 7.770780fF
C112 bs1_0[6]/fa_0/a_74_55# gnd! 2.973600fF
C113 bs1_0[6]/fa_0/a_13_55# gnd! 2.124000fF
C114 bs1_0[6]/fa_0/a_106_9# gnd! 7.911000fF
C115 bs1_0[6]/fa_0/a_37_9# gnd! 12.970800fF
C116 bs1_0[6]/fa_0/a gnd! 11.533050fF
C117 bs1_0[5]/add_out gnd! 12.253439fF
C118 bs1_0[6]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C119 bs1_0[6]/dffpos_0/a_104_9# gnd! 4.015080fF
C120 q_9 gnd! 9.896400fF
C121 bs1_0[6]/dffpos_0/a_61_9# gnd! 3.452040fF
C122 bs1_0[6]/dffpos_0/a_72_7# gnd! 4.794840fF
C123 bs1_0[6]/dffpos_0/clk gnd! 7.541550fF
C124 bs1_0[6]/dffpos_0/D gnd! 6.976710fF
C125 bs1_0[6]/dffpos_0/clk_b gnd! 9.353609fF
C126 bs1_0[5]/fa_0/a_74_9# gnd! 2.554200fF
C127 bs1_0[4]/Cin gnd! 7.770780fF
C128 bs1_0[5]/fa_0/a_74_55# gnd! 2.973600fF
C129 bs1_0[5]/fa_0/a_13_55# gnd! 2.124000fF
C130 bs1_0[5]/fa_0/a_106_9# gnd! 7.911000fF
C131 bs1_0[5]/fa_0/a_37_9# gnd! 12.970800fF
C132 bs1_0[5]/fa_0/a gnd! 11.533050fF
C133 bs1_0[4]/add_out gnd! 12.253439fF
C134 bs1_0[5]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C135 bs1_0[5]/dffpos_0/a_104_9# gnd! 4.015080fF
C136 q_10 gnd! 9.982801fF
C137 bs1_0[5]/dffpos_0/a_61_9# gnd! 3.452040fF
C138 bs1_0[5]/dffpos_0/a_72_7# gnd! 4.794840fF
C139 bs1_0[5]/dffpos_0/clk gnd! 7.541550fF
C140 bs1_0[5]/dffpos_0/D gnd! 6.976710fF
C141 bs1_0[5]/dffpos_0/clk_b gnd! 9.353609fF
C142 bs1_0[4]/fa_0/a_74_9# gnd! 2.554200fF
C143 bs1_0[3]/Cin gnd! 7.770780fF
C144 bs1_0[4]/fa_0/a_74_55# gnd! 2.973600fF
C145 bs1_0[4]/fa_0/a_13_55# gnd! 2.124000fF
C146 bs1_0[4]/fa_0/a_106_9# gnd! 7.911000fF
C147 bs1_0[4]/fa_0/a_37_9# gnd! 12.970800fF
C148 bs1_0[4]/fa_0/a gnd! 11.533050fF
C149 bs1_0[3]/add_out gnd! 12.253439fF
C150 bs1_0[4]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C151 bs1_0[4]/dffpos_0/a_104_9# gnd! 4.015080fF
C152 q_11 gnd! 9.896400fF
C153 bs1_0[4]/dffpos_0/a_61_9# gnd! 3.452040fF
C154 bs1_0[4]/dffpos_0/a_72_7# gnd! 4.794840fF
C155 bs1_0[4]/dffpos_0/clk gnd! 7.541550fF
C156 bs1_0[4]/dffpos_0/D gnd! 6.976710fF
C157 bs1_0[4]/dffpos_0/clk_b gnd! 9.353609fF
C158 bs1_0[3]/fa_0/a_74_9# gnd! 2.554200fF
C159 bs1_0[2]/Cin gnd! 7.770780fF
C160 bs1_0[3]/fa_0/a_74_55# gnd! 2.973600fF
C161 bs1_0[3]/fa_0/a_13_55# gnd! 2.124000fF
C162 bs1_0[3]/fa_0/a_106_9# gnd! 7.911000fF
C163 bs1_0[3]/fa_0/a_37_9# gnd! 12.970800fF
C164 bs1_0[3]/fa_0/a gnd! 11.533050fF
C165 bs1_0[2]/add_out gnd! 12.253439fF
C166 bs1_0[3]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C167 bs1_0[3]/dffpos_0/a_104_9# gnd! 4.015080fF
C168 q_12 gnd! 9.896400fF
C169 bs1_0[3]/dffpos_0/a_61_9# gnd! 3.452040fF
C170 bs1_0[3]/dffpos_0/a_72_7# gnd! 4.794840fF
C171 bs1_0[3]/dffpos_0/clk gnd! 7.541550fF
C172 bs1_0[3]/dffpos_0/D gnd! 6.976710fF
C173 bs1_0[3]/dffpos_0/clk_b gnd! 9.353609fF
C174 bs1_0[2]/fa_0/a_74_9# gnd! 2.554200fF
C175 bs1_0[1]/Cin gnd! 7.770780fF
C176 bs1_0[2]/fa_0/a_74_55# gnd! 2.973600fF
C177 bs1_0[2]/fa_0/a_13_55# gnd! 2.124000fF
C178 bs1_0[2]/fa_0/a_106_9# gnd! 7.911000fF
C179 bs1_0[2]/fa_0/a_37_9# gnd! 12.970800fF
C180 bs1_0[2]/fa_0/a gnd! 11.533050fF
C181 bs1_0[1]/add_out gnd! 12.253439fF
C182 bs1_0[2]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C183 bs1_0[2]/dffpos_0/a_104_9# gnd! 4.015080fF
C184 q_13 gnd! 9.896400fF
C185 bs1_0[2]/dffpos_0/a_61_9# gnd! 3.452040fF
C186 bs1_0[2]/dffpos_0/a_72_7# gnd! 4.794840fF
C187 bs1_0[2]/dffpos_0/clk gnd! 7.541550fF
C188 bs1_0[2]/dffpos_0/D gnd! 6.976710fF
C189 bs1_0[2]/dffpos_0/clk_b gnd! 9.353609fF
C190 bs1_0[1]/fa_0/a_74_9# gnd! 2.554200fF
C191 bs1_0[0]/Cin gnd! 7.770780fF
C192 bs1_0[1]/fa_0/a_74_55# gnd! 2.973600fF
C193 bs1_0[1]/fa_0/a_13_55# gnd! 2.124000fF
C194 bs1_0[1]/fa_0/a_106_9# gnd! 7.911000fF
C195 bs1_0[1]/fa_0/a_37_9# gnd! 12.970800fF
C196 bs1_0[1]/fa_0/a gnd! 11.533050fF
C197 bs1_0[0]/add_out gnd! 12.253439fF
C198 bs1_0[1]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C199 bs1_0[1]/dffpos_0/a_104_9# gnd! 4.015080fF
C200 q_14 gnd! 9.896400fF
C201 bs1_0[1]/dffpos_0/a_61_9# gnd! 3.452040fF
C202 bs1_0[1]/dffpos_0/a_72_7# gnd! 4.794840fF
C203 bs1_0[1]/dffpos_0/clk gnd! 7.541550fF
C204 bs1_0[1]/dffpos_0/D gnd! 6.976710fF
C205 bs1_0[1]/dffpos_0/clk_b gnd! 9.353609fF
C206 bs1_0[0]/fa_0/a_74_9# gnd! 2.554200fF
C207 bs1_0[0]/fa_0/a_74_55# gnd! 2.973600fF
C208 bs1_0[0]/fa_0/a_13_55# gnd! 2.124000fF
C209 bs1_0[0]/fa_0/a_106_9# gnd! 7.911000fF
C210 bs1_0[0]/fa_0/a_37_9# gnd! 12.970800fF
C211 bs1_0[0]/fa_0/a gnd! 11.533050fF
C212 cout gnd! 9.049680fF
C213 bs1_0[0]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C214 bs1_0[0]/dffpos_0/a_104_9# gnd! 4.015080fF
C215 q_15 gnd! 9.982801fF
C216 bs1_0[0]/dffpos_0/a_61_9# gnd! 3.452040fF
C217 bs1_0[0]/dffpos_0/a_72_7# gnd! 4.794840fF
C218 bs1_0[0]/dffpos_0/clk gnd! 7.541550fF
C219 bs1_0[0]/dffpos_0/D gnd! 6.976710fF
C220 bs1_0[0]/dffpos_0/clk_b gnd! 9.353609fF
C221 mcand_0 gnd! 10.878500fF
C222 bs1_0[7]/fa_in gnd! 17.062199fF
C223 bs2_0[7]/a_52_99# gnd! 7.399800fF
C224 clk gnd! 166.709563fF
C225 vdd gnd! 646.135875fF
C226 bs2_0[6]/muxB_in gnd! 20.742840fF
C227 mplier_0 gnd! 2.335000fF
C228 bs2_0[7]/muxB_in gnd! 14.719680fF
C229 init gnd! 231.120969fF
C230 bs2_0[7]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C231 en gnd! 175.645094fF
C232 bs2_0[7]/dffpos_0/a_104_9# gnd! 4.015080fF
C233 q_0 gnd! 118.822359fF
C234 bs2_0[7]/dffpos_0/a_61_9# gnd! 3.452040fF
C235 bs2_0[7]/dffpos_0/a_72_7# gnd! 4.794840fF
C236 bs2_0[7]/dffpos_0/clk gnd! 7.541550fF
C237 bs2_0[7]/dffpos_0/D gnd! 6.984990fF
C238 bs2_0[7]/dffpos_0/clk_b gnd! 9.353609fF
C239 gnd gnd! 712.763125fF
C240 mcand_1 gnd! 10.878500fF
C241 bs1_0[6]/fa_in gnd! 17.062199fF
C242 bs2_0[6]/a_52_99# gnd! 7.399800fF
C243 bs2_0[5]/muxB_in gnd! 20.742840fF
C244 mplier_1 gnd! 2.335000fF
C245 bs2_0[6]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C246 bs2_0[6]/dffpos_0/a_104_9# gnd! 4.015080fF
C247 q_1 gnd! 12.812761fF
C248 bs2_0[6]/dffpos_0/a_61_9# gnd! 3.452040fF
C249 bs2_0[6]/dffpos_0/a_72_7# gnd! 4.794840fF
C250 bs2_0[6]/dffpos_0/clk gnd! 7.541550fF
C251 bs2_0[6]/dffpos_0/D gnd! 6.984990fF
C252 bs2_0[6]/dffpos_0/clk_b gnd! 9.353609fF
C253 mcand_2 gnd! 10.878500fF
C254 bs1_0[5]/fa_in gnd! 17.062199fF
C255 bs2_0[5]/a_52_99# gnd! 7.399800fF
C256 bs2_0[4]/muxB_in gnd! 20.742840fF
C257 mplier_2 gnd! 2.335000fF
C258 bs2_0[5]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C259 bs2_0[5]/dffpos_0/a_104_9# gnd! 4.015080fF
C260 q_2 gnd! 12.776761fF
C261 bs2_0[5]/dffpos_0/a_61_9# gnd! 3.452040fF
C262 bs2_0[5]/dffpos_0/a_72_7# gnd! 4.794840fF
C263 bs2_0[5]/dffpos_0/clk gnd! 7.541550fF
C264 bs2_0[5]/dffpos_0/D gnd! 6.984990fF
C265 bs2_0[5]/dffpos_0/clk_b gnd! 9.353609fF
C266 mcand_3 gnd! 10.784899fF
C267 bs1_0[4]/fa_in gnd! 17.062199fF
C268 bs2_0[4]/a_52_99# gnd! 7.399800fF
C269 bs2_0[3]/muxB_in gnd! 20.742840fF
C270 mplier_3 gnd! 2.284600fF
C271 bs2_0[4]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C272 bs2_0[4]/dffpos_0/a_104_9# gnd! 4.015080fF
C273 q_3 gnd! 12.812761fF
C274 bs2_0[4]/dffpos_0/a_61_9# gnd! 3.452040fF
C275 bs2_0[4]/dffpos_0/a_72_7# gnd! 4.794840fF
C276 bs2_0[4]/dffpos_0/clk gnd! 7.541550fF
C277 bs2_0[4]/dffpos_0/D gnd! 6.984990fF
C278 bs2_0[4]/dffpos_0/clk_b gnd! 9.353609fF
C279 mcand_4 gnd! 10.878500fF
C280 bs1_0[3]/fa_in gnd! 17.062199fF
C281 bs2_0[3]/a_52_99# gnd! 7.399800fF
C282 bs2_0[2]/muxB_in gnd! 20.742840fF
C283 mplier_4 gnd! 2.335000fF
C284 bs2_0[3]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C285 bs2_0[3]/dffpos_0/a_104_9# gnd! 4.015080fF
C286 q_4 gnd! 12.812761fF
C287 bs2_0[3]/dffpos_0/a_61_9# gnd! 3.452040fF
C288 bs2_0[3]/dffpos_0/a_72_7# gnd! 4.794840fF
C289 bs2_0[3]/dffpos_0/clk gnd! 7.541550fF
C290 bs2_0[3]/dffpos_0/D gnd! 6.984990fF
C291 bs2_0[3]/dffpos_0/clk_b gnd! 9.353609fF
C292 mcand_5 gnd! 10.878500fF
C293 bs1_0[2]/fa_in gnd! 17.062199fF
C294 bs2_0[2]/a_52_99# gnd! 7.399800fF
C295 bs2_0[1]/muxB_in gnd! 20.742840fF
C296 mplier_5 gnd! 2.335000fF
C297 bs2_0[2]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C298 bs2_0[2]/dffpos_0/a_104_9# gnd! 4.015080fF
C299 q_5 gnd! 12.812761fF
C300 bs2_0[2]/dffpos_0/a_61_9# gnd! 3.452040fF
C301 bs2_0[2]/dffpos_0/a_72_7# gnd! 4.794840fF
C302 bs2_0[2]/dffpos_0/clk gnd! 7.541550fF
C303 bs2_0[2]/dffpos_0/D gnd! 6.984990fF
C304 bs2_0[2]/dffpos_0/clk_b gnd! 9.353609fF
C305 mcand_6 gnd! 10.878500fF
C306 bs1_0[1]/fa_in gnd! 17.062199fF
C307 bs2_0[1]/a_52_99# gnd! 7.399800fF
C308 bs2_0[0]/muxB_in gnd! 20.742840fF
C309 mplier_6 gnd! 2.335000fF
C310 bs2_0[1]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C311 bs2_0[1]/dffpos_0/a_104_9# gnd! 4.015080fF
C312 q_6 gnd! 12.812761fF
C313 bs2_0[1]/dffpos_0/a_61_9# gnd! 3.452040fF
C314 bs2_0[1]/dffpos_0/a_72_7# gnd! 4.794840fF
C315 bs2_0[1]/dffpos_0/clk gnd! 7.541550fF
C316 bs2_0[1]/dffpos_0/D gnd! 6.984990fF
C317 bs2_0[1]/dffpos_0/clk_b gnd! 9.353609fF
C318 mcand_7 gnd! 10.878500fF
C319 bs1_0[0]/fa_in gnd! 17.062199fF
C320 bs2_0[0]/a_52_99# gnd! 7.399800fF
C321 mplier_7 gnd! 2.335000fF
C322 bs2_0[0]/bc1a_0/inverter_1/Y gnd! 11.778479fF
C323 bs2_0[0]/dffpos_0/a_104_9# gnd! 4.015080fF
C324 q_7 gnd! 12.776761fF
C325 bs2_0[0]/dffpos_0/a_61_9# gnd! 3.452040fF
C326 bs2_0[0]/dffpos_0/a_72_7# gnd! 4.794840fF
C327 bs2_0[0]/dffpos_0/clk gnd! 7.541550fF
C328 bs2_0[0]/dffpos_0/D gnd! 6.984990fF
C329 bs2_0[0]/dffpos_0/clk_b gnd! 9.353609fF


*********************************************
* Transistor Models
*
* Those are given, dont touch these
*********************************************

* These parameters are extracted from the process corner wafers that are provided by AMI
* In this document slow-fast means: NMOS device slow and PMOS device fast.
* The fast-slow corner means: NMOS fast and PMOS slow. 
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_TT (typical)                  WAF: 3104
* Temperature_parameters=Optimized 
.MODEL CMOSNTT NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6696061
+K1      = 0.8351612      K2      = -0.0839158     K3      = 23.1023856
+K3B     = -7.6841108     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.9047241      DVT1    = 0.4302695      DVT2    = -0.134857
+U0      = 458.439679     UA      = 1E-13          UB      = 1.485499E-18
+UC      = 1.629939E-11   VSAT    = 1.643993E5     A0      = 0.6103537
+AGS     = 0.1194608      B0      = 2.674756E-6    B1      = 5E-6
+KETA    = -2.640681E-3   A1      = 8.219585E-5    A2      = 0.3564792
+RDSW    = 1.387108E3     PRWG    = 0.0299916      PRWB    = 0.0363981
+WR      = 1              WINT    = 2.472348E-7    LINT    = 3.597605E-8
+XL      = 0              XW      = 0              DWG     = -1.287163E-8
+DWB     = 5.306586E-8    VOFF    = 0              NFACTOR = 0.8365585
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0246738      ETAB    = -1.406123E-3
+DSUB    = 0.2543458      PCLM    = 2.5945188      PDIBLC1 = -0.4282336
+PDIBLC2 = 2.311743E-3    PDIBLCB = -0.0272914     DROUT   = 0.7283566
+PSCBE1  = 5.598623E8     PSCBE2  = 5.461645E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2E-10          CGSO    = 2E-10          CGBO    = 1E-9
+CJ      = 4.197772E-4    PB      = 0.99           MJ      = 0.4515044
+CJSW    = 3.242724E-10   PBSW    = 0.1            MJSW    = 0.1153991
+CJSWG   = 1.64E-10       PBSWG   = 0.1            MJSWG   = 0.1153991
+CF      = 0              PVTH0   = 0.0585501      PRDSW   = 133.285505
+PK2     = -0.0299638     WKETA   = -0.0248758     LKETA   = 1.173187E-3
+AF      = 1              KF      = 0)
*
.MODEL CMOSPTT PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9214347
+K1      = 0.5553722      K2      = 8.763328E-3    K3      = 6.3063558
+K3B     = -0.6487362     W0      = 1.280703E-8    NLX     = 2.593997E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.5131165      DVT1    = 0.5480536      DVT2    = -0.1186489
+U0      = 212.0166131    UA      = 2.807115E-9    UB      = 1E-21
+UC      = -5.82128E-11   VSAT    = 1.713601E5     A0      = 0.8430019
+AGS     = 0.1328608      B0      = 7.117912E-7    B1      = 5E-6
+KETA    = -3.674859E-3   A1      = 4.77502E-5     A2      = 0.3
+RDSW    = 2.837206E3     PRWG    = -0.0363908     PRWB    = -1.016722E-5
+WR      = 1              WINT    = 2.838038E-7    LINT    = 5.528807E-8
+XL      = 0              XW      = 0              DWG     = -1.606385E-8
+DWB     = 2.266386E-8    VOFF    = -0.0558512     NFACTOR = 0.9342488
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3251882      ETAB    = -0.0580325
+DSUB    = 1              PCLM    = 2.2409567      PDIBLC1 = 0.0411445
+PDIBLC2 = 3.355575E-3    PDIBLCB = -0.0551797     DROUT   = 0.2036901
+PSCBE1  = 6.44809E9      PSCBE2  = 6.300848E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 101.6          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.9E-10        CGSO    = 2.9E-10        CGBO    = 1E-9
+CJ      = 7.235528E-4    PB      = 0.9527355      MJ      = 0.4955293
+CJSW    = 2.692786E-10   PBSW    = 0.99           MJSW    = 0.2958392
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.2958392
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.292165E-3    LKETA   = -4.205905E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 23/02
* Tech: AMI_C5N
* LOT: T22Y_SS (slow-slow)                  WAF: 3102
* Temperature_parameters=Optimized 
.MODEL CMOSNSS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7087481
+K1      = 0.9382905      K2      = -0.1120562     K3      = 23.0789213
+K3B     = -7.3398981     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3388333      DVT1    = 0.4283914      DVT2    = -0.0952143
+U0      = 459.674806     UA      = 1E-13          UB      = 1.503507E-18
+UC      = 1.325863E-11   VSAT    = 1.682969E5     A0      = 0.4784067
+AGS     = 0.0995613      B0      = 2.644452E-6    B1      = 5E-6
+KETA    = -5.808373E-3   A1      = 1.027068E-4    A2      = 0.3400289
+RDSW    = 1.329687E3     PRWG    = 0.0432392      PRWB    = 0.0149808
+WR      = 1              WINT    = 2.420178E-7    LINT    = 3.239617E-8
+XL      = 0              XW      = 0              DWG     = -1.396728E-8
+DWB     = 5.6316E-8      VOFF    = -2.57933E-3    NFACTOR = 0.8759425
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0152264      ETAB    = -1.058244E-3
+DSUB    = 0.2005917      PCLM    = 2.6613926      PDIBLC1 = -0.7606454
+PDIBLC2 = 2.593415E-3    PDIBLCB = -0.0326937     DROUT   = 0.6688818
+PSCBE1  = 5.85807E8      PSCBE2  = 7.988657E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.9           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.02E-10       CGSO    = 2.02E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0681426      PRDSW   = 188.2442761
+PK2     = -0.0295712     WKETA   = -0.0264969     LKETA   = -2.950307E-5
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9223355
+K1      = 0.5769702      K2      = 9.039555E-3    K3      = 6.34861
+K3B     = -0.6383676     W0      = 1E-8           NLX     = 4.747861E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4578035      DVT1    = 0.576459       DVT2    = -0.1206691
+U0      = 211.8308394    UA      = 2.824327E-9    UB      = 1E-21
+UC      = -5.66493E-11   VSAT    = 1.622935E5     A0      = 0.8712138
+AGS     = 0.1383793      B0      = 7.726776E-7    B1      = 5E-6
+KETA    = -5.205201E-3   A1      = 2.378013E-5    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0454944     PRWB    = -2.13823E-4
+WR      = 1              WINT    = 2.849786E-7    LINT    = 5.529217E-8
+XL      = 0              XW      = 0              DWG     = -1.840088E-8
+DWB     = 2.185555E-8    VOFF    = -0.0684347     NFACTOR = 0.9119466
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3751245      ETAB    = -0.0827039
+DSUB    = 1              PCLM    = 2.2966371      PDIBLC1 = 0.0365228
+PDIBLC2 = 3.733251E-3    PDIBLCB = -0.0621219     DROUT   = 0.2123397
+PSCBE1  = 7.499863E9     PSCBE2  = 7.328296E-10   PVAG    = 4.584372E-6
+DELTA   = 0.01           RSH     = 101.9          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.84E-10       CGSO    = 2.84E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 4.75772E-3     LKETA   = -6.715425E-3
+AF      = 1              KF      = 0)
*
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_FF (fast-fast)                  WAF: 3110
* Temperature_parameters=Optimized 
.MODEL CMOSNFF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6252608
+K1      = 0.8530381      K2      = -0.0937042     K3      = 25.5736581
+K3B     = -7.2969383     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.4153341      DVT1    = 0.4318353      DVT2    = -0.1001188
+U0      = 461.2276323    UA      = 1E-13          UB      = 1.46812E-18
+UC      = 1.421961E-11   VSAT    = 1.555424E5     A0      = 0.7155223
+AGS     = 0.1483817      B0      = 2.54418E-6     B1      = 5E-6
+KETA    = 1.388284E-5    A1      = 7.294903E-5    A2      = 0.3921052
+RDSW    = 1.305357E3     PRWG    = 0.0488517      PRWB    = 0.0366783
+WR      = 1              WINT    = 2.274256E-7    LINT    = 3.776271E-8
+XL      = 0              XW      = 0              DWG     = -8.845179E-9
+DWB     = 6.105959E-8    VOFF    = 0              NFACTOR = 0.5636274
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0345642      ETAB    = -1.428288E-3
+DSUB    = 0.3127341      PCLM    = 2.6236271      PDIBLC1 = -0.3319738
+PDIBLC2 = 2.390366E-3    PDIBLCB = -0.0300257     DROUT   = 0.6600306
+PSCBE1  = 5.488078E8     PSCBE2  = 4.431797E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 1.98E-10       CGSO    = 1.98E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.1033668      PRDSW   = 59.9594347
+PK2     = -0.0304166     WKETA   = -0.0144288     LKETA   = 3.115505E-3
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8880096
+K1      = 0.533922       K2      = 3.259424E-3    K3      = 4.9517158
+K3B     = -0.6918832     W0      = 1.515912E-8    NLX     = 3.554945E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4926947      DVT1    = 0.530833       DVT2    = -0.1185572
+U0      = 211.6791804    UA      = 2.785001E-9    UB      = 1E-21
+UC      = -5.76365E-11   VSAT    = 1.732495E5     A0      = 0.9378784
+AGS     = 0.1630399      B0      = 7.147395E-7    B1      = 5E-6
+KETA    = 1.410441E-4    A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0490272     PRWB    = 8.254155E-5
+WR      = 1              WINT    = 2.696991E-7    LINT    = 6.103973E-8
+XL      = 0              XW      = 0              DWG     = -1.293462E-8
+DWB     = 2.202201E-8    VOFF    = -0.0500647     NFACTOR = 0.8235545
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.4342722      ETAB    = -6.780063E-3
+DSUB    = 1              PCLM    = 2.3221049      PDIBLC1 = 0.036845
+PDIBLC2 = 3.86901E-3     PDIBLCB = -0.0457025     DROUT   = 0.1909189
+PSCBE1  = 1.678442E10    PSCBE2  = 1.640115E-9    PVAG    = 0.0133488
+DELTA   = 0.01           RSH     = 101.7          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.75E-10       CGSO    = 2.75E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.10041E-3     LKETA   = -1.725699E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 28/02
* Tech: AMI_C5N
* LOT: T22Y_SF (slow-fast)                  WAF: 3108
* Temperature_parameters=Optimized 
.MODEL CMOSNSF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7149035
+K1      = 0.9483936      K2      = -0.1143426     K3      = 22.9362167
+K3B     = -7.5062363     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3919449      DVT1    = 0.4489453      DVT2    = -0.1041249
+U0      = 457.716722     UA      = 1E-13          UB      = 1.372758E-18
+UC      = 9.187767E-12   VSAT    = 1.587379E5     A0      = 0.4423616
+AGS     = 0.074408       B0      = 2.495758E-6    B1      = 5E-6
+KETA    = -7.852725E-3   A1      = 0              A2      = 0.3722219
+RDSW    = 1.37701E3      PRWG    = 0.0473261      PRWB    = 0.0143246
+WR      = 1              WINT    = 2.276625E-7    LINT    = 3.643153E-8
+XL      = 0              XW      = 0              DWG     = -8.492651E-9
+DWB     = 5.745769E-8    VOFF    = -1.122941E-3   NFACTOR = 0.9488846
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0194621      ETAB    = -1.316507E-3
+DSUB    = 0.2373912      PCLM    = 2.609637       PDIBLC1 = -0.2869359
+PDIBLC2 = 2.596336E-3    PDIBLCB = -9.96922E-3    DROUT   = 0.6175652
+PSCBE1  = 5.8967E8       PSCBE2  = 8.951955E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.7           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0690695      PRDSW   = 181.3444668
+PK2     = -0.0304429     WKETA   = 0.0420944      LKETA   = -3.044755E-3 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8558405
+K1      = 0.5644444      K2      = 6.387376E-3    K3      = 6.0462612
+K3B     = -0.5998096     W0      = 1E-8           NLX     = 3.340021E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4979627      DVT1    = 0.5476217      DVT2    = -0.1143472
+U0      = 211.0603347    UA      = 2.770099E-9    UB      = 1.044234E-21
+UC      = -5.9315E-11    VSAT    = 1.779657E5     A0      = 1.1297757
+AGS     = 0.172519       B0      = 6.127953E-7    B1      = 5E-6
+KETA    = -1.991554E-3   A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0477698     PRWB    = -1.197112E-4
+WR      = 1              WINT    = 2.778374E-7    LINT    = 5.81705E-8
+XL      = 0              XW      = 0              DWG     = -1.563705E-8
+DWB     = 2.218513E-8    VOFF    = -0.0660365     NFACTOR = 0.9061795
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1521419      ETAB    = -0.0473117
+DSUB    = 1              PCLM    = 2.3170883      PDIBLC1 = 0.0640318
+PDIBLC2 = 4.224165E-3    PDIBLCB = -0.0417139     DROUT   = 0.2703555
+PSCBE1  = 5.427801E9     PSCBE2  = 5.303858E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 102.2          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.64E-10       CGSO    = 2.64E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 3.730632E-3    LKETA   = -4.016397E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 24/02
* Tech: AMI_C5N
* LOT: T22Y_FS (fast-slow)                  WAF: 3103
* Temperature_parameters=Optimized 
.MODEL CMOSNFS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6406873
+K1      = 0.8993265      K2      = -0.1056377     K3      = 21.3163919
+K3B     = -7.1608652     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.5203013      DVT1    = 0.4082348      DVT2    = -0.0884394
+U0      = 459.8817656    UA      = 1E-13          UB      = 1.519768E-18
+UC      = 1.390305E-11   VSAT    = 1.618085E5     A0      = 0.6561988
+AGS     = 0.1483929      B0      = 2.633747E-6    B1      = 5E-6
+KETA    = 1.06352E-3     A1      = 7.568286E-5    A2      = 0.3677153
+RDSW    = 1.235008E3     PRWG    = 0.0513137      PRWB    = 0.0510984
+WR      = 1              WINT    = 2.396297E-7    LINT    = 3.585449E-8
+XL      = 0              XW      = 0              DWG     = -1.245253E-8
+DWB     = 5.532278E-8    VOFF    = 0              NFACTOR = 0.6559298
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0330898      ETAB    = -1.406156E-3
+DSUB    = 0.2997589      PCLM    = 2.6313228      PDIBLC1 = -0.40275
+PDIBLC2 = 2.205592E-3    PDIBLCB = -0.0272899     DROUT   = 0.7201569
+PSCBE1  = 5.601647E8     PSCBE2  = 5.450628E-5    PVAG    = 7.40725E-3
+DELTA   = 0.01           RSH     = 81.2           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0766435      PRDSW   = 163.0361088
+PK2     = -0.0297388     WKETA   = -0.0214699     LKETA   = -2.14921E-5 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -1.0173478
+K1      = 0.5658287      K2      = 0.0116517      K3      = 10.5698978
+K3B     = -0.7608774     W0      = 1E-8           NLX     = 9.01509E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3035484      DVT1    = 0.5614757      DVT2    = -0.0733879
+U0      = 213.2201651    UA      = 2.872001E-9    UB      = 1.05947E-21
+UC      = -5.43332E-11   VSAT    = 1.545629E5     A0      = 0.4566597
+AGS     = 0              B0      = 6.789661E-7    B1      = 5E-6
+KETA    = -8.389653E-3   A1      = 4.693067E-8    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.046965      PRWB    = -6.108168E-5
+WR      = 1              WINT    = 2.938786E-7    LINT    = 5.685662E-8
+XL      = 0              XW      = 0              DWG     = -1.995328E-8
+DWB     = 2.020066E-8    VOFF    = -0.0719834     NFACTOR = 0.7501867
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1503769      ETAB    = -0.0623126
+DSUB    = 0.8623589      PCLM    = 2.2059151      PDIBLC1 = 0.0239419
+PDIBLC2 = 3.052934E-3    PDIBLCB = -0.0972847     DROUT   = 0.1509141
+PSCBE1  = 5.116843E9     PSCBE2  = 5E-10          PVAG    = 0
+DELTA   = 0.01           RSH     = 101.5          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 3.18E-10       CGSO    = 3.18E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 2.574681E-3    LKETA   = -7.296621E-3 
+AF      = 1              KF      = 0)
*

**************************************************************
* Analysis type
*
* .DC voltagesource startvoltage stopvoltage stepsize [source start stop step ...]
* .TRAN stoptime stepsize
*
* .DC is a dc-sweep (waveform over voltage) (can have more than one, as shown above)
* .TRAN is a transient analysis (waveform over time)
**************************************************************
.dc VA 0V +5V 100mV
.tran .05n 80n 

**************************************************************
*  Define Voltages for Power/Ground
**************************************************************
.param vddp = 5.0
.param SUPPLY = '1.0*vddp'
.temp 70
VDD vdd 0 DC 'SUPPLY'

**************************************************************
*  Define .measure statements (needs to be modified for your design
**************************************************************

 .param tstop = 80n
 .param tdval = 0n
  
 .meas tran vmax max v(Out) from=tdval to=tstop
 .meas tran vmin min v(Out) from=tdval to=tstop
 .meas tran trise trig v(Out) val='vmin+0.1*vmax'  td=tdval
 +      rise=1 targ  v(Out) val='0.9*vmax' rise=1
 .meas tran  tfall trig v(Out) val='0.9*vmax' td=tdval
 +      fall=2 targ  v(Out) val='vmin+0.1*vmax' fall=2
 .measure tran tplh   trig v(A) val='0.5*vddp' rise=1
 +              targ v(Out) val='0.5*vddp' rise=1
 .measure tran tphl  trig v(A) val='0.5*vddp' fall=1
 +              targ v(Out) val='0.5*vddp' fall=1
 .measure avg_delay param='(tphl - tplh)/2'
 .measure tran avgpower avg power from=tdval to=tstop
 .measure tran peakpwr max power from=tdval to=tstop

**************************************************************
* Final options
* .probe tells which waveforms to save
* .print prints given waveforms in tabulated form
**************************************************************
.print DC V(A) V(Out)
.print tran V(A) V(B) V(C) V(D) V(Out)
.probe V(A) V(B) V(C) V(D) V(Out)
.op
.options probe post measout captab
.end