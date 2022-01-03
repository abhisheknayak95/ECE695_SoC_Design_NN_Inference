//  Catapult Ultra Synthesis 10.3d/815731 (Production Release) Wed Apr 24 14:54:19 PDT 2019
//  
//  Copyright (c) Mentor Graphics Corporation, 1996-2019, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                 PROPERTY OF MENTOR GRAPHICS OR ITS LICENSORS
//  
//  Running on Linux 695r48@ecegrid-thin4.ecn.purdue.edu 3.10.0-1160.42.2.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v23.3_4.0, HLS_PKGS v23.3_4.0, 
//                       SIF_TOOLKITS v23.3_4.0, SIF_XILINX v23.3_4.0, 
//                       SIF_ALTERA v23.3_4.0, CCS_LIBS v23.3_4.0, 
//                       CDS_PPRO PowerPro-10.2_4, 
//                       CDS_DesigChecker 10.3b.1902031227, 
//                       CDS_OASYS v18.1_3.19, DesignPad v2.78_1.0
//  
solution new -state initial
solution options defaults
solution options set /Output/GenerateCycleNetlist false
solution file add ./fir_inc.h -type CHEADER
solution file add ./fir.cpp -type C++
directive set -PIPELINE_RAMP_UP true
directive set -COMPGRADE fast
directive set -CLUSTER_TYPE combinational
directive set -CLUSTER_FAST_MODE false
directive set -CLUSTER_RTL_SYN false
directive set -CLUSTER_OPT_CONSTANT_INPUTS true
directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
directive set -ROM_THRESHOLD 64
directive set -PROTOTYPE_ROM true
directive set -CHARACTERIZE_ROM false
directive set -OPT_CONST_MULTS use_library
directive set -CLOCK_OVERHEAD 20.000000
directive set -RESET_CLEARS_ALL_REGS true
directive set -DATA_SYNC none
directive set -TRANSACTION_SYNC ready
directive set -BLOCK_SYNC none
directive set -START_FLAG {}
directive set -READY_FLAG {}
directive set -DONE_FLAG {}
directive set -TRANSACTION_DONE_SIGNAL true
directive set -STALL_FLAG false
directive set -IDLE_SIGNAL {}
directive set -REGISTER_IDLE_SIGNAL false
directive set -ARRAY_SIZE 1024
directive set -CHAN_IO_PROTOCOL standard
directive set -IO_MODE super
directive set -UNROLL no
directive set -REALLOC true
directive set -MUXPATH true
directive set -TIMING_CHECKS true
directive set -ASSIGN_OVERHEAD 0
directive set -REGISTER_SHARING_LIMIT 0
directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
directive set -SAFE_FSM false
directive set -NO_X_ASSIGNMENTS true
directive set -REG_MAX_FANOUT 0
directive set -FSM_BINARY_ENCODING_THRESHOLD 64
directive set -FSM_ENCODING none
directive set -LOGIC_OPT false
directive set -MEM_MAP_THRESHOLD 32
directive set -REGISTER_THRESHOLD 256
directive set -MERGEABLE true
directive set -SPECULATE true
directive set -OLD_SCHED false
directive set -DESIGN_GOAL area
go new
directive set -DESIGN_HIERARCHY fir
go compile
solution library add mgc_Altera-Cyclone-V-6_beh -- -rtlsyntool Quartus -manufacturer Altera -family {Cyclone V} -speed 6 -part 5CEBA2F17C6
solution library add Altera_DIST
solution library add Altera_M10K
solution library add Altera_MLAB
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 10.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 5.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
go assembly
directive set /fir/coeffs:rsc -MAP_TO_MODULE mgc_ioport.mgc_in_wire
directive set /fir/coeffs:rsc -PACKING_MODE sidebyside
directive set /fir/coeffs -WORD_WIDTH 512
directive set /fir/core/regs:rsc -MAP_TO_MODULE Altera_M10K.M10K_DP
directive set /fir/core/MAC -UNROLL 12
go architect
go extract
