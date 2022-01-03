// ----------------------------------------------------------------------------
// SystemC Testbench Body
//
//    HLS version: 10.3d/815731 Production Release
//       HLS date: Wed Apr 24 14:54:19 PDT 2019
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 8.0a
//
//   Generated by: 695r48@ecegrid-thin4.ecn.purdue.edu
// Generated date: Wed Nov 10 16:35:35 EST 2021
//
// ----------------------------------------------------------------------------
// 
// -------------------------------------
// testbench
// User supplied testbench
// -------------------------------------
// 
#include "mc_testbench.h"
#include <mc_testbench_util.h>
#include <mc_simulator_extensions.h>

testbench* testbench::that;
bool testbench::enable_idle_sync_mode;
unsigned short testbench::idle_sync_stable_cycles;
bool testbench::coeffs_ignore;
bool testbench::coeffs_skip;
bool testbench::coeffs_skip_quiet;
bool testbench::coeffs_skip_once;
bool testbench::coeffs_skip_noerr;
void mc_testbench_coeffs_skip(bool v) { testbench::coeffs_skip = v; }
int testbench::coeffs_array_comp_first;
int testbench::coeffs_array_comp_last;
mc_wait_ctrl testbench::coeffs_wait_ctrl;
bool testbench::in1_ignore;
bool testbench::in1_skip;
bool testbench::in1_skip_quiet;
bool testbench::in1_skip_once;
bool testbench::in1_skip_noerr;
void mc_testbench_in1_skip(bool v) { testbench::in1_skip = v; }
int testbench::in1_array_comp_first;
int testbench::in1_array_comp_last;
mc_wait_ctrl testbench::in1_wait_ctrl;
bool testbench::out1_ignore;
bool testbench::out1_skip;
bool testbench::out1_skip_quiet;
bool testbench::out1_skip_once;
bool testbench::out1_skip_noerr;
void mc_testbench_out1_skip(bool v) { testbench::out1_skip = v; }
int testbench::out1_array_comp_first;
int testbench::out1_array_comp_last;
bool testbench::out1_use_mask;
ac_fixed<16, 2, true, AC_TRN, AC_WRAP > testbench::out1_output_mask;
mc_wait_ctrl testbench::out1_wait_ctrl;
#ifndef CCS_SCVERIFY_USE_CCS_BLOCK
extern "C++" void fir( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1);
#endif

// ============================================
// Function: wait_for_idle_sync
// --------------------------------------------

void testbench::wait_for_idle_sync()
{
   if (enable_idle_sync_mode) {
      std::cout << "mc_testbench STOPPING   @ " << sc_time_stamp() << std::endl;
      that->cpp_testbench_active.write(false);
      while (that->design_is_idle.read())  that->wait(that->design_is_idle.value_changed_event());
      while (!that->design_is_idle.read()) that->wait(that->design_is_idle.value_changed_event());
      that->cpp_testbench_active.write(true);
      std::cout << "mc_testbench CONTINUING @ " << sc_time_stamp() << std::endl;
   } else {
      that->cpp_testbench_active.write(true);
   }
}
// ============================================
// Function: set_enable_stalls
// --------------------------------------------

void testbench::set_enable_stalls(bool flag)
{
   if (flag) {
     std::cout << "Enabling STALL_FLAG toggling" << std::endl;
     that->enable_stalls.write(sc_dt::Log_1);
   } else {
     std::cout << "Disabling STALL_FLAG toggling" << std::endl;
     that->enable_stalls.write(sc_dt::Log_0);
   }
}
// ============================================
// Function: capture_coeffs
// --------------------------------------------

void testbench::capture_coeffs( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32])
{
   if (coeffs_capture_count == wait_cnt)
      wait_on_input_required();
   if (_capture_coeffs && !coeffs_ignore)
   {
      int cur_iter = coeffs_iteration_count;
      ++coeffs_iteration_count;
      mgc_sysc_ver_array1D<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,32> coeffs_tmp;
      int coeffs_linear_idx = 0;
      for (int coeffs_idx_0 = 0; coeffs_idx_0 < 32; ++coeffs_idx_0)
         coeffs_tmp[coeffs_linear_idx++] = coeffs[coeffs_idx_0];
      ccs_coeffs->put(coeffs_tmp);
      ++coeffs_capture_count;
      mc_testbench::process_wait_ctrl("coeffs",coeffs_wait_ctrl,ccs_wait_ctrl_coeffs.operator->(),cur_iter,coeffs_capture_count,0);
   }
   coeffs_ignore = false;
}
// ============================================
// Function: capture_in1
// --------------------------------------------

