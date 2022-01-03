//
// Catapult Design top (FIR filter)
//
#include "fir_inc.h"

#pragma hls_design top
void fir(fxc_t coeffs[TAPS]
	 ,fx_t *in1
	 ,fx_t *out1
	 )
{
    // Register and Accumulator Declaration
    static fx_t regs[TAPS];
    ac_fixed<G+2*W,G+1,true,AC_TRN,AC_WRAP> acc=0.0;

    // Shift Register or Tap-Delay Line Implementation
    SHIFT:
	for(int i = TAPS-1; i>0; i--)
	    {
	    regs[i] = regs[i-1] ;
	    }
	regs[0] = *in1 ;

    // Multiply and Accumulate
    MAC:
	for(int i = 0 ; i < TAPS ; i++)
	    {
	    acc += regs[i] * coeffs[i];
	    }

    *out1 = acc;
}
