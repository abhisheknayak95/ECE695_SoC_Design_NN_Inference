
# (C) 2001-2021 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 17.0 595 linux 2021.10.10.00:52:16

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     nios_system_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If nios_system_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 17.0 595 linux 2021.10.10.00:52:16
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios_system_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/package/eda/altera/altera17.0/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_ociram_default_contents.hex ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_ociram_default_contents.dat ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_ociram_default_contents.mif ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_b.hex ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_b.dat ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_b.mif ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_a.hex ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_a.dat ./
  cp -f /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_rf_ram_a.mif ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/verbosity_pkg.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_001.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_avalon_st_adapter.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_width_adapter.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_address_alignment.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_rsp_mux_001.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_arbitrator.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_rsp_mux.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_rsp_demux.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_cmd_mux_003.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_cmd_mux.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_cmd_demux_001.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_cmd_demux.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_burst_adapter.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_incr_burst_converter.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_wrap_burst_converter.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_default_burst_converter.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_avalon_st_pipeline_base.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_router_005.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_router_003.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_router_002.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_router_001.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0_router.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_avalon_sc_fifo.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_slave_agent.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_master_agent.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_slave_translator.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_merlin_master_translator.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_reset_controller.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_reset_synchronizer.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_irq_mapper.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_mm_interconnect_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_customins_slave_translator.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_custom_instruction_master_comb_xconnect.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_customins_master_translator.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_sram_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_performance_counter_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_jtag_debug_module_wrapper.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_jtag_debug_module_sysclk.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_jtag_debug_module_tck.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_oci_test_bench.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_nios2_qsys_0_test_bench.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_new_sdram_controller_0_test_component.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_new_sdram_controller_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system_jtag_uart_0.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/CRC_custom_combinational.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_avalon_reset_source.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_avalon_clock_source.sv \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/nios_system.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/submodules/altera_sdram_partner_module.v \
  /home/ecegridfs/a/695r48/ece695r/hw4/hw4_CI_comb/nios_system/testbench/nios_system_tb/simulation/nios_system_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
