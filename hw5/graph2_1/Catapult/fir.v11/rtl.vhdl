-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.3d/815731 Production Release
--  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
-- 
--  Generated by:   695r48@cparch23.ecn.purdue.edu
--  Generated date: Tue Nov  9 15:40:16 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.ccs_in_pkg_v1.ALL;
USE mgc_hls.ccs_out_pkg_v1.ALL;
USE mgc_hls.mgc_io_sync_pkg_v2.ALL;


ENTITY fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen IS
  PORT(
    q : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    radr : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    radr_d : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    q_d : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    rport_r_ram_ir_internal_RMASK_B_d : IN STD_LOGIC
  );
END fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen;

ARCHITECTURE v11 OF fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen IS
  -- Default Constants

BEGIN
  q_d <= q;
  radr <= (radr_d);
END v11;

-- ------------------------------------------------------------------
--  Design Unit:    fir_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.ccs_in_pkg_v1.ALL;
USE mgc_hls.ccs_out_pkg_v1.ALL;
USE mgc_hls.mgc_io_sync_pkg_v2.ALL;


ENTITY fir_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
    MAC_C_9_tr0 : IN STD_LOGIC
  );
END fir_core_core_fsm;

ARCHITECTURE v11 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (main_C_0, MAC_C_0, MAC_C_1, MAC_C_2, MAC_C_3, MAC_C_4,
      MAC_C_5, MAC_C_6, MAC_C_7, MAC_C_8, MAC_C_9, main_C_1);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (MAC_C_9_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN MAC_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000000010");
        state_var_NS <= MAC_C_1;
      WHEN MAC_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000000100");
        state_var_NS <= MAC_C_2;
      WHEN MAC_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000001000");
        state_var_NS <= MAC_C_3;
      WHEN MAC_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000010000");
        state_var_NS <= MAC_C_4;
      WHEN MAC_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000100000");
        state_var_NS <= MAC_C_5;
      WHEN MAC_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000001000000");
        state_var_NS <= MAC_C_6;
      WHEN MAC_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000010000000");
        state_var_NS <= MAC_C_7;
      WHEN MAC_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "000100000000");
        state_var_NS <= MAC_C_8;
      WHEN MAC_C_8 =>
        fsm_output <= STD_LOGIC_VECTOR'( "001000000000");
        state_var_NS <= MAC_C_9;
      WHEN MAC_C_9 =>
        fsm_output <= STD_LOGIC_VECTOR'( "010000000000");
        IF ( MAC_C_9_tr0 = '1' ) THEN
          state_var_NS <= main_C_1;
        ELSE
          state_var_NS <= MAC_C_0;
        END IF;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "100000000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "000000000001");
        state_var_NS <= MAC_C_0;
    END CASE;
  END PROCESS fir_core_core_fsm_1;

  fir_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= main_C_0;
      ELSE
        state_var <= state_var_NS;
      END IF;
    END IF;
  END PROCESS fir_core_core_fsm_1_REG;

END v11;

-- ------------------------------------------------------------------
--  Design Unit:    fir_core
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.ccs_in_pkg_v1.ALL;
USE mgc_hls.ccs_out_pkg_v1.ALL;
USE mgc_hls.mgc_io_sync_pkg_v2.ALL;


ENTITY fir_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    coeffs_rsc_triosy_lz : OUT STD_LOGIC;
    in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    in1_rsc_triosy_lz : OUT STD_LOGIC;
    out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    out1_rsc_triosy_lz : OUT STD_LOGIC;
    coeffs_rsci_radr_d : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    coeffs_rsci_q_d : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d : OUT STD_LOGIC
  );
END fir_core;

