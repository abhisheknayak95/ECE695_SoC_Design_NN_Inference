# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/ecegridfs/a/695r48/ece695r/hw3/hw3_HW/software/crc_hw/mem_init/hdl_sim/new_sdram_controller_0.dat ./ 
