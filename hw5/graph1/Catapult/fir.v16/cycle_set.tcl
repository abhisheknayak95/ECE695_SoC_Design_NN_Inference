
# Loop constraints
directive set /fir/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /fir/core/core:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /fir/core/core:rlp/main/MAC CSTEPS_FROM {{. == 19} {.. == 1}}

# IO operation constraints
directive set /fir/core/core:rlp/main/io_read(in1:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/acc:io_write(out1:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /fir/core/core:rlp/main/MAC/MAC-15:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#14 CSTEPS_FROM {{.. == 16}}
directive set /fir/core/core:rlp/main/MAC/MAC-15:mul CSTEPS_FROM {{.. == 17}}
directive set /fir/core/core:rlp/main/MAC/MAC-16:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#15 CSTEPS_FROM {{.. == 15}}
directive set /fir/core/core:rlp/main/MAC/MAC-16:mul CSTEPS_FROM {{.. == 16}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#10 CSTEPS_FROM {{.. == 18}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#14 CSTEPS_FROM {{.. == 18}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@) CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:mul CSTEPS_FROM {{.. == 15}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#1 CSTEPS_FROM {{.. == 13}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:mul CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#9 CSTEPS_FROM {{.. == 16}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#16 CSTEPS_FROM {{.. == 18}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#2 CSTEPS_FROM {{.. == 12}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:mul CSTEPS_FROM {{.. == 13}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#3 CSTEPS_FROM {{.. == 11}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:mul CSTEPS_FROM {{.. == 12}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#8 CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#4 CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:mul CSTEPS_FROM {{.. == 11}}
directive set /fir/core/core:rlp/main/MAC/MAC-6:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#5 CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC/MAC-6:mul CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#7 CSTEPS_FROM {{.. == 12}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#13 CSTEPS_FROM {{.. == 14}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc CSTEPS_FROM {{.. == 19}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#6 CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:mul CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC/MAC-8:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#7 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC/MAC-8:mul CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#6 CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC/MAC-9:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#8 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC-9:mul CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC/MAC-10:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#9 CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC-10:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#5 CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#12 CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC/MAC-11:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#10 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC-11:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC-12:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#11 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC-12:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#4 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC-13:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#12 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-13:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC-14:MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#13 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-14:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#3 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#11 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#15 CSTEPS_FROM {{.. == 10}}
directive set /fir/core/core:rlp/main/MAC/MAC-16:acc#1 CSTEPS_FROM {{.. == 19}}

# Probe constraints
