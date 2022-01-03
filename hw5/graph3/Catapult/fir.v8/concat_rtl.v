
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
//  Generated date: Wed Nov 10 15:50:03 2021
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
  clk, rst, fsm_output, regs_vinit_C_1_tr0, MAC_C_9_tr0
);
  input clk;
  input rst;
  output [15:0] fsm_output;
  reg [15:0] fsm_output;
  input regs_vinit_C_1_tr0;
  input MAC_C_9_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    core_rlp_C_0 = 4'd0,
    regs_vinit_C_0 = 4'd1,
    regs_vinit_C_1 = 4'd2,
    main_C_0 = 4'd3,
    main_C_1 = 4'd4,
    MAC_C_0 = 4'd5,
    MAC_C_1 = 4'd6,
    MAC_C_2 = 4'd7,
    MAC_C_3 = 4'd8,
    MAC_C_4 = 4'd9,
    MAC_C_5 = 4'd10,
    MAC_C_6 = 4'd11,
    MAC_C_7 = 4'd12,
    MAC_C_8 = 4'd13,
    MAC_C_9 = 4'd14,
    main_C_2 = 4'd15;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      regs_vinit_C_0 : begin
        fsm_output = 16'b0000000000000010;
        state_var_NS = regs_vinit_C_1;
      end
      regs_vinit_C_1 : begin
        fsm_output = 16'b0000000000000100;
        if ( regs_vinit_C_1_tr0 ) begin
          state_var_NS = regs_vinit_C_0;
        end
        else begin
          state_var_NS = main_C_0;
        end
      end
      main_C_0 : begin
        fsm_output = 16'b0000000000001000;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 16'b0000000000010000;
        state_var_NS = MAC_C_0;
      end
      MAC_C_0 : begin
        fsm_output = 16'b0000000000100000;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 16'b0000000001000000;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 16'b0000000010000000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 16'b0000000100000000;
        state_var_NS = MAC_C_4;
      end
      MAC_C_4 : begin
        fsm_output = 16'b0000001000000000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 16'b0000010000000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 16'b0000100000000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 16'b0001000000000000;
        state_var_NS = MAC_C_8;
      end
      MAC_C_8 : begin
        fsm_output = 16'b0010000000000000;
        state_var_NS = MAC_C_9;
      end
      MAC_C_9 : begin
        fsm_output = 16'b0100000000000000;
        if ( MAC_C_9_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = MAC_C_0;
        end
      end
      main_C_2 : begin
        fsm_output = 16'b1000000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 16'b0000000000000001;
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
  wire [15:0] fsm_output;
  wire [4:0] MAC_6_else_acc_tmp;
  wire [5:0] nl_MAC_6_else_acc_tmp;
  wire [4:0] wptr_4_0_5_lpi_2_dfm_1;
  wire [4:0] MAC_MAC_or_7_itm_1;
  wire [4:0] wptr_4_0_3_lpi_2_dfm_1;
  reg [4:0] wptr_4_0_1_sva_2;
  wire [4:0] wptr_4_0_lpi_2_dfm_mx0w1;
  reg [4:0] wptr_4_0_1_sva;
  reg [2:0] MAC_i_5_3_sva_1;
  reg MAC_MAC_nor_12_itm;
  reg regs_regs_nor_itm;
  wire [4:0] wptr_4_0_7_lpi_2_dfm_1;
  wire [4:0] wptr_4_0_6_lpi_2_dfm_mx0w1;
  wire [4:0] wptr_4_0_2_lpi_2_dfm_1;
  reg [4:0] regs_acc_itm;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire MAC_or_cse;
  wire reg_out1_out1_and_cse;
  wire MAC_MAC_nor_18_cse;
  wire MAC_and_9_cse;
  wire MAC_and_10_cse;
  wire MAC_and_11_cse;
  wire acc_or_cse;
  wire regs_and_cse;
  wire or_33_cse;
  wire or_34_rmff;
  reg [4:0] wptr_4_0_3_lpi_2_dfm;
  wire or_93_tmp;
  wire [4:0] z_out;
  wire [5:0] nl_z_out;
  wire [4:0] z_out_1;
  wire [5:0] nl_z_out_1;
  wire [29:0] z_out_3;
  wire signed [31:0] nl_z_out_3;
  wire [29:0] z_out_4;
  wire signed [31:0] nl_z_out_4;
  wire [29:0] z_out_5;
  wire signed [31:0] nl_z_out_5;
  wire [29:0] z_out_6;
  wire signed [31:0] nl_z_out_6;
  wire [29:0] z_out_7;
  wire [30:0] nl_z_out_7;
  reg [29:0] acc_32_3_1_sva;
  reg [15:0] MAC_mux_itm;
  reg [29:0] MAC_7_mul_itm;
  reg [15:0] MAC_mux_8_itm;
  reg [15:0] MAC_mux_9_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [29:0] MAC_acc_6_itm;
  reg [15:0] MAC_mux_11_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_31_16_3_itm;
  reg [15:0] MAC_mux_12_itm;
  reg [29:0] MAC_acc_5_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_2_itm;
  reg [15:0] MAC_mux_13_itm;
  reg [29:0] MAC_5_mul_itm;
  reg [15:0] MAC_mux_14_itm;
  wire reg_MAC_slc_regs_MAC_or_cse;
  wire [4:0] wptr_wptr_mux_cse;

  wire[4:0] mux_nl;
  wire[0:0] and_152_nl;
  wire[0:0] not_51_nl;
  wire[0:0] or_49_nl;
  wire[4:0] MAC_else_acc_nl;
  wire[5:0] nl_MAC_else_acc_nl;
  wire[1:0] MAC_i_MAC_i_and_nl;
  wire[0:0] MAC_MAC_nor_9_nl;
  wire[0:0] MAC_MAC_nor_12_nl;
  wire[0:0] MAC_MAC_nor_14_nl;
  wire[0:0] nand_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_1_nl;
  wire[0:0] MAC_and_2_nl;
  wire[0:0] MAC_and_3_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[4:0] MAC_5_else_acc_nl;
  wire[5:0] nl_MAC_5_else_acc_nl;
  wire[0:0] MAC_MAC_nor_11_nl;
  wire[0:0] MAC_MAC_nor_8_nl;
  wire[0:0] MAC_MAC_nor_13_nl;
  wire[0:0] MAC_MAC_nor_nl;
  wire[4:0] MAC_4_else_acc_nl;
  wire[5:0] nl_MAC_4_else_acc_nl;
  wire[0:0] MAC_MAC_nor_10_nl;
  wire[4:0] regs_mux1h_nl;
  wire[0:0] regs_or_1_nl;
  wire[4:0] regs_mux1h_4_nl;
  wire[4:0] else_mux_1_nl;
  wire[4:0] regs_mux1h_7_nl;
  wire[15:0] MAC_mux_29_nl;
  wire[15:0] MAC_mux_30_nl;
  wire[15:0] MAC_mux_31_nl;
  wire[15:0] MAC_mux_32_nl;
  wire[15:0] MAC_mux_33_nl;
  wire[15:0] MAC_mux_34_nl;
  wire[29:0] MAC_mux1h_11_nl;
  wire[29:0] MAC_mux_35_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0;
  assign nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0 = ~ regs_regs_nor_itm;
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_9_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_9_tr0 = MAC_i_5_3_sva_1[2];
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
      .MAC_C_9_tr0(nl_fir_core_core_fsm_inst_MAC_C_9_tr0[0:0])
    );
  assign reg_out1_out1_and_cse = (fsm_output[14]) & (MAC_i_5_3_sva_1[2]);
  assign or_33_cse = (fsm_output[3]) | (fsm_output[1]);
  assign or_34_rmff = (fsm_output[8:5]!=4'b0000);
  assign regs_and_cse = (fsm_output[2]) & regs_regs_nor_itm;
  assign or_93_tmp = ((~ MAC_MAC_nor_12_itm) & (fsm_output[15])) | regs_and_cse;
  assign acc_or_cse = (fsm_output[4]) | (fsm_output[14]);
  assign wptr_wptr_mux_cse = MUX_v_5_2_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_lpi_2_dfm_mx0w1,
      fsm_output[7]);
  assign MAC_or_cse = (fsm_output[5]) | (fsm_output[8]);
  assign MAC_MAC_nor_18_cse = ~((wptr_4_0_1_sva_2[1:0]!=2'b00) | (fsm_output[8]));
  assign MAC_and_9_cse = (wptr_4_0_1_sva_2[1:0]==2'b01) & (~ (fsm_output[8]));
  assign MAC_and_10_cse = (wptr_4_0_1_sva_2[1:0]==2'b10) & (~ (fsm_output[8]));
  assign MAC_and_11_cse = (wptr_4_0_1_sva_2[1:0]==2'b11) & (~ (fsm_output[8]));
  assign reg_MAC_slc_regs_MAC_or_cse = (fsm_output[7]) | (fsm_output[9]);
  assign nl_MAC_5_else_acc_nl = wptr_4_0_5_lpi_2_dfm_1 + 5'b11111;
  assign MAC_5_else_acc_nl = nl_MAC_5_else_acc_nl[4:0];
  assign MAC_MAC_nor_11_nl = ~((wptr_4_0_5_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_6_lpi_2_dfm_mx0w1 = MUX_v_5_2_2((MAC_5_else_acc_nl), 5'b11111,
      (MAC_MAC_nor_11_nl));
  assign MAC_MAC_or_7_itm_1 = MUX_v_5_2_2(wptr_4_0_1_sva_2, 5'b11111, MAC_MAC_nor_12_itm);
  assign MAC_MAC_nor_8_nl = ~((wptr_4_0_2_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_3_lpi_2_dfm_1 = MUX_v_5_2_2(z_out_1, 5'b11111, (MAC_MAC_nor_8_nl));
  assign MAC_MAC_nor_13_nl = ~((wptr_4_0_7_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_lpi_2_dfm_mx0w1 = MUX_v_5_2_2(z_out_1, 5'b11111, (MAC_MAC_nor_13_nl));
  assign MAC_MAC_nor_nl = ~((wptr_4_0_1_sva!=5'b00000));
  assign wptr_4_0_2_lpi_2_dfm_1 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111, (MAC_MAC_nor_nl));
  assign nl_MAC_6_else_acc_tmp = wptr_4_0_1_sva + 5'b11111;
  assign MAC_6_else_acc_tmp = nl_MAC_6_else_acc_tmp[4:0];
  assign nl_MAC_4_else_acc_nl = MAC_MAC_or_7_itm_1 + 5'b11111;
  assign MAC_4_else_acc_nl = nl_MAC_4_else_acc_nl[4:0];
  assign MAC_MAC_nor_10_nl = ~((MAC_MAC_or_7_itm_1!=5'b00000));
  assign wptr_4_0_5_lpi_2_dfm_1 = MUX_v_5_2_2((MAC_4_else_acc_nl), 5'b11111, (MAC_MAC_nor_10_nl));
  assign wptr_4_0_7_lpi_2_dfm_1 = MUX_v_5_2_2(MAC_6_else_acc_tmp, 5'b11111, MAC_MAC_nor_12_itm);
  assign regs_or_1_nl = (fsm_output[8:7]!=2'b00);
  assign regs_mux1h_nl = MUX1HOT_v_5_3_2(wptr_4_0_1_sva, MAC_MAC_or_7_itm_1, wptr_4_0_3_lpi_2_dfm,
      {(fsm_output[5]) , (fsm_output[6]) , (regs_or_1_nl)});
  assign regs_mux1h_4_nl = MUX1HOT_v_5_5_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1,
      wptr_4_0_5_lpi_2_dfm_1, wptr_4_0_7_lpi_2_dfm_1, wptr_4_0_1_sva, {or_33_cse
      , (fsm_output[5]) , (fsm_output[6]) , (fsm_output[7]) , (fsm_output[8])});
  assign regs_rsci_adra_d = {(regs_mux1h_nl) , (regs_mux1h_4_nl)};
  assign regs_rsci_wea_d = {1'b0 , or_33_cse};
  assign regs_rsci_rea_d = {{1{or_34_rmff}}, or_34_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d = {{1{or_34_rmff}}, or_34_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d = {1'b0 , or_33_cse};
  assign regs_rsci_da_d = MUX_v_16_2_2(16'b0000000000000000, in1_rsci_idat, (fsm_output[3]));
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      regs_regs_nor_itm <= 1'b0;
      wptr_4_0_1_sva <= 5'b00000;
      wptr_4_0_1_sva_2 <= 5'b00000;
      MAC_MAC_nor_12_itm <= 1'b0;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      regs_regs_nor_itm <= ~((regs_acc_itm!=5'b00000));
      wptr_4_0_1_sva <= MUX1HOT_v_5_4_2(regs_acc_itm, wptr_4_0_6_lpi_2_dfm_mx0w1,
          MAC_MAC_or_7_itm_1, wptr_4_0_1_sva, {(fsm_output[4]) , (fsm_output[6])
          , (fsm_output[8]) , (or_49_nl)});
      wptr_4_0_1_sva_2 <= MUX_v_5_2_2((MAC_else_acc_nl), ({3'b000 , (MAC_i_MAC_i_and_nl)}),
          acc_or_cse);
      MAC_MAC_nor_12_itm <= MUX1HOT_s_1_4_2((MAC_MAC_nor_9_nl), (MAC_MAC_nor_12_nl),
          (MAC_MAC_nor_14_nl), (nand_nl), {(fsm_output[5]) , (fsm_output[6]) , (fsm_output[7])
          , (fsm_output[14])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= z_out_7[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_acc_itm <= 5'b11111;
    end
    else if ( regs_and_cse | (fsm_output[1]) | (fsm_output[15]) ) begin
      regs_acc_itm <= MUX_v_5_2_2(5'b00000, (mux_nl), (not_51_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( acc_or_cse ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, z_out_7,
          (fsm_output[14]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_3_lpi_2_dfm <= 5'b00000;
    end
    else if ( (fsm_output[5]) | (fsm_output[7]) ) begin
      wptr_4_0_3_lpi_2_dfm <= wptr_wptr_mux_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_5_3_sva_1 <= 3'b000;
    end
    else if ( fsm_output[5] ) begin
      MAC_i_5_3_sva_1 <= z_out[2:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_14_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[5] ) begin
      MAC_mux_14_itm <= MUX_v_16_4_2((coeffs_rsci_d[95:80]), (coeffs_rsci_d[223:208]),
          (coeffs_rsci_d[351:336]), (coeffs_rsci_d[479:464]), wptr_4_0_1_sva_2[1:0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_8_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[5] ) begin
      MAC_mux_8_itm <= MUX_v_16_4_2((coeffs_rsci_d[127:112]), (coeffs_rsci_d[255:240]),
          (coeffs_rsci_d[383:368]), (coeffs_rsci_d[511:496]), wptr_4_0_1_sva_2[1:0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_11_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[5] ) begin
      MAC_mux_11_itm <= MUX_v_16_4_2((coeffs_rsci_d[47:32]), (coeffs_rsci_d[175:160]),
          (coeffs_rsci_d[303:288]), (coeffs_rsci_d[431:416]), wptr_4_0_1_sva_2[1:0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[5] ) begin
      MAC_mux_itm <= MUX_v_16_4_2((coeffs_rsci_d[111:96]), (coeffs_rsci_d[239:224]),
          (coeffs_rsci_d[367:352]), (coeffs_rsci_d[495:480]), wptr_4_0_1_sva_2[1:0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_12_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[5] ) begin
      MAC_mux_12_itm <= MUX_v_16_4_2((coeffs_rsci_d[63:48]), (coeffs_rsci_d[191:176]),
          (coeffs_rsci_d[319:304]), (coeffs_rsci_d[447:432]), wptr_4_0_1_sva_2[1:0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_13_itm <= 16'b0000000000000000;
      MAC_mux_9_itm <= 16'b0000000000000000;
    end
    else if ( MAC_or_cse ) begin
      MAC_mux_13_itm <= MUX1HOT_v_16_5_2((coeffs_rsci_d[79:64]), (coeffs_rsci_d[207:192]),
          (coeffs_rsci_d[335:320]), (coeffs_rsci_d[463:448]), (regs_rsci_qa_d[15:0]),
          {MAC_MAC_nor_18_cse , MAC_and_9_cse , MAC_and_10_cse , MAC_and_11_cse ,
          (fsm_output[8])});
      MAC_mux_9_itm <= MUX1HOT_v_16_5_2((coeffs_rsci_d[15:0]), (coeffs_rsci_d[143:128]),
          (coeffs_rsci_d[271:256]), (coeffs_rsci_d[399:384]), (regs_rsci_qa_d[31:16]),
          {MAC_MAC_nor_18_cse , MAC_and_9_cse , MAC_and_10_cse , MAC_and_11_cse ,
          (fsm_output[8])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_2_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[6:5]!=2'b00) | reg_MAC_slc_regs_MAC_or_cse ) begin
      MAC_slc_regs_rsci_qa_d_15_0_2_itm <= MUX1HOT_v_16_6_2((coeffs_rsci_d[31:16]),
          (coeffs_rsci_d[159:144]), (coeffs_rsci_d[287:272]), (coeffs_rsci_d[415:400]),
          (regs_rsci_qa_d[31:16]), (regs_rsci_qa_d[15:0]), {(MAC_and_nl) , (MAC_and_1_nl)
          , (MAC_and_2_nl) , (MAC_and_3_nl) , (fsm_output[6]) , reg_MAC_slc_regs_MAC_or_cse});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[13]) | (fsm_output[6]) | (fsm_output[9]) ) begin
      MAC_2_mul_itm <= MUX1HOT_v_30_3_2(z_out_3, z_out_4, (MAC_acc_4_nl), {(fsm_output[6])
          , (fsm_output[9]) , (fsm_output[13])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_6_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[7] ) begin
      MAC_acc_6_itm <= z_out_7;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_31_16_3_itm <= 16'b0000000000000000;
    end
    else if ( reg_MAC_slc_regs_MAC_or_cse ) begin
      MAC_slc_regs_rsci_qa_d_31_16_3_itm <= regs_rsci_qa_d[31:16];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[13]) | (fsm_output[8]) ) begin
      MAC_5_mul_itm <= MUX_v_30_2_2(z_out_3, (MAC_acc_9_nl), fsm_output[13]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_7_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[12]) | (fsm_output[10]) ) begin
      MAC_7_mul_itm <= MUX_v_30_2_2(z_out_6, (MAC_acc_3_nl), fsm_output[12]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_5_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[11] ) begin
      MAC_acc_5_itm <= z_out_7;
    end
  end
  assign or_49_nl = (fsm_output[11]) | (fsm_output[12]) | (fsm_output[13]) | (fsm_output[14])
      | (fsm_output[10]) | (fsm_output[7]) | (fsm_output[9]);
  assign nl_MAC_else_acc_nl = wptr_wptr_mux_cse + 5'b11111;
  assign MAC_else_acc_nl = nl_MAC_else_acc_nl[4:0];
  assign MAC_i_MAC_i_and_nl = MUX_v_2_2_2(2'b00, (MAC_i_5_3_sva_1[1:0]), (fsm_output[14]));
  assign MAC_MAC_nor_9_nl = ~((wptr_4_0_3_lpi_2_dfm_1!=5'b00000));
  assign MAC_MAC_nor_12_nl = ~((wptr_4_0_6_lpi_2_dfm_mx0w1!=5'b00000));
  assign MAC_MAC_nor_14_nl = ~((wptr_4_0_lpi_2_dfm_mx0w1!=5'b00000));
  assign nand_nl = ~((regs_acc_itm==5'b11111));
  assign and_152_nl = (fsm_output[15]) & (~ or_93_tmp);
  assign mux_nl = MUX_v_5_2_2(z_out_1, z_out, and_152_nl);
  assign not_51_nl = ~ or_93_tmp;
  assign MAC_and_nl = (wptr_4_0_1_sva_2[1:0]==2'b00) & (fsm_output[5]);
  assign MAC_and_1_nl = (wptr_4_0_1_sva_2[1:0]==2'b01) & (fsm_output[5]);
  assign MAC_and_2_nl = (wptr_4_0_1_sva_2[1:0]==2'b10) & (fsm_output[5]);
  assign MAC_and_3_nl = (wptr_4_0_1_sva_2[1:0]==2'b11) & (fsm_output[5]);
  assign nl_MAC_acc_4_nl = MAC_5_mul_itm + z_out_5;
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign nl_MAC_acc_7_nl = MAC_7_mul_itm + acc_32_3_1_sva;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_9_nl = (MAC_acc_7_nl) + MAC_acc_6_itm;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_acc_3_nl = MAC_7_mul_itm + z_out_4;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign else_mux_1_nl = MUX_v_5_2_2(regs_acc_itm, ({3'b000 , (wptr_4_0_1_sva_2[1:0])}),
      fsm_output[5]);
  assign nl_z_out = (else_mux_1_nl) + 5'b00001;
  assign z_out = nl_z_out[4:0];
  assign regs_mux1h_7_nl = MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1,
      wptr_4_0_7_lpi_2_dfm_1, {(fsm_output[1]) , (fsm_output[5]) , (fsm_output[7])});
  assign nl_z_out_1 = (regs_mux1h_7_nl) + 5'b11111;
  assign z_out_1 = nl_z_out_1[4:0];
  assign MAC_mux_29_nl = MUX_v_16_2_2((regs_rsci_qa_d[15:0]), MAC_slc_regs_rsci_qa_d_15_0_2_itm,
      fsm_output[8]);
  assign MAC_mux_30_nl = MUX_v_16_2_2(MAC_slc_regs_rsci_qa_d_15_0_2_itm, MAC_mux_13_itm,
      fsm_output[8]);
  assign nl_z_out_3 = $signed((MAC_mux_29_nl)) * $signed((MAC_mux_30_nl));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_31_nl = MUX_v_16_2_2(MAC_mux_12_itm, MAC_mux_8_itm, fsm_output[12]);
  assign nl_z_out_4 = $signed(MAC_slc_regs_rsci_qa_d_31_16_3_itm) * $signed((MAC_mux_31_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_32_nl = MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_9_itm, fsm_output[7]);
  assign nl_z_out_5 = $signed(MAC_slc_regs_rsci_qa_d_15_0_2_itm) * $signed((MAC_mux_32_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_33_nl = MUX_v_16_2_2(MAC_mux_13_itm, MAC_mux_9_itm, fsm_output[11]);
  assign MAC_mux_34_nl = MUX_v_16_2_2(MAC_mux_itm, MAC_mux_11_itm, fsm_output[11]);
  assign nl_z_out_6 = $signed((MAC_mux_33_nl)) * $signed((MAC_mux_34_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux1h_11_nl = MUX1HOT_v_30_3_2(z_out_5, z_out_6, MAC_5_mul_itm, {(fsm_output[7])
      , (fsm_output[11]) , (fsm_output[14])});
  assign nl_MAC_acc_10_nl = MAC_acc_5_itm + MAC_2_mul_itm;
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign MAC_mux_35_nl = MUX_v_30_2_2(MAC_2_mul_itm, (MAC_acc_10_nl), fsm_output[14]);
  assign nl_z_out_7 = (MAC_mux1h_11_nl) + (MAC_mux_35_nl);
  assign z_out_7 = nl_z_out_7[29:0];

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


  function automatic [15:0] MUX_v_16_4_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input [15:0] input_2;
    input [15:0] input_3;
    input [1:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = input_0;
      end
      2'b01 : begin
        result = input_1;
      end
      2'b10 : begin
        result = input_2;
      end
      default : begin
        result = input_3;
      end
    endcase
    MUX_v_16_4_2 = result;
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



