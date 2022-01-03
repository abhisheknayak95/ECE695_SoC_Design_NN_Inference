//
// Define types for FIR Filter
// 

// ----------------------------------------------------------------
// Includes and Defines
// ----------------------------------------------------------------
#include "ac_fixed.h"
const int TAPS = 32;  // Number of Taps (filter order = 31)
const int W    = 16;  // Wordlength for input/output/coefficients
const int G    = 3;   // Number of Gaurd bits accumulator

// ----------------------------------------------------------------
// Data Types
// ----------------------------------------------------------------
typedef ac_fixed<W,2,true,AC_TRN,AC_WRAP>  fx_t;  // input/output
typedef ac_fixed<W,2,true,AC_TRN,AC_WRAP>  fxc_t; // coefficients

// ----------------------------------------------------------------
// Functions
// ----------------------------------------------------------------
void fir(fxc_t coeffs[] ,fx_t *in1 ,fx_t *out1);
