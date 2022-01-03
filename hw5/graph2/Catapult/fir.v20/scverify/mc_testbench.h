// ----------------------------------------------------------------------------
// SystemC Testbench Header
//
//    HLS version: 10.3d/815731 Production Release
//       HLS date: Wed Apr 24 14:54:19 PDT 2019
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 8.0a
//
//   Generated by: 695r48@ecegrid-thin4.ecn.purdue.edu
// Generated date: Sat Nov 13 22:47:02 EST 2021
//
// ----------------------------------------------------------------------------
#ifdef CCS_SCVERIFY

// 
// -------------------------------------
// testbench
// User supplied testbench
// -------------------------------------
// 
#ifndef INCLUDED_TESTBENCH_H
#define INCLUDED_TESTBENCH_H

extern void mc_testbench_coeffs_skip(bool v);
extern void mc_testbench_in1_skip(bool v);
extern void mc_testbench_out1_skip(bool v);

#ifndef SC_USE_STD_STRING
#define SC_USE_STD_STRING
#endif

#include "../../fir_inc.h"
#include <systemc.h>
#include <tlm.h>
#include <ac_fixed.h>
#include <mc_container_types.h>
#include <mc_typeconv.h>
#include <mc_transactors.h>
#include <mc_comparator.h>
#include <mc_end_of_testbench.h>
#include <vector>


class testbench : public sc_module
{
public:
   // Interface Ports
   sc_in< bool > clk;
   sc_port< tlm::tlm_fifo_put_if< mgc_sysc_ver_array1D<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,32> > > ccs_coeffs;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_coeffs;
   sc_port< tlm::tlm_fifo_put_if< ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > > ccs_in1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_in1;
   sc_port< tlm::tlm_fifo_get_if< ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > > ccs_out1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_out1;
   sc_in< bool > design_is_idle;
   sc_out< sc_logic > enable_stalls;
   sc_in< unsigned short > stall_coverage;
   
   // Data objects
   bool testbench_ended;
   int main_exit_code;
   bool atleast_one_active_input;
   sc_time last_event_time;
   sc_time last_event_time2;
   sc_signal< bool >                          cpp_testbench_active;
   sc_event testbench_end_event;
   int argc;
   const char* const *argv;
   bool _checked_results;
   bool _failed;
   static testbench* that;
   int main();
   static bool enable_idle_sync_mode;
   static unsigned short idle_sync_stable_cycles;
   static bool coeffs_ignore;
   static bool coeffs_skip;
   static bool coeffs_skip_quiet;
   static bool coeffs_skip_once;
   static bool coeffs_skip_noerr;
   static int coeffs_array_comp_first;
   static int coeffs_array_comp_last;
   bool _capture_coeffs;
   static mc_wait_ctrl coeffs_wait_ctrl;
   int coeffs_capture_count;
   int coeffs_iteration_count;
   static bool in1_ignore;
   static bool in1_skip;
   static bool in1_skip_quiet;
   static bool in1_skip_once;
   static bool in1_skip_noerr;
   static int in1_array_comp_first;
   static int in1_array_comp_last;
   bool _capture_in1;
   static mc_wait_ctrl in1_wait_ctrl;
   int in1_capture_count;
   int in1_iteration_count;
   static bool out1_ignore;
   static bool out1_skip;
   static bool out1_skip_quiet;
   static bool out1_skip_once;
   static bool out1_skip_noerr;
   static int out1_array_comp_first;
   static int out1_array_comp_last;
   static bool out1_use_mask;
   static ac_fixed<16, 2, true, AC_TRN, AC_WRAP > out1_output_mask;
   tlm::tlm_fifo< mc_golden_info< ac_fixed<16, 2, true, AC_TRN, AC_WRAP >, ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > > out1_golden;
   bool _capture_out1;
   static mc_wait_ctrl out1_wait_ctrl;
   int out1_capture_count;
   int out1_iteration_count;
   int wait_cnt;
   
   // Named Objects
   
   // Module instance pointers
   mc_comparator< ac_fixed<16, 2, true, AC_TRN, AC_WRAP > , ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > *out1_comp;
   
   // Declare processes (SC_METHOD and SC_THREAD)
   void wait_for_end();
   void run();
   
   // Constructor
   SC_HAS_PROCESS(testbench);
   testbench(
      const sc_module_name& name
   )
      : clk("clk")
      , ccs_coeffs("ccs_coeffs")
      , ccs_wait_ctrl_coeffs("ccs_wait_ctrl_coeffs")
      , ccs_in1("ccs_in1")
      , ccs_wait_ctrl_in1("ccs_wait_ctrl_in1")
      , ccs_out1("ccs_out1")
      , ccs_wait_ctrl_out1("ccs_wait_ctrl_out1")
      , design_is_idle("design_is_idle")
      , enable_stalls("enable_stalls")
      , stall_coverage("stall_coverage")
      , cpp_testbench_active("cpp_testbench_active")
      , out1_golden("out1_golden",-1)
   {
      // Instantiate other modules
      out1_comp = new mc_comparator< ac_fixed<16, 2, true, AC_TRN, AC_WRAP > , ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > (
         "out1_comp",
         "out1",
         0,
         0,
         1
      );
      out1_comp->data_in(ccs_out1);
      out1_comp->data_golden(out1_golden);
      
      
      // Register processes
      SC_METHOD(wait_for_end);
      sensitive << clk.pos() << testbench_end_event;
      SC_THREAD(run);
      // Other constructor statements
      set_stack_size(64000000);
      argc = sc_argc();
      argv = sc_argv();
      _checked_results = false;
      that = this;
      testbench_ended = false;
      main_exit_code = 0;
      atleast_one_active_input = true;
      _failed = false;
      _capture_coeffs = true;
      _capture_in1 = true;
      _capture_out1 = true;
      wait_cnt = 0;
   }
   
   ~testbench()
   {
      delete out1_comp;
      out1_comp = 0;
   }
   
   // C++ class functions
   public:
      static void wait_for_idle_sync() ;
   public:
      static void set_enable_stalls(bool flag) ;
   public:
      void capture_coeffs( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32]) ;
   public:
      void capture_in1( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1) ;
   public:
      void capture_out1( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) ;
   protected:
      void wait_on_input_required() ;
   public:
      static void capture_IN( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) ;
   public:
      static void capture_OUT( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) ;
   public:
      static void exec_fir( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) ;
   protected:
      void start_of_simulation() ;
   protected:
      void end_of_simulation() ;
   public:
      void check_results() ;
   public:
      bool failed() ;
   public:
      void set_failed(bool fail) ;
};
#endif
#endif
