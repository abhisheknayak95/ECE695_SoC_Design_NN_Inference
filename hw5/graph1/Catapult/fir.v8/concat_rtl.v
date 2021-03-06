
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
//  Generated date: Tue Nov  9 15:13:29 2021
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
  clk, rst, fsm_output, MAC_C_9_tr0
);
  input clk;
  input rst;
  output [11:0] fsm_output;
  reg [11:0] fsm_output;
  input MAC_C_9_tr0;


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
    MAC_C_7 = 4'd8,
    MAC_C_8 = 4'd9,
    MAC_C_9 = 4'd10,
    main_C_1 = 4'd11;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      MAC_C_0 : begin
        fsm_output = 12'b000000000010;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 12'b000000000100;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 12'b000000001000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 12'b000000010000;
        state_var_NS = MAC_C_4;
      end
      MAC_C_4 : begin
        fsm_output = 12'b000000100000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 12'b000001000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 12'b000010000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 12'b000100000000;
        state_var_NS = MAC_C_8;
      end
      MAC_C_8 : begin
        fsm_output = 12'b001000000000;
        state_var_NS = MAC_C_9;
      end
      MAC_C_9 : begin
        fsm_output = 12'b010000000000;
        if ( MAC_C_9_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MAC_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 12'b100000000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 12'b000000000001;
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
  wire [11:0] fsm_output;
  wire and_dcpl_3;
  reg [2:0] MAC_i_5_3_sva_1;
  wire [3:0] nl_MAC_i_5_3_sva_1;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  reg [1:0] MAC_i_5_3_sva_1_0;
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  wire [29:0] z_out_1;
  wire signed [31:0] nl_z_out_1;
  wire [29:0] z_out_2;
  wire signed [31:0] nl_z_out_2;
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
  reg [15:0] MAC_7_MAC_mux_itm;
  reg [15:0] MAC_8_MAC_mux_itm;
  reg [29:0] MAC_acc_7_itm;
  reg [15:0] MAC_1_MAC_mux_itm;
  reg [29:0] MAC_1_mul_itm;
  reg [15:0] MAC_2_MAC_mux_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [15:0] MAC_3_MAC_mux_itm;
  reg [15:0] MAC_4_MAC_mux_itm;
  reg [15:0] MAC_5_MAC_mux_itm;
  reg [15:0] MAC_6_MAC_mux_itm;
  reg [29:0] MAC_acc_4_itm;
  wire [29:0] MAC_acc_3_mx0w1;
  wire [30:0] nl_MAC_acc_3_mx0w1;
  wire [29:0] acc_32_3_1_sva_3;
  wire [30:0] nl_acc_32_3_1_sva_3;

  wire[29:0] acc_mux1h_nl;
  wire[0:0] MAC_not_2_nl;
  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[2:0] coeffs_or_nl;
  wire[2:0] coeffs_nor_nl;
  wire[2:0] coeffs_mux1h_1_nl;
  wire[15:0] MAC_mux1h_7_nl;
  wire[15:0] MAC_mux1h_8_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_9_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_9_tr0 = MAC_i_5_3_sva_1[2];
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
      .MAC_C_9_tr0(nl_fir_core_core_fsm_inst_MAC_C_9_tr0[0:0])
    );
  assign reg_out1_out1_and_cse = (fsm_output[10]) & (MAC_i_5_3_sva_1[2]);
  assign nl_MAC_acc_3_mx0w1 = MAC_1_mul_itm + MAC_2_mul_itm;
  assign MAC_acc_3_mx0w1 = nl_MAC_acc_3_mx0w1[29:0];
  assign nl_MAC_acc_9_nl = MAC_acc_7_itm + MAC_acc_3_mx0w1;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_acc_32_3_1_sva_3 = (MAC_acc_9_nl) + MAC_acc_4_itm;
  assign acc_32_3_1_sva_3 = nl_acc_32_3_1_sva_3[29:0];
  assign and_dcpl_3 = ~((fsm_output[11]) | (fsm_output[0]));
  assign coeffs_mux1h_1_nl = MUX1HOT_v_3_6_2(3'b001, 3'b010, 3'b011, 3'b100, 3'b101,
      3'b110, {(fsm_output[2]) , (fsm_output[3]) , (fsm_output[4]) , (fsm_output[5])
      , (fsm_output[6]) , (fsm_output[7])});
  assign coeffs_nor_nl = ~(MUX_v_3_2_2((coeffs_mux1h_1_nl), 3'b111, (fsm_output[8])));
  assign coeffs_or_nl = MUX_v_3_2_2((coeffs_nor_nl), 3'b111, (fsm_output[1]));
  assign coeffs_rsci_radr_d = {MAC_i_5_3_sva_1_0 , (coeffs_or_nl)};
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = and_dcpl_3 & (fsm_output[10:9]==2'b00);
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
      regs_4_sva <= 16'b0000000000000000;
      regs_12_sva <= 16'b0000000000000000;
      regs_20_sva <= 16'b0000000000000000;
      regs_28_sva <= 16'b0000000000000000;
      regs_3_sva <= 16'b0000000000000000;
      regs_11_sva <= 16'b0000000000000000;
      regs_19_sva <= 16'b0000000000000000;
      regs_27_sva <= 16'b0000000000000000;
      regs_2_sva <= 16'b0000000000000000;
      regs_10_sva <= 16'b0000000000000000;
      regs_18_sva <= 16'b0000000000000000;
      regs_26_sva <= 16'b0000000000000000;
      regs_1_sva <= 16'b0000000000000000;
      regs_9_sva <= 16'b0000000000000000;
      regs_17_sva <= 16'b0000000000000000;
      regs_25_sva <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
      regs_8_sva <= 16'b0000000000000000;
      regs_16_sva <= 16'b0000000000000000;
      regs_24_sva <= 16'b0000000000000000;
      regs_7_sva <= 16'b0000000000000000;
      regs_15_sva <= 16'b0000000000000000;
      regs_23_sva <= 16'b0000000000000000;
      regs_6_sva <= 16'b0000000000000000;
      regs_14_sva <= 16'b0000000000000000;
      regs_22_sva <= 16'b0000000000000000;
      regs_30_sva <= 16'b0000000000000000;
      regs_5_sva <= 16'b0000000000000000;
      regs_13_sva <= 16'b0000000000000000;
      regs_21_sva <= 16'b0000000000000000;
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= acc_32_3_1_sva_3[29:14];
      regs_4_sva <= regs_4_sva_1;
      regs_12_sva <= regs_12_sva_1;
      regs_20_sva <= regs_20_sva_1;
      regs_28_sva <= regs_28_sva_1;
      regs_3_sva <= regs_3_sva_1;
      regs_11_sva <= regs_11_sva_1;
      regs_19_sva <= regs_19_sva_1;
      regs_27_sva <= regs_27_sva_1;
      regs_2_sva <= regs_2_sva_1;
      regs_10_sva <= regs_10_sva_1;
      regs_18_sva <= regs_18_sva_1;
      regs_26_sva <= regs_26_sva_1;
      regs_1_sva <= regs_1_sva_1;
      regs_9_sva <= regs_9_sva_1;
      regs_17_sva <= regs_17_sva_1;
      regs_25_sva <= regs_25_sva_1;
      regs_0_sva <= regs_0_sva_1;
      regs_8_sva <= regs_8_sva_1;
      regs_16_sva <= regs_16_sva_1;
      regs_24_sva <= regs_24_sva_1;
      regs_7_sva <= regs_7_sva_1;
      regs_15_sva <= regs_15_sva_1;
      regs_23_sva <= regs_23_sva_1;
      regs_6_sva <= regs_6_sva_1;
      regs_14_sva <= regs_14_sva_1;
      regs_22_sva <= regs_22_sva_1;
      regs_30_sva <= regs_30_sva_1;
      regs_5_sva <= regs_5_sva_1;
      regs_13_sva <= regs_13_sva_1;
      regs_21_sva <= regs_21_sva_1;
      regs_29_sva <= regs_29_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_5_3_sva_1_0 <= 2'b00;
    end
    else if ( (fsm_output[0]) | (fsm_output[10]) ) begin
      MAC_i_5_3_sva_1_0 <= MUX_v_2_2_2(2'b00, (MAC_i_5_3_sva_1[1:0]), (fsm_output[10]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_0_sva_1 <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_8_MAC_mux_itm <= 16'b0000000000000000;
      MAC_1_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      MAC_8_MAC_mux_itm <= MUX_v_16_4_2(regs_6_sva, regs_14_sva, regs_22_sva, regs_30_sva,
          MAC_i_5_3_sva_1_0);
      MAC_1_mul_itm <= MUX_v_30_2_2(z_out_2, z_out_1, fsm_output[9]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_30_sva_1 <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_29_sva_1 <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_28_sva_1 <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_27_sva_1 <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_26_sva_1 <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_25_sva_1 <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_24_sva_1 <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_23_sva_1 <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_22_sva_1 <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_21_sva_1 <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_20_sva_1 <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_19_sva_1 <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_18_sva_1 <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_17_sva_1 <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_16_sva_1 <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_15_sva_1 <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_14_sva_1 <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_13_sva_1 <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_12_sva_1 <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_11_sva_1 <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_10_sva_1 <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_9_sva_1 <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_8_sva_1 <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_7_sva_1 <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_6_sva_1 <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_5_sva_1 <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_4_sva_1 <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_3_sva_1 <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_2_sva_1 <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl_3 ) begin
      regs_1_sva_1 <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_4_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[6]) | (fsm_output[8]) | (fsm_output[10])
        ) begin
      MAC_acc_4_itm <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_mux1h_nl),
          (MAC_not_2_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_5_3_sva_1 <= 3'b000;
    end
    else if ( fsm_output[1] ) begin
      MAC_i_5_3_sva_1 <= nl_MAC_i_5_3_sva_1[2:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_1_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_1_MAC_mux_itm <= MUX_v_16_4_2(regs_0_sva_1, regs_7_sva, regs_15_sva, regs_23_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_2_MAC_mux_itm <= MUX_v_16_4_2(regs_0_sva, regs_8_sva, regs_16_sva, regs_24_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_3_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_3_MAC_mux_itm <= MUX_v_16_4_2(regs_1_sva, regs_9_sva, regs_17_sva, regs_25_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_4_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_4_MAC_mux_itm <= MUX_v_16_4_2(regs_2_sva, regs_10_sva, regs_18_sva, regs_26_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_5_MAC_mux_itm <= MUX_v_16_4_2(regs_3_sva, regs_11_sva, regs_19_sva, regs_27_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_6_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_6_MAC_mux_itm <= MUX_v_16_4_2(regs_4_sva, regs_12_sva, regs_20_sva, regs_28_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_7_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_7_MAC_mux_itm <= MUX_v_16_4_2(regs_5_sva, regs_13_sva, regs_21_sva, regs_29_sva,
          MAC_i_5_3_sva_1_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[2]) | (fsm_output[4]) | (fsm_output[6]) | (fsm_output[8])
        ) begin
      MAC_2_mul_itm <= MUX_v_30_2_2(z_out_1, z_out_2, fsm_output[8]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_7_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[4] ) begin
      MAC_acc_7_itm <= z_out;
    end
  end
  assign acc_mux1h_nl = MUX1HOT_v_30_3_2(MAC_acc_3_mx0w1, z_out, acc_32_3_1_sva_3,
      {(fsm_output[6]) , (fsm_output[8]) , (fsm_output[10])});
  assign MAC_not_2_nl = ~ (fsm_output[0]);
  assign nl_MAC_i_5_3_sva_1  = conv_u2u_2_3(MAC_i_5_3_sva_1_0) + 3'b001;
  assign nl_z_out = MAC_acc_3_mx0w1 + MAC_acc_4_itm;
  assign z_out = nl_z_out[29:0];
  assign MAC_mux1h_7_nl = MUX1HOT_v_16_4_2(MAC_8_MAC_mux_itm, MAC_6_MAC_mux_itm,
      MAC_4_MAC_mux_itm, MAC_1_MAC_mux_itm, {(fsm_output[2]) , (fsm_output[4]) ,
      (fsm_output[6]) , (fsm_output[9])});
  assign nl_z_out_1 = $signed((MAC_mux1h_7_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux1h_8_nl = MUX1HOT_v_16_4_2(MAC_2_MAC_mux_itm, MAC_7_MAC_mux_itm,
      MAC_5_MAC_mux_itm, MAC_3_MAC_mux_itm, {(fsm_output[8]) , (fsm_output[3]) ,
      (fsm_output[5]) , (fsm_output[7])});
  assign nl_z_out_2 = $signed((MAC_mux1h_8_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_2 = nl_z_out_2[29:0];

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


  function automatic [2:0] MUX1HOT_v_3_6_2;
    input [2:0] input_5;
    input [2:0] input_4;
    input [2:0] input_3;
    input [2:0] input_2;
    input [2:0] input_1;
    input [2:0] input_0;
    input [5:0] sel;
    reg [2:0] result;
  begin
    result = input_0 & {3{sel[0]}};
    result = result | ( input_1 & {3{sel[1]}});
    result = result | ( input_2 & {3{sel[2]}});
    result = result | ( input_3 & {3{sel[3]}});
    result = result | ( input_4 & {3{sel[4]}});
    result = result | ( input_5 & {3{sel[5]}});
    MUX1HOT_v_3_6_2 = result;
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


  function automatic [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
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



