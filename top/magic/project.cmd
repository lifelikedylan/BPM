stepsize 1500.0
vector A {mcand_7} {mcand_6} {mcand_5} {mcand_4} {mcand_3} {mcand_2} {mcand_1} {mcand_0}
vector B {mplier_7} {mplier_6} {mplier_5} {mplier_4} {mplier_3} {mplier_2} {mplier_1} {mplier_0}
vector Out {q_15} {q_14} {q_13} {q_12} {q_11} {q_10} {q_9} {q_8} {q_7} {q_6} {q_5} {q_4} {q_3} {q_2} {q_1} {q_0}

ana -h A B out clk init en 
analyzer
clock clk 0 1
setvector A 11100101
setvector B 11010100
h en
h init
c
c
c

h en
h init
c
h en
l init
c
h en
l init
c
h en
l init
c
h en
l init
c
h en
l init

c
h en
l init
c
h en
l init
c
h en
l init
c
h en
l init
l en
c
c
assert Out 1011110110100100








