// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@cparch23.ecn.purdue.edu
//  Generated date: Tue Nov  9 16:01:42 2021
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
  clk, rst, fsm_output
);
  input clk;
  input rst;
  output [35:0] fsm_output;
  reg [35:0] fsm_output;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    core_rlp_C_0 = 6'd0,
    main_C_0 = 6'd1,
    main_C_1 = 6'd2,
    main_C_2 = 6'd3,
    main_C_3 = 6'd4,
    main_C_4 = 6'd5,
    main_C_5 = 6'd6,
    main_C_6 = 6'd7,
    main_C_7 = 6'd8,
    main_C_8 = 6'd9,
    main_C_9 = 6'd10,
    main_C_10 = 6'd11,
    main_C_11 = 6'd12,
    main_C_12 = 6'd13,
    main_C_13 = 6'd14,
    main_C_14 = 6'd15,
    main_C_15 = 6'd16,
    main_C_16 = 6'd17,
    main_C_17 = 6'd18,
    main_C_18 = 6'd19,
    main_C_19 = 6'd20,
    main_C_20 = 6'd21,
    main_C_21 = 6'd22,
    main_C_22 = 6'd23,
    main_C_23 = 6'd24,
    main_C_24 = 6'd25,
    main_C_25 = 6'd26,
    main_C_26 = 6'd27,
    main_C_27 = 6'd28,
    main_C_28 = 6'd29,
    main_C_29 = 6'd30,
    main_C_30 = 6'd31,
    main_C_31 = 6'd32,
    main_C_32 = 6'd33,
    main_C_33 = 6'd34,
    main_C_34 = 6'd35;

  reg [5:0] state_var;
  reg [5:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 36'b000000000000000000000000000000000010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 36'b000000000000000000000000000000000100;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 36'b000000000000000000000000000000001000;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 36'b000000000000000000000000000000010000;
        state_var_NS = main_C_4;
      end
      main_C_4 : begin
        fsm_output = 36'b000000000000000000000000000000100000;
        state_var_NS = main_C_5;
      end
      main_C_5 : begin
        fsm_output = 36'b000000000000000000000000000001000000;
        state_var_NS = main_C_6;
      end
      main_C_6 : begin
        fsm_output = 36'b000000000000000000000000000010000000;
        state_var_NS = main_C_7;
      end
      main_C_7 : begin
        fsm_output = 36'b000000000000000000000000000100000000;
        state_var_NS = main_C_8;
      end
      main_C_8 : begin
        fsm_output = 36'b000000000000000000000000001000000000;
        state_var_NS = main_C_9;
      end
      main_C_9 : begin
        fsm_output = 36'b000000000000000000000000010000000000;
        state_var_NS = main_C_10;
      end
      main_C_10 : begin
        fsm_output = 36'b000000000000000000000000100000000000;
        state_var_NS = main_C_11;
      end
      main_C_11 : begin
        fsm_output = 36'b000000000000000000000001000000000000;
        state_var_NS = main_C_12;
      end
      main_C_12 : begin
        fsm_output = 36'b000000000000000000000010000000000000;
        state_var_NS = main_C_13;
      end
      main_C_13 : begin
        fsm_output = 36'b000000000000000000000100000000000000;
        state_var_NS = main_C_14;
      end
      main_C_14 : begin
        fsm_output = 36'b000000000000000000001000000000000000;
        state_var_NS = main_C_15;
      end
      main_C_15 : begin
        fsm_output = 36'b000000000000000000010000000000000000;
        state_var_NS = main_C_16;
      end
      main_C_16 : begin
        fsm_output = 36'b000000000000000000100000000000000000;
        state_var_NS = main_C_17;
      end
      main_C_17 : begin
        fsm_output = 36'b000000000000000001000000000000000000;
        state_var_NS = main_C_18;
      end
      main_C_18 : begin
        fsm_output = 36'b000000000000000010000000000000000000;
        state_var_NS = main_C_19;
      end
      main_C_19 : begin
        fsm_output = 36'b000000000000000100000000000000000000;
        state_var_NS = main_C_20;
      end
      main_C_20 : begin
        fsm_output = 36'b000000000000001000000000000000000000;
        state_var_NS = main_C_21;
      end
      main_C_21 : begin
        fsm_output = 36'b000000000000010000000000000000000000;
        state_var_NS = main_C_22;
      end
      main_C_22 : begin
        fsm_output = 36'b000000000000100000000000000000000000;
        state_var_NS = main_C_23;
      end
      main_C_23 : begin
        fsm_output = 36'b000000000001000000000000000000000000;
        state_var_NS = main_C_24;
      end
      main_C_24 : begin
        fsm_output = 36'b000000000010000000000000000000000000;
        state_var_NS = main_C_25;
      end
      main_C_25 : begin
        fsm_output = 36'b000000000100000000000000000000000000;
        state_var_NS = main_C_26;
      end
      main_C_26 : begin
        fsm_output = 36'b000000001000000000000000000000000000;
        state_var_NS = main_C_27;
      end
      main_C_27 : begin
        fsm_output = 36'b000000010000000000000000000000000000;
        state_var_NS = main_C_28;
      end
      main_C_28 : begin
        fsm_output = 36'b000000100000000000000000000000000000;
        state_var_NS = main_C_29;
      end
      main_C_29 : begin
        fsm_output = 36'b000001000000000000000000000000000000;
        state_var_NS = main_C_30;
      end
      main_C_30 : begin
        fsm_output = 36'b000010000000000000000000000000000000;
        state_var_NS = main_C_31;
      end
      main_C_31 : begin
        fsm_output = 36'b000100000000000000000000000000000000;
        state_var_NS = main_C_32;
      end
      main_C_32 : begin
        fsm_output = 36'b001000000000000000000000000000000000;
        state_var_NS = main_C_33;
      end
      main_C_33 : begin
        fsm_output = 36'b010000000000000000000000000000000000;
        state_var_NS = main_C_34;
      end
      main_C_34 : begin
        fsm_output = 36'b100000000000000000000000000000000000;
        state_var_NS = main_C_0;
      end
      // core_rlp_C_0
      default : begin
        fsm_output = 36'b000000000000000000000000000000000001;
        state_var_NS = main_C_0;
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
  reg coeffs_rsc_triosy_obj_ld;
  reg in1_rsc_triosy_obj_ld;
  reg out1_rsc_triosy_obj_ld;
  wire [35:0] fsm_output;
  reg [15:0] reg_MAC_asn_89_cse;
  reg [15:0] reg_MAC_asn_88_cse;
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
  wire [29:0] z_out;
  wire [30:0] nl_z_out;
  reg [15:0] regs_3_sva;
  reg [15:0] regs_2_sva;
  reg [15:0] regs_0_sva;
  reg [15:0] asn_ncse_sva;
  reg [15:0] MAC_asn_62_itm;
  reg [29:0] MAC_10_mul_itm;
  reg [29:0] MAC_11_mul_itm;
  reg [29:0] MAC_acc_10_itm;
  reg [29:0] MAC_acc_22_itm;
  reg [29:0] MAC_acc_28_itm;
  reg [15:0] MAC_asn_90_itm;
  reg [29:0] MAC_acc_itm;
  wire [29:0] MAC_acc_28_itm_mx0w17;
  wire [30:0] nl_MAC_acc_28_itm_mx0w17;
  wire [29:0] MAC_acc_18_itm_mx0w0;
  wire [30:0] nl_MAC_acc_18_itm_mx0w0;
  wire [29:0] MAC_acc_23_mx0w1;
  wire [30:0] nl_MAC_acc_23_mx0w1;
  wire MAC_acc_10_itm_mx0c1;
  wire MAC_acc_22_itm_mx0c2;

  wire[29:0] MAC_32_acc_1_nl;
  wire[30:0] nl_MAC_32_acc_1_nl;
  wire[29:0] MAC_32_mul_nl;
  wire signed [31:0] nl_MAC_32_mul_nl;
  wire[29:0] MAC_30_mul_nl;
  wire signed [31:0] nl_MAC_30_mul_nl;
  wire[29:0] MAC_28_mul_nl;
  wire signed [31:0] nl_MAC_28_mul_nl;
  wire[29:0] MAC_26_mul_nl;
  wire signed [31:0] nl_MAC_26_mul_nl;
  wire[29:0] MAC_24_mul_nl;
  wire signed [31:0] nl_MAC_24_mul_nl;
  wire[29:0] MAC_22_mul_nl;
  wire signed [31:0] nl_MAC_22_mul_nl;
  wire[29:0] MAC_20_mul_nl;
  wire signed [31:0] nl_MAC_20_mul_nl;
  wire[29:0] MAC_18_mul_nl;
  wire signed [31:0] nl_MAC_18_mul_nl;
  wire[29:0] MAC_16_mul_nl;
  wire signed [31:0] nl_MAC_16_mul_nl;
  wire[29:0] MAC_14_mul_nl;
  wire signed [31:0] nl_MAC_14_mul_nl;
  wire[29:0] MAC_12_mul_nl;
  wire signed [31:0] nl_MAC_12_mul_nl;
  wire[29:0] MAC_10_mul_nl;
  wire signed [31:0] nl_MAC_10_mul_nl;
  wire[29:0] MAC_8_mul_nl;
  wire signed [31:0] nl_MAC_8_mul_nl;
  wire[29:0] MAC_6_mul_nl;
  wire signed [31:0] nl_MAC_6_mul_nl;
  wire[29:0] MAC_4_mul_nl;
  wire signed [31:0] nl_MAC_4_mul_nl;
  wire[29:0] MAC_2_mul_nl;
  wire signed [31:0] nl_MAC_2_mul_nl;
  wire[29:0] MAC_31_mul_nl;
  wire signed [31:0] nl_MAC_31_mul_nl;
  wire[29:0] MAC_29_mul_nl;
  wire signed [31:0] nl_MAC_29_mul_nl;
  wire[29:0] MAC_27_mul_nl;
  wire signed [31:0] nl_MAC_27_mul_nl;
  wire[29:0] MAC_25_mul_nl;
  wire signed [31:0] nl_MAC_25_mul_nl;
  wire[29:0] MAC_23_mul_nl;
  wire signed [31:0] nl_MAC_23_mul_nl;
  wire[29:0] MAC_21_mul_nl;
  wire signed [31:0] nl_MAC_21_mul_nl;
  wire[29:0] MAC_19_mul_nl;
  wire signed [31:0] nl_MAC_19_mul_nl;
  wire[29:0] MAC_17_mul_nl;
  wire signed [31:0] nl_MAC_17_mul_nl;
  wire[29:0] MAC_acc_27_nl;
  wire[30:0] nl_MAC_acc_27_nl;
  wire[29:0] MAC_acc_21_nl;
  wire[30:0] nl_MAC_acc_21_nl;
  wire[29:0] MAC_15_mul_nl;
  wire signed [31:0] nl_MAC_15_mul_nl;
  wire[29:0] MAC_13_mul_nl;
  wire signed [31:0] nl_MAC_13_mul_nl;
  wire[29:0] MAC_11_mul_nl;
  wire signed [31:0] nl_MAC_11_mul_nl;
  wire[29:0] MAC_9_mul_nl;
  wire signed [31:0] nl_MAC_9_mul_nl;
  wire[29:0] MAC_7_mul_nl;
  wire signed [31:0] nl_MAC_7_mul_nl;
  wire[29:0] MAC_5_mul_nl;
  wire signed [31:0] nl_MAC_5_mul_nl;
  wire[29:0] MAC_3_mul_nl;
  wire signed [31:0] nl_MAC_3_mul_nl;
  wire[29:0] MAC_1_mul_nl;
  wire signed [31:0] nl_MAC_1_mul_nl;
  wire[29:0] MAC_acc_30_nl;
  wire[30:0] nl_MAC_acc_30_nl;
  wire[4:0] and_nl;
  wire[4:0] mux1h_nl;
  wire[0:0] coeffs_nor_nl;
  wire[29:0] MAC_mux_3_nl;
  wire[29:0] MAC_mux_4_nl;
  wire[0:0] MAC_or_9_nl;

  // Interconnect Declarations for Component Instantiations 
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
      .ld(coeffs_rsc_triosy_obj_ld),
      .lz(coeffs_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) in1_rsc_triosy_obj (
      .ld(in1_rsc_triosy_obj_ld),
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
  assign nl_MAC_acc_28_itm_mx0w17 = MAC_acc_23_mx0w1 + MAC_acc_22_itm;
  assign MAC_acc_28_itm_mx0w17 = nl_MAC_acc_28_itm_mx0w17[29:0];
  assign nl_MAC_acc_18_itm_mx0w0 = MAC_11_mul_itm + MAC_10_mul_itm;
  assign MAC_acc_18_itm_mx0w0 = nl_MAC_acc_18_itm_mx0w0[29:0];
  assign nl_MAC_acc_23_mx0w1 = MAC_acc_18_itm_mx0w0 + MAC_acc_10_itm;
  assign MAC_acc_23_mx0w1 = nl_MAC_acc_23_mx0w1[29:0];
  assign MAC_acc_10_itm_mx0c1 = (fsm_output[14]) | (fsm_output[6]);
  assign MAC_acc_22_itm_mx0c2 = (fsm_output[30]) | (fsm_output[22]);
  assign mux1h_nl = MUX1HOT_v_5_30_2(5'b11110, 5'b11101, 5'b11100, 5'b11011, 5'b11010,
      5'b11001, 5'b11000, 5'b10111, 5'b10110, 5'b10101, 5'b10100, 5'b10011, 5'b10010,
      5'b10001, 5'b10000, 5'b01111, 5'b01110, 5'b01101, 5'b01100, 5'b01011, 5'b01010,
      5'b01001, 5'b01000, 5'b00111, 5'b00110, 5'b00101, 5'b00100, 5'b00011, 5'b00010,
      5'b00001, {(fsm_output[2]) , (fsm_output[3]) , (fsm_output[4]) , (fsm_output[5])
      , (fsm_output[6]) , (fsm_output[7]) , (fsm_output[8]) , (fsm_output[9]) , (fsm_output[10])
      , (fsm_output[11]) , (fsm_output[12]) , (fsm_output[13]) , (fsm_output[14])
      , (fsm_output[15]) , (fsm_output[16]) , (fsm_output[17]) , (fsm_output[18])
      , (fsm_output[19]) , (fsm_output[20]) , (fsm_output[21]) , (fsm_output[22])
      , (fsm_output[23]) , (fsm_output[24]) , (fsm_output[25]) , (fsm_output[26])
      , (fsm_output[27]) , (fsm_output[28]) , (fsm_output[29]) , (fsm_output[30])
      , (fsm_output[31])});
  assign coeffs_nor_nl = ~((fsm_output[0]) | (fsm_output[33]) | (fsm_output[34])
      | (fsm_output[35]) | (fsm_output[32]));
  assign and_nl = MUX_v_5_2_2(5'b00000, (mux1h_nl), (coeffs_nor_nl));
  assign coeffs_rsci_radr_d = MUX_v_5_2_2((and_nl), 5'b11111, (fsm_output[1]));
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = ~((fsm_output[0]) | (fsm_output[33])
      | (fsm_output[34]) | (fsm_output[35]));
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsc_triosy_obj_ld <= 1'b0;
      in1_rsc_triosy_obj_ld <= 1'b0;
      coeffs_rsc_triosy_obj_ld <= 1'b0;
      MAC_11_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      out1_rsc_triosy_obj_ld <= fsm_output[35];
      in1_rsc_triosy_obj_ld <= fsm_output[1];
      coeffs_rsc_triosy_obj_ld <= fsm_output[32];
      MAC_11_mul_itm <= MUX1HOT_v_30_18_2((MAC_31_mul_nl), (MAC_29_mul_nl), (MAC_27_mul_nl),
          (MAC_25_mul_nl), (MAC_23_mul_nl), (MAC_21_mul_nl), (MAC_19_mul_nl), (MAC_17_mul_nl),
          (MAC_acc_27_nl), (MAC_15_mul_nl), (MAC_13_mul_nl), (MAC_11_mul_nl), (MAC_9_mul_nl),
          (MAC_7_mul_nl), (MAC_5_mul_nl), (MAC_3_mul_nl), (MAC_1_mul_nl), MAC_acc_28_itm_mx0w17,
          {(fsm_output[3]) , (fsm_output[5]) , (fsm_output[7]) , (fsm_output[9])
          , (fsm_output[11]) , (fsm_output[13]) , (fsm_output[15]) , (fsm_output[17])
          , (fsm_output[18]) , (fsm_output[19]) , (fsm_output[21]) , (fsm_output[23])
          , (fsm_output[25]) , (fsm_output[27]) , (fsm_output[29]) , (fsm_output[31])
          , (fsm_output[33]) , (fsm_output[34])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      out1_rsci_idat <= readslicef_30_16_14((MAC_32_acc_1_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[33] ) begin
      regs_0_sva <= asn_ncse_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      regs_2_sva <= MAC_asn_62_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_62_itm <= 16'b0000000000000000;
    end
    else if ( (fsm_output[35]) | (fsm_output[32]) ) begin
      MAC_asn_62_itm <= MUX_v_16_2_2(regs_0_sva, regs_2_sva, fsm_output[35]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_63_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_63_cse <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_64_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_64_cse <= reg_MAC_asn_63_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_65_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_65_cse <= reg_MAC_asn_64_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_66_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_66_cse <= reg_MAC_asn_65_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_67_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_67_cse <= reg_MAC_asn_66_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_68_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_68_cse <= reg_MAC_asn_67_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_69_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_69_cse <= reg_MAC_asn_68_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_70_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_70_cse <= reg_MAC_asn_69_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_71_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_71_cse <= reg_MAC_asn_70_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_72_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_72_cse <= reg_MAC_asn_71_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_73_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_73_cse <= reg_MAC_asn_72_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_74_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_74_cse <= reg_MAC_asn_73_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_75_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_75_cse <= reg_MAC_asn_74_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_76_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_76_cse <= reg_MAC_asn_75_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_77_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_77_cse <= reg_MAC_asn_76_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_78_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_78_cse <= reg_MAC_asn_77_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_79_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_79_cse <= reg_MAC_asn_78_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_80_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_80_cse <= reg_MAC_asn_79_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_81_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_81_cse <= reg_MAC_asn_80_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_82_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_82_cse <= reg_MAC_asn_81_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_83_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_83_cse <= reg_MAC_asn_82_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_84_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_84_cse <= reg_MAC_asn_83_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_85_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_85_cse <= reg_MAC_asn_84_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_86_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_86_cse <= reg_MAC_asn_85_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_87_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_87_cse <= reg_MAC_asn_86_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_88_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_88_cse <= reg_MAC_asn_87_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_MAC_asn_89_cse <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      reg_MAC_asn_89_cse <= reg_MAC_asn_88_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_asn_90_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      MAC_asn_90_itm <= reg_MAC_asn_89_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[35] ) begin
      regs_3_sva <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      asn_ncse_sva <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      asn_ncse_sva <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_10_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[18]) | (fsm_output[30]) | (fsm_output[26]) | (fsm_output[2])
        | (fsm_output[4]) | (fsm_output[10]) | (fsm_output[16]) | (fsm_output[14])
        | (fsm_output[6]) | (fsm_output[8]) | (fsm_output[12]) | (fsm_output[20])
        | (fsm_output[22]) | (fsm_output[24]) | (fsm_output[28]) | (fsm_output[32])
        ) begin
      MAC_10_mul_itm <= MUX1HOT_v_30_16_2((MAC_32_mul_nl), (MAC_30_mul_nl), (MAC_28_mul_nl),
          (MAC_26_mul_nl), (MAC_24_mul_nl), (MAC_22_mul_nl), (MAC_20_mul_nl), (MAC_18_mul_nl),
          (MAC_16_mul_nl), (MAC_14_mul_nl), (MAC_12_mul_nl), (MAC_10_mul_nl), (MAC_8_mul_nl),
          (MAC_6_mul_nl), (MAC_4_mul_nl), (MAC_2_mul_nl), {(fsm_output[2]) , (fsm_output[4])
          , (fsm_output[6]) , (fsm_output[8]) , (fsm_output[10]) , (fsm_output[12])
          , (fsm_output[14]) , (fsm_output[16]) , (fsm_output[18]) , (fsm_output[20])
          , (fsm_output[22]) , (fsm_output[24]) , (fsm_output[26]) , (fsm_output[28])
          , (fsm_output[30]) , (fsm_output[32])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_10_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[28]) | (fsm_output[24]) | (fsm_output[20]) | (fsm_output[12])
        | (fsm_output[4]) | (fsm_output[32]) | MAC_acc_10_itm_mx0c1 ) begin
      MAC_acc_10_itm <= MUX_v_30_2_2(MAC_acc_18_itm_mx0w0, MAC_acc_23_mx0w1, MAC_acc_10_itm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_22_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[8]) | (fsm_output[10]) | MAC_acc_22_itm_mx0c2 ) begin
      MAC_acc_22_itm <= MUX1HOT_v_30_3_2(MAC_acc_18_itm_mx0w0, (MAC_acc_30_nl), MAC_acc_23_mx0w1,
          {(fsm_output[8]) , (fsm_output[10]) , MAC_acc_22_itm_mx0c2});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_28_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[26]) | (fsm_output[16]) ) begin
      MAC_acc_28_itm <= MUX_v_30_2_2(MAC_acc_18_itm_mx0w0, MAC_acc_28_itm_mx0w17,
          fsm_output[26]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[19] ) begin
      MAC_acc_itm <= z_out;
    end
  end
  assign nl_MAC_31_mul_nl = $signed(reg_MAC_asn_89_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_31_mul_nl = nl_MAC_31_mul_nl[29:0];
  assign nl_MAC_29_mul_nl = $signed(reg_MAC_asn_87_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_29_mul_nl = nl_MAC_29_mul_nl[29:0];
  assign nl_MAC_27_mul_nl = $signed(reg_MAC_asn_85_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_27_mul_nl = nl_MAC_27_mul_nl[29:0];
  assign nl_MAC_25_mul_nl = $signed(reg_MAC_asn_83_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_25_mul_nl = nl_MAC_25_mul_nl[29:0];
  assign nl_MAC_23_mul_nl = $signed(reg_MAC_asn_81_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_23_mul_nl = nl_MAC_23_mul_nl[29:0];
  assign nl_MAC_21_mul_nl = $signed(reg_MAC_asn_79_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_21_mul_nl = nl_MAC_21_mul_nl[29:0];
  assign nl_MAC_19_mul_nl = $signed(reg_MAC_asn_77_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_19_mul_nl = nl_MAC_19_mul_nl[29:0];
  assign nl_MAC_17_mul_nl = $signed(reg_MAC_asn_75_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_17_mul_nl = nl_MAC_17_mul_nl[29:0];
  assign nl_MAC_acc_21_nl = MAC_acc_18_itm_mx0w0 + MAC_acc_28_itm;
  assign MAC_acc_21_nl = nl_MAC_acc_21_nl[29:0];
  assign nl_MAC_acc_27_nl = (MAC_acc_21_nl) + MAC_acc_10_itm;
  assign MAC_acc_27_nl = nl_MAC_acc_27_nl[29:0];
  assign nl_MAC_15_mul_nl = $signed(reg_MAC_asn_73_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_15_mul_nl = nl_MAC_15_mul_nl[29:0];
  assign nl_MAC_13_mul_nl = $signed(reg_MAC_asn_71_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_13_mul_nl = nl_MAC_13_mul_nl[29:0];
  assign nl_MAC_11_mul_nl = $signed(reg_MAC_asn_69_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_11_mul_nl = nl_MAC_11_mul_nl[29:0];
  assign nl_MAC_9_mul_nl = $signed(reg_MAC_asn_67_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_9_mul_nl = nl_MAC_9_mul_nl[29:0];
  assign nl_MAC_7_mul_nl = $signed(reg_MAC_asn_65_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_7_mul_nl = nl_MAC_7_mul_nl[29:0];
  assign nl_MAC_5_mul_nl = $signed(reg_MAC_asn_63_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_5_mul_nl = nl_MAC_5_mul_nl[29:0];
  assign nl_MAC_3_mul_nl = $signed(regs_2_sva) * $signed((coeffs_rsci_q_d));
  assign MAC_3_mul_nl = nl_MAC_3_mul_nl[29:0];
  assign nl_MAC_1_mul_nl = $signed(asn_ncse_sva) * $signed((coeffs_rsci_q_d));
  assign MAC_1_mul_nl = nl_MAC_1_mul_nl[29:0];
  assign nl_MAC_32_acc_1_nl = z_out + MAC_acc_itm;
  assign MAC_32_acc_1_nl = nl_MAC_32_acc_1_nl[29:0];
  assign nl_MAC_32_mul_nl = $signed(MAC_asn_90_itm) * $signed((coeffs_rsci_q_d));
  assign MAC_32_mul_nl = nl_MAC_32_mul_nl[29:0];
  assign nl_MAC_30_mul_nl = $signed(reg_MAC_asn_88_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_30_mul_nl = nl_MAC_30_mul_nl[29:0];
  assign nl_MAC_28_mul_nl = $signed(reg_MAC_asn_86_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_28_mul_nl = nl_MAC_28_mul_nl[29:0];
  assign nl_MAC_26_mul_nl = $signed(reg_MAC_asn_84_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_26_mul_nl = nl_MAC_26_mul_nl[29:0];
  assign nl_MAC_24_mul_nl = $signed(reg_MAC_asn_82_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_24_mul_nl = nl_MAC_24_mul_nl[29:0];
  assign nl_MAC_22_mul_nl = $signed(reg_MAC_asn_80_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_22_mul_nl = nl_MAC_22_mul_nl[29:0];
  assign nl_MAC_20_mul_nl = $signed(reg_MAC_asn_78_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_20_mul_nl = nl_MAC_20_mul_nl[29:0];
  assign nl_MAC_18_mul_nl = $signed(reg_MAC_asn_76_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_18_mul_nl = nl_MAC_18_mul_nl[29:0];
  assign nl_MAC_16_mul_nl = $signed(reg_MAC_asn_74_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_16_mul_nl = nl_MAC_16_mul_nl[29:0];
  assign nl_MAC_14_mul_nl = $signed(reg_MAC_asn_72_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_14_mul_nl = nl_MAC_14_mul_nl[29:0];
  assign nl_MAC_12_mul_nl = $signed(reg_MAC_asn_70_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_12_mul_nl = nl_MAC_12_mul_nl[29:0];
  assign nl_MAC_10_mul_nl = $signed(reg_MAC_asn_68_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_10_mul_nl = nl_MAC_10_mul_nl[29:0];
  assign nl_MAC_8_mul_nl = $signed(reg_MAC_asn_66_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_8_mul_nl = nl_MAC_8_mul_nl[29:0];
  assign nl_MAC_6_mul_nl = $signed(reg_MAC_asn_64_cse) * $signed((coeffs_rsci_q_d));
  assign MAC_6_mul_nl = nl_MAC_6_mul_nl[29:0];
  assign nl_MAC_4_mul_nl = $signed(MAC_asn_62_itm) * $signed((coeffs_rsci_q_d));
  assign MAC_4_mul_nl = nl_MAC_4_mul_nl[29:0];
  assign nl_MAC_2_mul_nl = $signed(regs_0_sva) * $signed((coeffs_rsci_q_d));
  assign MAC_2_mul_nl = nl_MAC_2_mul_nl[29:0];
  assign nl_MAC_acc_30_nl = z_out + MAC_acc_10_itm;
  assign MAC_acc_30_nl = nl_MAC_acc_30_nl[29:0];
  assign MAC_mux_3_nl = MUX_v_30_2_2(MAC_11_mul_itm, MAC_acc_18_itm_mx0w0, fsm_output[10]);
  assign MAC_or_9_nl = (fsm_output[10]) | (fsm_output[19]);
  assign MAC_mux_4_nl = MUX_v_30_2_2(MAC_acc_28_itm, MAC_acc_22_itm, MAC_or_9_nl);
  assign nl_z_out = (MAC_mux_3_nl) + (MAC_mux_4_nl);
  assign z_out = nl_z_out[29:0];

  function automatic [29:0] MUX1HOT_v_30_16_2;
    input [29:0] input_15;
    input [29:0] input_14;
    input [29:0] input_13;
    input [29:0] input_12;
    input [29:0] input_11;
    input [29:0] input_10;
    input [29:0] input_9;
    input [29:0] input_8;
    input [29:0] input_7;
    input [29:0] input_6;
    input [29:0] input_5;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [15:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    result = result | ( input_4 & {30{sel[4]}});
    result = result | ( input_5 & {30{sel[5]}});
    result = result | ( input_6 & {30{sel[6]}});
    result = result | ( input_7 & {30{sel[7]}});
    result = result | ( input_8 & {30{sel[8]}});
    result = result | ( input_9 & {30{sel[9]}});
    result = result | ( input_10 & {30{sel[10]}});
    result = result | ( input_11 & {30{sel[11]}});
    result = result | ( input_12 & {30{sel[12]}});
    result = result | ( input_13 & {30{sel[13]}});
    result = result | ( input_14 & {30{sel[14]}});
    result = result | ( input_15 & {30{sel[15]}});
    MUX1HOT_v_30_16_2 = result;
  end
  endfunction


  function automatic [29:0] MUX1HOT_v_30_18_2;
    input [29:0] input_17;
    input [29:0] input_16;
    input [29:0] input_15;
    input [29:0] input_14;
    input [29:0] input_13;
    input [29:0] input_12;
    input [29:0] input_11;
    input [29:0] input_10;
    input [29:0] input_9;
    input [29:0] input_8;
    input [29:0] input_7;
    input [29:0] input_6;
    input [29:0] input_5;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [17:0] sel;
    reg [29:0] result;
  begin
    result = input_0 & {30{sel[0]}};
    result = result | ( input_1 & {30{sel[1]}});
    result = result | ( input_2 & {30{sel[2]}});
    result = result | ( input_3 & {30{sel[3]}});
    result = result | ( input_4 & {30{sel[4]}});
    result = result | ( input_5 & {30{sel[5]}});
    result = result | ( input_6 & {30{sel[6]}});
    result = result | ( input_7 & {30{sel[7]}});
    result = result | ( input_8 & {30{sel[8]}});
    result = result | ( input_9 & {30{sel[9]}});
    result = result | ( input_10 & {30{sel[10]}});
    result = result | ( input_11 & {30{sel[11]}});
    result = result | ( input_12 & {30{sel[12]}});
    result = result | ( input_13 & {30{sel[13]}});
    result = result | ( input_14 & {30{sel[14]}});
    result = result | ( input_15 & {30{sel[15]}});
    result = result | ( input_16 & {30{sel[16]}});
    result = result | ( input_17 & {30{sel[17]}});
    MUX1HOT_v_30_18_2 = result;
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


  function automatic [4:0] MUX1HOT_v_5_30_2;
    input [4:0] input_29;
    input [4:0] input_28;
    input [4:0] input_27;
    input [4:0] input_26;
    input [4:0] input_25;
    input [4:0] input_24;
    input [4:0] input_23;
    input [4:0] input_22;
    input [4:0] input_21;
    input [4:0] input_20;
    input [4:0] input_19;
    input [4:0] input_18;
    input [4:0] input_17;
    input [4:0] input_16;
    input [4:0] input_15;
    input [4:0] input_14;
    input [4:0] input_13;
    input [4:0] input_12;
    input [4:0] input_11;
    input [4:0] input_10;
    input [4:0] input_9;
    input [4:0] input_8;
    input [4:0] input_7;
    input [4:0] input_6;
    input [4:0] input_5;
    input [4:0] input_4;
    input [4:0] input_3;
    input [4:0] input_2;
    input [4:0] input_1;
    input [4:0] input_0;
    input [29:0] sel;
    reg [4:0] result;
  begin
    result = input_0 & {5{sel[0]}};
    result = result | ( input_1 & {5{sel[1]}});
    result = result | ( input_2 & {5{sel[2]}});
    result = result | ( input_3 & {5{sel[3]}});
    result = result | ( input_4 & {5{sel[4]}});
    result = result | ( input_5 & {5{sel[5]}});
    result = result | ( input_6 & {5{sel[6]}});
    result = result | ( input_7 & {5{sel[7]}});
    result = result | ( input_8 & {5{sel[8]}});
    result = result | ( input_9 & {5{sel[9]}});
    result = result | ( input_10 & {5{sel[10]}});
    result = result | ( input_11 & {5{sel[11]}});
    result = result | ( input_12 & {5{sel[12]}});
    result = result | ( input_13 & {5{sel[13]}});
    result = result | ( input_14 & {5{sel[14]}});
    result = result | ( input_15 & {5{sel[15]}});
    result = result | ( input_16 & {5{sel[16]}});
    result = result | ( input_17 & {5{sel[17]}});
    result = result | ( input_18 & {5{sel[18]}});
    result = result | ( input_19 & {5{sel[19]}});
    result = result | ( input_20 & {5{sel[20]}});
    result = result | ( input_21 & {5{sel[21]}});
    result = result | ( input_22 & {5{sel[22]}});
    result = result | ( input_23 & {5{sel[23]}});
    result = result | ( input_24 & {5{sel[24]}});
    result = result | ( input_25 & {5{sel[25]}});
    result = result | ( input_26 & {5{sel[26]}});
    result = result | ( input_27 & {5{sel[27]}});
    result = result | ( input_28 & {5{sel[28]}});
    result = result | ( input_29 & {5{sel[29]}});
    MUX1HOT_v_5_30_2 = result;
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



