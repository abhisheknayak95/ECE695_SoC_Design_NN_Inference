
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
//  Generated date: Wed Nov 10 15:57:16 2021
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
  clk, rst, fsm_output, regs_vinit_C_1_tr0
);
  input clk;
  input rst;
  output [37:0] fsm_output;
  reg [37:0] fsm_output;
  input regs_vinit_C_1_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    core_rlp_C_0 = 6'd0,
    regs_vinit_C_0 = 6'd1,
    regs_vinit_C_1 = 6'd2,
    main_C_0 = 6'd3,
    main_C_1 = 6'd4,
    main_C_2 = 6'd5,
    main_C_3 = 6'd6,
    main_C_4 = 6'd7,
    main_C_5 = 6'd8,
    main_C_6 = 6'd9,
    main_C_7 = 6'd10,
    main_C_8 = 6'd11,
    main_C_9 = 6'd12,
    main_C_10 = 6'd13,
    main_C_11 = 6'd14,
    main_C_12 = 6'd15,
    main_C_13 = 6'd16,
    main_C_14 = 6'd17,
    main_C_15 = 6'd18,
    main_C_16 = 6'd19,
    main_C_17 = 6'd20,
    main_C_18 = 6'd21,
    main_C_19 = 6'd22,
    main_C_20 = 6'd23,
    main_C_21 = 6'd24,
    main_C_22 = 6'd25,
    main_C_23 = 6'd26,
    main_C_24 = 6'd27,
    main_C_25 = 6'd28,
    main_C_26 = 6'd29,
    main_C_27 = 6'd30,
    main_C_28 = 6'd31,
    main_C_29 = 6'd32,
    main_C_30 = 6'd33,
    main_C_31 = 6'd34,
    main_C_32 = 6'd35,
    main_C_33 = 6'd36,
    main_C_34 = 6'd37;

  reg [5:0] state_var;
  reg [5:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      regs_vinit_C_0 : begin
        fsm_output = 38'b00000000000000000000000000000000000010;
        state_var_NS = regs_vinit_C_1;
      end
      regs_vinit_C_1 : begin
        fsm_output = 38'b00000000000000000000000000000000000100;
        if ( regs_vinit_C_1_tr0 ) begin
          state_var_NS = regs_vinit_C_0;
        end
        else begin
          state_var_NS = main_C_0;
        end
      end
      main_C_0 : begin
        fsm_output = 38'b00000000000000000000000000000000001000;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 38'b00000000000000000000000000000000010000;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 38'b00000000000000000000000000000000100000;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 38'b00000000000000000000000000000001000000;
        state_var_NS = main_C_4;
      end
      main_C_4 : begin
        fsm_output = 38'b00000000000000000000000000000010000000;
        state_var_NS = main_C_5;
      end
      main_C_5 : begin
        fsm_output = 38'b00000000000000000000000000000100000000;
        state_var_NS = main_C_6;
      end
      main_C_6 : begin
        fsm_output = 38'b00000000000000000000000000001000000000;
        state_var_NS = main_C_7;
      end
      main_C_7 : begin
        fsm_output = 38'b00000000000000000000000000010000000000;
        state_var_NS = main_C_8;
      end
      main_C_8 : begin
        fsm_output = 38'b00000000000000000000000000100000000000;
        state_var_NS = main_C_9;
      end
      main_C_9 : begin
        fsm_output = 38'b00000000000000000000000001000000000000;
        state_var_NS = main_C_10;
      end
      main_C_10 : begin
        fsm_output = 38'b00000000000000000000000010000000000000;
        state_var_NS = main_C_11;
      end
      main_C_11 : begin
        fsm_output = 38'b00000000000000000000000100000000000000;
        state_var_NS = main_C_12;
      end
      main_C_12 : begin
        fsm_output = 38'b00000000000000000000001000000000000000;
        state_var_NS = main_C_13;
      end
      main_C_13 : begin
        fsm_output = 38'b00000000000000000000010000000000000000;
        state_var_NS = main_C_14;
      end
      main_C_14 : begin
        fsm_output = 38'b00000000000000000000100000000000000000;
        state_var_NS = main_C_15;
      end
      main_C_15 : begin
        fsm_output = 38'b00000000000000000001000000000000000000;
        state_var_NS = main_C_16;
      end
      main_C_16 : begin
        fsm_output = 38'b00000000000000000010000000000000000000;
        state_var_NS = main_C_17;
      end
      main_C_17 : begin
        fsm_output = 38'b00000000000000000100000000000000000000;
        state_var_NS = main_C_18;
      end
      main_C_18 : begin
        fsm_output = 38'b00000000000000001000000000000000000000;
        state_var_NS = main_C_19;
      end
      main_C_19 : begin
        fsm_output = 38'b00000000000000010000000000000000000000;
        state_var_NS = main_C_20;
      end
      main_C_20 : begin
        fsm_output = 38'b00000000000000100000000000000000000000;
        state_var_NS = main_C_21;
      end
      main_C_21 : begin
        fsm_output = 38'b00000000000001000000000000000000000000;
        state_var_NS = main_C_22;
      end
      main_C_22 : begin
        fsm_output = 38'b00000000000010000000000000000000000000;
        state_var_NS = main_C_23;
      end
      main_C_23 : begin
        fsm_output = 38'b00000000000100000000000000000000000000;
        state_var_NS = main_C_24;
      end
      main_C_24 : begin
        fsm_output = 38'b00000000001000000000000000000000000000;
        state_var_NS = main_C_25;
      end
      main_C_25 : begin
        fsm_output = 38'b00000000010000000000000000000000000000;
        state_var_NS = main_C_26;
      end
      main_C_26 : begin
        fsm_output = 38'b00000000100000000000000000000000000000;
        state_var_NS = main_C_27;
      end
      main_C_27 : begin
        fsm_output = 38'b00000001000000000000000000000000000000;
        state_var_NS = main_C_28;
      end
      main_C_28 : begin
        fsm_output = 38'b00000010000000000000000000000000000000;
        state_var_NS = main_C_29;
      end
      main_C_29 : begin
        fsm_output = 38'b00000100000000000000000000000000000000;
        state_var_NS = main_C_30;
      end
      main_C_30 : begin
        fsm_output = 38'b00001000000000000000000000000000000000;
        state_var_NS = main_C_31;
      end
      main_C_31 : begin
        fsm_output = 38'b00010000000000000000000000000000000000;
        state_var_NS = main_C_32;
      end
      main_C_32 : begin
        fsm_output = 38'b00100000000000000000000000000000000000;
        state_var_NS = main_C_33;
      end
      main_C_33 : begin
        fsm_output = 38'b01000000000000000000000000000000000000;
        state_var_NS = main_C_34;
      end
      main_C_34 : begin
        fsm_output = 38'b10000000000000000000000000000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 38'b00000000000000000000000000000000000001;
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
  reg out1_rsc_triosy_obj_ld;
  wire [37:0] fsm_output;
  wire regs_regs_nor_tmp;
  wire or_dcpl_36;
  wire or_dcpl_39;
  wire or_dcpl_41;
  wire or_tmp_35;
  wire or_tmp_87;
  wire [4:0] wptr_4_0_27_lpi_1_dfm_1;
  wire [4:0] wptr_4_0_12_lpi_1_dfm_mx0w1;
  wire [4:0] wptr_4_0_9_lpi_1_dfm_mx0w4;
  wire [4:0] wptr_4_0_8_lpi_1_dfm_mx0w2;
  reg [4:0] wptr_4_0_13_sva_1;
  wire [4:0] wptr_4_0_2_lpi_1_dfm_1;
  reg [4:0] regs_acc_itm;
  reg MAC_MAC_nor_32_itm;
  reg [4:0] wptr_4_0_10_lpi_1_dfm;
  reg [4:0] wptr_4_0_25_lpi_1_dfm;
  reg regs_regs_nor_itm;
  wire [4:0] wptr_4_0_1_lpi_1_dfm_1;
  wire [4:0] wptr_4_0_10_lpi_1_dfm_mx0w1;
  reg [495:0] reg_MAC_io_read_coeffs_rsc_ftd;
  wire or_67_seb;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  wire [4:0] MAC_MAC_or_30_cse;
  wire regs_and_cse;
  wire or_64_cse;
  wire regs_regs_or_rmff;
  reg [4:0] wptr_4_0_12_lpi_1_dfm;
  reg [4:0] wptr_4_0_14_lpi_1_dfm;
  reg [4:0] wptr_4_0_17_lpi_1_dfm;
  reg [4:0] wptr_4_0_19_lpi_1_dfm;
  reg [4:0] wptr_4_0_27_lpi_1_dfm;
  wire regs_rsci_adra_d_mx0c9;
  wire regs_rsci_adra_d_mx0c10;
  wire or_193_tmp;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  wire [29:0] z_out_1;
  wire [30:0] nl_z_out_1;
  wire [4:0] z_out_2;
  wire [5:0] nl_z_out_2;
  wire [29:0] z_out_6;
  wire signed [31:0] nl_z_out_6;
  wire [29:0] z_out_7;
  wire signed [31:0] nl_z_out_7;
  wire [29:0] z_out_8;
  wire signed [31:0] nl_z_out_8;
  wire [29:0] z_out_9;
  wire signed [31:0] nl_z_out_9;
  wire [29:0] z_out_10;
  wire signed [31:0] nl_z_out_10;
  wire [29:0] z_out_11;
  wire signed [31:0] nl_z_out_11;
  reg [29:0] MAC_acc_25_itm;
  reg [29:0] MAC_acc_15_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm;
  reg [29:0] MAC_9_mul_itm;
  reg [29:0] MAC_12_mul_itm;
  reg [29:0] MAC_13_mul_itm;
  reg [29:0] MAC_acc_31_itm;
  wire [30:0] nl_MAC_acc_31_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_5;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_8;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_6;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_9;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_7;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_8;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_10;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_9;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_11;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_12;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_itm_13;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_11;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_12;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_itm_13;
  wire wptr_4_0_10_lpi_1_dfm_mx0c1;
  wire wptr_4_0_12_lpi_1_dfm_mx0c3;
  wire wptr_4_0_14_lpi_1_dfm_mx0c0;
  wire MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1;
  wire MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1;
  wire MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1;
  wire MAC_9_mul_itm_mx0c3;
  wire MAC_MAC_nor_64_cse;

  wire[4:0] mux_nl;
  wire[4:0] else_acc_nl;
  wire[5:0] nl_else_acc_nl;
  wire[0:0] and_366_nl;
  wire[0:0] not_153_nl;
  wire[0:0] MAC_MAC_nor_32_nl;
  wire[0:0] MAC_MAC_nor_40_nl;
  wire[0:0] MAC_MAC_nor_42_nl;
  wire[0:0] MAC_MAC_nor_57_nl;
  wire[0:0] or_90_nl;
  wire[29:0] mul_nl;
  wire signed [31:0] nl_mul_nl;
  wire[15:0] MAC_mux1h_19_nl;
  wire[15:0] MAC_mux1h_20_nl;
  wire[29:0] MAC_acc_13_nl;
  wire[30:0] nl_MAC_acc_13_nl;
  wire[29:0] MAC_10_mul_nl;
  wire signed [31:0] nl_MAC_10_mul_nl;
  wire[0:0] MAC_or_nl;
  wire[0:0] MAC_or_25_nl;
  wire[4:0] MAC_else_acc_1_nl;
  wire[5:0] nl_MAC_else_acc_1_nl;
  wire[4:0] MAC_else_mux1h_1_nl;
  wire[0:0] or_242_nl;
  wire[0:0] wptr_or_11_nl;
  wire[29:0] MAC_2_mul_nl;
  wire signed [31:0] nl_MAC_2_mul_nl;
  wire[29:0] MAC_4_mul_nl;
  wire signed [31:0] nl_MAC_4_mul_nl;
  wire[29:0] MAC_acc_16_nl;
  wire[30:0] nl_MAC_acc_16_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [31:0] nl_MAC_3_mul_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[29:0] MAC_8_mul_nl;
  wire signed [31:0] nl_MAC_8_mul_nl;
  wire[29:0] MAC_acc_12_nl;
  wire[30:0] nl_MAC_acc_12_nl;
  wire[29:0] MAC_11_mul_nl;
  wire signed [31:0] nl_MAC_11_mul_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_16_mul_nl;
  wire signed [31:0] nl_MAC_16_mul_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_20_mul_nl;
  wire signed [31:0] nl_MAC_20_mul_nl;
  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_24_mul_nl;
  wire signed [31:0] nl_MAC_24_mul_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_28_mul_nl;
  wire signed [31:0] nl_MAC_28_mul_nl;
  wire[29:0] MAC_acc_18_nl;
  wire[30:0] nl_MAC_acc_18_nl;
  wire[29:0] MAC_32_mul_nl;
  wire signed [31:0] nl_MAC_32_mul_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_acc_30_nl;
  wire[30:0] nl_MAC_acc_30_nl;
  wire[29:0] MAC_acc_26_nl;
  wire[30:0] nl_MAC_acc_26_nl;
  wire[0:0] MAC_or_24_nl;
  wire[4:0] MAC_else_acc_nl;
  wire[5:0] nl_MAC_else_acc_nl;
  wire[4:0] MAC_else_mux_1_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_acc_15_nl;
  wire[30:0] nl_MAC_acc_15_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_acc_28_nl;
  wire[30:0] nl_MAC_acc_28_nl;
  wire[4:0] MAC_2_else_acc_nl;
  wire[5:0] nl_MAC_2_else_acc_nl;
  wire[0:0] MAC_MAC_nor_31_nl;
  wire[4:0] MAC_10_else_acc_nl;
  wire[5:0] nl_MAC_10_else_acc_nl;
  wire[0:0] MAC_MAC_nor_62_nl;
  wire[4:0] MAC_9_else_acc_nl;
  wire[5:0] nl_MAC_9_else_acc_nl;
  wire[0:0] MAC_MAC_nor_60_nl;
  wire[4:0] MAC_12_else_acc_nl;
  wire[5:0] nl_MAC_12_else_acc_nl;
  wire[4:0] MAC_27_else_acc_nl;
  wire[5:0] nl_MAC_27_else_acc_nl;
  wire[4:0] regs_mux1h_1_nl;
  wire[0:0] regs_or_1_nl;
  wire[0:0] regs_or_2_nl;
  wire[0:0] regs_or_3_nl;
  wire[0:0] regs_or_4_nl;
  wire[4:0] regs_mux1h_4_nl;
  wire[0:0] regs_or_5_nl;
  wire[0:0] regs_or_6_nl;
  wire[0:0] regs_or_7_nl;
  wire[0:0] regs_or_8_nl;
  wire[29:0] MAC_mux1h_18_nl;
  wire[0:0] or_239_nl;
  wire[0:0] or_240_nl;
  wire[0:0] or_241_nl;
  wire[29:0] MAC_mux_16_nl;
  wire[15:0] MAC_mux1h_21_nl;
  wire[0:0] MAC_or_27_nl;
  wire[0:0] MAC_or_28_nl;
  wire[15:0] MAC_mux1h_22_nl;
  wire[15:0] MAC_mux_17_nl;
  wire[15:0] MAC_mux_18_nl;
  wire[15:0] MAC_mux_19_nl;
  wire[15:0] MAC_mux_20_nl;
  wire[15:0] MAC_mux_21_nl;
  wire[15:0] MAC_mux_22_nl;
  wire[15:0] MAC_mux_23_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0;
  assign nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0 = ~ regs_regs_nor_itm;
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
      .ld(reg_in1_rsc_triosy_obj_ld_cse),
      .lz(coeffs_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) in1_rsc_triosy_obj (
      .ld(reg_in1_rsc_triosy_obj_ld_cse),
      .lz(in1_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) out1_rsc_triosy_obj (
      .ld(out1_rsc_triosy_obj_ld),
      .lz(out1_rsc_triosy_lz)
    );
  fir_core_core_fsm fir_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .regs_vinit_C_1_tr0(nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0[0:0])
    );
  assign or_64_cse = (fsm_output[1]) | (fsm_output[3]);
  assign regs_and_cse = (fsm_output[2]) & regs_regs_nor_itm;
  assign or_193_tmp = regs_and_cse | ((regs_acc_itm==5'b11111) & (fsm_output[3]));
  assign MAC_else_mux_1_nl = MUX_v_5_2_2(wptr_4_0_10_lpi_1_dfm, wptr_4_0_25_lpi_1_dfm,
      fsm_output[13]);
  assign nl_MAC_else_acc_nl = (MAC_else_mux_1_nl) + 5'b11111;
  assign MAC_else_acc_nl = nl_MAC_else_acc_nl[4:0];
  assign MAC_MAC_or_30_cse = MUX_v_5_2_2((MAC_else_acc_nl), 5'b11111, MAC_MAC_nor_32_itm);
  assign regs_regs_nor_tmp = ~((regs_acc_itm!=5'b00000));
  assign nl_MAC_2_else_acc_nl = wptr_4_0_1_lpi_1_dfm_1 + 5'b11111;
  assign MAC_2_else_acc_nl = nl_MAC_2_else_acc_nl[4:0];
  assign MAC_MAC_nor_31_nl = ~((wptr_4_0_1_lpi_1_dfm_1!=5'b00000));
  assign wptr_4_0_2_lpi_1_dfm_1 = MUX_v_5_2_2((MAC_2_else_acc_nl), 5'b11111, (MAC_MAC_nor_31_nl));
  assign wptr_4_0_1_lpi_1_dfm_1 = MUX_v_5_2_2(z_out_2, 5'b11111, regs_regs_nor_tmp);
  assign nl_MAC_10_else_acc_nl = wptr_4_0_9_lpi_1_dfm_mx0w4 + 5'b11111;
  assign MAC_10_else_acc_nl = nl_MAC_10_else_acc_nl[4:0];
  assign MAC_MAC_nor_62_nl = ~((wptr_4_0_9_lpi_1_dfm_mx0w4!=5'b00000));
  assign wptr_4_0_10_lpi_1_dfm_mx0w1 = MUX_v_5_2_2((MAC_10_else_acc_nl), 5'b11111,
      (MAC_MAC_nor_62_nl));
  assign wptr_4_0_8_lpi_1_dfm_mx0w2 = MUX_v_5_2_2(wptr_4_0_13_sva_1, 5'b11111, MAC_MAC_nor_32_itm);
  assign nl_MAC_9_else_acc_nl = wptr_4_0_8_lpi_1_dfm_mx0w2 + 5'b11111;
  assign MAC_9_else_acc_nl = nl_MAC_9_else_acc_nl[4:0];
  assign MAC_MAC_nor_60_nl = ~((wptr_4_0_8_lpi_1_dfm_mx0w2!=5'b00000));
  assign wptr_4_0_9_lpi_1_dfm_mx0w4 = MUX_v_5_2_2((MAC_9_else_acc_nl), 5'b11111,
      (MAC_MAC_nor_60_nl));
  assign MAC_MAC_nor_64_cse = ~((MAC_MAC_or_30_cse!=5'b00000));
  assign nl_MAC_12_else_acc_nl = MAC_MAC_or_30_cse + 5'b11111;
  assign MAC_12_else_acc_nl = nl_MAC_12_else_acc_nl[4:0];
  assign wptr_4_0_12_lpi_1_dfm_mx0w1 = MUX_v_5_2_2((MAC_12_else_acc_nl), 5'b11111,
      MAC_MAC_nor_64_cse);
  assign nl_MAC_27_else_acc_nl = MAC_MAC_or_30_cse + 5'b11111;
  assign MAC_27_else_acc_nl = nl_MAC_27_else_acc_nl[4:0];
  assign wptr_4_0_27_lpi_1_dfm_1 = MUX_v_5_2_2((MAC_27_else_acc_nl), 5'b11111, MAC_MAC_nor_64_cse);
  assign or_dcpl_36 = (fsm_output[8]) | (fsm_output[10]);
  assign or_dcpl_39 = (fsm_output[14]) | (fsm_output[4]) | (fsm_output[6]);
  assign or_dcpl_41 = (fsm_output[9]) | (fsm_output[11]);
  assign or_tmp_35 = (fsm_output[5]) | (fsm_output[7]) | or_dcpl_41;
  assign or_tmp_87 = (fsm_output[6]) | (fsm_output[12]);
  assign regs_rsci_adra_d_mx0c9 = (fsm_output[14]) | (fsm_output[11]);
  assign regs_rsci_adra_d_mx0c10 = (fsm_output[16]) | (fsm_output[12]);
  assign wptr_4_0_10_lpi_1_dfm_mx0c1 = or_dcpl_39 | or_dcpl_36;
  assign wptr_4_0_12_lpi_1_dfm_mx0c3 = (fsm_output[14]) | (fsm_output[10]) | (fsm_output[12]);
  assign wptr_4_0_14_lpi_1_dfm_mx0c0 = (fsm_output[5]) | (fsm_output[11]);
  assign MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1 = (fsm_output[16]) | (fsm_output[6])
      | (fsm_output[7]) | (fsm_output[10]);
  assign MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1 = (fsm_output[19]) | (fsm_output[8]);
  assign MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1 = (fsm_output[17]) | (fsm_output[9]);
  assign MAC_9_mul_itm_mx0c3 = (fsm_output[31]) | (fsm_output[23]);
  assign regs_regs_or_rmff = (fsm_output[3]) | or_67_seb;
  assign or_67_seb = (fsm_output[18:4]!=15'b000000000000000);
  assign regs_or_1_nl = (fsm_output[4]) | (fsm_output[5]) | (fsm_output[10]);
  assign regs_or_2_nl = (fsm_output[6]) | (fsm_output[9]);
  assign regs_or_3_nl = (fsm_output[7]) | regs_rsci_adra_d_mx0c9;
  assign regs_or_4_nl = (fsm_output[8]) | regs_rsci_adra_d_mx0c10;
  assign regs_mux1h_1_nl = MUX1HOT_v_5_9_2(wptr_4_0_1_lpi_1_dfm_1, wptr_4_0_10_lpi_1_dfm,
      wptr_4_0_12_lpi_1_dfm, wptr_4_0_14_lpi_1_dfm, wptr_4_0_17_lpi_1_dfm, wptr_4_0_19_lpi_1_dfm,
      wptr_4_0_25_lpi_1_dfm, wptr_4_0_27_lpi_1_dfm, wptr_4_0_13_sva_1, {(fsm_output[3])
      , (regs_or_1_nl) , (regs_or_2_nl) , (regs_or_3_nl) , (regs_or_4_nl) , (fsm_output[13])
      , (fsm_output[15]) , (fsm_output[17]) , (fsm_output[18])});
  assign regs_or_5_nl = (fsm_output[4]) | (fsm_output[6]);
  assign regs_or_6_nl = (fsm_output[5]) | (fsm_output[7]);
  assign regs_or_7_nl = (fsm_output[8]) | (fsm_output[13]) | (fsm_output[18]);
  assign regs_or_8_nl = (fsm_output[10]) | regs_rsci_adra_d_mx0c9 | regs_rsci_adra_d_mx0c10;
  assign regs_mux1h_4_nl = MUX1HOT_v_5_8_2(regs_acc_itm, wptr_4_0_8_lpi_1_dfm_mx0w2,
      MAC_MAC_or_30_cse, wptr_4_0_10_lpi_1_dfm, wptr_4_0_13_sva_1, wptr_4_0_12_lpi_1_dfm,
      wptr_4_0_19_lpi_1_dfm, wptr_4_0_14_lpi_1_dfm, {or_64_cse , (regs_or_5_nl) ,
      (regs_or_6_nl) , (regs_or_7_nl) , (fsm_output[9]) , (regs_or_8_nl) , (fsm_output[15])
      , (fsm_output[17])});
  assign regs_rsci_adra_d = {(regs_mux1h_1_nl) , (regs_mux1h_4_nl)};
  assign regs_rsci_wea_d = {1'b0 , or_64_cse};
  assign regs_rsci_rea_d = {regs_regs_or_rmff , or_67_seb};
  assign regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d = {regs_regs_or_rmff , or_67_seb};
  assign regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d = {1'b0 , or_64_cse};
  assign regs_rsci_da_d = MUX_v_16_2_2(16'b0000000000000000, in1_rsci_idat, (fsm_output[3]));
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      regs_regs_nor_itm <= 1'b0;
      MAC_MAC_nor_32_itm <= 1'b0;
    end
    else begin
      out1_rsc_triosy_obj_ld <= fsm_output[36];
      reg_in1_rsc_triosy_obj_ld_cse <= fsm_output[3];
      regs_regs_nor_itm <= regs_regs_nor_tmp;
      MAC_MAC_nor_32_itm <= MUX1HOT_s_1_4_2((MAC_MAC_nor_32_nl), (MAC_MAC_nor_40_nl),
          (MAC_MAC_nor_42_nl), (MAC_MAC_nor_57_nl), {(fsm_output[3]) , (or_90_nl)
          , or_tmp_35 , (fsm_output[13])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( fsm_output[36] ) begin
      out1_rsci_idat <= z_out[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_acc_itm <= 5'b11111;
    end
    else if ( regs_and_cse | (fsm_output[1]) | (fsm_output[3]) ) begin
      regs_acc_itm <= MUX_v_5_2_2(5'b00000, (mux_nl), (not_153_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_13_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[33]) | (fsm_output[19]) | (fsm_output[21]) | (fsm_output[25])
        | (fsm_output[27]) | (fsm_output[29]) | (fsm_output[31]) | (fsm_output[17])
        | (fsm_output[15]) | (fsm_output[23]) | (fsm_output[13]) | (fsm_output[5])
        | (fsm_output[3]) | (fsm_output[7]) ) begin
      MAC_13_mul_itm <= MUX1HOT_v_30_7_2((mul_nl), z_out, z_out_6, (MAC_acc_13_nl),
          z_out_7, z_out_8, z_out_9, {(MAC_or_nl) , (fsm_output[5]) , (MAC_or_25_nl)
          , (fsm_output[13]) , (fsm_output[19]) , (fsm_output[27]) , (fsm_output[31])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_10_lpi_1_dfm <= 5'b00000;
    end
    else if ( (fsm_output[3]) | wptr_4_0_10_lpi_1_dfm_mx0c1 ) begin
      wptr_4_0_10_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_2_lpi_1_dfm_1, wptr_4_0_10_lpi_1_dfm_mx0w1,
          wptr_4_0_10_lpi_1_dfm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_13_sva_1 <= 5'b00000;
    end
    else if ( (fsm_output[14]) | (fsm_output[13]) | (fsm_output[8]) | (fsm_output[3])
        | or_tmp_35 ) begin
      wptr_4_0_13_sva_1 <= MUX1HOT_v_5_3_2((MAC_else_acc_1_nl), wptr_4_0_8_lpi_1_dfm_mx0w2,
          wptr_4_0_9_lpi_1_dfm_mx0w4, {(wptr_or_11_nl) , (fsm_output[8]) , (fsm_output[14])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_12_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[35]) | (fsm_output[18]) | (fsm_output[22]) | (fsm_output[26])
        | (fsm_output[30]) | (fsm_output[34]) | (fsm_output[14]) | (fsm_output[4])
        | (fsm_output[5]) | (fsm_output[6]) | (fsm_output[11]) | (fsm_output[8])
        | (fsm_output[12]) ) begin
      MAC_12_mul_itm <= MUX1HOT_v_30_12_2((MAC_2_mul_nl), (MAC_4_mul_nl), (MAC_acc_16_nl),
          z_out_6, (MAC_acc_14_nl), (MAC_acc_12_nl), (MAC_acc_10_nl), (MAC_acc_8_nl),
          (MAC_acc_6_nl), (MAC_acc_4_nl), (MAC_acc_18_nl), (MAC_acc_nl), {(fsm_output[4])
          , (fsm_output[5]) , (fsm_output[6]) , (MAC_or_24_nl) , (fsm_output[11])
          , (fsm_output[14]) , (fsm_output[18]) , (fsm_output[22]) , (fsm_output[26])
          , (fsm_output[30]) , (fsm_output[34]) , (fsm_output[35])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_12_lpi_1_dfm <= 5'b00000;
    end
    else if ( (fsm_output[7]) | (fsm_output[4]) | or_dcpl_41 | wptr_4_0_12_lpi_1_dfm_mx0c3
        ) begin
      wptr_4_0_12_lpi_1_dfm <= MUX1HOT_v_5_4_2(wptr_4_0_9_lpi_1_dfm_mx0w4, wptr_4_0_12_lpi_1_dfm_mx0w1,
          MAC_MAC_or_30_cse, wptr_4_0_8_lpi_1_dfm_mx0w2, {(fsm_output[4]) , (fsm_output[7])
          , or_dcpl_41 , wptr_4_0_12_lpi_1_dfm_mx0c3});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_14_lpi_1_dfm <= 5'b00000;
    end
    else if ( (fsm_output[15]) | (fsm_output[8]) | wptr_4_0_14_lpi_1_dfm_mx0c0 )
        begin
      wptr_4_0_14_lpi_1_dfm <= MUX1HOT_v_5_3_2(wptr_4_0_12_lpi_1_dfm_mx0w1, wptr_4_0_9_lpi_1_dfm_mx0w4,
          MAC_MAC_or_30_cse, {wptr_4_0_14_lpi_1_dfm_mx0c0 , (fsm_output[8]) , (fsm_output[15])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[5]) | MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1 ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]), (regs_rsci_qa_d[15:0]),
          MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_17_lpi_1_dfm <= 5'b00000;
    end
    else if ( (fsm_output[9]) | or_tmp_87 ) begin
      wptr_4_0_17_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_9_lpi_1_dfm_mx0w4, wptr_4_0_12_lpi_1_dfm_mx0w1,
          fsm_output[9]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_12 <= 16'b0000000000000000;
    end
    else if ( or_tmp_87 | MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1 ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_12 <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_25_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[32]) | (fsm_output[7]) | (fsm_output[12]) ) begin
      MAC_acc_25_itm <= MUX1HOT_v_30_3_2(z_out, z_out_1, (MAC_acc_3_nl), {(fsm_output[7])
          , (fsm_output[12]) , (fsm_output[32])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_11 <= 16'b0000000000000000;
    end
    else if ( (fsm_output[7]) | MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1 ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_11 <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_13 <= 16'b0000000000000000;
    end
    else if ( (fsm_output[18]) | (fsm_output[8]) | (fsm_output[11]) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_13 <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), fsm_output[18]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_15_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[27]) | (fsm_output[15]) | (fsm_output[24]) | (fsm_output[9])
        ) begin
      MAC_acc_15_itm <= MUX1HOT_v_30_4_2((MAC_acc_15_nl), z_out, (MAC_acc_7_nl),
          z_out_1, {(fsm_output[9]) , (fsm_output[15]) , (fsm_output[24]) , (fsm_output[27])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_7 <= 16'b0000000000000000;
    end
    else if ( (fsm_output[14]) | (fsm_output[9]) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_7 <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), fsm_output[14]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_19_lpi_1_dfm <= 5'b00000;
    end
    else if ( (fsm_output[13]) | (fsm_output[10]) ) begin
      wptr_4_0_19_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_9_lpi_1_dfm_mx0w4, MAC_MAC_or_30_cse,
          fsm_output[13]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_9_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[28]) | (fsm_output[20]) | (fsm_output[16]) | (fsm_output[10])
        | MAC_9_mul_itm_mx0c3 ) begin
      MAC_9_mul_itm <= MUX1HOT_v_30_5_2(z_out_11, (MAC_acc_11_nl), (MAC_acc_9_nl),
          z_out, (MAC_acc_5_nl), {(fsm_output[10]) , (fsm_output[16]) , (fsm_output[20])
          , MAC_9_mul_itm_mx0c3 , (fsm_output[28])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_9 <= 16'b0000000000000000;
    end
    else if ( (fsm_output[15]) | (fsm_output[10]) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_9 <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), fsm_output[15]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_5 <= 16'b0000000000000000;
    end
    else if ( (fsm_output[19]) | (fsm_output[11]) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_5 <= MUX_v_16_2_2((regs_rsci_qa_d[15:0]), (regs_rsci_qa_d[31:16]),
          fsm_output[19]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_25_lpi_1_dfm <= 5'b00000;
    end
    else if ( fsm_output[12] ) begin
      wptr_4_0_25_lpi_1_dfm <= wptr_4_0_10_lpi_1_dfm_mx0w1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_6 <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_6 <= regs_rsci_qa_d[15:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_27_lpi_1_dfm <= 5'b00000;
    end
    else if ( fsm_output[13] ) begin
      wptr_4_0_27_lpi_1_dfm <= wptr_4_0_27_lpi_1_dfm_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_8 <= 16'b0000000000000000;
    end
    else if ( fsm_output[13] ) begin
      MAC_slc_regs_rsci_qa_d_15_0_itm_8 <= regs_rsci_qa_d[15:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_8 <= 16'b0000000000000000;
    end
    else if ( fsm_output[13] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_8 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_9 <= 16'b0000000000000000;
    end
    else if ( fsm_output[14] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_9 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_10 <= 16'b0000000000000000;
    end
    else if ( fsm_output[15] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_10 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_12 <= 16'b0000000000000000;
    end
    else if ( fsm_output[16] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_12 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_11 <= 16'b0000000000000000;
    end
    else if ( fsm_output[17] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_11 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_13 <= 16'b0000000000000000;
    end
    else if ( fsm_output[18] ) begin
      MAC_slc_regs_rsci_qa_d_31_16_itm_13 <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_31_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[19] ) begin
      MAC_acc_31_itm <= nl_MAC_acc_31_itm[29:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_io_read_coeffs_rsc_ftd <= 496'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      reg_MAC_io_read_coeffs_rsc_ftd <= coeffs_rsci_d[511:16];
    end
  end
  assign MAC_MAC_nor_32_nl = ~((wptr_4_0_2_lpi_1_dfm_1!=5'b00000));
  assign MAC_MAC_nor_40_nl = ~((wptr_4_0_10_lpi_1_dfm_mx0w1!=5'b00000));
  assign MAC_MAC_nor_42_nl = ~((wptr_4_0_12_lpi_1_dfm_mx0w1!=5'b00000));
  assign MAC_MAC_nor_57_nl = ~((wptr_4_0_27_lpi_1_dfm_1!=5'b00000));
  assign or_90_nl = or_dcpl_39 | or_dcpl_36 | (fsm_output[12]);
  assign nl_else_acc_nl = regs_acc_itm + 5'b00001;
  assign else_acc_nl = nl_else_acc_nl[4:0];
  assign and_366_nl = (fsm_output[3]) & (~ or_193_tmp);
  assign mux_nl = MUX_v_5_2_2(z_out_2, (else_acc_nl), and_366_nl);
  assign not_153_nl = ~ or_193_tmp;
  assign MAC_mux1h_19_nl = MUX1HOT_v_16_3_2(in1_rsci_idat, MAC_slc_regs_rsci_qa_d_15_0_itm_7,
      MAC_slc_regs_rsci_qa_d_31_16_itm_10, {(fsm_output[3]) , (fsm_output[23]) ,
      (fsm_output[25])});
  assign MAC_mux1h_20_nl = MUX1HOT_v_16_3_2((coeffs_rsci_d[15:0]), (reg_MAC_io_read_coeffs_rsc_ftd[319:304]),
      (reg_MAC_io_read_coeffs_rsc_ftd[351:336]), {(fsm_output[3]) , (fsm_output[23])
      , (fsm_output[25])});
  assign nl_mul_nl = $signed((MAC_mux1h_19_nl)) * $signed((MAC_mux1h_20_nl));
  assign mul_nl = nl_mul_nl[29:0];
  assign nl_MAC_10_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_7) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[143:128]));
  assign MAC_10_mul_nl = nl_MAC_10_mul_nl[29:0];
  assign nl_MAC_acc_13_nl = MAC_9_mul_itm + (MAC_10_mul_nl);
  assign MAC_acc_13_nl = nl_MAC_acc_13_nl[29:0];
  assign MAC_or_nl = (fsm_output[3]) | (fsm_output[23]) | (fsm_output[25]);
  assign MAC_or_25_nl = (fsm_output[7]) | (fsm_output[15]) | (fsm_output[17]) | (fsm_output[21])
      | (fsm_output[29]) | (fsm_output[33]);
  assign or_242_nl = (fsm_output[11]) | (fsm_output[9]) | (fsm_output[7]) | (fsm_output[5]);
  assign MAC_else_mux1h_1_nl = MUX1HOT_v_5_3_2(wptr_4_0_2_lpi_1_dfm_1, wptr_4_0_12_lpi_1_dfm_mx0w1,
      wptr_4_0_27_lpi_1_dfm_1, {(fsm_output[3]) , (or_242_nl) , (fsm_output[13])});
  assign nl_MAC_else_acc_1_nl = (MAC_else_mux1h_1_nl) + 5'b11111;
  assign MAC_else_acc_1_nl = nl_MAC_else_acc_1_nl[4:0];
  assign wptr_or_11_nl = (fsm_output[3]) | or_tmp_35 | (fsm_output[13]);
  assign nl_MAC_2_mul_nl = $signed((regs_rsci_qa_d[31:16])) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[15:0]));
  assign MAC_2_mul_nl = nl_MAC_2_mul_nl[29:0];
  assign nl_MAC_4_mul_nl = $signed((regs_rsci_qa_d[15:0])) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[47:32]));
  assign MAC_4_mul_nl = nl_MAC_4_mul_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[31:16]));
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_acc_16_nl = (MAC_3_mul_nl) + MAC_12_mul_itm;
  assign MAC_acc_16_nl = nl_MAC_acc_16_nl[29:0];
  assign nl_MAC_8_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_13) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[111:96]));
  assign MAC_8_mul_nl = nl_MAC_8_mul_nl[29:0];
  assign nl_MAC_acc_14_nl = MAC_13_mul_itm + (MAC_8_mul_nl);
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign nl_MAC_11_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_11) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[159:144]));
  assign MAC_11_mul_nl = nl_MAC_11_mul_nl[29:0];
  assign nl_MAC_acc_12_nl = (MAC_11_mul_nl) + MAC_12_mul_itm;
  assign MAC_acc_12_nl = nl_MAC_acc_12_nl[29:0];
  assign nl_MAC_16_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_13) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[239:224]));
  assign MAC_16_mul_nl = nl_MAC_16_mul_nl[29:0];
  assign nl_MAC_acc_10_nl = MAC_13_mul_itm + (MAC_16_mul_nl);
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_20_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_31_16_itm_9) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[303:288]));
  assign MAC_20_mul_nl = nl_MAC_20_mul_nl[29:0];
  assign nl_MAC_acc_8_nl = MAC_13_mul_itm + (MAC_20_mul_nl);
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_24_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_9) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[367:352]));
  assign MAC_24_mul_nl = nl_MAC_24_mul_nl[29:0];
  assign nl_MAC_acc_6_nl = MAC_13_mul_itm + (MAC_24_mul_nl);
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign nl_MAC_28_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_31_16_itm_13) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[431:416]));
  assign MAC_28_mul_nl = nl_MAC_28_mul_nl[29:0];
  assign nl_MAC_acc_4_nl = MAC_13_mul_itm + (MAC_28_mul_nl);
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign nl_MAC_32_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_13) * $signed((reg_MAC_io_read_coeffs_rsc_ftd[495:480]));
  assign MAC_32_mul_nl = nl_MAC_32_mul_nl[29:0];
  assign nl_MAC_acc_18_nl = MAC_13_mul_itm + (MAC_32_mul_nl);
  assign MAC_acc_18_nl = nl_MAC_acc_18_nl[29:0];
  assign nl_MAC_acc_26_nl = MAC_acc_25_itm + MAC_12_mul_itm;
  assign MAC_acc_26_nl = nl_MAC_acc_26_nl[29:0];
  assign nl_MAC_acc_30_nl = MAC_9_mul_itm + (MAC_acc_26_nl);
  assign MAC_acc_30_nl = nl_MAC_acc_30_nl[29:0];
  assign nl_MAC_acc_nl = MAC_acc_15_itm + (MAC_acc_30_nl);
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign MAC_or_24_nl = (fsm_output[8]) | (fsm_output[12]);
  assign nl_MAC_acc_3_nl = MAC_13_mul_itm + z_out_7;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_MAC_acc_15_nl = z_out_9 + MAC_12_mul_itm;
  assign MAC_acc_15_nl = nl_MAC_acc_15_nl[29:0];
  assign nl_MAC_acc_7_nl = MAC_13_mul_itm + z_out_10;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_11_nl = MAC_13_mul_itm + z_out_11;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_acc_9_nl = MAC_13_mul_itm + z_out_10;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_acc_5_nl = MAC_13_mul_itm + z_out_8;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_28_nl = MAC_acc_15_itm + z_out;
  assign MAC_acc_28_nl = nl_MAC_acc_28_nl[29:0];
  assign nl_MAC_acc_31_itm  = MAC_acc_25_itm + (MAC_acc_28_nl);
  assign or_239_nl = (fsm_output[15]) | (fsm_output[7]) | (fsm_output[5]);
  assign or_240_nl = (fsm_output[31]) | (fsm_output[23]) | (fsm_output[19]);
  assign or_241_nl = (fsm_output[27]) | (fsm_output[12]);
  assign MAC_mux1h_18_nl = MUX1HOT_v_30_4_2(MAC_acc_31_itm, MAC_13_mul_itm, MAC_9_mul_itm,
      MAC_acc_15_itm, {(fsm_output[36]) , (or_239_nl) , (or_240_nl) , (or_241_nl)});
  assign nl_z_out = (MAC_mux1h_18_nl) + MAC_12_mul_itm;
  assign z_out = nl_z_out[29:0];
  assign MAC_mux_16_nl = MUX_v_30_2_2(MAC_acc_25_itm, MAC_9_mul_itm, fsm_output[27]);
  assign nl_z_out_1 = (MAC_mux_16_nl) + z_out;
  assign z_out_1 = nl_z_out_1[29:0];
  assign nl_z_out_2 = regs_acc_itm + 5'b11111;
  assign z_out_2 = nl_z_out_2[4:0];
  assign MAC_or_27_nl = (fsm_output[7]) | (fsm_output[29]);
  assign MAC_or_28_nl = (fsm_output[17]) | (fsm_output[33]) | (fsm_output[8]) | (fsm_output[12]);
  assign MAC_mux1h_21_nl = MUX1HOT_v_16_4_2(MAC_slc_regs_rsci_qa_d_15_0_itm, MAC_slc_regs_rsci_qa_d_15_0_itm_9,
      MAC_slc_regs_rsci_qa_d_15_0_itm_12, MAC_slc_regs_rsci_qa_d_15_0_itm_6, {(MAC_or_27_nl)
      , (fsm_output[15]) , (MAC_or_28_nl) , (fsm_output[21])});
  assign MAC_mux1h_22_nl = MUX1HOT_v_16_8_2((reg_MAC_io_read_coeffs_rsc_ftd[95:80]),
      (reg_MAC_io_read_coeffs_rsc_ftd[191:176]), (reg_MAC_io_read_coeffs_rsc_ftd[223:208]),
      (reg_MAC_io_read_coeffs_rsc_ftd[287:272]), (reg_MAC_io_read_coeffs_rsc_ftd[415:400]),
      (reg_MAC_io_read_coeffs_rsc_ftd[479:464]), (reg_MAC_io_read_coeffs_rsc_ftd[79:64]),
      (reg_MAC_io_read_coeffs_rsc_ftd[175:160]), {(fsm_output[7]) , (fsm_output[15])
      , (fsm_output[17]) , (fsm_output[21]) , (fsm_output[29]) , (fsm_output[33])
      , (fsm_output[8]) , (fsm_output[12])});
  assign nl_z_out_6 = $signed((MAC_mux1h_21_nl)) * $signed((MAC_mux1h_22_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_17_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd[255:240]),
      (reg_MAC_io_read_coeffs_rsc_ftd[463:448]), fsm_output[32]);
  assign nl_z_out_7 = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_5) * $signed((MAC_mux_17_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_18_nl = MUX_v_16_2_2(MAC_slc_regs_rsci_qa_d_31_16_itm_11, MAC_slc_regs_rsci_qa_d_31_16_itm_12,
      fsm_output[28]);
  assign MAC_mux_19_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd[383:368]),
      (reg_MAC_io_read_coeffs_rsc_ftd[399:384]), fsm_output[28]);
  assign nl_z_out_8 = $signed((MAC_mux_18_nl)) * $signed((MAC_mux_19_nl));
  assign z_out_8 = nl_z_out_8[29:0];
  assign MAC_mux_20_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd[447:432]),
      (reg_MAC_io_read_coeffs_rsc_ftd[63:48]), fsm_output[9]);
  assign nl_z_out_9 = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm_11) * $signed((MAC_mux_20_nl));
  assign z_out_9 = nl_z_out_9[29:0];
  assign MAC_mux_21_nl = MUX_v_16_2_2(MAC_slc_regs_rsci_qa_d_15_0_itm_8, MAC_slc_regs_rsci_qa_d_31_16_itm_8,
      fsm_output[20]);
  assign MAC_mux_22_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd[335:320]),
      (reg_MAC_io_read_coeffs_rsc_ftd[271:256]), fsm_output[20]);
  assign nl_z_out_10 = $signed((MAC_mux_21_nl)) * $signed((MAC_mux_22_nl));
  assign z_out_10 = nl_z_out_10[29:0];
  assign MAC_mux_23_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd[127:112]),
      (reg_MAC_io_read_coeffs_rsc_ftd[207:192]), fsm_output[16]);
  assign nl_z_out_11 = $signed(MAC_slc_regs_rsci_qa_d_15_0_itm) * $signed((MAC_mux_23_nl));
  assign z_out_11 = nl_z_out_11[29:0];

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


  function automatic [15:0] MUX1HOT_v_16_3_2;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [2:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    MUX1HOT_v_16_3_2 = result;
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


  function automatic [29:0] MUX1HOT_v_30_12_2;
    input [29:0] input_11;
    input [29:0] input_10;
    input [29:0] input_9;
    input [29:0] input_8;
    input [29:0] input_7;
    input [29:0] input_6;
    input [29:0] input_5;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [11:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    result = result | ( input_4 & {30{sel[4]}});
    result = result | ( input_5 & {30{sel[5]}});
    result = result | ( input_6 & {30{sel[6]}});
    result = result | ( input_7 & {30{sel[7]}});
    result = result | ( input_8 & {30{sel[8]}});
    result = result | ( input_9 & {30{sel[9]}});
    result = result | ( input_10 & {30{sel[10]}});
    result = result | ( input_11 & {30{sel[11]}});
    MUX1HOT_v_30_12_2 = result;
  end
  endfunction


  function automatic [29:0] MUX1HOT_v_30_3_2;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [2:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    MUX1HOT_v_30_3_2 = result;
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


  function automatic [29:0] MUX1HOT_v_30_7_2;
    input [29:0] input_6;
    input [29:0] input_5;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [6:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    result = result | ( input_4 & {30{sel[4]}});
    result = result | ( input_5 & {30{sel[5]}});
    result = result | ( input_6 & {30{sel[6]}});
    MUX1HOT_v_30_7_2 = result;
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


  function automatic [4:0] MUX1HOT_v_5_4_2;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [3:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    MUX1HOT_v_5_4_2 = result;
  end
  endfunction


  function automatic [4:0] MUX1HOT_v_5_8_2;
    input [4:0] input_7;
    input [4:0] input_6;
    input [4:0] input_5;
    input [4:0] input_4;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [7:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    result = result | ( input_4 & {5{sel[4]}});
    result = result | ( input_5 & {5{sel[5]}});
    result = result | ( input_6 & {5{sel[6]}});
    result = result | ( input_7 & {5{sel[7]}});
    MUX1HOT_v_5_8_2 = result;
  end
  endfunction


  function automatic [4:0] MUX1HOT_v_5_9_2;
    input [4:0] input_8;
    input [4:0] input_7;
    input [4:0] input_6;
    input [4:0] input_5;
    input [4:0] input_4;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [8:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    result = result | ( input_4 & {5{sel[4]}});
    result = result | ( input_5 & {5{sel[5]}});
    result = result | ( input_6 & {5{sel[6]}});
    result = result | ( input_7 & {5{sel[7]}});
    result = result | ( input_8 & {5{sel[8]}});
    MUX1HOT_v_5_9_2 = result;
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



