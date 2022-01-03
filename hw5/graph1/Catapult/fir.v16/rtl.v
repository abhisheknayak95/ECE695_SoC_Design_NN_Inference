// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@cparch23.ecn.purdue.edu
//  Generated date: Tue Nov  9 15:19:18 2021
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
  clk, rst, fsm_output, MAC_C_18_tr0
);
  input clk;
  input rst;
  output [20:0] fsm_output;
  reg [20:0] fsm_output;
  input MAC_C_18_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 5'd0,
    MAC_C_0 = 5'd1,
    MAC_C_1 = 5'd2,
    MAC_C_2 = 5'd3,
    MAC_C_3 = 5'd4,
    MAC_C_4 = 5'd5,
    MAC_C_5 = 5'd6,
    MAC_C_6 = 5'd7,
    MAC_C_7 = 5'd8,
    MAC_C_8 = 5'd9,
    MAC_C_9 = 5'd10,
    MAC_C_10 = 5'd11,
    MAC_C_11 = 5'd12,
    MAC_C_12 = 5'd13,
    MAC_C_13 = 5'd14,
    MAC_C_14 = 5'd15,
    MAC_C_15 = 5'd16,
    MAC_C_16 = 5'd17,
    MAC_C_17 = 5'd18,
    MAC_C_18 = 5'd19,
    main_C_1 = 5'd20;

  reg [4:0] state_var;
  reg [4:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      MAC_C_0 : begin
        fsm_output = 21'b000000000000000000010;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 21'b000000000000000000100;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 21'b000000000000000001000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 21'b000000000000000010000;
        state_var_NS = MAC_C_4;
      end
      MAC_C_4 : begin
        fsm_output = 21'b000000000000000100000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 21'b000000000000001000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 21'b000000000000010000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 21'b000000000000100000000;
        state_var_NS = MAC_C_8;
      end
      MAC_C_8 : begin
        fsm_output = 21'b000000000001000000000;
        state_var_NS = MAC_C_9;
      end
      MAC_C_9 : begin
        fsm_output = 21'b000000000010000000000;
        state_var_NS = MAC_C_10;
      end
      MAC_C_10 : begin
        fsm_output = 21'b000000000100000000000;
        state_var_NS = MAC_C_11;
      end
      MAC_C_11 : begin
        fsm_output = 21'b000000001000000000000;
        state_var_NS = MAC_C_12;
      end
      MAC_C_12 : begin
        fsm_output = 21'b000000010000000000000;
        state_var_NS = MAC_C_13;
      end
      MAC_C_13 : begin
        fsm_output = 21'b000000100000000000000;
        state_var_NS = MAC_C_14;
      end
      MAC_C_14 : begin
        fsm_output = 21'b000001000000000000000;
        state_var_NS = MAC_C_15;
      end
      MAC_C_15 : begin
        fsm_output = 21'b000010000000000000000;
        state_var_NS = MAC_C_16;
      end
      MAC_C_16 : begin
        fsm_output = 21'b000100000000000000000;
        state_var_NS = MAC_C_17;
      end
      MAC_C_17 : begin
        fsm_output = 21'b001000000000000000000;
        state_var_NS = MAC_C_18;
      end
      MAC_C_18 : begin
        fsm_output = 21'b010000000000000000000;
        if ( MAC_C_18_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MAC_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 21'b100000000000000000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 21'b000000000000000000001;
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
  wire [20:0] fsm_output;
  wire and_dcpl;
  wire or_tmp_119;
  wire and_278_cse;
  reg MAC_i_4_sva;
  wire MAC_i_or_cse;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire MAC_or_cse;
  wire reg_out1_out1_and_cse;
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
  wire [29:0] z_out_8;
  wire [30:0] nl_z_out_8;
  reg [15:0] regs_15_sva;
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
  reg [15:0] regs_29_sva;
  reg [15:0] regs_30_sva;
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
  reg [15:0] MAC_15_MAC_mux_itm;
  reg [15:0] MAC_16_MAC_mux_itm;
  reg [15:0] MAC_1_MAC_mux_itm;
  reg [15:0] MAC_2_MAC_mux_itm;
  reg [29:0] MAC_acc_9_itm;
  reg [15:0] MAC_3_MAC_mux_itm;
  reg [15:0] MAC_4_MAC_mux_itm;
  reg [15:0] MAC_5_MAC_mux_itm;
  reg [15:0] MAC_6_MAC_mux_itm;
  reg [15:0] MAC_7_MAC_mux_itm;
  reg [15:0] MAC_8_MAC_mux_itm;
  reg [15:0] MAC_9_MAC_mux_itm;
  reg [15:0] MAC_10_MAC_mux_itm;
  reg [29:0] MAC_10_mul_itm;
  reg [15:0] MAC_11_MAC_mux_itm;
  reg [29:0] MAC_11_mul_itm;
  reg [15:0] MAC_12_MAC_mux_itm;
  reg [15:0] MAC_13_MAC_mux_itm;
  reg [15:0] MAC_14_MAC_mux_itm;
  reg [29:0] MAC_acc_11_itm;
  reg [29:0] MAC_acc_15_itm;
  wire [29:0] MAC_acc_3_itm_mx0w0;
  wire [30:0] nl_MAC_acc_3_itm_mx0w0;
  wire MAC_acc_11_itm_mx0c1;

  wire[29:0] mul_nl;
  wire signed [31:0] nl_mul_nl;
  wire[15:0] MAC_mux_33_nl;
  wire[0:0] MAC_or_22_nl;
  wire[29:0] mul_7_nl;
  wire signed [31:0] nl_mul_7_nl;
  wire[15:0] MAC_mux_40_nl;
  wire[29:0] MAC_acc_16_nl;
  wire[30:0] nl_MAC_acc_16_nl;
  wire[29:0] MAC_acc_14_nl;
  wire[30:0] nl_MAC_acc_14_nl;
  wire[0:0] MAC_or_21_nl;
  wire[29:0] MAC_acc_11_nl;
  wire[30:0] nl_MAC_acc_11_nl;
  wire[29:0] MAC_acc_15_nl;
  wire[30:0] nl_MAC_acc_15_nl;
  wire[3:0] coeffs_or_nl;
  wire[3:0] coeffs_nor_nl;
  wire[3:0] coeffs_mux1h_1_nl;
  wire[15:0] MAC_mux_34_nl;
  wire[15:0] MAC_mux_35_nl;
  wire[15:0] MAC_mux_36_nl;
  wire[15:0] MAC_mux_37_nl;
  wire[15:0] MAC_mux_38_nl;
  wire[15:0] MAC_mux_39_nl;
  wire[29:0] MAC_mux_41_nl;
  wire[29:0] MAC_acc_17_nl;
  wire[30:0] nl_MAC_acc_17_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_18_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_18_tr0 = MAC_i_4_sva;
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
      .MAC_C_18_tr0(nl_fir_core_core_fsm_inst_MAC_C_18_tr0[0:0])
    );
  assign MAC_i_or_cse = (fsm_output[0]) | (fsm_output[19]);
  assign reg_out1_out1_and_cse = (fsm_output[19]) & MAC_i_4_sva;
  assign MAC_or_cse = or_tmp_119 | (fsm_output[19]);
  assign nl_MAC_acc_3_itm_mx0w0 = MAC_11_mul_itm + MAC_10_mul_itm;
  assign MAC_acc_3_itm_mx0w0 = nl_MAC_acc_3_itm_mx0w0[29:0];
  assign and_dcpl = ~((fsm_output[20]) | (fsm_output[0]));
  assign or_tmp_119 = MAC_i_4_sva & (fsm_output[1]);
  assign and_278_cse = (~ MAC_i_4_sva) & (fsm_output[1]);
  assign MAC_acc_11_itm_mx0c1 = (fsm_output[6]) | (fsm_output[14]);
  assign coeffs_mux1h_1_nl = MUX1HOT_v_4_14_2(4'b0010, 4'b0011, 4'b0100, 4'b0101,
      4'b0110, 4'b0111, 4'b1000, 4'b1001, 4'b1010, 4'b1011, 4'b1100, 4'b1101, 4'b1110,
      4'b0001, {(fsm_output[1]) , (fsm_output[2]) , (fsm_output[3]) , (fsm_output[4])
      , (fsm_output[5]) , (fsm_output[6]) , (fsm_output[7]) , (fsm_output[8]) , (fsm_output[9])
      , (fsm_output[10]) , (fsm_output[11]) , (fsm_output[12]) , (fsm_output[13])
      , (fsm_output[16])});
  assign coeffs_nor_nl = ~(MUX_v_4_2_2((coeffs_mux1h_1_nl), 4'b1111, (fsm_output[14])));
  assign coeffs_or_nl = MUX_v_4_2_2((coeffs_nor_nl), 4'b1111, (fsm_output[15]));
  assign coeffs_rsci_radr_d = {MAC_i_4_sva , (coeffs_or_nl)};
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = ~((~ and_dcpl) | (fsm_output[19:17]!=3'b000));
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_4_sva <= 1'b0;
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( MAC_i_or_cse ) begin
      MAC_i_4_sva <= fsm_output[19];
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, z_out_8,
          (fsm_output[19]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
      regs_28_sva <= 16'b0000000000000000;
      regs_27_sva <= 16'b0000000000000000;
      regs_26_sva <= 16'b0000000000000000;
      regs_25_sva <= 16'b0000000000000000;
      regs_24_sva <= 16'b0000000000000000;
      regs_23_sva <= 16'b0000000000000000;
      regs_22_sva <= 16'b0000000000000000;
      regs_21_sva <= 16'b0000000000000000;
      regs_20_sva <= 16'b0000000000000000;
      regs_19_sva <= 16'b0000000000000000;
      regs_18_sva <= 16'b0000000000000000;
      regs_17_sva <= 16'b0000000000000000;
      regs_16_sva <= 16'b0000000000000000;
      regs_15_sva <= 16'b0000000000000000;
      regs_30_sva <= 16'b0000000000000000;
      regs_29_sva <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= z_out_8[29:14];
      regs_28_sva <= regs_28_sva_1;
      regs_27_sva <= regs_27_sva_1;
      regs_26_sva <= regs_26_sva_1;
      regs_25_sva <= regs_25_sva_1;
      regs_24_sva <= regs_24_sva_1;
      regs_23_sva <= regs_23_sva_1;
      regs_22_sva <= regs_22_sva_1;
      regs_21_sva <= regs_21_sva_1;
      regs_20_sva <= regs_20_sva_1;
      regs_19_sva <= regs_19_sva_1;
      regs_18_sva <= regs_18_sva_1;
      regs_17_sva <= regs_17_sva_1;
      regs_16_sva <= regs_16_sva_1;
      regs_15_sva <= regs_15_sva_1;
      regs_30_sva <= regs_30_sva_1;
      regs_29_sva <= regs_29_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_11_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      MAC_11_mul_itm <= MUX1HOT_v_30_8_2((mul_7_nl), z_out_6, z_out_5, z_out_4, z_out_3,
          z_out_2, z_out_1, (MAC_acc_16_nl), {(MAC_or_21_nl) , (fsm_output[7]) ,
          (fsm_output[9]) , (fsm_output[11]) , (fsm_output[13]) , (fsm_output[15])
          , (fsm_output[17]) , (fsm_output[18])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_0_sva_1 <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_30_sva_1 <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_29_sva_1 <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_28_sva_1 <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_27_sva_1 <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_26_sva_1 <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_25_sva_1 <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_24_sva_1 <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_23_sva_1 <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_22_sva_1 <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_21_sva_1 <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_20_sva_1 <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_19_sva_1 <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_18_sva_1 <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_17_sva_1 <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_16_sva_1 <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_15_sva_1 <= MAC_16_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_14_sva_1 <= MAC_15_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_13_sva_1 <= MAC_14_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_12_sva_1 <= MAC_13_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_11_sva_1 <= MAC_12_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_10_sva_1 <= MAC_11_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_9_sva_1 <= MAC_10_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_8_sva_1 <= MAC_9_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_7_sva_1 <= MAC_8_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_6_sva_1 <= MAC_7_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_5_sva_1 <= MAC_6_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_4_sva_1 <= MAC_5_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_3_sva_1 <= MAC_4_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_2_sva_1 <= MAC_3_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ and_dcpl ) begin
      regs_1_sva_1 <= MAC_2_MAC_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_10_MAC_mux_itm <= 16'b0000000000000000;
      MAC_11_MAC_mux_itm <= 16'b0000000000000000;
      MAC_12_MAC_mux_itm <= 16'b0000000000000000;
      MAC_13_MAC_mux_itm <= 16'b0000000000000000;
      MAC_14_MAC_mux_itm <= 16'b0000000000000000;
      MAC_15_MAC_mux_itm <= 16'b0000000000000000;
      MAC_16_MAC_mux_itm <= 16'b0000000000000000;
      MAC_2_MAC_mux_itm <= 16'b0000000000000000;
      MAC_3_MAC_mux_itm <= 16'b0000000000000000;
      MAC_4_MAC_mux_itm <= 16'b0000000000000000;
      MAC_5_MAC_mux_itm <= 16'b0000000000000000;
      MAC_6_MAC_mux_itm <= 16'b0000000000000000;
      MAC_7_MAC_mux_itm <= 16'b0000000000000000;
      MAC_8_MAC_mux_itm <= 16'b0000000000000000;
      MAC_9_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( MAC_or_cse ) begin
      MAC_10_MAC_mux_itm <= MUX_v_16_2_2(regs_24_sva, regs_8_sva_1, fsm_output[19]);
      MAC_11_MAC_mux_itm <= MUX_v_16_2_2(regs_25_sva, regs_9_sva_1, fsm_output[19]);
      MAC_12_MAC_mux_itm <= MUX_v_16_2_2(regs_26_sva, regs_10_sva_1, fsm_output[19]);
      MAC_13_MAC_mux_itm <= MUX_v_16_2_2(regs_27_sva, regs_11_sva_1, fsm_output[19]);
      MAC_14_MAC_mux_itm <= MUX_v_16_2_2(regs_28_sva, regs_12_sva_1, fsm_output[19]);
      MAC_15_MAC_mux_itm <= MUX_v_16_2_2(regs_29_sva, regs_13_sva_1, fsm_output[19]);
      MAC_16_MAC_mux_itm <= MUX_v_16_2_2(regs_30_sva, regs_14_sva_1, fsm_output[19]);
      MAC_2_MAC_mux_itm <= MUX_v_16_2_2(regs_16_sva, regs_0_sva_1, fsm_output[19]);
      MAC_3_MAC_mux_itm <= MUX_v_16_2_2(regs_17_sva, regs_1_sva_1, fsm_output[19]);
      MAC_4_MAC_mux_itm <= MUX_v_16_2_2(regs_18_sva, regs_2_sva_1, fsm_output[19]);
      MAC_5_MAC_mux_itm <= MUX_v_16_2_2(regs_19_sva, regs_3_sva_1, fsm_output[19]);
      MAC_6_MAC_mux_itm <= MUX_v_16_2_2(regs_20_sva, regs_4_sva_1, fsm_output[19]);
      MAC_7_MAC_mux_itm <= MUX_v_16_2_2(regs_21_sva, regs_5_sva_1, fsm_output[19]);
      MAC_8_MAC_mux_itm <= MUX_v_16_2_2(regs_22_sva, regs_6_sva_1, fsm_output[19]);
      MAC_9_MAC_mux_itm <= MUX_v_16_2_2(regs_23_sva, regs_7_sva_1, fsm_output[19]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_1_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( or_tmp_119 | and_278_cse ) begin
      MAC_1_MAC_mux_itm <= MUX_v_16_2_2(regs_15_sva, regs_0_sva_1, and_278_cse);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_10_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[8]) | (fsm_output[2]) | (fsm_output[12]) | (fsm_output[16])
        | (fsm_output[10]) | (fsm_output[6]) | (fsm_output[4]) | (fsm_output[14])
        ) begin
      MAC_10_mul_itm <= MUX1HOT_v_30_7_2((mul_nl), z_out_1, z_out_2, z_out_3, z_out_4,
          z_out_5, z_out_6, {(MAC_or_22_nl) , (fsm_output[6]) , (fsm_output[8]) ,
          (fsm_output[10]) , (fsm_output[12]) , (fsm_output[14]) , (fsm_output[16])});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_11_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[12]) | (fsm_output[4]) | MAC_acc_11_itm_mx0c1 ) begin
      MAC_acc_11_itm <= MUX_v_30_2_2(MAC_acc_3_itm_mx0w0, (MAC_acc_11_nl), MAC_acc_11_itm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_15_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[8]) | (fsm_output[10]) ) begin
      MAC_acc_15_itm <= MUX_v_30_2_2(MAC_acc_3_itm_mx0w0, (MAC_acc_15_nl), fsm_output[10]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_9_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[16] ) begin
      MAC_acc_9_itm <= MAC_acc_3_itm_mx0w0;
    end
  end
  assign MAC_mux_40_nl = MUX_v_16_2_2(MAC_13_MAC_mux_itm, MAC_11_MAC_mux_itm, fsm_output[5]);
  assign nl_mul_7_nl = $signed((MAC_mux_40_nl)) * $signed((coeffs_rsci_q_d));
  assign mul_7_nl = nl_mul_7_nl[29:0];
  assign nl_MAC_acc_14_nl = MAC_acc_3_itm_mx0w0 + acc_32_3_1_sva;
  assign MAC_acc_14_nl = nl_MAC_acc_14_nl[29:0];
  assign nl_MAC_acc_16_nl = (MAC_acc_14_nl) + MAC_acc_9_itm;
  assign MAC_acc_16_nl = nl_MAC_acc_16_nl[29:0];
  assign MAC_or_21_nl = (fsm_output[3]) | (fsm_output[5]);
  assign MAC_mux_33_nl = MUX_v_16_2_2(MAC_14_MAC_mux_itm, MAC_12_MAC_mux_itm, fsm_output[4]);
  assign nl_mul_nl = $signed((MAC_mux_33_nl)) * $signed((coeffs_rsci_q_d));
  assign mul_nl = nl_mul_nl[29:0];
  assign MAC_or_22_nl = (fsm_output[2]) | (fsm_output[4]);
  assign nl_MAC_acc_11_nl = MAC_acc_3_itm_mx0w0 + MAC_acc_11_itm;
  assign MAC_acc_11_nl = nl_MAC_acc_11_nl[29:0];
  assign nl_MAC_acc_15_nl = z_out_8 + MAC_acc_11_itm;
  assign MAC_acc_15_nl = nl_MAC_acc_15_nl[29:0];
  assign MAC_mux_34_nl = MUX_v_16_2_2(MAC_10_MAC_mux_itm, MAC_15_MAC_mux_itm, fsm_output[17]);
  assign nl_z_out_1 = $signed((MAC_mux_34_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_1 = nl_z_out_1[29:0];
  assign MAC_mux_35_nl = MUX_v_16_2_2(MAC_8_MAC_mux_itm, MAC_1_MAC_mux_itm, fsm_output[15]);
  assign nl_z_out_2 = $signed((MAC_mux_35_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_2 = nl_z_out_2[29:0];
  assign MAC_mux_36_nl = MUX_v_16_2_2(MAC_6_MAC_mux_itm, MAC_3_MAC_mux_itm, fsm_output[13]);
  assign nl_z_out_3 = $signed((MAC_mux_36_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_3 = nl_z_out_3[29:0];
  assign MAC_mux_37_nl = MUX_v_16_2_2(MAC_4_MAC_mux_itm, MAC_5_MAC_mux_itm, fsm_output[11]);
  assign nl_z_out_4 = $signed((MAC_mux_37_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_4 = nl_z_out_4[29:0];
  assign MAC_mux_38_nl = MUX_v_16_2_2(MAC_2_MAC_mux_itm, MAC_7_MAC_mux_itm, fsm_output[9]);
  assign nl_z_out_5 = $signed((MAC_mux_38_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_5 = nl_z_out_5[29:0];
  assign MAC_mux_39_nl = MUX_v_16_2_2(MAC_16_MAC_mux_itm, MAC_9_MAC_mux_itm, fsm_output[7]);
  assign nl_z_out_6 = $signed((MAC_mux_39_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out_6 = nl_z_out_6[29:0];
  assign nl_MAC_acc_17_nl = MAC_11_mul_itm + MAC_acc_11_itm;
  assign MAC_acc_17_nl = nl_MAC_acc_17_nl[29:0];
  assign MAC_mux_41_nl = MUX_v_30_2_2(MAC_acc_3_itm_mx0w0, (MAC_acc_17_nl), fsm_output[19]);
  assign nl_z_out_8 = (MAC_mux_41_nl) + MAC_acc_15_itm;
  assign z_out_8 = nl_z_out_8[29:0];

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


  function automatic [29:0] MUX1HOT_v_30_8_2;
    input [29:0] input_7;
    input [29:0] input_6;
    input [29:0] input_5;
    input [29:0] input_4;
    input [29:0] input_3;
    input [29:0] input_2;
    input [29:0] input_1;
    input [29:0] input_0;
    input [7:0] sel;
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
    MUX1HOT_v_30_8_2 = result;
  end
  endfunction


  function automatic [3:0] MUX1HOT_v_4_14_2;
    input [3:0] input_13;
    input [3:0] input_12;
    input [3:0] input_11;
    input [3:0] input_10;
    input [3:0] input_9;
    input [3:0] input_8;
    input [3:0] input_7;
    input [3:0] input_6;
    input [3:0] input_5;
    input [3:0] input_4;
    input [3:0] input_3;
    input [3:0] input_2;
    input [3:0] input_1;
    input [3:0] input_0;
    input [13:0] sel;
    reg [3:0] result;
  begin
    result = input_0 & {4{sel[0]}};
    result = result | ( input_1 & {4{sel[1]}});
    result = result | ( input_2 & {4{sel[2]}});
    result = result | ( input_3 & {4{sel[3]}});
    result = result | ( input_4 & {4{sel[4]}});
    result = result | ( input_5 & {4{sel[5]}});
    result = result | ( input_6 & {4{sel[6]}});
    result = result | ( input_7 & {4{sel[7]}});
    result = result | ( input_8 & {4{sel[8]}});
    result = result | ( input_9 & {4{sel[9]}});
    result = result | ( input_10 & {4{sel[10]}});
    result = result | ( input_11 & {4{sel[11]}});
    result = result | ( input_12 & {4{sel[12]}});
    result = result | ( input_13 & {4{sel[13]}});
    MUX1HOT_v_4_14_2 = result;
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


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
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


