
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


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
//  Generated date: Sat Nov 13 22:52:17 2021
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    fir_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module fir_core_core_fsm (
  clk, rst, fsm_output
);
  input clk;
  input rst;
  output [12:0] fsm_output;
  reg [12:0] fsm_output;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 4'd0,
    main_C_1 = 4'd1,
    main_C_2 = 4'd2,
    main_C_3 = 4'd3,
    main_C_4 = 4'd4,
    main_C_5 = 4'd5,
    main_C_6 = 4'd6,
    main_C_7 = 4'd7,
    main_C_8 = 4'd8,
    main_C_9 = 4'd9,
    main_C_10 = 4'd10,
    main_C_11 = 4'd11,
    main_C_12 = 4'd12;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      main_C_1 : begin
        fsm_output = 13'b0000000000010;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 13'b0000000000100;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 13'b0000000001000;
        state_var_NS = main_C_4;
      end
      main_C_4 : begin
        fsm_output = 13'b0000000010000;
        state_var_NS = main_C_5;
      end
      main_C_5 : begin
        fsm_output = 13'b0000000100000;
        state_var_NS = main_C_6;
      end
      main_C_6 : begin
        fsm_output = 13'b0000001000000;
        state_var_NS = main_C_7;
      end
      main_C_7 : begin
        fsm_output = 13'b0000010000000;
        state_var_NS = main_C_8;
      end
      main_C_8 : begin
        fsm_output = 13'b0000100000000;
        state_var_NS = main_C_9;
      end
      main_C_9 : begin
        fsm_output = 13'b0001000000000;
        state_var_NS = main_C_10;
      end
      main_C_10 : begin
        fsm_output = 13'b0010000000000;
        state_var_NS = main_C_11;
      end
      main_C_11 : begin
        fsm_output = 13'b0100000000000;
        state_var_NS = main_C_12;
      end
      main_C_12 : begin
        fsm_output = 13'b1000000000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 13'b0000000000001;
        state_var_NS = main_C_1;
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
  wire [511:0] coeffs_rsci_d;
  wire [15:0] in1_rsci_idat;
  reg [15:0] out1_rsci_idat;
  reg out1_rsc_triosy_obj_ld;
  wire [12:0] fsm_output;
  reg [463:0] reg_MAC_io_read_coeffs_rsc_ftd_48;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  reg [15:0] reg_MAC_asn_87_cse;
  reg [15:0] reg_MAC_asn_86_cse;
  reg [15:0] reg_MAC_asn_85_cse;
  reg [15:0] reg_MAC_asn_84_cse;
  reg [15:0] reg_MAC_asn_83_cse;
  reg [15:0] reg_MAC_asn_82_cse;
  reg [15:0] reg_MAC_asn_81_cse;
  reg [15:0] reg_MAC_asn_80_cse;
  reg [15:0] reg_MAC_asn_79_cse;
  reg [15:0] reg_MAC_asn_78_cse;
  reg [15:0] reg_MAC_asn_77_cse;
  reg [15:0] reg_MAC_asn_76_cse;
  reg [15:0] reg_MAC_asn_75_cse;
  reg [15:0] reg_MAC_asn_74_cse;
  reg [15:0] reg_MAC_asn_73_cse;
  reg [15:0] reg_MAC_asn_72_cse;
  reg [15:0] reg_MAC_asn_71_cse;
  reg [15:0] reg_MAC_asn_70_cse;
  reg [15:0] reg_MAC_asn_69_cse;
  reg [15:0] reg_MAC_asn_68_cse;
  reg [15:0] reg_MAC_asn_67_cse;
  reg [15:0] reg_MAC_asn_66_cse;
  reg [15:0] reg_MAC_asn_65_cse;
  reg [15:0] reg_MAC_asn_64_cse;
  reg [15:0] reg_MAC_asn_63_cse;
  reg [15:0] reg_MAC_asn_62_cse;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  wire [29:0] z_out_1;
  wire [30:0] nl_z_out_1;
  wire [29:0] z_out_2;
  wire signed [31:0] nl_z_out_2;
  wire [29:0] z_out_3;
  wire signed [31:0] nl_z_out_3;
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
  reg [15:0] regs_2_sva;
  reg [15:0] regs_29_sva;
  reg [15:0] regs_1_sva;
  reg [15:0] regs_30_sva;
  reg [15:0] regs_0_sva;
  reg [29:0] MAC_acc_25_itm;
  reg [29:0] MAC_acc_15_itm;
  reg [29:0] MAC_acc_13_itm;
  reg [29:0] MAC_13_mul_itm;
  reg [29:0] MAC_acc_10_itm;
  reg [29:0] MAC_28_mul_itm;
  reg [15:0] MAC_asn_90_itm;
  reg [29:0] MAC_acc_26_itm;
  wire MAC_acc_13_itm_mx0c2;
  wire [29:0] MAC_acc_22_mx0w0;
  wire [30:0] nl_MAC_acc_22_mx0w0;

  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_acc_30_nl;
  wire[30:0] nl_MAC_acc_30_nl;
  wire[29:0] MAC_acc_19_nl;
  wire[30:0] nl_MAC_acc_19_nl;
  wire[29:0] MAC_acc_18_nl;
  wire[30:0] nl_MAC_acc_18_nl;
  wire[29:0] MAC_31_mul_nl;
  wire signed [31:0] nl_MAC_31_mul_nl;
  wire[29:0] MAC_32_mul_nl;
  wire signed [31:0] nl_MAC_32_mul_nl;
  wire[29:0] MAC_acc_16_nl;
  wire[30:0] nl_MAC_acc_16_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [31:0] nl_MAC_3_mul_nl;
  wire[29:0] MAC_4_mul_nl;
  wire signed [31:0] nl_MAC_4_mul_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[29:0] MAC_8_mul_nl;
  wire signed [31:0] nl_MAC_8_mul_nl;
  wire[29:0] MAC_acc_12_nl;
  wire[30:0] nl_MAC_acc_12_nl;
  wire[29:0] MAC_11_mul_nl;
  wire signed [31:0] nl_MAC_11_mul_nl;
  wire[29:0] MAC_12_mul_nl;
  wire signed [31:0] nl_MAC_12_mul_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_15_mul_nl;
  wire signed [31:0] nl_MAC_15_mul_nl;
  wire[29:0] MAC_16_mul_nl;
  wire signed [31:0] nl_MAC_16_mul_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_20_mul_nl;
  wire signed [31:0] nl_MAC_20_mul_nl;
  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_23_mul_nl;
  wire signed [31:0] nl_MAC_23_mul_nl;
  wire[29:0] MAC_24_mul_nl;
  wire signed [31:0] nl_MAC_24_mul_nl;
  wire[29:0] MAC_acc_17_nl;
  wire[30:0] nl_MAC_acc_17_nl;
  wire[29:0] MAC_2_mul_nl;
  wire signed [31:0] nl_MAC_2_mul_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_14_mul_nl;
  wire signed [31:0] nl_MAC_14_mul_nl;
  wire[29:0] MAC_acc_27_nl;
  wire[30:0] nl_MAC_acc_27_nl;
  wire[0:0] MAC_or_10_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_acc_13_nl;
  wire[30:0] nl_MAC_acc_13_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_15_nl;
  wire[30:0] nl_MAC_acc_15_nl;
  wire[29:0] MAC_acc_29_nl;
  wire[30:0] nl_MAC_acc_29_nl;
  wire[29:0] MAC_acc_32_nl;
  wire[30:0] nl_MAC_acc_32_nl;
  wire[29:0] MAC_mux_16_nl;
  wire[29:0] MAC_mux_17_nl;
  wire[0:0] MAC_or_11_nl;
  wire[29:0] MAC_mux_18_nl;
  wire[0:0] or_127_nl;
  wire[15:0] MAC_mux1h_8_nl;
  wire[15:0] MAC_mux1h_9_nl;
  wire[15:0] MAC_mux_19_nl;
  wire[15:0] MAC_mux_20_nl;
  wire[15:0] MAC_mux_21_nl;
  wire[15:0] MAC_mux_22_nl;
  wire[15:0] MAC_mux_23_nl;
  wire[15:0] MAC_mux_24_nl;
  wire[15:0] MAC_mux_25_nl;
  wire[15:0] MAC_mux_26_nl;
  wire[15:0] MAC_mux_27_nl;
  wire[15:0] MAC_mux_28_nl;
  wire[15:0] MAC_mux_29_nl;
  wire[15:0] MAC_mux_30_nl;

  // Interconnect Declarations for Component Instantiations 
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
      .fsm_output(fsm_output)
    );
  assign nl_MAC_acc_22_mx0w0 = MAC_13_mul_itm + MAC_acc_10_itm;
  assign MAC_acc_22_mx0w0 = nl_MAC_acc_22_mx0w0[29:0];
  assign MAC_acc_13_itm_mx0c2 = (fsm_output[9]) | (fsm_output[6]);
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      out1_rsci_idat <= z_out[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_85_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_85_cse <= reg_MAC_asn_84_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_84_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_84_cse <= reg_MAC_asn_83_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_83_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_83_cse <= reg_MAC_asn_82_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_81_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_81_cse <= reg_MAC_asn_80_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_82_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_82_cse <= reg_MAC_asn_81_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_79_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_79_cse <= reg_MAC_asn_78_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_80_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_80_cse <= reg_MAC_asn_79_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_78_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_78_cse <= reg_MAC_asn_77_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_77_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_77_cse <= reg_MAC_asn_76_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_75_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_75_cse <= reg_MAC_asn_74_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_76_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_76_cse <= reg_MAC_asn_75_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_73_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_73_cse <= reg_MAC_asn_72_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_74_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_74_cse <= reg_MAC_asn_73_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_72_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_72_cse <= reg_MAC_asn_71_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_71_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_71_cse <= reg_MAC_asn_70_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_69_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_69_cse <= reg_MAC_asn_68_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_70_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_70_cse <= reg_MAC_asn_69_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_67_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_67_cse <= reg_MAC_asn_66_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_68_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_68_cse <= reg_MAC_asn_67_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_66_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_66_cse <= reg_MAC_asn_65_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_65_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_65_cse <= reg_MAC_asn_64_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_63_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_63_cse <= reg_MAC_asn_62_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_64_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_64_cse <= reg_MAC_asn_63_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      regs_2_sva <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_62_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_62_cse <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[0] ) begin
      regs_1_sva <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_87_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_87_cse <= reg_MAC_asn_86_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_86_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      reg_MAC_asn_86_cse <= reg_MAC_asn_85_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_asn_90_itm <= 16'b0000000000000000;
      MAC_13_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      out1_rsc_triosy_obj_ld <= fsm_output[12];
      reg_in1_rsc_triosy_obj_ld_cse <= fsm_output[0];
      MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output[12]);
      MAC_13_mul_itm <= MUX1HOT_v_30_4_2(z_out_2, (MAC_acc_17_nl), (MAC_acc_11_nl),
          (MAC_acc_27_nl), {(MAC_or_10_nl) , (fsm_output[2]) , (fsm_output[6]) ,
          (fsm_output[10])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      regs_0_sva <= MAC_asn_90_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      regs_30_sva <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[12] ) begin
      regs_29_sva <= reg_MAC_asn_87_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_28_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[1]) | (fsm_output[0]) | (fsm_output[11]) | (fsm_output[10])
        ) begin
      MAC_28_mul_itm <= MUX1HOT_v_30_4_2(z_out_2, z_out_3, (MAC_acc_4_nl), (MAC_acc_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[10]) , (fsm_output[11])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_10_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[2]) | (fsm_output[4]) | (fsm_output[5])
        | (fsm_output[6]) | (fsm_output[8]) | (fsm_output[9]) ) begin
      MAC_acc_10_itm <= MUX1HOT_v_30_7_2((MAC_acc_18_nl), (MAC_acc_16_nl), (MAC_acc_14_nl),
          (MAC_acc_12_nl), (MAC_acc_10_nl), (MAC_acc_8_nl), (MAC_acc_6_nl), {(fsm_output[0])
          , (fsm_output[2]) , (fsm_output[4]) , (fsm_output[5]) , (fsm_output[6])
          , (fsm_output[8]) , (fsm_output[9])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_13_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[1]) | (fsm_output[10]) | (fsm_output[4]) | (fsm_output[7])
        | MAC_acc_13_itm_mx0c2 ) begin
      MAC_acc_13_itm <= MUX1HOT_v_30_5_2((MAC_acc_3_nl), (MAC_acc_13_nl), z_out_1,
          (MAC_acc_9_nl), (MAC_acc_5_nl), {(fsm_output[1]) , (fsm_output[4]) , MAC_acc_13_itm_mx0c2
          , (fsm_output[7]) , (fsm_output[10])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_26_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_acc_26_itm <= z_out_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_25_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[8]) | (fsm_output[3]) ) begin
      MAC_acc_25_itm <= MUX_v_30_2_2(MAC_acc_22_mx0w0, (MAC_acc_7_nl), fsm_output[8]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_15_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[5]) | (fsm_output[7]) | (fsm_output[3]) ) begin
      MAC_acc_15_itm <= MUX1HOT_v_30_3_2((MAC_acc_15_nl), (MAC_acc_29_nl), (MAC_acc_32_nl),
          {(fsm_output[3]) , (fsm_output[5]) , (fsm_output[7])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_io_read_coeffs_rsc_ftd_48 <= 464'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( fsm_output[0] ) begin
      reg_MAC_io_read_coeffs_rsc_ftd_48 <= coeffs_rsci_d[463:0];
    end
  end
  assign nl_MAC_2_mul_nl = $signed(regs_1_sva) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[31:16]));
  assign MAC_2_mul_nl = nl_MAC_2_mul_nl[29:0];
  assign nl_MAC_acc_17_nl = MAC_13_mul_itm + (MAC_2_mul_nl);
  assign MAC_acc_17_nl = nl_MAC_acc_17_nl[29:0];
  assign nl_MAC_14_mul_nl = $signed(reg_MAC_asn_72_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[223:208]));
  assign MAC_14_mul_nl = nl_MAC_14_mul_nl[29:0];
  assign nl_MAC_acc_11_nl = MAC_13_mul_itm + (MAC_14_mul_nl);
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_acc_27_nl = MAC_acc_13_itm + z_out;
  assign MAC_acc_27_nl = nl_MAC_acc_27_nl[29:0];
  assign MAC_or_10_nl = (fsm_output[1]) | (fsm_output[3]) | (fsm_output[5]) | (fsm_output[7])
      | (fsm_output[9]);
  assign nl_MAC_acc_4_nl = z_out_4 + MAC_28_mul_itm;
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign nl_MAC_acc_19_nl = MAC_acc_13_itm + MAC_28_mul_itm;
  assign MAC_acc_19_nl = nl_MAC_acc_19_nl[29:0];
  assign nl_MAC_acc_30_nl = (MAC_acc_19_nl) + MAC_acc_26_itm;
  assign MAC_acc_30_nl = nl_MAC_acc_30_nl[29:0];
  assign nl_MAC_acc_nl = MAC_13_mul_itm + (MAC_acc_30_nl);
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign nl_MAC_31_mul_nl = $signed(regs_30_sva) * $signed((coeffs_rsci_d[495:480]));
  assign MAC_31_mul_nl = nl_MAC_31_mul_nl[29:0];
  assign nl_MAC_32_mul_nl = $signed(MAC_asn_90_itm) * $signed((coeffs_rsci_d[511:496]));
  assign MAC_32_mul_nl = nl_MAC_32_mul_nl[29:0];
  assign nl_MAC_acc_18_nl = (MAC_31_mul_nl) + (MAC_32_mul_nl);
  assign MAC_acc_18_nl = nl_MAC_acc_18_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(regs_2_sva) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[47:32]));
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_4_mul_nl = $signed(reg_MAC_asn_62_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[63:48]));
  assign MAC_4_mul_nl = nl_MAC_4_mul_nl[29:0];
  assign nl_MAC_acc_16_nl = (MAC_3_mul_nl) + (MAC_4_mul_nl);
  assign MAC_acc_16_nl = nl_MAC_acc_16_nl[29:0];
  assign nl_MAC_8_mul_nl = $signed(reg_MAC_asn_66_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[127:112]));
  assign MAC_8_mul_nl = nl_MAC_8_mul_nl[29:0];
  assign nl_MAC_acc_14_nl = MAC_13_mul_itm + (MAC_8_mul_nl);
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign nl_MAC_11_mul_nl = $signed(reg_MAC_asn_69_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[175:160]));
  assign MAC_11_mul_nl = nl_MAC_11_mul_nl[29:0];
  assign nl_MAC_12_mul_nl = $signed(reg_MAC_asn_70_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[191:176]));
  assign MAC_12_mul_nl = nl_MAC_12_mul_nl[29:0];
  assign nl_MAC_acc_12_nl = (MAC_11_mul_nl) + (MAC_12_mul_nl);
  assign MAC_acc_12_nl = nl_MAC_acc_12_nl[29:0];
  assign nl_MAC_15_mul_nl = $signed(reg_MAC_asn_73_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[239:224]));
  assign MAC_15_mul_nl = nl_MAC_15_mul_nl[29:0];
  assign nl_MAC_16_mul_nl = $signed(reg_MAC_asn_74_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[255:240]));
  assign MAC_16_mul_nl = nl_MAC_16_mul_nl[29:0];
  assign nl_MAC_acc_10_nl = (MAC_15_mul_nl) + (MAC_16_mul_nl);
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_20_mul_nl = $signed(reg_MAC_asn_78_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[319:304]));
  assign MAC_20_mul_nl = nl_MAC_20_mul_nl[29:0];
  assign nl_MAC_acc_8_nl = MAC_13_mul_itm + (MAC_20_mul_nl);
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_23_mul_nl = $signed(reg_MAC_asn_81_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[367:352]));
  assign MAC_23_mul_nl = nl_MAC_23_mul_nl[29:0];
  assign nl_MAC_24_mul_nl = $signed(reg_MAC_asn_82_cse) * $signed((reg_MAC_io_read_coeffs_rsc_ftd_48[383:368]));
  assign MAC_24_mul_nl = nl_MAC_24_mul_nl[29:0];
  assign nl_MAC_acc_6_nl = (MAC_23_mul_nl) + (MAC_24_mul_nl);
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign nl_MAC_acc_3_nl = z_out_8 + MAC_28_mul_itm;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_MAC_acc_13_nl = z_out_4 + z_out_5;
  assign MAC_acc_13_nl = nl_MAC_acc_13_nl[29:0];
  assign nl_MAC_acc_9_nl = z_out_7 + z_out_6;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_acc_5_nl = MAC_13_mul_itm + z_out_5;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_7_nl = z_out_8 + z_out_3;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_15_nl = z_out_7 + z_out_6;
  assign MAC_acc_15_nl = nl_MAC_acc_15_nl[29:0];
  assign nl_MAC_acc_29_nl = MAC_acc_25_itm + z_out;
  assign MAC_acc_29_nl = nl_MAC_acc_29_nl[29:0];
  assign nl_MAC_acc_32_nl = MAC_acc_15_itm + z_out_1;
  assign MAC_acc_32_nl = nl_MAC_acc_32_nl[29:0];
  assign MAC_mux_16_nl = MUX_v_30_2_2(MAC_acc_15_itm, MAC_acc_25_itm, fsm_output[10]);
  assign MAC_or_11_nl = (fsm_output[10]) | (fsm_output[5]);
  assign MAC_mux_17_nl = MUX_v_30_2_2(MAC_28_mul_itm, MAC_acc_10_itm, MAC_or_11_nl);
  assign nl_z_out = (MAC_mux_16_nl) + (MAC_mux_17_nl);
  assign z_out = nl_z_out[29:0];
  assign or_127_nl = (fsm_output[9]) | (fsm_output[6]) | (fsm_output[2]);
  assign MAC_mux_18_nl = MUX_v_30_2_2(MAC_acc_22_mx0w0, MAC_acc_10_itm, or_127_nl);
  assign nl_z_out_1 = MAC_acc_13_itm + (MAC_mux_18_nl);
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux1h_8_nl = MUX1HOT_v_16_6_2(regs_29_sva, MAC_asn_90_itm, reg_MAC_asn_65_cse,
      reg_MAC_asn_71_cse, reg_MAC_asn_77_cse, reg_MAC_asn_83_cse, {(fsm_output[0])
      , (fsm_output[1]) , (fsm_output[3]) , (fsm_output[5]) , (fsm_output[7]) , (fsm_output[9])});
  assign MAC_mux1h_9_nl = MUX1HOT_v_16_6_2((coeffs_rsci_d[479:464]), (reg_MAC_io_read_coeffs_rsc_ftd_48[15:0]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[111:96]), (reg_MAC_io_read_coeffs_rsc_ftd_48[207:192]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[303:288]), (reg_MAC_io_read_coeffs_rsc_ftd_48[399:384]),
      {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[3]) , (fsm_output[5]) , (fsm_output[7])
      , (fsm_output[9])});
  assign nl_z_out_2 = $signed((MAC_mux1h_8_nl)) * $signed((MAC_mux1h_9_nl));
  assign z_out_2 = nl_z_out_2[29:0];
  assign MAC_mux_19_nl = MUX_v_16_2_2(reg_MAC_asn_86_cse, reg_MAC_asn_80_cse, fsm_output[8]);
  assign MAC_mux_20_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[447:432]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[351:336]), fsm_output[8]);
  assign nl_z_out_3 = $signed((MAC_mux_19_nl)) * $signed((MAC_mux_20_nl));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_21_nl = MUX_v_16_2_2(reg_MAC_asn_85_cse, reg_MAC_asn_67_cse, fsm_output[4]);
  assign MAC_mux_22_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[431:416]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[143:128]), fsm_output[4]);
  assign nl_z_out_4 = $signed((MAC_mux_21_nl)) * $signed((MAC_mux_22_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_23_nl = MUX_v_16_2_2(reg_MAC_asn_68_cse, reg_MAC_asn_84_cse, fsm_output[10]);
  assign MAC_mux_24_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[159:144]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[415:400]), fsm_output[10]);
  assign nl_z_out_5 = $signed((MAC_mux_23_nl)) * $signed((MAC_mux_24_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_25_nl = MUX_v_16_2_2(reg_MAC_asn_76_cse, reg_MAC_asn_64_cse, fsm_output[3]);
  assign MAC_mux_26_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[287:272]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[95:80]), fsm_output[3]);
  assign nl_z_out_6 = $signed((MAC_mux_25_nl)) * $signed((MAC_mux_26_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_27_nl = MUX_v_16_2_2(reg_MAC_asn_75_cse, reg_MAC_asn_63_cse, fsm_output[3]);
  assign MAC_mux_28_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[271:256]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[79:64]), fsm_output[3]);
  assign nl_z_out_7 = $signed((MAC_mux_27_nl)) * $signed((MAC_mux_28_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_29_nl = MUX_v_16_2_2(reg_MAC_asn_87_cse, reg_MAC_asn_79_cse, fsm_output[8]);
  assign MAC_mux_30_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48[463:448]),
      (reg_MAC_io_read_coeffs_rsc_ftd_48[335:320]), fsm_output[8]);
  assign nl_z_out_8 = $signed((MAC_mux_29_nl)) * $signed((MAC_mux_30_nl));
  assign z_out_8 = nl_z_out_8[29:0];

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



  // Interconnect Declarations for Component Instantiations 
  fir_core fir_core_inst (
      .clk(clk),
      .rst(rst),
      .coeffs_rsc_z(coeffs_rsc_z),
      .coeffs_rsc_triosy_lz(coeffs_rsc_triosy_lz),
      .in1_rsc_dat(in1_rsc_dat),
      .in1_rsc_triosy_lz(in1_rsc_triosy_lz),
      .out1_rsc_dat(out1_rsc_dat),
      .out1_rsc_triosy_lz(out1_rsc_triosy_lz)
    );
endmodule



