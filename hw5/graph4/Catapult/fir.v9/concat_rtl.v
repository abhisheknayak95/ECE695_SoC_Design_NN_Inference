
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
//  Generated date: Wed Nov 10 16:36:36 2021
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
  output [7:0] fsm_output;
  reg [7:0] fsm_output;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 3'd0,
    main_C_1 = 3'd1,
    main_C_2 = 3'd2,
    main_C_3 = 3'd3,
    main_C_4 = 3'd4,
    main_C_5 = 3'd5,
    main_C_6 = 3'd6,
    main_C_7 = 3'd7;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      main_C_1 : begin
        fsm_output = 8'b00000010;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 8'b00000100;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 8'b00001000;
        state_var_NS = main_C_4;
      end
      main_C_4 : begin
        fsm_output = 8'b00010000;
        state_var_NS = main_C_5;
      end
      main_C_5 : begin
        fsm_output = 8'b00100000;
        state_var_NS = main_C_6;
      end
      main_C_6 : begin
        fsm_output = 8'b01000000;
        state_var_NS = main_C_7;
      end
      main_C_7 : begin
        fsm_output = 8'b10000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 8'b00000001;
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
  wire [7:0] fsm_output;
  wire or_tmp;
  reg main_stage_0_2;
  reg [223:0] reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  wire [29:0] z_out_1;
  wire [30:0] nl_z_out_1;
  wire [29:0] z_out_2;
  wire signed [32:0] nl_z_out_2;
  wire [29:0] z_out_3;
  wire signed [32:0] nl_z_out_3;
  wire [29:0] z_out_4;
  wire signed [32:0] nl_z_out_4;
  wire [29:0] z_out_5;
  wire signed [32:0] nl_z_out_5;
  wire [29:0] z_out_6;
  wire signed [32:0] nl_z_out_6;
  wire [29:0] z_out_7;
  wire signed [32:0] nl_z_out_7;
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
  wire [17:0] nl_MAC_1_acc_3_itm;
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
  reg [16:0] MAC_9_acc_3_itm;
  wire [17:0] nl_MAC_9_acc_3_itm;
  reg [16:0] MAC_10_acc_3_itm;
  reg [16:0] MAC_11_acc_3_itm;
  wire [17:0] nl_MAC_11_acc_3_itm;
  reg [16:0] MAC_12_acc_3_itm;
  wire [17:0] nl_MAC_12_acc_3_itm;
  reg [16:0] MAC_13_acc_3_itm;
  wire [17:0] nl_MAC_13_acc_3_itm;
  reg [16:0] MAC_14_acc_3_itm;
  wire [17:0] nl_MAC_14_acc_3_itm;
  reg [29:0] MAC_15_mul_itm;
  reg [29:0] MAC_16_mul_itm;
  reg [29:0] MAC_acc_16_itm;
  reg [29:0] MAC_acc_7_itm_1;
  wire MAC_or_cse;

  wire[29:0] MAC_16_acc_2_nl;
  wire[30:0] nl_MAC_16_acc_2_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[16:0] MAC_10_acc_3_nl;
  wire[17:0] nl_MAC_10_acc_3_nl;
  wire[29:0] MAC_15_mul_nl;
  wire signed [32:0] nl_MAC_15_mul_nl;
  wire[16:0] MAC_15_acc_3_nl;
  wire[17:0] nl_MAC_15_acc_3_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_16_mul_nl;
  wire signed [32:0] nl_MAC_16_mul_nl;
  wire[16:0] MAC_16_acc_3_nl;
  wire[17:0] nl_MAC_16_acc_3_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [32:0] nl_MAC_3_mul_nl;
  wire[29:0] MAC_4_mul_nl;
  wire signed [32:0] nl_MAC_4_mul_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_mux_25_nl;
  wire[29:0] MAC_mux_26_nl;
  wire[0:0] or_85_nl;
  wire[15:0] MAC_mux_27_nl;
  wire[16:0] MAC_mux_28_nl;
  wire[15:0] MAC_mux_29_nl;
  wire[16:0] MAC_mux_30_nl;
  wire[15:0] MAC_mux_31_nl;
  wire[16:0] MAC_mux_32_nl;
  wire[15:0] MAC_mux_33_nl;
  wire[16:0] MAC_mux_34_nl;
  wire[15:0] MAC_mux_35_nl;
  wire[16:0] MAC_mux_36_nl;
  wire[15:0] MAC_mux_37_nl;
  wire[16:0] MAC_mux_38_nl;

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
  assign MAC_or_cse = (fsm_output[4]) | (fsm_output[6]);
  assign or_tmp = ~((fsm_output[0]) & main_stage_0_2);
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      main_stage_0_2 <= 1'b0;
      MAC_16_mul_itm <= 30'b000000000000000000000000000000;
      MAC_13_acc_3_itm <= 17'b00000000000000000;
      MAC_14_acc_3_itm <= 17'b00000000000000000;
    end
    else begin
      out1_rsc_triosy_obj_ld <= ~ or_tmp;
      reg_in1_rsc_triosy_obj_ld_cse <= fsm_output[0];
      main_stage_0_2 <= 1'b1;
      MAC_16_mul_itm <= MUX1HOT_v_30_5_2((MAC_16_mul_nl), z_out_1, (MAC_acc_10_nl),
          (MAC_acc_8_nl), MAC_acc_16_itm, {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[3])
          , (fsm_output[5]) , (fsm_output[7])});
      MAC_13_acc_3_itm <= nl_MAC_13_acc_3_itm[16:0];
      MAC_14_acc_3_itm <= nl_MAC_14_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp ) begin
      out1_rsci_idat <= readslicef_30_16_14((MAC_16_acc_2_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_7_itm_1 <= 30'b000000000000000000000000000000;
    end
    else if ( MAC_or_cse ) begin
      MAC_acc_7_itm_1 <= MUX_v_30_2_2((MAC_acc_9_nl), (MAC_acc_7_nl), fsm_output[6]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_11_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_11_acc_3_itm <= nl_MAC_11_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_12_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_12_acc_3_itm <= nl_MAC_12_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_9_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_9_acc_3_itm <= nl_MAC_9_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_10_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[7]) ) begin
      MAC_10_acc_3_itm <= MUX_v_17_2_2((MAC_10_acc_3_nl), ({1'b0 , regs_30_sva}),
          fsm_output[7]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_7_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_7_acc_3_itm <= nl_MAC_7_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_8_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_8_acc_3_itm <= nl_MAC_8_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_5_acc_3_itm <= nl_MAC_5_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_6_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_6_acc_3_itm <= nl_MAC_6_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_3_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_3_acc_3_itm <= nl_MAC_3_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_4_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_4_acc_3_itm <= nl_MAC_4_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_1_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_1_acc_3_itm <= nl_MAC_1_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_acc_3_itm <= 17'b00000000000000000;
    end
    else if ( fsm_output[0] ) begin
      MAC_2_acc_3_itm <= nl_MAC_2_acc_3_itm[16:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_15_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[1]) | (fsm_output[2]) | (fsm_output[4])
        | (fsm_output[6]) ) begin
      MAC_15_mul_itm <= MUX1HOT_v_30_4_2((MAC_15_mul_nl), (MAC_acc_5_nl), (MAC_acc_11_nl),
          z_out_1, {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2]) , MAC_or_cse});
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
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[0] ) begin
      regs_0_sva <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_15_sva <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_14_sva <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_16_sva <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_13_sva <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_17_sva <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_12_sva <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_18_sva <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_11_sva <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_19_sva <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_10_sva <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_20_sva <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_9_sva <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_21_sva <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_8_sva <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_22_sva <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_7_sva <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_23_sva <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_6_sva <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_24_sva <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_5_sva <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_25_sva <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_4_sva <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_26_sva <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_3_sva <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_27_sva <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_2_sva <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_28_sva <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_29_sva <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[7] ) begin
      regs_30_sva <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_16_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[2]) | (fsm_output[7]) ) begin
      MAC_acc_16_itm <= MUX_v_30_2_2(z_out_1, (MAC_acc_6_nl), fsm_output[7]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32 <= 224'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( fsm_output[0] ) begin
      reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32 <= coeffs_rsci_d[223:0];
    end
  end
  assign nl_MAC_16_acc_3_nl = conv_s2s_16_17(regs_15_sva) + conv_s2s_16_17(regs_16_sva);
  assign MAC_16_acc_3_nl = nl_MAC_16_acc_3_nl[16:0];
  assign nl_MAC_16_mul_nl = $signed((MAC_16_acc_3_nl)) * $signed((coeffs_rsci_d[255:240]));
  assign MAC_16_mul_nl = nl_MAC_16_mul_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(MAC_3_acc_3_itm) * $signed((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[47:32]));
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_4_mul_nl = $signed(MAC_4_acc_3_itm) * $signed((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[63:48]));
  assign MAC_4_mul_nl = nl_MAC_4_mul_nl[29:0];
  assign nl_MAC_acc_10_nl = (MAC_3_mul_nl) + (MAC_4_mul_nl);
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_acc_8_nl = z_out_7 + z_out_6;
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_13_acc_3_itm  = conv_s2s_16_17(regs_12_sva) + conv_s2s_16_17(regs_19_sva);
  assign nl_MAC_14_acc_3_itm  = conv_s2s_16_17(regs_13_sva) + conv_s2s_16_17(regs_18_sva);
  assign nl_MAC_acc_nl = z_out + MAC_16_mul_itm;
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign nl_MAC_16_acc_2_nl = MAC_15_mul_itm + (MAC_acc_nl);
  assign MAC_16_acc_2_nl = nl_MAC_16_acc_2_nl[29:0];
  assign nl_MAC_acc_9_nl = z_out_2 + z_out_3;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_acc_7_nl = z_out_2 + z_out_3;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_11_acc_3_itm  = conv_s2s_16_17(regs_10_sva) + conv_s2s_16_17(regs_21_sva);
  assign nl_MAC_12_acc_3_itm  = conv_s2s_16_17(regs_11_sva) + conv_s2s_16_17(regs_20_sva);
  assign nl_MAC_9_acc_3_itm  = conv_s2s_16_17(regs_8_sva) + conv_s2s_16_17(regs_23_sva);
  assign nl_MAC_10_acc_3_nl = conv_s2s_16_17(regs_9_sva) + conv_s2s_16_17(regs_22_sva);
  assign MAC_10_acc_3_nl = nl_MAC_10_acc_3_nl[16:0];
  assign nl_MAC_7_acc_3_itm  = conv_s2s_16_17(regs_6_sva) + conv_s2s_16_17(regs_25_sva);
  assign nl_MAC_8_acc_3_itm  = conv_s2s_16_17(regs_7_sva) + conv_s2s_16_17(regs_24_sva);
  assign nl_MAC_5_acc_3_itm  = conv_s2s_16_17(regs_4_sva) + conv_s2s_16_17(regs_27_sva);
  assign nl_MAC_6_acc_3_itm  = conv_s2s_16_17(regs_5_sva) + conv_s2s_16_17(regs_26_sva);
  assign nl_MAC_3_acc_3_itm  = conv_s2s_16_17(regs_1_sva) + conv_s2s_16_17(regs_29_sva);
  assign nl_MAC_4_acc_3_itm  = conv_s2s_16_17(regs_3_sva) + conv_s2s_16_17(regs_28_sva);
  assign nl_MAC_1_acc_3_itm  = conv_s2s_16_17(in1_rsci_idat) + conv_s2s_16_17(MAC_10_acc_3_itm[15:0]);
  assign nl_MAC_2_acc_3_itm  = conv_s2s_16_17(regs_0_sva) + conv_s2s_16_17(regs_30_sva);
  assign nl_MAC_15_acc_3_nl = conv_s2s_16_17(regs_14_sva) + conv_s2s_16_17(regs_17_sva);
  assign MAC_15_acc_3_nl = nl_MAC_15_acc_3_nl[16:0];
  assign nl_MAC_15_mul_nl = $signed((MAC_15_acc_3_nl)) * $signed((coeffs_rsci_d[239:224]));
  assign MAC_15_mul_nl = nl_MAC_15_mul_nl[29:0];
  assign nl_MAC_acc_5_nl = z_out_4 + z_out_5;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_11_nl = z_out_6 + z_out_7;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_acc_6_nl = z_out_5 + z_out_4;
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign MAC_mux_25_nl = MUX_v_30_2_2(MAC_acc_16_itm, MAC_16_mul_itm, fsm_output[6]);
  assign nl_z_out = MAC_acc_7_itm_1 + (MAC_mux_25_nl);
  assign z_out = nl_z_out[29:0];
  assign or_85_nl = (fsm_output[4]) | (fsm_output[2]) | (fsm_output[1]);
  assign MAC_mux_26_nl = MUX_v_30_2_2(z_out, MAC_16_mul_itm, or_85_nl);
  assign nl_z_out_1 = MAC_15_mul_itm + (MAC_mux_26_nl);
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux_27_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[79:64]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[143:128]), fsm_output[6]);
  assign MAC_mux_28_nl = MUX_v_17_2_2(MAC_5_acc_3_itm, MAC_9_acc_3_itm, fsm_output[6]);
  assign nl_z_out_2 = $signed((MAC_mux_27_nl)) * $signed((MAC_mux_28_nl));
  assign z_out_2 = nl_z_out_2[29:0];
  assign MAC_mux_29_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[95:80]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[159:144]), fsm_output[6]);
  assign MAC_mux_30_nl = MUX_v_17_2_2(MAC_6_acc_3_itm, MAC_10_acc_3_itm, fsm_output[6]);
  assign nl_z_out_3 = $signed((MAC_mux_29_nl)) * $signed((MAC_mux_30_nl));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_31_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[207:192]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[191:176]), fsm_output[7]);
  assign MAC_mux_32_nl = MUX_v_17_2_2(MAC_13_acc_3_itm, MAC_12_acc_3_itm, fsm_output[7]);
  assign nl_z_out_4 = $signed((MAC_mux_31_nl)) * $signed((MAC_mux_32_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_33_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[223:208]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[175:160]), fsm_output[7]);
  assign MAC_mux_34_nl = MUX_v_17_2_2(MAC_14_acc_3_itm, MAC_11_acc_3_itm, fsm_output[7]);
  assign nl_z_out_5 = $signed((MAC_mux_33_nl)) * $signed((MAC_mux_34_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_35_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[15:0]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[127:112]), fsm_output[5]);
  assign MAC_mux_36_nl = MUX_v_17_2_2(MAC_1_acc_3_itm, MAC_8_acc_3_itm, fsm_output[5]);
  assign nl_z_out_6 = $signed((MAC_mux_35_nl)) * $signed((MAC_mux_36_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_37_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[31:16]),
      (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32[111:96]), fsm_output[5]);
  assign MAC_mux_38_nl = MUX_v_17_2_2(MAC_2_acc_3_itm, MAC_7_acc_3_itm, fsm_output[5]);
  assign nl_z_out_7 = $signed((MAC_mux_37_nl)) * $signed((MAC_mux_38_nl));
  assign z_out_7 = nl_z_out_7[29:0];

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


  function automatic [15:0] readslicef_30_16_14;
    input [29:0] vector;
    reg [29:0] tmp;
  begin
    tmp = vector >> 14;
    readslicef_30_16_14 = tmp[15:0];
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



