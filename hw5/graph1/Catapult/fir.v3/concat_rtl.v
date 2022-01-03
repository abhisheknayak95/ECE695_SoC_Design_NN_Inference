
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
//  Generated date: Tue Nov  9 14:55:47 2021
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
  output [6:0] fsm_output;
  reg [6:0] fsm_output;
  input MAC_C_3_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 3'd0,
    MAC_C_0 = 3'd1,
    MAC_C_1 = 3'd2,
    MAC_C_2 = 3'd3,
    MAC_C_3 = 3'd4,
    MAC_C_4 = 3'd5,
    main_C_1 = 3'd6;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      MAC_C_0 : begin
        fsm_output = 7'b0000010;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 7'b0000100;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 7'b0001000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 7'b0010000;
        if ( MAC_C_3_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MAC_C_4;
        end
      end
      MAC_C_4 : begin
        fsm_output = 7'b0100000;
        state_var_NS = MAC_C_0;
      end
      main_C_1 : begin
        fsm_output = 7'b1000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 7'b0000001;
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
  wire [6:0] fsm_output;
  wire [5:0] MAC_2_acc_2_tmp;
  wire [6:0] nl_MAC_2_acc_2_tmp;
  wire or_tmp_81;
  wire or_tmp_139;
  reg [5:0] MAC_i_5_0_sva;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  wire [4:0] MAC_1_acc_2_psp_sva_mx0w0;
  wire [5:0] nl_MAC_1_acc_2_psp_sva_mx0w0;
  reg [4:0] MAC_i_4_0_sva;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  wire [29:0] z_out_1;
  wire signed [31:0] nl_z_out_1;
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
  reg [4:0] MAC_3_acc_2_itm;
  wire [5:0] nl_MAC_3_acc_2_itm;
  wire [29:0] acc_32_3_sva_1;
  wire [30:0] nl_acc_32_3_sva_1;

  wire[29:0] acc_mux_nl;
  wire[0:0] acc_not_nl;
  wire[15:0] MAC_mux_4_nl;
  wire[29:0] MAC_mux_7_nl;
  wire[15:0] MAC_mux1h_12_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_3_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_3_tr0 = MAC_i_5_0_sva[5];
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
  assign reg_out1_out1_and_cse = (fsm_output[4]) & (MAC_i_5_0_sva[5]);
  assign nl_acc_32_3_sva_1 = z_out + acc_32_3_1_sva;
  assign acc_32_3_sva_1 = nl_acc_32_3_sva_1[29:0];
  assign nl_MAC_1_acc_2_psp_sva_mx0w0 = MAC_i_4_0_sva + 5'b00001;
  assign MAC_1_acc_2_psp_sva_mx0w0 = nl_MAC_1_acc_2_psp_sva_mx0w0[4:0];
  assign nl_MAC_2_acc_2_tmp = conv_u2s_5_6(MAC_1_acc_2_psp_sva_mx0w0) + 6'b000001;
  assign MAC_2_acc_2_tmp = nl_MAC_2_acc_2_tmp[5:0];
  assign or_tmp_81 = ~((fsm_output[6]) | (fsm_output[0]));
  assign or_tmp_139 = (fsm_output[3:2]!=2'b00);
  assign coeffs_rsci_radr_d = MUX1HOT_v_5_3_2(MAC_1_acc_2_psp_sva_mx0w0, MAC_i_4_0_sva,
      (MAC_i_5_0_sva[4:0]), {(fsm_output[1]) , (fsm_output[2]) , (fsm_output[3])});
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = (fsm_output[3:1]!=3'b000);
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[5]) | (fsm_output[4]) ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_mux_nl),
          (acc_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
      regs_3_sva <= 16'b0000000000000000;
      regs_6_sva <= 16'b0000000000000000;
      regs_9_sva <= 16'b0000000000000000;
      regs_12_sva <= 16'b0000000000000000;
      regs_15_sva <= 16'b0000000000000000;
      regs_18_sva <= 16'b0000000000000000;
      regs_21_sva <= 16'b0000000000000000;
      regs_24_sva <= 16'b0000000000000000;
      regs_27_sva <= 16'b0000000000000000;
      regs_30_sva <= 16'b0000000000000000;
      regs_2_sva <= 16'b0000000000000000;
      regs_5_sva <= 16'b0000000000000000;
      regs_8_sva <= 16'b0000000000000000;
      regs_11_sva <= 16'b0000000000000000;
      regs_14_sva <= 16'b0000000000000000;
      regs_17_sva <= 16'b0000000000000000;
      regs_20_sva <= 16'b0000000000000000;
      regs_23_sva <= 16'b0000000000000000;
      regs_26_sva <= 16'b0000000000000000;
      regs_29_sva <= 16'b0000000000000000;
      regs_1_sva <= 16'b0000000000000000;
      regs_4_sva <= 16'b0000000000000000;
      regs_7_sva <= 16'b0000000000000000;
      regs_10_sva <= 16'b0000000000000000;
      regs_13_sva <= 16'b0000000000000000;
      regs_16_sva <= 16'b0000000000000000;
      regs_19_sva <= 16'b0000000000000000;
      regs_22_sva <= 16'b0000000000000000;
      regs_25_sva <= 16'b0000000000000000;
      regs_28_sva <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= acc_32_3_sva_1[29:14];
      regs_0_sva <= regs_0_sva_1;
      regs_3_sva <= regs_3_sva_1;
      regs_6_sva <= regs_6_sva_1;
      regs_9_sva <= regs_9_sva_1;
      regs_12_sva <= regs_12_sva_1;
      regs_15_sva <= regs_15_sva_1;
      regs_18_sva <= regs_18_sva_1;
      regs_21_sva <= regs_21_sva_1;
      regs_24_sva <= regs_24_sva_1;
      regs_27_sva <= regs_27_sva_1;
      regs_30_sva <= regs_30_sva_1;
      regs_2_sva <= regs_2_sva_1;
      regs_5_sva <= regs_5_sva_1;
      regs_8_sva <= regs_8_sva_1;
      regs_11_sva <= regs_11_sva_1;
      regs_14_sva <= regs_14_sva_1;
      regs_17_sva <= regs_17_sva_1;
      regs_20_sva <= regs_20_sva_1;
      regs_23_sva <= regs_23_sva_1;
      regs_26_sva <= regs_26_sva_1;
      regs_29_sva <= regs_29_sva_1;
      regs_1_sva <= regs_1_sva_1;
      regs_4_sva <= regs_4_sva_1;
      regs_7_sva <= regs_7_sva_1;
      regs_10_sva <= regs_10_sva_1;
      regs_13_sva <= regs_13_sva_1;
      regs_16_sva <= regs_16_sva_1;
      regs_19_sva <= regs_19_sva_1;
      regs_22_sva <= regs_22_sva_1;
      regs_25_sva <= regs_25_sva_1;
      regs_28_sva <= regs_28_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_4_0_sva <= 5'b00000;
    end
    else if ( (fsm_output[0]) | (fsm_output[4]) ) begin
      MAC_i_4_0_sva <= MUX_v_5_2_2(5'b00000, MAC_3_acc_2_itm, (fsm_output[4]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_0_sva_1 <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_mux_1_itm <= 16'b0000000000000000;
      MAC_1_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      MAC_mux_1_itm <= MUX_v_16_32_2x0x2x3x5x6x8x9x11x12x14x15x17x18x20x21x23x24x26x27x29x30(regs_0_sva,
          regs_3_sva, regs_6_sva, regs_9_sva, regs_12_sva, regs_15_sva, regs_18_sva,
          regs_21_sva, regs_24_sva, regs_27_sva, regs_30_sva, MAC_1_acc_2_psp_sva_mx0w0);
      MAC_1_mul_itm <= z_out_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_30_sva_1 <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_29_sva_1 <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_28_sva_1 <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_27_sva_1 <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_26_sva_1 <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_25_sva_1 <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_24_sva_1 <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_23_sva_1 <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_22_sva_1 <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_21_sva_1 <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_20_sva_1 <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_19_sva_1 <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_18_sva_1 <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_17_sva_1 <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_16_sva_1 <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_15_sva_1 <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_14_sva_1 <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_13_sva_1 <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_12_sva_1 <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_11_sva_1 <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_10_sva_1 <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_9_sva_1 <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_8_sva_1 <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_7_sva_1 <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_6_sva_1 <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_5_sva_1 <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_4_sva_1 <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_3_sva_1 <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_2_sva_1 <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_81 ) begin
      regs_1_sva_1 <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_5_0_sva <= 6'b000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_i_5_0_sva <= MAC_2_acc_2_tmp;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_mux_itm <= MUX_v_16_31_2x1x2x4x5x7x8x10x11x13x14x16x17x19x20x22x23x25x26x28x29(regs_0_sva_1,
          regs_2_sva, regs_5_sva, regs_8_sva, regs_11_sva, regs_14_sva, regs_17_sva,
          regs_20_sva, regs_23_sva, regs_26_sva, regs_29_sva, MAC_i_4_0_sva);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_3_acc_2_itm <= 5'b00000;
    end
    else if ( ~ or_tmp_139 ) begin
      MAC_3_acc_2_itm <= nl_MAC_3_acc_2_itm[4:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_mux_2_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_139 ) begin
      MAC_mux_2_itm <= (MAC_mux_4_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[2]) | (fsm_output[4]) ) begin
      MAC_2_mul_itm <= z_out_1;
    end
  end
  assign acc_mux_nl = MUX_v_30_2_2(acc_32_3_sva_1, z_out, fsm_output[5]);
  assign acc_not_nl = ~ (fsm_output[0]);
  assign nl_MAC_3_acc_2_itm  = (MAC_2_acc_2_tmp[4:0]) + 5'b00001;
  assign MAC_mux_4_nl = MUX_v_16_30_2x0x1x3x4x6x7x9x10x12x13x15x16x18x19x21x22x24x25x27x28(regs_1_sva,
      regs_4_sva, regs_7_sva, regs_10_sva, regs_13_sva, regs_16_sva, regs_19_sva,
      regs_22_sva, regs_25_sva, regs_28_sva, MAC_2_acc_2_tmp[4:0]);
  assign MAC_mux_7_nl = MUX_v_30_2_2(acc_32_3_1_sva, MAC_1_mul_itm, fsm_output[4]);
  assign nl_z_out = (MAC_mux_7_nl) + MAC_2_mul_itm;
  assign z_out = nl_z_out[29:0];
  assign MAC_mux1h_12_nl = MUX1HOT_v_16_3_2(MAC_mux_1_itm, MAC_mux_2_itm, MAC_mux_itm,
      {(fsm_output[2]) , (fsm_output[4]) , (fsm_output[3])});
  assign nl_z_out_1 = $signed((MAC_mux1h_12_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_1 = nl_z_out_1[29:0];

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


  function automatic [15:0] MUX_v_16_30_2x0x1x3x4x6x7x9x10x12x13x15x16x18x19x21x22x24x25x27x28;
    input [15:0] input_2;
    input [15:0] input_5;
    input [15:0] input_8;
    input [15:0] input_11;
    input [15:0] input_14;
    input [15:0] input_17;
    input [15:0] input_20;
    input [15:0] input_23;
    input [15:0] input_26;
    input [15:0] input_29;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00010 : begin
        result = input_2;
      end
      5'b00101 : begin
        result = input_5;
      end
      5'b01000 : begin
        result = input_8;
      end
      5'b01011 : begin
        result = input_11;
      end
      5'b01110 : begin
        result = input_14;
      end
      5'b10001 : begin
        result = input_17;
      end
      5'b10100 : begin
        result = input_20;
      end
      5'b10111 : begin
        result = input_23;
      end
      5'b11010 : begin
        result = input_26;
      end
      default : begin
        result = input_29;
      end
    endcase
    MUX_v_16_30_2x0x1x3x4x6x7x9x10x12x13x15x16x18x19x21x22x24x25x27x28 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_31_2x1x2x4x5x7x8x10x11x13x14x16x17x19x20x22x23x25x26x28x29;
    input [15:0] input_0;
    input [15:0] input_3;
    input [15:0] input_6;
    input [15:0] input_9;
    input [15:0] input_12;
    input [15:0] input_15;
    input [15:0] input_18;
    input [15:0] input_21;
    input [15:0] input_24;
    input [15:0] input_27;
    input [15:0] input_30;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00000 : begin
        result = input_0;
      end
      5'b00011 : begin
        result = input_3;
      end
      5'b00110 : begin
        result = input_6;
      end
      5'b01001 : begin
        result = input_9;
      end
      5'b01100 : begin
        result = input_12;
      end
      5'b01111 : begin
        result = input_15;
      end
      5'b10010 : begin
        result = input_18;
      end
      5'b10101 : begin
        result = input_21;
      end
      5'b11000 : begin
        result = input_24;
      end
      5'b11011 : begin
        result = input_27;
      end
      default : begin
        result = input_30;
      end
    endcase
    MUX_v_16_31_2x1x2x4x5x7x8x10x11x13x14x16x17x19x20x22x23x25x26x28x29 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_32_2x0x2x3x5x6x8x9x11x12x14x15x17x18x20x21x23x24x26x27x29x30;
    input [15:0] input_1;
    input [15:0] input_4;
    input [15:0] input_7;
    input [15:0] input_10;
    input [15:0] input_13;
    input [15:0] input_16;
    input [15:0] input_19;
    input [15:0] input_22;
    input [15:0] input_25;
    input [15:0] input_28;
    input [15:0] input_31;
    input [4:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      5'b00001 : begin
        result = input_1;
      end
      5'b00100 : begin
        result = input_4;
      end
      5'b00111 : begin
        result = input_7;
      end
      5'b01010 : begin
        result = input_10;
      end
      5'b01101 : begin
        result = input_13;
      end
      5'b10000 : begin
        result = input_16;
      end
      5'b10011 : begin
        result = input_19;
      end
      5'b10110 : begin
        result = input_22;
      end
      5'b11001 : begin
        result = input_25;
      end
      5'b11100 : begin
        result = input_28;
      end
      default : begin
        result = input_31;
      end
    endcase
    MUX_v_16_32_2x0x2x3x5x6x8x9x11x12x14x15x17x18x20x21x23x24x26x27x29x30 = result;
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



