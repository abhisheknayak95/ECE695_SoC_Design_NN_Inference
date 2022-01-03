
//------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/mgc_in_wire_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_in_wire_v2 (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] d;
  input  [width-1:0] z;

  wire   [width-1:0] d;

  assign d = z;

endmodule


//------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/ccs_out_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2015 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_out_v1 (dat, idat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output   [width-1:0] dat;
  input    [width-1:0] idat;

  wire     [width-1:0] dat;

  assign dat = idat;

endmodule




//------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/ccs_altera/hdl/M10K_DP.v 
// Memory Type:            M10K
// Operating Mode:         Simple Dual Port (2-PORT)
// Clock Mode:             Single Clock

// RTL Code RW Resolution: write-thru 
// Hardware RW Resolution: dont care 
// Catapult RW Resolution: unknown 

// HDL Work Library:       Altera_RAMS_lib
// Component Name:         M10K_DP

module M10K_DP
#(
  parameter data_width = 8,
  parameter addr_width = 7,
  parameter depth = 128 
)(
  clk, adra, adrb, wea, web, da, db, rea, reb, qa, qb
);

  input clk;                     // Rising edge clock
  input [addr_width-1:0] adra;   // Port A - Address
  input [addr_width-1:0] adrb;   // Port B - Address
  input wea;                     // Port A - Write-enable active high
  input web;                     // Port B - Write-enable active high
  input [data_width-1:0] da;     // Port A - Data In
  input [data_width-1:0] db;     // Port B - Data In
  input rea;                     // Port A - Read-enable active high
  input reb;                     // Port B - Read-enable active high
  output[data_width-1:0] qa;     // Port A - Data Out
  output[data_width-1:0] qb;     // Port B - Data Out

  reg [data_width-1:0] qa;
  reg [data_width-1:0] qb;

  (* ramstyle = "no_rw_check, M10K" *)
  reg [data_width-1:0] mem [depth-1:0]; /* synthesis syn_ramstyle = "no_rw_check, M10K" */

  always @(posedge clk) begin
    if (wea) begin
      mem[adra] <= da;
    end
    if (rea) begin
      qa <= mem[adra];
    end
  end

  always @(posedge clk) begin
    if (web) begin
      mem[adrb] <= db;
    end
    if (reb) begin
      qb <= mem[adrb] ;
    end
  end

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
//  Generated date: Wed Nov 10 15:55:08 2021
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen
// ------------------------------------------------------------------


module fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen (
  qb, reb, db, web, adrb, qa, rea, da, wea, adra, adra_d, wea_d, da_d, rea_d, qa_d,
      rwportA_rw_ram_ir_internal_RMASK_B_d, rwportA_rw_ram_ir_internal_WMASK_B_d
);
  input [15:0] qb;
  output reb;
  output [15:0] db;
  output web;
  output [4:0] adrb;
  input [15:0] qa;
  output rea;
  output [15:0] da;
  output wea;
  output [4:0] adra;
  input [9:0] adra_d;
  input [1:0] wea_d;
  input [31:0] da_d;
  input [1:0] rea_d;
  output [31:0] qa_d;
  input [1:0] rwportA_rw_ram_ir_internal_RMASK_B_d;
  input [1:0] rwportA_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign qa_d[31:16] = qb;
  assign reb = (rwportA_rw_ram_ir_internal_RMASK_B_d[1]);
  assign db = (da_d[31:16]);
  assign web = (rwportA_rw_ram_ir_internal_WMASK_B_d[1]);
  assign adrb = (adra_d[9:5]);
  assign qa_d[15:0] = qa;
  assign rea = (rwportA_rw_ram_ir_internal_RMASK_B_d[0]);
  assign da = (da_d[15:0]);
  assign wea = (rwportA_rw_ram_ir_internal_WMASK_B_d[0]);
  assign adra = (adra_d[4:0]);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module fir_core_core_fsm (
  clk, rst, fsm_output, regs_vinit_C_1_tr0, MAC_C_7_tr0
);
  input clk;
  input rst;
  output [20:0] fsm_output;
  reg [20:0] fsm_output;
  input regs_vinit_C_1_tr0;
  input MAC_C_7_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    core_rlp_C_0 = 5'd0,
    regs_vinit_C_0 = 5'd1,
    regs_vinit_C_1 = 5'd2,
    main_C_0 = 5'd3,
    main_C_1 = 5'd4,
    MAC_C_0 = 5'd5,
    MAC_C_1 = 5'd6,
    MAC_C_2 = 5'd7,
    MAC_C_3 = 5'd8,
    MAC_C_4 = 5'd9,
    MAC_C_5 = 5'd10,
    MAC_C_6 = 5'd11,
    MAC_C_7 = 5'd12,
    MAC_C_8 = 5'd13,
    MAC_C_9 = 5'd14,
    MAC_C_10 = 5'd15,
    MAC_C_11 = 5'd16,
    MAC_C_12 = 5'd17,
    MAC_C_13 = 5'd18,
    MAC_C_14 = 5'd19,
    main_C_2 = 5'd20;

  reg [4:0] state_var;
  reg [4:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      regs_vinit_C_0 : begin
        fsm_output = 21'b000000000000000000010;
        state_var_NS = regs_vinit_C_1;
      end
      regs_vinit_C_1 : begin
        fsm_output = 21'b000000000000000000100;
        if ( regs_vinit_C_1_tr0 ) begin
          state_var_NS = regs_vinit_C_0;
        end
        else begin
          state_var_NS = main_C_0;
        end
      end
      main_C_0 : begin
        fsm_output = 21'b000000000000000001000;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 21'b000000000000000010000;
        state_var_NS = MAC_C_0;
      end
      MAC_C_0 : begin
        fsm_output = 21'b000000000000000100000;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 21'b000000000000001000000;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 21'b000000000000010000000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 21'b000000000000100000000;
        state_var_NS = MAC_C_4;
      end
      MAC_C_4 : begin
        fsm_output = 21'b000000000001000000000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 21'b000000000010000000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 21'b000000000100000000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 21'b000000001000000000000;
        if ( MAC_C_7_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = MAC_C_8;
        end
      end
      MAC_C_8 : begin
        fsm_output = 21'b000000010000000000000;
        state_var_NS = MAC_C_9;
      end
      MAC_C_9 : begin
        fsm_output = 21'b000000100000000000000;
        state_var_NS = MAC_C_10;
      end
      MAC_C_10 : begin
        fsm_output = 21'b000001000000000000000;
        state_var_NS = MAC_C_11;
      end
      MAC_C_11 : begin
        fsm_output = 21'b000010000000000000000;
        state_var_NS = MAC_C_12;
      end
      MAC_C_12 : begin
        fsm_output = 21'b000100000000000000000;
        state_var_NS = MAC_C_13;
      end
      MAC_C_13 : begin
        fsm_output = 21'b001000000000000000000;
        state_var_NS = MAC_C_14;
      end
      MAC_C_14 : begin
        fsm_output = 21'b010000000000000000000;
        state_var_NS = MAC_C_0;
      end
      main_C_2 : begin
        fsm_output = 21'b100000000000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 21'b000000000000000000001;
        state_var_NS = regs_vinit_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= core_rlp_C_0;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir_core
// ------------------------------------------------------------------


module fir_core (
  clk, rst, coeffs_rsc_z, coeffs_rsc_triosy_lz, in1_rsc_dat, in1_rsc_triosy_lz, out1_rsc_dat,
      out1_rsc_triosy_lz, regs_rsci_adra_d, regs_rsci_wea_d, regs_rsci_da_d, regs_rsci_rea_d,
      regs_rsci_qa_d, regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d, regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d
);
  input clk;
  input rst;
  input [511:0] coeffs_rsc_z;
  output coeffs_rsc_triosy_lz;
  input [15:0] in1_rsc_dat;
  output in1_rsc_triosy_lz;
  output [15:0] out1_rsc_dat;
  output out1_rsc_triosy_lz;
  output [9:0] regs_rsci_adra_d;
  output [1:0] regs_rsci_wea_d;
  output [15:0] regs_rsci_da_d;
  output [1:0] regs_rsci_rea_d;
  input [31:0] regs_rsci_qa_d;
  output [1:0] regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d;
  output [1:0] regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d;


  // Interconnect Declarations
  wire [511:0] coeffs_rsci_d;
  wire [15:0] in1_rsci_idat;
  reg [15:0] out1_rsci_idat;
  wire [20:0] fsm_output;
  wire [4:0] MAC_6_else_acc_tmp;
  wire [5:0] nl_MAC_6_else_acc_tmp;
  wire [5:0] MAC_6_acc_2_tmp;
  wire [6:0] nl_MAC_6_acc_2_tmp;
  wire or_dcpl_9;
  wire or_dcpl_16;
  wire or_dcpl_49;
  wire or_dcpl_63;
  wire or_dcpl_65;
  wire or_dcpl_70;
  wire or_dcpl_77;
  wire or_dcpl_78;
  wire or_dcpl_81;
  wire or_dcpl_84;
  wire or_dcpl_94;
  wire or_dcpl_102;
  wire or_tmp_39;
  wire or_tmp_81;
  wire or_tmp_100;
  wire [4:0] wptr_4_0_10_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_9_lpi_2_dfm_1;
  reg [4:0] wptr_4_0_1_sva_2;
  wire [4:0] wptr_4_0_3_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_lpi_2_dfm_mx0w1;
  reg [4:0] wptr_4_0_1_sva;
  reg MAC_MAC_nor_14_itm;
  reg regs_regs_nor_itm;
  wire [4:0] wptr_4_0_2_lpi_2_dfm_1;
  reg [4:0] regs_acc_itm;
  wire [4:0] wptr_4_0_11_lpi_2_dfm_mx0w1;
  wire [4:0] wptr_4_0_12_lpi_2_dfm_mx0w2;
  reg reg_MAC_acc_psp_ftd;
  reg reg_MAC_acc_psp_ftd_1;
  reg reg_MAC_i_5_0_7_ftd;
  wire [4:0] MAC_4_acc_2_sdt;
  wire [5:0] nl_MAC_4_acc_2_sdt;
  reg reg_MAC_10_acc_2_psp_ftd;
  reg [3:0] reg_MAC_10_acc_2_psp_ftd_1;
  wire or_133_seb;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire MAC_i_or_cse;
  wire reg_out1_out1_and_cse;
  wire [4:0] MAC_2_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_2_acc_2_psp_sva_1;
  wire [4:0] MAC_3_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_3_acc_2_psp_sva_1;
  wire [4:0] MAC_1_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_1_acc_2_psp_sva_1;
  wire [4:0] MAC_5_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_5_acc_2_psp_sva_1;
  wire or_131_cse;
  wire regs_regs_or_rmff;
  reg [4:0] wptr_4_0_12_lpi_2_dfm;
  reg [4:0] wptr_4_0_lpi_2_dfm;
  wire regs_acc_itm_mx0c1;
  wire or_233_tmp;
  wire [4:0] z_out;
  wire [5:0] nl_z_out;
  wire [4:0] z_out_3;
  wire [5:0] nl_z_out_3;
  wire [29:0] z_out_4;
  wire signed [31:0] nl_z_out_4;
  wire [29:0] z_out_5;
  wire signed [31:0] nl_z_out_5;
  wire [29:0] z_out_6;
  wire signed [31:0] nl_z_out_6;
  wire [29:0] z_out_7;
  wire signed [31:0] nl_z_out_7;
  wire [29:0] z_out_8;
  wire signed [31:0] nl_z_out_8;
  wire [15:0] z_out_9;
  wire [15:0] z_out_10;
  reg MAC_i_2_sva;
  reg MAC_i_3_sva;
  reg MAC_i_4_sva;
  reg [15:0] MAC_mux_13_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [15:0] MAC_mux_14_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_1_itm;
  reg [15:0] MAC_mux_15_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_2_itm;
  reg [15:0] MAC_mux_17_itm;
  reg [15:0] MAC_mux_18_itm;
  reg [29:0] MAC_acc_14_itm;
  reg [15:0] MAC_mux_19_itm;
  reg [29:0] MAC_8_mul_itm;
  reg [15:0] MAC_mux_20_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_4_itm;
  reg [15:0] MAC_mux_21_itm;
  reg [29:0] MAC_10_mul_itm;
  reg [15:0] MAC_mux_22_itm;
  reg [15:0] MAC_mux_23_itm;
  reg [15:0] MAC_mux_24_itm;
  reg [1:0] MAC_acc_5_itm;
  wire [1:0] MAC_acc_3_psp_sva_1;
  wire [2:0] nl_MAC_acc_3_psp_sva_1;
  wire [4:0] MAC_10_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_10_acc_2_psp_sva_1;
  wire [3:0] MAC_acc_psp_sva_1;
  wire [4:0] nl_MAC_acc_psp_sva_1;
  wire [2:0] MAC_acc_4_psp_sva_1;
  wire [3:0] nl_MAC_acc_4_psp_sva_1;
  wire [29:0] MAC_acc_10_itm_mx0w1;
  wire [30:0] nl_MAC_acc_10_itm_mx0w1;
  wire [29:0] MAC_1_mul_mx0w2;
  wire signed [31:0] nl_MAC_1_mul_mx0w2;
  wire [29:0] acc_32_3_7_sva_1;
  wire [30:0] nl_acc_32_3_7_sva_1;
  wire or_215_tmp;
  wire or_210_tmp;
  reg [31:0] MAC_io_read_coeffs_rsc_cse_sva_511_480;
  reg [351:0] MAC_io_read_coeffs_rsc_cse_sva_479_128;
  reg [63:0] MAC_io_read_coeffs_rsc_cse_sva_127_64;
  wire or_184_cse;
  wire MAC_and_m1c;
  wire MAC_and_m1c_1;
  wire MAC_and_m1c_2;
  wire MAC_and_m1c_3;
  wire [2:0] MAC_mux_66_tmp;
  wire MAC_nor_m1c;
  wire MAC_and_m1c_4;
  wire [1:0] MAC_conc_165_tmp_2_1;
  wire MAC_conc_165_tmp_0;

  wire[4:0] mux_nl;
  wire[0:0] and_278_nl;
  wire[0:0] not_78_nl;
  wire[0:0] or_153_nl;
  wire[29:0] acc_acc_mux_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[29:0] MAC_7_mul_nl;
  wire signed [31:0] nl_MAC_7_mul_nl;
  wire[29:0] MAC_acc_17_nl;
  wire[30:0] nl_MAC_acc_17_nl;
  wire[29:0] MAC_mux_51_nl;
  wire[0:0] acc_or_nl;
  wire[0:0] MAC_not_nl;
  wire[1:0] MAC_i_MAC_i_mux_nl;
  wire[1:0] MAC_acc_5_nl;
  wire[2:0] nl_MAC_acc_5_nl;
  wire[0:0] nor_13_nl;
  wire[0:0] MAC_and_12_nl;
  wire[0:0] MAC_and_13_nl;
  wire[0:0] MAC_and_14_nl;
  wire[0:0] MAC_and_9_nl;
  wire[0:0] MAC_and_10_nl;
  wire[0:0] MAC_and_11_nl;
  wire[0:0] MAC_and_3_nl;
  wire[0:0] MAC_and_4_nl;
  wire[0:0] MAC_and_5_nl;
  wire[0:0] MAC_and_6_nl;
  wire[0:0] MAC_and_7_nl;
  wire[0:0] MAC_and_8_nl;
  wire[0:0] MAC_MAC_nor_14_nl;
  wire[0:0] MAC_MAC_nor_22_nl;
  wire[0:0] MAC_MAC_nor_24_nl;
  wire[0:0] nand_nl;
  wire[4:0] MAC_else_acc_nl;
  wire[5:0] nl_MAC_else_acc_nl;
  wire[4:0] MAC_else_mux_1_nl;
  wire[15:0] MAC_mux_17_nl;
  wire[0:0] MAC_and_23_nl;
  wire[0:0] MAC_and_24_nl;
  wire[0:0] MAC_and_25_nl;
  wire[0:0] MAC_and_26_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_1_nl;
  wire[0:0] MAC_and_2_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_13_nl;
  wire[30:0] nl_MAC_acc_13_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[0:0] MAC_MAC_nor_31_nl;
  wire[0:0] MAC_and_15_nl;
  wire[0:0] MAC_and_16_nl;
  wire[0:0] MAC_and_17_nl;
  wire[0:0] MAC_and_18_nl;
  wire[0:0] MAC_and_19_nl;
  wire[0:0] MAC_and_20_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_acc_12_nl;
  wire[30:0] nl_MAC_acc_12_nl;
  wire[4:0] MAC_10_else_acc_nl;
  wire[5:0] nl_MAC_10_else_acc_nl;
  wire[0:0] MAC_MAC_nor_27_nl;
  wire[0:0] MAC_MAC_nor_13_nl;
  wire[0:0] MAC_MAC_nor_nl;
  wire[0:0] MAC_MAC_nor_29_nl;
  wire[4:0] MAC_9_else_acc_nl;
  wire[5:0] nl_MAC_9_else_acc_nl;
  wire[0:0] MAC_MAC_nor_25_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[4:0] regs_mux1h_1_nl;
  wire[0:0] regs_or_1_nl;
  wire[4:0] regs_mux1h_5_nl;
  wire[0:0] regs_or_2_nl;
  wire[0:0] regs_or_3_nl;
  wire[4:0] regs_mux1h_7_nl;
  wire[4:0] else_mux_1_nl;
  wire[15:0] MAC_mux_52_nl;
  wire[15:0] MAC_mux_53_nl;
  wire[15:0] MAC_mux_54_nl;
  wire[15:0] MAC_mux_55_nl;
  wire[15:0] MAC_mux_56_nl;
  wire[15:0] MAC_mux_57_nl;
  wire[0:0] MAC_and_27_nl;
  wire[0:0] MAC_and_28_nl;
  wire[0:0] MAC_and_29_nl;
  wire[0:0] MAC_and_30_nl;
  wire[0:0] MAC_and_31_nl;
  wire[0:0] MAC_and_32_nl;
  wire[0:0] MAC_and_33_nl;
  wire[0:0] MAC_and_34_nl;
  wire[0:0] MAC_and_39_nl;
  wire[0:0] MAC_and_40_nl;
  wire[0:0] MAC_and_41_nl;
  wire[0:0] MAC_and_42_nl;
  wire[0:0] MAC_and_43_nl;
  wire[0:0] MAC_and_44_nl;
  wire[0:0] MAC_and_45_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0;
  assign nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0 = ~ regs_regs_nor_itm;
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_7_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_7_tr0 = reg_MAC_i_5_0_7_ftd;
  mgc_in_wire_v2 #(.rscid(32'sd1),
  .width(32'sd512)) coeffs_rsci (
      .d(coeffs_rsci_d),
      .z(coeffs_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd2),
  .width(32'sd16)) in1_rsci (
      .dat(in1_rsc_dat),
      .idat(in1_rsci_idat)
    );
  ccs_out_v1 #(.rscid(32'sd3),
  .width(32'sd16)) out1_rsci (
      .idat(out1_rsci_idat),
      .dat(out1_rsc_dat)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) coeffs_rsc_triosy_obj (
      .ld(reg_out1_rsc_triosy_obj_ld_cse),
      .lz(coeffs_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) in1_rsc_triosy_obj (
      .ld(reg_out1_rsc_triosy_obj_ld_cse),
      .lz(in1_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) out1_rsc_triosy_obj (
      .ld(reg_out1_rsc_triosy_obj_ld_cse),
      .lz(out1_rsc_triosy_lz)
    );
  fir_core_core_fsm fir_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .regs_vinit_C_1_tr0(nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0[0:0]),
      .MAC_C_7_tr0(nl_fir_core_core_fsm_inst_MAC_C_7_tr0[0:0])
    );
  assign reg_out1_out1_and_cse = (fsm_output[12]) & reg_MAC_i_5_0_7_ftd;
  assign or_131_cse = (fsm_output[3]) | (fsm_output[1]);
  assign or_233_tmp = regs_acc_itm_mx0c1 | ((~ MAC_MAC_nor_14_itm) & (fsm_output[20]));
  assign MAC_i_or_cse = (fsm_output[4]) | (fsm_output[12]);
  assign or_184_cse = (fsm_output[7]) | (fsm_output[9]);
  assign or_210_tmp = (fsm_output[13]) | (fsm_output[10]) | or_dcpl_81 | or_dcpl_77;
  assign or_215_tmp = or_dcpl_16 | or_dcpl_49 | or_dcpl_94 | or_dcpl_63;
  assign nl_MAC_10_else_acc_nl = wptr_4_0_10_lpi_2_dfm_1 + 5'b11111;
  assign MAC_10_else_acc_nl = nl_MAC_10_else_acc_nl[4:0];
  assign MAC_MAC_nor_27_nl = ~((wptr_4_0_10_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_11_lpi_2_dfm_mx0w1 = MUX_v_5_2_2((MAC_10_else_acc_nl), 5'b11111,
      (MAC_MAC_nor_27_nl));
  assign wptr_4_0_12_lpi_2_dfm_mx0w2 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111,
      MAC_MAC_nor_14_itm);
  assign wptr_4_0_9_lpi_2_dfm_1 = MUX_v_5_2_2(wptr_4_0_1_sva_2, 5'b11111, MAC_MAC_nor_14_itm);
  assign nl_MAC_acc_3_psp_sva_1 = conv_u2u_1_2(MAC_acc_psp_sva_1[0]) + 2'b01;
  assign MAC_acc_3_psp_sva_1 = nl_MAC_acc_3_psp_sva_1[1:0];
  assign MAC_MAC_nor_13_nl = ~((wptr_4_0_2_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_3_lpi_2_dfm_1 = MUX_v_5_2_2(z_out, 5'b11111, (MAC_MAC_nor_13_nl));
  assign MAC_MAC_nor_nl = ~((wptr_4_0_1_sva!=5'b00000));
  assign wptr_4_0_2_lpi_2_dfm_1 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111, (MAC_MAC_nor_nl));
  assign nl_MAC_6_else_acc_tmp = wptr_4_0_1_sva + 5'b11111;
  assign MAC_6_else_acc_tmp = nl_MAC_6_else_acc_tmp[4:0];
  assign nl_MAC_3_acc_2_psp_sva_1 = MAC_2_acc_2_psp_sva_1 + 5'b00001;
  assign MAC_3_acc_2_psp_sva_1 = nl_MAC_3_acc_2_psp_sva_1[4:0];
  assign nl_MAC_2_acc_2_psp_sva_1 = MAC_1_acc_2_psp_sva_1 + 5'b00001;
  assign MAC_2_acc_2_psp_sva_1 = nl_MAC_2_acc_2_psp_sva_1[4:0];
  assign nl_MAC_1_acc_2_psp_sva_1 = ({MAC_i_4_sva , MAC_i_3_sva , MAC_i_2_sva , MAC_acc_5_itm})
      + 5'b00001;
  assign MAC_1_acc_2_psp_sva_1 = nl_MAC_1_acc_2_psp_sva_1[4:0];
  assign nl_MAC_10_acc_2_psp_sva_1 = ({(MAC_6_acc_2_tmp[4]) , (MAC_acc_psp_sva_1[3:2])
      , MAC_acc_3_psp_sva_1}) + 5'b00001;
  assign MAC_10_acc_2_psp_sva_1 = nl_MAC_10_acc_2_psp_sva_1[4:0];
  assign MAC_MAC_nor_29_nl = ~((wptr_4_0_12_lpi_2_dfm_mx0w2!=5'b00000));
  assign wptr_4_0_lpi_2_dfm_mx0w1 = MUX_v_5_2_2(z_out, 5'b11111, (MAC_MAC_nor_29_nl));
  assign nl_MAC_9_else_acc_nl = wptr_4_0_9_lpi_2_dfm_1 + 5'b11111;
  assign MAC_9_else_acc_nl = nl_MAC_9_else_acc_nl[4:0];
  assign MAC_MAC_nor_25_nl = ~((wptr_4_0_9_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_10_lpi_2_dfm_1 = MUX_v_5_2_2((MAC_9_else_acc_nl), 5'b11111, (MAC_MAC_nor_25_nl));
  assign nl_MAC_6_acc_2_tmp = conv_u2s_5_6(MAC_5_acc_2_psp_sva_1) + 6'b000001;
  assign MAC_6_acc_2_tmp = nl_MAC_6_acc_2_tmp[5:0];
  assign nl_MAC_5_acc_2_psp_sva_1 = ({reg_MAC_10_acc_2_psp_ftd , reg_MAC_10_acc_2_psp_ftd_1})
      + 5'b00001;
  assign MAC_5_acc_2_psp_sva_1 = nl_MAC_5_acc_2_psp_sva_1[4:0];
  assign nl_MAC_acc_psp_sva_1 = conv_u2u_3_4({1'b1 , (signext_2_1(~ (MAC_6_acc_2_tmp[0])))})
      + 4'b0001;
  assign MAC_acc_psp_sva_1 = nl_MAC_acc_psp_sva_1[3:0];
  assign nl_MAC_acc_4_psp_sva_1 = conv_u2u_2_3(signext_2_1(z_out_3[0])) + 3'b001;
  assign MAC_acc_4_psp_sva_1 = nl_MAC_acc_4_psp_sva_1[2:0];
  assign nl_MAC_acc_10_itm_mx0w1 = MAC_8_mul_itm + MAC_2_mul_itm;
  assign MAC_acc_10_itm_mx0w1 = nl_MAC_acc_10_itm_mx0w1[29:0];
  assign nl_MAC_1_mul_mx0w2 = $signed(MAC_slc_regs_rsci_qa_d_15_0_4_itm) * $signed(MAC_mux_21_itm);
  assign MAC_1_mul_mx0w2 = nl_MAC_1_mul_mx0w2[29:0];
  assign nl_MAC_acc_9_nl = MAC_8_mul_itm + MAC_acc_14_itm;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_acc_32_3_7_sva_1 = MAC_10_mul_itm + (MAC_acc_9_nl);
  assign acc_32_3_7_sva_1 = nl_acc_32_3_7_sva_1[29:0];
  assign or_dcpl_9 = (fsm_output[14:13]!=2'b00);
  assign or_dcpl_16 = or_dcpl_9 | (fsm_output[15]);
  assign or_dcpl_49 = (fsm_output[17:16]!=2'b00);
  assign or_dcpl_63 = (fsm_output[9:8]!=2'b00);
  assign or_dcpl_65 = (fsm_output[7]) | (fsm_output[11]) | or_dcpl_63;
  assign or_dcpl_70 = (fsm_output[11]) | (fsm_output[8]);
  assign or_dcpl_77 = or_dcpl_70 | (fsm_output[9]);
  assign or_dcpl_78 = (fsm_output[10]) | (fsm_output[12]);
  assign or_dcpl_81 = (fsm_output[12]) | (fsm_output[7]);
  assign or_dcpl_84 = or_dcpl_9 | (fsm_output[15]) | (fsm_output[10]);
  assign or_dcpl_94 = or_dcpl_78 | (fsm_output[11]);
  assign or_dcpl_102 = (fsm_output[12:11]!=2'b00) | or_dcpl_63;
  assign or_tmp_39 = (fsm_output[6]) | (fsm_output[8]);
  assign or_tmp_81 = (fsm_output[11:10]!=2'b00) | or_dcpl_63;
  assign or_tmp_100 = (fsm_output[10]) | (fsm_output[7]) | (fsm_output[11]) | or_dcpl_63;
  assign regs_acc_itm_mx0c1 = regs_regs_nor_itm & (fsm_output[2]);
  assign nl_MAC_4_acc_2_sdt = MAC_3_acc_2_psp_sva_1 + 5'b00001;
  assign MAC_4_acc_2_sdt = nl_MAC_4_acc_2_sdt[4:0];
  assign regs_regs_or_rmff = (fsm_output[11:5]!=7'b0000000);
  assign or_133_seb = (fsm_output[10:5]!=6'b000000);
  assign regs_or_1_nl = (fsm_output[8]) | (fsm_output[10]);
  assign regs_mux1h_1_nl = MUX1HOT_v_5_5_2(wptr_4_0_2_lpi_2_dfm_1, wptr_4_0_10_lpi_2_dfm_1,
      wptr_4_0_12_lpi_2_dfm, wptr_4_0_1_sva, wptr_4_0_1_sva_2, {(fsm_output[5]) ,
      (fsm_output[6]) , (fsm_output[7]) , (regs_or_1_nl) , (fsm_output[9])});
  assign regs_or_2_nl = (fsm_output[5]) | (fsm_output[7]);
  assign regs_or_3_nl = (fsm_output[10:9]!=2'b00);
  assign regs_mux1h_5_nl = MUX1HOT_v_5_6_2(regs_acc_itm, wptr_4_0_1_sva, wptr_4_0_9_lpi_2_dfm_1,
      wptr_4_0_10_lpi_2_dfm_1, wptr_4_0_12_lpi_2_dfm, wptr_4_0_lpi_2_dfm, {or_131_cse
      , (regs_or_2_nl) , (fsm_output[6]) , (fsm_output[8]) , (regs_or_3_nl) , (fsm_output[11])});
  assign regs_rsci_adra_d = {(regs_mux1h_1_nl) , (regs_mux1h_5_nl)};
  assign regs_rsci_wea_d = {1'b0 , or_131_cse};
  assign regs_rsci_rea_d = {or_133_seb , regs_regs_or_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d = {or_133_seb , regs_regs_or_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d = {1'b0 , or_131_cse};
  assign regs_rsci_da_d = MUX_v_16_2_2(16'b0000000000000000, in1_rsci_idat, (fsm_output[3]));
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      regs_regs_nor_itm <= 1'b0;
      wptr_4_0_1_sva <= 5'b00000;
      MAC_i_3_sva <= 1'b0;
      MAC_io_read_coeffs_rsc_cse_sva_511_480 <= 32'b00000000000000000000000000000000;
      MAC_io_read_coeffs_rsc_cse_sva_127_64 <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
      MAC_MAC_nor_14_itm <= 1'b0;
      wptr_4_0_1_sva_2 <= 5'b00000;
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
      reg_MAC_10_acc_2_psp_ftd_1 <= 4'b0000;
      reg_MAC_acc_psp_ftd <= 1'b0;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      regs_regs_nor_itm <= ~((regs_acc_itm!=5'b00000));
      wptr_4_0_1_sva <= MUX1HOT_v_5_5_2(regs_acc_itm, wptr_4_0_11_lpi_2_dfm_mx0w1,
          wptr_4_0_12_lpi_2_dfm_mx0w2, wptr_4_0_9_lpi_2_dfm_1, wptr_4_0_1_sva, {(fsm_output[4])
          , or_tmp_39 , (fsm_output[7]) , (fsm_output[10]) , (or_153_nl)});
      MAC_i_3_sva <= fsm_output[19];
      MAC_io_read_coeffs_rsc_cse_sva_511_480 <= coeffs_rsci_d[511:480];
      MAC_io_read_coeffs_rsc_cse_sva_127_64 <= coeffs_rsci_d[127:64];
      MAC_MAC_nor_14_itm <= MUX1HOT_s_1_4_2((MAC_MAC_nor_14_nl), (MAC_MAC_nor_22_nl),
          (MAC_MAC_nor_24_nl), (nand_nl), {(fsm_output[5]) , or_tmp_39 , or_184_cse
          , (fsm_output[12])});
      wptr_4_0_1_sva_2 <= MUX_v_5_2_2((MAC_else_acc_nl), wptr_4_0_9_lpi_2_dfm_1,
          fsm_output[8]);
      MAC_2_mul_itm <= MUX1HOT_v_30_5_2(z_out_4, z_out_5, (MAC_acc_7_nl), (MAC_acc_13_nl),
          (MAC_acc_11_nl), {(fsm_output[6]) , (fsm_output[9]) , (fsm_output[10])
          , (fsm_output[15]) , (fsm_output[18])});
      reg_MAC_10_acc_2_psp_ftd_1 <= MUX_v_4_2_2((MAC_4_acc_2_sdt[3:0]), ({(MAC_10_acc_2_psp_sva_1[3:2])
          , 1'b1 , (MAC_10_acc_2_psp_sva_1[0])}), fsm_output[6]);
      reg_MAC_acc_psp_ftd <= MAC_acc_psp_sva_1[3];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= acc_32_3_7_sva_1[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_acc_itm <= 5'b11111;
    end
    else if ( (fsm_output[1]) | regs_acc_itm_mx0c1 | (fsm_output[20]) ) begin
      regs_acc_itm <= MUX_v_5_2_2(5'b00000, (mux_nl), (not_78_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_4_sva <= 1'b0;
      MAC_i_2_sva <= 1'b0;
    end
    else if ( MAC_i_or_cse ) begin
      MAC_i_4_sva <= reg_MAC_10_acc_2_psp_ftd & (fsm_output[12]);
      MAC_i_2_sva <= reg_MAC_acc_psp_ftd_1 & (fsm_output[12]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_14_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[4]) | (fsm_output[19]) | (fsm_output[16]) | (fsm_output[12])
        ) begin
      MAC_acc_14_itm <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_acc_mux_nl),
          (MAC_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_5_itm <= 2'b00;
    end
    else if ( (fsm_output[6]) | (fsm_output[7]) | (fsm_output[5]) | (fsm_output[2])
        | (fsm_output[1]) | (fsm_output[20]) | (fsm_output[4]) | (fsm_output[3])
        | (fsm_output[0]) ) begin
      MAC_acc_5_itm <= MUX_v_2_2_2(2'b00, (MAC_i_MAC_i_mux_nl), (nor_13_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_14_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_9 | (fsm_output[12]) | (fsm_output[6]) | or_dcpl_65) ) begin
      MAC_mux_14_itm <= MUX1HOT_v_16_4_2((coeffs_rsci_d[47:32]), (coeffs_rsci_d[255:240]),
          (coeffs_rsci_d[463:448]), (regs_rsci_qa_d[31:16]), {(MAC_and_12_nl) , (MAC_and_13_nl)
          , (MAC_and_14_nl) , (fsm_output[10])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_15_itm <= 16'b0000000000000000;
    end
    else if ( ~((fsm_output[10]) | (fsm_output[6]) | (fsm_output[7]) | or_dcpl_70)
        ) begin
      MAC_mux_15_itm <= MUX1HOT_v_16_4_2((coeffs_rsci_d[63:48]), (coeffs_rsci_d[271:256]),
          (coeffs_rsci_d[479:464]), (regs_rsci_qa_d[31:16]), {(MAC_and_9_nl) , (MAC_and_10_nl)
          , (MAC_and_11_nl) , (fsm_output[9])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_io_read_coeffs_rsc_cse_sva_479_128 <= 352'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ (fsm_output[6]) ) begin
      MAC_io_read_coeffs_rsc_cse_sva_479_128 <= coeffs_rsci_d[479:128];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_13_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[5]) | (fsm_output[12]) | (fsm_output[6]) | (fsm_output[8])
        ) begin
      MAC_mux_13_itm <= MUX1HOT_v_16_8_2((coeffs_rsci_d[31:16]), (coeffs_rsci_d[239:224]),
          (coeffs_rsci_d[447:432]), (MAC_io_read_coeffs_rsc_cse_sva_127_64[15:0]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[159:144]), (MAC_io_read_coeffs_rsc_cse_sva_511_480[15:0]),
          (regs_rsci_qa_d[31:16]), (regs_rsci_qa_d[15:0]), {(MAC_and_3_nl) , (MAC_and_4_nl)
          , (MAC_and_5_nl) , (MAC_and_6_nl) , (MAC_and_7_nl) , (MAC_and_8_nl) , (fsm_output[8])
          , (fsm_output[12])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_12_lpi_2_dfm <= 5'b00000;
    end
    else if ( (fsm_output[5]) | (fsm_output[7]) | (fsm_output[9]) ) begin
      wptr_4_0_12_lpi_2_dfm <= MUX1HOT_v_5_3_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_lpi_2_dfm_mx0w1,
          wptr_4_0_12_lpi_2_dfm_mx0w2, {(fsm_output[5]) , (fsm_output[7]) , (fsm_output[9])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_21_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_78 | (fsm_output[6]) | or_dcpl_77) ) begin
      MAC_mux_21_itm <= MUX1HOT_v_16_5_2((MAC_mux_17_nl), (MAC_io_read_coeffs_rsc_cse_sva_479_128[223:208]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[239:224]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[31:16]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[47:32]), {(fsm_output[5]) , (MAC_and_23_nl)
          , (MAC_and_24_nl) , (MAC_and_25_nl) , (MAC_and_26_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_17_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_84 | or_dcpl_81 | or_dcpl_63) ) begin
      MAC_mux_17_itm <= MUX1HOT_v_16_4_2((MAC_io_read_coeffs_rsc_cse_sva_127_64[31:16]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[175:160]), (MAC_io_read_coeffs_rsc_cse_sva_511_480[31:16]),
          (regs_rsci_qa_d[31:16]), {(MAC_and_nl) , (MAC_and_1_nl) , (MAC_and_2_nl)
          , (fsm_output[11])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_20_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_9 | or_dcpl_78 | or_dcpl_65) ) begin
      MAC_mux_20_itm <= z_out_9;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_19_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_210_tmp ) begin
      MAC_mux_19_itm <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_479_128[207:192]),
          (MAC_io_read_coeffs_rsc_cse_sva_127_64[63:48]), MAC_MAC_nor_31_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_18_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_100 ) begin
      MAC_mux_18_itm <= z_out_10;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_4_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_dcpl_94 ) begin
      MAC_slc_regs_rsci_qa_d_15_0_4_itm <= regs_rsci_qa_d[15:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= 16'b0000000000000000;
    end
    else if ( ~((fsm_output[13:12]!=2'b00) | or_dcpl_70) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= regs_rsci_qa_d[15:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_24_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_215_tmp ) begin
      MAC_mux_24_itm <= MUX1HOT_v_16_6_2((MAC_io_read_coeffs_rsc_cse_sva_479_128[79:64]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[95:80]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[271:256]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[287:272]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[335:320]),
          (MAC_io_read_coeffs_rsc_cse_sva_479_128[351:336]), {(MAC_and_15_nl) , (MAC_and_16_nl)
          , (MAC_and_17_nl) , (MAC_and_18_nl) , (MAC_and_19_nl) , (MAC_and_20_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_23_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_16 | (fsm_output[16]) | (fsm_output[10]) | or_dcpl_102) )
        begin
      MAC_mux_23_itm <= z_out_10;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_22_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_84 | or_dcpl_102) ) begin
      MAC_mux_22_itm <= z_out_9;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_8_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[14]) | (fsm_output[16]) | (fsm_output[7]) | (fsm_output[11])
        ) begin
      MAC_8_mul_itm <= MUX1HOT_v_30_4_2((MAC_acc_8_nl), (MAC_acc_6_nl), z_out_5,
          (MAC_acc_12_nl), {(fsm_output[7]) , (fsm_output[11]) , (fsm_output[14])
          , (fsm_output[16])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_2_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_9 | (fsm_output[16:15]!=2'b00) | or_dcpl_78 | (fsm_output[9]))
        ) begin
      MAC_slc_regs_rsci_qa_d_15_0_2_itm <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), or_dcpl_70);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_10_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[8]) | (fsm_output[11]) | (fsm_output[13]) | (fsm_output[17])
        ) begin
      MAC_10_mul_itm <= MUX1HOT_v_30_4_2(z_out_4, MAC_acc_10_itm_mx0w1, MAC_1_mul_mx0w2,
          z_out_8, {(fsm_output[8]) , (fsm_output[11]) , (fsm_output[13]) , (fsm_output[17])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_lpi_2_dfm <= 5'b00000;
    end
    else if ( fsm_output[9] ) begin
      wptr_4_0_lpi_2_dfm <= wptr_4_0_lpi_2_dfm_mx0w1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_10_acc_2_psp_ftd <= 1'b0;
    end
    else if ( ~ or_tmp_81 ) begin
      reg_MAC_10_acc_2_psp_ftd <= MUX1HOT_s_1_3_2((MAC_4_acc_2_sdt[4]), (MAC_10_acc_2_psp_sva_1[4]),
          (z_out_3[4]), {(fsm_output[5]) , (fsm_output[6]) , (fsm_output[7])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_i_5_0_7_ftd <= 1'b0;
    end
    else if ( fsm_output[6] ) begin
      reg_MAC_i_5_0_7_ftd <= MAC_6_acc_2_tmp[5];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_acc_psp_ftd_1 <= 1'b0;
    end
    else if ( ~ or_tmp_81 ) begin
      reg_MAC_acc_psp_ftd_1 <= MUX_s_1_2_2((MAC_acc_psp_sva_1[2]), (MAC_acc_4_psp_sva_1[2]),
          or_tmp_100);
    end
  end
  assign or_153_nl = (fsm_output[18]) | (fsm_output[19]) | (fsm_output[13]) | (fsm_output[14])
      | (fsm_output[15]) | or_dcpl_49 | (fsm_output[12]) | (fsm_output[11]) | (fsm_output[9]);
  assign MAC_MAC_nor_14_nl = ~((wptr_4_0_3_lpi_2_dfm_1!=5'b00000));
  assign MAC_MAC_nor_22_nl = ~((wptr_4_0_11_lpi_2_dfm_mx0w1!=5'b00000));
  assign MAC_MAC_nor_24_nl = ~((wptr_4_0_lpi_2_dfm_mx0w1!=5'b00000));
  assign nand_nl = ~((regs_acc_itm==5'b11111));
  assign MAC_else_mux_1_nl = MUX_v_5_2_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_lpi_2_dfm_mx0w1,
      or_184_cse);
  assign nl_MAC_else_acc_nl = (MAC_else_mux_1_nl) + 5'b11111;
  assign MAC_else_acc_nl = nl_MAC_else_acc_nl[4:0];
  assign nl_MAC_acc_7_nl = z_out_6 + MAC_2_mul_itm;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_13_nl = MAC_8_mul_itm + z_out_7;
  assign MAC_acc_13_nl = nl_MAC_acc_13_nl[29:0];
  assign nl_MAC_acc_11_nl = MAC_10_mul_itm + z_out_6;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign and_278_nl = (fsm_output[20]) & (~ or_233_tmp);
  assign mux_nl = MUX_v_5_2_2(z_out, z_out_3, and_278_nl);
  assign not_78_nl = ~ or_233_tmp;
  assign nl_MAC_7_mul_nl = $signed(MAC_mux_15_itm) * $signed(MAC_mux_18_itm);
  assign MAC_7_mul_nl = nl_MAC_7_mul_nl[29:0];
  assign nl_MAC_acc_14_nl = acc_32_3_7_sva_1 + (MAC_7_mul_nl);
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign MAC_mux_51_nl = MUX_v_30_2_2(MAC_2_mul_itm, MAC_acc_10_itm_mx0w1, fsm_output[19]);
  assign nl_MAC_acc_17_nl = MAC_acc_14_itm + (MAC_mux_51_nl);
  assign MAC_acc_17_nl = nl_MAC_acc_17_nl[29:0];
  assign acc_or_nl = (fsm_output[16]) | (fsm_output[19]);
  assign acc_acc_mux_nl = MUX_v_30_2_2((MAC_acc_14_nl), (MAC_acc_17_nl), acc_or_nl);
  assign MAC_not_nl = ~ (fsm_output[4]);
  assign nl_MAC_acc_5_nl = conv_u2s_1_2(MAC_acc_4_psp_sva_1[0]) + 2'b01;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[1:0];
  assign MAC_i_MAC_i_mux_nl = MUX_v_2_2_2(MAC_acc_3_psp_sva_1, (MAC_acc_5_nl), fsm_output[7]);
  assign nor_13_nl = ~((fsm_output[0]) | (fsm_output[3]) | (fsm_output[4]) | (fsm_output[20])
      | (fsm_output[1]) | (fsm_output[2]) | (fsm_output[5]));
  assign MAC_and_12_nl = (MAC_2_acc_2_psp_sva_1==5'b00010) & (fsm_output[5]);
  assign MAC_and_13_nl = (MAC_2_acc_2_psp_sva_1==5'b01111) & (fsm_output[5]);
  assign MAC_and_14_nl = (MAC_2_acc_2_psp_sva_1==5'b11100) & (fsm_output[5]);
  assign MAC_and_9_nl = (MAC_3_acc_2_psp_sva_1==5'b00011) & (fsm_output[5]);
  assign MAC_and_10_nl = (MAC_3_acc_2_psp_sva_1==5'b10000) & (fsm_output[5]);
  assign MAC_and_11_nl = (MAC_3_acc_2_psp_sva_1==5'b11101) & (fsm_output[5]);
  assign MAC_and_3_nl = (MAC_1_acc_2_psp_sva_1==5'b00001) & (fsm_output[5]);
  assign MAC_and_4_nl = (MAC_1_acc_2_psp_sva_1==5'b01110) & (fsm_output[5]);
  assign MAC_and_5_nl = (MAC_1_acc_2_psp_sva_1==5'b11011) & (fsm_output[5]);
  assign MAC_and_6_nl = (reg_MAC_10_acc_2_psp_ftd_1[2]) & (~(reg_MAC_10_acc_2_psp_ftd
      | (reg_MAC_10_acc_2_psp_ftd_1[3]) | (reg_MAC_10_acc_2_psp_ftd_1[1]) | (reg_MAC_10_acc_2_psp_ftd_1[0])))
      & (fsm_output[6]);
  assign MAC_and_7_nl = reg_MAC_10_acc_2_psp_ftd & (reg_MAC_10_acc_2_psp_ftd_1==4'b0001)
      & (fsm_output[6]);
  assign MAC_and_8_nl = reg_MAC_10_acc_2_psp_ftd & (reg_MAC_10_acc_2_psp_ftd_1==4'b1110)
      & (fsm_output[6]);
  assign MAC_mux_17_nl = MUX_v_16_27_2x3x7x11x15x19x23((coeffs_rsci_d[15:0]), (coeffs_rsci_d[31:16]),
      (coeffs_rsci_d[47:32]), (coeffs_rsci_d[79:64]), (coeffs_rsci_d[95:80]), (coeffs_rsci_d[111:96]),
      (coeffs_rsci_d[143:128]), (coeffs_rsci_d[159:144]), (coeffs_rsci_d[175:160]),
      (coeffs_rsci_d[207:192]), (coeffs_rsci_d[223:208]), (coeffs_rsci_d[239:224]),
      (coeffs_rsci_d[271:256]), (coeffs_rsci_d[287:272]), (coeffs_rsci_d[303:288]),
      (coeffs_rsci_d[335:320]), (coeffs_rsci_d[351:336]), (coeffs_rsci_d[367:352]),
      (coeffs_rsci_d[399:384]), (coeffs_rsci_d[415:400]), (coeffs_rsci_d[431:416]),
      {MAC_i_4_sva , MAC_i_3_sva , MAC_i_2_sva , MAC_acc_5_itm});
  assign MAC_and_23_nl = reg_MAC_acc_psp_ftd_1 & (MAC_acc_5_itm[0]) & (~(reg_MAC_acc_psp_ftd
      | (MAC_acc_5_itm[1]))) & (fsm_output[7]);
  assign MAC_and_24_nl = reg_MAC_acc_psp_ftd_1 & (MAC_acc_5_itm[1]) & (~(reg_MAC_acc_psp_ftd
      | (MAC_acc_5_itm[0]))) & (fsm_output[7]);
  assign MAC_and_25_nl = reg_MAC_acc_psp_ftd & (MAC_acc_5_itm[0]) & (~(reg_MAC_acc_psp_ftd_1
      | (MAC_acc_5_itm[1]))) & (fsm_output[7]);
  assign MAC_and_26_nl = reg_MAC_acc_psp_ftd & (MAC_acc_5_itm[1]) & (~(reg_MAC_acc_psp_ftd_1
      | (MAC_acc_5_itm[0]))) & (fsm_output[7]);
  assign MAC_and_nl = (MAC_5_acc_2_psp_sva_1==5'b00101) & (fsm_output[6]);
  assign MAC_and_1_nl = (MAC_5_acc_2_psp_sva_1==5'b10010) & (fsm_output[6]);
  assign MAC_and_2_nl = (MAC_5_acc_2_psp_sva_1==5'b11111) & (fsm_output[6]);
  assign MAC_MAC_nor_31_nl = ~((MAC_6_acc_2_tmp[0]) | or_210_tmp);
  assign MAC_and_15_nl = (MAC_acc_4_psp_sva_1[2]) & (~((z_out_3[4]) | (MAC_acc_4_psp_sva_1[0])))
      & (~ or_215_tmp);
  assign MAC_and_16_nl = (MAC_acc_4_psp_sva_1[2]) & (MAC_acc_4_psp_sva_1[0]) & (~
      (z_out_3[4])) & (~ or_215_tmp);
  assign MAC_and_17_nl = (z_out_3[4]) & (~((MAC_acc_4_psp_sva_1[2]) | (MAC_acc_4_psp_sva_1[0])))
      & (~ or_215_tmp);
  assign MAC_and_18_nl = (z_out_3[4]) & (MAC_acc_4_psp_sva_1[0]) & (~ (MAC_acc_4_psp_sva_1[2]))
      & (~ or_215_tmp);
  assign MAC_and_19_nl = (z_out_3[4]) & (MAC_acc_4_psp_sva_1[2]) & (~ (MAC_acc_4_psp_sva_1[0]))
      & (~ or_215_tmp);
  assign MAC_and_20_nl = (z_out_3[4]) & (MAC_acc_4_psp_sva_1[2]) & (MAC_acc_4_psp_sva_1[0])
      & (~ or_215_tmp);
  assign nl_MAC_acc_8_nl = MAC_1_mul_mx0w2 + MAC_2_mul_itm;
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_acc_6_nl = MAC_10_mul_itm + z_out_8;
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign nl_MAC_acc_12_nl = MAC_10_mul_itm + z_out_7;
  assign MAC_acc_12_nl = nl_MAC_acc_12_nl[29:0];
  assign regs_mux1h_7_nl = MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1,
      wptr_4_0_12_lpi_2_dfm_mx0w2, {(fsm_output[1]) , (fsm_output[5]) , or_184_cse});
  assign nl_z_out = (regs_mux1h_7_nl) + 5'b11111;
  assign z_out = nl_z_out[4:0];
  assign else_mux_1_nl = MUX_v_5_2_2(regs_acc_itm, ({reg_MAC_10_acc_2_psp_ftd , (reg_MAC_10_acc_2_psp_ftd_1[3:2])
      , 1'b1 , (reg_MAC_10_acc_2_psp_ftd_1[0])}), fsm_output[7]);
  assign nl_z_out_3 = (else_mux_1_nl) + 5'b00001;
  assign z_out_3 = nl_z_out_3[4:0];
  assign MAC_mux_52_nl = MUX_v_16_2_2((regs_rsci_qa_d[31:16]), MAC_slc_regs_rsci_qa_d_15_0_2_itm,
      fsm_output[8]);
  assign nl_z_out_4 = $signed((MAC_mux_52_nl)) * $signed(MAC_mux_13_itm);
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_53_nl = MUX_v_16_2_2(MAC_mux_15_itm, MAC_mux_19_itm, fsm_output[14]);
  assign nl_z_out_5 = $signed(MAC_slc_regs_rsci_qa_d_15_0_1_itm) * $signed((MAC_mux_53_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_54_nl = MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_24_itm, fsm_output[18]);
  assign nl_z_out_6 = $signed(MAC_mux_13_itm) * $signed((MAC_mux_54_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_55_nl = MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_17_itm, fsm_output[16]);
  assign MAC_mux_56_nl = MUX_v_16_2_2(MAC_mux_20_itm, MAC_mux_22_itm, fsm_output[16]);
  assign nl_z_out_7 = $signed((MAC_mux_55_nl)) * $signed((MAC_mux_56_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_57_nl = MUX_v_16_2_2(MAC_mux_17_itm, MAC_mux_23_itm, fsm_output[17]);
  assign nl_z_out_8 = $signed(MAC_slc_regs_rsci_qa_d_15_0_2_itm) * $signed((MAC_mux_57_nl));
  assign z_out_8 = nl_z_out_8[29:0];
  assign MAC_conc_165_tmp_2_1 = MUX_v_2_2_2((MAC_acc_psp_sva_1[3:2]), (reg_MAC_10_acc_2_psp_ftd_1[3:2]),
      fsm_output[7]);
  assign MAC_conc_165_tmp_0 = MUX_s_1_2_2((MAC_acc_psp_sva_1[0]), (reg_MAC_10_acc_2_psp_ftd_1[0]),
      fsm_output[7]);
  assign MAC_and_m1c = (MAC_conc_165_tmp_2_1[0]) & (~((MAC_conc_165_tmp_2_1[1]) |
      MAC_conc_165_tmp_0));
  assign MAC_and_m1c_1 = (MAC_conc_165_tmp_2_1[0]) & MAC_conc_165_tmp_0 & (~ (MAC_conc_165_tmp_2_1[1]));
  assign MAC_and_m1c_2 = (MAC_conc_165_tmp_2_1[1]) & (~((MAC_conc_165_tmp_2_1[0])
      | MAC_conc_165_tmp_0));
  assign MAC_and_m1c_3 = (MAC_conc_165_tmp_2_1[1]) & MAC_conc_165_tmp_0 & (~ (MAC_conc_165_tmp_2_1[0]));
  assign MAC_and_27_nl = (~ (fsm_output[7])) & MAC_and_m1c;
  assign MAC_and_28_nl = (fsm_output[7]) & MAC_and_m1c;
  assign MAC_and_29_nl = (~ (fsm_output[7])) & MAC_and_m1c_1;
  assign MAC_and_30_nl = (fsm_output[7]) & MAC_and_m1c_1;
  assign MAC_and_31_nl = (~ (fsm_output[7])) & MAC_and_m1c_2;
  assign MAC_and_32_nl = (fsm_output[7]) & MAC_and_m1c_2;
  assign MAC_and_33_nl = (~ (fsm_output[7])) & MAC_and_m1c_3;
  assign MAC_and_34_nl = (fsm_output[7]) & MAC_and_m1c_3;
  assign z_out_9 = MUX1HOT_v_16_8_2((MAC_io_read_coeffs_rsc_cse_sva_479_128[207:192]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[239:224]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[223:208]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[255:240]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[15:0]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[47:32]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[31:16]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[63:48]), {(MAC_and_27_nl) , (MAC_and_28_nl)
      , (MAC_and_29_nl) , (MAC_and_30_nl) , (MAC_and_31_nl) , (MAC_and_32_nl) , (MAC_and_33_nl)
      , (MAC_and_34_nl)});
  assign MAC_mux_66_tmp = MUX_v_3_2_2((MAC_6_acc_2_tmp[2:0]), ({(z_out_3[4]) , (signext_2_1(z_out_3[0]))}),
      fsm_output[7]);
  assign MAC_nor_m1c = ~((MAC_mux_66_tmp!=3'b000));
  assign MAC_and_m1c_4 = (MAC_mux_66_tmp==3'b011);
  assign MAC_and_39_nl = (~ (fsm_output[7])) & MAC_nor_m1c;
  assign MAC_and_40_nl = (fsm_output[7]) & MAC_nor_m1c;
  assign MAC_and_41_nl = (~ (fsm_output[7])) & MAC_and_m1c_4;
  assign MAC_and_42_nl = (fsm_output[7]) & MAC_and_m1c_4;
  assign MAC_and_43_nl = (MAC_mux_66_tmp==3'b100);
  assign MAC_and_44_nl = (MAC_mux_66_tmp==3'b110);
  assign MAC_and_45_nl = (MAC_mux_66_tmp==3'b111);
  assign z_out_10 = MUX1HOT_v_16_7_2((MAC_io_read_coeffs_rsc_cse_sva_479_128[143:128]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[15:0]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[191:176]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_128[63:48]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[271:256]),
      (MAC_io_read_coeffs_rsc_cse_sva_127_64[47:32]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[319:304]),
      {(MAC_and_39_nl) , (MAC_and_40_nl) , (MAC_and_41_nl) , (MAC_and_42_nl) , (MAC_and_43_nl)
      , (MAC_and_44_nl) , (MAC_and_45_nl)});

  function automatic [0:0] MUX1HOT_s_1_3_2;
    input [0:0] input_2;
    input [0:0] input_1;
    input [0:0] input_0;
    input [2:0] sel;
    reg [0:0] result;
  begin
    result = input_0 & {1{sel[0]}};
    result = result | ( input_1 & {1{sel[1]}});
    result = result | ( input_2 & {1{sel[2]}});
    MUX1HOT_s_1_3_2 = result;
  end
  endfunction


  function automatic [0:0] MUX1HOT_s_1_4_2;
    input [0:0] input_3;
    input [0:0] input_2;
    input [0:0] input_1;
    input [0:0] input_0;
    input [3:0] sel;
    reg [0:0] result;
  begin
    result = input_0 & {1{sel[0]}};
    result = result | ( input_1 & {1{sel[1]}});
    result = result | ( input_2 & {1{sel[2]}});
    result = result | ( input_3 & {1{sel[3]}});
    MUX1HOT_s_1_4_2 = result;
  end
  endfunction


  function automatic [15:0] MUX1HOT_v_16_4_2;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [3:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    MUX1HOT_v_16_4_2 = result;
  end
  endfunction


  function automatic [15:0] MUX1HOT_v_16_5_2;
    input [15:0] input_4;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [4:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    result = result | ( input_4 & {16{sel[4]}});
    MUX1HOT_v_16_5_2 = result;
  end
  endfunction


  function automatic [15:0] MUX1HOT_v_16_6_2;
    input [15:0] input_5;
    input [15:0] input_4;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [5:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    result = result | ( input_4 & {16{sel[4]}});
    result = result | ( input_5 & {16{sel[5]}});
    MUX1HOT_v_16_6_2 = result;
  end
  endfunction


  function automatic [15:0] MUX1HOT_v_16_7_2;
    input [15:0] input_6;
    input [15:0] input_5;
    input [15:0] input_4;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [6:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    result = result | ( input_4 & {16{sel[4]}});
    result = result | ( input_5 & {16{sel[5]}});
    result = result | ( input_6 & {16{sel[6]}});
    MUX1HOT_v_16_7_2 = result;
  end
  endfunction


  function automatic [15:0] MUX1HOT_v_16_8_2;
    input [15:0] input_7;
    input [15:0] input_6;
    input [15:0] input_5;
    input [15:0] input_4;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [7:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    result = result | ( input_4 & {16{sel[4]}});
    result = result | ( input_5 & {16{sel[5]}});
    result = result | ( input_6 & {16{sel[6]}});
    result = result | ( input_7 & {16{sel[7]}});
    MUX1HOT_v_16_8_2 = result;
  end
  endfunction


  function automatic [29:0] MUX1HOT_v_30_4_2;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [3:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    MUX1HOT_v_30_4_2 = result;
  end
  endfunction


  function automatic [29:0] MUX1HOT_v_30_5_2;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [4:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    result = result | ( input_4 & {30{sel[4]}});
    MUX1HOT_v_30_5_2 = result;
  end
  endfunction


  function automatic [4:0] MUX1HOT_v_5_3_2;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [2:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    MUX1HOT_v_5_3_2 = result;
  end
  endfunction


  function automatic [4:0] MUX1HOT_v_5_5_2;
    input [4:0] input_4;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [4:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    result = result | ( input_4 & {5{sel[4]}});
    MUX1HOT_v_5_5_2 = result;
  end
  endfunction


  function automatic [4:0] MUX1HOT_v_5_6_2;
    input [4:0] input_5;
    input [4:0] input_4;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [5:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    result = result | ( input_4 & {5{sel[4]}});
    result = result | ( input_5 & {5{sel[5]}});
    MUX1HOT_v_5_6_2 = result;
  end
  endfunction


  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_27_2x3x7x11x15x19x23;
    input [15:0] input_0;
    input [15:0] input_1;
    input [15:0] input_2;
    input [15:0] input_4;
    input [15:0] input_5;
    input [15:0] input_6;
    input [15:0] input_8;
    input [15:0] input_9;
    input [15:0] input_10;
    input [15:0] input_12;
    input [15:0] input_13;
    input [15:0] input_14;
    input [15:0] input_16;
    input [15:0] input_17;
    input [15:0] input_18;
    input [15:0] input_20;
    input [15:0] input_21;
    input [15:0] input_22;
    input [15:0] input_24;
    input [15:0] input_25;
    input [15:0] input_26;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00000 : begin
        result = input_0;
      end
      5'b00001 : begin
        result = input_1;
      end
      5'b00010 : begin
        result = input_2;
      end
      5'b00100 : begin
        result = input_4;
      end
      5'b00101 : begin
        result = input_5;
      end
      5'b00110 : begin
        result = input_6;
      end
      5'b01000 : begin
        result = input_8;
      end
      5'b01001 : begin
        result = input_9;
      end
      5'b01010 : begin
        result = input_10;
      end
      5'b01100 : begin
        result = input_12;
      end
      5'b01101 : begin
        result = input_13;
      end
      5'b01110 : begin
        result = input_14;
      end
      5'b10000 : begin
        result = input_16;
      end
      5'b10001 : begin
        result = input_17;
      end
      5'b10010 : begin
        result = input_18;
      end
      5'b10100 : begin
        result = input_20;
      end
      5'b10101 : begin
        result = input_21;
      end
      5'b10110 : begin
        result = input_22;
      end
      5'b11000 : begin
        result = input_24;
      end
      5'b11001 : begin
        result = input_25;
      end
      default : begin
        result = input_26;
      end
    endcase
    MUX_v_16_27_2x3x7x11x15x19x23 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [29:0] MUX_v_30_2_2;
    input [29:0] input_0;
    input [29:0] input_1;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function automatic [2:0] MUX_v_3_2_2;
    input [2:0] input_0;
    input [2:0] input_1;
    input [0:0] sel;
    reg [2:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_3_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [4:0] MUX_v_5_2_2;
    input [4:0] input_0;
    input [4:0] input_1;
    input [0:0] sel;
    reg [4:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_5_2_2 = result;
  end
  endfunction


  function automatic [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function automatic [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 =  {1'b0, vector};
  end
  endfunction


  function automatic [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 =  {1'b0, vector};
  end
  endfunction


  function automatic [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function automatic [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function automatic [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir
// ------------------------------------------------------------------


module fir (
  clk, rst, coeffs_rsc_z, coeffs_rsc_triosy_lz, in1_rsc_dat, in1_rsc_triosy_lz, out1_rsc_dat,
      out1_rsc_triosy_lz
);
  input clk;
  input rst;
  input [511:0] coeffs_rsc_z;
  output coeffs_rsc_triosy_lz;
  input [15:0] in1_rsc_dat;
  output in1_rsc_triosy_lz;
  output [15:0] out1_rsc_dat;
  output out1_rsc_triosy_lz;


  // Interconnect Declarations
  wire [9:0] regs_rsci_adra_d;
  wire [1:0] regs_rsci_wea_d;
  wire [15:0] regs_rsci_da_d;
  wire [1:0] regs_rsci_rea_d;
  wire [31:0] regs_rsci_qa_d;
  wire [1:0] regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d;
  wire [1:0] regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d;
  wire [15:0] regs_rsc_qb;
  wire regs_rsc_reb;
  wire [15:0] regs_rsc_db;
  wire regs_rsc_web;
  wire [4:0] regs_rsc_adrb;
  wire [15:0] regs_rsc_qa;
  wire regs_rsc_rea;
  wire [15:0] regs_rsc_da;
  wire regs_rsc_wea;
  wire [4:0] regs_rsc_adra;


  // Interconnect Declarations for Component Instantiations 
  wire [31:0] nl_regs_rsci_da_d;
  assign nl_regs_rsci_da_d = {16'b0000000000000000 , regs_rsci_da_d};
  M10K_DP #(.data_width(32'sd16),
  .addr_width(32'sd5),
  .depth(32'sd32)) regs_rsc_comp (
      .clk(clk),
      .adra(regs_rsc_adra),
      .adrb(regs_rsc_adrb),
      .wea(regs_rsc_wea),
      .web(regs_rsc_web),
      .da(regs_rsc_da),
      .db(regs_rsc_db),
      .rea(regs_rsc_rea),
      .reb(regs_rsc_reb),
      .qa(regs_rsc_qa),
      .qb(regs_rsc_qb)
    );
  fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen regs_rsci (
      .qb(regs_rsc_qb),
      .reb(regs_rsc_reb),
      .db(regs_rsc_db),
      .web(regs_rsc_web),
      .adrb(regs_rsc_adrb),
      .qa(regs_rsc_qa),
      .rea(regs_rsc_rea),
      .da(regs_rsc_da),
      .wea(regs_rsc_wea),
      .adra(regs_rsc_adra),
      .adra_d(regs_rsci_adra_d),
      .wea_d(regs_rsci_wea_d),
      .da_d(nl_regs_rsci_da_d[31:0]),
      .rea_d(regs_rsci_rea_d),
      .qa_d(regs_rsci_qa_d),
      .rwportA_rw_ram_ir_internal_RMASK_B_d(regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d),
      .rwportA_rw_ram_ir_internal_WMASK_B_d(regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d)
    );
  fir_core fir_core_inst (
      .clk(clk),
      .rst(rst),
      .coeffs_rsc_z(coeffs_rsc_z),
      .coeffs_rsc_triosy_lz(coeffs_rsc_triosy_lz),
      .in1_rsc_dat(in1_rsc_dat),
      .in1_rsc_triosy_lz(in1_rsc_triosy_lz),
      .out1_rsc_dat(out1_rsc_dat),
      .out1_rsc_triosy_lz(out1_rsc_triosy_lz),
      .regs_rsci_adra_d(regs_rsci_adra_d),
      .regs_rsci_wea_d(regs_rsci_wea_d),
      .regs_rsci_da_d(regs_rsci_da_d),
      .regs_rsci_rea_d(regs_rsci_rea_d),
      .regs_rsci_qa_d(regs_rsci_qa_d),
      .regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d(regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d),
      .regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d(regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d)
    );
endmodule



