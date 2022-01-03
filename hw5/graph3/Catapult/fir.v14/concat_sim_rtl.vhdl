
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


--------> /package/eda/mg/Catapult_10.3d/Mgc_home/pkgs/ccs_altera/hdl/M10K_DP.vhd 
-- Memory Type:            M10K
-- Operating Mode:         Simple Dual Port (2-PORT)
-- Clock Mode:             Single Clock

-- RTL Code RW Resolution: write-thru 
-- Hardware RW Resolution: dont care 
-- Catapult RW Resolution: unknown 

-- HDL Work Library:       Altera_RAMS_lib
-- Component Name:         M10K_DP

LIBRARY IEEE;

  USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE M10K_DP_pkg IS
  COMPONENT M10K_DP
    GENERIC (
      data_width : INTEGER := 8;
      addr_width : INTEGER := 7;
      depth      : INTEGER := 128
    );
    PORT (
      clk  : IN  STD_LOGIC;                                -- Rising edge clock
      adra : IN  STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);  -- Port A - Address
      adrb : IN  STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);  -- Port B - Address
      wea  : IN  STD_LOGIC;                                -- Port A - Write-enable active high
      web  : IN  STD_LOGIC;                                -- Port B - Write-enable active high
      da   : IN  STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port A - Data In
      db   : IN  STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port B - Data In
      rea  : IN  STD_LOGIC;                                -- Port A - Read-enable active high
      reb  : IN  STD_LOGIC;                                -- Port B - Read-enable active high
      qa   : OUT STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port A - Data Out
      qb   : OUT STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)   -- Port B - Data Out
    );
  END COMPONENT;
END M10K_DP_pkg;

LIBRARY IEEE;

  USE IEEE.STD_LOGIC_1164.ALL;
  USE IEEE.Numeric_Std.ALL;

USE work.M10K_DP_pkg.ALL;

ENTITY M10K_DP IS
    GENERIC (
      data_width : INTEGER := 8;
      addr_width : INTEGER := 7;
      depth      : INTEGER := 128
    );
    PORT (
      clk  : IN  STD_LOGIC;                                -- Rising edge clock
      adra : IN  STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);  -- Port A - Address
      adrb : IN  STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);  -- Port B - Address
      wea  : IN  STD_LOGIC;                                -- Port A - Write-enable active high
      web  : IN  STD_LOGIC;                                -- Port B - Write-enable active high
      da   : IN  STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port A - Data In
      db   : IN  STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port B - Data In
      rea  : IN  STD_LOGIC;                                -- Port A - Read-enable active high
      reb  : IN  STD_LOGIC;                                -- Port B - Read-enable active high
      qa   : OUT STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);  -- Port A - Data Out
      qb   : OUT STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)   -- Port B - Data Out
    );
END M10K_DP;

ARCHITECTURE rtl OF M10K_DP IS

  TYPE ram_t IS ARRAY (depth-1 downto 0) OF STD_LOGIC_VECTOR(data_width-1  downto 0);
  SIGNAL mem : ram_t := (OTHERS => (OTHERS => '0'));

  ATTRIBUTE ramstyle: STRING;
  ATTRIBUTE ramstyle OF mem : SIGNAL IS "no_rw_check, M10K";
  ATTRIBUTE syn_ramstyle: STRING;
  ATTRIBUTE syn_ramstyle OF mem : SIGNAL IS "no_rw_check, M10K";
BEGIN

  PROCESS (clk)
  BEGIN
    IF (rising_edge(clk)) THEN
      IF (wea='1') THEN
        mem(to_integer(unsigned(adra))) <= da;
      END IF;
      IF (rea='1') THEN
        qa <= mem(to_integer(unsigned(adra)));
      END IF;
    END IF;
  END PROCESS;

  PROCESS (clk)
  begin
    IF (rising_edge(clk)) THEN
      IF (web='1') THEN
        mem(to_integer(unsigned(adrb))) <= db;
      END IF;
      IF (reb='1') THEN
        qb <= mem(to_integer(unsigned(adrb))) ; 
      END IF;
    END IF;
  END PROCESS;

END rtl;


--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.3d/815731 Production Release
--  HLS Date:       Wed Apr 24 14:54:19 PDT 2019
-- 
--  Generated by:   695r48@ecegrid-thin4.ecn.purdue.edu
--  Generated date: Wed Nov 10 15:57:11 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.mgc_in_wire_pkg_v2.ALL;
USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;

USE work.M10K_DP_pkg.ALL;


ENTITY fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen IS
  PORT(
    qb : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    reb : OUT STD_LOGIC;
    db : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    web : OUT STD_LOGIC;
    adrb : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    qa : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    rea : OUT STD_LOGIC;
    da : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    wea : OUT STD_LOGIC;
    adra : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    adra_d : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
    wea_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    da_d : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    rea_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    qa_d : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    rwportA_rw_ram_ir_internal_RMASK_B_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    rwportA_rw_ram_ir_internal_WMASK_B_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0)
  );
END fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen;

ARCHITECTURE v14 OF fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen IS
  -- Default Constants

BEGIN
  qa_d(31 DOWNTO 16) <= qb;
  reb <= (rwportA_rw_ram_ir_internal_RMASK_B_d(1));
  db <= (da_d(31 DOWNTO 16));
  web <= (rwportA_rw_ram_ir_internal_WMASK_B_d(1));
  adrb <= (adra_d(9 DOWNTO 5));
  qa_d(15 DOWNTO 0) <= qa;
  rea <= (rwportA_rw_ram_ir_internal_RMASK_B_d(0));
  da <= (da_d(15 DOWNTO 0));
  wea <= (rwportA_rw_ram_ir_internal_WMASK_B_d(0));
  adra <= (adra_d(4 DOWNTO 0));
END v14;

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

USE work.M10K_DP_pkg.ALL;


ENTITY fir_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (37 DOWNTO 0);
    regs_vinit_C_1_tr0 : IN STD_LOGIC
  );
END fir_core_core_fsm;