void testbench::capture_in1( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1)
{
   if (in1_capture_count == wait_cnt)
      wait_on_input_required();
   if (_capture_in1 && !in1_ignore)
   {
      int cur_iter = in1_iteration_count;
      ++in1_iteration_count;
      ccs_in1->put((*in1)); // THIS
      ++in1_capture_count;
      mc_testbench::process_wait_ctrl("in1",in1_wait_ctrl,ccs_wait_ctrl_in1.operator->(),cur_iter,in1_capture_count,0);
   }
   in1_ignore = false;
}
// ============================================
// Function: capture_out1
// --------------------------------------------

void testbench::capture_out1( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1)
{
   if (_capture_out1)
   {
      int cur_iter = out1_iteration_count;
      ++out1_iteration_count;
      mc_golden_info< ac_fixed<16, 2, true, AC_TRN, AC_WRAP >, ac_fixed<16, 2, true, AC_TRN, AC_WRAP > > out1_tmp((*out1), out1_ignore, ~0, false, out1_iteration_count);
      // BEGIN: testbench output_mask control for field_name out1
      if ( out1_use_mask ) {
         out1_tmp._use_mask = true;
         out1_tmp._mask = out1_output_mask ;
      }
      // END: testbench output_mask control for field_name out1
      if (!out1_skip) {
         out1_golden.put(out1_tmp);
         ++out1_capture_count;
      } else {
         if (!out1_skip_quiet || !out1_skip_once) {
            std::ostringstream msg; msg.str("");
            msg << "out1_skip=true for iteration=" << out1_iteration_count << " @ " << sc_time_stamp();
            SC_REPORT_WARNING("User testbench", msg.str().c_str());
            out1_skip_once = true;
         }
      }
      mc_testbench::process_wait_ctrl("out1",out1_wait_ctrl,ccs_wait_ctrl_out1.operator->(),cur_iter,out1_capture_count,0);
      out1_use_mask = false;
   }
   out1_ignore = false;
   out1_skip = false;
}
// ============================================
// Function: wait_on_input_required
// --------------------------------------------

void testbench::wait_on_input_required()
{
   ++wait_cnt;
   wait(SC_ZERO_TIME); // get fifos a chance to update
   while (atleast_one_active_input) {
      if (_capture_coeffs && ccs_coeffs->used() == 0) return;
      if (_capture_in1 && ccs_in1->used() == 0) return;
      that->cpp_testbench_active.write(false);
      wait(ccs_coeffs->ok_to_put() | ccs_in1->ok_to_put());
      that->cpp_testbench_active.write(true);
   }
}
// ============================================
// Function: capture_IN
// --------------------------------------------

void testbench::capture_IN( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1)
{
   that->capture_coeffs(coeffs);
   that->capture_in1(in1);
}
// ============================================
// Function: capture_OUT
// --------------------------------------------

void testbench::capture_OUT( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1)
{
   that->capture_out1(out1);
}
// ============================================
// Function: exec_fir
// --------------------------------------------

void testbench::exec_fir( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1)
{
   #ifndef CCS_SCVERIFY_USE_CCS_BLOCK
   that->cpp_testbench_active.write(true);
   capture_IN(coeffs, in1, out1);
   fir(coeffs, in1, out1);
   // throttle ac_channel based on number of calls to chan::size() or chan::empty() or chan::nb_read() (but not chan::available()) 
   if (1) {
      int cnt=0;
      if (cnt) std::cout << "mc_testbench.cpp: CONTINUES @ " << sc_time_stamp() << std::endl;
      if (cnt) that->cpp_testbench_active.write(true);
   }
   capture_OUT(coeffs, in1, out1);
   #else
   #endif
}
// ============================================
// Function: start_of_simulation
// --------------------------------------------

void testbench::start_of_simulation()
{
   set_enable_stalls(false);
}
// ============================================
// Function: end_of_simulation
// --------------------------------------------

void testbench::end_of_simulation()
{
   if (!_checked_results) {
      SC_REPORT_INFO(name(), "Simulation ran into deadlock");
      check_results();
   }
}
// ============================================
// Function: check_results
// --------------------------------------------

