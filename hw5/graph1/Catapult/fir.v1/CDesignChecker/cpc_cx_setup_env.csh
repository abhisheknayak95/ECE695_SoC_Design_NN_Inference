#! /bin/csh -f
setenv SYSTEMC_HOME /package/eda/mg/Catapult_10.3d/Mgc_home/shared
setenv SYSTEMC_LIB_DIR /package/eda/mg/Catapult_10.3d/Mgc_home/shared/lib
setenv CXX_FLAGS "-g -DCALYPTO_SKIP_SYSTEMC_VERSION_CHECK"
setenv LD_FLAGS "-lpthread"
setenv OSSIM ddd
setenv PATH /package/eda/mg/Catapult_10.3d/Mgc_home/bin:$PATH
