
# Loop constraints
directive set /fir/core/core:rlp CSTEPS_FROM {{. == 1}}
directive set /fir/core/core:rlp/regs:vinit CSTEPS_FROM {{. == 2} {.. == 1}}
directive set /fir/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /fir/core/core:rlp/main/MAC CSTEPS_FROM {{. == 9} {.. == 2}}

# IO operation constraints
directive set /fir/core/core:rlp/main/io_read(in1:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:io_read(coeffs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/acc:io_write(out1:rsc.@) CSTEPS_FROM {{.. == 2}}

# Sync operation constraints

# Real operation constraints
directive set /fir/core/core:rlp/regs:vinit/regs:write_mem(regs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/regs:vinit/regs:acc CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/write_mem(regs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:else:acc CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:else:acc CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#1 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:else:acc CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#2 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#2 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-3:mul CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#3 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:mul CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#4 CSTEPS_FROM {{.. == 5}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-1:mul CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#1 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-2:mul CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#3 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:acc#1 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:else:acc CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#3 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-4:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:else:acc CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#4 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-6:else:acc CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#5 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC-6:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:else:acc CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:MAC:or#6 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#4 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#10 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-5:mul CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#6 CSTEPS_FROM {{.. == 6}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#5 CSTEPS_FROM {{.. == 4}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#11 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-6:mul CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC/MAC:read_mem(regs:rsc.@)#6 CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/MAC/MAC:mux#12 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:mul CSTEPS_FROM {{.. == 7}}
directive set /fir/core/core:rlp/main/MAC/MAC:acc#5 CSTEPS_FROM {{.. == 8}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:acc#1 CSTEPS_FROM {{.. == 9}}
directive set /fir/core/core:rlp/main/MAC/MAC-7:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /fir/core/core:rlp/main/else:acc CSTEPS_FROM {{.. == 3}}
directive set /fir/core/core:rlp/main/and CSTEPS_FROM {{.. == 3}}

# Probe constraints
