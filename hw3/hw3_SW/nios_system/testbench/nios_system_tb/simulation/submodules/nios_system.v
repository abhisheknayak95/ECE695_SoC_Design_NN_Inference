// nios_system.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module nios_system (
		input  wire        clk_clk,                           //                         clk.clk
		output wire [12:0] new_sdram_controller_0_wire_addr,  // new_sdram_controller_0_wire.addr
		output wire [1:0]  new_sdram_controller_0_wire_ba,    //                            .ba
		output wire        new_sdram_controller_0_wire_cas_n, //                            .cas_n
		output wire        new_sdram_controller_0_wire_cke,   //                            .cke
		output wire        new_sdram_controller_0_wire_cs_n,  //                            .cs_n
		inout  wire [31:0] new_sdram_controller_0_wire_dq,    //                            .dq
		output wire [3:0]  new_sdram_controller_0_wire_dqm,   //                            .dqm
		output wire        new_sdram_controller_0_wire_ras_n, //                            .ras_n
		output wire        new_sdram_controller_0_wire_we_n,  //                            .we_n
		input  wire        reset_reset_n,                     //                       reset.reset_n
		inout  wire [15:0] sram_0_external_interface_DQ,      //   sram_0_external_interface.DQ
		output wire [19:0] sram_0_external_interface_ADDR,    //                            .ADDR
		output wire        sram_0_external_interface_LB_N,    //                            .LB_N
		output wire        sram_0_external_interface_UB_N,    //                            .UB_N
		output wire        sram_0_external_interface_CE_N,    //                            .CE_N
		output wire        sram_0_external_interface_OE_N,    //                            .OE_N
		output wire        sram_0_external_interface_WE_N     //                            .WE_N
	);

	wire  [31:0] nios2_qsys_0_data_master_readdata;                                   // mm_interconnect_0:nios2_qsys_0_data_master_readdata -> nios2_qsys_0:d_readdata
	wire         nios2_qsys_0_data_master_waitrequest;                                // mm_interconnect_0:nios2_qsys_0_data_master_waitrequest -> nios2_qsys_0:d_waitrequest
	wire         nios2_qsys_0_data_master_debugaccess;                                // nios2_qsys_0:jtag_debug_module_debugaccess_to_roms -> mm_interconnect_0:nios2_qsys_0_data_master_debugaccess
	wire  [28:0] nios2_qsys_0_data_master_address;                                    // nios2_qsys_0:d_address -> mm_interconnect_0:nios2_qsys_0_data_master_address
	wire   [3:0] nios2_qsys_0_data_master_byteenable;                                 // nios2_qsys_0:d_byteenable -> mm_interconnect_0:nios2_qsys_0_data_master_byteenable
	wire         nios2_qsys_0_data_master_read;                                       // nios2_qsys_0:d_read -> mm_interconnect_0:nios2_qsys_0_data_master_read
	wire         nios2_qsys_0_data_master_write;                                      // nios2_qsys_0:d_write -> mm_interconnect_0:nios2_qsys_0_data_master_write
	wire  [31:0] nios2_qsys_0_data_master_writedata;                                  // nios2_qsys_0:d_writedata -> mm_interconnect_0:nios2_qsys_0_data_master_writedata
	wire  [31:0] nios2_qsys_0_instruction_master_readdata;                            // mm_interconnect_0:nios2_qsys_0_instruction_master_readdata -> nios2_qsys_0:i_readdata
	wire         nios2_qsys_0_instruction_master_waitrequest;                         // mm_interconnect_0:nios2_qsys_0_instruction_master_waitrequest -> nios2_qsys_0:i_waitrequest
	wire  [28:0] nios2_qsys_0_instruction_master_address;                             // nios2_qsys_0:i_address -> mm_interconnect_0:nios2_qsys_0_instruction_master_address
	wire         nios2_qsys_0_instruction_master_read;                                // nios2_qsys_0:i_read -> mm_interconnect_0:nios2_qsys_0_instruction_master_read
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;          // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;            // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest;         // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;             // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;                // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;               // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;           // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire  [15:0] mm_interconnect_0_sram_0_avalon_sram_slave_readdata;                 // sram_0:readdata -> mm_interconnect_0:sram_0_avalon_sram_slave_readdata
	wire  [19:0] mm_interconnect_0_sram_0_avalon_sram_slave_address;                  // mm_interconnect_0:sram_0_avalon_sram_slave_address -> sram_0:address
	wire         mm_interconnect_0_sram_0_avalon_sram_slave_read;                     // mm_interconnect_0:sram_0_avalon_sram_slave_read -> sram_0:read
	wire   [1:0] mm_interconnect_0_sram_0_avalon_sram_slave_byteenable;               // mm_interconnect_0:sram_0_avalon_sram_slave_byteenable -> sram_0:byteenable
	wire         mm_interconnect_0_sram_0_avalon_sram_slave_readdatavalid;            // sram_0:readdatavalid -> mm_interconnect_0:sram_0_avalon_sram_slave_readdatavalid
	wire         mm_interconnect_0_sram_0_avalon_sram_slave_write;                    // mm_interconnect_0:sram_0_avalon_sram_slave_write -> sram_0:write
	wire  [15:0] mm_interconnect_0_sram_0_avalon_sram_slave_writedata;                // mm_interconnect_0:sram_0_avalon_sram_slave_writedata -> sram_0:writedata
	wire  [31:0] mm_interconnect_0_performance_counter_0_control_slave_readdata;      // performance_counter_0:readdata -> mm_interconnect_0:performance_counter_0_control_slave_readdata
	wire   [3:0] mm_interconnect_0_performance_counter_0_control_slave_address;       // mm_interconnect_0:performance_counter_0_control_slave_address -> performance_counter_0:address
	wire         mm_interconnect_0_performance_counter_0_control_slave_begintransfer; // mm_interconnect_0:performance_counter_0_control_slave_begintransfer -> performance_counter_0:begintransfer
	wire         mm_interconnect_0_performance_counter_0_control_slave_write;         // mm_interconnect_0:performance_counter_0_control_slave_write -> performance_counter_0:write
	wire  [31:0] mm_interconnect_0_performance_counter_0_control_slave_writedata;     // mm_interconnect_0:performance_counter_0_control_slave_writedata -> performance_counter_0:writedata
	wire  [31:0] mm_interconnect_0_nios2_qsys_0_jtag_debug_module_readdata;           // nios2_qsys_0:jtag_debug_module_readdata -> mm_interconnect_0:nios2_qsys_0_jtag_debug_module_readdata
	wire         mm_interconnect_0_nios2_qsys_0_jtag_debug_module_waitrequest;        // nios2_qsys_0:jtag_debug_module_waitrequest -> mm_interconnect_0:nios2_qsys_0_jtag_debug_module_waitrequest
	wire         mm_interconnect_0_nios2_qsys_0_jtag_debug_module_debugaccess;        // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_debugaccess -> nios2_qsys_0:jtag_debug_module_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_qsys_0_jtag_debug_module_address;            // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_address -> nios2_qsys_0:jtag_debug_module_address
	wire         mm_interconnect_0_nios2_qsys_0_jtag_debug_module_read;               // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_read -> nios2_qsys_0:jtag_debug_module_read
	wire   [3:0] mm_interconnect_0_nios2_qsys_0_jtag_debug_module_byteenable;         // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_byteenable -> nios2_qsys_0:jtag_debug_module_byteenable
	wire         mm_interconnect_0_nios2_qsys_0_jtag_debug_module_write;              // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_write -> nios2_qsys_0:jtag_debug_module_write
	wire  [31:0] mm_interconnect_0_nios2_qsys_0_jtag_debug_module_writedata;          // mm_interconnect_0:nios2_qsys_0_jtag_debug_module_writedata -> nios2_qsys_0:jtag_debug_module_writedata
	wire         mm_interconnect_0_new_sdram_controller_0_s1_chipselect;              // mm_interconnect_0:new_sdram_controller_0_s1_chipselect -> new_sdram_controller_0:az_cs
	wire  [31:0] mm_interconnect_0_new_sdram_controller_0_s1_readdata;                // new_sdram_controller_0:za_data -> mm_interconnect_0:new_sdram_controller_0_s1_readdata
	wire         mm_interconnect_0_new_sdram_controller_0_s1_waitrequest;             // new_sdram_controller_0:za_waitrequest -> mm_interconnect_0:new_sdram_controller_0_s1_waitrequest
	wire  [24:0] mm_interconnect_0_new_sdram_controller_0_s1_address;                 // mm_interconnect_0:new_sdram_controller_0_s1_address -> new_sdram_controller_0:az_addr
	wire         mm_interconnect_0_new_sdram_controller_0_s1_read;                    // mm_interconnect_0:new_sdram_controller_0_s1_read -> new_sdram_controller_0:az_rd_n
	wire   [3:0] mm_interconnect_0_new_sdram_controller_0_s1_byteenable;              // mm_interconnect_0:new_sdram_controller_0_s1_byteenable -> new_sdram_controller_0:az_be_n
	wire         mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid;           // new_sdram_controller_0:za_valid -> mm_interconnect_0:new_sdram_controller_0_s1_readdatavalid
	wire         mm_interconnect_0_new_sdram_controller_0_s1_write;                   // mm_interconnect_0:new_sdram_controller_0_s1_write -> new_sdram_controller_0:az_wr_n
	wire  [31:0] mm_interconnect_0_new_sdram_controller_0_s1_writedata;               // mm_interconnect_0:new_sdram_controller_0_s1_writedata -> new_sdram_controller_0:az_data
	wire         irq_mapper_receiver0_irq;                                            // jtag_uart_0:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_qsys_0_d_irq_irq;                                              // irq_mapper:sender_irq -> nios2_qsys_0:d_irq
	wire         rst_controller_reset_out_reset;                                      // rst_controller:reset_out -> [irq_mapper:reset, jtag_uart_0:rst_n, mm_interconnect_0:nios2_qsys_0_reset_n_reset_bridge_in_reset_reset, new_sdram_controller_0:reset_n, nios2_qsys_0:reset_n, performance_counter_0:reset_n, rst_translator:in_reset, sram_0:reset]
	wire         rst_controller_reset_out_reset_req;                                  // rst_controller:reset_req -> [nios2_qsys_0:reset_req, rst_translator:reset_req_in]

	nios_system_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                             //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                     //               irq.irq
	);

	nios_system_new_sdram_controller_0 new_sdram_controller_0 (
		.clk            (clk_clk),                                                   //   clk.clk
		.reset_n        (~rst_controller_reset_out_reset),                           // reset.reset_n
		.az_addr        (mm_interconnect_0_new_sdram_controller_0_s1_address),       //    s1.address
		.az_be_n        (~mm_interconnect_0_new_sdram_controller_0_s1_byteenable),   //      .byteenable_n
		.az_cs          (mm_interconnect_0_new_sdram_controller_0_s1_chipselect),    //      .chipselect
		.az_data        (mm_interconnect_0_new_sdram_controller_0_s1_writedata),     //      .writedata
		.az_rd_n        (~mm_interconnect_0_new_sdram_controller_0_s1_read),         //      .read_n
		.az_wr_n        (~mm_interconnect_0_new_sdram_controller_0_s1_write),        //      .write_n
		.za_data        (mm_interconnect_0_new_sdram_controller_0_s1_readdata),      //      .readdata
		.za_valid       (mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid), //      .readdatavalid
		.za_waitrequest (mm_interconnect_0_new_sdram_controller_0_s1_waitrequest),   //      .waitrequest
		.zs_addr        (new_sdram_controller_0_wire_addr),                          //  wire.export
		.zs_ba          (new_sdram_controller_0_wire_ba),                            //      .export
		.zs_cas_n       (new_sdram_controller_0_wire_cas_n),                         //      .export
		.zs_cke         (new_sdram_controller_0_wire_cke),                           //      .export
		.zs_cs_n        (new_sdram_controller_0_wire_cs_n),                          //      .export
		.zs_dq          (new_sdram_controller_0_wire_dq),                            //      .export
		.zs_dqm         (new_sdram_controller_0_wire_dqm),                           //      .export
		.zs_ras_n       (new_sdram_controller_0_wire_ras_n),                         //      .export
		.zs_we_n        (new_sdram_controller_0_wire_we_n)                           //      .export
	);

	nios_system_nios2_qsys_0 nios2_qsys_0 (
		.clk                                   (clk_clk),                                                      //                       clk.clk
		.reset_n                               (~rst_controller_reset_out_reset),                              //                   reset_n.reset_n
		.reset_req                             (rst_controller_reset_out_reset_req),                           //                          .reset_req
		.d_address                             (nios2_qsys_0_data_master_address),                             //               data_master.address
		.d_byteenable                          (nios2_qsys_0_data_master_byteenable),                          //                          .byteenable
		.d_read                                (nios2_qsys_0_data_master_read),                                //                          .read
		.d_readdata                            (nios2_qsys_0_data_master_readdata),                            //                          .readdata
		.d_waitrequest                         (nios2_qsys_0_data_master_waitrequest),                         //                          .waitrequest
		.d_write                               (nios2_qsys_0_data_master_write),                               //                          .write
		.d_writedata                           (nios2_qsys_0_data_master_writedata),                           //                          .writedata
		.jtag_debug_module_debugaccess_to_roms (nios2_qsys_0_data_master_debugaccess),                         //                          .debugaccess
		.i_address                             (nios2_qsys_0_instruction_master_address),                      //        instruction_master.address
		.i_read                                (nios2_qsys_0_instruction_master_read),                         //                          .read
		.i_readdata                            (nios2_qsys_0_instruction_master_readdata),                     //                          .readdata
		.i_waitrequest                         (nios2_qsys_0_instruction_master_waitrequest),                  //                          .waitrequest
		.d_irq                                 (nios2_qsys_0_d_irq_irq),                                       //                     d_irq.irq
		.jtag_debug_module_resetrequest        (),                                                             //   jtag_debug_module_reset.reset
		.jtag_debug_module_address             (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_address),     //         jtag_debug_module.address
		.jtag_debug_module_byteenable          (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_byteenable),  //                          .byteenable
		.jtag_debug_module_debugaccess         (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_debugaccess), //                          .debugaccess
		.jtag_debug_module_read                (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_read),        //                          .read
		.jtag_debug_module_readdata            (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_readdata),    //                          .readdata
		.jtag_debug_module_waitrequest         (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_waitrequest), //                          .waitrequest
		.jtag_debug_module_write               (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_write),       //                          .write
		.jtag_debug_module_writedata           (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_writedata),   //                          .writedata
		.no_ci_readra                          ()                                                              // custom_instruction_master.readra
	);

	nios_system_performance_counter_0 performance_counter_0 (
		.clk           (clk_clk),                                                             //           clk.clk
		.reset_n       (~rst_controller_reset_out_reset),                                     //         reset.reset_n
		.address       (mm_interconnect_0_performance_counter_0_control_slave_address),       // control_slave.address
		.begintransfer (mm_interconnect_0_performance_counter_0_control_slave_begintransfer), //              .begintransfer
		.readdata      (mm_interconnect_0_performance_counter_0_control_slave_readdata),      //              .readdata
		.write         (mm_interconnect_0_performance_counter_0_control_slave_write),         //              .write
		.writedata     (mm_interconnect_0_performance_counter_0_control_slave_writedata)      //              .writedata
	);

	nios_system_sram_0 sram_0 (
		.clk           (clk_clk),                                                  //                clk.clk
		.reset         (rst_controller_reset_out_reset),                           //              reset.reset
		.SRAM_DQ       (sram_0_external_interface_DQ),                             // external_interface.export
		.SRAM_ADDR     (sram_0_external_interface_ADDR),                           //                   .export
		.SRAM_LB_N     (sram_0_external_interface_LB_N),                           //                   .export
		.SRAM_UB_N     (sram_0_external_interface_UB_N),                           //                   .export
		.SRAM_CE_N     (sram_0_external_interface_CE_N),                           //                   .export
		.SRAM_OE_N     (sram_0_external_interface_OE_N),                           //                   .export
		.SRAM_WE_N     (sram_0_external_interface_WE_N),                           //                   .export
		.address       (mm_interconnect_0_sram_0_avalon_sram_slave_address),       //  avalon_sram_slave.address
		.byteenable    (mm_interconnect_0_sram_0_avalon_sram_slave_byteenable),    //                   .byteenable
		.read          (mm_interconnect_0_sram_0_avalon_sram_slave_read),          //                   .read
		.write         (mm_interconnect_0_sram_0_avalon_sram_slave_write),         //                   .write
		.writedata     (mm_interconnect_0_sram_0_avalon_sram_slave_writedata),     //                   .writedata
		.readdata      (mm_interconnect_0_sram_0_avalon_sram_slave_readdata),      //                   .readdata
		.readdatavalid (mm_interconnect_0_sram_0_avalon_sram_slave_readdatavalid)  //                   .readdatavalid
	);

	nios_system_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                     (clk_clk),                                                             //                                  clk_0_clk.clk
		.nios2_qsys_0_reset_n_reset_bridge_in_reset_reset  (rst_controller_reset_out_reset),                                      // nios2_qsys_0_reset_n_reset_bridge_in_reset.reset
		.nios2_qsys_0_data_master_address                  (nios2_qsys_0_data_master_address),                                    //                   nios2_qsys_0_data_master.address
		.nios2_qsys_0_data_master_waitrequest              (nios2_qsys_0_data_master_waitrequest),                                //                                           .waitrequest
		.nios2_qsys_0_data_master_byteenable               (nios2_qsys_0_data_master_byteenable),                                 //                                           .byteenable
		.nios2_qsys_0_data_master_read                     (nios2_qsys_0_data_master_read),                                       //                                           .read
		.nios2_qsys_0_data_master_readdata                 (nios2_qsys_0_data_master_readdata),                                   //                                           .readdata
		.nios2_qsys_0_data_master_write                    (nios2_qsys_0_data_master_write),                                      //                                           .write
		.nios2_qsys_0_data_master_writedata                (nios2_qsys_0_data_master_writedata),                                  //                                           .writedata
		.nios2_qsys_0_data_master_debugaccess              (nios2_qsys_0_data_master_debugaccess),                                //                                           .debugaccess
		.nios2_qsys_0_instruction_master_address           (nios2_qsys_0_instruction_master_address),                             //            nios2_qsys_0_instruction_master.address
		.nios2_qsys_0_instruction_master_waitrequest       (nios2_qsys_0_instruction_master_waitrequest),                         //                                           .waitrequest
		.nios2_qsys_0_instruction_master_read              (nios2_qsys_0_instruction_master_read),                                //                                           .read
		.nios2_qsys_0_instruction_master_readdata          (nios2_qsys_0_instruction_master_readdata),                            //                                           .readdata
		.jtag_uart_0_avalon_jtag_slave_address             (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),             //              jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write               (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),               //                                           .write
		.jtag_uart_0_avalon_jtag_slave_read                (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),                //                                           .read
		.jtag_uart_0_avalon_jtag_slave_readdata            (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),            //                                           .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata           (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),           //                                           .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest         (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest),         //                                           .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect          (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),          //                                           .chipselect
		.new_sdram_controller_0_s1_address                 (mm_interconnect_0_new_sdram_controller_0_s1_address),                 //                  new_sdram_controller_0_s1.address
		.new_sdram_controller_0_s1_write                   (mm_interconnect_0_new_sdram_controller_0_s1_write),                   //                                           .write
		.new_sdram_controller_0_s1_read                    (mm_interconnect_0_new_sdram_controller_0_s1_read),                    //                                           .read
		.new_sdram_controller_0_s1_readdata                (mm_interconnect_0_new_sdram_controller_0_s1_readdata),                //                                           .readdata
		.new_sdram_controller_0_s1_writedata               (mm_interconnect_0_new_sdram_controller_0_s1_writedata),               //                                           .writedata
		.new_sdram_controller_0_s1_byteenable              (mm_interconnect_0_new_sdram_controller_0_s1_byteenable),              //                                           .byteenable
		.new_sdram_controller_0_s1_readdatavalid           (mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid),           //                                           .readdatavalid
		.new_sdram_controller_0_s1_waitrequest             (mm_interconnect_0_new_sdram_controller_0_s1_waitrequest),             //                                           .waitrequest
		.new_sdram_controller_0_s1_chipselect              (mm_interconnect_0_new_sdram_controller_0_s1_chipselect),              //                                           .chipselect
		.nios2_qsys_0_jtag_debug_module_address            (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_address),            //             nios2_qsys_0_jtag_debug_module.address
		.nios2_qsys_0_jtag_debug_module_write              (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_write),              //                                           .write
		.nios2_qsys_0_jtag_debug_module_read               (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_read),               //                                           .read
		.nios2_qsys_0_jtag_debug_module_readdata           (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_readdata),           //                                           .readdata
		.nios2_qsys_0_jtag_debug_module_writedata          (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_writedata),          //                                           .writedata
		.nios2_qsys_0_jtag_debug_module_byteenable         (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_byteenable),         //                                           .byteenable
		.nios2_qsys_0_jtag_debug_module_waitrequest        (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_waitrequest),        //                                           .waitrequest
		.nios2_qsys_0_jtag_debug_module_debugaccess        (mm_interconnect_0_nios2_qsys_0_jtag_debug_module_debugaccess),        //                                           .debugaccess
		.performance_counter_0_control_slave_address       (mm_interconnect_0_performance_counter_0_control_slave_address),       //        performance_counter_0_control_slave.address
		.performance_counter_0_control_slave_write         (mm_interconnect_0_performance_counter_0_control_slave_write),         //                                           .write
		.performance_counter_0_control_slave_readdata      (mm_interconnect_0_performance_counter_0_control_slave_readdata),      //                                           .readdata
		.performance_counter_0_control_slave_writedata     (mm_interconnect_0_performance_counter_0_control_slave_writedata),     //                                           .writedata
		.performance_counter_0_control_slave_begintransfer (mm_interconnect_0_performance_counter_0_control_slave_begintransfer), //                                           .begintransfer
		.sram_0_avalon_sram_slave_address                  (mm_interconnect_0_sram_0_avalon_sram_slave_address),                  //                   sram_0_avalon_sram_slave.address
		.sram_0_avalon_sram_slave_write                    (mm_interconnect_0_sram_0_avalon_sram_slave_write),                    //                                           .write
		.sram_0_avalon_sram_slave_read                     (mm_interconnect_0_sram_0_avalon_sram_slave_read),                     //                                           .read
		.sram_0_avalon_sram_slave_readdata                 (mm_interconnect_0_sram_0_avalon_sram_slave_readdata),                 //                                           .readdata
		.sram_0_avalon_sram_slave_writedata                (mm_interconnect_0_sram_0_avalon_sram_slave_writedata),                //                                           .writedata
		.sram_0_avalon_sram_slave_byteenable               (mm_interconnect_0_sram_0_avalon_sram_slave_byteenable),               //                                           .byteenable
		.sram_0_avalon_sram_slave_readdatavalid            (mm_interconnect_0_sram_0_avalon_sram_slave_readdatavalid)             //                                           .readdatavalid
	);

	nios_system_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2_qsys_0_d_irq_irq)          //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
