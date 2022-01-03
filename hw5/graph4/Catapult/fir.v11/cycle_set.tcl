
# Loop constraints
directive set /fir/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /fir/core/core:rlp/main CSTEPS_FROM {{. == 10} {.. == 0}}

# IO operation constraints
directive set /fir/core/core:rlp/main/io_read(in1:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC:io_read(coeffs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/acc:io_write(out1:rsc.@) CSTEPS_FROM {{.. == 9}}

# Sync operation constraints

# Real operation constraints
directive set /fir/core/core:rlp/main/MAC-1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-1:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC-2:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-2:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC:acc#11 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC-3:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-3:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC-4:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-4:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC:acc#10 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC:acc#15 CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC-5:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-5:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC-6:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-6:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC:acc#9 CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC-7:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-7:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC-8:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-8:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC:acc#8 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC:acc#14 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC:acc#17 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC-9:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-9:mul CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC-10:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-10:mul CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC:acc#7 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC-11:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-11:mul CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC-12:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-12:mul CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC:acc#6 CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC:acc#13 CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC-13:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-13:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC-14:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-14:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC:acc#5 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC-15:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-15:mul CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-16:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC-16:mul CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC:acc#12 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC:acc#16 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC:acc CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC-16:acc#2 CSTEPS_FROM {{.. == 9}}

# Probe constraints
