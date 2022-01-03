// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
//  Generated date: Sat Nov 13 22:49:24 2021
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
  reg main_stage_0_2;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  wire [29:0] z_out;
  wire signed [31:0] nl_z_out;
  wire [29:0] z_out_1;
  wire signed [31:0] nl_z_out_1;
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
  wire [29:0] z_out_9;
  wire signed [31:0] nl_z_out_9;
  wire [29:0] z_out_10;
  wire signed [31:0] nl_z_out_10;
  wire [29:0] z_out_11;
  wire signed [31:0] nl_z_out_11;
  wire [29:0] z_out_12;
  wire signed [31:0] nl_z_out_12;
  wire [29:0] z_out_13;
  wire signed [31:0] nl_z_out_13;
  wire [29:0] z_out_14;
  wire signed [31:0] nl_z_out_14;
  wire [29:0] z_out_15;
  wire signed [31:0] nl_z_out_15;
  reg [15:0] regs_16_sva;
  reg [15:0] regs_17_sva;
  reg [15:0] regs_18_sva;
  reg [15:0] regs_19_sva;
  reg [15:0] regs_20_sva;
  reg [15:0] regs_21_sva;
  reg [15:0] regs_22_sva;
  reg [15:0] regs_23_sva;
  reg [15:0] regs_24_sva;
  reg [15:0] regs_25_sva;
  reg [15:0] regs_26_sva;
  reg [15:0] regs_27_sva;
  reg [15:0] regs_28_sva;
  reg [15:0] regs_2_sva;
  reg [15:0] regs_29_sva;
  reg [15:0] regs_30_sva;
  reg [15:0] regs_0_sva;
  reg [15:0] MAC_asn_62_itm;
  reg [15:0] MAC_asn_63_itm;
  reg [15:0] MAC_asn_64_itm;
  reg [15:0] MAC_asn_65_itm;
  reg [15:0] MAC_asn_66_itm;
  reg [15:0] MAC_asn_67_itm;
  reg [15:0] MAC_asn_68_itm;
  reg [15:0] MAC_asn_69_itm;
  reg [15:0] MAC_asn_70_itm;
  reg [15:0] MAC_asn_71_itm;
  reg [15:0] MAC_asn_72_itm;
  reg [15:0] MAC_asn_73_itm;
  reg [15:0] MAC_asn_74_itm;
  reg [29:0] MAC_acc_31_itm;
  reg [15:0] MAC_asn_90_itm;
  reg [29:0] MAC_acc_17_itm_1;
  reg [29:0] MAC_acc_16_itm_1;
  reg [29:0] MAC_acc_15_itm_1;
  reg [29:0] MAC_acc_14_itm_1;
  reg [29:0] MAC_acc_13_itm_1;
  reg [29:0] MAC_acc_12_itm_1;
  reg [29:0] MAC_acc_11_itm_1;
  reg [29:0] MAC_acc_10_itm_1;
  reg [29:0] MAC_acc_itm_1;
  wire [29:0] MAC_acc_31_itm_1;
  wire [30:0] nl_MAC_acc_31_itm_1;
  reg [255:0] MAC_io_read_coeffs_rsc_cse_sva_255_0;

  wire[29:0] MAC_acc_9_nl;
  wire[30:0] nl_MAC_acc_9_nl;
  wire[29:0] MAC_acc_17_nl;
  wire[30:0] nl_MAC_acc_17_nl;
  wire[29:0] MAC_acc_8_nl;
  wire[30:0] nl_MAC_acc_8_nl;
  wire[29:0] MAC_acc_16_nl;
  wire[30:0] nl_MAC_acc_16_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_15_nl;
  wire[30:0] nl_MAC_acc_15_nl;
  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_acc_13_nl;
  wire[30:0] nl_MAC_acc_13_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_acc_12_nl;
  wire[30:0] nl_MAC_acc_12_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_acc_18_nl;
  wire[30:0] nl_MAC_acc_18_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_32_acc_1_nl;
  wire[30:0] nl_MAC_32_acc_1_nl;
  wire[29:0] MAC_acc_36_nl;
  wire[30:0] nl_MAC_acc_36_nl;
  wire[29:0] MAC_acc_32_nl;
  wire[30:0] nl_MAC_acc_32_nl;
  wire[29:0] MAC_acc_34_nl;
  wire[30:0] nl_MAC_acc_34_nl;
  wire[29:0] MAC_acc_42_nl;
  wire[30:0] nl_MAC_acc_42_nl;
  wire[29:0] MAC_acc_38_nl;
  wire[30:0] nl_MAC_acc_38_nl;
  wire[29:0] MAC_acc_40_nl;
  wire[30:0] nl_MAC_acc_40_nl;
  wire[15:0] MAC_mux_41_nl;
  wire[15:0] MAC_mux_42_nl;
  wire[15:0] MAC_mux_43_nl;
  wire[15:0] MAC_mux_44_nl;
  wire[15:0] MAC_mux_45_nl;
  wire[15:0] MAC_mux_46_nl;
  wire[15:0] MAC_mux_47_nl;
  wire[15:0] MAC_mux_48_nl;
  wire[15:0] MAC_mux_49_nl;
  wire[15:0] MAC_mux_50_nl;
  wire[15:0] MAC_mux_51_nl;
  wire[15:0] MAC_mux_52_nl;
  wire[15:0] MAC_mux_53_nl;
  wire[15:0] MAC_mux_54_nl;
  wire[15:0] MAC_mux_55_nl;
  wire[15:0] MAC_mux_56_nl;
  wire[15:0] MAC_mux_57_nl;
  wire[15:0] MAC_mux_58_nl;
  wire[15:0] MAC_mux_59_nl;
  wire[15:0] MAC_mux_60_nl;
  wire[15:0] MAC_mux_61_nl;
  wire[15:0] MAC_mux_62_nl;
  wire[15:0] MAC_mux_63_nl;
  wire[15:0] MAC_mux_64_nl;
  wire[15:0] MAC_mux_65_nl;
  wire[15:0] MAC_mux_66_nl;
  wire[15:0] MAC_mux_67_nl;
  wire[15:0] MAC_mux_68_nl;
  wire[15:0] MAC_mux_69_nl;
  wire[15:0] MAC_mux_70_nl;
  wire[15:0] MAC_mux_71_nl;

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
  assign nl_MAC_acc_32_nl = MAC_acc_17_itm_1 + MAC_acc_16_itm_1;
  assign MAC_acc_32_nl = nl_MAC_acc_32_nl[29:0];
  assign nl_MAC_acc_34_nl = MAC_acc_15_itm_1 + MAC_acc_14_itm_1;
  assign MAC_acc_34_nl = nl_MAC_acc_34_nl[29:0];
  assign nl_MAC_acc_36_nl = (MAC_acc_32_nl) + (MAC_acc_34_nl);
  assign MAC_acc_36_nl = nl_MAC_acc_36_nl[29:0];
  assign nl_MAC_acc_38_nl = MAC_acc_13_itm_1 + MAC_acc_12_itm_1;
  assign MAC_acc_38_nl = nl_MAC_acc_38_nl[29:0];
  assign nl_MAC_acc_40_nl = MAC_acc_11_itm_1 + MAC_acc_10_itm_1;
  assign MAC_acc_40_nl = nl_MAC_acc_40_nl[29:0];
  assign nl_MAC_acc_42_nl = (MAC_acc_38_nl) + (MAC_acc_40_nl);
  assign MAC_acc_42_nl = nl_MAC_acc_42_nl[29:0];
  assign nl_MAC_acc_31_itm_1 = (MAC_acc_36_nl) + (MAC_acc_42_nl);
  assign MAC_acc_31_itm_1 = nl_MAC_acc_31_itm_1[29:0];
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_31_itm <= 30'b000000000000000000000000000000;
    end
    else if ( main_stage_0_2 ) begin
      MAC_acc_31_itm <= MAC_acc_31_itm_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_17_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_16_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_15_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_14_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_13_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_12_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_11_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_10_itm_1 <= 30'b000000000000000000000000000000;
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_io_read_coeffs_rsc_cse_sva_255_0 <= 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      MAC_asn_90_itm <= 16'b0000000000000000;
    end
    else begin
      MAC_acc_17_itm_1 <= MUX_v_30_2_2((MAC_acc_9_nl), (MAC_acc_17_nl), fsm_output[1]);
      MAC_acc_16_itm_1 <= MUX_v_30_2_2((MAC_acc_8_nl), (MAC_acc_16_nl), fsm_output[1]);
      MAC_acc_15_itm_1 <= MUX_v_30_2_2((MAC_acc_7_nl), (MAC_acc_15_nl), fsm_output[1]);
      MAC_acc_14_itm_1 <= MUX_v_30_2_2((MAC_acc_6_nl), (MAC_acc_14_nl), fsm_output[1]);
      MAC_acc_13_itm_1 <= MUX_v_30_2_2((MAC_acc_5_nl), (MAC_acc_13_nl), fsm_output[1]);
      MAC_acc_12_itm_1 <= MUX_v_30_2_2((MAC_acc_4_nl), (MAC_acc_12_nl), fsm_output[1]);
      MAC_acc_11_itm_1 <= MUX_v_30_2_2((MAC_acc_3_nl), (MAC_acc_11_nl), fsm_output[1]);
      MAC_acc_10_itm_1 <= MUX_v_30_2_2((MAC_acc_18_nl), (MAC_acc_10_nl), fsm_output[1]);
      out1_rsc_triosy_obj_ld <= main_stage_0_2 & (fsm_output[1]);
      reg_in1_rsc_triosy_obj_ld_cse <= ~ (fsm_output[1]);
      MAC_io_read_coeffs_rsc_cse_sva_255_0 <= coeffs_rsci_d[255:0];
      MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output[1]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( ~((~ main_stage_0_2) | (fsm_output[0])) ) begin
      out1_rsci_idat <= readslicef_30_16_14((MAC_32_acc_1_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_itm_1 <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_acc_itm_1 <= MAC_acc_31_itm_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      main_stage_0_2 <= 1'b0;
    end
    else if ( ~ (fsm_output[0]) ) begin
      main_stage_0_2 <= ~ (fsm_output[0]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_73_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_73_itm <= MAC_asn_72_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_74_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_74_itm <= MAC_asn_73_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_71_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_71_itm <= MAC_asn_70_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_72_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_72_itm <= MAC_asn_71_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_69_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_69_itm <= MAC_asn_68_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_70_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_70_itm <= MAC_asn_69_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_67_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_67_itm <= MAC_asn_66_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_68_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_68_itm <= MAC_asn_67_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_65_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_65_itm <= MAC_asn_64_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_66_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_66_itm <= MAC_asn_65_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_63_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_63_itm <= MAC_asn_62_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_64_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_64_itm <= MAC_asn_63_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_2_sva <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_62_itm <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      MAC_asn_62_itm <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_0_sva <= MAC_asn_90_itm;
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
      regs_28_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_28_sva <= regs_27_sva;
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
      regs_26_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_26_sva <= regs_25_sva;
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
      regs_24_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_24_sva <= regs_23_sva;
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
      regs_22_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_22_sva <= regs_21_sva;
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
      regs_20_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_20_sva <= regs_19_sva;
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
      regs_18_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_18_sva <= regs_17_sva;
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
      regs_16_sva <= 16'b0000000000000000;
    end
    else if ( ~ (fsm_output[0]) ) begin
      regs_16_sva <= MAC_asn_74_itm;
    end
  end
  assign nl_MAC_acc_9_nl = z_out + z_out_1;
  assign MAC_acc_9_nl = nl_MAC_acc_9_nl[29:0];
  assign nl_MAC_acc_17_nl = z_out_2 + z_out_1;
  assign MAC_acc_17_nl = nl_MAC_acc_17_nl[29:0];
  assign nl_MAC_acc_8_nl = z_out_4 + z_out_3;
  assign MAC_acc_8_nl = nl_MAC_acc_8_nl[29:0];
  assign nl_MAC_acc_16_nl = z_out_4 + z_out_7;
  assign MAC_acc_16_nl = nl_MAC_acc_16_nl[29:0];
  assign nl_MAC_acc_7_nl = z_out_6 + z_out_9;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_15_nl = z_out_8 + z_out_11;
  assign MAC_acc_15_nl = nl_MAC_acc_15_nl[29:0];
  assign nl_MAC_acc_6_nl = z_out_10 + z_out_13;
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign nl_MAC_acc_14_nl = z_out_12 + z_out_15;
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign nl_MAC_acc_5_nl = z_out_14 + z_out_15;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_13_nl = z_out_14 + z_out_13;
  assign MAC_acc_13_nl = nl_MAC_acc_13_nl[29:0];
  assign nl_MAC_acc_4_nl = z_out_12 + z_out_11;
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign nl_MAC_acc_12_nl = z_out_10 + z_out_9;
  assign MAC_acc_12_nl = nl_MAC_acc_12_nl[29:0];
  assign nl_MAC_acc_3_nl = z_out_8 + z_out_7;
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_MAC_acc_11_nl = z_out_6 + z_out_5;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_acc_18_nl = z_out_5 + z_out_2;
  assign MAC_acc_18_nl = nl_MAC_acc_18_nl[29:0];
  assign nl_MAC_acc_10_nl = z_out_3 + z_out;
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_32_acc_1_nl = MAC_acc_31_itm + MAC_acc_itm_1;
  assign MAC_32_acc_1_nl = nl_MAC_32_acc_1_nl[29:0];
  assign MAC_mux_41_nl = MUX_v_16_2_2(regs_16_sva, MAC_asn_74_itm, fsm_output[1]);
  assign MAC_mux_42_nl = MUX_v_16_2_2((coeffs_rsci_d[271:256]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[255:240]),
      fsm_output[1]);
  assign nl_z_out = $signed((MAC_mux_41_nl)) * $signed((MAC_mux_42_nl));
  assign z_out = nl_z_out[29:0];
  assign MAC_mux_43_nl = MUX_v_16_2_2(regs_17_sva, regs_0_sva, fsm_output[1]);
  assign MAC_mux_44_nl = MUX_v_16_2_2((coeffs_rsci_d[287:272]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[31:16]),
      fsm_output[1]);
  assign nl_z_out_1 = $signed((MAC_mux_43_nl)) * $signed((MAC_mux_44_nl));
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux_45_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[15:0]),
      (coeffs_rsci_d[511:496]), fsm_output[0]);
  assign nl_z_out_2 = $signed(MAC_asn_90_itm) * $signed((MAC_mux_45_nl));
  assign z_out_2 = nl_z_out_2[29:0];
  assign MAC_mux_46_nl = MUX_v_16_2_2(regs_19_sva, MAC_asn_73_itm, fsm_output[1]);
  assign MAC_mux_47_nl = MUX_v_16_2_2((coeffs_rsci_d[319:304]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[239:224]),
      fsm_output[1]);
  assign nl_z_out_3 = $signed((MAC_mux_46_nl)) * $signed((MAC_mux_47_nl));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_48_nl = MUX_v_16_2_2(regs_18_sva, regs_2_sva, fsm_output[1]);
  assign MAC_mux_49_nl = MUX_v_16_2_2((coeffs_rsci_d[303:288]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[47:32]),
      fsm_output[1]);
  assign nl_z_out_4 = $signed((MAC_mux_48_nl)) * $signed((MAC_mux_49_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_50_nl = MUX_v_16_2_2(MAC_asn_72_itm, regs_30_sva, fsm_output[0]);
  assign MAC_mux_51_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[223:208]),
      (coeffs_rsci_d[495:480]), fsm_output[0]);
  assign nl_z_out_5 = $signed((MAC_mux_50_nl)) * $signed((MAC_mux_51_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_52_nl = MUX_v_16_2_2(regs_20_sva, MAC_asn_71_itm, fsm_output[1]);
  assign MAC_mux_53_nl = MUX_v_16_2_2((coeffs_rsci_d[335:320]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[207:192]),
      fsm_output[1]);
  assign nl_z_out_6 = $signed((MAC_mux_52_nl)) * $signed((MAC_mux_53_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_54_nl = MUX_v_16_2_2(MAC_asn_62_itm, regs_29_sva, fsm_output[0]);
  assign MAC_mux_55_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[63:48]),
      (coeffs_rsci_d[479:464]), fsm_output[0]);
  assign nl_z_out_7 = $signed((MAC_mux_54_nl)) * $signed((MAC_mux_55_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_56_nl = MUX_v_16_2_2(MAC_asn_63_itm, regs_28_sva, fsm_output[0]);
  assign MAC_mux_57_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[79:64]),
      (coeffs_rsci_d[463:448]), fsm_output[0]);
  assign nl_z_out_8 = $signed((MAC_mux_56_nl)) * $signed((MAC_mux_57_nl));
  assign z_out_8 = nl_z_out_8[29:0];
  assign MAC_mux_58_nl = MUX_v_16_2_2(regs_21_sva, MAC_asn_70_itm, fsm_output[1]);
  assign MAC_mux_59_nl = MUX_v_16_2_2((coeffs_rsci_d[351:336]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[191:176]),
      fsm_output[1]);
  assign nl_z_out_9 = $signed((MAC_mux_58_nl)) * $signed((MAC_mux_59_nl));
  assign z_out_9 = nl_z_out_9[29:0];
  assign MAC_mux_60_nl = MUX_v_16_2_2(regs_22_sva, MAC_asn_69_itm, fsm_output[1]);
  assign MAC_mux_61_nl = MUX_v_16_2_2((coeffs_rsci_d[367:352]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[175:160]),
      fsm_output[1]);
  assign nl_z_out_10 = $signed((MAC_mux_60_nl)) * $signed((MAC_mux_61_nl));
  assign z_out_10 = nl_z_out_10[29:0];
  assign MAC_mux_62_nl = MUX_v_16_2_2(MAC_asn_64_itm, regs_27_sva, fsm_output[0]);
  assign MAC_mux_63_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[95:80]),
      (coeffs_rsci_d[447:432]), fsm_output[0]);
  assign nl_z_out_11 = $signed((MAC_mux_62_nl)) * $signed((MAC_mux_63_nl));
  assign z_out_11 = nl_z_out_11[29:0];
  assign MAC_mux_64_nl = MUX_v_16_2_2(MAC_asn_65_itm, regs_26_sva, fsm_output[0]);
  assign MAC_mux_65_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[111:96]),
      (coeffs_rsci_d[431:416]), fsm_output[0]);
  assign nl_z_out_12 = $signed((MAC_mux_64_nl)) * $signed((MAC_mux_65_nl));
  assign z_out_12 = nl_z_out_12[29:0];
  assign MAC_mux_66_nl = MUX_v_16_2_2(regs_23_sva, MAC_asn_68_itm, fsm_output[1]);
  assign MAC_mux_67_nl = MUX_v_16_2_2((coeffs_rsci_d[383:368]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[159:144]),
      fsm_output[1]);
  assign nl_z_out_13 = $signed((MAC_mux_66_nl)) * $signed((MAC_mux_67_nl));
  assign z_out_13 = nl_z_out_13[29:0];
  assign MAC_mux_68_nl = MUX_v_16_2_2(regs_24_sva, MAC_asn_67_itm, fsm_output[1]);
  assign MAC_mux_69_nl = MUX_v_16_2_2((coeffs_rsci_d[399:384]), (MAC_io_read_coeffs_rsc_cse_sva_255_0[143:128]),
      fsm_output[1]);
  assign nl_z_out_14 = $signed((MAC_mux_68_nl)) * $signed((MAC_mux_69_nl));
  assign z_out_14 = nl_z_out_14[29:0];
  assign MAC_mux_70_nl = MUX_v_16_2_2(MAC_asn_66_itm, regs_25_sva, fsm_output[0]);
  assign MAC_mux_71_nl = MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0[127:112]),
      (coeffs_rsci_d[415:400]), fsm_output[0]);
  assign nl_z_out_15 = $signed((MAC_mux_70_nl)) * $signed((MAC_mux_71_nl));
  assign z_out_15 = nl_z_out_15[29:0];

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


  function automatic [15:0] readslicef_30_16_14;
    input [29:0] vector;
    reg [29:0] tmp;
  begin
    tmp = vector >> 14;
    readslicef_30_16_14 = tmp[15:0];
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



