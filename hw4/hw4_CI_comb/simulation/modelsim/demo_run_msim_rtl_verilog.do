transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {/package/eda/altera/altera17.0/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_sram_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_performance_counter_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0_test_bench.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0_oci_test_bench.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0_jtag_debug_module_tck.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_nios2_qsys_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_new_sdram_controller_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_002.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_jtag_uart_0.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/nios_system.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3 {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/demo.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3 {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/pll.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/db {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/db/pll_altpll.v}
vlog -vlog01compat -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/crc_accelerator.v}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_router_006.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_router_004.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_router_002.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_router_001.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_router.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_cmd_mux_004.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_002_error_adapter_0.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/nios_system_irq_mapper.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_width_adapter.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_burst_adapter_uncmpr.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work work +incdir+/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules {/home/ecegridfs/a/695r48/ece695r/hw3/hw3_tutorials3/nios_system/synthesis/submodules/altera_merlin_arbitrator.sv}

