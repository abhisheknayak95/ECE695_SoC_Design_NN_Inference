	nios_system u0 (
		.clk_clk                           (<connected-to-clk_clk>),                           //                         clk.clk
		.new_sdram_controller_0_wire_addr  (<connected-to-new_sdram_controller_0_wire_addr>),  // new_sdram_controller_0_wire.addr
		.new_sdram_controller_0_wire_ba    (<connected-to-new_sdram_controller_0_wire_ba>),    //                            .ba
		.new_sdram_controller_0_wire_cas_n (<connected-to-new_sdram_controller_0_wire_cas_n>), //                            .cas_n
		.new_sdram_controller_0_wire_cke   (<connected-to-new_sdram_controller_0_wire_cke>),   //                            .cke
		.new_sdram_controller_0_wire_cs_n  (<connected-to-new_sdram_controller_0_wire_cs_n>),  //                            .cs_n
		.new_sdram_controller_0_wire_dq    (<connected-to-new_sdram_controller_0_wire_dq>),    //                            .dq
		.new_sdram_controller_0_wire_dqm   (<connected-to-new_sdram_controller_0_wire_dqm>),   //                            .dqm
		.new_sdram_controller_0_wire_ras_n (<connected-to-new_sdram_controller_0_wire_ras_n>), //                            .ras_n
		.new_sdram_controller_0_wire_we_n  (<connected-to-new_sdram_controller_0_wire_we_n>),  //                            .we_n
		.reset_reset_n                     (<connected-to-reset_reset_n>),                     //                       reset.reset_n
		.sram_0_external_interface_DQ      (<connected-to-sram_0_external_interface_DQ>),      //   sram_0_external_interface.DQ
		.sram_0_external_interface_ADDR    (<connected-to-sram_0_external_interface_ADDR>),    //                            .ADDR
		.sram_0_external_interface_LB_N    (<connected-to-sram_0_external_interface_LB_N>),    //                            .LB_N
		.sram_0_external_interface_UB_N    (<connected-to-sram_0_external_interface_UB_N>),    //                            .UB_N
		.sram_0_external_interface_CE_N    (<connected-to-sram_0_external_interface_CE_N>),    //                            .CE_N
		.sram_0_external_interface_OE_N    (<connected-to-sram_0_external_interface_OE_N>),    //                            .OE_N
		.sram_0_external_interface_WE_N    (<connected-to-sram_0_external_interface_WE_N>)     //                            .WE_N
	);

