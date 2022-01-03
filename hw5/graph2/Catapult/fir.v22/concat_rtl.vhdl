
--------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/mgc_in_wire_v2.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_in_wire_pkg_v2 IS

COMPONENT mgc_in_wire_v2
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END mgc_in_wire_pkg_v2;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_in_wire_v2 IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_in_wire_v2;

ARCHITECTURE beh OF mgc_in_wire_v2 IS
BEGIN

  d <= z;

END beh;



--------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/ccs_in_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_in_pkg_v1 IS

COMPONENT ccs_in_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    idat   : OUT std_logic_vector(width-1 DOWNTO 0);
    dat    : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_in_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_in_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    idat  : OUT std_logic_vector(width-1 DOWNTO 0);
    dat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_in_v1;

ARCHITECTURE beh OF ccs_in_v1 IS
BEGIN

  idat <= dat;

END beh;


--------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/ccs_out_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_out_pkg_v1 IS

COMPONENT ccs_out_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    dat    : OUT std_logic_vector(width-1 DOWNTO 0);
    idat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_out_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_out_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    dat   : OUT std_logic_vector(width-1 DOWNTO 0);
    idat  : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_out_v1;

ARCHITECTURE beh OF ccs_out_v1 IS
BEGIN

  dat <= idat;

END beh;


--------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_io_sync_pkg_v2 IS

COMPONENT mgc_io_sync_v2
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END COMPONENT;

END mgc_io_sync_pkg_v2;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_io_sync_v2 IS
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END mgc_io_sync_v2;

ARCHITECTURE beh OF mgc_io_sync_v2 IS
BEGIN

  lz <= ld;

END beh;


--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.3d/815731 Production Release
--  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
-- 
--  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
--  Generated date: Sat Nov 13 22:49:21 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    fir_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.mgc_in_wire_pkg_v2.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
  );
END fir_core_core_fsm;

ARCHITECTURE v22 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (main_C_0, main_C_1);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (state_var)
  BEGIN
    CASE state_var IS
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "01");
        state_var_NS <= main_C_1;
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

END v22;

-- ------------------------------------------------------------------
--  Design Unit:    fir_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.mgc_in_wire_pkg_v2.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    coeffs_rsc_z : IN STD_LOGIC_VECTOR (511 DOWNTO 0);
    coeffs_rsc_triosy_lz : OUT STD_LOGIC;
    in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    in1_rsc_triosy_lz : OUT STD_LOGIC;
    out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    out1_rsc_triosy_lz : OUT STD_LOGIC
  );
END fir_core;

