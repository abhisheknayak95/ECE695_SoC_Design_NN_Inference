
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
//  Generated date: Wed Nov 10 15:47:36 2021
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
  output [12:0] fsm_output;
  reg [12:0] fsm_output;
  input regs_vinit_C_1_tr0;
  input MAC_C_3_tr0;


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
    main_C_2 = 4'd12;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      regs_vinit_C_0 : begin
        fsm_output = 13'b0000000000010;
        state_var_NS = regs_vinit_C_1;
      end
      regs_vinit_C_1 : begin
        fsm_output = 13'b0000000000100;
        if ( regs_vinit_C_1_tr0 ) begin
          state_var_NS = regs_vinit_C_0;
        end
        else begin
          state_var_NS = main_C_0;
        end
      end
      main_C_0 : begin
        fsm_output = 13'b0000000001000;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 13'b0000000010000;
        state_var_NS = MAC_C_0;
      end
      MAC_C_0 : begin
        fsm_output = 13'b0000000100000;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 13'b0000001000000;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 13'b0000010000000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 13'b0000100000000;
        if ( MAC_C_3_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = MAC_C_4;
        end
      end
      MAC_C_4 : begin
        fsm_output = 13'b0001000000000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 13'b0010000000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 13'b0100000000000;
        state_var_NS = MAC_C_0;
      end
      main_C_2 : begin
        fsm_output = 13'b1000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 13'b0000000000001;
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
  wire [12:0] fsm_output;
  wire [5:0] MAC_2_acc_2_tmp;
  wire [6:0] nl_MAC_2_acc_2_tmp;
  wire or_tmp_35;
  wire [4:0] wptr_4_0_4_lpi_2_dfm_mx0w2;
  reg [4:0] MAC_MAC_or_4_itm;
  reg MAC_MAC_nor_6_itm;
  wire [4:0] wptr_4_0_3_lpi_2_dfm_mx0w1;
  wire [4:0] wptr_4_0_lpi_2_dfm_1;
  reg [4:0] wptr_4_0_1_sva;
  reg regs_regs_nor_itm;
  wire [4:0] wptr_4_0_2_lpi_2_dfm_1;
  reg [4:0] regs_acc_itm;
  reg reg_MAC_i_5_0_3_ftd;
  wire or_34_seb;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  wire [4:0] MAC_1_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_1_acc_2_psp_sva_1;
  reg [4:0] MAC_4_acc_2_psp_sva;
  wire regs_and_cse;
  wire or_32_cse;
  wire regs_regs_or_rmff;
  wire or_79_tmp;
  wire [4:0] z_out;
  wire [5:0] nl_z_out;
  wire [29:0] z_out_1;
  wire [30:0] nl_z_out_1;
  wire [15:0] z_out_2;
  wire [29:0] z_out_4;
  wire signed [31:0] nl_z_out_4;
  reg [29:0] acc_32_3_1_sva;
  reg [15:0] MAC_mux_itm;
  reg [15:0] MAC_mux_5_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [15:0] MAC_mux_6_itm;
  reg [29:0] MAC_acc_4_itm;
  reg [15:0] MAC_slc_regs_rsci_qa_d_15_0_1_itm;
  reg [15:0] MAC_mux_7_itm;
  wire [4:0] MAC_3_acc_2_psp_sva_1;
  wire [5:0] nl_MAC_3_acc_2_psp_sva_1;
  reg [415:0] MAC_io_read_coeffs_rsc_cse_sva_479_64;
  wire or_65_tmp;
  wire MAC_or_1_cse;

  wire[4:0] mux_nl;
  wire[4:0] else_acc_nl;
  wire[5:0] nl_else_acc_nl;
  wire[0:0] and_130_nl;
  wire[0:0] not_41_nl;
  wire[4:0] rptr_rptr_mux_nl;
  wire[4:0] MAC_4_acc_2_nl;
  wire[5:0] nl_MAC_4_acc_2_nl;
  wire[0:0] nor_7_nl;
  wire[0:0] MAC_and_7_nl;
  wire[0:0] MAC_and_8_nl;
  wire[0:0] MAC_and_9_nl;
  wire[0:0] MAC_and_10_nl;
  wire[0:0] MAC_and_11_nl;
  wire[0:0] MAC_and_12_nl;
  wire[0:0] MAC_and_13_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_1_nl;
  wire[0:0] MAC_and_2_nl;
  wire[0:0] MAC_and_3_nl;
  wire[0:0] MAC_and_4_nl;
  wire[0:0] MAC_and_5_nl;
  wire[0:0] MAC_and_6_nl;
  wire[0:0] MAC_and_14_nl;
  wire[0:0] MAC_and_15_nl;
  wire[0:0] MAC_and_16_nl;
  wire[0:0] MAC_and_17_nl;
  wire[0:0] MAC_and_18_nl;
  wire[0:0] MAC_and_19_nl;
  wire[4:0] MAC_3_else_acc_nl;
  wire[5:0] nl_MAC_3_else_acc_nl;
  wire[4:0] MAC_MAC_or_4_nl;
  wire[0:0] MAC_MAC_nor_8_nl;
  wire[29:0] mul_nl;
  wire signed [31:0] nl_mul_nl;
  wire[15:0] MAC_mux_15_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [31:0] nl_MAC_3_mul_nl;
  wire[4:0] MAC_2_else_acc_nl;
  wire[5:0] nl_MAC_2_else_acc_nl;
  wire[0:0] MAC_MAC_nor_5_nl;
  wire[4:0] MAC_1_else_acc_nl;
  wire[5:0] nl_MAC_1_else_acc_nl;
  wire[0:0] MAC_MAC_nor_nl;
  wire[4:0] MAC_4_else_acc_nl;
  wire[5:0] nl_MAC_4_else_acc_nl;
  wire[0:0] MAC_MAC_nor_7_nl;
  wire[4:0] regs_regs_mux_nl;
  wire[4:0] regs_mux1h_1_nl;
  wire[0:0] regs_or_2_nl;
  wire[4:0] regs_mux_2_nl;
  wire[29:0] MAC_mux_14_nl;
  wire[15:0] MAC_mux_16_nl;
  wire[4:0] MAC_mux_17_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0;
  assign nl_fir_core_core_fsm_inst_regs_vinit_C_1_tr0 = ~ regs_regs_nor_itm;
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_3_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_3_tr0 = reg_MAC_i_5_0_3_ftd;
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
  assign reg_out1_out1_and_cse = (fsm_output[8]) & reg_MAC_i_5_0_3_ftd;
  assign or_32_cse = (fsm_output[3]) | (fsm_output[1]);
  assign regs_and_cse = (fsm_output[2]) & regs_regs_nor_itm;
  assign or_79_tmp = regs_and_cse | ((regs_acc_itm==5'b11111) & (fsm_output[12]));
  assign or_65_tmp = MAC_or_1_cse | (fsm_output[9]) | (fsm_output[6]);
  assign MAC_or_1_cse = (fsm_output[8:7]!=2'b00);
  assign nl_MAC_2_else_acc_nl = wptr_4_0_2_lpi_2_dfm_1 + 5'b11111;
  assign MAC_2_else_acc_nl = nl_MAC_2_else_acc_nl[4:0];
  assign MAC_MAC_nor_5_nl = ~((wptr_4_0_2_lpi_2_dfm_1!=5'b00000));
  assign wptr_4_0_3_lpi_2_dfm_mx0w1 = MUX_v_5_2_2((MAC_2_else_acc_nl), 5'b11111,
      (MAC_MAC_nor_5_nl));
  assign wptr_4_0_4_lpi_2_dfm_mx0w2 = MUX_v_5_2_2(MAC_MAC_or_4_itm, 5'b11111, MAC_MAC_nor_6_itm);
  assign nl_MAC_1_acc_2_psp_sva_1 = MAC_4_acc_2_psp_sva + 5'b00001;
  assign MAC_1_acc_2_psp_sva_1 = nl_MAC_1_acc_2_psp_sva_1[4:0];
  assign nl_MAC_1_else_acc_nl = wptr_4_0_1_sva + 5'b11111;
  assign MAC_1_else_acc_nl = nl_MAC_1_else_acc_nl[4:0];
  assign MAC_MAC_nor_nl = ~((wptr_4_0_1_sva!=5'b00000));
  assign wptr_4_0_2_lpi_2_dfm_1 = MUX_v_5_2_2((MAC_1_else_acc_nl), 5'b11111, (MAC_MAC_nor_nl));
  assign nl_MAC_2_acc_2_tmp = conv_u2s_5_6(MAC_1_acc_2_psp_sva_1) + 6'b000001;
  assign MAC_2_acc_2_tmp = nl_MAC_2_acc_2_tmp[5:0];
  assign nl_MAC_3_acc_2_psp_sva_1 = (MAC_2_acc_2_tmp[4:0]) + 5'b00001;
  assign MAC_3_acc_2_psp_sva_1 = nl_MAC_3_acc_2_psp_sva_1[4:0];
  assign nl_MAC_4_else_acc_nl = wptr_4_0_4_lpi_2_dfm_mx0w2 + 5'b11111;
  assign MAC_4_else_acc_nl = nl_MAC_4_else_acc_nl[4:0];
  assign MAC_MAC_nor_7_nl = ~((wptr_4_0_4_lpi_2_dfm_mx0w2!=5'b00000));
  assign wptr_4_0_lpi_2_dfm_1 = MUX_v_5_2_2((MAC_4_else_acc_nl), 5'b11111, (MAC_MAC_nor_7_nl));
  assign or_tmp_35 = (fsm_output[8]) | (fsm_output[6]);
  assign regs_regs_or_rmff = (fsm_output[7]) | or_34_seb;
  assign or_34_seb = (fsm_output[6:5]!=2'b00);
  assign regs_regs_mux_nl = MUX_v_5_2_2(wptr_4_0_2_lpi_2_dfm_1, wptr_4_0_1_sva, fsm_output[6]);
  assign regs_or_2_nl = (fsm_output[5]) | (fsm_output[7]);
  assign regs_mux1h_1_nl = MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_1_sva, wptr_4_0_lpi_2_dfm_1,
      {or_32_cse , (regs_or_2_nl) , (fsm_output[6])});
  assign regs_rsci_adra_d = {(regs_regs_mux_nl) , (regs_mux1h_1_nl)};
  assign regs_rsci_wea_d = {1'b0 , or_32_cse};
  assign regs_rsci_rea_d = {or_34_seb , regs_regs_or_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d = {or_34_seb , regs_regs_or_rmff};
  assign regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d = {1'b0 , or_32_cse};
  assign regs_rsci_da_d = MUX_v_16_2_2(16'b0000000000000000, in1_rsci_idat, (fsm_output[3]));
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      regs_regs_nor_itm <= 1'b0;
      MAC_MAC_nor_6_itm <= 1'b0;
      MAC_io_read_coeffs_rsc_cse_sva_479_64 <= 416'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      MAC_MAC_or_4_itm <= 5'b00000;
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      regs_regs_nor_itm <= ~((regs_acc_itm!=5'b00000));
      MAC_MAC_nor_6_itm <= ~((wptr_4_0_3_lpi_2_dfm_mx0w1!=5'b00000));
      MAC_io_read_coeffs_rsc_cse_sva_479_64 <= coeffs_rsci_d[479:64];
      MAC_MAC_or_4_itm <= MUX1HOT_v_5_3_2((MAC_3_else_acc_nl), (MAC_MAC_or_4_nl),
          MAC_MAC_or_4_itm, {(fsm_output[5]) , (fsm_output[6]) , (fsm_output[7])});
      MAC_2_mul_itm <= MUX_v_30_2_2((mul_nl), (MAC_acc_3_nl), fsm_output[10]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= z_out_1[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_acc_itm <= 5'b11111;
    end
    else if ( regs_and_cse | (fsm_output[1]) | (fsm_output[12]) ) begin
      regs_acc_itm <= MUX_v_5_2_2(5'b00000, (mux_nl), (not_41_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      wptr_4_0_1_sva <= 5'b00000;
    end
    else if ( (fsm_output[4]) | (fsm_output[8]) | (fsm_output[5]) | (fsm_output[6])
        ) begin
      wptr_4_0_1_sva <= MUX1HOT_v_5_4_2(regs_acc_itm, wptr_4_0_3_lpi_2_dfm_mx0w1,
          wptr_4_0_4_lpi_2_dfm_mx0w2, MAC_MAC_or_4_itm, {(fsm_output[4]) , (fsm_output[5])
          , (fsm_output[6]) , (fsm_output[8])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[4]) | (fsm_output[11]) ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, z_out_1,
          (fsm_output[11]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_4_acc_2_psp_sva <= 5'b00000;
    end
    else if ( (fsm_output[6]) | (fsm_output[5]) | (fsm_output[2]) | (fsm_output[1])
        | (fsm_output[12]) | (fsm_output[4]) | (fsm_output[3]) | (fsm_output[0])
        ) begin
      MAC_4_acc_2_psp_sva <= MUX_v_5_2_2(5'b00000, (rptr_rptr_mux_nl), (nor_7_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_35 ) begin
      MAC_mux_itm <= MUX1HOT_v_16_8_2((coeffs_rsci_d[15:0]), (coeffs_rsci_d[95:80]),
          (coeffs_rsci_d[175:160]), (coeffs_rsci_d[255:240]), (coeffs_rsci_d[335:320]),
          (coeffs_rsci_d[415:400]), (coeffs_rsci_d[495:480]), (regs_rsci_qa_d[15:0]),
          {(MAC_and_7_nl) , (MAC_and_8_nl) , (MAC_and_9_nl) , (MAC_and_10_nl) , (MAC_and_11_nl)
          , (MAC_and_12_nl) , (MAC_and_13_nl) , (fsm_output[7])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_5_itm <= 16'b0000000000000000;
    end
    else if ( ~ MAC_or_1_cse ) begin
      MAC_mux_5_itm <= MUX1HOT_v_16_8_2((coeffs_rsci_d[31:16]), (coeffs_rsci_d[111:96]),
          (coeffs_rsci_d[191:176]), (coeffs_rsci_d[271:256]), (coeffs_rsci_d[351:336]),
          (coeffs_rsci_d[431:416]), (coeffs_rsci_d[511:496]), z_out_2, {(MAC_and_nl)
          , (MAC_and_1_nl) , (MAC_and_2_nl) , (MAC_and_3_nl) , (MAC_and_4_nl) , (MAC_and_5_nl)
          , (MAC_and_6_nl) , (fsm_output[6])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_7_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_65_tmp ) begin
      MAC_mux_7_itm <= MUX1HOT_v_16_6_2((coeffs_rsci_d[63:48]), (coeffs_rsci_d[143:128]),
          (coeffs_rsci_d[223:208]), (coeffs_rsci_d[303:288]), (coeffs_rsci_d[383:368]),
          (coeffs_rsci_d[463:448]), {(MAC_and_14_nl) , (MAC_and_15_nl) , (MAC_and_16_nl)
          , (MAC_and_17_nl) , (MAC_and_18_nl) , (MAC_and_19_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_6_itm <= 16'b0000000000000000;
    end
    else if ( ~((fsm_output[7:6]!=2'b00)) ) begin
      MAC_mux_6_itm <= z_out_2;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[7]) | or_tmp_35 ) begin
      MAC_slc_regs_rsci_qa_d_15_0_1_itm <= MUX_v_16_2_2((regs_rsci_qa_d[31:16]),
          (regs_rsci_qa_d[15:0]), or_tmp_35);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_4_itm <= 30'b000000000000000000000000000000;
    end
    else if ( MAC_or_1_cse ) begin
      MAC_acc_4_itm <= MUX_v_30_2_2((MAC_acc_nl), (MAC_acc_4_nl), fsm_output[8]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_i_5_0_3_ftd <= 1'b0;
    end
    else if ( fsm_output[5] ) begin
      reg_MAC_i_5_0_3_ftd <= MAC_2_acc_2_tmp[5];
    end
  end
  assign nl_MAC_3_else_acc_nl = wptr_4_0_3_lpi_2_dfm_mx0w1 + 5'b11111;
  assign MAC_3_else_acc_nl = nl_MAC_3_else_acc_nl[4:0];
  assign MAC_MAC_nor_8_nl = ~((wptr_4_0_lpi_2_dfm_1!=5'b00000));
  assign MAC_MAC_or_4_nl = MUX_v_5_2_2(z_out, 5'b11111, (MAC_MAC_nor_8_nl));
  assign MAC_mux_15_nl = MUX_v_16_2_2((regs_rsci_qa_d[31:16]), MAC_mux_itm, fsm_output[9]);
  assign nl_mul_nl = $signed((MAC_mux_15_nl)) * $signed(MAC_mux_5_itm);
  assign mul_nl = nl_mul_nl[29:0];
  assign nl_MAC_acc_3_nl = z_out_4 + MAC_2_mul_itm;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_else_acc_nl = regs_acc_itm + 5'b00001;
  assign else_acc_nl = nl_else_acc_nl[4:0];
  assign and_130_nl = (fsm_output[12]) & (~ or_79_tmp);
  assign mux_nl = MUX_v_5_2_2(z_out, (else_acc_nl), and_130_nl);
  assign not_41_nl = ~ or_79_tmp;
  assign nl_MAC_4_acc_2_nl = MAC_3_acc_2_psp_sva_1 + 5'b00001;
  assign MAC_4_acc_2_nl = nl_MAC_4_acc_2_nl[4:0];
  assign rptr_rptr_mux_nl = MUX_v_5_2_2((MAC_4_acc_2_nl), MAC_1_acc_2_psp_sva_1,
      fsm_output[6]);
  assign nor_7_nl = ~((fsm_output[0]) | (fsm_output[3]) | (fsm_output[4]) | (fsm_output[12])
      | (fsm_output[1]) | (fsm_output[2]));
  assign MAC_and_7_nl = (MAC_4_acc_2_psp_sva==5'b00000) & (fsm_output[5]);
  assign MAC_and_8_nl = (MAC_4_acc_2_psp_sva==5'b00101) & (fsm_output[5]);
  assign MAC_and_9_nl = (MAC_4_acc_2_psp_sva==5'b01010) & (fsm_output[5]);
  assign MAC_and_10_nl = (MAC_4_acc_2_psp_sva==5'b01111) & (fsm_output[5]);
  assign MAC_and_11_nl = (MAC_4_acc_2_psp_sva==5'b10100) & (fsm_output[5]);
  assign MAC_and_12_nl = (MAC_4_acc_2_psp_sva==5'b11001) & (fsm_output[5]);
  assign MAC_and_13_nl = (MAC_4_acc_2_psp_sva==5'b11110) & (fsm_output[5]);
  assign MAC_and_nl = (MAC_1_acc_2_psp_sva_1==5'b00001) & (fsm_output[5]);
  assign MAC_and_1_nl = (MAC_1_acc_2_psp_sva_1==5'b00110) & (fsm_output[5]);
  assign MAC_and_2_nl = (MAC_1_acc_2_psp_sva_1==5'b01011) & (fsm_output[5]);
  assign MAC_and_3_nl = (MAC_1_acc_2_psp_sva_1==5'b10000) & (fsm_output[5]);
  assign MAC_and_4_nl = (MAC_1_acc_2_psp_sva_1==5'b10101) & (fsm_output[5]);
  assign MAC_and_5_nl = (MAC_1_acc_2_psp_sva_1==5'b11010) & (fsm_output[5]);
  assign MAC_and_6_nl = (MAC_1_acc_2_psp_sva_1==5'b11111) & (fsm_output[5]);
  assign MAC_and_14_nl = (MAC_3_acc_2_psp_sva_1==5'b00011) & (~ or_65_tmp);
  assign MAC_and_15_nl = (MAC_3_acc_2_psp_sva_1==5'b01000) & (~ or_65_tmp);
  assign MAC_and_16_nl = (MAC_3_acc_2_psp_sva_1==5'b01101) & (~ or_65_tmp);
  assign MAC_and_17_nl = (MAC_3_acc_2_psp_sva_1==5'b10010) & (~ or_65_tmp);
  assign MAC_and_18_nl = (MAC_3_acc_2_psp_sva_1==5'b10111) & (~ or_65_tmp);
  assign MAC_and_19_nl = (MAC_3_acc_2_psp_sva_1==5'b11100) & (~ or_65_tmp);
  assign nl_MAC_acc_nl = z_out_4 + MAC_2_mul_itm;
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(MAC_slc_regs_rsci_qa_d_15_0_1_itm) * $signed(MAC_mux_6_itm);
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_acc_4_nl = z_out_1 + (MAC_3_mul_nl);
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign regs_mux_2_nl = MUX_v_5_2_2(regs_acc_itm, wptr_4_0_lpi_2_dfm_1, fsm_output[6]);
  assign nl_z_out = (regs_mux_2_nl) + 5'b11111;
  assign z_out = nl_z_out[4:0];
  assign MAC_mux_14_nl = MUX_v_30_2_2(MAC_2_mul_itm, acc_32_3_1_sva, fsm_output[8]);
  assign nl_z_out_1 = MAC_acc_4_itm + (MAC_mux_14_nl);
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux_16_nl = MUX_v_16_2_2(MAC_mux_7_itm, MAC_mux_itm, fsm_output[7]);
  assign nl_z_out_4 = $signed(MAC_slc_regs_rsci_qa_d_15_0_1_itm) * $signed((MAC_mux_16_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_17_nl = MUX_v_5_2_2(MAC_4_acc_2_psp_sva, (MAC_2_acc_2_tmp[4:0]),
      fsm_output[5]);
  assign z_out_2 = MUX_v_16_30_2x0x1x3x5x6x8x10x11x13x15x16x18x20x21x23x25x26x28((coeffs_rsci_d[47:32]),
      (MAC_io_read_coeffs_rsc_cse_sva_479_64[15:0]), (coeffs_rsci_d[127:112]), (MAC_io_read_coeffs_rsc_cse_sva_479_64[95:80]),
      (coeffs_rsci_d[207:192]), (MAC_io_read_coeffs_rsc_cse_sva_479_64[175:160]),
      (coeffs_rsci_d[287:272]), (MAC_io_read_coeffs_rsc_cse_sva_479_64[255:240]),
      (coeffs_rsci_d[367:352]), (MAC_io_read_coeffs_rsc_cse_sva_479_64[335:320]),
      (coeffs_rsci_d[447:432]), (MAC_io_read_coeffs_rsc_cse_sva_479_64[415:400]),
      MAC_mux_17_nl);

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


  function automatic [15:0] MUX_v_16_30_2x0x1x3x5x6x8x10x11x13x15x16x18x20x21x23x25x26x28;
    input [15:0] input_2;
    input [15:0] input_4;
    input [15:0] input_7;
    input [15:0] input_9;
    input [15:0] input_12;
    input [15:0] input_14;
    input [15:0] input_17;
    input [15:0] input_19;
    input [15:0] input_22;
    input [15:0] input_24;
    input [15:0] input_27;
    input [15:0] input_29;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00010 : begin
        result = input_2;
      end
      5'b00100 : begin
        result = input_4;
      end
      5'b00111 : begin
        result = input_7;
      end
      5'b01001 : begin
        result = input_9;
      end
      5'b01100 : begin
        result = input_12;
      end
      5'b01110 : begin
        result = input_14;
      end
      5'b10001 : begin
        result = input_17;
      end
      5'b10011 : begin
        result = input_19;
      end
      5'b10110 : begin
        result = input_22;
      end
      5'b11000 : begin
        result = input_24;
      end
      5'b11011 : begin
        result = input_27;
      end
      default : begin
        result = input_29;
      end
    endcase
    MUX_v_16_30_2x0x1x3x5x6x8x10x11x13x15x16x18x20x21x23x25x26x28 = result;
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


  function automatic [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 =  {1'b0, vector};
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