ARCHITECTURE v14 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (core_rlp_C_0, regs_vinit_C_0, regs_vinit_C_1, main_C_0,
      main_C_1, main_C_2, main_C_3, main_C_4, main_C_5, main_C_6, main_C_7, main_C_8,
      main_C_9, main_C_10, main_C_11, main_C_12, main_C_13, main_C_14, main_C_15,
      main_C_16, main_C_17, main_C_18, main_C_19, main_C_20, main_C_21, main_C_22,
      main_C_23, main_C_24, main_C_25, main_C_26, main_C_27, main_C_28, main_C_29,
      main_C_30, main_C_31, main_C_32, main_C_33, main_C_34);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (regs_vinit_C_1_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN regs_vinit_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000000010");
        state_var_NS <= regs_vinit_C_1;
      WHEN regs_vinit_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000000100");
        IF ( regs_vinit_C_1_tr0 = '1' ) THEN
          state_var_NS <= regs_vinit_C_0;
        ELSE
          state_var_NS <= main_C_0;
        END IF;
      WHEN main_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000001000");
        state_var_NS <= main_C_1;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000010000");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000100000");
        state_var_NS <= main_C_3;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000001000000");
        state_var_NS <= main_C_4;
      WHEN main_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000010000000");
        state_var_NS <= main_C_5;
      WHEN main_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000100000000");
        state_var_NS <= main_C_6;
      WHEN main_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000001000000000");
        state_var_NS <= main_C_7;
      WHEN main_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000010000000000");
        state_var_NS <= main_C_8;
      WHEN main_C_8 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000100000000000");
        state_var_NS <= main_C_9;
      WHEN main_C_9 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000001000000000000");
        state_var_NS <= main_C_10;
      WHEN main_C_10 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000010000000000000");
        state_var_NS <= main_C_11;
      WHEN main_C_11 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000100000000000000");
        state_var_NS <= main_C_12;
      WHEN main_C_12 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000001000000000000000");
        state_var_NS <= main_C_13;
      WHEN main_C_13 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000010000000000000000");
        state_var_NS <= main_C_14;
      WHEN main_C_14 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000100000000000000000");
        state_var_NS <= main_C_15;
      WHEN main_C_15 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000001000000000000000000");
        state_var_NS <= main_C_16;
      WHEN main_C_16 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000010000000000000000000");
        state_var_NS <= main_C_17;
      WHEN main_C_17 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000100000000000000000000");
        state_var_NS <= main_C_18;
      WHEN main_C_18 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000001000000000000000000000");
        state_var_NS <= main_C_19;
      WHEN main_C_19 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000010000000000000000000000");
        state_var_NS <= main_C_20;
      WHEN main_C_20 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000100000000000000000000000");
        state_var_NS <= main_C_21;
      WHEN main_C_21 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000001000000000000000000000000");
        state_var_NS <= main_C_22;
      WHEN main_C_22 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000010000000000000000000000000");
        state_var_NS <= main_C_23;
      WHEN main_C_23 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000100000000000000000000000000");
        state_var_NS <= main_C_24;
      WHEN main_C_24 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000001000000000000000000000000000");
        state_var_NS <= main_C_25;
      WHEN main_C_25 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000010000000000000000000000000000");
        state_var_NS <= main_C_26;
      WHEN main_C_26 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000100000000000000000000000000000");
        state_var_NS <= main_C_27;
      WHEN main_C_27 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000001000000000000000000000000000000");
        state_var_NS <= main_C_28;
      WHEN main_C_28 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000010000000000000000000000000000000");
        state_var_NS <= main_C_29;
      WHEN main_C_29 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000100000000000000000000000000000000");
        state_var_NS <= main_C_30;
      WHEN main_C_30 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001000000000000000000000000000000000");
        state_var_NS <= main_C_31;
      WHEN main_C_31 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010000000000000000000000000000000000");
        state_var_NS <= main_C_32;
      WHEN main_C_32 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100000000000000000000000000000000000");
        state_var_NS <= main_C_33;
      WHEN main_C_33 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000000000000000000000000000000000000");
        state_var_NS <= main_C_34;
      WHEN main_C_34 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000000000000000000000000000000000000");
        state_var_NS <= main_C_0;
      -- core_rlp_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000000001");
        state_var_NS <= regs_vinit_C_0;
    END CASE;
  END PROCESS fir_core_core_fsm_1;

  fir_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= core_rlp_C_0;
      ELSE
        state_var <= state_var_NS;
      END IF;
    END IF;
  END PROCESS fir_core_core_fsm_1_REG;

END v14;

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

USE work.M10K_DP_pkg.ALL;


ENTITY fir_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    coeffs_rsc_z : IN STD_LOGIC_VECTOR (511 DOWNTO 0);
    coeffs_rsc_triosy_lz : OUT STD_LOGIC;
    in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    in1_rsc_triosy_lz : OUT STD_LOGIC;
    out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    out1_rsc_triosy_lz : OUT STD_LOGIC;
    regs_rsci_adra_d : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
    regs_rsci_wea_d : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    regs_rsci_da_d : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    regs_rsci_rea_d : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    regs_rsci_qa_d : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d : OUT STD_LOGIC_VECTOR (1 DOWNTO
        0);
    regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d : OUT STD_LOGIC_VECTOR (1 DOWNTO
        0)
  );
END fir_core;