ARCHITECTURE v22 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL main_stage_0_2 : STD_LOGIC;
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_8 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_9 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_10 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_11 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_12 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_13 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_14 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_15 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL regs_16_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_17_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_18_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_19_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_20_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_21_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_22_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_23_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_24_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_25_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_26_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_27_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_28_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_2_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_29_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_30_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_62_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_63_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_64_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_65_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_66_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_67_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_68_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_69_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_70_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_71_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_72_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_73_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_74_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_31_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_asn_90_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_17_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_31_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_io_read_coeffs_rsc_cse_sva_255_0 : STD_LOGIC_VECTOR (255 DOWNTO 0);

  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_17_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_3_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_32_acc_1_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_36_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_32_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_34_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_42_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_38_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_40_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_41_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_42_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_43_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_44_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_45_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_46_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_47_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_48_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_49_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_50_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_51_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_52_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_53_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_54_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_55_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_56_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_57_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_58_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_59_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_60_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_61_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_62_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_63_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_64_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_65_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_66_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_67_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_68_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_69_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_70_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_71_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL coeffs_rsci_d_1 : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL coeffs_rsci_z : STD_LOGIC_VECTOR (511 DOWNTO 0);

  SIGNAL in1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL in1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);

  SIGNAL out1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);

  COMPONENT fir_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (1 DOWNTO 0);

  FUNCTION MUX_v_16_2_2(input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

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

BEGIN
  coeffs_rsci : work.mgc_in_wire_pkg_v2.mgc_in_wire_v2
    GENERIC MAP(
      rscid => 1,
      width => 512
      )
    PORT MAP(
      d => coeffs_rsci_d_1,
      z => coeffs_rsci_z
    );
  coeffs_rsci_d <= coeffs_rsci_d_1;
  coeffs_rsci_z <= coeffs_rsc_z;

  in1_rsci : work.ccs_in_pkg_v1.ccs_in_v1
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

  out1_rsci : work.ccs_out_pkg_v1.ccs_out_v1
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

  coeffs_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_in1_rsc_triosy_obj_ld_cse,
      lz => coeffs_rsc_triosy_lz
    );
  in1_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_in1_rsc_triosy_obj_ld_cse,
      lz => in1_rsc_triosy_lz
    );
  out1_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => out1_rsc_triosy_obj_ld,
      lz => out1_rsc_triosy_lz
    );
  fir_core_core_fsm_inst : fir_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => fir_core_core_fsm_inst_fsm_output
    );
  fsm_output <= fir_core_core_fsm_inst_fsm_output;

  MAC_acc_32_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_17_itm_1) + UNSIGNED(MAC_acc_16_itm_1),
      30));
  MAC_acc_34_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_itm_1) + UNSIGNED(MAC_acc_14_itm_1),
      30));
  MAC_acc_36_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_32_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_34_nl), 30), 30));
  MAC_acc_38_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_itm_1) + UNSIGNED(MAC_acc_12_itm_1),
      30));
  MAC_acc_40_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_itm_1) + UNSIGNED(MAC_acc_10_itm_1),
      30));
  MAC_acc_42_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_38_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_40_nl), 30), 30));
  MAC_acc_31_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_36_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_42_nl), 30), 30));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_31_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( main_stage_0_2 = '1' ) THEN
        MAC_acc_31_itm <= MAC_acc_31_itm_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_17_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_16_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_15_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_14_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_13_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_12_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_11_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_10_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        out1_rsc_triosy_obj_ld <= '0';
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        MAC_io_read_coeffs_rsc_cse_sva_255_0 <= STD_LOGIC_VECTOR'( "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
        MAC_asn_90_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSE
        MAC_acc_17_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_17_nl), 30)), fsm_output(1));
        MAC_acc_16_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_16_nl), 30)), fsm_output(1));
        MAC_acc_15_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_nl), 30)), fsm_output(1));
        MAC_acc_14_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_14_nl), 30)), fsm_output(1));
        MAC_acc_13_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_nl), 30)), fsm_output(1));
        MAC_acc_12_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_4_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_12_nl), 30)), fsm_output(1));
        MAC_acc_11_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_3_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl), 30)), fsm_output(1));
        MAC_acc_10_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_18_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl), 30)), fsm_output(1));
        out1_rsc_triosy_obj_ld <= main_stage_0_2 AND (fsm_output(1));
        reg_in1_rsc_triosy_obj_ld_cse <= NOT (fsm_output(1));
        MAC_io_read_coeffs_rsc_cse_sva_255_0 <= coeffs_rsci_d(255 DOWNTO 0);
        MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output(1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT((NOT main_stage_0_2) OR (fsm_output(0)))) = '1' ) THEN
        out1_rsci_idat <= MAC_32_acc_1_nl(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_acc_itm_1 <= MAC_acc_31_itm_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        main_stage_0_2 <= '0';
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        main_stage_0_2 <= NOT (fsm_output(0));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_73_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_73_itm <= MAC_asn_72_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_74_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_74_itm <= MAC_asn_73_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_71_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_71_itm <= MAC_asn_70_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_72_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_72_itm <= MAC_asn_71_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_69_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_69_itm <= MAC_asn_68_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_70_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_70_itm <= MAC_asn_69_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_67_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_67_itm <= MAC_asn_66_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_68_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_68_itm <= MAC_asn_67_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_65_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_65_itm <= MAC_asn_64_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_66_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_66_itm <= MAC_asn_65_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_63_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_63_itm <= MAC_asn_62_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_64_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_64_itm <= MAC_asn_63_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_2_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_2_sva <= regs_0_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_62_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        MAC_asn_62_itm <= regs_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_0_sva <= MAC_asn_90_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_30_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_30_sva <= regs_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_29_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_29_sva <= regs_28_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_28_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_28_sva <= regs_27_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_27_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_27_sva <= regs_26_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_26_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_26_sva <= regs_25_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_25_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_25_sva <= regs_24_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_24_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_24_sva <= regs_23_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_23_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_23_sva <= regs_22_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_22_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_22_sva <= regs_21_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_21_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_21_sva <= regs_20_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_20_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_20_sva <= regs_19_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_19_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_19_sva <= regs_18_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_18_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_18_sva <= regs_17_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_17_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_17_sva <= regs_16_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_16_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '0' ) THEN
        regs_16_sva <= MAC_asn_74_itm;
      END IF;
    END IF;
  END PROCESS;
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED(z_out_1),
      30));
  MAC_acc_17_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2) + UNSIGNED(z_out_1),
      30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(z_out_3),
      30));
  MAC_acc_16_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(z_out_7),
      30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_6) + UNSIGNED(z_out_9),
      30));
  MAC_acc_15_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_8) + UNSIGNED(z_out_11),
      30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_10) + UNSIGNED(z_out_13),
      30));
  MAC_acc_14_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_12) + UNSIGNED(z_out_15),
      30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_14) + UNSIGNED(z_out_15),
      30));
  MAC_acc_13_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_14) + UNSIGNED(z_out_13),
      30));
  MAC_acc_4_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_12) + UNSIGNED(z_out_11),
      30));
  MAC_acc_12_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_10) + UNSIGNED(z_out_9),
      30));
  MAC_acc_3_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_8) + UNSIGNED(z_out_7),
      30));
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_6) + UNSIGNED(z_out_5),
      30));
  MAC_acc_18_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_5) + UNSIGNED(z_out_2),
      30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_3) + UNSIGNED(z_out),
      30));
  MAC_32_acc_1_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_acc_31_itm) + SIGNED(MAC_acc_itm_1),
      30));
  MAC_mux_41_nl <= MUX_v_16_2_2(regs_16_sva, MAC_asn_74_itm, fsm_output(1));
  MAC_mux_42_nl <= MUX_v_16_2_2((coeffs_rsci_d(271 DOWNTO 256)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(255
      DOWNTO 240)), fsm_output(1));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_41_nl) * SIGNED(MAC_mux_42_nl)),
      30));
  MAC_mux_43_nl <= MUX_v_16_2_2(regs_17_sva, regs_0_sva, fsm_output(1));
  MAC_mux_44_nl <= MUX_v_16_2_2((coeffs_rsci_d(287 DOWNTO 272)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(31
      DOWNTO 16)), fsm_output(1));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_43_nl) * SIGNED(MAC_mux_44_nl)),
      30));
  MAC_mux_45_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(15 DOWNTO 0)),
      (coeffs_rsci_d(511 DOWNTO 496)), fsm_output(0));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_asn_90_itm) * SIGNED(MAC_mux_45_nl)),
      30));
  MAC_mux_46_nl <= MUX_v_16_2_2(regs_19_sva, MAC_asn_73_itm, fsm_output(1));
  MAC_mux_47_nl <= MUX_v_16_2_2((coeffs_rsci_d(319 DOWNTO 304)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(239
      DOWNTO 224)), fsm_output(1));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_46_nl) * SIGNED(MAC_mux_47_nl)),
      30));
  MAC_mux_48_nl <= MUX_v_16_2_2(regs_18_sva, regs_2_sva, fsm_output(1));
  MAC_mux_49_nl <= MUX_v_16_2_2((coeffs_rsci_d(303 DOWNTO 288)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(47
      DOWNTO 32)), fsm_output(1));
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_48_nl) * SIGNED(MAC_mux_49_nl)),
      30));
  MAC_mux_50_nl <= MUX_v_16_2_2(MAC_asn_72_itm, regs_30_sva, fsm_output(0));
  MAC_mux_51_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(223 DOWNTO
      208)), (coeffs_rsci_d(495 DOWNTO 480)), fsm_output(0));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_50_nl) * SIGNED(MAC_mux_51_nl)),
      30));
  MAC_mux_52_nl <= MUX_v_16_2_2(regs_20_sva, MAC_asn_71_itm, fsm_output(1));
  MAC_mux_53_nl <= MUX_v_16_2_2((coeffs_rsci_d(335 DOWNTO 320)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(207
      DOWNTO 192)), fsm_output(1));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_52_nl) * SIGNED(MAC_mux_53_nl)),
      30));
  MAC_mux_54_nl <= MUX_v_16_2_2(MAC_asn_62_itm, regs_29_sva, fsm_output(0));
  MAC_mux_55_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(63 DOWNTO 48)),
      (coeffs_rsci_d(479 DOWNTO 464)), fsm_output(0));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_54_nl) * SIGNED(MAC_mux_55_nl)),
      30));
  MAC_mux_56_nl <= MUX_v_16_2_2(MAC_asn_63_itm, regs_28_sva, fsm_output(0));
  MAC_mux_57_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(79 DOWNTO 64)),
      (coeffs_rsci_d(463 DOWNTO 448)), fsm_output(0));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_56_nl) * SIGNED(MAC_mux_57_nl)),
      30));
  MAC_mux_58_nl <= MUX_v_16_2_2(regs_21_sva, MAC_asn_70_itm, fsm_output(1));
  MAC_mux_59_nl <= MUX_v_16_2_2((coeffs_rsci_d(351 DOWNTO 336)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(191
      DOWNTO 176)), fsm_output(1));
  z_out_9 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_58_nl) * SIGNED(MAC_mux_59_nl)),
      30));
  MAC_mux_60_nl <= MUX_v_16_2_2(regs_22_sva, MAC_asn_69_itm, fsm_output(1));
  MAC_mux_61_nl <= MUX_v_16_2_2((coeffs_rsci_d(367 DOWNTO 352)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(175
      DOWNTO 160)), fsm_output(1));
  z_out_10 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_60_nl) * SIGNED(MAC_mux_61_nl)),
      30));
  MAC_mux_62_nl <= MUX_v_16_2_2(MAC_asn_64_itm, regs_27_sva, fsm_output(0));
  MAC_mux_63_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(95 DOWNTO 80)),
      (coeffs_rsci_d(447 DOWNTO 432)), fsm_output(0));
  z_out_11 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_62_nl) * SIGNED(MAC_mux_63_nl)),
      30));
  MAC_mux_64_nl <= MUX_v_16_2_2(MAC_asn_65_itm, regs_26_sva, fsm_output(0));
  MAC_mux_65_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(111 DOWNTO
      96)), (coeffs_rsci_d(431 DOWNTO 416)), fsm_output(0));
  z_out_12 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_64_nl) * SIGNED(MAC_mux_65_nl)),
      30));
  MAC_mux_66_nl <= MUX_v_16_2_2(regs_23_sva, MAC_asn_68_itm, fsm_output(1));
  MAC_mux_67_nl <= MUX_v_16_2_2((coeffs_rsci_d(383 DOWNTO 368)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(159
      DOWNTO 144)), fsm_output(1));
  z_out_13 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_66_nl) * SIGNED(MAC_mux_67_nl)),
      30));
  MAC_mux_68_nl <= MUX_v_16_2_2(regs_24_sva, MAC_asn_67_itm, fsm_output(1));
  MAC_mux_69_nl <= MUX_v_16_2_2((coeffs_rsci_d(399 DOWNTO 384)), (MAC_io_read_coeffs_rsc_cse_sva_255_0(143
      DOWNTO 128)), fsm_output(1));
  z_out_14 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_68_nl) * SIGNED(MAC_mux_69_nl)),
      30));
  MAC_mux_70_nl <= MUX_v_16_2_2(MAC_asn_66_itm, regs_25_sva, fsm_output(0));
  MAC_mux_71_nl <= MUX_v_16_2_2((MAC_io_read_coeffs_rsc_cse_sva_255_0(127 DOWNTO
      112)), (coeffs_rsci_d(415 DOWNTO 400)), fsm_output(0));
  z_out_15 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_70_nl) * SIGNED(MAC_mux_71_nl)),
      30));