ARCHITECTURE v11 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fsm_output : STD_LOGIC_VECTOR (11 DOWNTO 0);
  SIGNAL and_dcpl_1 : STD_LOGIC;
  SIGNAL or_tmp_65 : STD_LOGIC;
  SIGNAL MAC_i_5_2_sva_1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL reg_out1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL reg_out1_out1_and_cse : STD_LOGIC;
  SIGNAL MAC_i_5_2_sva_2_0 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL MAC_slc_MAC_i_5_2_2_0_1_itm : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL regs_15_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_16_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_14_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_17_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_13_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_18_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_12_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_19_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_11_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_20_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_10_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_21_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_9_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_22_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_8_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_23_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_7_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_24_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_6_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_25_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_5_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_26_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_4_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_27_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_3_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_28_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_2_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_29_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_1_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_30_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL acc_32_3_1_sva : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL regs_30_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_29_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_28_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_27_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_26_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_25_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_24_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_23_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_22_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_21_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_20_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_19_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_18_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_17_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_16_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_15_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_14_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_13_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_12_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_11_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_10_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_9_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_8_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_7_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_6_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_5_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_4_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_3_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_2_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_1_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_3_MAC_mux_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_4_MAC_mux_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_1_MAC_mux_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_1_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_2_MAC_mux_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_2_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_itm_mx0w0 : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL MAC_4_acc_1_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL not_25_nl : STD_LOGIC;
  SIGNAL not_24_nl : STD_LOGIC;
  SIGNAL coeffs_coeffs_mux_nl : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL coeffs_or_nl : STD_LOGIC;
  SIGNAL coeffs_coeffs_or_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL coeffs_nor_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL coeffs_mux_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL MAC_mux1h_2_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL in1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL in1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);

  SIGNAL out1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);

  COMPONENT fir_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
      MAC_C_9_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (11 DOWNTO 0);
  SIGNAL fir_core_core_fsm_inst_MAC_C_9_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX1HOT_v_16_4_2(input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
    RETURN result;
  END;

  FUNCTION MUX_v_16_8_2(input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000" =>
          result := input_0;
        WHEN "001" =>
          result := input_1;
        WHEN "010" =>
          result := input_2;
        WHEN "011" =>
          result := input_3;
        WHEN "100" =>
          result := input_4;
        WHEN "101" =>
          result := input_5;
        WHEN "110" =>
          result := input_6;
        WHEN others =>
          result := input_7;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_2_2_2(input_0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_30_2_2(input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(29 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_3_2_2(input_0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(2 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  in1_rsci : mgc_hls.ccs_in_pkg_v1.ccs_in_v1
    GENERIC MAP(
      rscid => 2,
      width => 16
      )
    PORT MAP(
      dat => in1_rsci_dat,
      idat => in1_rsci_idat_1
    );
  in1_rsci_dat <= in1_rsc_dat;
  in1_rsci_idat <= in1_rsci_idat_1;

  out1_rsci : mgc_hls.ccs_out_pkg_v1.ccs_out_v1
    GENERIC MAP(
      rscid => 3,
      width => 16
      )
    PORT MAP(
      idat => out1_rsci_idat_1,
      dat => out1_rsci_dat
    );
  out1_rsci_idat_1 <= out1_rsci_idat;
  out1_rsc_dat <= out1_rsci_dat;

  coeffs_rsc_triosy_obj : mgc_hls.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_out1_rsc_triosy_obj_ld_cse,
      lz => coeffs_rsc_triosy_lz
    );
  in1_rsc_triosy_obj : mgc_hls.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_out1_rsc_triosy_obj_ld_cse,
      lz => in1_rsc_triosy_lz
    );
  out1_rsc_triosy_obj : mgc_hls.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_out1_rsc_triosy_obj_ld_cse,
      lz => out1_rsc_triosy_lz
    );
  fir_core_core_fsm_inst : fir_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => fir_core_core_fsm_inst_fsm_output,
      MAC_C_9_tr0 => fir_core_core_fsm_inst_MAC_C_9_tr0
    );
  fsm_output <= fir_core_core_fsm_inst_fsm_output;
  fir_core_core_fsm_inst_MAC_C_9_tr0 <= MAC_i_5_2_sva_1(3);

  reg_out1_out1_and_cse <= (fsm_output(10)) AND (MAC_i_5_2_sva_1(3));
  MAC_acc_4_itm_mx0w0 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_1_mul_itm) +
      UNSIGNED(MAC_2_mul_itm), 30));
  and_dcpl_1 <= NOT((fsm_output(11)) OR (fsm_output(0)));
  or_tmp_65 <= (fsm_output(11)) OR (fsm_output(0));
  coeffs_or_nl <= CONV_SL_1_1(fsm_output(4 DOWNTO 3)/=STD_LOGIC_VECTOR'("00"));
  coeffs_coeffs_mux_nl <= MUX_v_3_2_2(MAC_i_5_2_sva_2_0, MAC_slc_MAC_i_5_2_2_0_1_itm,
      coeffs_or_nl);
  coeffs_mux_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR'( "10"), STD_LOGIC_VECTOR'( "01"),
      fsm_output(4));
  coeffs_nor_nl <= NOT(MUX_v_2_2_2(coeffs_mux_nl, STD_LOGIC_VECTOR'("11"), (fsm_output(2))));
  coeffs_coeffs_or_nl <= MUX_v_2_2_2(coeffs_nor_nl, STD_LOGIC_VECTOR'("11"), (fsm_output(3)));
  coeffs_rsci_radr_d <= coeffs_coeffs_mux_nl & coeffs_coeffs_or_nl;
  coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d <= CONV_SL_1_1(fsm_output(4 DOWNTO
      1)/=STD_LOGIC_VECTOR'("0000"));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_4_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_8_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_12_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_16_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_20_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_24_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_28_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_3_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_7_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_11_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_15_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_19_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_23_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_27_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_2_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_6_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_10_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_14_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_18_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_22_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_26_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_30_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_1_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_5_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_9_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_13_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_17_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_21_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_25_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_29_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( reg_out1_out1_and_cse = '1' ) THEN
        out1_rsci_idat <= acc_32_3_1_sva(29 DOWNTO 14);
        regs_0_sva <= regs_0_sva_1;
        regs_4_sva <= regs_4_sva_1;
        regs_8_sva <= regs_8_sva_1;
        regs_12_sva <= regs_12_sva_1;
        regs_16_sva <= regs_16_sva_1;
        regs_20_sva <= regs_20_sva_1;
        regs_24_sva <= regs_24_sva_1;
        regs_28_sva <= regs_28_sva_1;
        regs_3_sva <= regs_3_sva_1;
        regs_7_sva <= regs_7_sva_1;
        regs_11_sva <= regs_11_sva_1;
        regs_15_sva <= regs_15_sva_1;
        regs_19_sva <= regs_19_sva_1;
        regs_23_sva <= regs_23_sva_1;
        regs_27_sva <= regs_27_sva_1;
        regs_2_sva <= regs_2_sva_1;
        regs_6_sva <= regs_6_sva_1;
        regs_10_sva <= regs_10_sva_1;
        regs_14_sva <= regs_14_sva_1;
        regs_18_sva <= regs_18_sva_1;
        regs_22_sva <= regs_22_sva_1;
        regs_26_sva <= regs_26_sva_1;
        regs_30_sva <= regs_30_sva_1;
        regs_1_sva <= regs_1_sva_1;
        regs_5_sva <= regs_5_sva_1;
        regs_9_sva <= regs_9_sva_1;
        regs_13_sva <= regs_13_sva_1;
        regs_17_sva <= regs_17_sva_1;
        regs_21_sva <= regs_21_sva_1;
        regs_25_sva <= regs_25_sva_1;
        regs_29_sva <= regs_29_sva_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        acc_32_3_1_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(11)) OR (fsm_output(6))) = '1' ) THEN
        acc_32_3_1_sva <= MUX_v_30_2_2(STD_LOGIC_VECTOR'("000000000000000000000000000000"),
            STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_4_acc_1_nl), 30)), not_25_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_i_5_2_sva_2_0 <= STD_LOGIC_VECTOR'( "000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(11)) OR (fsm_output(2))) = '1' ) THEN
        MAC_i_5_2_sva_2_0 <= MUX_v_3_2_2(STD_LOGIC_VECTOR'("000"), (MAC_i_5_2_sva_1(2
            DOWNTO 0)), not_24_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_0_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_0_sva_1 <= in1_rsci_idat;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_out1_rsc_triosy_obj_ld_cse <= '0';
        MAC_2_MAC_mux_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_1_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSE
        reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
        MAC_2_MAC_mux_itm <= MUX_v_16_8_2(regs_0_sva, regs_4_sva, regs_8_sva, regs_12_sva,
            regs_16_sva, regs_20_sva, regs_24_sva, regs_28_sva, MAC_i_5_2_sva_2_0);
        MAC_1_mul_itm <= z_out;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_30_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_30_sva_1 <= regs_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_29_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_29_sva_1 <= regs_28_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_28_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_28_sva_1 <= regs_27_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_27_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_27_sva_1 <= regs_26_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_26_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_26_sva_1 <= regs_25_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_25_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_25_sva_1 <= regs_24_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_24_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_24_sva_1 <= regs_23_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_23_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_23_sva_1 <= regs_22_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_22_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_22_sva_1 <= regs_21_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_21_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_21_sva_1 <= regs_20_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_20_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_20_sva_1 <= regs_19_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_19_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_19_sva_1 <= regs_18_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_18_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_18_sva_1 <= regs_17_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_17_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_17_sva_1 <= regs_16_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_16_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_16_sva_1 <= regs_15_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_15_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_15_sva_1 <= regs_14_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_14_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_14_sva_1 <= regs_13_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_13_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_13_sva_1 <= regs_12_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_12_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_12_sva_1 <= regs_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_11_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_11_sva_1 <= regs_10_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_10_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_10_sva_1 <= regs_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_9_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_9_sva_1 <= regs_8_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_8_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_8_sva_1 <= regs_7_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_7_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_7_sva_1 <= regs_6_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_6_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_6_sva_1 <= regs_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_5_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_5_sva_1 <= regs_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_4_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_4_sva_1 <= regs_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_3_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_3_sva_1 <= regs_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_2_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_2_sva_1 <= regs_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_1_sva_1 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( and_dcpl_1 = '0' ) THEN
        regs_1_sva_1 <= regs_0_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_i_5_2_sva_1 <= STD_LOGIC_VECTOR'( "0000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_i_5_2_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_i_5_2_sva_2_0),
            3), 4) + UNSIGNED'( "0001"), 4));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_3_MAC_mux_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_3_MAC_mux_itm <= MUX_v_16_8_2(regs_1_sva, regs_5_sva, regs_9_sva, regs_13_sva,
            regs_17_sva, regs_21_sva, regs_25_sva, regs_29_sva, MAC_i_5_2_sva_2_0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_4_MAC_mux_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_4_MAC_mux_itm <= MUX_v_16_8_2(regs_2_sva, regs_6_sva, regs_10_sva, regs_14_sva,
            regs_18_sva, regs_22_sva, regs_26_sva, regs_30_sva, MAC_i_5_2_sva_2_0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_1_MAC_mux_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_1_MAC_mux_itm <= MUX_v_16_8_2(regs_0_sva_1, regs_3_sva, regs_7_sva, regs_11_sva,
            regs_15_sva, regs_19_sva, regs_23_sva, regs_27_sva, MAC_i_5_2_sva_2_0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_2_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(4)) OR (fsm_output(2))) = '1' ) THEN
        MAC_2_mul_itm <= z_out;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_MAC_i_5_2_2_0_1_itm <= STD_LOGIC_VECTOR'( "000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_slc_MAC_i_5_2_2_0_1_itm <= MAC_i_5_2_sva_2_0;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_4_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (fsm_output(4)) = '1' ) THEN
        MAC_acc_4_itm <= MAC_acc_4_itm_mx0w0;
      END IF;
    END IF;
  END PROCESS;
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_acc_4_itm_mx0w0) + SIGNED(acc_32_3_1_sva),
      30));
  MAC_4_acc_1_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(SIGNED(MAC_acc_5_nl),
      30) + UNSIGNED(MAC_acc_4_itm), 30));
  not_25_nl <= NOT or_tmp_65;
  not_24_nl <= NOT or_tmp_65;
  MAC_mux1h_2_nl <= MUX1HOT_v_16_4_2(MAC_2_MAC_mux_itm, MAC_4_MAC_mux_itm, MAC_1_MAC_mux_itm,
      MAC_3_MAC_mux_itm, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(4)) & (fsm_output(3))
      & (fsm_output(5))));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux1h_2_nl) * SIGNED(coeffs_rsci_q_d)),
      30));
