void mc_testbench_capture_IN( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) { testbench::capture_IN(coeffs,in1,out1); }
void mc_testbench_capture_OUT( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1) { testbench::capture_OUT(coeffs,in1,out1); }
void mc_testbench_wait_for_idle_sync() {testbench::wait_for_idle_sync(); }
