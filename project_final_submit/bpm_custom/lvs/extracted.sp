* SPICE NETLIST
***************************************

.SUBCKT bc1a 1 a_in b_in 4 5 reg_in 7 8 gnd
** N=12 EP=9 IP=0 FDC=10
M0 12 1 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=6000 $Y=15900 $D=1
M1 7 12 reg_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=29100 $D=1
M2 8 1 7 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=29100 $D=1
M3 4 12 a_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=12900 $D=1
M4 b_in 1 4 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=12900 $D=1
M5 12 1 5 5 p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=6000 $Y=-900 $D=0
M6 7 1 reg_in 5 p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=39900 $D=0
M7 8 12 7 5 p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=39900 $D=0
M8 4 1 a_in 5 p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=2100 $D=0
M9 b_in 12 4 5 p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=2100 $D=0
.ENDS
***************************************
.SUBCKT nand 1 2 gnd 4 vdd
** N=6 EP=5 IP=0 FDC=4
M0 6 2 gnd gnd n L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=2100 $Y=1800 $D=1
M1 4 1 6 gnd n L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=3600 $Y=1800 $D=1
M2 4 2 vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=2100 $Y=15600 $D=0
M3 vdd 1 4 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=4500 $Y=15600 $D=0
.ENDS
***************************************
.SUBCKT dffpos clk_b D 3 4 Q
** N=21 EP=5 IP=0 FDC=26
M0 16 clk_b 4 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=9900 $Y=19500 $D=1
M1 clk clk_b 16 4 n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=11400 $Y=19500 $D=1
M2 17 D 4 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=16200 $Y=19500 $D=1
M3 7 clk_b 17 4 n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=17700 $Y=19500 $D=1
M4 18 clk 7 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=20100 $Y=19500 $D=1
M5 4 8 18 4 n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=21600 $Y=19500 $D=1
M6 8 7 4 4 n L=6e-07 W=3e-06 AD=4.5e-12 AS=6.3e-12 PD=9e-06 PS=1.02e-05 $X=24300 $Y=19500 $D=1
M7 19 8 4 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=29100 $Y=19500 $D=1
M8 9 clk 19 4 n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=30600 $Y=19500 $D=1
M9 20 clk_b 9 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=33000 $Y=19500 $D=1
M10 4 Q 20 4 n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=34500 $Y=19500 $D=1
M11 21 9 4 4 n L=6e-07 W=3e-06 AD=2.7e-12 AS=6.3e-12 PD=7.8e-06 PS=1.02e-05 $X=37200 $Y=19500 $D=1
M12 Q 9 21 4 n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=38700 $Y=19500 $D=1
M13 10 clk_b 3 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=9900 $Y=2700 $D=0
M14 clk clk_b 10 3 p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=11400 $Y=2700 $D=0
M15 11 D 3 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=16200 $Y=2700 $D=0
M16 7 clk 11 3 p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=17700 $Y=2700 $D=0
M17 12 clk_b 7 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=20100 $Y=2700 $D=0
M18 3 8 12 3 p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=21600 $Y=2700 $D=0
M19 8 7 3 3 p L=6e-07 W=6e-06 AD=9e-12 AS=1.26e-11 PD=1.5e-05 PS=1.62e-05 $X=24300 $Y=2700 $D=0
M20 13 8 3 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=29100 $Y=2700 $D=0
M21 9 clk_b 13 3 p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=30600 $Y=2700 $D=0
M22 14 clk 9 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=33000 $Y=2700 $D=0
M23 3 Q 14 3 p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=34500 $Y=2700 $D=0
M24 15 9 3 3 p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.26e-11 PD=1.38e-05 PS=1.62e-05 $X=37200 $Y=2700 $D=0
M25 Q 9 15 3 p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=38700 $Y=2700 $D=0
.ENDS
***************************************
.SUBCKT bs1 en clk muxA_in Out fa_in Cin add_out Cout gnd vdd Init 12
** N=26 EP=12 IP=21 FDC=68
M0 15 13 gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=15000 $Y=29700 $D=1
M1 gnd fa_in 15 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=17400 $Y=29700 $D=1
M2 14 Cin 15 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=22200 $Y=29700 $D=1
M3 24 fa_in gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=27000 $Y=29700 $D=1
M4 14 13 24 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=28500 $Y=29700 $D=1
M5 18 Cin gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=33300 $Y=29700 $D=1
M6 gnd fa_in 18 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=35700 $Y=29700 $D=1
M7 18 13 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=38100 $Y=29700 $D=1
M8 20 14 18 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=42900 $Y=29700 $D=1
M9 25 Cin gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=47700 $Y=29700 $D=1
M10 26 fa_in 25 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=2.7e-12 PD=7.8e-06 PS=7.8e-06 $X=49200 $Y=29700 $D=1
M11 20 13 26 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=50700 $Y=29700 $D=1
M12 add_out 20 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=55500 $Y=29700 $D=1
M13 Cout 14 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=60300 $Y=29700 $D=1
M14 16 13 vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=15000 $Y=43500 $D=0
M15 vdd fa_in 16 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=17400 $Y=43500 $D=0
M16 14 Cin 16 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=22200 $Y=43500 $D=0
M17 21 fa_in vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=27000 $Y=43500 $D=0
M18 14 13 21 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=28500 $Y=43500 $D=0
M19 19 Cin vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=33300 $Y=43500 $D=0
M20 vdd fa_in 19 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=35700 $Y=43500 $D=0
M21 19 13 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=38100 $Y=43500 $D=0
M22 20 14 19 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=42900 $Y=43500 $D=0
M23 22 Cin vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=47700 $Y=43500 $D=0
M24 23 fa_in 22 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=5.4e-12 PD=1.38e-05 PS=1.38e-05 $X=49200 $Y=43500 $D=0
M25 20 13 23 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=50700 $Y=43500 $D=0
M26 add_out 20 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=55500 $Y=43500 $D=0
M27 Cout 14 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=60300 $Y=43500 $D=0
X28 Init muxA_in gnd 12 vdd Out 13 gnd gnd bc1a $T=0 3600 0 0 $X=-300 $Y=-600
X29 clk en gnd 17 vdd nand $T=17700 24300 1 0 $X=16200 $Y=-600
X30 17 12 vdd gnd Out dffpos $T=17100 0 0 0 $X=22500 $Y=-600
.ENDS
***************************************
.SUBCKT bs2 vdd gnd en clk q0 muxA_in muxB_in Out mplier muxA_out mcand Init
** N=15 EP=12 IP=21 FDC=46
M0 13 q0 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=15000 $Y=29700 $D=1
M1 muxA_out 13 gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=19800 $Y=32700 $D=1
M2 mcand q0 muxA_out gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=22200 $Y=32700 $D=1
M3 13 q0 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=15000 $Y=43500 $D=0
M4 muxA_out q0 gnd vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=19800 $Y=43500 $D=0
M5 mcand 13 muxA_out vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=22200 $Y=43500 $D=0
X6 Init muxA_in muxB_in 15 vdd Out muxB_in mplier gnd bc1a $T=0 3600 0 0 $X=-300 $Y=-600
X7 clk en gnd 14 vdd nand $T=17700 24300 1 0 $X=16200 $Y=-600
X8 14 15 vdd gnd Out dffpos $T=17100 0 0 0 $X=22500 $Y=-600
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************
.SUBCKT ICV_1 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
** N=18 EP=17 IP=24 FDC=114
X0 8 9 16 1 18 13 17 12 3 2 10 11 bs1 $T=0 0 0 0 $X=-7200 $Y=-900
X1 2 3 8 9 5 14 15 4 6 18 7 10 bs2 $T=79500 0 0 0 $X=65700 $Y=-900
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21
** N=25 EP=21 IP=34 FDC=228
X0 2 1 5 3 4 6 7 12 13 14 15 16 22 17 23 20 25 ICV_1 $T=0 0 0 0 $X=-7200 $Y=-900
X1 8 1 5 9 4 10 11 12 13 14 24 22 18 23 19 25 21 ICV_1 $T=0 54000 0 0 $X=-7200 $Y=53100
.ENDS
***************************************
.SUBCKT bpm_custom en clk init vdd gnd q_15 q_14 q_13 q_12 q_11 q_10 q_9 q_8 q_0 q_7 mplier_7 mcand_7 q_6 mplier_6 mcand_6
+ q_5 mplier_5 mcand_5 q_4 mplier_4 mcand_4 q_3 mplier_3 mcand_3 q_2 mplier_2 mcand_2 q_1 mplier_1 mcand_1 mplier_0 mcand_0 delay cout
** N=53 EP=39 IP=84 FDC=912
X0 vdd q_15 q_7 q_0 gnd mplier_7 mcand_7 q_14 q_6 mplier_6 mcand_6 en clk init delay cout 40 41 42 cout
+ 51
+ ICV_2 $T=7200 900 0 0 $X=0 $Y=0
X1 vdd q_13 q_5 q_0 gnd mplier_5 mcand_5 q_12 q_4 mplier_4 mcand_4 en clk init 43 41 42 44 45 51
+ 52
+ ICV_2 $T=7200 108900 0 0 $X=0 $Y=108000
X2 vdd q_11 q_3 q_0 gnd mplier_3 mcand_3 q_10 q_2 mplier_2 mcand_2 en clk init 46 44 45 47 48 52
+ 53
+ ICV_2 $T=7200 216900 0 0 $X=0 $Y=216000
X3 vdd q_9 q_1 q_0 gnd mplier_1 mcand_1 q_8 q_0 mplier_0 mcand_0 en clk init 49 47 48 gnd 50 53
+ 40
+ ICV_2 $T=7200 324900 0 0 $X=0 $Y=324000
.ENDS
***************************************
