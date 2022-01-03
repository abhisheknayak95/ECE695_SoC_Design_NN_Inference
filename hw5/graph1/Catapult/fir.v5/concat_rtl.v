
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


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@cparch23.ecn.purdue.edu
//  Generated date: Tue Nov  9 14:57:23 2021
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen
// ------------------------------------------------------------------


module fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen (
  q, radr, radr_d, q_d, rport_r_ram_ir_internal_RMASK_B_d
);
  input [15:0] q;
  output [4:0] radr;
  input [4:0] radr_d;
  output [15:0] q_d;
  input rport_r_ram_ir_internal_RMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign q_d = q;
  assign radr = (radr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module fir_core_core_fsm (
  clk, rst, fsm_output, MAC_C_3_tr0
);
  input clk;
  input rst;
  output [8:0] fsm_output;
  reg [8:0] fsm_output;
  input MAC_C_3_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 4'd0,
    MAC_C_0 = 4'd1,
    MAC_C_1 = 4'd2,
    MAC_C_2 = 4'd3,
    MAC_C_3 = 4'd4,
    MAC_C_4 = 4'd5,
    MAC_C_5 = 4'd6,
    MAC_C_6 = 4'd7,
    main_C_1 = 4'd8;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      MAC_C_0 : begin
        fsm_output = 9'b000000010;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 9'b000000100;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 9'b000001000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 9'b000010000;
        if ( MAC_C_3_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MAC_C_4;
        end
      end
      MAC_C_4 : begin
        fsm_output = 9'b000100000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 9'b001000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 9'b010000000;
        state_var_NS = MAC_C_0;
      end
      main_C_1 : begin
        fsm_output = 9'b100000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 9'b000000001;
        state_var_NS = MAC_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= main_C_0;
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
  clk, rst, coeffs_rsc_triosy_lz, in1_rsc_dat, in1_rsc_triosy_lz, out1_rsc_dat, out1_rsc_triosy_lz,
      coeffs_rsci_radr_d, coeffs_rsci_q_d, coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d
);
  input clk;
  input rst;
  output coeffs_rsc_triosy_lz;
  input [15:0] in1_rsc_dat;
  output in1_rsc_triosy_lz;
  output [15:0] out1_rsc_dat;
  output out1_rsc_triosy_lz;
  output [4:0] coeffs_rsci_radr_d;
  input [15:0] coeffs_rsci_q_d;
  output coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d;


  // Interconnect Declarations
  wire [15:0] in1_rsci_idat;
  reg [15:0] out1_rsci_idat;
  wire [8:0] fsm_output;
  wire [5:0] MAC_2_acc_2_tmp;
  wire [6:0] nl_MAC_2_acc_2_tmp;
  wire or_tmp_148;
  reg [5:0] MAC_i_5_0_3_sva;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  wire nor_6_cse;
  wire [4:0] MAC_1_acc_2_psp_sva_mx0w0;
  wire [5:0] nl_MAC_1_acc_2_psp_sva_mx0w0;
  reg [4:0] MAC_5_acc_2_itm;
  reg [4:0] MAC_3_acc_2_psp_sva;
  reg [4:0] MAC_4_acc_2_psp_sva;
  wire [4:0] z_out_1;
  wire [5:0] nl_z_out_1;
  wire [15:0] z_out_2;
  wire [29:0] z_out_3;
  wire signed [31:0] nl_z_out_3;
  reg [15:0] regs_15_sva;
  reg [15:0] regs_16_sva;
  reg [15:0] regs_14_sva;
  reg [15:0] regs_17_sva;
  reg [15:0] regs_13_sva;
  reg [15:0] regs_18_sva;
  reg [15:0] regs_12_sva;
  reg [15:0] regs_19_sva;
  reg [15:0] regs_11_sva;
  reg [15:0] regs_20_sva;
  reg [15:0] regs_10_sva;
  reg [15:0] regs_21_sva;
  reg [15:0] regs_9_sva;
  reg [15:0] regs_22_sva;
  reg [15:0] regs_8_sva;
  reg [15:0] regs_23_sva;
  reg [15:0] regs_7_sva;
  reg [15:0] regs_24_sva;
  reg [15:0] regs_6_sva;
  reg [15:0] regs_25_sva;
  reg [15:0] regs_5_sva;
  reg [15:0] regs_26_sva;
  reg [15:0] regs_4_sva;
  reg [15:0] regs_27_sva;
  reg [15:0] regs_3_sva;
  reg [15:0] regs_28_sva;
  reg [15:0] regs_2_sva;
  reg [15:0] regs_29_sva;
  reg [15:0] regs_1_sva;
  reg [15:0] regs_30_sva;
  reg [15:0] regs_0_sva;
  reg [29:0] acc_32_3_1_sva;
  reg [15:0] regs_30_sva_1;
  reg [15:0] regs_29_sva_1;
  reg [15:0] regs_28_sva_1;
  reg [15:0] regs_27_sva_1;
  reg [15:0] regs_26_sva_1;
  reg [15:0] regs_25_sva_1;
  reg [15:0] regs_24_sva_1;
  reg [15:0] regs_23_sva_1;
  reg [15:0] regs_22_sva_1;
  reg [15:0] regs_21_sva_1;
  reg [15:0] regs_20_sva_1;
  reg [15:0] regs_19_sva_1;
  reg [15:0] regs_18_sva_1;
  reg [15:0] regs_17_sva_1;
  reg [15:0] regs_16_sva_1;
  reg [15:0] regs_15_sva_1;
  reg [15:0] regs_14_sva_1;
  reg [15:0] regs_13_sva_1;
  reg [15:0] regs_12_sva_1;
  reg [15:0] regs_11_sva_1;
  reg [15:0] regs_10_sva_1;
  reg [15:0] regs_9_sva_1;
  reg [15:0] regs_8_sva_1;
  reg [15:0] regs_7_sva_1;
  reg [15:0] regs_6_sva_1;
  reg [15:0] regs_5_sva_1;
  reg [15:0] regs_4_sva_1;
  reg [15:0] regs_3_sva_1;
  reg [15:0] regs_2_sva_1;
  reg [15:0] regs_1_sva_1;
  reg [15:0] regs_0_sva_1;
  reg [15:0] MAC_mux_itm;
  reg [29:0] MAC_1_mul_itm;
  reg [15:0] MAC_mux_1_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [15:0] MAC_mux_2_itm;
  reg [15:0] MAC_mux_3_itm;
  wire [29:0] acc_32_3_3_sva_1;
  wire [30:0] nl_acc_32_3_3_sva_1;
  wire [4:0] MAC_3_acc_2_psp_sva_mx0w0;
  wire [5:0] nl_MAC_3_acc_2_psp_sva_mx0w0;
  wire [29:0] MAC_acc_6;
  wire [30:0] nl_MAC_acc_6;
  wire or_164_tmp;

  wire[29:0] acc_acc_mux_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_mux_12_nl;
  wire[0:0] acc_or_nl;
  wire[0:0] acc_not_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_1_nl;
  wire[0:0] MAC_and_2_nl;
  wire[0:0] MAC_and_3_nl;
  wire[0:0] MAC_and_4_nl;
  wire[0:0] MAC_and_5_nl;
  wire[0:0] MAC_and_6_nl;
  wire[0:0] MAC_and_13_nl;
  wire[0:0] MAC_and_14_nl;
  wire[0:0] MAC_and_15_nl;
  wire[0:0] MAC_and_16_nl;
  wire[0:0] MAC_and_17_nl;
  wire[0:0] MAC_and_18_nl;
  wire[0:0] MAC_and_7_nl;
  wire[0:0] MAC_and_8_nl;
  wire[0:0] MAC_and_9_nl;
  wire[0:0] MAC_and_10_nl;
  wire[0:0] MAC_and_11_nl;
  wire[0:0] MAC_and_12_nl;
  wire[4:0] MAC_mux_13_nl;
  wire[15:0] MAC_mux1h_28_nl;
  wire[0:0] or_182_nl;
  wire[4:0] MAC_mux_14_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_3_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_3_tr0 = MAC_i_5_0_3_sva[5];
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
      .MAC_C_3_tr0(nl_fir_core_core_fsm_inst_MAC_C_3_tr0[0:0])
    );
  assign reg_out1_out1_and_cse = (fsm_output[4]) & (MAC_i_5_0_3_sva[5]);
  assign nor_6_cse = ~((fsm_output[0]) | (fsm_output[8]));
  assign or_164_tmp = (fsm_output[3:2]!=2'b00);
  assign nl_acc_32_3_3_sva_1 = MAC_acc_6 + acc_32_3_1_sva;
  assign acc_32_3_3_sva_1 = nl_acc_32_3_3_sva_1[29:0];
  assign nl_MAC_1_acc_2_psp_sva_mx0w0 = MAC_5_acc_2_itm + 5'b00001;
  assign MAC_1_acc_2_psp_sva_mx0w0 = nl_MAC_1_acc_2_psp_sva_mx0w0[4:0];
  assign nl_MAC_2_acc_2_tmp = conv_u2s_5_6(MAC_1_acc_2_psp_sva_mx0w0) + 6'b000001;
  assign MAC_2_acc_2_tmp = nl_MAC_2_acc_2_tmp[5:0];
  assign nl_MAC_3_acc_2_psp_sva_mx0w0 = (MAC_2_acc_2_tmp[4:0]) + 5'b00001;
  assign MAC_3_acc_2_psp_sva_mx0w0 = nl_MAC_3_acc_2_psp_sva_mx0w0[4:0];
  assign nl_MAC_acc_6 = MAC_1_mul_itm + MAC_2_mul_itm;
  assign MAC_acc_6 = nl_MAC_acc_6[29:0];
  assign or_tmp_148 = (fsm_output[4:2]!=3'b000);
  assign coeffs_rsci_radr_d = MUX1HOT_v_5_5_2(MAC_1_acc_2_psp_sva_mx0w0, MAC_5_acc_2_itm,
      MAC_3_acc_2_psp_sva, (MAC_i_5_0_3_sva[4:0]), MAC_4_acc_2_psp_sva, {(fsm_output[1])
      , (fsm_output[2]) , (fsm_output[3]) , (fsm_output[4]) , (fsm_output[5])});
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = (fsm_output[1]) | (fsm_output[3])
      | (fsm_output[5]) | (fsm_output[2]) | ((~ (MAC_i_5_0_3_sva[5])) & (fsm_output[4]));
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[6]) | (fsm_output[7]) | (fsm_output[0]) | (fsm_output[4])
        ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_acc_mux_nl),
          (acc_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
      regs_5_sva <= 16'b0000000000000000;
      regs_10_sva <= 16'b0000000000000000;
      regs_15_sva <= 16'b0000000000000000;
      regs_20_sva <= 16'b0000000000000000;
      regs_25_sva <= 16'b0000000000000000;
      regs_30_sva <= 16'b0000000000000000;
      regs_4_sva <= 16'b0000000000000000;
      regs_9_sva <= 16'b0000000000000000;
      regs_14_sva <= 16'b0000000000000000;
      regs_19_sva <= 16'b0000000000000000;
      regs_24_sva <= 16'b0000000000000000;
      regs_29_sva <= 16'b0000000000000000;
      regs_3_sva <= 16'b0000000000000000;
      regs_8_sva <= 16'b0000000000000000;
      regs_13_sva <= 16'b0000000000000000;
      regs_18_sva <= 16'b0000000000000000;
      regs_23_sva <= 16'b0000000000000000;
      regs_28_sva <= 16'b0000000000000000;
      regs_2_sva <= 16'b0000000000000000;
      regs_7_sva <= 16'b0000000000000000;
      regs_12_sva <= 16'b0000000000000000;
      regs_17_sva <= 16'b0000000000000000;
      regs_22_sva <= 16'b0000000000000000;
      regs_27_sva <= 16'b0000000000000000;
      regs_1_sva <= 16'b0000000000000000;
      regs_6_sva <= 16'b0000000000000000;
      regs_11_sva <= 16'b0000000000000000;
      regs_16_sva <= 16'b0000000000000000;
      regs_21_sva <= 16'b0000000000000000;
      regs_26_sva <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= acc_32_3_3_sva_1[29:14];
      regs_0_sva <= regs_0_sva_1;
      regs_5_sva <= regs_5_sva_1;
      regs_10_sva <= regs_10_sva_1;
      regs_15_sva <= regs_15_sva_1;
      regs_20_sva <= regs_20_sva_1;
      regs_25_sva <= regs_25_sva_1;
      regs_30_sva <= regs_30_sva_1;
      regs_4_sva <= regs_4_sva_1;
      regs_9_sva <= regs_9_sva_1;
      regs_14_sva <= regs_14_sva_1;
      regs_19_sva <= regs_19_sva_1;
      regs_24_sva <= regs_24_sva_1;
      regs_29_sva <= regs_29_sva_1;
      regs_3_sva <= regs_3_sva_1;
      regs_8_sva <= regs_8_sva_1;
      regs_13_sva <= regs_13_sva_1;
      regs_18_sva <= regs_18_sva_1;
      regs_23_sva <= regs_23_sva_1;
      regs_28_sva <= regs_28_sva_1;
      regs_2_sva <= regs_2_sva_1;
      regs_7_sva <= regs_7_sva_1;
      regs_12_sva <= regs_12_sva_1;
      regs_17_sva <= regs_17_sva_1;
      regs_22_sva <= regs_22_sva_1;
      regs_27_sva <= regs_27_sva_1;
      regs_1_sva <= regs_1_sva_1;
      regs_6_sva <= regs_6_sva_1;
      regs_11_sva <= regs_11_sva_1;
      regs_16_sva <= regs_16_sva_1;
      regs_21_sva <= regs_21_sva_1;
      regs_26_sva <= regs_26_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_0_sva_1 <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_30_sva_1 <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_29_sva_1 <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_28_sva_1 <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_27_sva_1 <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_26_sva_1 <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_25_sva_1 <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_24_sva_1 <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_23_sva_1 <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_22_sva_1 <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_21_sva_1 <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_20_sva_1 <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_19_sva_1 <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_18_sva_1 <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_17_sva_1 <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_16_sva_1 <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_15_sva_1 <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_14_sva_1 <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_13_sva_1 <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_12_sva_1 <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_11_sva_1 <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_10_sva_1 <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_9_sva_1 <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_8_sva_1 <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_7_sva_1 <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_6_sva_1 <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_5_sva_1 <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_4_sva_1 <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_3_sva_1 <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_2_sva_1 <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ nor_6_cse ) begin
      regs_1_sva_1 <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_acc_2_itm <= 5'b00000;
    end
    else if ( (fsm_output[8]) | (fsm_output[0]) | (fsm_output[2]) ) begin
      MAC_5_acc_2_itm <= MUX_v_5_2_2(5'b00000, z_out_1, nor_6_cse);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_5_0_3_sva <= 6'b000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_i_5_0_3_sva <= MAC_2_acc_2_tmp;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_3_acc_2_psp_sva <= 5'b00000;
    end
    else if ( fsm_output[1] ) begin
      MAC_3_acc_2_psp_sva <= MAC_3_acc_2_psp_sva_mx0w0;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_mux_itm <= z_out_2;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_1_itm <= 16'b0000000000000000;
    end
    else if ( ~((fsm_output[5:3]!=3'b000)) ) begin
      MAC_mux_1_itm <= MUX1HOT_v_16_8_2(regs_0_sva, regs_5_sva, regs_10_sva, regs_15_sva,
          regs_20_sva, regs_25_sva, regs_30_sva, z_out_2, {(MAC_and_nl) , (MAC_and_1_nl)
          , (MAC_and_2_nl) , (MAC_and_3_nl) , (MAC_and_4_nl) , (MAC_and_5_nl) , (MAC_and_6_nl)
          , (fsm_output[2])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_4_acc_2_psp_sva <= 5'b00000;
    end
    else if ( ~ or_tmp_148 ) begin
      MAC_4_acc_2_psp_sva <= z_out_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_2_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_148 ) begin
      MAC_mux_2_itm <= MUX1HOT_v_16_6_2(regs_1_sva, regs_6_sva, regs_11_sva, regs_16_sva,
          regs_21_sva, regs_26_sva, {(MAC_and_13_nl) , (MAC_and_14_nl) , (MAC_and_15_nl)
          , (MAC_and_16_nl) , (MAC_and_17_nl) , (MAC_and_18_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_3_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_164_tmp ) begin
      MAC_mux_3_itm <= MUX1HOT_v_16_6_2(regs_2_sva, regs_7_sva, regs_12_sva, regs_17_sva,
          regs_22_sva, regs_27_sva, {(MAC_and_7_nl) , (MAC_and_8_nl) , (MAC_and_9_nl)
          , (MAC_and_10_nl) , (MAC_and_11_nl) , (MAC_and_12_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[5]) | (fsm_output[6]) | (fsm_output[2]) ) begin
      MAC_2_mul_itm <= z_out_3;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_1_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[4:3]!=2'b00) ) begin
      MAC_1_mul_itm <= z_out_3;
    end
  end
  assign MAC_mux_12_nl = MUX_v_30_2_2(MAC_2_mul_itm, MAC_acc_6, fsm_output[7]);
  assign nl_MAC_acc_nl = acc_32_3_1_sva + (MAC_mux_12_nl);
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign acc_or_nl = (fsm_output[7:6]!=2'b00);
  assign acc_acc_mux_nl = MUX_v_30_2_2(acc_32_3_3_sva_1, (MAC_acc_nl), acc_or_nl);
  assign acc_not_nl = ~ (fsm_output[0]);
  assign MAC_and_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b00001) & (fsm_output[1]);
  assign MAC_and_1_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b00110) & (fsm_output[1]);
  assign MAC_and_2_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b01011) & (fsm_output[1]);
  assign MAC_and_3_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b10000) & (fsm_output[1]);
  assign MAC_and_4_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b10101) & (fsm_output[1]);
  assign MAC_and_5_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b11010) & (fsm_output[1]);
  assign MAC_and_6_nl = (MAC_1_acc_2_psp_sva_mx0w0==5'b11111) & (fsm_output[1]);
  assign MAC_and_13_nl = (MAC_2_acc_2_tmp[4:0]==5'b00010) & (~ or_tmp_148);
  assign MAC_and_14_nl = (MAC_2_acc_2_tmp[4:0]==5'b00111) & (~ or_tmp_148);
  assign MAC_and_15_nl = (MAC_2_acc_2_tmp[4:0]==5'b01100) & (~ or_tmp_148);
  assign MAC_and_16_nl = (MAC_2_acc_2_tmp[4:0]==5'b10001) & (~ or_tmp_148);
  assign MAC_and_17_nl = (MAC_2_acc_2_tmp[4:0]==5'b10110) & (~ or_tmp_148);
  assign MAC_and_18_nl = (MAC_2_acc_2_tmp[4:0]==5'b11011) & (~ or_tmp_148);
  assign MAC_and_7_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b00011) & (~ or_164_tmp);
  assign MAC_and_8_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b01000) & (~ or_164_tmp);
  assign MAC_and_9_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b01101) & (~ or_164_tmp);
  assign MAC_and_10_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b10010) & (~ or_164_tmp);
  assign MAC_and_11_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b10111) & (~ or_164_tmp);
  assign MAC_and_12_nl = (MAC_3_acc_2_psp_sva_mx0w0==5'b11100) & (~ or_164_tmp);
  assign MAC_mux_13_nl = MUX_v_5_2_2(MAC_4_acc_2_psp_sva, MAC_3_acc_2_psp_sva_mx0w0,
      fsm_output[1]);
  assign nl_z_out_1 = (MAC_mux_13_nl) + 5'b00001;
  assign z_out_1 = nl_z_out_1[4:0];
  assign or_182_nl = (fsm_output[6]) | (fsm_output[2]);
  assign MAC_mux1h_28_nl = MUX1HOT_v_16_4_2(MAC_mux_1_itm, MAC_mux_2_itm, MAC_mux_itm,
      MAC_mux_3_itm, {(or_182_nl) , (fsm_output[5]) , (fsm_output[3]) , (fsm_output[4])});
  assign nl_z_out_3 = $signed((MAC_mux1h_28_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_14_nl = MUX_v_5_2_2(MAC_5_acc_2_itm, MAC_4_acc_2_psp_sva, fsm_output[2]);
  assign z_out_2 = MUX_v_16_31_2x1x2x3x6x7x8x11x12x13x16x17x18x21x22x23x26x27x28(regs_0_sva_1,
      regs_3_sva, regs_4_sva, regs_8_sva, regs_9_sva, regs_13_sva, regs_14_sva, regs_18_sva,
      regs_19_sva, regs_23_sva, regs_24_sva, regs_28_sva, regs_29_sva, MAC_mux_14_nl);

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


  function automatic [15:0] MUX_v_16_31_2x1x2x3x6x7x8x11x12x13x16x17x18x21x22x23x26x27x28;
    input [15:0] input_0;
    input [15:0] input_4;
    input [15:0] input_5;
    input [15:0] input_9;
    input [15:0] input_10;
    input [15:0] input_14;
    input [15:0] input_15;
    input [15:0] input_19;
    input [15:0] input_20;
    input [15:0] input_24;
    input [15:0] input_25;
    input [15:0] input_29;
    input [15:0] input_30;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00000 : begin
        result = input_0;
      end
      5'b00100 : begin
        result = input_4;
      end
      5'b00101 : begin
        result = input_5;
      end
      5'b01001 : begin
        result = input_9;
      end
      5'b01010 : begin
        result = input_10;
      end
      5'b01110 : begin
        result = input_14;
      end
      5'b01111 : begin
        result = input_15;
      end
      5'b10011 : begin
        result = input_19;
      end
      5'b10100 : begin
        result = input_20;
      end
      5'b11000 : begin
        result = input_24;
      end
      5'b11001 : begin
        result = input_25;
      end
      5'b11101 : begin
        result = input_29;
      end
      default : begin
        result = input_30;
      end
    endcase
    MUX_v_16_31_2x1x2x3x6x7x8x11x12x13x16x17x18x21x22x23x26x27x28 = result;
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
  clk, rst, coeffs_rsc_radr, coeffs_rsc_q, coeffs_rsc_triosy_lz, in1_rsc_dat, in1_rsc_triosy_lz,
      out1_rsc_dat, out1_rsc_triosy_lz
);
  input clk;
  input rst;
  output [4:0] coeffs_rsc_radr;
  input [15:0] coeffs_rsc_q;
  output coeffs_rsc_triosy_lz;
  input [15:0] in1_rsc_dat;
  output in1_rsc_triosy_lz;
  output [15:0] out1_rsc_dat;
  output out1_rsc_triosy_lz;


  // Interconnect Declarations
  wire [4:0] coeffs_rsci_radr_d;
  wire [15:0] coeffs_rsci_q_d;
  wire coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d;


  // Interconnect Declarations for Component Instantiations 
  fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen coeffs_rsci (
      .q(coeffs_rsc_q),
      .radr(coeffs_rsc_radr),
      .radr_d(coeffs_rsci_radr_d),
      .q_d(coeffs_rsci_q_d),
      .rport_r_ram_ir_internal_RMASK_B_d(coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d)
    );
  fir_core fir_core_inst (
      .clk(clk),
      .rst(rst),
      .coeffs_rsc_triosy_lz(coeffs_rsc_triosy_lz),
      .in1_rsc_dat(in1_rsc_dat),
      .in1_rsc_triosy_lz(in1_rsc_triosy_lz),
      .out1_rsc_dat(out1_rsc_dat),
      .out1_rsc_triosy_lz(out1_rsc_triosy_lz),
      .coeffs_rsci_radr_d(coeffs_rsci_radr_d),
      .coeffs_rsci_q_d(coeffs_rsci_q_d),
      .coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d(coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d)
    );
endmodule


