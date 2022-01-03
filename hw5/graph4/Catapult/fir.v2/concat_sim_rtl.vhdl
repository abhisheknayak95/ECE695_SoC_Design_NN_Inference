
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
--  Generated date: Wed Nov 10 16:27:33 2021
-- ----------------------------------------------------------------------

-- 
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

ARCHITECTURE v2 OF fir_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL coeffs_rsci_d : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL in1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_idat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL main_stage_0_3 : STD_LOGIC;
  SIGNAL reg_in1_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL regs_1_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL regs_0_sva : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_62_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
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
  SIGNAL MAC_asn_75_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_76_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_77_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_78_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_79_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_80_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_81_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_82_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_83_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_84_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_85_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_86_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_87_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_88_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_89_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_asn_90_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL MAC_1_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_2_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_3_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_4_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_5_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_6_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_7_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_8_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_17_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_9_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_10_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_11_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_12_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_13_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_14_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_15_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_16_mul_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_itm_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL MAC_16_acc_2_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_15_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_11_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_10_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_14_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_9_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_8_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_13_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_7_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_6_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_16_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_5_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_acc_12_nl : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_9_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_10_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_11_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_12_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_13_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_14_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_15_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_16_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_1_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_2_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_3_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_4_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_5_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_6_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_7_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL MAC_8_acc_3_nl : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL coeffs_rsci_d_1 : STD_LOGIC_VECTOR (511 DOWNTO 0);
  SIGNAL coeffs_rsci_z : STD_LOGIC_VECTOR (511 DOWNTO 0);

  SIGNAL in1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL in1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);

  SIGNAL out1_rsci_idat_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL out1_rsci_dat : STD_LOGIC_VECTOR (15 DOWNTO 0);

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
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsc_triosy_obj_ld <= '0';
        MAC_acc_17_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_acc_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        reg_in1_rsc_triosy_obj_ld_cse <= '0';
        main_stage_0_3 <= '0';
        MAC_9_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_10_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_11_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_12_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_13_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_14_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_15_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_16_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_1_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_2_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_3_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_4_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_5_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_6_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_7_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_8_mul_itm_1 <= STD_LOGIC_VECTOR'( "000000000000000000000000000000");
        MAC_asn_89_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_90_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_87_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_88_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_85_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_86_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_83_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_84_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_81_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_82_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_79_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_80_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_77_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_78_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_75_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_76_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_73_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_74_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_71_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_72_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_69_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_70_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_67_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_68_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_65_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_66_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_1_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_64_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
        regs_0_sva <= STD_LOGIC_VECTOR'( "0000000000000000");
        MAC_asn_62_itm <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSE
        out1_rsc_triosy_obj_ld <= main_stage_0_3;
        MAC_acc_17_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_15_nl),
            30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_14_nl), 30), 30));
        MAC_acc_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_13_nl),
            30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_16_nl), 30), 30));
        reg_in1_rsc_triosy_obj_ld_cse <= '1';
        main_stage_0_3 <= reg_in1_rsc_triosy_obj_ld_cse;
        MAC_9_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_9_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(143 DOWNTO 128))), 30));
        MAC_10_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_10_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(159 DOWNTO 144))), 30));
        MAC_11_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_11_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(175 DOWNTO 160))), 30));
        MAC_12_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_12_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(191 DOWNTO 176))), 30));
        MAC_13_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_13_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(207 DOWNTO 192))), 30));
        MAC_14_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_14_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(223 DOWNTO 208))), 30));
        MAC_15_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_15_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(239 DOWNTO 224))), 30));
        MAC_16_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_16_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(255 DOWNTO 240))), 30));
        MAC_1_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_1_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(15 DOWNTO 0))), 30));
        MAC_2_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_2_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(31 DOWNTO 16))), 30));
        MAC_3_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_3_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(47 DOWNTO 32))), 30));
        MAC_4_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_4_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(63 DOWNTO 48))), 30));
        MAC_5_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_5_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(79 DOWNTO 64))), 30));
        MAC_6_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_6_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(95 DOWNTO 80))), 30));
        MAC_7_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_7_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(111 DOWNTO 96))), 30));
        MAC_8_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(SIGNED'( CONV_SIGNED(SIGNED(MAC_8_acc_3_nl),
            17) * SIGNED(coeffs_rsci_d(127 DOWNTO 112))), 30));
        MAC_asn_89_itm <= MAC_asn_87_itm;
        MAC_asn_90_itm <= MAC_asn_89_itm;
        MAC_asn_87_itm <= MAC_asn_85_itm;
        MAC_asn_88_itm <= MAC_asn_90_itm;
        MAC_asn_85_itm <= MAC_asn_83_itm;
        MAC_asn_86_itm <= MAC_asn_88_itm;
        MAC_asn_83_itm <= MAC_asn_81_itm;
        MAC_asn_84_itm <= MAC_asn_86_itm;
        MAC_asn_81_itm <= MAC_asn_79_itm;
        MAC_asn_82_itm <= MAC_asn_84_itm;
        MAC_asn_79_itm <= MAC_asn_77_itm;
        MAC_asn_80_itm <= MAC_asn_82_itm;
        MAC_asn_77_itm <= MAC_asn_75_itm;
        MAC_asn_78_itm <= MAC_asn_80_itm;
        MAC_asn_75_itm <= MAC_asn_73_itm;
        MAC_asn_76_itm <= MAC_asn_78_itm;
        MAC_asn_73_itm <= MAC_asn_71_itm;
        MAC_asn_74_itm <= MAC_asn_76_itm;
        MAC_asn_71_itm <= MAC_asn_69_itm;
        MAC_asn_72_itm <= MAC_asn_74_itm;
        MAC_asn_69_itm <= MAC_asn_67_itm;
        MAC_asn_70_itm <= MAC_asn_72_itm;
        MAC_asn_67_itm <= MAC_asn_65_itm;
        MAC_asn_68_itm <= MAC_asn_70_itm;
        MAC_asn_65_itm <= regs_1_sva;
        MAC_asn_66_itm <= MAC_asn_68_itm;
        MAC_asn_itm <= MAC_asn_62_itm;
        regs_1_sva <= regs_0_sva;
        MAC_asn_64_itm <= MAC_asn_66_itm;
        regs_0_sva <= in1_rsci_idat;
        MAC_asn_62_itm <= MAC_asn_64_itm;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        out1_rsci_idat <= STD_LOGIC_VECTOR'( "0000000000000000");
      ELSIF ( main_stage_0_3 = '1' ) THEN
        out1_rsci_idat <= MAC_16_acc_2_nl(29 DOWNTO 14);
      END IF;
    END IF;
  END PROCESS;
  MAC_acc_11_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_1_mul_itm_1) + UNSIGNED(MAC_2_mul_itm_1),
      30));
  MAC_acc_10_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_3_mul_itm_1) + UNSIGNED(MAC_4_mul_itm_1),
      30));
  MAC_acc_15_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_11_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_10_nl), 30), 30));
  MAC_acc_9_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_5_mul_itm_1) + UNSIGNED(MAC_6_mul_itm_1),
      30));
  MAC_acc_8_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_7_mul_itm_1) + UNSIGNED(MAC_8_mul_itm_1),
      30));
  MAC_acc_14_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_9_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_8_nl), 30), 30));
  MAC_acc_7_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_9_mul_itm_1) + UNSIGNED(MAC_10_mul_itm_1),
      30));
  MAC_acc_6_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_11_mul_itm_1) + UNSIGNED(MAC_12_mul_itm_1),
      30));
  MAC_acc_13_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_7_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_6_nl), 30), 30));
  MAC_acc_5_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_13_mul_itm_1) + UNSIGNED(MAC_14_mul_itm_1),
      30));
  MAC_acc_12_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(MAC_15_mul_itm_1) + UNSIGNED(MAC_16_mul_itm_1),
      30));
  MAC_acc_16_nl <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(MAC_acc_5_nl),
      30) + CONV_UNSIGNED(UNSIGNED(MAC_acc_12_nl), 30), 30));
  MAC_9_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_75_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_76_itm), 16), 17), 17));
  MAC_10_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_77_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_78_itm), 16), 17), 17));
  MAC_11_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_79_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_80_itm), 16), 17), 17));
  MAC_12_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_81_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_82_itm), 16), 17), 17));
  MAC_13_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_83_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_84_itm), 16), 17), 17));
  MAC_14_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_85_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_86_itm), 16), 17), 17));
  MAC_15_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_87_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_88_itm), 16), 17), 17));
  MAC_16_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_89_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_90_itm), 16), 17), 17));
  MAC_1_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(in1_rsci_idat),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_itm), 16), 17), 17));
  MAC_2_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_0_sva),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_62_itm), 16), 17), 17));
  MAC_3_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(regs_1_sva),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_64_itm), 16), 17), 17));
  MAC_4_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_65_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_66_itm), 16), 17), 17));
  MAC_5_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_67_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_68_itm), 16), 17), 17));
  MAC_6_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_69_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_70_itm), 16), 17), 17));
  MAC_7_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_71_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_72_itm), 16), 17), 17));
  MAC_8_acc_3_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_73_itm),
      16), 17) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_asn_74_itm), 16), 17), 17));
  MAC_16_acc_2_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(MAC_acc_17_itm_1) + SIGNED(MAC_acc_itm_1),
      30));
END v2;

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

ARCHITECTURE v2 OF fir IS
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

END v2;



