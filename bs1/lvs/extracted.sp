* SPICE NETLIST
***************************************

.SUBCKT bs1 en clk Init muxA_in muxB_in fa_in Cin add_out Cout reg_in vdd gnd
** N=46 EP=12 IP=0 FDC=68
M0 7 Init gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=6000 $Y=19500 $D=1
M1 8 7 reg_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=32700 $D=1
M2 gnd Init 8 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=32700 $D=1
M3 9 7 muxA_in gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=16500 $D=1
M4 muxB_in Init 9 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=16500 $D=1
M5 18 8 gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=15000 $Y=29700 $D=1
M6 gnd fa_in 18 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=17400 $Y=29700 $D=1
M7 37 en gnd gnd n L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=19800 $Y=16500 $D=1
M8 11 clk 37 gnd n L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=21300 $Y=16500 $D=1
M9 13 Cin 18 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=22200 $Y=29700 $D=1
M10 38 11 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=27000 $Y=19500 $D=1
M11 39 fa_in gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=27000 $Y=29700 $D=1
M12 12 11 38 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=28500 $Y=19500 $D=1
M13 13 8 39 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=28500 $Y=29700 $D=1
M14 40 9 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=33300 $Y=19500 $D=1
M15 21 Cin gnd gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=33300 $Y=29700 $D=1
M16 20 11 40 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=34800 $Y=19500 $D=1
M17 gnd fa_in 21 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=5.4e-12 PD=9.6e-06 PS=9.6e-06 $X=35700 $Y=29700 $D=1
M18 41 12 20 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=37200 $Y=19500 $D=1
M19 21 8 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=38100 $Y=29700 $D=1
M20 gnd 23 41 gnd n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=38700 $Y=19500 $D=1
M21 23 20 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=6.3e-12 PD=9e-06 PS=1.02e-05 $X=41400 $Y=19500 $D=1
M22 25 13 21 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=42900 $Y=29700 $D=1
M23 42 23 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=46200 $Y=19500 $D=1
M24 24 12 42 gnd n L=6e-07 W=3e-06 AD=5.4e-12 AS=2.7e-12 PD=9.6e-06 PS=7.8e-06 $X=47700 $Y=19500 $D=1
M25 43 Cin gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=4.5e-12 PD=7.8e-06 PS=9e-06 $X=47700 $Y=29700 $D=1
M26 44 fa_in 43 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=2.7e-12 PD=7.8e-06 PS=7.8e-06 $X=49200 $Y=29700 $D=1
M27 45 11 24 gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=5.4e-12 PD=7.8e-06 PS=9.6e-06 $X=50100 $Y=19500 $D=1
M28 25 8 44 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=50700 $Y=29700 $D=1
M29 gnd 15 45 gnd n L=6e-07 W=3e-06 AD=6.3e-12 AS=2.7e-12 PD=1.02e-05 PS=7.8e-06 $X=51600 $Y=19500 $D=1
M30 46 24 gnd gnd n L=6e-07 W=3e-06 AD=2.7e-12 AS=6.3e-12 PD=7.8e-06 PS=1.02e-05 $X=54300 $Y=19500 $D=1
M31 add_out 25 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=55500 $Y=29700 $D=1
M32 15 24 46 gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=2.7e-12 PD=9e-06 PS=7.8e-06 $X=55800 $Y=19500 $D=1
M33 Cout 13 gnd gnd n L=6e-07 W=3e-06 AD=4.5e-12 AS=4.5e-12 PD=9e-06 PS=9e-06 $X=60300 $Y=29700 $D=1
M34 7 Init vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=6000 $Y=2700 $D=0
M35 8 Init reg_in vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=6000 $Y=43500 $D=0
M36 gnd 7 8 vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=8400 $Y=43500 $D=0
M37 9 Init muxA_in vdd p L=6e-07 W=3e-06 AD=5.4e-12 AS=4.5e-12 PD=9.6e-06 PS=9e-06 $X=10800 $Y=5700 $D=0
M38 muxB_in 7 9 vdd p L=6e-07 W=3e-06 AD=4.5e-12 AS=5.4e-12 PD=9e-06 PS=9.6e-06 $X=13200 $Y=5700 $D=0
M39 19 8 vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=15000 $Y=43500 $D=0
M40 vdd fa_in 19 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=17400 $Y=43500 $D=0
M41 11 en vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=19800 $Y=2700 $D=0
M42 vdd clk 11 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=22200 $Y=2700 $D=0
M43 13 Cin 19 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=22200 $Y=43500 $D=0
M44 28 11 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=27000 $Y=2700 $D=0
M45 29 fa_in vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=27000 $Y=43500 $D=0
M46 12 11 28 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=28500 $Y=2700 $D=0
M47 13 8 29 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=28500 $Y=43500 $D=0
M48 30 9 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=33300 $Y=2700 $D=0
M49 22 Cin vdd vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=9e-12 PD=1.56e-05 PS=1.5e-05 $X=33300 $Y=43500 $D=0
M50 20 12 30 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=34800 $Y=2700 $D=0
M51 vdd fa_in 22 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=1.08e-11 PD=1.56e-05 PS=1.56e-05 $X=35700 $Y=43500 $D=0
M52 31 11 20 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=37200 $Y=2700 $D=0
M53 22 8 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.08e-11 PD=1.5e-05 PS=1.56e-05 $X=38100 $Y=43500 $D=0
M54 vdd 23 31 vdd p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=38700 $Y=2700 $D=0
M55 23 20 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=1.26e-11 PD=1.5e-05 PS=1.62e-05 $X=41400 $Y=2700 $D=0
M56 25 13 22 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=42900 $Y=43500 $D=0
M57 32 23 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=46200 $Y=2700 $D=0
M58 24 11 32 vdd p L=6e-07 W=6e-06 AD=1.08e-11 AS=5.4e-12 PD=1.56e-05 PS=1.38e-05 $X=47700 $Y=2700 $D=0
M59 33 Cin vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=9e-12 PD=1.38e-05 PS=1.5e-05 $X=47700 $Y=43500 $D=0
M60 34 fa_in 33 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=5.4e-12 PD=1.38e-05 PS=1.38e-05 $X=49200 $Y=43500 $D=0
M61 35 12 24 vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.08e-11 PD=1.38e-05 PS=1.56e-05 $X=50100 $Y=2700 $D=0
M62 25 8 34 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=50700 $Y=43500 $D=0
M63 vdd 15 35 vdd p L=6e-07 W=6e-06 AD=1.26e-11 AS=5.4e-12 PD=1.62e-05 PS=1.38e-05 $X=51600 $Y=2700 $D=0
M64 36 24 vdd vdd p L=6e-07 W=6e-06 AD=5.4e-12 AS=1.26e-11 PD=1.38e-05 PS=1.62e-05 $X=54300 $Y=2700 $D=0
M65 add_out 25 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=55500 $Y=43500 $D=0
M66 15 24 36 vdd p L=6e-07 W=6e-06 AD=9e-12 AS=5.4e-12 PD=1.5e-05 PS=1.38e-05 $X=55800 $Y=2700 $D=0
M67 Cout 13 vdd vdd p L=6e-07 W=6e-06 AD=9e-12 AS=9e-12 PD=1.5e-05 PS=1.5e-05 $X=60300 $Y=43500 $D=0
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************
