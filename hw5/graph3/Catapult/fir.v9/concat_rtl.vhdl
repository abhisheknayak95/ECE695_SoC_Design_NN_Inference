
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
--  Generated date: Wed Nov 10 15:50:46 2021
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

ARCHITECTURE v9 OF fir_Altera_M10K_M10K_DP_rwport_4_16_5_32_32_16_gen IS
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
END v9;

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
    fsm_output : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    regs_vinit_C_1_tr0 : IN STD_LOGIC;
    MAC_C_6_tr0 : IN STD_LOGIC
  );
END fir_core_core_fsm;

ARCHITECTURE v9 OF fir_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir_core_core_fsm_1
  TYPE fir_core_core_fsm_1_ST IS (core_rlp_C_0, regs_vinit_C_0, regs_vinit_C_1, main_C_0,
      main_C_1, MAC_C_0, MAC_C_1, MAC_C_2, MAC_C_3, MAC_C_4, MAC_C_5, MAC_C_6, MAC_C_7,
      MAC_C_8, MAC_C_9, MAC_C_10, main_C_2);

  SIGNAL state_var : fir_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir_core_core_fsm_1_ST;

BEGIN
  fir_core_core_fsm_1 : PROCESS (regs_vinit_C_1_tr0, MAC_C_6_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN regs_vinit_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000010");
        state_var_NS <= regs_vinit_C_1;
      WHEN regs_vinit_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000100");
        IF ( regs_vinit_C_1_tr0 = '1' ) THEN
          state_var_NS <= regs_vinit_C_0;
        ELSE
          state_var_NS <= main_C_0;
        END IF;
      WHEN main_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000001000");
        state_var_NS <= main_C_1;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000010000");
        state_var_NS <= MAC_C_0;
      WHEN MAC_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000100000");
        state_var_NS <= MAC_C_1;
      WHEN MAC_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000001000000");
        state_var_NS <= MAC_C_2;
      WHEN MAC_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000010000000");
        state_var_NS <= MAC_C_3;
      WHEN MAC_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000100000000");
        state_var_NS <= MAC_C_4;
      WHEN MAC_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000001000000000");
        state_var_NS <= MAC_C_5;
      WHEN MAC_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000010000000000");
        state_var_NS <= MAC_C_6;
      WHEN MAC_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000100000000000");
        IF ( MAC_C_6_tr0 = '1' ) THEN
          state_var_NS <= main_C_2;
        ELSE
          state_var_NS <= MAC_C_7;
        END IF;
      WHEN MAC_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001000000000000");
        state_var_NS <= MAC_C_8;
      WHEN MAC_C_8 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010000000000000");
        state_var_NS <= MAC_C_9;
      WHEN MAC_C_9 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100000000000000");
        state_var_NS <= MAC_C_10;
      WHEN MAC_C_10 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000000000000000");
        state_var_NS <= MAC_C_0;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000000000000000");
        state_var_NS <= main_C_0;
      -- core_rlp_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000001");
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

ARCHITECTURE v9 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL fsm_output : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_6_else_acc_tmp : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL or_dcpl_9 : STD_LOGIC;
  SIGNAL or_dcpl_40 : STD_LOGIC;
  SIGNAL or_dcpl_41 : STD_LOGIC;
  SIGNAL or_dcpl_42 : STD_LOGIC;
  SIGNAL or_dcpl_45 : STD_LOGIC;
  SIGNAL or_dcpl_46 : STD_LOGIC;
  SIGNAL or_tmp_60 : STD_LOGIC;
  SIGNAL wptr_4_0_4_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_8_lpi_2_dfm_mx0w1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_or_8_itm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_3_lpi_2_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_lpi_2_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_1_sva : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_i_5_0_6_sva : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL MAC_MAC_nor_10_itm : STD_LOGIC;
  SIGNAL regs_regs_nor_itm : STD_LOGIC;
  SIGNAL wptr_4_0_7_lpi_2_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_6_lpi_2_dfm_mx0w1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_4_acc_2_psp_sva_mx0w0 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL wptr_4_0_2_lpi_2_dfm_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_acc_itm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL reg_MAC_4_acc_2_psp_ftd : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_MAC_4_acc_2_psp_ftd_1_1_0 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_out1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL reg_out1_out1_and_cse : STD_LOGIC;
  SIGNAL MAC_3_acc_2_psp_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL nor_11_seb : STD_LOGIC;
  SIGNAL or_74_cse : STD_LOGIC;
  SIGNAL regs_regs_or_rmff : STD_LOGIC;
  SIGNAL wptr_4_0_3_lpi_2_dfm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_acc_itm_mx0c1 : STD_LOGIC;
  SIGNAL or_153_tmp : STD_LOGIC;
  SIGNAL z_out : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL z_out_8 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL acc_32_3_1_sva : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_i_4_3_sva : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL MAC_2_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_9_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_10_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_1_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_11_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_5_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_13_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_slc_regs_rsci_qa_d_15_0_3_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_14_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_9_mul_itm : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_15_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_16_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_3_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL acc_32_3_6_sva_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_8_acc_2_psp_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_2_acc_2_psp_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_acc_psp_sva_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL MAC_6_acc_2_psp_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_7_acc_2_psp_sva_1 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_io_read_coeffs_rsc_cse_sva_511_64 : STD_LOGIC_VECTOR (447 DOWNTO 0);
  SIGNAL or_140_rgt : STD_LOGIC;
  SIGNAL wptr_wptr_mux_cse : STD_LOGIC_VECTOR (4 DOWNTO 0);

  SIGNAL mux_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL and_214_nl : STD_LOGIC;
  SIGNAL not_69_nl : STD_LOGIC;
  SIGNAL or_98_nl : STD_LOGIC;
  SIGNAL acc_mux_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL acc_not_nl : STD_LOGIC;
  SIGNAL nor_12_nl : STD_LOGIC;
  SIGNAL MAC_and_nl : STD_LOGIC;
  SIGNAL MAC_and_1_nl : STD_LOGIC;
  SIGNAL MAC_and_2_nl : STD_LOGIC;
  SIGNAL MAC_and_3_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_10_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_13_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_15_nl : STD_LOGIC;
  SIGNAL nand_nl : STD_LOGIC;
  SIGNAL MAC_mux_11_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_12_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_13_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_mux_14_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL or_143_nl : STD_LOGIC;
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_1_mul_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_4_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_5_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_12_nl : STD_LOGIC;
  SIGNAL MAC_9_else_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_MAC_nor_17_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_9_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_14_nl : STD_LOGIC;
  SIGNAL MAC_MAC_nor_nl : STD_LOGIC;
  SIGNAL regs_mux1h_2_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL regs_or_1_nl : STD_LOGIC;
  SIGNAL regs_mux1h_6_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_mux_29_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_MAC_and_1_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL MAC_mux_30_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL regs_mux1h_8_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL MAC_mux_31_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_32_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_33_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_34_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_35_nl : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_mux_36_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
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
      fsm_output : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      regs_vinit_C_1_tr0 : IN STD_LOGIC;
      MAC_C_6_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL fir_core_core_fsm_inst_regs_vinit_C_1_tr0 : STD_LOGIC;
  SIGNAL fir_core_core_fsm_inst_MAC_C_6_tr0 : STD_LOGIC;

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

  FUNCTION MUX1HOT_v_16_5_2(input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(4 DOWNTO 0))
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

  FUNCTION MUX1HOT_v_5_6_2(input_5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
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
    RETURN result;
  END;

  FUNCTION MUX_v_16_15_2x0x1x2x3x7x11(input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0100" =>
          result := input_4;
        WHEN "0101" =>
          result := input_5;
        WHEN "0110" =>
          result := input_6;
        WHEN "1000" =>
          result := input_8;
        WHEN "1001" =>
          result := input_9;
        WHEN "1010" =>
          result := input_10;
        WHEN "1100" =>
          result := input_12;
        WHEN "1101" =>
          result := input_13;
        WHEN others =>
          result := input_14;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_16_16_2(input_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0000" =>
          result := input_0;
        WHEN "0001" =>
          result := input_1;
        WHEN "0010" =>
          result := input_2;
        WHEN "0011" =>
          result := input_3;
        WHEN "0100" =>
          result := input_4;
        WHEN "0101" =>
          result := input_5;
        WHEN "0110" =>
          result := input_6;
        WHEN "0111" =>
          result := input_7;
        WHEN "1000" =>
          result := input_8;
        WHEN "1001" =>
          result := input_9;
        WHEN "1010" =>
          result := input_10;
        WHEN "1011" =>
          result := input_11;
        WHEN "1100" =>
          result := input_12;
        WHEN "1101" =>
          result := input_13;
        WHEN "1110" =>
          result := input_14;
        WHEN others =>
          result := input_15;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_16_29_2x0x5x6x7x8x13x14x15x16x21x22x23x24(input_1 : STD_LOGIC_VECTOR(15
      DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(4 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "00001" =>
          result := input_1;
        WHEN "00010" =>
          result := input_2;
        WHEN "00011" =>
          result := input_3;
        WHEN "00100" =>
          result := input_4;
        WHEN "01001" =>
          result := input_9;
        WHEN "01010" =>
          result := input_10;
        WHEN "01011" =>
          result := input_11;
        WHEN "01100" =>
          result := input_12;
        WHEN "10001" =>
          result := input_17;
        WHEN "10010" =>
          result := input_18;
        WHEN "10011" =>
          result := input_19;
        WHEN "10100" =>
          result := input_20;
        WHEN "11001" =>
          result := input_25;
        WHEN "11010" =>
          result := input_26;
        WHEN "11011" =>
          result := input_27;
        WHEN others =>
          result := input_28;
      END CASE;
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

  FUNCTION MUX_v_16_30_2x0x1x3x4x5x6x8x9x10x12x13x14x15x17x18x19x21x22x23x24x26x27x28(input_2
      : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(15 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(4 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "00010" =>
          result := input_2;
        WHEN "00111" =>
          result := input_7;
        WHEN "01011" =>
          result := input_11;
        WHEN "10000" =>
          result := input_16;
        WHEN "10100" =>
          result := input_20;
        WHEN "11001" =>
          result := input_25;
        WHEN others =>
          result := input_29;
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
      ld => reg_out1_rsc_triosy_obj_ld_cse,
      lz => coeffs_rsc_triosy_lz
    );
  in1_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_out1_rsc_triosy_obj_ld_cse,
      lz => in1_rsc_triosy_lz
    );
  out1_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
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
      regs_vinit_C_1_tr0 => fir_core_core_fsm_inst_regs_vinit_C_1_tr0,
      MAC_C_6_tr0 => fir_core_core_fsm_inst_MAC_C_6_tr0
    );
  fsm_output <= fir_core_core_fsm_inst_fsm_output;
  fir_core_core_fsm_inst_regs_vinit_C_1_tr0 <= NOT regs_regs_nor_itm;
  fir_core_core_fsm_inst_MAC_C_6_tr0 <= MAC_i_5_0_6_sva(5);

  reg_out1_out1_and_cse <= (fsm_output(11)) AND (MAC_i_5_0_6_sva(5));
  or_74_cse <= (fsm_output(3)) OR (fsm_output(1));
  nor_11_seb <= NOT(CONV_SL_1_1(fsm_output(9 DOWNTO 5)/=STD_LOGIC_VECTOR'("00000")));
  regs_regs_or_rmff <= NOT((fsm_output(9)) OR nor_11_seb);
  or_153_tmp <= regs_acc_itm_mx0c1 OR ((NOT MAC_MAC_nor_10_itm) AND (fsm_output(16)));
  wptr_wptr_mux_cse <= MUX_v_5_2_2(wptr_4_0_3_lpi_2_dfm_1, wptr_4_0_8_lpi_2_dfm_mx0w1,
      fsm_output(7));
  or_140_rgt <= or_dcpl_46 OR (fsm_output(11)) OR or_dcpl_45;
  MAC_5_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_MAC_or_8_itm_1)
      + UNSIGNED'( "11111"), 5));
  MAC_MAC_nor_12_nl <= NOT(CONV_SL_1_1(MAC_MAC_or_8_itm_1/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_6_lpi_2_dfm_mx0w1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_5_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_12_nl);
  MAC_9_else_acc_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_4_0_lpi_2_dfm_1)
      + UNSIGNED'( "11111"), 5));
  MAC_MAC_nor_17_nl <= NOT(CONV_SL_1_1(wptr_4_0_lpi_2_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_or_8_itm_1 <= MUX_v_5_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_9_else_acc_nl),
      5)), STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_17_nl);
  acc_32_3_6_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED(MAC_9_mul_itm),
      30));
  MAC_MAC_nor_9_nl <= NOT(CONV_SL_1_1(wptr_4_0_2_lpi_2_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_3_lpi_2_dfm_1 <= MUX_v_5_2_2(z_out_2, STD_LOGIC_VECTOR'("11111"), MAC_MAC_nor_9_nl);
  MAC_MAC_nor_14_nl <= NOT(CONV_SL_1_1(wptr_4_0_7_lpi_2_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_8_lpi_2_dfm_mx0w1 <= MUX_v_5_2_2(z_out_2, STD_LOGIC_VECTOR'("11111"),
      MAC_MAC_nor_14_nl);
  MAC_MAC_nor_nl <= NOT(CONV_SL_1_1(wptr_4_0_1_sva/=STD_LOGIC_VECTOR'("00000")));
  wptr_4_0_2_lpi_2_dfm_1 <= MUX_v_5_2_2(MAC_6_else_acc_tmp, STD_LOGIC_VECTOR'("11111"),
      MAC_MAC_nor_nl);
  MAC_6_else_acc_tmp <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_4_0_1_sva) +
      UNSIGNED'( "11111"), 5));
  MAC_4_acc_2_psp_sva_mx0w0 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_3_acc_2_psp_sva_1)
      + UNSIGNED'( "00001"), 5));
  MAC_8_acc_2_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_7_acc_2_psp_sva_1)
      + UNSIGNED'( "00001"), 5));
  MAC_3_acc_2_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_2_acc_2_psp_sva_1)
      + SIGNED'( "00001"), 5));
  MAC_2_acc_2_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_i_4_3_sva & MAC_acc_psp_sva_1)
      + SIGNED'( "00001"), 5));
  MAC_acc_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_3_itm),
      2), 3) + UNSIGNED'( "001"), 3));
  wptr_4_0_lpi_2_dfm_1 <= MUX_v_5_2_2(wptr_4_0_4_sva_1, STD_LOGIC_VECTOR'("11111"),
      MAC_MAC_nor_10_itm);
  MAC_6_acc_2_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_i_5_0_6_sva(4
      DOWNTO 0)) + SIGNED'( "00001"), 5));
  MAC_7_acc_2_psp_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_6_acc_2_psp_sva_1)
      + SIGNED'( "00001"), 5));
  wptr_4_0_7_lpi_2_dfm_1 <= MUX_v_5_2_2(MAC_6_else_acc_tmp, STD_LOGIC_VECTOR'("11111"),
      MAC_MAC_nor_10_itm);
  or_dcpl_9 <= CONV_SL_1_1(fsm_output(13 DOWNTO 12)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_40 <= (fsm_output(11)) OR (fsm_output(8));
  or_dcpl_41 <= or_dcpl_40 OR (fsm_output(7));
  or_dcpl_42 <= (fsm_output(10)) OR (fsm_output(6));
  or_dcpl_45 <= CONV_SL_1_1(fsm_output(8 DOWNTO 7)/=STD_LOGIC_VECTOR'("00"));
  or_dcpl_46 <= CONV_SL_1_1(fsm_output(10 DOWNTO 9)/=STD_LOGIC_VECTOR'("00"));
  or_tmp_60 <= or_dcpl_46 OR or_dcpl_45;
  regs_acc_itm_mx0c1 <= regs_regs_nor_itm AND (fsm_output(2));
  regs_or_1_nl <= (fsm_output(5)) OR (fsm_output(8));
  regs_mux1h_2_nl <= MUX1HOT_v_5_3_2(wptr_4_0_1_sva, wptr_4_0_lpi_2_dfm_1, wptr_4_0_3_lpi_2_dfm,
      STD_LOGIC_VECTOR'( regs_or_1_nl & (fsm_output(6)) & (fsm_output(7))));
  regs_mux1h_6_nl <= MUX1HOT_v_5_6_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1, MAC_MAC_or_8_itm_1,
      wptr_4_0_7_lpi_2_dfm_1, wptr_4_0_lpi_2_dfm_1, wptr_4_0_3_lpi_2_dfm, STD_LOGIC_VECTOR'(
      or_74_cse & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9))));
  regs_rsci_adra_d <= regs_mux1h_2_nl & regs_mux1h_6_nl;
  regs_rsci_wea_d <= STD_LOGIC_VECTOR'( '0' & or_74_cse);
  regs_rsci_rea_d <= STD_LOGIC_VECTOR'( regs_regs_or_rmff & (NOT nor_11_seb));
  regs_rsci_rwportA_rw_ram_ir_internal_RMASK_B_d <= STD_LOGIC_VECTOR'( regs_regs_or_rmff
      & (NOT nor_11_seb));
  regs_rsci_rwportA_rw_ram_ir_internal_WMASK_B_d <= STD_LOGIC_VECTOR'( '0' & or_74_cse);
  regs_rsci_da_d <= MUX_v_16_2_2(STD_LOGIC_VECTOR'("0000000000000000"), in1_rsci_idat,
      (fsm_output(3)));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_out1_rsc_triosy_obj_ld_cse <= '0';
        regs_regs_nor_itm <= '0';
        wptr_4_0_1_sva <= STD_LOGIC_VECTOR'( "00000");
        wptr_4_0_4_sva_1 <= STD_LOGIC_VECTOR'( "00000");
        MAC_io_read_coeffs_rsc_cse_sva_511_64 <= STD_LOGIC_VECTOR'( "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
        MAC_MAC_nor_10_itm <= '0';
        reg_MAC_4_acc_2_psp_ftd_1_1_0 <= STD_LOGIC_VECTOR'( "00");
      ELSE
        reg_out1_rsc_triosy_obj_ld_cse <= reg_out1_out1_and_cse;
        regs_regs_nor_itm <= NOT(CONV_SL_1_1(regs_acc_itm/=STD_LOGIC_VECTOR'("00000")));
        wptr_4_0_1_sva <= MUX1HOT_v_5_4_2(regs_acc_itm, wptr_4_0_6_lpi_2_dfm_mx0w1,
            MAC_MAC_or_8_itm_1, wptr_4_0_1_sva, STD_LOGIC_VECTOR'( (fsm_output(4))
            & (fsm_output(6)) & (fsm_output(8)) & or_98_nl));
        wptr_4_0_4_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(wptr_wptr_mux_cse)
            + UNSIGNED'( "11111"), 5));
        MAC_io_read_coeffs_rsc_cse_sva_511_64 <= coeffs_rsci_d(511 DOWNTO 64);
        MAC_MAC_nor_10_itm <= MUX1HOT_s_1_4_2(MAC_MAC_nor_10_nl, MAC_MAC_nor_13_nl,
            MAC_MAC_nor_15_nl, nand_nl, STD_LOGIC_VECTOR'( (fsm_output(5)) & (fsm_output(6))
            & (fsm_output(7)) & (fsm_output(11))));
        reg_MAC_4_acc_2_psp_ftd_1_1_0 <= MAC_4_acc_2_psp_sva_mx0w0(1 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( reg_out1_out1_and_cse = '1' ) THEN
        out1_rsci_idat <= acc_32_3_6_sva_1(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        regs_acc_itm <= STD_LOGIC_VECTOR'( "11111");
      ELSIF ( ((fsm_output(1)) OR regs_acc_itm_mx0c1 OR (fsm_output(16))) = '1' )
          THEN
        regs_acc_itm <= MUX_v_5_2_2(STD_LOGIC_VECTOR'("00000"), mux_nl, not_69_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        acc_32_3_1_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(4)) OR (fsm_output(15)) OR (fsm_output(11))) = '1' ) THEN
        acc_32_3_1_sva <= MUX_v_30_2_2(STD_LOGIC_VECTOR'("000000000000000000000000000000"),
            acc_mux_nl, acc_not_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_i_4_3_sva <= STD_LOGIC_VECTOR'( "00");
      ELSIF ( ((fsm_output(4)) OR (fsm_output(11))) = '1' ) THEN
        MAC_i_4_3_sva <= MUX_v_2_2_2(STD_LOGIC_VECTOR'("00"), reg_MAC_4_acc_2_psp_ftd,
            (fsm_output(11)));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_acc_3_itm <= STD_LOGIC_VECTOR'( "00");
      ELSIF ( ((fsm_output(6)) OR (fsm_output(2)) OR (fsm_output(1)) OR (fsm_output(16))
          OR (fsm_output(5)) OR (fsm_output(4)) OR (fsm_output(3)) OR (fsm_output(0)))
          = '1' ) THEN
        MAC_acc_3_itm <= MUX_v_2_2_2(STD_LOGIC_VECTOR'("00"), (z_out_1(1 DOWNTO 0)),
            nor_12_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        wptr_4_0_3_lpi_2_dfm <= STD_LOGIC_VECTOR'( "00000");
      ELSIF ( ((fsm_output(5)) OR (fsm_output(7))) = '1' ) THEN
        wptr_4_0_3_lpi_2_dfm <= wptr_wptr_mux_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_i_5_0_6_sva <= STD_LOGIC_VECTOR'( "000000");
      ELSIF ( (fsm_output(5)) = '1' ) THEN
        MAC_i_5_0_6_sva <= z_out_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_9_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (fsm_output(5)) = '1' ) THEN
        MAC_mux_9_itm <= z_out_4;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_10_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT(or_dcpl_42 OR or_dcpl_9 OR or_dcpl_41)) = '1' ) THEN
        MAC_mux_10_itm <= MUX1HOT_v_16_5_2((coeffs_rsci_d(63 DOWNTO 48)), (coeffs_rsci_d(207
            DOWNTO 192)), (coeffs_rsci_d(351 DOWNTO 336)), (coeffs_rsci_d(495 DOWNTO
            480)), (regs_rsci_qa_d(31 DOWNTO 16)), STD_LOGIC_VECTOR'( MAC_and_nl
            & MAC_and_1_nl & MAC_and_2_nl & MAC_and_3_nl & (fsm_output(9))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_11_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT(or_dcpl_46 OR (fsm_output(7)))) = '1' ) THEN
        MAC_mux_11_itm <= MUX1HOT_v_16_3_2(MAC_mux_11_nl, MAC_mux_12_nl, (regs_rsci_qa_d(15
            DOWNTO 0)), STD_LOGIC_VECTOR'( (fsm_output(5)) & (fsm_output(6)) & (fsm_output(8))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_3_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT(or_dcpl_42 OR or_dcpl_40)) = '1' ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_3_itm <= MUX1HOT_v_16_3_2(MAC_mux_13_nl, (regs_rsci_qa_d(31
            DOWNTO 16)), (regs_rsci_qa_d(15 DOWNTO 0)), STD_LOGIC_VECTOR'( (fsm_output(5))
            & (fsm_output(7)) & (fsm_output(9))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_2_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(14)) OR (fsm_output(10)) OR (fsm_output(6)) OR (fsm_output(13)))
          = '1' ) THEN
        MAC_2_mul_itm <= MUX1HOT_v_30_4_2(z_out_5, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl),
            30)), STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl), 30)), z_out,
            STD_LOGIC_VECTOR'( (fsm_output(6)) & (fsm_output(10)) & (fsm_output(13))
            & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_15_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT(or_dcpl_46 OR or_dcpl_9 OR or_dcpl_41)) = '1' ) THEN
        MAC_mux_15_itm <= MUX1HOT_v_16_3_2((MAC_io_read_coeffs_rsc_cse_sva_511_64(31
            DOWNTO 16)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(175 DOWNTO 160)),
            (MAC_io_read_coeffs_rsc_cse_sva_511_64(319 DOWNTO 304)), STD_LOGIC_VECTOR'(
            (NOT (MAC_i_5_0_6_sva(1))) & (MAC_i_5_0_6_sva(3)) & (MAC_i_5_0_6_sva(4))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_13_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT(or_dcpl_46 OR (fsm_output(12)) OR or_dcpl_41)) = '1' ) THEN
        MAC_mux_13_itm <= z_out_4;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_14_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( or_140_rgt = '0' ) THEN
        MAC_mux_14_itm <= MAC_mux_14_nl;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_mux_16_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( or_tmp_60 = '0' ) THEN
        MAC_mux_16_itm <= MUX1HOT_v_16_3_2((MAC_io_read_coeffs_rsc_cse_sva_511_64(47
            DOWNTO 32)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(191 DOWNTO 176)),
            (MAC_io_read_coeffs_rsc_cse_sva_511_64(335 DOWNTO 320)), STD_LOGIC_VECTOR'(
            (NOT (MAC_6_acc_2_psp_sva_1(3))) & (MAC_6_acc_2_psp_sva_1(0)) & (MAC_6_acc_2_psp_sva_1(4))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_slc_regs_rsci_qa_d_15_0_1_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( (NOT((fsm_output(9)) OR (fsm_output(12)) OR (fsm_output(11)))) = '1'
          ) THEN
        MAC_slc_regs_rsci_qa_d_15_0_1_itm <= MUX_v_16_2_2((regs_rsci_qa_d(31 DOWNTO
            16)), (regs_rsci_qa_d(15 DOWNTO 0)), or_143_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_9_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(12)) OR (fsm_output(7))) = '1' ) THEN
        MAC_9_mul_itm <= MUX_v_30_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_acc_6_nl),
            30)), z_out_8, fsm_output(12));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_5_mul_itm <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
      ELSIF ( ((fsm_output(14)) OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(8)))
          = '1' ) THEN
        MAC_5_mul_itm <= MUX1HOT_v_30_4_2(z_out_5, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_4_nl),
            30)), z_out_7, STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl),
            30)), STD_LOGIC_VECTOR'( (fsm_output(8)) & (fsm_output(9)) & (fsm_output(11))
            & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_MAC_4_acc_2_psp_ftd <= STD_LOGIC_VECTOR'( "00");
      ELSIF ( or_tmp_60 = '0' ) THEN
        reg_MAC_4_acc_2_psp_ftd <= MUX_v_2_2_2((MAC_4_acc_2_psp_sva_mx0w0(4 DOWNTO
            3)), (MAC_8_acc_2_psp_sva_1(4 DOWNTO 3)), fsm_output(6));
      END IF;
    END IF;
  END PROCESS;
  or_98_nl <= (fsm_output(14)) OR (fsm_output(10)) OR (fsm_output(15)) OR (fsm_output(9))
      OR or_dcpl_9 OR (fsm_output(11)) OR (fsm_output(7));
  MAC_MAC_nor_10_nl <= NOT(CONV_SL_1_1(wptr_4_0_3_lpi_2_dfm_1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_nor_13_nl <= NOT(CONV_SL_1_1(wptr_4_0_6_lpi_2_dfm_mx0w1/=STD_LOGIC_VECTOR'("00000")));
  MAC_MAC_nor_15_nl <= NOT(CONV_SL_1_1(wptr_4_0_8_lpi_2_dfm_mx0w1/=STD_LOGIC_VECTOR'("00000")));
  nand_nl <= NOT(CONV_SL_1_1(regs_acc_itm=STD_LOGIC_VECTOR'("11111")));
  else_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(regs_acc_itm) + SIGNED'( "00001"),
      5));
  and_214_nl <= (fsm_output(16)) AND (NOT or_153_tmp);
  mux_nl <= MUX_v_5_2_2(z_out_2, STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(else_acc_nl),
      5)), and_214_nl);
  not_69_nl <= NOT or_153_tmp;
  acc_mux_nl <= MUX_v_30_2_2(acc_32_3_6_sva_1, z_out, fsm_output(15));
  acc_not_nl <= NOT (fsm_output(4));
  nor_12_nl <= NOT((fsm_output(0)) OR (fsm_output(3)) OR (fsm_output(4)) OR (fsm_output(5))
      OR (fsm_output(16)) OR (fsm_output(1)) OR (fsm_output(2)));
  MAC_and_nl <= CONV_SL_1_1(MAC_3_acc_2_psp_sva_1=STD_LOGIC_VECTOR'("00011")) AND
      (fsm_output(5));
  MAC_and_1_nl <= CONV_SL_1_1(MAC_3_acc_2_psp_sva_1=STD_LOGIC_VECTOR'("01100")) AND
      (fsm_output(5));
  MAC_and_2_nl <= CONV_SL_1_1(MAC_3_acc_2_psp_sva_1=STD_LOGIC_VECTOR'("10101")) AND
      (fsm_output(5));
  MAC_and_3_nl <= CONV_SL_1_1(MAC_3_acc_2_psp_sva_1=STD_LOGIC_VECTOR'("11110")) AND
      (fsm_output(5));
  MAC_mux_11_nl <= MUX_v_16_29_2x0x5x6x7x8x13x14x15x16x21x22x23x24((coeffs_rsci_d(31
      DOWNTO 16)), (coeffs_rsci_d(47 DOWNTO 32)), (coeffs_rsci_d(63 DOWNTO 48)),
      (coeffs_rsci_d(79 DOWNTO 64)), (coeffs_rsci_d(159 DOWNTO 144)), (coeffs_rsci_d(175
      DOWNTO 160)), (coeffs_rsci_d(191 DOWNTO 176)), (coeffs_rsci_d(207 DOWNTO 192)),
      (coeffs_rsci_d(287 DOWNTO 272)), (coeffs_rsci_d(303 DOWNTO 288)), (coeffs_rsci_d(319
      DOWNTO 304)), (coeffs_rsci_d(335 DOWNTO 320)), (coeffs_rsci_d(415 DOWNTO 400)),
      (coeffs_rsci_d(431 DOWNTO 416)), (coeffs_rsci_d(447 DOWNTO 432)), (coeffs_rsci_d(463
      DOWNTO 448)), MAC_i_4_3_sva & MAC_acc_psp_sva_1);
  MAC_mux_12_nl <= MUX_v_16_16_2((MAC_io_read_coeffs_rsc_cse_sva_511_64(15 DOWNTO
      0)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(31 DOWNTO 16)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(47
      DOWNTO 32)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(63 DOWNTO 48)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(143
      DOWNTO 128)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(159 DOWNTO 144)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(175
      DOWNTO 160)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(191 DOWNTO 176)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(271
      DOWNTO 256)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(287 DOWNTO 272)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(303
      DOWNTO 288)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(319 DOWNTO 304)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(399
      DOWNTO 384)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(415 DOWNTO 400)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(431
      DOWNTO 416)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(447 DOWNTO 432)), reg_MAC_4_acc_2_psp_ftd
      & reg_MAC_4_acc_2_psp_ftd_1_1_0);
  MAC_mux_13_nl <= MUX_v_16_16_2((coeffs_rsci_d(15 DOWNTO 0)), (coeffs_rsci_d(31
      DOWNTO 16)), (coeffs_rsci_d(47 DOWNTO 32)), (coeffs_rsci_d(63 DOWNTO 48)),
      (coeffs_rsci_d(143 DOWNTO 128)), (coeffs_rsci_d(159 DOWNTO 144)), (coeffs_rsci_d(175
      DOWNTO 160)), (coeffs_rsci_d(191 DOWNTO 176)), (coeffs_rsci_d(271 DOWNTO 256)),
      (coeffs_rsci_d(287 DOWNTO 272)), (coeffs_rsci_d(303 DOWNTO 288)), (coeffs_rsci_d(319
      DOWNTO 304)), (coeffs_rsci_d(399 DOWNTO 384)), (coeffs_rsci_d(415 DOWNTO 400)),
      (coeffs_rsci_d(431 DOWNTO 416)), (coeffs_rsci_d(447 DOWNTO 432)), MAC_i_4_3_sva
      & MAC_acc_3_itm);
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_2_mul_itm) + UNSIGNED(z_out_6),
      30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_6) + UNSIGNED(MAC_9_mul_itm),
      30));
  MAC_mux_14_nl <= MUX_v_16_15_2x0x1x2x3x7x11((MAC_io_read_coeffs_rsc_cse_sva_511_64(79
      DOWNTO 64)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(95 DOWNTO 80)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(111
      DOWNTO 96)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(207 DOWNTO 192)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(223
      DOWNTO 208)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(239 DOWNTO 224)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(335
      DOWNTO 320)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(351 DOWNTO 336)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(367
      DOWNTO 352)), (MAC_8_acc_2_psp_sva_1(4 DOWNTO 3)) & (MAC_8_acc_2_psp_sva_1(1
      DOWNTO 0)));
  or_143_nl <= (fsm_output(10)) OR (fsm_output(7));
  MAC_1_mul_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_1_itm)
      * SIGNED(MAC_slc_regs_rsci_qa_d_15_0_3_itm)), 30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(acc_32_3_1_sva) + CONV_SIGNED(UNSIGNED(MAC_1_mul_nl),
      30), 30));
  MAC_acc_4_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_8) + UNSIGNED(MAC_5_mul_itm),
      30));
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_7) + UNSIGNED(MAC_5_mul_itm),
      30));
  MAC_mux_29_nl <= MUX_v_30_2_2(MAC_5_mul_itm, acc_32_3_1_sva, fsm_output(14));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_2_mul_itm) + UNSIGNED(MAC_mux_29_nl),
      30));
  MAC_MAC_and_1_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR'("00"), (MAC_4_acc_2_psp_sva_mx0w0(4
      DOWNTO 3)), (fsm_output(5)));
  MAC_mux_30_nl <= MUX_v_2_2_2((MAC_8_acc_2_psp_sva_1(1 DOWNTO 0)), (MAC_4_acc_2_psp_sva_mx0w0(1
      DOWNTO 0)), fsm_output(5));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_MAC_and_1_nl
      & (fsm_output(5)) & MAC_mux_30_nl), 5), 6) + UNSIGNED'( "000001"), 6));
  regs_mux1h_8_nl <= MUX1HOT_v_5_3_2(regs_acc_itm, wptr_4_0_2_lpi_2_dfm_1, wptr_4_0_7_lpi_2_dfm_1,
      STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(5)) & (fsm_output(7))));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(regs_mux1h_8_nl) + UNSIGNED'(
      "11111"), 5));
  MAC_mux_31_nl <= MUX_v_16_2_2((regs_rsci_qa_d(15 DOWNTO 0)), MAC_slc_regs_rsci_qa_d_15_0_1_itm,
      fsm_output(8));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_31_nl) * SIGNED(MAC_mux_11_itm)),
      30));
  MAC_mux_32_nl <= MUX_v_16_2_2(MAC_mux_9_itm, MAC_mux_13_itm, fsm_output(13));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_1_itm)
      * SIGNED(MAC_mux_32_nl)), 30));
  MAC_mux_33_nl <= MUX_v_16_2_2(MAC_mux_11_itm, MAC_mux_10_itm, fsm_output(14));
  MAC_mux_34_nl <= MUX_v_16_2_2(MAC_mux_16_itm, MAC_mux_15_itm, fsm_output(14));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_mux_33_nl) * SIGNED(MAC_mux_34_nl)),
      30));
  MAC_mux_35_nl <= MUX_v_16_2_2(MAC_mux_14_itm, MAC_mux_10_itm, fsm_output(9));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( SIGNED(MAC_slc_regs_rsci_qa_d_15_0_3_itm)
      * SIGNED(MAC_mux_35_nl)), 30));
  MAC_mux_36_nl <= MUX_v_5_2_2(MAC_2_acc_2_psp_sva_1, MAC_7_acc_2_psp_sva_1, fsm_output(6));
  z_out_4 <= MUX_v_16_30_2x0x1x3x4x5x6x8x9x10x12x13x14x15x17x18x19x21x22x23x24x26x27x28((coeffs_rsci_d(47
      DOWNTO 32)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(63 DOWNTO 48)), (coeffs_rsci_d(191
      DOWNTO 176)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(207 DOWNTO 192)), (coeffs_rsci_d(335
      DOWNTO 320)), (MAC_io_read_coeffs_rsc_cse_sva_511_64(351 DOWNTO 336)), (coeffs_rsci_d(479
      DOWNTO 464)), MAC_mux_36_nl);
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

ARCHITECTURE v9 OF fir IS
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

END v9;



