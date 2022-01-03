// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
//  Generated date: Sat Nov 13 22:50:16 2021
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
  output [2:0] fsm_output;
  reg [2:0] fsm_output;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 2'd0,
    main_C_1 = 2'd1,
    main_C_2 = 2'd2;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      main_C_1 : begin
        fsm_output = 3'b010;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 3'b100;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 3'b001;
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
  wire [2:0] fsm_output;
  reg main_stage_0_2;
  reg [335:0] reg_MAC_io_read_coeffs_rsc_ftd_176;
  wire reg_out1_out1_and_cse;
  reg reg_in1_rsc_triosy_obj_ld_cse;
  reg [15:0] reg_MAC_asn_76_cse;
  reg [15:0] reg_MAC_asn_75_cse;
  reg [15:0] reg_MAC_asn_72_cse;
  reg [15:0] reg_MAC_asn_71_cse;
  reg [15:0] reg_MAC_asn_63_cse;
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
  wire [30:0] nl_z_out_11;
  wire [29:0] z_out_12;
  wire [30:0] nl_z_out_12;
  wire [29:0] z_out_13;
  wire [30:0] nl_z_out_13;
  reg [15:0] regs_21_sva;
  reg [15:0] regs_22_sva;
  reg [15:0] regs_23_sva;
  reg [15:0] regs_24_sva;
  reg [15:0] regs_25_sva;
  reg [15:0] regs_26_sva;
  reg [15:0] regs_27_sva;
  reg [15:0] regs_3_sva;
  reg [15:0] regs_28_sva;
  reg [15:0] regs_2_sva;
  reg [15:0] regs_29_sva;
  reg [15:0] regs_30_sva;
  reg [15:0] regs_0_sva;
  reg [15:0] MAC_asn_62_itm;
  reg [29:0] MAC_5_mul_itm;
  reg [15:0] MAC_asn_64_itm;
  reg [15:0] MAC_asn_65_itm;
  reg [15:0] MAC_asn_66_itm;
  reg [15:0] MAC_asn_67_itm;
  reg [15:0] MAC_asn_68_itm;
  reg [15:0] MAC_asn_69_itm;
  reg [15:0] MAC_asn_70_itm;
  reg [29:0] MAC_14_mul_itm;
  reg [15:0] MAC_asn_73_itm;
  reg [15:0] MAC_asn_74_itm;
  reg [29:0] MAC_acc_9_itm;
  wire [30:0] nl_MAC_acc_9_itm;
  reg [15:0] MAC_asn_77_itm;
  reg [15:0] MAC_asn_78_itm;
  reg [15:0] MAC_asn_79_itm;
  reg [15:0] MAC_asn_90_itm;
  reg [29:0] MAC_acc_25_itm_1;
  reg [29:0] MAC_acc_15_itm_1;
  reg [29:0] MAC_acc_14_itm_1;
  reg [29:0] MAC_acc_13_itm_1;
  reg [29:0] MAC_acc_12_itm_1;
  reg [29:0] MAC_acc_8_itm_1;
  wire [30:0] nl_MAC_acc_8_itm_1;
  reg [29:0] MAC_acc_20_itm_1;
  reg [29:0] MAC_acc_30_itm_1;
  wire [29:0] MAC_acc_35;
  wire [30:0] nl_MAC_acc_35;

  wire[29:0] MAC_acc_6_nl;
  wire[30:0] nl_MAC_acc_6_nl;
  wire[29:0] MAC_23_mul_nl;
  wire signed [31:0] nl_MAC_23_mul_nl;
  wire[29:0] MAC_24_mul_nl;
  wire signed [31:0] nl_MAC_24_mul_nl;
  wire[29:0] MAC_acc_nl;
  wire[30:0] nl_MAC_acc_nl;
  wire[29:0] MAC_acc_30_nl;
  wire[30:0] nl_MAC_acc_30_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[29:0] MAC_25_mul_nl;
  wire signed [31:0] nl_MAC_25_mul_nl;
  wire[29:0] MAC_26_mul_nl;
  wire signed [31:0] nl_MAC_26_mul_nl;
  wire[29:0] MAC_acc_7_nl;
  wire[30:0] nl_MAC_acc_7_nl;
  wire[29:0] MAC_acc_15_nl;
  wire[30:0] nl_MAC_acc_15_nl;
  wire[29:0] MAC_acc_4_nl;
  wire[30:0] nl_MAC_acc_4_nl;
  wire[29:0] MAC_27_mul_nl;
  wire signed [31:0] nl_MAC_27_mul_nl;
  wire[29:0] MAC_28_mul_nl;
  wire signed [31:0] nl_MAC_28_mul_nl;
  wire[29:0] MAC_acc_10_nl;
  wire[30:0] nl_MAC_acc_10_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[29:0] MAC_acc_33_nl;
  wire[30:0] nl_MAC_acc_33_nl;
  wire[29:0] MAC_acc_29_nl;
  wire[30:0] nl_MAC_acc_29_nl;
  wire[29:0] MAC_acc_28_nl;
  wire[30:0] nl_MAC_acc_28_nl;
  wire[29:0] MAC_acc_17_nl;
  wire[30:0] nl_MAC_acc_17_nl;
  wire[29:0] MAC_acc_13_nl;
  wire[30:0] nl_MAC_acc_13_nl;
  wire[29:0] MAC_acc_18_nl;
  wire[30:0] nl_MAC_acc_18_nl;
  wire[29:0] MAC_31_mul_nl;
  wire signed [31:0] nl_MAC_31_mul_nl;
  wire[29:0] MAC_acc_16_nl;
  wire[30:0] nl_MAC_acc_16_nl;
  wire[29:0] MAC_acc_12_nl;
  wire[30:0] nl_MAC_acc_12_nl;
  wire[29:0] MAC_22_mul_nl;
  wire signed [31:0] nl_MAC_22_mul_nl;
  wire[29:0] MAC_acc_3_nl;
  wire[30:0] nl_MAC_acc_3_nl;
  wire[29:0] MAC_29_mul_nl;
  wire signed [31:0] nl_MAC_29_mul_nl;
  wire[29:0] MAC_30_mul_nl;
  wire signed [31:0] nl_MAC_30_mul_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[15:0] MAC_mux_26_nl;
  wire[15:0] MAC_mux_27_nl;
  wire[15:0] MAC_mux_28_nl;
  wire[15:0] MAC_mux_29_nl;
  wire[15:0] MAC_mux_30_nl;
  wire[15:0] MAC_mux_31_nl;
  wire[15:0] MAC_mux_32_nl;
  wire[15:0] MAC_mux_33_nl;
  wire[15:0] MAC_mux_34_nl;
  wire[15:0] MAC_mux_35_nl;
  wire[15:0] MAC_mux_36_nl;
  wire[15:0] MAC_mux_37_nl;
  wire[15:0] MAC_mux_38_nl;
  wire[15:0] MAC_mux_39_nl;
  wire[15:0] MAC_mux_40_nl;
  wire[15:0] MAC_mux_41_nl;
  wire[15:0] MAC_mux_42_nl;
  wire[15:0] MAC_mux_43_nl;
  wire[15:0] MAC_mux_44_nl;
  wire[15:0] MAC_mux_45_nl;
  wire[15:0] MAC_mux_46_nl;
  wire[29:0] MAC_mux_47_nl;
  wire[29:0] MAC_acc_36_nl;
  wire[30:0] nl_MAC_acc_36_nl;
  wire[29:0] MAC_mux_48_nl;
  wire[29:0] MAC_mux_49_nl;

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
  assign reg_out1_out1_and_cse = main_stage_0_2 & (fsm_output[1]);
  assign nl_MAC_acc_35 = MAC_acc_15_itm_1 + MAC_acc_14_itm_1;
  assign MAC_acc_35 = nl_MAC_acc_35[29:0];
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_8_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_25_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_15_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_14_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_13_itm_1 <= 30'b000000000000000000000000000000;
      MAC_acc_12_itm_1 <= 30'b000000000000000000000000000000;
      out1_rsc_triosy_obj_ld <= 1'b0;
      reg_in1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_asn_90_itm <= 16'b0000000000000000;
      MAC_14_mul_itm <= 30'b000000000000000000000000000000;
      MAC_5_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      MAC_acc_8_itm_1 <= nl_MAC_acc_8_itm_1[29:0];
      MAC_acc_25_itm_1 <= z_out_13;
      MAC_acc_15_itm_1 <= MUX1HOT_v_30_3_2((MAC_acc_5_nl), (MAC_acc_7_nl), (MAC_acc_15_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
      MAC_acc_14_itm_1 <= MUX1HOT_v_30_3_2((MAC_acc_4_nl), (MAC_acc_10_nl), (MAC_acc_14_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
      MAC_acc_13_itm_1 <= MUX1HOT_v_30_3_2((MAC_acc_33_nl), (MAC_acc_17_nl), (MAC_acc_13_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
      MAC_acc_12_itm_1 <= MUX1HOT_v_30_3_2((MAC_acc_18_nl), (MAC_acc_16_nl), (MAC_acc_12_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
      out1_rsc_triosy_obj_ld <= reg_out1_out1_and_cse;
      reg_in1_rsc_triosy_obj_ld_cse <= fsm_output[0];
      MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output[2]);
      MAC_14_mul_itm <= MUX1HOT_v_30_3_2((MAC_22_mul_nl), z_out_6, MAC_acc_14_itm_1,
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
      MAC_5_mul_itm <= MUX1HOT_v_30_3_2((MAC_acc_3_nl), z_out_4, (MAC_acc_11_nl),
          {(fsm_output[0]) , (fsm_output[1]) , (fsm_output[2])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_20_itm_1 <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[2]) ) begin
      MAC_acc_20_itm_1 <= MUX_v_30_2_2((MAC_acc_6_nl), z_out_11, fsm_output[2]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_30_itm_1 <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[1:0]!=2'b00) ) begin
      MAC_acc_30_itm_1 <= MUX_v_30_2_2((MAC_acc_nl), (MAC_acc_30_nl), fsm_output[1]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= z_out_13[29:14];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      main_stage_0_2 <= 1'b0;
    end
    else if ( fsm_output[2] ) begin
      main_stage_0_2 <= fsm_output[2];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_77_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_77_itm <= reg_MAC_asn_76_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_78_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_78_itm <= MAC_asn_77_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_71_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      reg_MAC_asn_71_cse <= MAC_asn_70_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_69_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_69_itm <= MAC_asn_68_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_70_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_70_itm <= MAC_asn_69_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_67_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_67_itm <= MAC_asn_66_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_68_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_68_itm <= MAC_asn_67_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_65_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_65_itm <= MAC_asn_64_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_66_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_66_itm <= MAC_asn_65_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_64_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_64_itm <= reg_MAC_asn_63_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_79_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_79_itm <= MAC_asn_78_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_75_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      reg_MAC_asn_75_cse <= MAC_asn_74_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_76_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      reg_MAC_asn_76_cse <= reg_MAC_asn_75_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_73_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_73_itm <= reg_MAC_asn_72_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_74_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      MAC_asn_74_itm <= MAC_asn_73_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_72_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      reg_MAC_asn_72_cse <= reg_MAC_asn_71_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_63_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      reg_MAC_asn_63_cse <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_2_sva <= MAC_asn_62_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_62_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[2:1]!=2'b00) ) begin
      MAC_asn_62_itm <= MUX_v_16_2_2(regs_0_sva, regs_2_sva, fsm_output[2]);
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
    else if ( fsm_output[2] ) begin
      regs_30_sva <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_29_sva <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_28_sva <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_27_sva <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_26_sva <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_25_sva <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_24_sva <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_23_sva <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_22_sva <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_21_sva <= MAC_asn_79_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[2] ) begin
      regs_3_sva <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_9_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_acc_9_itm <= nl_MAC_acc_9_itm[29:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_io_read_coeffs_rsc_ftd_176 <= 336'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( fsm_output[0] ) begin
      reg_MAC_io_read_coeffs_rsc_ftd_176 <= coeffs_rsci_d[335:0];
    end
  end
  assign nl_MAC_acc_8_itm_1  = z_out + z_out_1;
  assign nl_MAC_25_mul_nl = $signed(regs_24_sva) * $signed((coeffs_rsci_d[399:384]));
  assign MAC_25_mul_nl = nl_MAC_25_mul_nl[29:0];
  assign nl_MAC_26_mul_nl = $signed(regs_25_sva) * $signed((coeffs_rsci_d[415:400]));
  assign MAC_26_mul_nl = nl_MAC_26_mul_nl[29:0];
  assign nl_MAC_acc_5_nl = (MAC_25_mul_nl) + (MAC_26_mul_nl);
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_acc_7_nl = z_out + MAC_14_mul_itm;
  assign MAC_acc_7_nl = nl_MAC_acc_7_nl[29:0];
  assign nl_MAC_acc_15_nl = MAC_5_mul_itm + z_out_3;
  assign MAC_acc_15_nl = nl_MAC_acc_15_nl[29:0];
  assign nl_MAC_27_mul_nl = $signed(regs_26_sva) * $signed((coeffs_rsci_d[431:416]));
  assign MAC_27_mul_nl = nl_MAC_27_mul_nl[29:0];
  assign nl_MAC_28_mul_nl = $signed(regs_27_sva) * $signed((coeffs_rsci_d[447:432]));
  assign MAC_28_mul_nl = nl_MAC_28_mul_nl[29:0];
  assign nl_MAC_acc_4_nl = (MAC_27_mul_nl) + (MAC_28_mul_nl);
  assign MAC_acc_4_nl = nl_MAC_acc_4_nl[29:0];
  assign nl_MAC_acc_10_nl = z_out_1 + z_out_3;
  assign MAC_acc_10_nl = nl_MAC_acc_10_nl[29:0];
  assign nl_MAC_acc_14_nl = z_out_5 + z_out_2;
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign nl_MAC_acc_29_nl = MAC_acc_25_itm_1 + MAC_acc_35;
  assign MAC_acc_29_nl = nl_MAC_acc_29_nl[29:0];
  assign nl_MAC_acc_28_nl = z_out_13 + z_out_12;
  assign MAC_acc_28_nl = nl_MAC_acc_28_nl[29:0];
  assign nl_MAC_acc_33_nl = (MAC_acc_29_nl) + (MAC_acc_28_nl);
  assign MAC_acc_33_nl = nl_MAC_acc_33_nl[29:0];
  assign nl_MAC_acc_17_nl = z_out_7 + z_out_8;
  assign MAC_acc_17_nl = nl_MAC_acc_17_nl[29:0];
  assign nl_MAC_acc_13_nl = z_out_4 + z_out_6;
  assign MAC_acc_13_nl = nl_MAC_acc_13_nl[29:0];
  assign nl_MAC_31_mul_nl = $signed(regs_30_sva) * $signed((coeffs_rsci_d[495:480]));
  assign MAC_31_mul_nl = nl_MAC_31_mul_nl[29:0];
  assign nl_MAC_acc_18_nl = (MAC_31_mul_nl) + z_out_7;
  assign MAC_acc_18_nl = nl_MAC_acc_18_nl[29:0];
  assign nl_MAC_acc_16_nl = z_out_9 + z_out_5;
  assign MAC_acc_16_nl = nl_MAC_acc_16_nl[29:0];
  assign nl_MAC_acc_12_nl = z_out_9 + z_out_8;
  assign MAC_acc_12_nl = nl_MAC_acc_12_nl[29:0];
  assign nl_MAC_22_mul_nl = $signed(regs_21_sva) * $signed((coeffs_rsci_d[351:336]));
  assign MAC_22_mul_nl = nl_MAC_22_mul_nl[29:0];
  assign nl_MAC_29_mul_nl = $signed(regs_28_sva) * $signed((coeffs_rsci_d[463:448]));
  assign MAC_29_mul_nl = nl_MAC_29_mul_nl[29:0];
  assign nl_MAC_30_mul_nl = $signed(regs_29_sva) * $signed((coeffs_rsci_d[479:464]));
  assign MAC_30_mul_nl = nl_MAC_30_mul_nl[29:0];
  assign nl_MAC_acc_3_nl = (MAC_29_mul_nl) + (MAC_30_mul_nl);
  assign MAC_acc_3_nl = nl_MAC_acc_3_nl[29:0];
  assign nl_MAC_acc_11_nl = z_out_10 + MAC_14_mul_itm;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_23_mul_nl = $signed(regs_22_sva) * $signed((coeffs_rsci_d[367:352]));
  assign MAC_23_mul_nl = nl_MAC_23_mul_nl[29:0];
  assign nl_MAC_24_mul_nl = $signed(regs_23_sva) * $signed((coeffs_rsci_d[383:368]));
  assign MAC_24_mul_nl = nl_MAC_24_mul_nl[29:0];
  assign nl_MAC_acc_6_nl = (MAC_23_mul_nl) + (MAC_24_mul_nl);
  assign MAC_acc_6_nl = nl_MAC_acc_6_nl[29:0];
  assign nl_MAC_acc_nl = z_out_11 + MAC_acc_30_itm_1;
  assign MAC_acc_nl = nl_MAC_acc_nl[29:0];
  assign nl_MAC_acc_30_nl = MAC_acc_35 + z_out_12;
  assign MAC_acc_30_nl = nl_MAC_acc_30_nl[29:0];
  assign nl_MAC_acc_9_itm  = z_out_2 + z_out_10;
  assign MAC_mux_26_nl = MUX_v_16_2_2(MAC_asn_77_itm, MAC_asn_79_itm, fsm_output[1]);
  assign MAC_mux_27_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[303:288]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[335:320]), fsm_output[1]);
  assign nl_z_out = $signed((MAC_mux_26_nl)) * $signed((MAC_mux_27_nl));
  assign z_out = nl_z_out[29:0];
  assign MAC_mux_28_nl = MUX_v_16_2_2(MAC_asn_78_itm, MAC_asn_73_itm, fsm_output[1]);
  assign MAC_mux_29_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[319:304]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[239:224]), fsm_output[1]);
  assign nl_z_out_1 = $signed((MAC_mux_28_nl)) * $signed((MAC_mux_29_nl));
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux_30_nl = MUX_v_16_2_2(MAC_asn_66_itm, reg_MAC_asn_75_cse, fsm_output[1]);
  assign MAC_mux_31_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[127:112]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[271:256]), fsm_output[1]);
  assign nl_z_out_2 = $signed((MAC_mux_30_nl)) * $signed((MAC_mux_31_nl));
  assign z_out_2 = nl_z_out_2[29:0];
  assign MAC_mux_32_nl = MUX_v_16_2_2(MAC_asn_64_itm, MAC_asn_74_itm, fsm_output[1]);
  assign MAC_mux_33_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[95:80]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[255:240]), fsm_output[1]);
  assign nl_z_out_3 = $signed((MAC_mux_32_nl)) * $signed((MAC_mux_33_nl));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_34_nl = MUX_v_16_2_2(MAC_asn_67_itm, reg_MAC_asn_63_cse, fsm_output[1]);
  assign MAC_mux_35_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[143:128]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[79:64]), fsm_output[1]);
  assign nl_z_out_4 = $signed((MAC_mux_34_nl)) * $signed((MAC_mux_35_nl));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_36_nl = MUX_v_16_2_2(MAC_asn_65_itm, MAC_asn_62_itm, fsm_output[1]);
  assign MAC_mux_37_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[111:96]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[63:48]), fsm_output[1]);
  assign nl_z_out_5 = $signed((MAC_mux_36_nl)) * $signed((MAC_mux_37_nl));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_38_nl = MUX_v_16_2_2(MAC_asn_68_itm, reg_MAC_asn_72_cse, fsm_output[1]);
  assign MAC_mux_39_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[159:144]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[223:208]), fsm_output[1]);
  assign nl_z_out_6 = $signed((MAC_mux_38_nl)) * $signed((MAC_mux_39_nl));
  assign z_out_6 = nl_z_out_6[29:0];
  assign MAC_mux_40_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[15:0]),
      (coeffs_rsci_d[511:496]), fsm_output[0]);
  assign nl_z_out_7 = $signed(MAC_asn_90_itm) * $signed((MAC_mux_40_nl));
  assign z_out_7 = nl_z_out_7[29:0];
  assign MAC_mux_41_nl = MUX_v_16_2_2(regs_0_sva, MAC_asn_70_itm, fsm_output[2]);
  assign MAC_mux_42_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[31:16]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[191:176]), fsm_output[2]);
  assign nl_z_out_8 = $signed((MAC_mux_41_nl)) * $signed((MAC_mux_42_nl));
  assign z_out_8 = nl_z_out_8[29:0];
  assign MAC_mux_43_nl = MUX_v_16_2_2(regs_2_sva, MAC_asn_69_itm, fsm_output[2]);
  assign MAC_mux_44_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[47:32]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[175:160]), fsm_output[2]);
  assign nl_z_out_9 = $signed((MAC_mux_43_nl)) * $signed((MAC_mux_44_nl));
  assign z_out_9 = nl_z_out_9[29:0];
  assign MAC_mux_45_nl = MUX_v_16_2_2(reg_MAC_asn_71_cse, reg_MAC_asn_76_cse, fsm_output[1]);
  assign MAC_mux_46_nl = MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176[207:192]),
      (reg_MAC_io_read_coeffs_rsc_ftd_176[287:272]), fsm_output[1]);
  assign nl_z_out_10 = $signed((MAC_mux_45_nl)) * $signed((MAC_mux_46_nl));
  assign z_out_10 = nl_z_out_10[29:0];
  assign nl_MAC_acc_36_nl = MAC_acc_9_itm + MAC_acc_8_itm_1;
  assign MAC_acc_36_nl = nl_MAC_acc_36_nl[29:0];
  assign MAC_mux_47_nl = MUX_v_30_2_2(MAC_acc_15_itm_1, (MAC_acc_36_nl), fsm_output[0]);
  assign nl_z_out_11 = (MAC_mux_47_nl) + MAC_acc_20_itm_1;
  assign z_out_11 = nl_z_out_11[29:0];
  assign MAC_mux_48_nl = MUX_v_30_2_2(MAC_acc_12_itm_1, MAC_14_mul_itm, fsm_output[0]);
  assign nl_z_out_12 = MAC_5_mul_itm + (MAC_mux_48_nl);
  assign z_out_12 = nl_z_out_12[29:0];
  assign MAC_mux_49_nl = MUX_v_30_2_2(MAC_acc_12_itm_1, MAC_acc_30_itm_1, fsm_output[1]);
  assign nl_z_out_13 = MAC_acc_13_itm_1 + (MAC_mux_49_nl);
  assign z_out_13 = nl_z_out_13[29:0];

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



