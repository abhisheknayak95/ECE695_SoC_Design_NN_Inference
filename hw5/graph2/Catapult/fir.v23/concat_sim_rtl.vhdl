
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
--  Generated date: Sat Nov 13 22:50:12 2021
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
    fsm_output : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
  );
END fir_core_core_fsm;

ARCHITECTURE v23 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (main_C_0, main_C_1, main_C_2);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (state_var)
  BEGIN
    CASE state_var IS
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "010");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "100");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "001");
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

END v23;

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

ARCHITECTURE v23 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL main_stage_0_2 : STD_LOGIC;
  SIGNAL reg_MAC_io_read_coeffs_rsc_ftd_176 : STD_LOGIC_VECTOR (335 DOWNTO 0);
  SIGNAL reg_out1_out1_and_cse : STD_LOGIC;
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL reg_MAC_asn_76_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_75_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_72_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_71_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_63_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
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
  SIGNAL regs_21_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_22_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_23_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_24_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_25_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_26_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_27_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_3_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_28_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_2_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_29_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_30_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_62_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_5_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_asn_64_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_65_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_66_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_67_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_68_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_69_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_70_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_14_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_asn_73_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_74_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_9_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_asn_77_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_78_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_79_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_90_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_25_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_20_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_30_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_35 : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_23_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_24_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_30_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_25_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_26_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_27_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_28_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_33_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_29_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_28_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_17_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_31_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_22_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_3_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_29_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_30_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_26_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_27_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_28_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_29_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_30_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_31_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_32_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_33_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_34_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_35_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_36_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_37_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_38_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_39_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_40_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_41_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_42_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_43_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_44_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_45_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_46_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_47_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_36_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_48_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_49_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
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
      fsm_output : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (2 DOWNTO 0);

  FUNCTION CONV_SL_1_1(input:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX1HOT_v_30_3_2(input_2 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(29 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(29 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
    RETURN result;
  END;

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

  reg_out1_out1_and_cse <= main_stage_0_2 AND (fsm_output(1));
  MAC_acc_35 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_itm_1) + UNSIGNED(MAC_acc_14_itm_1),
      30));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_8_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_25_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_15_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_14_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_13_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_12_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        out1_rsc_triosy_obj_ld <= '0';
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        MAC_asn_90_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_14_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_5_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSE
        MAC_acc_8_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED(z_out_1),
            30));
        MAC_acc_25_itm_1 <= z_out_13;
        MAC_acc_15_itm_1 <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(2))));
        MAC_acc_14_itm_1 <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_4_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_14_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(2))));
        MAC_acc_13_itm_1 <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_33_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_17_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(2))));
        MAC_acc_12_itm_1 <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_18_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_16_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_12_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(2))));
        out1_rsc_triosy_obj_ld <= reg_out1_out1_and_cse;
        reg_in1_rsc_triosy_obj_ld_cse <= fsm_output(0);
        MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output(2));
        MAC_14_mul_itm <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_22_mul_nl),
            30)), z_out_6, MAC_acc_14_itm_1, STD_LOGIC_VECTOR'( (fsm_output(0)) &
            (fsm_output(1)) & (fsm_output(2))));
        MAC_5_mul_itm <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_3_nl),
            30)), z_out_4, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(2))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_20_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(2))) = '1' ) THEN
        MAC_acc_20_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl),
            30)), z_out_11, fsm_output(2));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_30_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (CONV_SL_1_1(fsm_output(1 DOWNTO 0)/=STD_LOGIC_VECTOR'("00"))) = '1'
          ) THEN
        MAC_acc_30_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_30_nl), 30)), fsm_output(1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( reg_out1_out1_and_cse = '1' ) THEN
        out1_rsci_idat <= z_out_13(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        main_stage_0_2 <= '0';
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        main_stage_0_2 <= fsm_output(2);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_77_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_77_itm <= reg_MAC_asn_76_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_78_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_78_itm <= MAC_asn_77_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_71_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        reg_MAC_asn_71_cse <= MAC_asn_70_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_69_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_69_itm <= MAC_asn_68_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_70_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_70_itm <= MAC_asn_69_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_67_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_67_itm <= MAC_asn_66_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_68_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_68_itm <= MAC_asn_67_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_65_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_65_itm <= MAC_asn_64_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_66_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_66_itm <= MAC_asn_65_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_64_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_64_itm <= reg_MAC_asn_63_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_79_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_79_itm <= MAC_asn_78_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_75_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        reg_MAC_asn_75_cse <= MAC_asn_74_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_76_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        reg_MAC_asn_76_cse <= reg_MAC_asn_75_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_73_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_73_itm <= reg_MAC_asn_72_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_74_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_asn_74_itm <= MAC_asn_73_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_72_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        reg_MAC_asn_72_cse <= reg_MAC_asn_71_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_63_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        reg_MAC_asn_63_cse <= regs_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_2_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_2_sva <= MAC_asn_62_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_asn_62_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (CONV_SL_1_1(fsm_output(2 DOWNTO 1)/=STD_LOGIC_VECTOR'("00"))) = '1'
          ) THEN
        MAC_asn_62_itm <= MUX_v_16_2_2(regs_0_sva, regs_2_sva, fsm_output(2));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        regs_0_sva <= MAC_asn_90_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_30_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_30_sva <= regs_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_29_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_29_sva <= regs_28_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_28_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_28_sva <= regs_27_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_27_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_27_sva <= regs_26_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_26_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_26_sva <= regs_25_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_25_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_25_sva <= regs_24_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_24_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_24_sva <= regs_23_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_23_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_23_sva <= regs_22_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_22_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_22_sva <= regs_21_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_21_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_21_sva <= MAC_asn_79_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_3_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        regs_3_sva <= regs_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_9_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        MAC_acc_9_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2) + UNSIGNED(z_out_10),
            30));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_io_read_coeffs_rsc_ftd_176 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        reg_MAC_io_read_coeffs_rsc_ftd_176 <= coeffs_rsci_d(335 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  MAC_25_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_24_sva) *
      SIGNED(coeffs_rsci_d(399 DOWNTO 384))), 30));
  MAC_26_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_25_sva) *
      SIGNED(coeffs_rsci_d(415 DOWNTO 400))), 30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_25_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_26_mul_nl), 30), 30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED(MAC_14_mul_itm),
      30));
  MAC_acc_15_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_5_mul_itm) + UNSIGNED(z_out_3),
      30));
  MAC_27_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_26_sva) *
      SIGNED(coeffs_rsci_d(431 DOWNTO 416))), 30));
  MAC_28_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_27_sva) *
      SIGNED(coeffs_rsci_d(447 DOWNTO 432))), 30));
  MAC_acc_4_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_27_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_28_mul_nl), 30), 30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_1) + UNSIGNED(z_out_3),
      30));
  MAC_acc_14_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_5) + UNSIGNED(z_out_2),
      30));
  MAC_acc_29_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_25_itm_1) + UNSIGNED(MAC_acc_35),
      30));
  MAC_acc_28_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_13) + UNSIGNED(z_out_12),
      30));
  MAC_acc_33_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_29_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_28_nl), 30), 30));
  MAC_acc_17_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_7) + UNSIGNED(z_out_8),
      30));
  MAC_acc_13_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(z_out_6),
      30));
  MAC_31_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_30_sva) *
      SIGNED(coeffs_rsci_d(495 DOWNTO 480))), 30));
  MAC_acc_18_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_31_mul_nl),
      30) + UNSIGNED(z_out_7), 30));
  MAC_acc_16_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_9) + UNSIGNED(z_out_5),
      30));
  MAC_acc_12_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_9) + UNSIGNED(z_out_8),
      30));
  MAC_22_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_21_sva) *
      SIGNED(coeffs_rsci_d(351 DOWNTO 336))), 30));
  MAC_29_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_28_sva) *
      SIGNED(coeffs_rsci_d(463 DOWNTO 448))), 30));
  MAC_30_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_29_sva) *
      SIGNED(coeffs_rsci_d(479 DOWNTO 464))), 30));
  MAC_acc_3_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_29_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_30_mul_nl), 30), 30));
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_10) + UNSIGNED(MAC_14_mul_itm),
      30));
  MAC_23_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_22_sva) *
      SIGNED(coeffs_rsci_d(367 DOWNTO 352))), 30));
  MAC_24_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_23_sva) *
      SIGNED(coeffs_rsci_d(383 DOWNTO 368))), 30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_23_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_24_mul_nl), 30), 30));
  MAC_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_11) + UNSIGNED(MAC_acc_30_itm_1),
      30));
  MAC_acc_30_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_35) + UNSIGNED(z_out_12),
      30));
  MAC_mux_26_nl <= MUX_v_16_2_2(MAC_asn_77_itm, MAC_asn_79_itm, fsm_output(1));
  MAC_mux_27_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(303 DOWNTO 288)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(335 DOWNTO 320)), fsm_output(1));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_26_nl) * SIGNED(MAC_mux_27_nl)),
      30));
  MAC_mux_28_nl <= MUX_v_16_2_2(MAC_asn_78_itm, MAC_asn_73_itm, fsm_output(1));
  MAC_mux_29_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(319 DOWNTO 304)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(239 DOWNTO 224)), fsm_output(1));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_28_nl) * SIGNED(MAC_mux_29_nl)),
      30));
  MAC_mux_30_nl <= MUX_v_16_2_2(MAC_asn_66_itm, reg_MAC_asn_75_cse, fsm_output(1));
  MAC_mux_31_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(127 DOWNTO 112)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(271 DOWNTO 256)), fsm_output(1));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_30_nl) * SIGNED(MAC_mux_31_nl)),
      30));
  MAC_mux_32_nl <= MUX_v_16_2_2(MAC_asn_64_itm, MAC_asn_74_itm, fsm_output(1));
  MAC_mux_33_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(95 DOWNTO 80)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(255 DOWNTO 240)), fsm_output(1));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_32_nl) * SIGNED(MAC_mux_33_nl)),
      30));
  MAC_mux_34_nl <= MUX_v_16_2_2(MAC_asn_67_itm, reg_MAC_asn_63_cse, fsm_output(1));
  MAC_mux_35_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(143 DOWNTO 128)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(79 DOWNTO 64)), fsm_output(1));
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_34_nl) * SIGNED(MAC_mux_35_nl)),
      30));
  MAC_mux_36_nl <= MUX_v_16_2_2(MAC_asn_65_itm, MAC_asn_62_itm, fsm_output(1));
  MAC_mux_37_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(111 DOWNTO 96)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(63 DOWNTO 48)), fsm_output(1));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_36_nl) * SIGNED(MAC_mux_37_nl)),
      30));
  MAC_mux_38_nl <= MUX_v_16_2_2(MAC_asn_68_itm, reg_MAC_asn_72_cse, fsm_output(1));
  MAC_mux_39_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(159 DOWNTO 144)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(223 DOWNTO 208)), fsm_output(1));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_38_nl) * SIGNED(MAC_mux_39_nl)),
      30));
  MAC_mux_40_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(15 DOWNTO 0)),
      (coeffs_rsci_d(511 DOWNTO 496)), fsm_output(0));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_asn_90_itm) * SIGNED(MAC_mux_40_nl)),
      30));
  MAC_mux_41_nl <= MUX_v_16_2_2(regs_0_sva, MAC_asn_70_itm, fsm_output(2));
  MAC_mux_42_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(31 DOWNTO 16)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(191 DOWNTO 176)), fsm_output(2));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_41_nl) * SIGNED(MAC_mux_42_nl)),
      30));
  MAC_mux_43_nl <= MUX_v_16_2_2(regs_2_sva, MAC_asn_69_itm, fsm_output(2));
  MAC_mux_44_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(47 DOWNTO 32)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(175 DOWNTO 160)), fsm_output(2));
  z_out_9 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_43_nl) * SIGNED(MAC_mux_44_nl)),
      30));
  MAC_mux_45_nl <= MUX_v_16_2_2(reg_MAC_asn_71_cse, reg_MAC_asn_76_cse, fsm_output(1));
  MAC_mux_46_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_176(207 DOWNTO 192)),
      (reg_MAC_io_read_coeffs_rsc_ftd_176(287 DOWNTO 272)), fsm_output(1));
  z_out_10 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_45_nl) * SIGNED(MAC_mux_46_nl)),
      30));
  MAC_acc_36_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_itm) + UNSIGNED(MAC_acc_8_itm_1),
      30));
  MAC_mux_47_nl <= MUX_v_30_2_2(MAC_acc_15_itm_1, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_36_nl),
      30)), fsm_output(0));
  z_out_11 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_mux_47_nl) + UNSIGNED(MAC_acc_20_itm_1),
      30));
  MAC_mux_48_nl <= MUX_v_30_2_2(MAC_acc_12_itm_1, MAC_14_mul_itm, fsm_output(0));
  z_out_12 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_5_mul_itm) + UNSIGNED(MAC_mux_48_nl),
      30));
  MAC_mux_49_nl <= MUX_v_30_2_2(MAC_acc_12_itm_1, MAC_acc_30_itm_1, fsm_output(1));
  z_out_13 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_itm_1) + UNSIGNED(MAC_mux_49_nl),
      30));
END v23;

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

ARCHITECTURE v23 OF fir IS
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

END v23;