END v22;

-- ------------------------------------------------------------------
--  Design Unit:    fir
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.mgc_in_wire_pkg_v2.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    coeffs_rsc_z : IN STD_LOGIC_VECTOR (511 DOWNTO 0);
    coeffs_rsc_triosy_lz : OUT STD_LOGIC;
    in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    in1_rsc_triosy_lz : OUT STD_LOGIC;
    out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    out1_rsc_triosy_lz : OUT STD_LOGIC
  );
END fir;

ARCHITECTURE v22 OF fir IS
  -- Default Constants

  COMPONENT fir_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      coeffs_rsc_z : IN STD_LOGIC_VECTOR (511 DOWNTO 0);
      coeffs_rsc_triosy_lz : OUT STD_LOGIC;
      in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      in1_rsc_triosy_lz : OUT STD_LOGIC;
      out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      out1_rsc_triosy_lz : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir_core_inst_coeffs_rsc_z : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL fir_core_inst_in1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_out1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN
  fir_core_inst : fir_core
    PORT MAP(
      clk => clk,
      rst => rst,
      coeffs_rsc_z => fir_core_inst_coeffs_rsc_z,
      coeffs_rsc_triosy_lz => coeffs_rsc_triosy_lz,
      in1_rsc_dat => fir_core_inst_in1_rsc_dat,
      in1_rsc_triosy_lz => in1_rsc_triosy_lz,
      out1_rsc_dat => fir_core_inst_out1_rsc_dat,
      out1_rsc_triosy_lz => out1_rsc_triosy_lz
    );
  fir_core_inst_coeffs_rsc_z <= coeffs_rsc_z;
  fir_core_inst_in1_rsc_dat <= in1_rsc_dat;
  out1_rsc_dat <= fir_core_inst_out1_rsc_dat;

END v22;



