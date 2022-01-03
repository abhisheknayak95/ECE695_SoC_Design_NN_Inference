# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/ecegridfs/a/695r48/ece695r/project/mlp_1/software/mlp_1/mem_init/hdl_sim/generic_tristate_controller_0.dat ./ 
file copy -force /home/ecegridfs/a/695r48/ece695r/project/mlp_1/software/mlp_1/mem_init/hdl_sim/new_sdram_controller_0.dat ./ 