ARCHITECTURE v14 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (37 DOWNTO 0);
  SIGNAL regs_regs_nor_tmp : STD_LOGIC;
  SIGNAL or_dcpl_36 : STD_LOGIC;
  SIGNAL or_dcpl_39 : STD_LOGIC;
  SIGNAL or_dcpl_41 : STD_LOGIC;
  SIGNAL or_tmp_35 : STD_LOGIC;
  SIGNAL or_tmp_87 : STD_LOGIC;
  SIGNAL wptr_4_0_27_lpi_1_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_12_lpi_1_dfm_mx0w1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_9_lpi_1_dfm_mx0w4 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_8_lpi_1_dfm_mx0w2 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_13_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_2_lpi_1_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_acc_itm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_32_itm : STD_LOGIC;
  SIGNAL wptr_4_0_10_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_25_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_regs_nor_itm : STD_LOGIC;
  SIGNAL wptr_4_0_1_lpi_1_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_10_lpi_1_dfm_mx0w1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL reg_MAC_io_read_coeffs_rsc_ftd : STD_LOGIC_VECTOR (495 DOWNTO 0);
  SIGNAL or_67_seb : STD_LOGIC;
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL MAC_MAC_or_30_cse : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_and_cse : STD_LOGIC;
  SIGNAL or_64_cse : STD_LOGIC;
  SIGNAL regs_regs_or_rmff : STD_LOGIC;
  SIGNAL wptr_4_0_12_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_14_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_17_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_19_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_27_lpi_1_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsci_adra_d_mx0c9 : STD_LOGIC;
  SIGNAL regs_rsci_adra_d_mx0c10 : STD_LOGIC;
  SIGNAL or_193_tmp : STD_LOGIC;
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_8 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_9 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_10 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_11 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_25_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_9_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_12_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_13_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_31_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_5 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_8 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_6 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_9 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_7 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_8 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_10 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_9 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_11 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_12 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_31_16_itm_13 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_11 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_12 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_13 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL wptr_4_0_10_lpi_1_dfm_mx0c1 : STD_LOGIC;
  SIGNAL wptr_4_0_12_lpi_1_dfm_mx0c3 : STD_LOGIC;
  SIGNAL wptr_4_0_14_lpi_1_dfm_mx0c0 : STD_LOGIC;
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1 : STD_LOGIC;
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1 : STD_LOGIC;
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1 : STD_LOGIC;
  SIGNAL MAC_9_mul_itm_mx0c3 : STD_LOGIC;
  SIGNAL MAC_MAC_nor_64_cse : STD_LOGIC;

  SIGNAL mux_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL and_366_nl : STD_LOGIC;
  SIGNAL not_153_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_32_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_40_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_42_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_57_nl : STD_LOGIC;
  SIGNAL or_90_nl : STD_LOGIC;
  SIGNAL mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux1h_19_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux1h_20_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_13_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_10_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_or_nl : STD_LOGIC;
  SIGNAL MAC_or_25_nl : STD_LOGIC;
  SIGNAL MAC_else_acc_1_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_else_mux1h_1_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL or_242_nl : STD_LOGIC;
  SIGNAL wptr_or_11_nl : STD_LOGIC;
  SIGNAL MAC_2_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_4_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_3_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_8_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_11_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_20_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_24_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_28_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_32_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_30_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_26_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_or_24_nl : STD_LOGIC;
  SIGNAL MAC_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_else_mux_1_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_acc_3_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_28_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_2_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_31_nl : STD_LOGIC;
  SIGNAL MAC_10_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_62_nl : STD_LOGIC;
  SIGNAL MAC_9_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_60_nl : STD_LOGIC;
  SIGNAL MAC_12_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_27_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_mux1h_1_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_or_1_nl : STD_LOGIC;
  SIGNAL regs_or_2_nl : STD_LOGIC;
  SIGNAL regs_or_3_nl : STD_LOGIC;
  SIGNAL regs_or_4_nl : STD_LOGIC;
  SIGNAL regs_mux1h_4_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_or_5_nl : STD_LOGIC;
  SIGNAL regs_or_6_nl : STD_LOGIC;
  SIGNAL regs_or_7_nl : STD_LOGIC;
  SIGNAL regs_or_8_nl : STD_LOGIC;
  SIGNAL MAC_mux1h_18_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL or_239_nl : STD_LOGIC;
  SIGNAL or_240_nl : STD_LOGIC;
  SIGNAL or_241_nl : STD_LOGIC;
  SIGNAL MAC_mux_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux1h_21_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_or_27_nl : STD_LOGIC;
  SIGNAL MAC_or_28_nl : STD_LOGIC;
  SIGNAL MAC_mux1h_22_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_17_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_18_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_19_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_20_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_21_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_22_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_23_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
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
      fsm_output : OUT STD_LOGIC_VECTOR (37 DOWNTO 0);
      regs_vinit_C_1_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (37 DOWNTO 0);
  SIGNAL fir_core_core_fsm_inst_regs_vinit_C_1_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX1HOT_s_1_4_2(input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_16_3_2(input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
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
    RETURN result;
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

  FUNCTION MUX1HOT_v_16_8_2(input_7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(7 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 6));
      result := result or ( input_6 and tmp);
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_30_12_2(input_11 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(29 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(11 DOWNTO 0))
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
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
      tmp := (OTHERS=>sel( 8));
      result := result or ( input_8 and tmp);
      tmp := (OTHERS=>sel( 9));
      result := result or ( input_9 and tmp);
      tmp := (OTHERS=>sel( 10));
      result := result or ( input_10 and tmp);
      tmp := (OTHERS=>sel( 11));
      result := result or ( input_11 and tmp);
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

  FUNCTION MUX1HOT_v_5_3_2(input_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_5_4_2(input_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);

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

  FUNCTION MUX1HOT_v_5_8_2(input_7 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(7 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);

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
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_5_9_2(input_8 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(8 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);

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
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
      tmp := (OTHERS=>sel( 8));
      result := result or ( input_8 and tmp);
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

  FUNCTION MUX_v_5_2_2(input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);

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
      fsm_output => fir_core_core_fsm_inst_fsm_output,
      regs_vinit_C_1_tr0 => fir_core_core_fsm_inst_regs_vinit_C_1_tr0
    );
  fsm_output <= fir_core_core_fsm_inst_fsm_output;
  fir_core_core_fsm_inst_regs_vinit_C_1_tr0 <= NOT regs_regs_nor_itm;

  or_64_cse <= (fsm_output(1)) OR (fsm_output(3));
  regs_and_cse <= (fsm_output(2)) AND regs_regs_nor_itm;
  or_193_tmp <= regs_and_cse OR (CONV_SL_1_1(regs_acc_itm=STD_LOGIC_VECTOR'("11111"))
      AND (fsm_output(3)));
  MAC_else_mux_1_nl <= MUX_v_5_2_2(wptr_4_0_10_lpi_1_dfm, wptr_4_0_25_lpi_1_dfm,
      fsm_output(13));
  MAC_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_else_mux_1_nl) +
      UNSIGNED'( "11111"), 5));
  MAC_MAC_or_30_cse <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_32_itm);
  regs_regs_nor_tmp <= NOT(CONV_SL_1_1(regs_acc_itm/=STD_LOGIC_VECTOR'("00000")));
  MAC_2_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_4_0_1_lpi_1_dfm_1)
      + UNSIGNED'( "11111"), 5));
  MAC_MAC_nor_31_nl <= NOT(CONV_SL_1_1(wptr_4_0_1_lpi_1_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_2_lpi_1_dfm_1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_2_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_31_nl);
  wptr_4_0_1_lpi_1_dfm_1 <= MUX_v_5_2_2(z_out_2, STD_LOGIC_VECTOR'("11111"), regs_regs_nor_tmp);
  MAC_10_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_4_0_9_lpi_1_dfm_mx0w4)
      + UNSIGNED'( "11111"), 5));
  MAC_MAC_nor_62_nl <= NOT(CONV_SL_1_1(wptr_4_0_9_lpi_1_dfm_mx0w4/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_10_lpi_1_dfm_mx0w1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_10_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_62_nl);
  wptr_4_0_8_lpi_1_dfm_mx0w2 <= MUX_v_5_2_2(wptr_4_0_13_sva_1, STD_LOGIC_VECTOR'("11111"),
      MAC_MAC_nor_32_itm);
  MAC_9_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_4_0_8_lpi_1_dfm_mx0w2)
      + UNSIGNED'( "11111"), 5));
  MAC_MAC_nor_60_nl <= NOT(CONV_SL_1_1(wptr_4_0_8_lpi_1_dfm_mx0w2/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_9_lpi_1_dfm_mx0w4 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_9_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_60_nl);
  MAC_MAC_nor_64_cse <= NOT(CONV_SL_1_1(MAC_MAC_or_30_cse/=STD_LOGIC_VECTOR'("00000")));
  MAC_12_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_MAC_or_30_cse)
      + UNSIGNED'( "11111"), 5));
  wptr_4_0_12_lpi_1_dfm_mx0w1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_12_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_64_cse);
  MAC_27_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_MAC_or_30_cse)
      + UNSIGNED'( "11111"), 5));
  wptr_4_0_27_lpi_1_dfm_1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_27_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_64_cse);
  or_dcpl_36 <= (fsm_output(8)) OR (fsm_output(10));
  or_dcpl_39 <= (fsm_output(14)) OR (fsm_output(4)) OR (fsm_output(6));
  or_dcpl_41 <= (fsm_output(9)) OR (fsm_output(11));
  or_tmp_35 <= (fsm_output(5)) OR (fsm_output(7)) OR or_dcpl_41;
  or_tmp_87 <= (fsm_output(6)) OR (fsm_output(12));
  regs_rsci_adra_d_mx0c9 <= (fsm_output(14)) OR (fsm_output(11));
  regs_rsci_adra_d_mx0c10 <= (fsm_output(16)) OR (fsm_output(12));
  wptr_4_0_10_lpi_1_dfm_mx0c1 <= or_dcpl_39 OR or_dcpl_36;
  wptr_4_0_12_lpi_1_dfm_mx0c3 <= (fsm_output(14)) OR (fsm_output(10)) OR (fsm_output(12));
  wptr_4_0_14_lpi_1_dfm_mx0c0 <= (fsm_output(5)) OR (fsm_output(11));
  MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1 <= (fsm_output(16)) OR (fsm_output(6)) OR
      (fsm_output(7)) OR (fsm_output(10));
  MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1 <= (fsm_output(19)) OR (fsm_output(8));
  MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1 <= (fsm_output(17)) OR (fsm_output(9));
  MAC_9_mul_itm_mx0c3 <= (fsm_output(31)) OR (fsm_output(23));
  regs_regs_or_rmff <= (fsm_output(3)) OR or_67_seb;
  or_67_seb <= CONV_SL_1_1(fsm_output(18 DOWNTO 4)/=STD_LOGIC_VECTOR'("000000000000000"));
  regs_or_1_nl <= (fsm_output(4)) OR (fsm_output(5)) OR (fsm_output(10));
  regs_or_2_nl <= (fsm_output(6)) OR (fsm_output(9));
  regs_or_3_nl <= (fsm_output(7)) OR regs_rsci_adra_d_mx0c9;
  regs_or_4_nl <= (fsm_output(8)) OR regs_rsci_adra_d_mx0c10;
  regs_mux1h_1_nl <= MUX1HOT_v_5_9_2(wptr_4_0_1_lpi_1_dfm_1, wptr_4_0_10_lpi_1_dfm,
      wptr_4_0_12_lpi_1_dfm, wptr_4_0_14_lpi_1_dfm, wptr_4_0_17_lpi_1_dfm, wptr_4_0_19_lpi_1_dfm,
      wptr_4_0_25_lpi_1_dfm, wptr_4_0_27_lpi_1_dfm, wptr_4_0_13_sva_1, STD_LOGIC_VECTOR'(
      (fsm_output(3)) & regs_or_1_nl & regs_or_2_nl & regs_or_3_nl & regs_or_4_nl
      & (fsm_output(13)) & (fsm_output(15)) & (fsm_output(17)) & (fsm_output(18))));
  regs_or_5_nl <= (fsm_output(4)) OR (fsm_output(6));
  regs_or_6_nl <= (fsm_output(5)) OR (fsm_output(7));
  regs_or_7_nl <= (fsm_output(8)) OR (fsm_output(13)) OR (fsm_output(18));
  regs_or_8_nl <= (fsm_output(10)) OR regs_rsci_adra_d_mx0c9 OR regs_rsci_adra_d_mx0c10;
  regs_mux1h_4_nl <= MUX1HOT_v_5_8_2(regs_acc_itm, wptr_4_0_8_lpi_1_dfm_mx0w2, MAC_MAC_or_30_cse,
      wptr_4_0_10_lpi_1_dfm, wptr_4_0_13_sva_1, wptr_4_0_12_lpi_1_dfm, wptr_4_0_19_lpi_1_dfm,
      wptr_4_0_14_lpi_1_dfm, STD_LOGIC_VECTOR'( or_64_cse & regs_or_5_nl & regs_or_6_nl
      & regs_or_7_nl & (fsm_output(9)) & regs_or_8_nl & (fsm_output(15)) & (fsm_output(17))));
  regs_rsci_adra_d <= regs_mux1h_1_nl & regs_mux1h_4_nl;
  regs_rsci_wea_d <= STD_LOGIC_VECTOR'( '0' & or_64_cse);
  regs_rsci_rea_d <= STD_LOGIC_VECTOR'( regs_regs_or_rmff & or_67_seb);
  regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d <= STD_LOGIC_VECTOR'( regs_regs_or_rmff
      & or_67_seb);
  regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d <= STD_LOGIC_VECTOR'( '0' & or_64_cse);
  regs_rsci_da_d <= MUX_v_16_2_2(STD_LOGIC_VECTOR'("0000000000000000"), in1_rsci_idat,
      (fsm_output(3)));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsc_triosy_obj_ld <= '0';
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        regs_regs_nor_itm <= '0';
        MAC_MAC_nor_32_itm <= '0';
      ELSE
        out1_rsc_triosy_obj_ld <= fsm_output(36);
        reg_in1_rsc_triosy_obj_ld_cse <= fsm_output(3);
        regs_regs_nor_itm <= regs_regs_nor_tmp;
        MAC_MAC_nor_32_itm <= MUX1HOT_s_1_4_2(MAC_MAC_nor_32_nl, MAC_MAC_nor_40_nl,
            MAC_MAC_nor_42_nl, MAC_MAC_nor_57_nl, STD_LOGIC_VECTOR'( (fsm_output(3))
            & or_90_nl & or_tmp_35 & (fsm_output(13))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(36)) = '1' ) THEN
        out1_rsci_idat <= z_out(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_acc_itm <= STD_LOGIC_VECTOR'( "11111");
      ELSIF ( (regs_and_cse OR (fsm_output(1)) OR (fsm_output(3))) = '1' ) THEN
        regs_acc_itm <= MUX_v_5_2_2(STD_LOGIC_VECTOR'("00000"), mux_nl, not_153_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_13_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(33)) OR (fsm_output(19)) OR (fsm_output(21)) OR (fsm_output(25))
          OR (fsm_output(27)) OR (fsm_output(29)) OR (fsm_output(31)) OR (fsm_output(17))
          OR (fsm_output(15)) OR (fsm_output(23)) OR (fsm_output(13)) OR (fsm_output(5))
          OR (fsm_output(3)) OR (fsm_output(7))) = '1' ) THEN
        MAC_13_mul_itm <= MUX1HOT_v_30_7_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mul_nl),
            30)), z_out, z_out_6, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_nl),
            30)), z_out_7, z_out_8, z_out_9, STD_LOGIC_VECTOR'( MAC_or_nl & (fsm_output(5))
            & MAC_or_25_nl & (fsm_output(13)) & (fsm_output(19)) & (fsm_output(27))
            & (fsm_output(31))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_10_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(3)) OR wptr_4_0_10_lpi_1_dfm_mx0c1) = '1' ) THEN
        wptr_4_0_10_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_2_lpi_1_dfm_1, wptr_4_0_10_lpi_1_dfm_mx0w1,
            wptr_4_0_10_lpi_1_dfm_mx0c1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_13_sva_1 <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(14)) OR (fsm_output(13)) OR (fsm_output(8)) OR (fsm_output(3))
          OR or_tmp_35) = '1' ) THEN
        wptr_4_0_13_sva_1 <= MUX1HOT_v_5_3_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_else_acc_1_nl),
            5)), wptr_4_0_8_lpi_1_dfm_mx0w2, wptr_4_0_9_lpi_1_dfm_mx0w4, STD_LOGIC_VECTOR'(
            wptr_or_11_nl & (fsm_output(8)) & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_12_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(35)) OR (fsm_output(18)) OR (fsm_output(22)) OR (fsm_output(26))
          OR (fsm_output(30)) OR (fsm_output(34)) OR (fsm_output(14)) OR (fsm_output(4))
          OR (fsm_output(5)) OR (fsm_output(6)) OR (fsm_output(11)) OR (fsm_output(8))
          OR (fsm_output(12))) = '1' ) THEN
        MAC_12_mul_itm <= MUX1HOT_v_30_12_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_2_mul_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_4_mul_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_16_nl),
            30)), z_out_6, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_14_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_12_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_4_nl), 30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_18_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_nl), 30)), STD_LOGIC_VECTOR'(
            (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & MAC_or_24_nl &
            (fsm_output(11)) & (fsm_output(14)) & (fsm_output(18)) & (fsm_output(22))
            & (fsm_output(26)) & (fsm_output(30)) & (fsm_output(34)) & (fsm_output(35))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_12_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(7)) OR (fsm_output(4)) OR or_dcpl_41 OR wptr_4_0_12_lpi_1_dfm_mx0c3)
          = '1' ) THEN
        wptr_4_0_12_lpi_1_dfm <= MUX1HOT_v_5_4_2(wptr_4_0_9_lpi_1_dfm_mx0w4, wptr_4_0_12_lpi_1_dfm_mx0w1,
            MAC_MAC_or_30_cse, wptr_4_0_8_lpi_1_dfm_mx0w2, STD_LOGIC_VECTOR'( (fsm_output(4))
            & (fsm_output(7)) & or_dcpl_41 & wptr_4_0_12_lpi_1_dfm_mx0c3));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_14_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(15)) OR (fsm_output(8)) OR wptr_4_0_14_lpi_1_dfm_mx0c0)
          = '1' ) THEN
        wptr_4_0_14_lpi_1_dfm <= MUX1HOT_v_5_3_2(wptr_4_0_12_lpi_1_dfm_mx0w1, wptr_4_0_9_lpi_1_dfm_mx0w4,
            MAC_MAC_or_30_cse, STD_LOGIC_VECTOR'( wptr_4_0_14_lpi_1_dfm_mx0c0 & (fsm_output(8))
            & (fsm_output(15))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(5)) OR MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1) = '1' )
          THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), MAC_slc_regs_rsci_qa_d_15_0_itm_mx0c1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_17_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(9)) OR or_tmp_87) = '1' ) THEN
        wptr_4_0_17_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_9_lpi_1_dfm_mx0w4, wptr_4_0_12_lpi_1_dfm_mx0w1,
            fsm_output(9));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_12 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (or_tmp_87 OR MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_12 <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), MAC_slc_regs_rsci_qa_d_15_0_itm_12_mx0c1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_25_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(32)) OR (fsm_output(7)) OR (fsm_output(12))) = '1' ) THEN
        MAC_acc_25_itm <= MUX1HOT_v_30_3_2(z_out, z_out_1, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_3_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(7)) & (fsm_output(12)) & (fsm_output(32))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_11 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(7)) OR MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1) = '1'
          ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_11 <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), MAC_slc_regs_rsci_qa_d_15_0_itm_11_mx0c1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_13 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(18)) OR (fsm_output(8)) OR (fsm_output(11))) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_13 <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), fsm_output(18));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_15_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(27)) OR (fsm_output(15)) OR (fsm_output(24)) OR (fsm_output(9)))
          = '1' ) THEN
        MAC_acc_15_itm <= MUX1HOT_v_30_4_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_nl),
            30)), z_out, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl), 30)),
            z_out_1, STD_LOGIC_VECTOR'( (fsm_output(9)) & (fsm_output(15)) & (fsm_output(24))
            & (fsm_output(27))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_7 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(14)) OR (fsm_output(9))) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_7 <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), fsm_output(14));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_19_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(13)) OR (fsm_output(10))) = '1' ) THEN
        wptr_4_0_19_lpi_1_dfm <= MUX_v_5_2_2(wptr_4_0_9_lpi_1_dfm_mx0w4, MAC_MAC_or_30_cse,
            fsm_output(13));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_9_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(28)) OR (fsm_output(20)) OR (fsm_output(16)) OR (fsm_output(10))
          OR MAC_9_mul_itm_mx0c3) = '1' ) THEN
        MAC_9_mul_itm <= MUX1HOT_v_30_5_2(z_out_11, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl), 30)), z_out,
            STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl), 30)), STD_LOGIC_VECTOR'(
            (fsm_output(10)) & (fsm_output(16)) & (fsm_output(20)) & MAC_9_mul_itm_mx0c3
            & (fsm_output(28))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_9 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(15)) OR (fsm_output(10))) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_9 <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), fsm_output(15));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_5 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( ((fsm_output(19)) OR (fsm_output(11))) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_5 <= MUX_v_16_2_2((regs_rsci_qa_d(15 DOWNTO
            0)), (regs_rsci_qa_d(31 DOWNTO 16)), fsm_output(19));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_25_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( (fsm_output(12)) = '1' ) THEN
        wptr_4_0_25_lpi_1_dfm <= wptr_4_0_10_lpi_1_dfm_mx0w1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_6 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(12)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_6 <= regs_rsci_qa_d(15 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_27_lpi_1_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        wptr_4_0_27_lpi_1_dfm <= wptr_4_0_27_lpi_1_dfm_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_8 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_itm_8 <= regs_rsci_qa_d(15 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_8 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(13)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_8 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_9 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(14)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_9 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_10 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_10 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_12 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(16)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_12 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_11 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(17)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_11 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_13 <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(18)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_31_16_itm_13 <= regs_rsci_qa_d(31 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_31_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( (fsm_output(19)) = '1' ) THEN
        MAC_acc_31_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_25_itm)
            + CONV_UNSIGNED(UNSIGNED(MAC_acc_28_nl), 30), 30));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_io_read_coeffs_rsc_ftd <= STD_LOGIC_VECTOR'( "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(3)) = '1' ) THEN
        reg_MAC_io_read_coeffs_rsc_ftd <= coeffs_rsci_d(511 DOWNTO 16);
      END IF;
    END IF;
  END PROCESS;
  MAC_MAC_nor_32_nl <= NOT(CONV_SL_1_1(wptr_4_0_2_lpi_1_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_nor_40_nl <= NOT(CONV_SL_1_1(wptr_4_0_10_lpi_1_dfm_mx0w1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_nor_42_nl <= NOT(CONV_SL_1_1(wptr_4_0_12_lpi_1_dfm_mx0w1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_nor_57_nl <= NOT(CONV_SL_1_1(wptr_4_0_27_lpi_1_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  or_90_nl <= or_dcpl_39 OR or_dcpl_36 OR (fsm_output(12));
  else_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(regs_acc_itm) + SIGNED'( "00001"),
      5));
  and_366_nl <= (fsm_output(3)) AND (NOT or_193_tmp);
  mux_nl <= MUX_v_5_2_2(z_out_2, STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(else_acc_nl),
      5)), and_366_nl);
  not_153_nl <= NOT or_193_tmp;
  MAC_mux1h_19_nl <= MUX1HOT_v_16_3_2(in1_rsci_idat, MAC_slc_regs_rsci_qa_d_15_0_itm_7,
      MAC_slc_regs_rsci_qa_d_31_16_itm_10, STD_LOGIC_VECTOR'( (fsm_output(3)) & (fsm_output(23))
      & (fsm_output(25))));
  MAC_mux1h_20_nl <= MUX1HOT_v_16_3_2((coeffs_rsci_d(15 DOWNTO 0)), (reg_MAC_io_read_coeffs_rsc_ftd(319
      DOWNTO 304)), (reg_MAC_io_read_coeffs_rsc_ftd(351 DOWNTO 336)), STD_LOGIC_VECTOR'(
      (fsm_output(3)) & (fsm_output(23)) & (fsm_output(25))));
  mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux1h_19_nl) * SIGNED(MAC_mux1h_20_nl)),
      30));
  MAC_10_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_7)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(143 DOWNTO 128))), 30));
  MAC_acc_13_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_9_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_10_mul_nl),
      30), 30));
  MAC_or_nl <= (fsm_output(3)) OR (fsm_output(23)) OR (fsm_output(25));
  MAC_or_25_nl <= (fsm_output(7)) OR (fsm_output(15)) OR (fsm_output(17)) OR (fsm_output(21))
      OR (fsm_output(29)) OR (fsm_output(33));
  or_242_nl <= (fsm_output(11)) OR (fsm_output(9)) OR (fsm_output(7)) OR (fsm_output(5));
  MAC_else_mux1h_1_nl <= MUX1HOT_v_5_3_2(wptr_4_0_2_lpi_1_dfm_1, wptr_4_0_12_lpi_1_dfm_mx0w1,
      wptr_4_0_27_lpi_1_dfm_1, STD_LOGIC_VECTOR'( (fsm_output(3)) & or_242_nl & (fsm_output(13))));
  MAC_else_acc_1_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_else_mux1h_1_nl)
      + UNSIGNED'( "11111"), 5));
  wptr_or_11_nl <= (fsm_output(3)) OR or_tmp_35 OR (fsm_output(13));
  MAC_2_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_rsci_qa_d(31
      DOWNTO 16)) * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(15 DOWNTO 0))), 30));
  MAC_4_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(regs_rsci_qa_d(15
      DOWNTO 0)) * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(47 DOWNTO 32))), 30));
  MAC_3_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(31 DOWNTO 16))), 30));
  MAC_acc_16_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_3_mul_nl),
      30) + UNSIGNED(MAC_12_mul_itm), 30));
  MAC_8_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_13)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(111 DOWNTO 96))), 30));
  MAC_acc_14_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_8_mul_nl),
      30), 30));
  MAC_11_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_11)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(159 DOWNTO 144))), 30));
  MAC_acc_12_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_11_mul_nl),
      30) + UNSIGNED(MAC_12_mul_itm), 30));
  MAC_16_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_13)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(239 DOWNTO 224))), 30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_16_mul_nl),
      30), 30));
  MAC_20_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_31_16_itm_9)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(303 DOWNTO 288))), 30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_20_mul_nl),
      30), 30));
  MAC_24_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_9)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(367 DOWNTO 352))), 30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_24_mul_nl),
      30), 30));
  MAC_28_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_31_16_itm_13)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(431 DOWNTO 416))), 30));
  MAC_acc_4_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_28_mul_nl),
      30), 30));
  MAC_32_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_13)
      * SIGNED(reg_MAC_io_read_coeffs_rsc_ftd(495 DOWNTO 480))), 30));
  MAC_acc_18_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_32_mul_nl),
      30), 30));
  MAC_acc_26_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_25_itm) + UNSIGNED(MAC_12_mul_itm),
      30));
  MAC_acc_30_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_9_mul_itm) + CONV_UNSIGNED(UNSIGNED(MAC_acc_26_nl),
      30), 30));
  MAC_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_itm) + CONV_UNSIGNED(UNSIGNED(MAC_acc_30_nl),
      30), 30));
  MAC_or_24_nl <= (fsm_output(8)) OR (fsm_output(12));
  MAC_acc_3_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_7),
      30));
  MAC_acc_15_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_9) + UNSIGNED(MAC_12_mul_itm),
      30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_10),
      30));
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_11),
      30));
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_10),
      30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm) + UNSIGNED(z_out_8),
      30));
  MAC_acc_28_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_itm) + UNSIGNED(z_out),
      30));
  or_239_nl <= (fsm_output(15)) OR (fsm_output(7)) OR (fsm_output(5));
  or_240_nl <= (fsm_output(31)) OR (fsm_output(23)) OR (fsm_output(19));
  or_241_nl <= (fsm_output(27)) OR (fsm_output(12));
  MAC_mux1h_18_nl <= MUX1HOT_v_30_4_2(MAC_acc_31_itm, MAC_13_mul_itm, MAC_9_mul_itm,
      MAC_acc_15_itm, STD_LOGIC_VECTOR'( (fsm_output(36)) & or_239_nl & or_240_nl
      & or_241_nl));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_mux1h_18_nl) + UNSIGNED(MAC_12_mul_itm),
      30));
  MAC_mux_16_nl <= MUX_v_30_2_2(MAC_acc_25_itm, MAC_9_mul_itm, fsm_output(27));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_mux_16_nl) + UNSIGNED(z_out),
      30));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(regs_acc_itm) + UNSIGNED'( "11111"),
      5));
  MAC_or_27_nl <= (fsm_output(7)) OR (fsm_output(29));
  MAC_or_28_nl <= (fsm_output(17)) OR (fsm_output(33)) OR (fsm_output(8)) OR (fsm_output(12));
  MAC_mux1h_21_nl <= MUX1HOT_v_16_4_2(MAC_slc_regs_rsci_qa_d_15_0_itm, MAC_slc_regs_rsci_qa_d_15_0_itm_9,
      MAC_slc_regs_rsci_qa_d_15_0_itm_12, MAC_slc_regs_rsci_qa_d_15_0_itm_6, STD_LOGIC_VECTOR'(
      MAC_or_27_nl & (fsm_output(15)) & MAC_or_28_nl & (fsm_output(21))));
  MAC_mux1h_22_nl <= MUX1HOT_v_16_8_2((reg_MAC_io_read_coeffs_rsc_ftd(95 DOWNTO 80)),
      (reg_MAC_io_read_coeffs_rsc_ftd(191 DOWNTO 176)), (reg_MAC_io_read_coeffs_rsc_ftd(223
      DOWNTO 208)), (reg_MAC_io_read_coeffs_rsc_ftd(287 DOWNTO 272)), (reg_MAC_io_read_coeffs_rsc_ftd(415
      DOWNTO 400)), (reg_MAC_io_read_coeffs_rsc_ftd(479 DOWNTO 464)), (reg_MAC_io_read_coeffs_rsc_ftd(79
      DOWNTO 64)), (reg_MAC_io_read_coeffs_rsc_ftd(175 DOWNTO 160)), STD_LOGIC_VECTOR'(
      (fsm_output(7)) & (fsm_output(15)) & (fsm_output(17)) & (fsm_output(21)) &
      (fsm_output(29)) & (fsm_output(33)) & (fsm_output(8)) & (fsm_output(12))));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux1h_21_nl) * SIGNED(MAC_mux1h_22_nl)),
      30));
  MAC_mux_17_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd(255 DOWNTO 240)),
      (reg_MAC_io_read_coeffs_rsc_ftd(463 DOWNTO 448)), fsm_output(32));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_5)
      * SIGNED(MAC_mux_17_nl)), 30));
  MAC_mux_18_nl <= MUX_v_16_2_2(MAC_slc_regs_rsci_qa_d_31_16_itm_11, MAC_slc_regs_rsci_qa_d_31_16_itm_12,
      fsm_output(28));
  MAC_mux_19_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd(383 DOWNTO 368)),
      (reg_MAC_io_read_coeffs_rsc_ftd(399 DOWNTO 384)), fsm_output(28));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_18_nl) * SIGNED(MAC_mux_19_nl)),
      30));
  MAC_mux_20_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd(447 DOWNTO 432)),
      (reg_MAC_io_read_coeffs_rsc_ftd(63 DOWNTO 48)), fsm_output(9));
  z_out_9 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm_11)
      * SIGNED(MAC_mux_20_nl)), 30));
  MAC_mux_21_nl <= MUX_v_16_2_2(MAC_slc_regs_rsci_qa_d_15_0_itm_8, MAC_slc_regs_rsci_qa_d_31_16_itm_8,
      fsm_output(20));
  MAC_mux_22_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd(335 DOWNTO 320)),
      (reg_MAC_io_read_coeffs_rsc_ftd(271 DOWNTO 256)), fsm_output(20));
  z_out_10 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_21_nl) * SIGNED(MAC_mux_22_nl)),
      30));
  MAC_mux_23_nl <= MUX_v_16_2_2((reg_MAC_io_read_coeffs_rsc_ftd(127 DOWNTO 112)),
      (reg_MAC_io_read_coeffs_rsc_ftd(207 DOWNTO 192)), fsm_output(16));
  z_out_11 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_itm)
      * SIGNED(MAC_mux_23_nl)), 30));
