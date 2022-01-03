
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
--  Generated date: Wed Nov 10 16:36:33 2021
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
    fsm_output : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END fir_core_core_fsm;

ARCHITECTURE v9 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (main_C_0, main_C_1, main_C_2, main_C_3, main_C_4,
      main_C_5, main_C_6, main_C_7);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (state_var)
  BEGIN
    CASE state_var IS
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000010");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000100");
        state_var_NS <= main_C_3;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001000");
        state_var_NS <= main_C_4;
      WHEN main_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010000");
        state_var_NS <= main_C_5;
      WHEN main_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100000");
        state_var_NS <= main_C_6;
      WHEN main_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000000");
        state_var_NS <= main_C_7;
      WHEN main_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000001");
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

END v9;

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

ARCHITECTURE v9 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL or_tmp : STD_LOGIC;
  SIGNAL main_stage_0_2 : STD_LOGIC;
  SIGNAL reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32 : STD_LOGIC_VECTOR (223 DOWNTO
      0);
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (29 DOWNTO 0);
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
  SIGNAL MAC_1_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_2_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_3_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_4_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_5_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_6_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_7_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_8_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_9_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_10_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_11_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_12_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_13_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_14_acc_3_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_15_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_or_cse : STD_LOGIC;

  SIGNAL MAC_16_acc_2_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_10_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_15_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_15_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_3_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_4_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_25_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_26_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL or_85_nl : STD_LOGIC;
  SIGNAL MAC_mux_27_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_28_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_mux_29_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_30_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_mux_31_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_32_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_mux_33_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_34_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_mux_35_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_36_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_mux_37_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_38_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
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
      fsm_output : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (7 DOWNTO 0);

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

  FUNCTION MUX_v_17_2_2(input_0 : STD_LOGIC_VECTOR(16 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(16 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(16 DOWNTO 0);

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

  MAC_or_cse <= (fsm_output(4)) OR (fsm_output(6));
  or_tmp <= NOT((fsm_output(0)) AND main_stage_0_2);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsc_triosy_obj_ld <= '0';
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        main_stage_0_2 <= '0';
        MAC_16_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_13_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
        MAC_14_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSE
        out1_rsc_triosy_obj_ld <= NOT or_tmp;
        reg_in1_rsc_triosy_obj_ld_cse <= fsm_output(0);
        main_stage_0_2 <= '1';
        MAC_16_mul_itm <= MUX1HOT_v_30_5_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_16_mul_nl),
            30)), z_out_1, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl), 30)), MAC_acc_16_itm,
            STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) & (fsm_output(3))
            & (fsm_output(5)) & (fsm_output(7))));
        MAC_13_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_12_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_19_sva), 16), 17), 17));
        MAC_14_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_13_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_18_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( or_tmp = '0' ) THEN
        out1_rsci_idat <= MAC_16_acc_2_nl(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_7_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( MAC_or_cse = '1' ) THEN
        MAC_acc_7_itm_1 <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl), 30)), fsm_output(6));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_11_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_11_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_10_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_21_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_12_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_12_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_11_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_20_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_9_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_9_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_8_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_23_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_10_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(7))) = '1' ) THEN
        MAC_10_acc_3_itm <= MUX_v_17_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_10_acc_3_nl),
            17)), ('0' & regs_30_sva), fsm_output(7));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_7_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_7_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_6_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_25_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_8_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_8_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_7_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_24_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_5_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_5_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_4_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_27_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_6_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_6_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_5_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_26_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_3_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_3_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_1_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_29_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_4_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_4_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_3_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_28_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_1_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_1_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(in1_rsci_idat),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_10_acc_3_itm(15 DOWNTO
            0)), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_2_acc_3_itm <= STD_LOGIC_VECTOR'( "00000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        MAC_2_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_0_sva),
            16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_30_sva), 16), 17), 17));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_15_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(4))
          OR (fsm_output(6))) = '1' ) THEN
        MAC_15_mul_itm <= MUX1HOT_v_30_4_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_15_mul_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl),
            30)), z_out_1, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(1)) &
            (fsm_output(2)) & MAC_or_cse));
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
        regs_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        regs_0_sva <= in1_rsci_idat;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_15_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_15_sva <= regs_14_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_14_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_14_sva <= regs_13_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_16_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_16_sva <= regs_15_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_13_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_13_sva <= regs_12_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_17_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_17_sva <= regs_16_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_12_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_12_sva <= regs_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_18_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_18_sva <= regs_17_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_11_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_11_sva <= regs_10_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_19_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_19_sva <= regs_18_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_10_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_10_sva <= regs_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_20_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_20_sva <= regs_19_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_9_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_9_sva <= regs_8_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_21_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_21_sva <= regs_20_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_8_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_8_sva <= regs_7_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_22_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_22_sva <= regs_21_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_7_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_7_sva <= regs_6_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_23_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_23_sva <= regs_22_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_6_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_6_sva <= regs_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_24_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_24_sva <= regs_23_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_5_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_5_sva <= regs_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_25_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_25_sva <= regs_24_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_4_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_4_sva <= regs_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_26_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_26_sva <= regs_25_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_3_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_3_sva <= regs_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_27_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_27_sva <= regs_26_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_2_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_2_sva <= regs_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_28_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_28_sva <= regs_27_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_29_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_29_sva <= regs_28_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_30_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(7)) = '1' ) THEN
        regs_30_sva <= regs_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_16_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(2)) OR (fsm_output(7))) = '1' ) THEN
        MAC_acc_16_itm <= MUX_v_30_2_2(z_out_1, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl),
            30)), fsm_output(7));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32 <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32 <= coeffs_rsci_d(223 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  MAC_16_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_15_sva),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_16_sva), 16), 17), 17));
  MAC_16_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_16_acc_3_nl),
      17) * SIGNED(coeffs_rsci_d(255 DOWNTO 240))), 30));
  MAC_3_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_3_acc_3_itm)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(47 DOWNTO 32))), 30));
  MAC_4_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_4_acc_3_itm)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(63 DOWNTO 48))), 30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_3_mul_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_4_mul_nl), 30), 30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_7) + UNSIGNED(z_out_6),
      30));
  MAC_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED(MAC_16_mul_itm),
      30));
  MAC_16_acc_2_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_15_mul_itm) + CONV_SIGNED(UNSIGNED(MAC_acc_nl),
      30), 30));
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2) + UNSIGNED(z_out_3),
      30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2) + UNSIGNED(z_out_3),
      30));
  MAC_10_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_9_sva),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_22_sva), 16), 17), 17));
  MAC_15_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_14_sva),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(regs_17_sva), 16), 17), 17));
  MAC_15_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_15_acc_3_nl),
      17) * SIGNED(coeffs_rsci_d(239 DOWNTO 224))), 30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_4) + UNSIGNED(z_out_5),
      30));
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_6) + UNSIGNED(z_out_7),
      30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_5) + UNSIGNED(z_out_4),
      30));
  MAC_mux_25_nl <= MUX_v_30_2_2(MAC_acc_16_itm, MAC_16_mul_itm, fsm_output(6));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_itm_1) + UNSIGNED(MAC_mux_25_nl),
      30));
  or_85_nl <= (fsm_output(4)) OR (fsm_output(2)) OR (fsm_output(1));
  MAC_mux_26_nl <= MUX_v_30_2_2(z_out, MAC_16_mul_itm, or_85_nl);
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_15_mul_itm) + UNSIGNED(MAC_mux_26_nl),
      30));
  MAC_mux_27_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(79 DOWNTO
      64)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(143 DOWNTO 128)), fsm_output(6));
  MAC_mux_28_nl <= MUX_v_17_2_2(MAC_5_acc_3_itm, MAC_9_acc_3_itm, fsm_output(6));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_27_nl) * SIGNED(MAC_mux_28_nl)),
      30));
  MAC_mux_29_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(95 DOWNTO
      80)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(159 DOWNTO 144)), fsm_output(6));
  MAC_mux_30_nl <= MUX_v_17_2_2(MAC_6_acc_3_itm, MAC_10_acc_3_itm, fsm_output(6));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_29_nl) * SIGNED(MAC_mux_30_nl)),
      30));
  MAC_mux_31_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(207
      DOWNTO 192)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(191 DOWNTO 176)),
      fsm_output(7));
  MAC_mux_32_nl <= MUX_v_17_2_2(MAC_13_acc_3_itm, MAC_12_acc_3_itm, fsm_output(7));
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_31_nl) * SIGNED(MAC_mux_32_nl)),
      30));
  MAC_mux_33_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(223
      DOWNTO 208)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(175 DOWNTO 160)),
      fsm_output(7));
  MAC_mux_34_nl <= MUX_v_17_2_2(MAC_14_acc_3_itm, MAC_11_acc_3_itm, fsm_output(7));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_33_nl) * SIGNED(MAC_mux_34_nl)),
      30));
  MAC_mux_35_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(15 DOWNTO
      0)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(127 DOWNTO 112)), fsm_output(5));
  MAC_mux_36_nl <= MUX_v_17_2_2(MAC_1_acc_3_itm, MAC_8_acc_3_itm, fsm_output(5));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_35_nl) * SIGNED(MAC_mux_36_nl)),
      30));
  MAC_mux_37_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(31 DOWNTO
      16)), (reg_MAC_io_read_coeffs_rsc_cse_255_0_ftd_32(111 DOWNTO 96)), fsm_output(5));
  MAC_mux_38_nl <= MUX_v_17_2_2(MAC_2_acc_3_itm, MAC_7_acc_3_itm, fsm_output(5));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_37_nl) * SIGNED(MAC_mux_38_nl)),
      30));
END v9;

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

ARCHITECTURE v9 OF fir IS
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

END v9;



