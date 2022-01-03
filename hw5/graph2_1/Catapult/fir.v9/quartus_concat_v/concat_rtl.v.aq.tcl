    set_global_assignment -name PRE_FLOW_SCRIPT_FILE "quartus_sh:/home/ecegridfs/a/695r48/ece695r/hw5/graph2/Catapult/fir.v9/quartus_concat_v/pre_flow_v.tcl"
    set_global_assignment -name POST_MODULE_SCRIPT_FILE "quartus_sh:/home/ecegridfs/a/695r48/ece695r/hw5/graph2/Catapult/fir.v9/quartus_concat_v/post_mod_v.tcl"
    set_global_assignment -name POST_FLOW_SCRIPT_FILE "quartus_sh:/home/ecegridfs/a/695r48/ece695r/hw5/graph2/Catapult/fir.v9/quartus_concat_v/post_flow_v.tcl"
set CATAPULT_HOME "/package/eda/mg/Catapult_10.3d/Mgc_home"
puts "-- CATAPULT_HOME is set to '$CATAPULT_HOME' "

# ----------------------------------------------
# Helper function for dealing with various Quartus Prime versions
proc SetGlobalAssignmentIfAvailable { aname avalue } {
  if { [lsearch -exact [get_all_assignment_names] $aname] != -1 } {
    set_global_assignment -name $aname $avalue
  } else {
    post_message "Global Assignment '$aname' is not available in this version of Quartus Prime"
  }
}

# ----------------------------------------------
# Catapult Quartus Flow Options
#    Flows/Quartus/FITTER_RESYNTHESIS = false
#set_global_assignment -name FITTER_RESYNTHESIS OFF
SetGlobalAssignmentIfAvailable FITTER_RESYNTHESIS OFF
#    Flows/Quartus/ALLOW_RAM_RETIMING = true
#set_global_assignment -name ALLOW_RAM_RETIMING ON
SetGlobalAssignmentIfAvailable ALLOW_RAM_RETIMING ON
#    Flows/Quartus/ALLOW_DSP_RETIMING = true
#set_global_assignment -name ALLOW_DSP_RETIMING ON
SetGlobalAssignmentIfAvailable ALLOW_DSP_RETIMING ON
#    Flows/Quartus/ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION = true
#set_global_assignment -name ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION ON
SetGlobalAssignmentIfAvailable ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION ON
#    Flows/Quartus/ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION = true
#set_global_assignment -name ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION ON
SetGlobalAssignmentIfAvailable ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION ON
# ----------------------------------------------
# Configure device
set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CEBA2F17C6
# ----------------------------------------------
# Configure tool options
set_global_assignment -name NUM_PARALLEL_PROCESSORS 3
set_global_assignment -name IO_PLACEMENT_OPTIMIZATION OFF
set_global_assignment -name REPORT_IO_PATHS_SEPARATELY ON
set_global_assignment -name SYNTH_MESSAGE_LEVEL HIGH
# ----------------------------------------------
# Input HDL files
set_global_assignment -name VERILOG_FILE ../concat_rtl.v
set_global_assignment -name SDC_FILE /home/ecegridfs/a/695r48/ece695r/hw5/graph2/Catapult/fir.v9/quartus_concat_v/concat_rtl.v.aq.sdc
set_global_assignment -name TOP_LEVEL_ENTITY fir
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY .

# ----------------------------------------------
# Configure ROMs (if any)

# make pins virtual to prevent IO routing/buffering generation
set_instance_assignment -name VIRTUAL_PIN ON -to rst
set_instance_assignment -name VIRTUAL_PIN ON -to clk
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[15]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[14]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[13]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[12]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[11]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[10]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[9]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[8]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[7]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[6]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[5]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[4]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[3]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[2]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[1]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_q[0]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[15]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[14]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[13]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[12]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[11]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[10]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[9]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[8]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[7]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[6]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[5]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[4]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[3]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[2]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[1]
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_dat[0]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_radr[4]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_radr[3]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_radr[2]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_radr[1]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_radr[0]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[15]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[14]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[13]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[12]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[11]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[10]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[9]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[8]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[7]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[6]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[5]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[4]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[3]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[2]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[1]
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_dat[0]
set_instance_assignment -name VIRTUAL_PIN ON -to coeffs_rsc_triosy_lz
set_instance_assignment -name VIRTUAL_PIN ON -to in1_rsc_triosy_lz
set_instance_assignment -name VIRTUAL_PIN ON -to out1_rsc_triosy_lz

