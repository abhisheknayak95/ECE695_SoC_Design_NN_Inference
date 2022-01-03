
# Loop constraints
directive set /fir/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /fir/core/core:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /fir/core/core:rlp/main/MAC CSTEPS_FROM {{. == 7} {.. == 1}}

# IO operation constraints
directive set /fir/core/core:rlp/main/io_read(in1:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/acc:io_write(out1:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /fir/core/core:rlp/main/MAC/MAC-1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@) CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#1 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:acc#1 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#2 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#4 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#3 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#4 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(coeffs:rsc.@)#4 CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#3 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:acc#1 CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:acc#2 CSTEPS_FROM {{.. == 2}}

# Probe constraints
