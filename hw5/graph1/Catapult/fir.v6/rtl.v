// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.3d/815731 Production Release
//  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
// 
//  Generated by:   695r48@cparch23.ecn.purdue.edu
//  Generated date: Tue Nov  9 14:58:04 2021
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
  output [9:0] fsm_output;
  reg [9:0] fsm_output;
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
    MAC_C_7 = 4'd8,
    main_C_1 = 4'd9;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      MAC_C_0 : begin
        fsm_output = 10'b0000000010;
        state_var_NS = MAC_C_1;
      end
      MAC_C_1 : begin
        fsm_output = 10'b0000000100;
        state_var_NS = MAC_C_2;
      end
      MAC_C_2 : begin
        fsm_output = 10'b0000001000;
        state_var_NS = MAC_C_3;
      end
      MAC_C_3 : begin
        fsm_output = 10'b0000010000;
        if ( MAC_C_3_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MAC_C_4;
        end
      end
      MAC_C_4 : begin
        fsm_output = 10'b0000100000;
        state_var_NS = MAC_C_5;
      end
      MAC_C_5 : begin
        fsm_output = 10'b0001000000;
        state_var_NS = MAC_C_6;
      end
      MAC_C_6 : begin
        fsm_output = 10'b0010000000;
        state_var_NS = MAC_C_7;
      end
      MAC_C_7 : begin
        fsm_output = 10'b0100000000;
        state_var_NS = MAC_C_0;
      end
      main_C_1 : begin
        fsm_output = 10'b1000000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 10'b0000000001;
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
  wire [9:0] fsm_output;
  wire [4:0] MAC_slc_MAC_2_MAC_acc_tmp;
  wire [5:0] nl_MAC_slc_MAC_2_MAC_acc_tmp;
  wire or_dcpl_7;
  wire or_dcpl_12;
  wire or_tmp_79;
  wire or_tmp_146;
  reg [4:0] MAC_slc_MAC_2_MAC_acc_psp_sva;
  reg reg_out1_rsc_triosy_obj_ld_cse;
  wire reg_out1_out1_and_cse;
  reg [3:0] MAC_i_4_1_sva;
  reg [3:0] MAC_slc_MAC_4_MAC_acc_psp_sva;
  wire [29:0] z_out;
  wire signed [31:0] nl_z_out;
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
  reg [15:0] MAC_1_MAC_mux_itm;
  reg [29:0] MAC_1_mul_itm;
  reg [15:0] MAC_2_MAC_mux_itm;
  reg [29:0] MAC_2_mul_itm;
  reg [15:0] MAC_5_MAC_mux_itm;
  reg [15:0] MAC_6_MAC_mux_itm;
  reg [15:0] MAC_3_MAC_mux_itm;
  reg [15:0] MAC_4_MAC_mux_itm;
  reg [29:0] MAC_acc_4_itm;
  reg [3:0] MAC_slc_MAC_6_MAC_acc_itm;
  wire [4:0] nl_MAC_slc_MAC_6_MAC_acc_itm;
  wire [29:0] acc_32_3_3_sva_1;
  wire [30:0] nl_acc_32_3_3_sva_1;
  wire [3:0] MAC_slc_MAC_4_MAC_acc_psp_sva_1;
  wire [4:0] nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1;
  wire [29:0] MAC_acc_mx0w0;
  wire [30:0] nl_MAC_acc_mx0w0;
  wire or_162_tmp;
  wire or_159_tmp;
  wire MAC_nor_2_cse;
  wire MAC_nor_cse;
  wire MAC_nor_1_cse;
  wire MAC_nor_6_cse;
  wire MAC_nor_7_cse;
  wire MAC_nor_8_cse;
  wire or_tmp;
  wire coeffs_or_1_tmp;

  wire[29:0] acc_mux_nl;
  wire[29:0] MAC_6_acc_1_nl;
  wire[30:0] nl_MAC_6_acc_1_nl;
  wire[29:0] MAC_acc_5_nl;
  wire[30:0] nl_MAC_acc_5_nl;
  wire[0:0] acc_not_nl;
  wire[0:0] MAC_and_15_nl;
  wire[0:0] MAC_and_16_nl;
  wire[0:0] MAC_and_17_nl;
  wire[0:0] MAC_and_18_nl;
  wire[0:0] MAC_and_19_nl;
  wire[0:0] MAC_and_10_nl;
  wire[0:0] MAC_and_11_nl;
  wire[0:0] MAC_and_12_nl;
  wire[0:0] MAC_and_13_nl;
  wire[0:0] MAC_and_14_nl;
  wire[0:0] MAC_and_5_nl;
  wire[0:0] MAC_and_6_nl;
  wire[0:0] MAC_and_7_nl;
  wire[0:0] MAC_and_8_nl;
  wire[0:0] MAC_and_9_nl;
  wire[0:0] MAC_and_nl;
  wire[0:0] MAC_and_1_nl;
  wire[0:0] MAC_and_2_nl;
  wire[0:0] MAC_and_3_nl;
  wire[0:0] MAC_and_4_nl;
  wire[29:0] mul_1_nl;
  wire signed [31:0] nl_mul_1_nl;
  wire[15:0] MAC_mux_10_nl;
  wire[3:0] mux1h_nl;
  wire[0:0] nor_nl;
  wire[0:0] coeffs_coeffs_or_nl;
  wire[15:0] MAC_mux1h_27_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir_core_core_fsm_inst_MAC_C_3_tr0;
  assign nl_fir_core_core_fsm_inst_MAC_C_3_tr0 = MAC_slc_MAC_2_MAC_acc_psp_sva[4];
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
  assign reg_out1_out1_and_cse = (fsm_output[4]) & (MAC_slc_MAC_2_MAC_acc_psp_sva[4]);
  assign or_159_tmp = or_dcpl_7 | (fsm_output[3]) | (fsm_output[6]) | (fsm_output[4]);
  assign MAC_nor_cse = ~((MAC_slc_MAC_4_MAC_acc_psp_sva_1[3]) | (MAC_slc_MAC_4_MAC_acc_psp_sva_1[2])
      | (MAC_slc_MAC_4_MAC_acc_psp_sva_1[0]));
  assign MAC_nor_1_cse = ~((MAC_slc_MAC_4_MAC_acc_psp_sva_1[3]) | (MAC_slc_MAC_4_MAC_acc_psp_sva_1[1]));
  assign MAC_nor_2_cse = ~((MAC_slc_MAC_4_MAC_acc_psp_sva_1[2:0]!=3'b000));
  assign or_162_tmp = or_dcpl_12 | (fsm_output[4]);
  assign MAC_nor_6_cse = ~((MAC_slc_MAC_2_MAC_acc_tmp[3:1]!=3'b000));
  assign MAC_nor_7_cse = ~((MAC_slc_MAC_2_MAC_acc_tmp[3]) | (MAC_slc_MAC_2_MAC_acc_tmp[1])
      | (MAC_slc_MAC_2_MAC_acc_tmp[0]));
  assign MAC_nor_8_cse = ~((MAC_slc_MAC_2_MAC_acc_tmp[2]) | (MAC_slc_MAC_2_MAC_acc_tmp[0]));
  assign nl_acc_32_3_3_sva_1 = MAC_acc_mx0w0 + acc_32_3_1_sva;
  assign acc_32_3_3_sva_1 = nl_acc_32_3_3_sva_1[29:0];
  assign nl_MAC_slc_MAC_2_MAC_acc_tmp = conv_u2s_4_5(MAC_i_4_1_sva) + 5'b00001;
  assign MAC_slc_MAC_2_MAC_acc_tmp = nl_MAC_slc_MAC_2_MAC_acc_tmp[4:0];
  assign nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1 = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]) +
      4'b0001;
  assign MAC_slc_MAC_4_MAC_acc_psp_sva_1 = nl_MAC_slc_MAC_4_MAC_acc_psp_sva_1[3:0];
  assign nl_MAC_acc_mx0w0 = MAC_1_mul_itm + MAC_2_mul_itm;
  assign MAC_acc_mx0w0 = nl_MAC_acc_mx0w0[29:0];
  assign or_dcpl_7 = (fsm_output[5]) | (fsm_output[2]);
  assign or_dcpl_12 = (fsm_output[3:2]!=2'b00);
  assign or_tmp_79 = ~((fsm_output[9]) | (fsm_output[0]));
  assign or_tmp_146 = or_dcpl_7 | (fsm_output[4:3]!=2'b00);
  assign nor_nl = ~(coeffs_or_1_tmp | or_tmp);
  assign mux1h_nl = MUX1HOT_v_4_3_2(MAC_i_4_1_sva, MAC_slc_MAC_4_MAC_acc_psp_sva,
      (MAC_slc_MAC_2_MAC_acc_psp_sva[3:0]), {(nor_nl) , coeffs_or_1_tmp , or_tmp});
  assign coeffs_coeffs_or_nl = (fsm_output[1]) | (fsm_output[3]) | (fsm_output[5]);
  assign coeffs_rsci_radr_d = {(mux1h_nl) , (coeffs_coeffs_or_nl)};
  assign coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d = (fsm_output[5]) | (fsm_output[1])
      | (fsm_output[2]) | (fsm_output[3]) | (fsm_output[6]) | ((~ (MAC_slc_MAC_2_MAC_acc_psp_sva[4]))
      & (fsm_output[4]));
  assign or_tmp = (fsm_output[4:3]!=2'b00);
  assign coeffs_or_1_tmp = (fsm_output[6:5]!=2'b00);
  always @(posedge clk) begin
    if ( rst ) begin
      acc_32_3_1_sva <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[8]) | (fsm_output[4]) ) begin
      acc_32_3_1_sva <= MUX_v_30_2_2(30'b000000000000000000000000000000, (acc_mux_nl),
          (acc_not_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out1_rsci_idat <= 16'b0000000000000000;
      regs_0_sva <= 16'b0000000000000000;
      regs_6_sva <= 16'b0000000000000000;
      regs_12_sva <= 16'b0000000000000000;
      regs_18_sva <= 16'b0000000000000000;
      regs_24_sva <= 16'b0000000000000000;
      regs_30_sva <= 16'b0000000000000000;
      regs_5_sva <= 16'b0000000000000000;
      regs_11_sva <= 16'b0000000000000000;
      regs_17_sva <= 16'b0000000000000000;
      regs_23_sva <= 16'b0000000000000000;
      regs_29_sva <= 16'b0000000000000000;
      regs_2_sva <= 16'b0000000000000000;
      regs_8_sva <= 16'b0000000000000000;
      regs_14_sva <= 16'b0000000000000000;
      regs_20_sva <= 16'b0000000000000000;
      regs_26_sva <= 16'b0000000000000000;
      regs_1_sva <= 16'b0000000000000000;
      regs_7_sva <= 16'b0000000000000000;
      regs_13_sva <= 16'b0000000000000000;
      regs_19_sva <= 16'b0000000000000000;
      regs_25_sva <= 16'b0000000000000000;
      regs_4_sva <= 16'b0000000000000000;
      regs_10_sva <= 16'b0000000000000000;
      regs_16_sva <= 16'b0000000000000000;
      regs_22_sva <= 16'b0000000000000000;
      regs_28_sva <= 16'b0000000000000000;
      regs_3_sva <= 16'b0000000000000000;
      regs_9_sva <= 16'b0000000000000000;
      regs_15_sva <= 16'b0000000000000000;
      regs_21_sva <= 16'b0000000000000000;
      regs_27_sva <= 16'b0000000000000000;
    end
    else if ( reg_out1_out1_and_cse ) begin
      out1_rsci_idat <= acc_32_3_3_sva_1[29:14];
      regs_0_sva <= regs_0_sva_1;
      regs_6_sva <= regs_6_sva_1;
      regs_12_sva <= regs_12_sva_1;
      regs_18_sva <= regs_18_sva_1;
      regs_24_sva <= regs_24_sva_1;
      regs_30_sva <= regs_30_sva_1;
      regs_5_sva <= regs_5_sva_1;
      regs_11_sva <= regs_11_sva_1;
      regs_17_sva <= regs_17_sva_1;
      regs_23_sva <= regs_23_sva_1;
      regs_29_sva <= regs_29_sva_1;
      regs_2_sva <= regs_2_sva_1;
      regs_8_sva <= regs_8_sva_1;
      regs_14_sva <= regs_14_sva_1;
      regs_20_sva <= regs_20_sva_1;
      regs_26_sva <= regs_26_sva_1;
      regs_1_sva <= regs_1_sva_1;
      regs_7_sva <= regs_7_sva_1;
      regs_13_sva <= regs_13_sva_1;
      regs_19_sva <= regs_19_sva_1;
      regs_25_sva <= regs_25_sva_1;
      regs_4_sva <= regs_4_sva_1;
      regs_10_sva <= regs_10_sva_1;
      regs_16_sva <= regs_16_sva_1;
      regs_22_sva <= regs_22_sva_1;
      regs_28_sva <= regs_28_sva_1;
      regs_3_sva <= regs_3_sva_1;
      regs_9_sva <= regs_9_sva_1;
      regs_15_sva <= regs_15_sva_1;
      regs_21_sva <= regs_21_sva_1;
      regs_27_sva <= regs_27_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_i_4_1_sva <= 4'b0000;
    end
    else if ( (fsm_output[0]) | (fsm_output[4]) ) begin
      MAC_i_4_1_sva <= MUX_v_4_2_2(4'b0000, MAC_slc_MAC_6_MAC_acc_itm, (fsm_output[4]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_0_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_0_sva_1 <= in1_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_out1_rsc_triosy_obj_ld_cse <= 1'b0;
      MAC_2_MAC_mux_itm <= 16'b0000000000000000;
      MAC_1_mul_itm <= 30'b000000000000000000000000000000;
    end
    else begin
      reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
      MAC_2_MAC_mux_itm <= MUX_v_16_16_2x1x2x4x5x7x8x10x11x13x14(regs_0_sva, regs_6_sva,
          regs_12_sva, regs_18_sva, regs_24_sva, regs_30_sva, MAC_i_4_1_sva);
      MAC_1_mul_itm <= MUX_v_30_2_2((mul_1_nl), z_out, fsm_output[7]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_30_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_30_sva_1 <= regs_29_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_29_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_29_sva_1 <= regs_28_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_28_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_28_sva_1 <= regs_27_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_27_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_27_sva_1 <= regs_26_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_26_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_26_sva_1 <= regs_25_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_25_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_25_sva_1 <= regs_24_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_24_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_24_sva_1 <= regs_23_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_23_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_23_sva_1 <= regs_22_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_22_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_22_sva_1 <= regs_21_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_21_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_21_sva_1 <= regs_20_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_20_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_20_sva_1 <= regs_19_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_19_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_19_sva_1 <= regs_18_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_18_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_18_sva_1 <= regs_17_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_17_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_17_sva_1 <= regs_16_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_16_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_16_sva_1 <= regs_15_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_15_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_15_sva_1 <= regs_14_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_14_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_14_sva_1 <= regs_13_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_13_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_13_sva_1 <= regs_12_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_12_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_12_sva_1 <= regs_11_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_11_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_11_sva_1 <= regs_10_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_10_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_10_sva_1 <= regs_9_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_9_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_9_sva_1 <= regs_8_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_8_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_8_sva_1 <= regs_7_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_7_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_7_sva_1 <= regs_6_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_6_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_6_sva_1 <= regs_5_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_5_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_5_sva_1 <= regs_4_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_4_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_4_sva_1 <= regs_3_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_3_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_3_sva_1 <= regs_2_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_2_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_2_sva_1 <= regs_1_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      regs_1_sva_1 <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_79 ) begin
      regs_1_sva_1 <= regs_0_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_MAC_2_MAC_acc_psp_sva <= 5'b00000;
    end
    else if ( fsm_output[1] ) begin
      MAC_slc_MAC_2_MAC_acc_psp_sva <= MAC_slc_MAC_2_MAC_acc_tmp;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_1_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( fsm_output[1] ) begin
      MAC_1_MAC_mux_itm <= MUX_v_16_16_2x1x2x4x5x7x8x10x11x13x14(regs_0_sva_1, regs_5_sva,
          regs_11_sva, regs_17_sva, regs_23_sva, regs_29_sva, MAC_i_4_1_sva);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_5_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_159_tmp ) begin
      MAC_5_MAC_mux_itm <= MUX1HOT_v_16_5_2(regs_3_sva, regs_9_sva, regs_15_sva,
          regs_21_sva, regs_27_sva, {(MAC_and_15_nl) , (MAC_and_16_nl) , (MAC_and_17_nl)
          , (MAC_and_18_nl) , (MAC_and_19_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_6_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_tmp_146 ) begin
      MAC_6_MAC_mux_itm <= MUX1HOT_v_16_5_2(regs_4_sva, regs_10_sva, regs_16_sva,
          regs_22_sva, regs_28_sva, {(MAC_and_10_nl) , (MAC_and_11_nl) , (MAC_and_12_nl)
          , (MAC_and_13_nl) , (MAC_and_14_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_MAC_4_MAC_acc_psp_sva <= 4'b0000;
    end
    else if ( ~ or_tmp_146 ) begin
      MAC_slc_MAC_4_MAC_acc_psp_sva <= MAC_slc_MAC_4_MAC_acc_psp_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_3_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_162_tmp ) begin
      MAC_3_MAC_mux_itm <= MUX1HOT_v_16_5_2(regs_1_sva, regs_7_sva, regs_13_sva,
          regs_19_sva, regs_25_sva, {(MAC_and_5_nl) , (MAC_and_6_nl) , (MAC_and_7_nl)
          , (MAC_and_8_nl) , (MAC_and_9_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_slc_MAC_6_MAC_acc_itm <= 4'b0000;
    end
    else if ( ~ or_dcpl_12 ) begin
      MAC_slc_MAC_6_MAC_acc_itm <= nl_MAC_slc_MAC_6_MAC_acc_itm[3:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_4_MAC_mux_itm <= 16'b0000000000000000;
    end
    else if ( ~ or_dcpl_12 ) begin
      MAC_4_MAC_mux_itm <= MUX1HOT_v_16_5_2(regs_2_sva, regs_8_sva, regs_14_sva,
          regs_20_sva, regs_26_sva, {(MAC_and_nl) , (MAC_and_1_nl) , (MAC_and_2_nl)
          , (MAC_and_3_nl) , (MAC_and_4_nl)});
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_2_mul_itm <= 30'b000000000000000000000000000000;
    end
    else if ( (fsm_output[2]) | (fsm_output[6]) | (fsm_output[4]) ) begin
      MAC_2_mul_itm <= z_out;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      MAC_acc_4_itm <= 30'b000000000000000000000000000000;
    end
    else if ( fsm_output[6] ) begin
      MAC_acc_4_itm <= MAC_acc_mx0w0;
    end
  end
  assign nl_MAC_acc_5_nl = MAC_acc_mx0w0 + acc_32_3_1_sva;
  assign MAC_acc_5_nl = nl_MAC_acc_5_nl[29:0];
  assign nl_MAC_6_acc_1_nl = (MAC_acc_5_nl) + MAC_acc_4_itm;
  assign MAC_6_acc_1_nl = nl_MAC_6_acc_1_nl[29:0];
  assign acc_mux_nl = MUX_v_30_2_2(acc_32_3_3_sva_1, (MAC_6_acc_1_nl), fsm_output[8]);
  assign acc_not_nl = ~ (fsm_output[0]);
  assign MAC_mux_10_nl = MUX_v_16_2_2(MAC_1_MAC_mux_itm, MAC_3_MAC_mux_itm, fsm_output[5]);
  assign nl_mul_1_nl = $signed((MAC_mux_10_nl)) * $signed((coeffs_rsci_q_d));
  assign mul_1_nl = nl_mul_1_nl[29:0];
  assign MAC_and_15_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[1]) & MAC_nor_cse & (~
      or_159_tmp);
  assign MAC_and_16_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[2]) & (MAC_slc_MAC_4_MAC_acc_psp_sva_1[0])
      & MAC_nor_1_cse & (~ or_159_tmp);
  assign MAC_and_17_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[3]) & MAC_nor_2_cse & (~
      or_159_tmp);
  assign MAC_and_18_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b1011) & (~ or_159_tmp);
  assign MAC_and_19_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b1110) & (~ or_159_tmp);
  assign MAC_and_10_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[1]) & MAC_nor_cse & (~
      or_tmp_146);
  assign MAC_and_11_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[2]) & (MAC_slc_MAC_4_MAC_acc_psp_sva_1[0])
      & MAC_nor_1_cse & (~ or_tmp_146);
  assign MAC_and_12_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1[3]) & MAC_nor_2_cse & (~
      or_tmp_146);
  assign MAC_and_13_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b1011) & (~ or_tmp_146);
  assign MAC_and_14_nl = (MAC_slc_MAC_4_MAC_acc_psp_sva_1==4'b1110) & (~ or_tmp_146);
  assign MAC_and_5_nl = (MAC_slc_MAC_2_MAC_acc_tmp[0]) & MAC_nor_6_cse & (~ or_162_tmp);
  assign MAC_and_6_nl = (MAC_slc_MAC_2_MAC_acc_tmp[2]) & MAC_nor_7_cse & (~ or_162_tmp);
  assign MAC_and_7_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b0111) & (~ or_162_tmp);
  assign MAC_and_8_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3]) & (MAC_slc_MAC_2_MAC_acc_tmp[1])
      & MAC_nor_8_cse & (~ or_162_tmp);
  assign MAC_and_9_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b1101) & (~ or_162_tmp);
  assign nl_MAC_slc_MAC_6_MAC_acc_itm  = MAC_slc_MAC_4_MAC_acc_psp_sva_1 + 4'b0001;
  assign MAC_and_nl = (MAC_slc_MAC_2_MAC_acc_tmp[0]) & MAC_nor_6_cse & (~ or_dcpl_12);
  assign MAC_and_1_nl = (MAC_slc_MAC_2_MAC_acc_tmp[2]) & MAC_nor_7_cse & (~ or_dcpl_12);
  assign MAC_and_2_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b0111) & (~ or_dcpl_12);
  assign MAC_and_3_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3]) & (MAC_slc_MAC_2_MAC_acc_tmp[1])
      & MAC_nor_8_cse & (~ or_dcpl_12);
  assign MAC_and_4_nl = (MAC_slc_MAC_2_MAC_acc_tmp[3:0]==4'b1101) & (~ or_dcpl_12);
  assign MAC_mux1h_27_nl = MUX1HOT_v_16_4_2(MAC_2_MAC_mux_itm, MAC_4_MAC_mux_itm,
      MAC_6_MAC_mux_itm, MAC_5_MAC_mux_itm, {(fsm_output[2]) , (fsm_output[4]) ,
      (fsm_output[6]) , (fsm_output[7])});
  assign nl_z_out = $signed((MAC_mux1h_27_nl)) * $signed((coeffs_rsci_q_d));
  assign z_out = nl_z_out[29:0];

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


  function automatic [15:0] MUX1HOT_v_16_5_2;
    input [15:0] input_4;
    input [15:0] input_3;
    input [15:0] input_2;
    input [15:0] input_1;
    input [15:0] input_0;
    input [4:0] sel;
    reg [15:0] result;
  begin
    result = input_0 & {16{sel[0]}};
    result = result | ( input_1 & {16{sel[1]}});
    result = result | ( input_2 & {16{sel[2]}});
    result = result | ( input_3 & {16{sel[3]}});
    result = result | ( input_4 & {16{sel[4]}});
    MUX1HOT_v_16_5_2 = result;
  end
  endfunction


  function automatic [3:0] MUX1HOT_v_4_3_2;
    input [3:0] input_2;
    input [3:0] input_1;
    input [3:0] input_0;
    input [2:0] sel;
    reg [3:0] result;
  begin
    result = input_0 & {4{sel[0]}};
    result = result | ( input_1 & {4{sel[1]}});
    result = result | ( input_2 & {4{sel[2]}});
    MUX1HOT_v_4_3_2 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_16_2x1x2x4x5x7x8x10x11x13x14;
    input [15:0] input_0;
    input [15:0] input_3;
    input [15:0] input_6;
    input [15:0] input_9;
    input [15:0] input_12;
    input [15:0] input_15;
    input [3:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = input_0;
      end
      4'b0011 : begin
        result = input_3;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1100 : begin
        result = input_12;
      end
      default : begin
        result = input_15;
      end
    endcase
    MUX_v_16_16_2x1x2x4x5x7x8x10x11x13x14 = result;
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


  function automatic [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 =  {1'b0, vector};
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