void testbench::check_results()
{
   if (_checked_results) return;
   _checked_results = true;
   cout<<endl;
   cout<<"Checking results"<<endl;
   if (main_exit_code) _failed = true;
   int _num_outputs_checked = 0;
   bool _has_capture_counts = false;
   std::ostringstream mctb_msg;
   
   if (!_capture_out1) {
      cout<<"'out1' - warning, output was optimized away"<<endl;
   } else {
      _num_outputs_checked++;
      _failed |= out1_comp->check_results(out1_capture_count,out1_skip_noerr);
      _has_capture_counts |= !!(out1_capture_count);
   }
   cout<<endl;
   if (_num_outputs_checked == 0) {
      cout<<"Error: All outputs were optimized away. No output values were compared."<<endl;
      _failed = _failed || (_num_outputs_checked == 0);
   }
   if (!_has_capture_counts) {
      cout<<"Error: Nothing to compare, all output capture counts are zero."<<endl;
      _failed = true;
   }
   if (main_exit_code) cout << "Error: C++ Testbench 'main()' returned a non-zero exit code ("<<main_exit_code<<"). Check your testbench." <<endl;
   mctb_msg.clear();
   if (_failed) mctb_msg << "Simulation FAILED";
   else         mctb_msg << "Simulation PASSED";
   mctb_msg << " @ " << sc_time_stamp();
   SC_REPORT_INFO(this->name(), mctb_msg.str().c_str());
}
// ============================================
// Function: failed
// --------------------------------------------

bool testbench::failed()
{
   return _failed;
}
// ============================================
// Function: set_failed
// --------------------------------------------

void testbench::set_failed(bool fail)
{
   _failed = fail;
}
// ---------------------------------------------------------------
// Process: SC_METHOD wait_for_end
// Static sensitivity: sensitive << clk.pos() << testbench_end_event;

void testbench::wait_for_end() {
   // If run() has not finished, we do nothing here
   if (!testbench_ended) return;
   // check for completed outputs
   if (out1_comp->get_compare_count() < out1_capture_count) {testbench_end_event.notify(1,SC_NS); return;}
   // If we made it here, all outputs have flushed. Check the results
   SC_REPORT_INFO(name(), "Simulation completed");
   check_results();
   sc_stop();
}
// ---------------------------------------------------------------
// Process: SC_THREAD run
// Static sensitivity: 

void testbench::run() {
   enable_idle_sync_mode = false;
   idle_sync_stable_cycles = 1;
   coeffs_ignore = false;
   coeffs_skip = false;
   coeffs_skip_quiet = false;
   coeffs_skip_once = false;
   coeffs_skip_noerr = false;
   coeffs_array_comp_first = -1;
   coeffs_array_comp_last = -1;
   coeffs_wait_ctrl.clear();
   coeffs_capture_count = 0;
   coeffs_iteration_count = 0;
   in1_ignore = false;
   in1_skip = false;
   in1_skip_quiet = false;
   in1_skip_once = false;
   in1_skip_noerr = false;
   in1_array_comp_first = -1;
   in1_array_comp_last = -1;
   in1_wait_ctrl.clear();
   in1_capture_count = 0;
   in1_iteration_count = 0;
   out1_ignore = false;
   out1_skip = false;
   out1_skip_quiet = false;
   out1_skip_once = false;
   out1_skip_noerr = false;
   out1_array_comp_first = -1;
   out1_array_comp_last = -1;
   out1_use_mask = false;
   out1_output_mask = ~0;
   out1_wait_ctrl.clear();
   out1_capture_count = 0;
   out1_iteration_count = 0;
   main_exit_code = main();
   cout<<"Info: Execution of user-supplied C++ testbench 'main()' has completed with exit code = " << main_exit_code << endl;
   cout<<endl;
   cout<<"Info: Collecting data completed"<<endl;
   cout<<"   captured "<<coeffs_capture_count<<" values of coeffs"<<endl;
   cout<<"   captured "<<in1_capture_count<<" values of in1"<<endl;
   cout<<"   captured "<<out1_capture_count<<" values of out1"<<endl;
   testbench_ended = true;
   testbench_end_event.notify(SC_ZERO_TIME);
}
#ifdef CCS_SCVERIFY_USE_CCS_BLOCK
#include "ccs_block_macros.cpp"
#endif