END v14;

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

USE work.M10K_DP_pkg.ALL;


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

ARCHITECTURE v14 OF fir IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL regs_rsci_adra_d : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL regs_rsci_wea_d : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL regs_rsci_da_d : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsci_rea_d : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL regs_rsci_qa_d : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d : STD_LOGIC_VECTOR (1 DOWNTO
      0);
  SIGNAL regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d : STD_LOGIC_VECTOR (1 DOWNTO
      0);
  SIGNAL regs_rsc_qb : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_reb : STD_LOGIC;
  SIGNAL regs_rsc_db : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_web : STD_LOGIC;
  SIGNAL regs_rsc_adrb : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsc_qa : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_rea : STD_LOGIC;
  SIGNAL regs_rsc_da : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_wea : STD_LOGIC;
  SIGNAL regs_rsc_adra : STD_LOGIC_VECTOR (4 DOWNTO 0);

  SIGNAL regs_rsc_comp_adra : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsc_comp_adrb : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsc_comp_da : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_comp_db : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_comp_qa : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsc_comp_qb : STD_LOGIC_VECTOR (15 DOWNTO 0);

  COMPONENT fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen
    PORT(
      qb : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      reb : OUT STD_LOGIC;
      db : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      web : OUT STD_LOGIC;
      adrb : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
      qa : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      rea : OUT STD_LOGIC;
      da : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      wea : OUT STD_LOGIC;
      adra : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
      adra_d : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
      wea_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
      da_d : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      rea_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
      qa_d : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      rwportA_rw_ram_ir_internal_RMASK_B_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
      rwportA_rw_ram_ir_internal_WMASK_B_d : IN STD_LOGIC_VECTOR (1 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL regs_rsci_qb : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsci_db : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsci_adrb : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsci_qa : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsci_da : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_rsci_adra : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_rsci_adra_d_1 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL regs_rsci_wea_d_1 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL regs_rsci_da_d_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL regs_rsci_rea_d_1 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL regs_rsci_qa_d_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d_1 : STD_LOGIC_VECTOR (1 DOWNTO
      0);
  SIGNAL regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d_1 : STD_LOGIC_VECTOR (1 DOWNTO
      0);

  COMPONENT fir_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      coeffs_rsc_z : IN STD_LOGIC_VECTOR (511 DOWNTO 0);
      coeffs_rsc_triosy_lz : OUT STD_LOGIC;
      in1_rsc_dat : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      in1_rsc_triosy_lz : OUT STD_LOGIC;
      out1_rsc_dat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      out1_rsc_triosy_lz : OUT STD_LOGIC;
      regs_rsci_adra_d : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
      regs_rsci_wea_d : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
      regs_rsci_da_d : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      regs_rsci_rea_d : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
      regs_rsci_qa_d : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d : OUT STD_LOGIC_VECTOR (1 DOWNTO
          0);
      regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d : OUT STD_LOGIC_VECTOR (1 DOWNTO
          0)
    );
  END COMPONENT;
  SIGNAL fir_core_inst_coeffs_rsc_z : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL fir_core_inst_in1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_out1_rsc_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_adra_d : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_wea_d : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_da_d : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_rea_d : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_qa_d : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d : STD_LOGIC_VECTOR
      (1 DOWNTO 0);
  SIGNAL fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d : STD_LOGIC_VECTOR
      (1 DOWNTO 0);

BEGIN
  regs_rsc_comp : work.m10k_dp_pkg.M10K_DP
    GENERIC MAP(
      data_width => 16,
      addr_width => 5,
      depth => 32
      )
    PORT MAP(
      clk => clk,
      adra => regs_rsc_comp_adra,
      adrb => regs_rsc_comp_adrb,
      wea => regs_rsc_wea,
      web => regs_rsc_web,
      da => regs_rsc_comp_da,
      db => regs_rsc_comp_db,
      rea => regs_rsc_rea,
      reb => regs_rsc_reb,
      qa => regs_rsc_comp_qa,
      qb => regs_rsc_comp_qb
    );
  regs_rsc_comp_adra <= regs_rsc_adra;
  regs_rsc_comp_adrb <= regs_rsc_adrb;
  regs_rsc_comp_da <= regs_rsc_da;
  regs_rsc_comp_db <= regs_rsc_db;
  regs_rsc_qa <= regs_rsc_comp_qa;
  regs_rsc_qb <= regs_rsc_comp_qb;

  regs_rsci : fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen
    PORT MAP(
      qb => regs_rsci_qb,
      reb => regs_rsc_reb,
      db => regs_rsci_db,
      web => regs_rsc_web,
      adrb => regs_rsci_adrb,
      qa => regs_rsci_qa,
      rea => regs_rsc_rea,
      da => regs_rsci_da,
      wea => regs_rsc_wea,
      adra => regs_rsci_adra,
      adra_d => regs_rsci_adra_d_1,
      wea_d => regs_rsci_wea_d_1,
      da_d => regs_rsci_da_d_1,
      rea_d => regs_rsci_rea_d_1,
      qa_d => regs_rsci_qa_d_1,
      rwportA_rw_ram_ir_internal_RMASK_B_d => regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d_1,
      rwportA_rw_ram_ir_internal_WMASK_B_d => regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d_1
    );
  regs_rsci_qb <= regs_rsc_qb;
  regs_rsc_db <= regs_rsci_db;
  regs_rsc_adrb <= regs_rsci_adrb;
  regs_rsci_qa <= regs_rsc_qa;
  regs_rsc_da <= regs_rsci_da;
  regs_rsc_adra <= regs_rsci_adra;
  regs_rsci_adra_d_1 <= regs_rsci_adra_d;
  regs_rsci_wea_d_1 <= regs_rsci_wea_d;
  regs_rsci_da_d_1 <= STD_LOGIC_VECTOR'( "0000000000000000") & regs_rsci_da_d;
  regs_rsci_rea_d_1 <= regs_rsci_rea_d;
  regs_rsci_qa_d <= regs_rsci_qa_d_1;
  regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d_1 <= regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d;
  regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d_1 <= regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d;

  fir_core_inst : fir_core
    PORT MAP(
      clk => clk,
      rst => rst,
      coeffs_rsc_z => fir_core_inst_coeffs_rsc_z,
      coeffs_rsc_triosy_lz => coeffs_rsc_triosy_lz,
      in1_rsc_dat => fir_core_inst_in1_rsc_dat,
      in1_rsc_triosy_lz => in1_rsc_triosy_lz,
      out1_rsc_dat => fir_core_inst_out1_rsc_dat,
      out1_rsc_triosy_lz => out1_rsc_triosy_lz,
      regs_rsci_adra_d => fir_core_inst_regs_rsci_adra_d,
      regs_rsci_wea_d => fir_core_inst_regs_rsci_wea_d,
      regs_rsci_da_d => fir_core_inst_regs_rsci_da_d,
      regs_rsci_rea_d => fir_core_inst_regs_rsci_rea_d,
      regs_rsci_qa_d => fir_core_inst_regs_rsci_qa_d,
      regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d => fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d,
      regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d => fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d
    );
  fir_core_inst_coeffs_rsc_z <= coeffs_rsc_z;
  fir_core_inst_in1_rsc_dat <= in1_rsc_dat;
  out1_rsc_dat <= fir_core_inst_out1_rsc_dat;
  regs_rsci_adra_d <= fir_core_inst_regs_rsci_adra_d;
  regs_rsci_wea_d <= fir_core_inst_regs_rsci_wea_d;
  regs_rsci_da_d <= fir_core_inst_regs_rsci_da_d;
  regs_rsci_rea_d <= fir_core_inst_regs_rsci_rea_d;
  fir_core_inst_regs_rsci_qa_d <= regs_rsci_qa_d;
  regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d <= fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d;
  regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d <= fir_core_inst_regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d;

END v14;



