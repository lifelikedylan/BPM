* SPICE NETLIST
***************************************

.SUBCKT fa C SUm Cout B A gnd vdd
** N=19 EP=7 IP=0 FDC=28
M0 gnd A 6 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=2100 $Y=1800 $D=1
M1 6 B gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=4500 $Y=1800 $D=1
M2 2 C 6 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=6900 $Y=1800 $D=1
M3 17 B 2 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=9300 $Y=1800 $D=1
M4 gnd A 17 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=10800 $Y=1800 $D=1
M5 8 A gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=13200 $Y=1800 $D=1
M6 gnd B 8 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=15600 $Y=1800 $D=1
M7 8 C gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=18000 $Y=1800 $D=1
M8 3 2 8 gnd n L=6e-07 W=3e-06 AD=6.3e-12 AS=5.4e-12 PD=1.02e-05 PS=9.6e-06 $X=20400 $Y=1800 $D=1
M9 18 C 3 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=6.3e-12 PD=7.8e-06 PS=1.02e-05 $X=23100 $Y=1800 $D=1
M10 19 B 18 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=2.7e-12 PD=7.8e-06 PS=7.8e-06 $X=24600 $Y=1800 $D=1
M11 gnd A 19 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=26100 $Y=1800 $D=1
M12 SUm 3 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=28500 $Y=1800 $D=1
M13 Cout 2 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=33300 $Y=1800 $D=1
M14 vdd A 7 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=2100 $Y=22200 $D=0
M15 7 B vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=4500 $Y=22200 $D=0
M16 2 C 7 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=6900 $Y=22200 $D=0
M17 14 B 2 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=9300 $Y=22200 $D=0
M18 vdd A 14 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=10800 $Y=22200 $D=0
M19 9 A vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=13200 $Y=22200 $D=0
M20 vdd B 9 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=15600 $Y=22200 $D=0
M21 9 C vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=18000 $Y=22200 $D=0
M22 3 2 9 vdd p L=6e-07 W=6e-06 AD=1.26e-11 AS=1.08e-11 PD=1.62e-05 PS=1.56e-05 $X=20400 $Y=22200 $D=0
M23 15 C 3 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.26e-11 PD=1.38e-05 PS=1.62e-05 $X=23100 $Y=22200 $D=0
M24 16 B 15 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=5.4e-12 PD=1.38e-05 PS=1.38e-05 $X=24600 $Y=22200 $D=0
M25 vdd A 16 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=26100 $Y=22200 $D=0
M26 SUm 3 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=28500 $Y=22200 $D=0
M27 Cout 2 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=33300 $Y=22200 $D=0
.ENDS
***************************************
.SUBCKT rca2 1 2 3 4 5 6 7 8 9 10
** N=11 EP=10 IP=14 FDC=56
X0 7 8 11 3 2 1 4 fa $T=900 37200 0 270 $X=-600 $Y=0
X1 11 10 9 5 6 1 4 fa $T=63900 37200 1 270 $X=32400 $Y=0
.ENDS
***************************************
.SUBCKT rca8 gnd a_0 sum_0 b_0 c_0 vdd sum_1 b_1 a_1 a_2 sum_2 b_2 sum_3 b_3 a_3 a_4 sum_4 b_4 sum_5 b_5
+ a_5 a_6 sum_6 b_6 sum_7 b_7 cout a_7
** N=31 EP=28 IP=40 FDC=224
X0 gnd a_0 b_0 vdd b_1 a_1 c_0 sum_0 29 sum_1 rca2 $T=1200 0 0 0 $X=0 $Y=0
X1 gnd a_2 b_2 vdd b_3 a_3 29 sum_2 30 sum_3 rca2 $T=68400 0 0 0 $X=67200 $Y=0
X2 gnd a_4 b_4 vdd b_5 a_5 30 sum_4 31 sum_5 rca2 $T=135600 0 0 0 $X=134400 $Y=0
X3 gnd a_6 b_6 vdd b_7 a_7 31 sum_6 cout sum_7 rca2 $T=202800 0 0 0 $X=201600 $Y=0
.ENDS
***************************************
