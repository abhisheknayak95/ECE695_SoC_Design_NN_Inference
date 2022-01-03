
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
--  Generated date: Sat Nov 13 22:52:53 2021
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
    fsm_output : OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
  );
END fir_core_core_fsm;

ARCHITECTURE v27 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (main_C_0, main_C_1, main_C_2, main_C_3, main_C_4,
      main_C_5, main_C_6, main_C_7, main_C_8, main_C_9, main_C_10, main_C_11, main_C_12,
      main_C_13);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (state_var)
  BEGIN
    CASE state_var IS
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000010");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000100");
        state_var_NS <= main_C_3;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000001000");
        state_var_NS <= main_C_4;
      WHEN main_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000010000");
        state_var_NS <= main_C_5;
      WHEN main_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000100000");
        state_var_NS <= main_C_6;
      WHEN main_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000001000000");
        state_var_NS <= main_C_7;
      WHEN main_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000010000000");
        state_var_NS <= main_C_8;
      WHEN main_C_8 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000100000000");
        state_var_NS <= main_C_9;
      WHEN main_C_9 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001000000000");
        state_var_NS <= main_C_10;
      WHEN main_C_10 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010000000000");
        state_var_NS <= main_C_11;
      WHEN main_C_11 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100000000000");
        state_var_NS <= main_C_12;
      WHEN main_C_12 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000000000000");
        state_var_NS <= main_C_13;
      WHEN main_C_13 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000000000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000001");
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

END v27;

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

