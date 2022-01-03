// ccs_block_macros.h
#include "mc_testbench.h"
extern void mc_testbench_capture_IN( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1);
extern void mc_testbench_capture_OUT( ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,  ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1);
extern void mc_testbench_wait_for_idle_sync();

#ifdef CCS_DESIGN_FUNC_fir
#define ccs_intercept_fir_7 \
  ccs_real_fir(ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1);\
  void fir(ac_fixed<16, 2, true, AC_TRN, AC_WRAP > coeffs[32],ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *in1,ac_fixed<16, 2, true, AC_TRN, AC_WRAP > *out1)\
{\
    static bool ccs_intercept_flag = false;\
    if (!ccs_intercept_flag) {\
      std::cout << "SCVerify intercepting C++ function 'fir' for RTL block 'fir'" << std::endl;\
      ccs_intercept_flag=true;\
    }\
    mc_testbench_capture_IN(coeffs,in1,out1);\
    ccs_real_fir(coeffs,in1,out1);\
    mc_testbench_capture_OUT(coeffs,in1,out1);\
}\
  void ccs_real_fir
#else
#define ccs_intercept_fir_7 fir
#endif
