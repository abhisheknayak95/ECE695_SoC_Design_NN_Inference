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

    static int rptr = 0;
    int wptr = rptr;    
    regs[rptr] = *in1;

    // Modified Multiply and Accumulate
    MAC:
	for(int i = 0 ; i < TAPS ; i++)
	    {
    	        acc += regs[wptr] * coeffs[i];
                if (wptr == 0)
                {
                    wptr = TAPS - 1;
                }
                else
                {
                    wptr = wptr - 1;
                }
	    }
    if (rptr == (TAPS-1))
    {
        rptr = 0;
    }
    else
    {
        rptr++;
    }

    *out1 = acc;
}