ARCHITECTURE v27 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (13 DOWNTO 0);
  SIGNAL reg_MAC_io_read_coeffs_rsc_ftd_48 : STD_LOGIC_VECTOR (463 DOWNTO 0);
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL reg_MAC_asn_87_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_86_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_85_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_84_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_83_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_82_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_81_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_80_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_79_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_78_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_77_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_76_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_75_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_74_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_73_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_72_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_71_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_70_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_69_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_68_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_67_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_66_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_65_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_64_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_63_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_MAC_asn_62_cse : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_8 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL regs_2_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_29_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_1_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_30_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_25_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_13_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_28_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_asn_90_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_26_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_itm_mx0c2 : STD_LOGIC;
  SIGNAL MAC_acc_22_mx0w0 : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL MAC_acc_4_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_30_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_19_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_31_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_32_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_3_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_4_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_8_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_11_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_12_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_15_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_20_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_23_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_24_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_17_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_2_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_14_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_27_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_or_10_nl : STD_LOGIC;
  SIGNAL MAC_acc_3_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_29_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_32_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_17_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_or_11_nl : STD_LOGIC;
  SIGNAL MAC_mux_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL or_128_nl : STD_LOGIC;
  SIGNAL MAC_mux1h_8_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux1h_9_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_19_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_20_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_21_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_22_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_23_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_24_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_25_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_26_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_27_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_28_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_29_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_30_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
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
      fsm_output : OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (13 DOWNTO 0);

  FUNCTION MUX1HOT_v_16_6_2(input_5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 4));
      result := result or ( input_4 and tmp);
      tmp := (OTHERS=>sel( 5));
      result := result or ( input_5 and tmp);
    RETURN result;
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

  FUNCTION MUX1HOT_v_30_4_2(input_3 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_30_5_2(input_4 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(4 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
      tmp := (OTHERS=>sel( 4));
      result := result or ( input_4 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_30_7_2(input_6 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(6 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
      tmp := (OTHERS=>sel( 4));
      result := result or ( input_4 and tmp);
      tmp := (OTHERS=>sel( 5));
      result := result or ( input_5 and tmp);
      tmp := (OTHERS=>sel( 6));
      result := result or ( input_6 and tmp);
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

  MAC_acc_22_mx0w0 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(MAC_acc_10_itm),
      30));
  MAC_acc_13_itm_mx0c2 <= (fsm_output(9)) OR (fsm_output(6));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(12)) = '1' ) THEN
        out1_rsci_idat <= z_out(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_85_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_85_cse <= reg_MAC_asn_84_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_84_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_84_cse <= reg_MAC_asn_83_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_83_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_83_cse <= reg_MAC_asn_82_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_81_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_81_cse <= reg_MAC_asn_80_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_82_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_82_cse <= reg_MAC_asn_81_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_79_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_79_cse <= reg_MAC_asn_78_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_80_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_80_cse <= reg_MAC_asn_79_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_78_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_78_cse <= reg_MAC_asn_77_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_77_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_77_cse <= reg_MAC_asn_76_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_75_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_75_cse <= reg_MAC_asn_74_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_76_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_76_cse <= reg_MAC_asn_75_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_73_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_73_cse <= reg_MAC_asn_72_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_74_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_74_cse <= reg_MAC_asn_73_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_72_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_72_cse <= reg_MAC_asn_71_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_71_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_71_cse <= reg_MAC_asn_70_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_69_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_69_cse <= reg_MAC_asn_68_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_70_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_70_cse <= reg_MAC_asn_69_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_67_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_67_cse <= reg_MAC_asn_66_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_68_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_68_cse <= reg_MAC_asn_67_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_66_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_66_cse <= reg_MAC_asn_65_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_65_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_65_cse <= reg_MAC_asn_64_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_63_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_63_cse <= reg_MAC_asn_62_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_64_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_64_cse <= reg_MAC_asn_63_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_2_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        regs_2_sva <= regs_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_62_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_62_cse <= regs_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_1_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        regs_1_sva <= regs_0_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_87_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_87_cse <= reg_MAC_asn_86_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_asn_86_cse <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        reg_MAC_asn_86_cse <= reg_MAC_asn_85_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsc_triosy_obj_ld <= '0';
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        MAC_asn_90_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_13_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSE
        out1_rsc_triosy_obj_ld <= fsm_output(12);
        reg_in1_rsc_triosy_obj_ld_cse <= fsm_output(0);
        MAC_asn_90_itm <= MUX_v_16_2_2(in1_rsci_idat, regs_30_sva, fsm_output(13));
        MAC_13_mul_itm <= MUX1HOT_v_30_4_2(z_out_2, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_17_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_27_nl),
            30)), STD_LOGIC_VECTOR'( MAC_or_10_nl & (fsm_output(2)) & (fsm_output(6))
            & (fsm_output(10))));
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
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        regs_30_sva <= regs_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_29_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        regs_29_sva <= reg_MAC_asn_87_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_28_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(1)) OR (fsm_output(0)) OR (fsm_output(11)) OR (fsm_output(10)))
          = '1' ) THEN
        MAC_28_mul_itm <= MUX1HOT_v_30_4_2(z_out_2, z_out_3, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_4_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_nl), 30)), STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(1)) & (fsm_output(10)) & (fsm_output(11))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_10_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(5))
          OR (fsm_output(6)) OR (fsm_output(8)) OR (fsm_output(9))) = '1' ) THEN
        MAC_acc_10_itm <= MUX1HOT_v_30_7_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_18_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_16_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_14_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_12_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(4))
            & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(8)) & (fsm_output(9))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_13_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(1)) OR (fsm_output(10)) OR (fsm_output(4)) OR (fsm_output(7))
          OR MAC_acc_13_itm_mx0c2) = '1' ) THEN
        MAC_acc_13_itm <= MUX1HOT_v_30_5_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_3_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_nl), 30)), z_out_1,
            STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(4)) & MAC_acc_13_itm_mx0c2
            & (fsm_output(7)) & (fsm_output(10))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_26_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (fsm_output(2)) = '1' ) THEN
        MAC_acc_26_itm <= z_out_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_25_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(8)) OR (fsm_output(3))) = '1' ) THEN
        MAC_acc_25_itm <= MUX_v_30_2_2(MAC_acc_22_mx0w0, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl),
            30)), fsm_output(8));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_15_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(5)) OR (fsm_output(7)) OR (fsm_output(3))) = '1' ) THEN
        MAC_acc_15_itm <= MUX1HOT_v_30_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_29_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_32_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(3)) & (fsm_output(5)) & (fsm_output(7))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_io_read_coeffs_rsc_ftd_48 <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        reg_MAC_io_read_coeffs_rsc_ftd_48 <= coeffs_rsci_d(463 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  MAC_2_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_1_sva) * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(31
      DOWNTO 16))), 30));
  MAC_acc_17_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_2_mul_nl),
      30), 30));
  MAC_14_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_72_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(223 DOWNTO 208))), 30));
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_14_mul_nl),
      30), 30));
  MAC_acc_27_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_itm) + UNSIGNED(z_out),
      30));
  MAC_or_10_nl <= (fsm_output(1)) OR (fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(7))
      OR (fsm_output(9));
  MAC_acc_4_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(MAC_28_mul_itm),
      30));
  MAC_acc_19_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_itm) + UNSIGNED(MAC_28_mul_itm),
      30));
  MAC_acc_30_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_19_nl),
      30) + UNSIGNED(MAC_acc_26_itm), 30));
  MAC_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_acc_30_nl),
      30), 30));
  MAC_31_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_30_sva) *
      SIGNED(coeffs_rsci_d(495 DOWNTO 480))), 30));
  MAC_32_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_asn_90_itm)
      * SIGNED(coeffs_rsci_d(511 DOWNTO 496))), 30));
  MAC_acc_18_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_31_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_32_mul_nl), 30), 30));
  MAC_3_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_2_sva) * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(47
      DOWNTO 32))), 30));
  MAC_4_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_62_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(63 DOWNTO 48))), 30));
  MAC_acc_16_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_3_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_4_mul_nl), 30), 30));
  MAC_8_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_66_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(127 DOWNTO 112))), 30));
  MAC_acc_14_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_8_mul_nl),
      30), 30));
  MAC_11_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_69_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(175 DOWNTO 160))), 30));
  MAC_12_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_70_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(191 DOWNTO 176))), 30));
  MAC_acc_12_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_11_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_12_mul_nl), 30), 30));
  MAC_15_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_73_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(239 DOWNTO 224))), 30));
  MAC_16_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_74_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(255 DOWNTO 240))), 30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_15_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_16_mul_nl), 30), 30));
  MAC_20_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_78_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(319 DOWNTO 304))), 30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_20_mul_nl),
      30), 30));
  MAC_23_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_81_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(367 DOWNTO 352))), 30));
  MAC_24_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(reg_MAC_asn_82_cse)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd_48(383 DOWNTO 368))), 30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_23_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_24_mul_nl), 30), 30));
  MAC_acc_3_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_8) + UNSIGNED(MAC_28_mul_itm),
      30));
  MAC_acc_13_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(z_out_5),
      30));
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_7) + UNSIGNED(z_out_6),
      30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_5),
      30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_8) + UNSIGNED(z_out_3),
      30));
  MAC_acc_15_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_7) + UNSIGNED(z_out_6),
      30));
  MAC_acc_29_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_25_itm) + UNSIGNED(z_out),
      30));
  MAC_acc_32_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_itm) + UNSIGNED(z_out_1),
      30));
  MAC_mux_16_nl <= MUX_v_30_2_2(MAC_acc_15_itm, MAC_acc_25_itm, fsm_output(10));
  MAC_or_11_nl <= (fsm_output(10)) OR (fsm_output(5));
  MAC_mux_17_nl <= MUX_v_30_2_2(MAC_28_mul_itm, MAC_acc_10_itm, MAC_or_11_nl);
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_mux_16_nl) + UNSIGNED(MAC_mux_17_nl),
      30));
  or_128_nl <= (fsm_output(9)) OR (fsm_output(6)) OR (fsm_output(2));
  MAC_mux_18_nl <= MUX_v_30_2_2(MAC_acc_22_mx0w0, MAC_acc_10_itm, or_128_nl);
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_itm) + UNSIGNED(MAC_mux_18_nl),
      30));
  MAC_mux1h_8_nl <= MUX1HOT_v_16_6_2(regs_29_sva, MAC_asn_90_itm, reg_MAC_asn_65_cse,
      reg_MAC_asn_71_cse, reg_MAC_asn_77_cse, reg_MAC_asn_83_cse, STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(1)) & (fsm_output(3)) & (fsm_output(5)) & (fsm_output(7))
      & (fsm_output(9))));
  MAC_mux1h_9_nl <= MUX1HOT_v_16_6_2((coeffs_rsci_d(479 DOWNTO 464)), (reg_MAC_io_read_coeffs_rsc_ftd_48(15
      DOWNTO 0)), (reg_MAC_io_read_coeffs_rsc_ftd_48(111 DOWNTO 96)), (reg_MAC_io_read_coeffs_rsc_ftd_48(207
      DOWNTO 192)), (reg_MAC_io_read_coeffs_rsc_ftd_48(303 DOWNTO 288)), (reg_MAC_io_read_coeffs_rsc_ftd_48(399
      DOWNTO 384)), STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(3))
      & (fsm_output(5)) & (fsm_output(7)) & (fsm_output(9))));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux1h_8_nl) * SIGNED(MAC_mux1h_9_nl)),
      30));
  MAC_mux_19_nl <= MUX_v_16_2_2(reg_MAC_asn_86_cse, reg_MAC_asn_80_cse, fsm_output(8));
  MAC_mux_20_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(447 DOWNTO 432)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(351 DOWNTO 336)), fsm_output(8));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_19_nl) * SIGNED(MAC_mux_20_nl)),
      30));
  MAC_mux_21_nl <= MUX_v_16_2_2(reg_MAC_asn_85_cse, reg_MAC_asn_67_cse, fsm_output(4));
  MAC_mux_22_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(431 DOWNTO 416)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(143 DOWNTO 128)), fsm_output(4));
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_21_nl) * SIGNED(MAC_mux_22_nl)),
      30));
  MAC_mux_23_nl <= MUX_v_16_2_2(reg_MAC_asn_68_cse, reg_MAC_asn_84_cse, fsm_output(10));
  MAC_mux_24_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(159 DOWNTO 144)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(415 DOWNTO 400)), fsm_output(10));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_23_nl) * SIGNED(MAC_mux_24_nl)),
      30));
  MAC_mux_25_nl <= MUX_v_16_2_2(reg_MAC_asn_76_cse, reg_MAC_asn_64_cse, fsm_output(3));
  MAC_mux_26_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(287 DOWNTO 272)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(95 DOWNTO 80)), fsm_output(3));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_25_nl) * SIGNED(MAC_mux_26_nl)),
      30));
  MAC_mux_27_nl <= MUX_v_16_2_2(reg_MAC_asn_75_cse, reg_MAC_asn_63_cse, fsm_output(3));
  MAC_mux_28_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(271 DOWNTO 256)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(79 DOWNTO 64)), fsm_output(3));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_27_nl) * SIGNED(MAC_mux_28_nl)),
      30));
  MAC_mux_29_nl <= MUX_v_16_2_2(reg_MAC_asn_87_cse, reg_MAC_asn_79_cse, fsm_output(8));
  MAC_mux_30_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd_48(463 DOWNTO 448)),
      (reg_MAC_io_read_coeffs_rsc_ftd_48(335 DOWNTO 320)), fsm_output(8));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_29_nl) * SIGNED(MAC_mux_30_nl)),
      30));
END v27;

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

ARCHITECTURE v27 OF fir IS
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

END v27;



