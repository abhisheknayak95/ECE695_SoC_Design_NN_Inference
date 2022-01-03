
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
//  Generated date: Wed Nov 10 15:51:37 2021
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
  clk, rst, fsm_output, regs_vinit_C_1_tr0, MAC_C_3_tr0
);
  input clk;
  input rst;
  output [17:0] fsm_output;
  reg [17:0] fsm_output;
  input regs_vinit_C_1_tr0;
  input MAC_C_3_tr0;


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
    main_C_2 = 5'd17;

  reg [4:0] state_var;
  reg [4:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      regs_vinit_C_0 : begin
        fsm_output = 18'b000000000000000010;
        state_var_NS = regs_vinit_C_1;
      end
      regs_vinit_C_1 : begin
        fsm_output = 18'b000000000000000100;
        if ( regs_vinit_C_1_tr0 ) begin
          state_var_NS = regs_vinit_C_0;
        end
        else begin
          state_var_NS = main_C_0;
        end
      end
      main_C_0 : begin
        fsm_output = 18'b000000000000001000;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 18'b000000000000010000;
        state_var_NS = MAC_C_0;
      end
      MAC_C_0 : begin
        fsm_output = 18'b000000000000100000;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 18'b000000000001000000;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 18'b000000000010000000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 18'b000000000100000000;
        if ( MAC_C_3_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = MAC_C_4;
        end
      end
      MAC_C_4 : begin
        fsm_output = 18'b000000001000000000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 18'b000000010000000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 18'b000000100000000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 18'b000001000000000000;
        state_var_NS = MAC_C_8;
      end
      MAC_C_8 : begin
        fsm_output = 18'b000010000000000000;
        state_var_NS = MAC_C_9;
      end
      MAC_C_9 : begin
        fsm_output = 18'b000100000000000000;
        state_var_NS = MAC_C_10;
      end
      MAC_C_10 : begin
        fsm_output = 18'b001000000000000000;
        state_var_NS = MAC_C_11;
      end
      MAC_C_11 : begin
        fsm_output = 18'b010000000000000000;
        state_var_NS = MAC_C_0;
      end
      main_C_2 : begin
        fsm_output = 18'b100000000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 18'b000000000000000001;
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
  wire [17:0] fsm_output;
  wire [4:0] MAC_6_else_acc_tmp;
  wire [5:0] nl_MAC_6_else_acc_tmp;
  wire [4:0] MAC_slc_MAC_2_MAC_acc_tmp;
  wire [5:0] nl_MAC_slc_MAC_2_MAC_acc_tmp;
  wire or_dcpl_11;
  wire or_dcpl_14;
  wire or_dcpl_15;
  wire or_dcpl_37;
  wire or_dcpl_41;
  wire or_dcpl_49;
  wire or_dcpl_52;
  wire or_dcpl_54;
  wire or_dcpl_69;
  wire or_tmp_34;
  wire [4:0] wptr_4_0_3_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_9_lpi_2_dfm_1;
  reg [4:0] wptr_4_0_4_sva_1;
  wire [4:0] wptr_4_0_8_lpi_2_dfm_1;
  reg [4:0] wptr_4_0_1_sva;
  reg MAC_MAC_nor_11_itm;
  reg regs_regs_nor_itm;
  wire [4:0] wptr_4_0_7_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_1_sva_3;
  wire [4:0] wptr_4_0_2_lpi_2_dfm_1;
  reg [4:0] regs_acc_itm;
  reg reg_MAC_slc_MAC_2_MAC_acc_psp_ftd;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  reg [3:0] MAC_i_4_1_sva;
  wire MAC_and_4_cse;
  wire MAC_and_5_cse;
  wire MAC_and_6_cse;
  wire MAC_and_7_cse;
  wire regs_and_cse;
  wire or_98_cse;
  wire or_99_rmff;
  reg [4:0] wptr_4_0_3_lpi_2_dfm;
  wire or_170_tmp;
  wire [4:0] z_out;
  wire [5:0] nl_z_out;
  wire [4:0] z_out_1;
  wire [5:0] nl_z_out_1;
  wire [29:0] z_out_3;
  wire [30:0] nl_z_out_3;
  wire [15:0] z_out_4;
  wire [15:0] z_out_5;
  wire [29:0] z_out_6;
  wire signed [31:0] nl_z_out_6;
  wire [29:0] z_out_7;
  wire signed [31:0] nl_z_out_7;
  wire [29:0] z_out_8;
  wire signed [31:0] nl_z_out_8;
  wire [29:0] z_out_9;
  wire signed [31:0] nl_z_out_9;
  reg [29:0] acc_32_3_1_sva;
  reg [15:0] MAC_mux_10_itm;
  reg [15:0] MAC_mux_12_itm;
  reg [29:0] MAC_10_mul_itm;
  reg [29:0] MAC_acc_3_itm;
  reg [15:0] MAC_mux_13_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_1_itm;
  reg [15:0] MAC_mux_14_itm;
  reg [29:0] MAC_acc_6_itm;
  wire [30:0] nl_MAC_acc_6_itm;
  reg [29:0] MAC_5_mul_itm;
  reg [15:0] MAC_mux_16_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_3_itm;
  reg [15:0] MAC_mux_17_itm;
  reg [29:0] MAC_7_mul_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_4_itm;
  reg [15:0] MAC_mux_18_itm;
  reg [3:0] MAC_slc_MAC_10_MAC_acc_itm;
  wire [4:0] nl_MAC_slc_MAC_10_MAC_acc_itm;
  wire [3:0] MAC_slc_MAC_6_MAC_acc_psp_sva_1;
  wire [4:0] nl_MAC_slc_MAC_6_MAC_acc_psp_sva_1;
  wire [3:0] MAC_slc_MAC_4_MAC_acc_psp_sva_1;
  wire [4:0] nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1;
  reg [351:0] MAC_io_read_coeffs_rsc_cse_sva_479_128;
  wire or_138_tmp;
  wire MAC_nor_8_cse;
  wire MAC_nor_7_cse;

  wire[4:0] mux_nl;
  wire[0:0] and_200_nl;
  wire[0:0] not_60_nl;
  wire[0:0] or_113_nl;
  wire[29:0] acc_mux_nl;
  wire[29:0] MAC_10_acc_1_nl;
  wire[30:0] nl_MAC_10_acc_1_nl;
  wire[0:0] acc_not_nl;
  wire[3:0] MAC_i_mux_nl;
  wire[0:0] MAC_i_not_nl;
  wire[4:0] MAC_else_acc_nl;
  wire[5:0] nl_MAC_else_acc_nl;
  wire[4:0] MAC_else_mux_1_nl;
  wire[0:0] MAC_MAC_nor_11_nl;
  wire[0:0] MAC_MAC_nor_14_nl;
  wire[0:0] MAC_MAC_nor_16_nl;
  wire[0:0] nand_nl;
  wire[0:0] MAC_and_16_nl;
  wire[0:0] MAC_and_17_nl;
  wire[0:0] MAC_and_18_nl;
  wire[0:0] MAC_and_10_nl;
  wire[0:0] MAC_and_11_nl;
  wire[0:0] MAC_and_12_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_8_nl;
  wire[0:0] MAC_and_9_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_1_mul_nl;
  wire signed [31:0] nl_MAC_1_mul_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[4:0] MAC_10_else_acc_nl;
  wire[5:0] nl_MAC_10_else_acc_nl;
  wire[0:0] MAC_MAC_nor_21_nl;
  wire[0:0] MAC_MAC_nor_10_nl;
  wire[0:0] MAC_MAC_nor_15_nl;
  wire[0:0] MAC_MAC_nor_nl;
  wire[4:0] MAC_9_else_acc_nl;
  wire[5:0] nl_MAC_9_else_acc_nl;
  wire[0:0] MAC_MAC_nor_19_nl;
  wire[4:0] regs_mux1h_1_nl;
  wire[4:0] regs_mux1h_5_nl;
  wire[0:0] regs_or_3_nl;
  wire[4:0] else_mux_1_nl;
  wire[4:0] regs_mux1h_8_nl;
  wire[29:0] MAC_mux_36_nl;
  wire[29:0] MAC_mux_37_nl;
  wire[0:0] MAC_or_11_nl;
  wire[15:0] MAC_mux_38_nl;
  wire[0:0] MAC_or_12_nl;
  wire[15:0] MAC_mux1h_59_nl;
  wire[15:0] MAC_mux_39_nl;
  wire[15:0] MAC_mux_40_nl;
  wire[15:0] MAC_mux_41_nl;
  wire[15:0] MAC_mux_42_nl;
  wire[3:0] MAC_mux_43_nl;
  wire[3:0] MAC_mux_44_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0;
  assign nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0 = ~ regs_regs_nor_itm;
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_3_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_3_tr0 = reg_MAC_slc_MAC_2_MAC_acc_psp_ftd;
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
      .MAC_C_3_tr0(nl_fir_core_core_fsm_inst_MAC_C_3_tr0[0:0])
    );
  assign reg_out1_out1_and_cse = (fsm_output[8]) & reg_MAC_slc_MAC_2_MAC_acc_psp_ftd;
  assign or_98_cse = (fsm_output[3]) | (fsm_output[1]);
  assign or_99_rmff = (fsm_output[5]) | (fsm_output[7]) | or_dcpl_37 | ((~ reg_MAC_slc_MAC_2_MAC_acc_psp_ftd)
      & (fsm_output[8]));
  assign regs_and_cse = (fsm_output[2]) & regs_regs_nor_itm;
  assign or_170_tmp = regs_and_cse | ((~ MAC_MAC_nor_11_itm) & (fsm_output[17]));
  assign MAC_and_4_cse = (MAC_i_4_1_sva==4'b0000) & (fsm_output[5]);
  assign MAC_and_5_cse = (MAC_i_4_1_sva==4'b0101) & (fsm_output[5]);
  assign MAC_and_6_cse = (MAC_i_4_1_sva==4'b1010) & (fsm_output[5]);
  assign MAC_and_7_cse = (MAC_i_4_1_sva==4'b1111) & (fsm_output[5]);
  assign or_138_tmp = or_dcpl_15 | or_dcpl_41 | or_dcpl_54;
  assign MAC_nor_7_cse = ~((MAC_slc_MAC_4_MAC_acc_psp_sva_1[3]) | (MAC_slc_MAC_4_MAC_acc_psp_sva_1[2])
      | (MAC_slc_MAC_4_MAC_acc_psp_sva_1[0]));
  assign MAC_nor_8_cse = ~((MAC_slc_MAC_4_MAC_acc_psp_sva_1[1:0]!=2'b00));
  assign nl_MAC_10_else_acc_nl = wptr_4_0_lpi_2_dfm_1 + 5'b11111;
  assign MAC_10_else_acc_nl = nl_MAC_10_else_acc_nl[4:0];
  assign MAC_MAC_nor_21_nl = ~((wptr_4_0_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_1_sva_3 = MUX_v_5_2_2((MAC_10_else_acc_nl), 5'b11111, (MAC_MAC_nor_21_nl));
  assign wptr_4_0_9_lpi_2_dfm_1 = MUX_v_5_2_2(wptr_4_0_4_sva_1, 5'b11111, MAC_MAC_nor_11_itm);
  assign MAC_MAC_nor_10_nl = ~((wptr_4_0_2_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_3_lpi_2_dfm_1 = MUX_v_5_2_2(z_out_1, 5'b11111, (MAC_MAC_nor_10_nl));
  assign MAC_MAC_nor_15_nl = ~((wptr_4_0_7_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_8_lpi_2_dfm_1 = MUX_v_5_2_2(z_out_1, 5'b11111, (MAC_MAC_nor_15_nl));
  assign MAC_MAC_nor_nl = ~((wptr_4_0_1_sva!=5'b00000));
  assign wptr_4_0_2_lpi_2_dfm_1 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111, (MAC_MAC_nor_nl));
  assign nl_MAC_6_else_acc_tmp = wptr_4_0_1_sva + 5'b11111;
  assign MAC_6_else_acc_tmp = nl_MAC_6_else_acc_tmp[4:0];
  assign nl_MAC_slc_MAC_2_MAC_acc_tmp = conv_u2s_4_5(MAC_i_4_1_sva) + 5'b00001;
  assign MAC_slc_MAC_2_MAC_acc_tmp = nl_MAC_slc_MAC_2_MAC_acc_tmp[4:0];
  assign nl_MAC_slc_MAC_6_MAC_acc_psp_sva_1 = MAC_slc_MAC_4_MAC_acc_psp_sva_1 + 4'b0001;
  assign MAC_slc_MAC_6_MAC_acc_psp_sva_1 = nl_MAC_slc_MAC_6_MAC_acc_psp_sva_1[3:0];
  assign nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1 = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]) +
      4'b0001;
  assign MAC_slc_MAC_4_MAC_acc_psp_sva_1 = nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1[3:0];
  assign nl_MAC_9_else_acc_nl = wptr_4_0_9_lpi_2_dfm_1 + 5'b11111;
  assign MAC_9_else_acc_nl = nl_MAC_9_else_acc_nl[4:0];
  assign MAC_MAC_nor_19_nl = ~((wptr_4_0_9_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_lpi_2_dfm_1 = MUX_v_5_2_2((MAC_9_else_acc_nl), 5'b11111, (MAC_MAC_nor_19_nl));
  assign wptr_4_0_7_lpi_2_dfm_1 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111, MAC_MAC_nor_11_itm);
  assign or_dcpl_11 = (fsm_output[14]) | (fsm_output[11]);
  assign or_dcpl_14 = (fsm_output[10:9]!=2'b00);
  assign or_dcpl_15 = (fsm_output[12:11]!=2'b00);
  assign or_dcpl_37 = (fsm_output[9]) | (fsm_output[6]);
  assign or_dcpl_41 = (fsm_output[13]) | (fsm_output[7]);
  assign or_dcpl_49 = (fsm_output[8]) | (fsm_output[10]);
  assign or_dcpl_52 = or_dcpl_15 | (fsm_output[7]);
  assign or_dcpl_54 = or_dcpl_49 | or_dcpl_37;
  assign or_dcpl_69 = (fsm_output[11]) | (fsm_output[7]) | (fsm_output[8]);
  assign or_tmp_34 = (fsm_output[8]) | (fsm_output[6]);
  assign regs_mux1h_1_nl = MUX1HOT_v_5_4_2(wptr_4_0_2_lpi_2_dfm_1, wptr_4_0_lpi_2_dfm_1,
      wptr_4_0_3_lpi_2_dfm, wptr_4_0_4_sva_1, {(fsm_output[5]) , or_tmp_34 , (fsm_output[7])
      , (fsm_output[9])});
  assign regs_or_3_nl = (fsm_output[5]) | (fsm_output[8]);
  assign regs_mux1h_5_nl = MUX1HOT_v_5_5_2(regs_acc_itm, wptr_4_0_1_sva, wptr_4_0_9_lpi_2_dfm_1,
      wptr_4_0_7_lpi_2_dfm_1, wptr_4_0_3_lpi_2_dfm, {or_98_cse , (regs_or_3_nl) ,
      (fsm_output[6]) , (fsm_output[7]) , (fsm_output[9])});
  assign regs_rsci_adra_d = {(regs_mux1h_1_nl) , (regs_mux1h_5_nl)};
  assign regs_rsci_wea_d = {1'b0 , or_98_cse};
  assign regs_rsci_rea_d = {{1{or_99_rmff}}, or_99_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d = {{1{or_99_rmff}}, or_99_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d = {1'b0 , or_98_cse};
  assign regs_rsci_da_d = MUX_v_16_2_2(16'b0000000000000000, in1_rsci_idat, (fsm_output[3]));
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      regs_regs_nor_itm <= 1'b0;
      wptr_4_0_1_sva <= 5'b00000;
      wptr_4_0_4_sva_1 <= 5'b00000;
      wptr_4_0_3_lpi_2_dfm <= 5'b00000;
      MAC_MAC_nor_11_itm <= 1'b0;
      MAC_io_read_coeffs_rsc_cse_sva_479_128 <= 352'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      MAC_10_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      regs_regs_nor_itm <= ~((regs_acc_itm!=5'b00000));
      wptr_4_0_1_sva <= MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_1_sva, wptr_4_0_1_sva_3,
          {(fsm_output[4]) , (or_113_nl) , or_tmp_34});
      wptr_4_0_4_sva_1 <= MUX_v_5_2_2((MAC_else_acc_nl), wptr_4_0_9_lpi_2_dfm_1,
          fsm_output[8]);
      wptr_4_0_3_lpi_2_dfm <= MUX1HOT_v_5_3_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_8_lpi_2_dfm_1,
          wptr_4_0_3_lpi_2_dfm, {(fsm_output[5]) , (fsm_output[7]) , or_tmp_34});
      MAC_MAC_nor_11_itm <= MUX1HOT_s_1_4_2((MAC_MAC_nor_11_nl), (MAC_MAC_nor_14_nl),
          (MAC_MAC_nor_16_nl), (nand_nl), {(fsm_output[5]) , (fsm_output[6]) , (fsm_output[7])
          , (fsm_output[8])});
      MAC_io_read_coeffs_rsc_cse_sva_479_128 <= coeffs_rsci_d[479:128];
      MAC_10_mul_itm <= MUX1HOT_v_30_4_2(z_out_6, z_out_7, z_out_8, (MAC_acc_4_nl),
          {(fsm_output[6]) , (fsm_output[9]) , (fsm_output[12]) , (fsm_output[15])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= z_out_3[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_acc_itm <= 5'b11111;
    end
    else if ( regs_and_cse | (fsm_output[1]) | (fsm_output[17]) ) begin
      regs_acc_itm <= MUX_v_5_2_2(5'b00000, (mux_nl), (not_60_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[16]) | (fsm_output[4]) | (fsm_output[8]) ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_mux_nl),
          (acc_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_4_1_sva <= 4'b0000;
    end
    else if ( (fsm_output[5]) | (fsm_output[4]) | (fsm_output[8]) ) begin
      MAC_i_4_1_sva <= MUX_v_4_2_2(4'b0000, (MAC_i_mux_nl), (MAC_i_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_10_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_52 | or_dcpl_49 | (fsm_output[9])) ) begin
      MAC_mux_10_itm <= MUX1HOT_v_16_5_2((coeffs_rsci_d[31:16]), (coeffs_rsci_d[191:176]),
          (coeffs_rsci_d[351:336]), (coeffs_rsci_d[511:496]), z_out_4, {MAC_and_4_cse
          , MAC_and_5_cse , MAC_and_6_cse , MAC_and_7_cse , (fsm_output[6])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_18_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_11 | (fsm_output[12]) | or_dcpl_41 | or_dcpl_54) ) begin
      MAC_mux_18_itm <= z_out_5;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_16_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_138_tmp ) begin
      MAC_mux_16_itm <= MUX1HOT_v_16_3_2((coeffs_rsci_d[95:80]), (coeffs_rsci_d[255:240]),
          (coeffs_rsci_d[415:400]), {(MAC_and_16_nl) , (MAC_and_17_nl) , (MAC_and_18_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_17_itm <= 16'b0000000000000000;
    end
    else if ( ~((fsm_output[7]) | (fsm_output[8]) | (fsm_output[10]) | or_dcpl_37)
        ) begin
      MAC_mux_17_itm <= MUX1HOT_v_16_3_2((coeffs_rsci_d[111:96]), (coeffs_rsci_d[271:256]),
          (coeffs_rsci_d[431:416]), {(~ (MAC_slc_MAC_6_MAC_acc_psp_sva_1[3])) , (~
          (MAC_slc_MAC_6_MAC_acc_psp_sva_1[0])) , (MAC_slc_MAC_6_MAC_acc_psp_sva_1[2])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_13_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_52 | (fsm_output[8]) | (fsm_output[9]) | (fsm_output[6]))
        ) begin
      MAC_mux_13_itm <= MUX_v_16_2_2(z_out_4, (regs_rsci_qa_d[31:16]), fsm_output[10]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_14_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_69 | (fsm_output[10]) | (fsm_output[6])) ) begin
      MAC_mux_14_itm <= MUX1HOT_v_16_4_2((coeffs_rsci_d[63:48]), (coeffs_rsci_d[223:208]),
          (coeffs_rsci_d[383:368]), (regs_rsci_qa_d[31:16]), {(MAC_and_10_nl) , (MAC_and_11_nl)
          , (MAC_and_12_nl) , (fsm_output[9])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_MAC_10_MAC_acc_itm <= 4'b0000;
    end
    else if ( ~((fsm_output[7:6]!=2'b00)) ) begin
      MAC_slc_MAC_10_MAC_acc_itm <= nl_MAC_slc_MAC_10_MAC_acc_itm[3:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_3_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[5]) | (fsm_output[7]) | (fsm_output[8]) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_3_itm <= MUX1HOT_v_16_6_2((coeffs_rsci_d[15:0]),
          (coeffs_rsci_d[175:160]), (coeffs_rsci_d[335:320]), (coeffs_rsci_d[495:480]),
          (regs_rsci_qa_d[31:16]), (regs_rsci_qa_d[15:0]), {MAC_and_4_cse , MAC_and_5_cse
          , MAC_and_6_cse , MAC_and_7_cse , (fsm_output[7]) , (fsm_output[8])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_4_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_11 | (fsm_output[12]) | (fsm_output[13]) | (fsm_output[7])
        | (fsm_output[9]) | (fsm_output[6])) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_4_itm <= MUX1HOT_v_16_5_2((coeffs_rsci_d[79:64]),
          (coeffs_rsci_d[239:224]), (coeffs_rsci_d[399:384]), (regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), {(MAC_and_nl) , (MAC_and_8_nl) , (MAC_and_9_nl)
          , (fsm_output[8]) , (fsm_output[10])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_12_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_69 | or_dcpl_14) ) begin
      MAC_mux_12_itm <= z_out_5;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= 16'b0000000000000000;
    end
    else if ( ~(or_dcpl_15 | (fsm_output[13]) | or_dcpl_49) ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= regs_rsci_qa_d[15:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[14]) | (fsm_output[7]) | (fsm_output[8]) ) begin
      MAC_5_mul_itm <= MUX1HOT_v_30_3_2((MAC_acc_nl), z_out_6, (MAC_acc_5_nl), {(fsm_output[7])
          , (fsm_output[8]) , (fsm_output[14])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_6_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[10] ) begin
      MAC_acc_6_itm <= nl_MAC_acc_6_itm[29:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_7_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[11] ) begin
      MAC_7_mul_itm <= z_out_6;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_3_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[14:13]!=2'b00) ) begin
      MAC_acc_3_itm <= MUX_v_30_2_2((MAC_acc_3_nl), (MAC_acc_9_nl), fsm_output[14]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_slc_MAC_2_MAC_acc_psp_ftd <= 1'b0;
    end
    else if ( fsm_output[5] ) begin
      reg_MAC_slc_MAC_2_MAC_acc_psp_ftd <= MAC_slc_MAC_2_MAC_acc_tmp[4];
    end
  end
  assign or_113_nl = (fsm_output[11]) | (fsm_output[15]) | (fsm_output[16]) | (fsm_output[14])
      | (fsm_output[12]) | or_dcpl_41 | or_dcpl_14;
  assign MAC_else_mux_1_nl = MUX_v_5_2_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_8_lpi_2_dfm_1,
      fsm_output[7]);
  assign nl_MAC_else_acc_nl = (MAC_else_mux_1_nl) + 5'b11111;
  assign MAC_else_acc_nl = nl_MAC_else_acc_nl[4:0];
  assign MAC_MAC_nor_11_nl = ~((wptr_4_0_3_lpi_2_dfm_1!=5'b00000));
  assign MAC_MAC_nor_14_nl = ~((wptr_4_0_1_sva_3!=5'b00000));
  assign MAC_MAC_nor_16_nl = ~((wptr_4_0_8_lpi_2_dfm_1!=5'b00000));
  assign nand_nl = ~((regs_acc_itm==5'b11111));
  assign nl_MAC_acc_4_nl = MAC_7_mul_itm + z_out_9;
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign and_200_nl = (fsm_output[17]) & (~ or_170_tmp);
  assign mux_nl = MUX_v_5_2_2(z_out_1, z_out, and_200_nl);
  assign not_60_nl = ~ or_170_tmp;
  assign nl_MAC_10_acc_1_nl = MAC_acc_3_itm + z_out_3;
  assign MAC_10_acc_1_nl = nl_MAC_10_acc_1_nl[29:0];
  assign acc_mux_nl = MUX_v_30_2_2(z_out_3, (MAC_10_acc_1_nl), fsm_output[16]);
  assign acc_not_nl = ~ (fsm_output[4]);
  assign MAC_i_mux_nl = MUX_v_4_2_2((z_out[3:0]), MAC_slc_MAC_10_MAC_acc_itm, fsm_output[8]);
  assign MAC_i_not_nl = ~ (fsm_output[4]);
  assign MAC_and_16_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[1]) & MAC_nor_7_cse & (~
      or_138_tmp);
  assign MAC_and_17_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b0111) & (~ or_138_tmp);
  assign MAC_and_18_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[3:2]==2'b11) & MAC_nor_8_cse
      & (~ or_138_tmp);
  assign MAC_and_10_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b0001) & (fsm_output[5]);
  assign MAC_and_11_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b0110) & (fsm_output[5]);
  assign MAC_and_12_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b1011) & (fsm_output[5]);
  assign nl_MAC_slc_MAC_10_MAC_acc_itm  = (z_out[3:0]) + 4'b0001;
  assign MAC_and_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[1]) & MAC_nor_7_cse & (fsm_output[5]);
  assign MAC_and_8_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b0111) & (fsm_output[5]);
  assign MAC_and_9_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[3:2]==2'b11) & MAC_nor_8_cse
      & (fsm_output[5]);
  assign nl_MAC_1_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_1_itm) * $signed(MAC_slc_regs_rsci_qa_d_15_0_3_itm);
  assign MAC_1_mul_nl = nl_MAC_1_mul_nl[29:0];
  assign nl_MAC_acc_nl = (MAC_1_mul_nl) + MAC_10_mul_itm;
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign nl_MAC_acc_5_nl = MAC_5_mul_itm + z_out_7;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_6_itm  = z_out_9 + MAC_10_mul_itm;
  assign nl_MAC_acc_3_nl = z_out_8 + MAC_10_mul_itm;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_MAC_acc_9_nl = z_out_3 + MAC_acc_6_itm;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign else_mux_1_nl = MUX_v_5_2_2(regs_acc_itm, ({{1{MAC_slc_MAC_6_MAC_acc_psp_sva_1[3]}},
      MAC_slc_MAC_6_MAC_acc_psp_sva_1}), fsm_output[5]);
  assign nl_z_out = (else_mux_1_nl) + 5'b00001;
  assign z_out = nl_z_out[4:0];
  assign regs_mux1h_8_nl = MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1,
      wptr_4_0_7_lpi_2_dfm_1, {(fsm_output[1]) , (fsm_output[5]) , (fsm_output[7])});
  assign nl_z_out_1 = (regs_mux1h_8_nl) + 5'b11111;
  assign z_out_1 = nl_z_out_1[4:0];
  assign MAC_mux_36_nl = MUX_v_30_2_2(MAC_5_mul_itm, MAC_acc_3_itm, fsm_output[14]);
  assign MAC_or_11_nl = (fsm_output[14]) | (fsm_output[8]);
  assign MAC_mux_37_nl = MUX_v_30_2_2(MAC_10_mul_itm, acc_32_3_1_sva, MAC_or_11_nl);
  assign nl_z_out_3 = (MAC_mux_36_nl) + (MAC_mux_37_nl);
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_or_12_nl = (fsm_output[8]) | (fsm_output[11]);
  assign MAC_mux_38_nl = MUX_v_16_2_2((regs_rsci_qa_d[31:16]), MAC_slc_regs_rsci_qa_d_15_0_3_itm,
      MAC_or_12_nl);
  assign MAC_mux1h_59_nl = MUX1HOT_v_16_3_2(MAC_mux_10_itm, MAC_slc_regs_rsci_qa_d_15_0_4_itm,
      MAC_mux_17_itm, {(fsm_output[6]) , (fsm_output[8]) , (fsm_output[11])});
  assign nl_z_out_6 = $signed((MAC_mux_38_nl)) * $signed((MAC_mux1h_59_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_39_nl = MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_16_itm, fsm_output[14]);
  assign nl_z_out_7 = $signed(MAC_slc_regs_rsci_qa_d_15_0_1_itm) * $signed((MAC_mux_39_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_40_nl = MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_13_itm, fsm_output[13]);
  assign MAC_mux_41_nl = MUX_v_16_2_2(MAC_mux_12_itm, MAC_mux_10_itm, fsm_output[13]);
  assign nl_z_out_8 = $signed((MAC_mux_40_nl)) * $signed((MAC_mux_41_nl));
  assign z_out_8 = nl_z_out_8[29:0];
  assign MAC_mux_42_nl = MUX_v_16_2_2(MAC_mux_18_itm, MAC_mux_13_itm, fsm_output[10]);
  assign nl_z_out_9 = $signed(MAC_slc_regs_rsci_qa_d_15_0_4_itm) * $signed((MAC_mux_42_nl));
  assign z_out_9 = nl_z_out_9[29:0];
  assign MAC_mux_43_nl = MUX_v_4_2_2(MAC_i_4_1_sva, (MAC_slc_MAC_2_MAC_acc_tmp[3:0]),
      fsm_output[5]);
  assign z_out_4 = MUX_v_16_15_2x0x2x3x5x7x8x10x12x13((coeffs_rsci_d[47:32]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[15:0]),
      (coeffs_rsci_d[207:192]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[175:160]),
      (coeffs_rsci_d[367:352]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[335:320]),
      MAC_mux_43_nl);
  assign MAC_mux_44_nl = MUX_v_4_2_2(MAC_slc_MAC_6_MAC_acc_psp_sva_1, MAC_i_4_1_sva,
      fsm_output[6]);
  assign z_out_5 = MUX_v_16_15_2x0x1x2x5x6x7x10x11x12((coeffs_rsci_d[127:112]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[31:16]),
      (coeffs_rsci_d[287:272]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[191:176]),
      (coeffs_rsci_d[447:432]), (MAC_io_read_coeffs_rsc_cse_sva_479_128[351:336]),
      MAC_mux_44_nl);

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


  function automatic [15:0] MUX_v_16_15_2x0x1x2x5x6x7x10x11x12;
    input [15:0] input_3;
    input [15:0] input_4;
    input [15:0] input_8;
    input [15:0] input_9;
    input [15:0] input_13;
    input [15:0] input_14;
    input [3:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      4'b0011 : begin
        result = input_3;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b1000 : begin
        result = input_8;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1101 : begin
        result = input_13;
      end
      default : begin
        result = input_14;
      end
    endcase
    MUX_v_16_15_2x0x1x2x5x6x7x10x11x12 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_15_2x0x2x3x5x7x8x10x12x13;
    input [15:0] input_1;
    input [15:0] input_4;
    input [15:0] input_6;
    input [15:0] input_9;
    input [15:0] input_11;
    input [15:0] input_14;
    input [3:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      4'b0001 : begin
        result = input_1;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1011 : begin
        result = input_11;
      end
      default : begin
        result = input_14;
      end
    endcase
    MUX_v_16_15_2x0x2x3x5x7x8x10x12x13 = result;
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


  function automatic [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 =  {1'b0, vector};
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



