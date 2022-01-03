
# Loop constraints
directive set /fir/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /fir/core/core:rlp/main CSTEPS_FROM {{. == 35} {.. == 0}}

# IO operation constraints
directive set /fir/core/core:rlp/main/io_read(in1:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC:io_read(coeffs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/acc:io_write(out1:rsc.@) CSTEPS_FROM {{.. == 34}}

# Sync operation constraints

# Real operation constraints
directive set /fir/core/core:rlp/main/MAC-1:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC-2:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC:acc#17 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC-3:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC-4:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC:acc#16 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC:acc#25 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC-5:mul CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC-6:mul CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC:acc#15 CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC-7:mul CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC-8:mul CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC:acc#14 CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC:acc#24 CSTEPS_FROM {{.. == 11}}
directive set /fir/core/core:rlp/main/MAC:acc#29 CSTEPS_FROM {{.. == 11}}
directive set /fir/core/core:rlp/main/MAC-9:mul CSTEPS_FROM {{.. == 11}}
directive set /fir/core/core:rlp/main/MAC-10:mul CSTEPS_FROM {{.. == 12}}
directive set /fir/core/core:rlp/main/MAC:acc#13 CSTEPS_FROM {{.. == 12}}
directive set /fir/core/core:rlp/main/MAC-11:mul CSTEPS_FROM {{.. == 13}}
directive set /fir/core/core:rlp/main/MAC-12:mul CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC:acc#12 CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC:acc#23 CSTEPS_FROM {{.. == 15}}
directive set /fir/core/core:rlp/main/MAC-13:mul CSTEPS_FROM {{.. == 15}}
directive set /fir/core/core:rlp/main/MAC-14:mul CSTEPS_FROM {{.. == 16}}
directive set /fir/core/core:rlp/main/MAC:acc#11 CSTEPS_FROM {{.. == 16}}
directive set /fir/core/core:rlp/main/MAC-15:mul CSTEPS_FROM {{.. == 17}}
directive set /fir/core/core:rlp/main/MAC-16:mul CSTEPS_FROM {{.. == 18}}
directive set /fir/core/core:rlp/main/MAC:acc#10 CSTEPS_FROM {{.. == 18}}
directive set /fir/core/core:rlp/main/MAC:acc#22 CSTEPS_FROM {{.. == 19}}
directive set /fir/core/core:rlp/main/MAC:acc#28 CSTEPS_FROM {{.. == 19}}
directive set /fir/core/core:rlp/main/MAC:acc#31 CSTEPS_FROM {{.. == 19}}
directive set /fir/core/core:rlp/main/MAC-17:mul CSTEPS_FROM {{.. == 19}}
directive set /fir/core/core:rlp/main/MAC-18:mul CSTEPS_FROM {{.. == 20}}
directive set /fir/core/core:rlp/main/MAC:acc#9 CSTEPS_FROM {{.. == 20}}
directive set /fir/core/core:rlp/main/MAC-19:mul CSTEPS_FROM {{.. == 21}}
directive set /fir/core/core:rlp/main/MAC-20:mul CSTEPS_FROM {{.. == 22}}
directive set /fir/core/core:rlp/main/MAC:acc#8 CSTEPS_FROM {{.. == 22}}
directive set /fir/core/core:rlp/main/MAC:acc#21 CSTEPS_FROM {{.. == 23}}
directive set /fir/core/core:rlp/main/MAC-21:mul CSTEPS_FROM {{.. == 23}}
directive set /fir/core/core:rlp/main/MAC-22:mul CSTEPS_FROM {{.. == 24}}
directive set /fir/core/core:rlp/main/MAC:acc#7 CSTEPS_FROM {{.. == 24}}
directive set /fir/core/core:rlp/main/MAC-23:mul CSTEPS_FROM {{.. == 25}}
directive set /fir/core/core:rlp/main/MAC-24:mul CSTEPS_FROM {{.. == 26}}
directive set /fir/core/core:rlp/main/MAC:acc#6 CSTEPS_FROM {{.. == 26}}
directive set /fir/core/core:rlp/main/MAC:acc#20 CSTEPS_FROM {{.. == 27}}
directive set /fir/core/core:rlp/main/MAC:acc#27 CSTEPS_FROM {{.. == 27}}
directive set /fir/core/core:rlp/main/MAC-25:mul CSTEPS_FROM {{.. == 27}}
directive set /fir/core/core:rlp/main/MAC-26:mul CSTEPS_FROM {{.. == 28}}
directive set /fir/core/core:rlp/main/MAC:acc#5 CSTEPS_FROM {{.. == 28}}
directive set /fir/core/core:rlp/main/MAC-27:mul CSTEPS_FROM {{.. == 29}}
directive set /fir/core/core:rlp/main/MAC-28:mul CSTEPS_FROM {{.. == 30}}
directive set /fir/core/core:rlp/main/MAC:acc#4 CSTEPS_FROM {{.. == 30}}
directive set /fir/core/core:rlp/main/MAC:acc#19 CSTEPS_FROM {{.. == 31}}
directive set /fir/core/core:rlp/main/MAC-29:mul CSTEPS_FROM {{.. == 31}}
directive set /fir/core/core:rlp/main/MAC-30:mul CSTEPS_FROM {{.. == 32}}
directive set /fir/core/core:rlp/main/MAC:acc#3 CSTEPS_FROM {{.. == 32}}
directive set /fir/core/core:rlp/main/MAC-31:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC-32:mul CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC:acc#18 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC:acc#26 CSTEPS_FROM {{.. == 33}}
directive set /fir/core/core:rlp/main/MAC:acc#30 CSTEPS_FROM {{.. == 33}}
directive set /fir/core/core:rlp/main/MAC:acc CSTEPS_FROM {{.. == 33}}
directive set /fir/core/core:rlp/main/MAC-32:acc#1 CSTEPS_FROM {{.. == 34}}

# Probe constraints
