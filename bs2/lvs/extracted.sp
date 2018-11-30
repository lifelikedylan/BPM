* SPICE NETLIST
***************************************

.SUBCKT bs2 vdd gnd en clk Init muxA_in muxB_in mplier mcand q0 muxB_out muxA_out reg_in Out
** N=35 EP=14 IP=0 FDC=46
M0 11 Init gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=6000 $Y=19500 $D=1
M1 muxB_out 11 reg_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=32700 $D=1
M2 mplier Init muxB_out gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=32700 $D=1
M3 13 11 muxA_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=16500 $D=1
M4 muxB_in Init 13 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=16500 $D=1
M5 14 q0 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=15000 $Y=29700 $D=1
M6 29 en gnd gnd n L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=19800 $Y=16500 $D=1
M7 muxA_out 14 gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=19800 $Y=32700 $D=1
M8 16 clk 29 gnd n L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=21300 $Y=16500 $D=1
M9 mcand q0 muxA_out gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=22200 $Y=32700 $D=1
M10 30 16 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=27000 $Y=19500 $D=1
M11 17 16 30 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=28500 $Y=19500 $D=1
M12 31 13 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=33300 $Y=19500 $D=1
M13 19 16 31 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=34800 $Y=19500 $D=1
M14 32 17 19 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=37200 $Y=19500 $D=1
M15 gnd 20 32 gnd n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=38700 $Y=19500 $D=1
M16 20 19 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=6.3e-12 PD=9e-06 PS=1.02e-05 $X=41400 $Y=19500 $D=1
M17 33 20 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=46200 $Y=19500 $D=1
M18 21 17 33 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=47700 $Y=19500 $D=1
M19 34 16 21 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=50100 $Y=19500 $D=1
M20 gnd Out 34 gnd n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=51600 $Y=19500 $D=1
M21 35 21 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=6.3e-12 PD=7.8e-06 PS=1.02e-05 $X=54300 $Y=19500 $D=1
M22 Out 21 35 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=55800 $Y=19500 $D=1
M23 11 Init vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=6000 $Y=2700 $D=0
M24 muxB_out Init reg_in vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=43500 $D=0
M25 mplier 11 muxB_out vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=43500 $D=0
M26 13 Init muxA_in vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=5700 $D=0
M27 muxB_in 11 13 vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=5700 $D=0
M28 14 q0 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=15000 $Y=43500 $D=0
M29 16 en vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=19800 $Y=2700 $D=0
M30 muxA_out q0 gnd vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=19800 $Y=43500 $D=0
M31 vdd clk 16 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=22200 $Y=2700 $D=0
M32 mcand 14 muxA_out vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=22200 $Y=43500 $D=0
M33 23 16 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=27000 $Y=2700 $D=0
M34 17 16 23 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=28500 $Y=2700 $D=0
M35 24 13 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=33300 $Y=2700 $D=0
M36 19 17 24 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=34800 $Y=2700 $D=0
M37 25 16 19 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=37200 $Y=2700 $D=0
M38 vdd 20 25 vdd p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=38700 $Y=2700 $D=0
M39 20 19 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.26e-11 PD=1.5e-05 PS=1.62e-05 $X=41400 $Y=2700 $D=0
M40 26 20 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=46200 $Y=2700 $D=0
M41 21 16 26 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=47700 $Y=2700 $D=0
M42 27 17 21 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=50100 $Y=2700 $D=0
M43 vdd Out 27 vdd p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=51600 $Y=2700 $D=0
M44 28 21 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.26e-11 PD=1.38e-05 PS=1.62e-05 $X=54300 $Y=2700 $D=0
M45 Out 21 28 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=55800 $Y=2700 $D=0
.ENDS
***************************************
