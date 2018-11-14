* SPICE NETLIST
***************************************

.SUBCKT fa a b c_in sum c_out gnd vdd
** N=19 EP=7 IP=0 FDC=28
M0 7 a gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=3300 $Y=2700 $D=1
M1 gnd b 7 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=5700 $Y=2700 $D=1
M2 4 c_in 7 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=10500 $Y=2700 $D=1
M3 17 b gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=15300 $Y=2700 $D=1
M4 4 a 17 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=16800 $Y=2700 $D=1
M5 9 c_in gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=21600 $Y=2700 $D=1
M6 gnd b 9 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=24000 $Y=2700 $D=1
M7 9 a gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=26400 $Y=2700 $D=1
M8 11 4 9 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=31200 $Y=2700 $D=1
M9 18 c_in gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=36000 $Y=2700 $D=1
M10 19 b 18 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=2.7e-12 PD=7.8e-06 PS=7.8e-06 $X=37500 $Y=2700 $D=1
M11 11 a 19 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=39000 $Y=2700 $D=1
M12 sum 11 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=43800 $Y=2700 $D=1
M13 c_out 4 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=48600 $Y=2700 $D=1
M14 8 a vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=3300 $Y=16500 $D=0
M15 vdd b 8 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=5700 $Y=16500 $D=0
M16 4 c_in 8 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=10500 $Y=16500 $D=0
M17 14 b vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=15300 $Y=16500 $D=0
M18 4 a 14 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=16800 $Y=16500 $D=0
M19 10 c_in vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=21600 $Y=16500 $D=0
M20 vdd b 10 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=24000 $Y=16500 $D=0
M21 10 a vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=26400 $Y=16500 $D=0
M22 11 4 10 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=31200 $Y=16500 $D=0
M23 15 c_in vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=36000 $Y=16500 $D=0
M24 16 b 15 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=5.4e-12 PD=1.38e-05 PS=1.38e-05 $X=37500 $Y=16500 $D=0
M25 11 a 16 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=39000 $Y=16500 $D=0
M26 sum 11 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=43800 $Y=16500 $D=0
M27 c_out 4 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=48600 $Y=16500 $D=0
.ENDS
***************************************
