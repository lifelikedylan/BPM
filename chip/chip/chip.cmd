stepsize 50.0
vector a {a[3]} {a[2]} {a[1]} {a[0]}
vector b {b[3]} {b[2]} {b[1]} {b[0]}
vector result {result[7]} {result[6]} {result[5]} {result[4]} {result[3]} {result[2]} {result[1]} {result[0]}
ana clk reset a b result lori
clock clk 0 1
setvector a 0110
setvector b 1011
h reset
c
l reset
c
c
c
c
c
c
c
c






