
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
//  Generated date: Wed Nov 10 16:28:20 2021
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
  output [1:0] fsm_output;
  reg [1:0] fsm_output;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 1'd0,
    main_C_1 = 1'd1;

  reg [0:0] state_var;
  reg [0:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      main_C_1 : begin
        fsm_output = 2'b10;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 2'b01;
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
  wire [1:0] fsm_output;
  wire or_tmp;
  reg main_stage_0_2;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
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
  reg [16:0] MAC_1_acc_3_itm;
  reg [16:0] MAC_2_acc_3_itm;
  wire [17:0] nl_MAC_2_acc_3_itm;
  reg [16:0] MAC_3_acc_3_itm;
  wire [17:0] nl_MAC_3_acc_3_itm;
  reg [16:0] MAC_4_acc_3_itm;
  wire [17:0] nl_MAC_4_acc_3_itm;
  reg [16:0] MAC_5_acc_3_itm;
  wire [17:0] nl_MAC_5_acc_3_itm;
  reg [16:0] MAC_6_acc_3_itm;
  wire [17:0] nl_MAC_6_acc_3_itm;
  reg [16:0] MAC_7_acc_3_itm;
  wire [17:0] nl_MAC_7_acc_3_itm;
  reg [16:0] MAC_8_acc_3_itm;
  wire [17:0] nl_MAC_8_acc_3_itm;
  reg [29:0] MAC_9_mul_itm;
  reg [29:0] MAC_10_mul_itm;
  reg [29:0] MAC_11_mul_itm;
  reg [29:0] MAC_12_mul_itm;
  reg [29:0] MAC_13_mul_itm;
  wire signed [32:0] nl_MAC_13_mul_itm;
  reg [29:0] MAC_14_mul_itm;
  reg [29:0] MAC_15_mul_itm;
  wire signed [32:0] nl_MAC_15_mul_itm;
  reg [29:0] MAC_16_mul_itm;
  wire signed [32:0] nl_MAC_16_mul_itm;
  reg [127:0] MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0;

  wire[29:0] MAC_9_mul_nl;
  wire signed [32:0] nl_MAC_9_mul_nl;
  wire[16:0] MAC_9_acc_3_nl;
  wire[17:0] nl_MAC_9_acc_3_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_1_mul_nl;
  wire signed [32:0] nl_MAC_1_mul_nl;
  wire[29:0] MAC_2_mul_nl;
  wire signed [32:0] nl_MAC_2_mul_nl;
  wire[29:0] MAC_10_mul_nl;
  wire signed [32:0] nl_MAC_10_mul_nl;
  wire[16:0] MAC_10_acc_3_nl;
  wire[17:0] nl_MAC_10_acc_3_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [32:0] nl_MAC_3_mul_nl;
  wire[29:0] MAC_4_mul_nl;
  wire signed [32:0] nl_MAC_4_mul_nl;
  wire[29:0] MAC_11_mul_nl;
  wire signed [32:0] nl_MAC_11_mul_nl;
  wire[16:0] MAC_11_acc_3_nl;
  wire[17:0] nl_MAC_11_acc_3_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_5_mul_nl;
  wire signed [32:0] nl_MAC_5_mul_nl;
  wire[29:0] MAC_6_mul_nl;
  wire signed [32:0] nl_MAC_6_mul_nl;
  wire[29:0] MAC_12_mul_nl;
  wire signed [32:0] nl_MAC_12_mul_nl;
  wire[16:0] MAC_12_acc_3_nl;
  wire[17:0] nl_MAC_12_acc_3_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_7_mul_nl;
  wire signed [32:0] nl_MAC_7_mul_nl;
  wire[29:0] MAC_8_mul_nl;
  wire signed [32:0] nl_MAC_8_mul_nl;
  wire[16:0] MAC_13_acc_3_nl;
  wire[17:0] nl_MAC_13_acc_3_nl;
  wire[29:0] MAC_14_mul_nl;
  wire signed [32:0] nl_MAC_14_mul_nl;
  wire[16:0] MAC_14_acc_3_nl;
  wire[17:0] nl_MAC_14_acc_3_nl;
  wire[16:0] MAC_15_acc_3_nl;
  wire[17:0] nl_MAC_15_acc_3_nl;
  wire[16:0] MAC_16_acc_3_nl;
  wire[17:0] nl_MAC_16_acc_3_nl;
  wire[16:0] MAC_1_acc_3_nl;
  wire[17:0] nl_MAC_1_acc_3_nl;
  wire[29:0] MAC_acc_24_nl;
  wire[30:0] nl_MAC_acc_24_nl;
  wire[29:0] MAC_acc_25_nl;
  wire[30:0] nl_MAC_acc_25_nl;
  wire[29:0] MAC_acc_26_nl;
  wire[30:0] nl_MAC_acc_26_nl;
  wire[29:0] MAC_mux_7_nl;
  wire[29:0] MAC_acc_27_nl;
  wire[30:0] nl_MAC_acc_27_nl;
  wire[29:0] MAC_acc_28_nl;
  wire[30:0] nl_MAC_acc_28_nl;
  wire[29:0] MAC_acc_29_nl;
  wire[30:0] nl_MAC_acc_29_nl;

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
  assign or_tmp = (fsm_output[1]) | (~ main_stage_0_2);
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      main_stage_0_2 <= 1'b0;
      MAC_9_mul_itm <= 30'b000000000000000000000000000000;
      MAC_10_mul_itm <= 30'b000000000000000000000000000000;
      MAC_11_mul_itm <= 30'b000000000000000000000000000000;
      MAC_12_mul_itm <= 30'b000000000000000000000000000000;
      MAC_13_mul_itm <= 30'b000000000000000000000000000000;
      MAC_14_mul_itm <= 30'b000000000000000000000000000000;
      MAC_15_mul_itm <= 30'b000000000000000000000000000000;
      MAC_16_mul_itm <= 30'b000000000000000000000000000000;
      MAC_7_acc_3_itm <= 17'b00000000000000000;
      MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0 <= 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      MAC_8_acc_3_itm <= 17'b00000000000000000;
      MAC_5_acc_3_itm <= 17'b00000000000000000;
      MAC_6_acc_3_itm <= 17'b00000000000000000;
      MAC_3_acc_3_itm <= 17'b00000000000000000;
      MAC_4_acc_3_itm <= 17'b00000000000000000;
      MAC_1_acc_3_itm <= 17'b00000000000000000;
      MAC_2_acc_3_itm <= 17'b00000000000000000;
    end
    else begin
      out1_rsc_triosy_obj_ld <= ~ or_tmp;
      reg_in1_rsc_triosy_obj_ld_cse <= ~ (fsm_output[1]);
      main_stage_0_2 <= 1'b1;
      MAC_9_mul_itm <= MUX_v_30_2_2((MAC_9_mul_nl), (MAC_acc_11_nl), fsm_output[1]);
      MAC_10_mul_itm <= MUX_v_30_2_2((MAC_10_mul_nl), (MAC_acc_10_nl), fsm_output[1]);
      MAC_11_mul_itm <= MUX_v_30_2_2((MAC_11_mul_nl), (MAC_acc_9_nl), fsm_output[1]);
      MAC_12_mul_itm <= MUX_v_30_2_2((MAC_12_mul_nl), (MAC_acc_8_nl), fsm_output[1]);
      MAC_13_mul_itm <= nl_MAC_13_mul_itm[29:0];
      MAC_14_mul_itm <= MUX_v_30_2_2((MAC_14_mul_nl), z_out, fsm_output[1]);
      MAC_15_mul_itm <= nl_MAC_15_mul_itm[29:0];
      MAC_16_mul_itm <= nl_MAC_16_mul_itm[29:0];
      MAC_7_acc_3_itm <= nl_MAC_7_acc_3_itm[16:0];
      MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0 <= coeffs_rsci_d[127:0];
      MAC_8_acc_3_itm <= nl_MAC_8_acc_3_itm[16:0];
      MAC_5_acc_3_itm <= nl_MAC_5_acc_3_itm[16:0];
      MAC_6_acc_3_itm <= nl_MAC_6_acc_3_itm[16:0];
      MAC_3_acc_3_itm <= nl_MAC_3_acc_3_itm[16:0];
      MAC_4_acc_3_itm <= nl_MAC_4_acc_3_itm[16:0];
      MAC_1_acc_3_itm <= MUX_v_17_2_2((MAC_1_acc_3_nl), ({1'b0 , regs_30_sva}), fsm_output[1]);
      MAC_2_acc_3_itm <= nl_MAC_2_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp ) begin
      out1_rsci_idat <= z_out[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[1]) ) begin
      regs_1_sva <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[1]) ) begin
      regs_0_sva <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_15_sva <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_14_sva <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_16_sva <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_13_sva <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_17_sva <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_12_sva <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_18_sva <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_11_sva <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_19_sva <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_10_sva <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_20_sva <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_9_sva <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_21_sva <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_8_sva <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_22_sva <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_7_sva <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_23_sva <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_6_sva <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_24_sva <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_5_sva <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_25_sva <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_4_sva <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_26_sva <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_3_sva <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_27_sva <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_2_sva <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_28_sva <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_29_sva <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_30_sva <= regs_29_sva;
    end
  end
  assign nl_MAC_9_acc_3_nl = conv_s2s_16_17(regs_8_sva) + conv_s2s_16_17(regs_23_sva);
  assign MAC_9_acc_3_nl = nl_MAC_9_acc_3_nl[16:0];
  assign nl_MAC_9_mul_nl = $signed((MAC_9_acc_3_nl)) * $signed((coeffs_rsci_d[143:128]));
  assign MAC_9_mul_nl = nl_MAC_9_mul_nl[29:0];
  assign nl_MAC_1_mul_nl = $signed(MAC_1_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[15:0]));
  assign MAC_1_mul_nl = nl_MAC_1_mul_nl[29:0];
  assign nl_MAC_2_mul_nl = $signed(MAC_2_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[31:16]));
  assign MAC_2_mul_nl = nl_MAC_2_mul_nl[29:0];
  assign nl_MAC_acc_11_nl = (MAC_1_mul_nl) + (MAC_2_mul_nl);
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_10_acc_3_nl = conv_s2s_16_17(regs_9_sva) + conv_s2s_16_17(regs_22_sva);
  assign MAC_10_acc_3_nl = nl_MAC_10_acc_3_nl[16:0];
  assign nl_MAC_10_mul_nl = $signed((MAC_10_acc_3_nl)) * $signed((coeffs_rsci_d[159:144]));
  assign MAC_10_mul_nl = nl_MAC_10_mul_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(MAC_3_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[47:32]));
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_4_mul_nl = $signed(MAC_4_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[63:48]));
  assign MAC_4_mul_nl = nl_MAC_4_mul_nl[29:0];
  assign nl_MAC_acc_10_nl = (MAC_3_mul_nl) + (MAC_4_mul_nl);
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_11_acc_3_nl = conv_s2s_16_17(regs_10_sva) + conv_s2s_16_17(regs_21_sva);
  assign MAC_11_acc_3_nl = nl_MAC_11_acc_3_nl[16:0];
  assign nl_MAC_11_mul_nl = $signed((MAC_11_acc_3_nl)) * $signed((coeffs_rsci_d[175:160]));
  assign MAC_11_mul_nl = nl_MAC_11_mul_nl[29:0];
  assign nl_MAC_5_mul_nl = $signed(MAC_5_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[79:64]));
  assign MAC_5_mul_nl = nl_MAC_5_mul_nl[29:0];
  assign nl_MAC_6_mul_nl = $signed(MAC_6_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[95:80]));
  assign MAC_6_mul_nl = nl_MAC_6_mul_nl[29:0];
  assign nl_MAC_acc_9_nl = (MAC_5_mul_nl) + (MAC_6_mul_nl);
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_12_acc_3_nl = conv_s2s_16_17(regs_11_sva) + conv_s2s_16_17(regs_20_sva);
  assign MAC_12_acc_3_nl = nl_MAC_12_acc_3_nl[16:0];
  assign nl_MAC_12_mul_nl = $signed((MAC_12_acc_3_nl)) * $signed((coeffs_rsci_d[191:176]));
  assign MAC_12_mul_nl = nl_MAC_12_mul_nl[29:0];
  assign nl_MAC_7_mul_nl = $signed(MAC_7_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[111:96]));
  assign MAC_7_mul_nl = nl_MAC_7_mul_nl[29:0];
  assign nl_MAC_8_mul_nl = $signed(MAC_8_acc_3_itm) * $signed((MAC_io_read_coeffs_rsc_cse_255_0_sva_127_0[127:112]));
  assign MAC_8_mul_nl = nl_MAC_8_mul_nl[29:0];
  assign nl_MAC_acc_8_nl = (MAC_7_mul_nl) + (MAC_8_mul_nl);
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_13_acc_3_nl = conv_s2s_16_17(regs_12_sva) + conv_s2s_16_17(regs_19_sva);
  assign MAC_13_acc_3_nl = nl_MAC_13_acc_3_nl[16:0];
  assign nl_MAC_13_mul_itm  = $signed((MAC_13_acc_3_nl)) * $signed((coeffs_rsci_d[207:192]));
  assign nl_MAC_14_acc_3_nl = conv_s2s_16_17(regs_13_sva) + conv_s2s_16_17(regs_18_sva);
  assign MAC_14_acc_3_nl = nl_MAC_14_acc_3_nl[16:0];
  assign nl_MAC_14_mul_nl = $signed((MAC_14_acc_3_nl)) * $signed((coeffs_rsci_d[223:208]));
  assign MAC_14_mul_nl = nl_MAC_14_mul_nl[29:0];
  assign nl_MAC_15_acc_3_nl = conv_s2s_16_17(regs_14_sva) + conv_s2s_16_17(regs_17_sva);
  assign MAC_15_acc_3_nl = nl_MAC_15_acc_3_nl[16:0];
  assign nl_MAC_15_mul_itm  = $signed((MAC_15_acc_3_nl)) * $signed((coeffs_rsci_d[239:224]));
  assign nl_MAC_16_acc_3_nl = conv_s2s_16_17(regs_15_sva) + conv_s2s_16_17(regs_16_sva);
  assign MAC_16_acc_3_nl = nl_MAC_16_acc_3_nl[16:0];
  assign nl_MAC_16_mul_itm  = $signed((MAC_16_acc_3_nl)) * $signed((coeffs_rsci_d[255:240]));
  assign nl_MAC_7_acc_3_itm  = conv_s2s_16_17(regs_6_sva) + conv_s2s_16_17(regs_25_sva);
  assign nl_MAC_8_acc_3_itm  = conv_s2s_16_17(regs_7_sva) + conv_s2s_16_17(regs_24_sva);
  assign nl_MAC_5_acc_3_itm  = conv_s2s_16_17(regs_4_sva) + conv_s2s_16_17(regs_27_sva);
  assign nl_MAC_6_acc_3_itm  = conv_s2s_16_17(regs_5_sva) + conv_s2s_16_17(regs_26_sva);
  assign nl_MAC_3_acc_3_itm  = conv_s2s_16_17(regs_1_sva) + conv_s2s_16_17(regs_29_sva);
  assign nl_MAC_4_acc_3_itm  = conv_s2s_16_17(regs_3_sva) + conv_s2s_16_17(regs_28_sva);
  assign nl_MAC_1_acc_3_nl = conv_s2s_16_17(in1_rsci_idat) + conv_s2s_16_17(MAC_1_acc_3_itm[15:0]);
  assign MAC_1_acc_3_nl = nl_MAC_1_acc_3_nl[16:0];
  assign nl_MAC_2_acc_3_itm  = conv_s2s_16_17(regs_0_sva) + conv_s2s_16_17(regs_30_sva);
  assign nl_MAC_acc_25_nl = MAC_9_mul_itm + MAC_10_mul_itm;
  assign MAC_acc_25_nl = nl_MAC_acc_25_nl[29:0];
  assign nl_MAC_acc_26_nl = MAC_11_mul_itm + MAC_12_mul_itm;
  assign MAC_acc_26_nl = nl_MAC_acc_26_nl[29:0];
  assign nl_MAC_acc_24_nl = (MAC_acc_25_nl) + (MAC_acc_26_nl);
  assign MAC_acc_24_nl = nl_MAC_acc_24_nl[29:0];
  assign nl_MAC_acc_28_nl = MAC_13_mul_itm + MAC_14_mul_itm;
  assign MAC_acc_28_nl = nl_MAC_acc_28_nl[29:0];
  assign nl_MAC_acc_29_nl = MAC_15_mul_itm + MAC_16_mul_itm;
  assign MAC_acc_29_nl = nl_MAC_acc_29_nl[29:0];
  assign nl_MAC_acc_27_nl = (MAC_acc_28_nl) + (MAC_acc_29_nl);
  assign MAC_acc_27_nl = nl_MAC_acc_27_nl[29:0];
  assign MAC_mux_7_nl = MUX_v_30_2_2(MAC_14_mul_itm, (MAC_acc_27_nl), fsm_output[1]);
  assign nl_z_out = (MAC_acc_24_nl) + (MAC_mux_7_nl);
  assign z_out = nl_z_out[29:0];

  function automatic [16:0] MUX_v_17_2_2;
    input [16:0] input_0;
    input [16:0] input_1;
    input [0:0] sel;
    reg [16:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_17_2_2 = result;
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


  function automatic [16:0] conv_s2s_16_17 ;
    input [15:0]  vector ;
  begin
    conv_s2s_16_17 = {vector[15], vector};
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