END v11;

-- ------------------------------------------------------------------
--  Design Unit:    fir
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.ccs_in_pkg_v1.ALL;
USE mgc_hls.ccs_out_pkg_v1.ALL;
USE mgc_hls.mgc_io_sync_pkg_v2.ALL;


ENTITY fir IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    coeffs_rsc_radr : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    coeffs_rsc_q : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    coeffs_rsc_triosy_lz : OUT STD_LOGIC;
    in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    in1_rsc_triosy_lz : OUT STD_LOGIC;
    out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    out1_rsc_triosy_lz : OUT STD_LOGIC
  );
END fir;

ARCHITECTURE v11 OF fir IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_radr_d : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL coeffs_rsci_q_d : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d : STD_LOGIC;

  COMPONENT fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen
    PORT(
      q : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      radr : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
      radr_d : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
      q_d : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      rport_r_ram_ir_internal_RMASK_B_d : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL coeffs_rsci_q : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL coeffs_rsci_radr : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL coeffs_rsci_radr_d_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL coeffs_rsci_q_d_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);

  COMPONENT fir_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      coeffs_rsc_triosy_lz : OUT STD_LOGIC;
      in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      in1_rsc_triosy_lz : OUT STD_LOGIC;
      out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      out1_rsc_triosy_lz : OUT STD_LOGIC;
      coeffs_rsci_radr_d : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
      coeffs_rsci_q_d : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir_core_inst_in1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_out1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_coeffs_rsci_radr_d : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL fir_core_inst_coeffs_rsci_q_d : STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN
  coeffs_rsci : fir_Altera_DIST_DIST_1R1W_RBW_rport_1_16_5_32_32_16_gen
    PORT MAP(
      q => coeffs_rsci_q,
      radr => coeffs_rsci_radr,
      radr_d => coeffs_rsci_radr_d_1,
      q_d => coeffs_rsci_q_d_1,
      rport_r_ram_ir_internal_RMASK_B_d => coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d
    );
  coeffs_rsci_q <= coeffs_rsc_q;
  coeffs_rsc_radr <= coeffs_rsci_radr;
  coeffs_rsci_radr_d_1 <= coeffs_rsci_radr_d;
  coeffs_rsci_q_d <= coeffs_rsci_q_d_1;

  fir_core_inst : fir_core
    PORT MAP(
      clk => clk,
      rst => rst,
      coeffs_rsc_triosy_lz => coeffs_rsc_triosy_lz,
      in1_rsc_dat => fir_core_inst_in1_rsc_dat,
      in1_rsc_triosy_lz => in1_rsc_triosy_lz,
      out1_rsc_dat => fir_core_inst_out1_rsc_dat,
      out1_rsc_triosy_lz => out1_rsc_triosy_lz,
      coeffs_rsci_radr_d => fir_core_inst_coeffs_rsci_radr_d,
      coeffs_rsci_q_d => fir_core_inst_coeffs_rsci_q_d,
      coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d => coeffs_rsci_rport_r_ram_ir_internal_RMASK_B_d
    );
  fir_core_inst_in1_rsc_dat <= in1_rsc_dat;
  out1_rsc_dat <= fir_core_inst_out1_rsc_dat;
  coeffs_rsci_radr_d <= fir_core_inst_coeffs_rsci_radr_d;
  fir_core_inst_coeffs_rsci_q_d <= coeffs_rsci_q_d;

END v11;



