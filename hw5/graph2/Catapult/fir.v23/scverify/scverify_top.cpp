#include <string>
#include <fstream>
#include <iostream>
#include "mc_testbench.h"
#include <mc_reset.h>
#include <mc_transactors.h>
#include <mc_scverify.h>
#include <mc_stall_ctrl.h>
#include "ccs_ioport_trans_rsc_v1.h"
#include "mgc_ioport_trans_rsc_v1.h"
#include <mc_monitor.h>
#include <mc_simulator_extensions.h>
#include "mc_dut_wrapper.h"
#include "ccs_probes.cpp"
#include <mt19937ar.c>
#ifndef TO_QUOTED_STRING
#define TO_QUOTED_STRING(x) TO_QUOTED_STRING1(x)
#define TO_QUOTED_STRING1(x) #x
#endif
#ifndef TOP_HDL_ENTITY
#define TOP_HDL_ENTITY fir
#endif
// Hold time for the SCVerify testbench to account for the gate delay after downstream synthesis in pico second(s)
// Hold time value is obtained from 'top_gate_constraints.cpp', which is generated at the end of RTL synthesis
#ifdef CCS_DUT_GATE
extern double __scv_hold_time;
extern double __scv_hold_time_RSCID_1;
extern double __scv_hold_time_RSCID_2;
extern double __scv_hold_time_RSCID_3;
#else
double __scv_hold_time = 0.0; // default for non-gate simulation is zero
double __scv_hold_time_RSCID_1 = 0;
double __scv_hold_time_RSCID_2 = 0;
double __scv_hold_time_RSCID_3 = 0;
#endif

class scverify_top : public sc_module
{
public:
  sc_signal<sc_logic>                                                                            rst;
  sc_signal<sc_logic>                                                                            rst_n;
  sc_signal<sc_logic>                                                                            SIG_SC_LOGIC_0;
  sc_signal<sc_logic>                                                                            SIG_SC_LOGIC_1;
  sc_signal<sc_logic>                                                                            TLS_design_is_idle;
  sc_signal<bool>                                                                                TLS_design_is_idle_reg;
  sc_clock                                                                                       clk;
  mc_programmable_reset                                                                          rst_driver;
  sc_signal<sc_logic>                                                                            TLS_rst;
  sc_signal<sc_lv<512> >                                                                         TLS_coeffs_rsc_z;
  sc_signal<sc_logic>                                                                            TLS_coeffs_rsc_triosy_lz;
  sc_signal<sc_lv<16> >                                                                          TLS_in1_rsc_dat;
  sc_signal<sc_logic>                                                                            TLS_in1_rsc_triosy_lz;
  sc_signal<sc_lv<16> >                                                                          TLS_out1_rsc_dat;
  sc_signal<sc_logic>                                                                            TLS_out1_rsc_triosy_lz;
  ccs_DUT_wrapper                                                                                fir_INST;
  mgc_in_wire_trans_rsc_v1<1,512 >                                                               coeffs_rsc_INST;
  ccs_in_trans_rsc_v1<1,16 >                                                                     in1_rsc_INST;
  ccs_out_trans_rsc_v1<1,16 >                                                                    out1_rsc_INST;
  tlm::tlm_fifo<mgc_sysc_ver_array1D<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,32> >               TLS_in_fifo_coeffs;
  tlm::tlm_fifo<mc_wait_ctrl>                                                                    TLS_in_wait_ctrl_fifo_coeffs;
  mc_trios_input_monitor                                                                         trios_monitor_coeffs_rsc_triosy_lz_INST;
  mc_input_transactor<mgc_sysc_ver_array1D<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,32>,16,true>  transactor_coeffs;
  tlm::tlm_fifo<ac_fixed<16, 2, true, AC_TRN, AC_WRAP > >                                        TLS_in_fifo_in1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                                    TLS_in_wait_ctrl_fifo_in1;
  mc_trios_input_monitor                                                                         trios_monitor_in1_rsc_triosy_lz_INST;
  mc_input_transactor<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,16,true>                           transactor_in1;
  tlm::tlm_fifo<ac_fixed<16, 2, true, AC_TRN, AC_WRAP > >                                        TLS_out_fifo_out1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                                    TLS_out_wait_ctrl_fifo_out1;
  mc_trios_output_monitor                                                                        trios_monitor_out1_rsc_triosy_lz_INST;
  mc_output_transactor<ac_fixed<16, 2, true, AC_TRN, AC_WRAP >,16,true>                          transactor_out1;
  testbench                                                                                      testbench_INST;
  sc_signal<sc_logic>                                                                            catapult_start;
  sc_signal<sc_logic>                                                                            catapult_done;
  sc_signal<sc_logic>                                                                            catapult_ready;
  sc_signal<sc_logic>                                                                            in_sync;
  sc_signal<sc_logic>                                                                            out_sync;
  sc_signal<sc_logic>                                                                            inout_sync;
  sc_signal<unsigned>                                                                            wait_for_init;
  sync_generator                                                                                 sync_generator_INST;
  catapult_monitor                                                                               catapult_monitor_INST;
  ccs_probe_monitor                                                                             *ccs_probe_monitor_INST;
  sc_event                                                                                       reset_deactivation_event;
  sc_event                                                                                       deadlock_event;
  sc_signal<sc_logic>                                                                            deadlocked;
  sc_signal<sc_logic>                                                                            maxsimtime;
  sc_event                                                                                       max_sim_time_event;
  sc_signal<sc_logic>                                                                            TLS_enable_stalls;
  sc_signal<unsigned short>                                                                      TLS_stall_coverage;

  void max_sim_time_notify();
  void start_of_simulation();
  void setup_debug();
  void debug(const char* varname, int flags, int count);
  void generate_reset();
  void install_observe_foreign_signals();
  void deadlock_watch();
  void deadlock_notify();

  // Constructor
  SC_HAS_PROCESS(scverify_top);
  scverify_top(const sc_module_name& name)
    : rst("rst")
    , rst_n("rst_n")
    , SIG_SC_LOGIC_0("SIG_SC_LOGIC_0")
    , SIG_SC_LOGIC_1("SIG_SC_LOGIC_1")
    , TLS_design_is_idle("TLS_design_is_idle")
    , TLS_design_is_idle_reg("TLS_design_is_idle_reg")
    , CCS_CLK_CTOR(clk, "clk", 10, SC_NS, 0.5, 0, SC_NS, false)
    , rst_driver("rst_driver", 20.000000, false)
    , TLS_rst("TLS_rst")
    , TLS_coeffs_rsc_z("TLS_coeffs_rsc_z")
    , TLS_coeffs_rsc_triosy_lz("TLS_coeffs_rsc_triosy_lz")
    , TLS_in1_rsc_dat("TLS_in1_rsc_dat")
    , TLS_in1_rsc_triosy_lz("TLS_in1_rsc_triosy_lz")
    , TLS_out1_rsc_dat("TLS_out1_rsc_dat")
    , TLS_out1_rsc_triosy_lz("TLS_out1_rsc_triosy_lz")
    , fir_INST("rtl", TO_QUOTED_STRING(TOP_HDL_ENTITY))
    , coeffs_rsc_INST("coeffs_rsc", true)
    , in1_rsc_INST("in1_rsc", true)
    , out1_rsc_INST("out1_rsc", true)
    , TLS_in_fifo_coeffs("TLS_in_fifo_coeffs", -1)
    , TLS_in_wait_ctrl_fifo_coeffs("TLS_in_wait_ctrl_fifo_coeffs", -1)
    , trios_monitor_coeffs_rsc_triosy_lz_INST("trios_monitor_coeffs_rsc_triosy_lz_INST")
    , transactor_coeffs("transactor_coeffs", 0, 512, 0)
    , TLS_in_fifo_in1("TLS_in_fifo_in1", -1)
    , TLS_in_wait_ctrl_fifo_in1("TLS_in_wait_ctrl_fifo_in1", -1)
    , trios_monitor_in1_rsc_triosy_lz_INST("trios_monitor_in1_rsc_triosy_lz_INST")
    , transactor_in1("transactor_in1", 0, 16, 0)
    , TLS_out_fifo_out1("TLS_out_fifo_out1", -1)
    , TLS_out_wait_ctrl_fifo_out1("TLS_out_wait_ctrl_fifo_out1", -1)
    , trios_monitor_out1_rsc_triosy_lz_INST("trios_monitor_out1_rsc_triosy_lz_INST")
    , transactor_out1("transactor_out1", 0, 16, 0)
    , testbench_INST("user_tb")
    , catapult_start("catapult_start")
    , catapult_done("catapult_done")
    , catapult_ready("catapult_ready")
    , in_sync("in_sync")
    , out_sync("out_sync")
    , inout_sync("inout_sync")
    , wait_for_init("wait_for_init")
    , sync_generator_INST("sync_generator", true, false, false, false, 6, 6, 0)
    , catapult_monitor_INST("Monitor", clk, true, 6LL, 3LL)
    , ccs_probe_monitor_INST(NULL)
    , deadlocked("deadlocked")
    , maxsimtime("maxsimtime")
  {
    rst_driver.reset_out(TLS_rst);

    fir_INST.clk(clk);
    fir_INST.rst(TLS_rst);
    fir_INST.coeffs_rsc_z(TLS_coeffs_rsc_z);
    fir_INST.coeffs_rsc_triosy_lz(TLS_coeffs_rsc_triosy_lz);
    fir_INST.in1_rsc_dat(TLS_in1_rsc_dat);
    fir_INST.in1_rsc_triosy_lz(TLS_in1_rsc_triosy_lz);
    fir_INST.out1_rsc_dat(TLS_out1_rsc_dat);
    fir_INST.out1_rsc_triosy_lz(TLS_out1_rsc_triosy_lz);

    coeffs_rsc_INST.z(TLS_coeffs_rsc_z);
    coeffs_rsc_INST.clk(clk);
    coeffs_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_1)));

    in1_rsc_INST.dat(TLS_in1_rsc_dat);
    in1_rsc_INST.clk(clk);
    in1_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_2)));

    out1_rsc_INST.dat(TLS_out1_rsc_dat);
    out1_rsc_INST.clk(clk);
    out1_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_3)));

    trios_monitor_coeffs_rsc_triosy_lz_INST.trios(TLS_coeffs_rsc_triosy_lz);
    trios_monitor_coeffs_rsc_triosy_lz_INST.register_mon(&catapult_monitor_INST);

    transactor_coeffs.in_fifo(TLS_in_fifo_coeffs);
    transactor_coeffs.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_coeffs);
    transactor_coeffs.bind_clk(clk, true);
    transactor_coeffs.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_coeffs.register_block(&coeffs_rsc_INST, coeffs_rsc_INST.basename(), TLS_coeffs_rsc_triosy_lz, 0,
        0, 1);

    trios_monitor_in1_rsc_triosy_lz_INST.trios(TLS_in1_rsc_triosy_lz);
    trios_monitor_in1_rsc_triosy_lz_INST.register_mon(&catapult_monitor_INST);

    transactor_in1.in_fifo(TLS_in_fifo_in1);
    transactor_in1.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_in1);
    transactor_in1.bind_clk(clk, true);
    transactor_in1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_in1.register_block(&in1_rsc_INST, in1_rsc_INST.basename(), TLS_in1_rsc_triosy_lz, 0, 0, 1);

    trios_monitor_out1_rsc_triosy_lz_INST.trios(TLS_out1_rsc_triosy_lz);
    trios_monitor_out1_rsc_triosy_lz_INST.register_mon(&catapult_monitor_INST);

    transactor_out1.out_fifo(TLS_out_fifo_out1);
    transactor_out1.out_wait_ctrl_fifo(TLS_out_wait_ctrl_fifo_out1);
    transactor_out1.bind_clk(clk, true);
    transactor_out1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_out1.register_block(&out1_rsc_INST, out1_rsc_INST.basename(), TLS_out1_rsc_triosy_lz, 0, 0, 1);

    testbench_INST.clk(clk);
    testbench_INST.ccs_coeffs(TLS_in_fifo_coeffs);
    testbench_INST.ccs_wait_ctrl_coeffs(TLS_in_wait_ctrl_fifo_coeffs);
    testbench_INST.ccs_in1(TLS_in_fifo_in1);
    testbench_INST.ccs_wait_ctrl_in1(TLS_in_wait_ctrl_fifo_in1);
    testbench_INST.ccs_out1(TLS_out_fifo_out1);
    testbench_INST.ccs_wait_ctrl_out1(TLS_out_wait_ctrl_fifo_out1);
    testbench_INST.design_is_idle(TLS_design_is_idle_reg);
    testbench_INST.enable_stalls(TLS_enable_stalls);
    testbench_INST.stall_coverage(TLS_stall_coverage);

    sync_generator_INST.clk(clk);
    sync_generator_INST.rst(rst);
    sync_generator_INST.in_sync(in_sync);
    sync_generator_INST.out_sync(out_sync);
    sync_generator_INST.inout_sync(inout_sync);
    sync_generator_INST.wait_for_init(wait_for_init);
    sync_generator_INST.catapult_start(catapult_start);
    sync_generator_INST.catapult_ready(catapult_ready);
    sync_generator_INST.catapult_done(catapult_done);

    catapult_monitor_INST.rst(rst);


    SC_METHOD(max_sim_time_notify);
      sensitive << max_sim_time_event;
      dont_initialize();

    SC_METHOD(generate_reset);
      sensitive << reset_deactivation_event;

    SC_METHOD(deadlock_watch);
      sensitive << clk;
      dont_initialize();

    SC_METHOD(deadlock_notify);
      sensitive << deadlock_event;
      dont_initialize();


    #if defined(CCS_SCVERIFY) && defined(CCS_DUT_RTL) && !defined(CCS_DUT_SYSC) && !defined(CCS_SYSC) && !defined(CCS_DUT_POWER)
        ccs_probe_monitor_INST = new ccs_probe_monitor("ccs_probe_monitor");
    ccs_probe_monitor_INST->clk(clk);
    ccs_probe_monitor_INST->rst(rst);
    #endif
    SIG_SC_LOGIC_0.write(SC_LOGIC_0);
    SIG_SC_LOGIC_1.write(SC_LOGIC_1);
    mt19937_init_genrand(19650218UL);
    install_observe_foreign_signals();
  }
};
void scverify_top::max_sim_time_notify() {
  testbench_INST.set_failed(true);
  testbench_INST.check_results();
  SC_REPORT_ERROR("System", "Specified maximum simulation time reached");
  sc_stop();
}

void scverify_top::start_of_simulation() {
  char *SCVerify_AUTOWAIT = getenv("SCVerify_AUTOWAIT");
  if (SCVerify_AUTOWAIT) {
    int l = atoi(SCVerify_AUTOWAIT);
    transactor_coeffs.set_auto_wait_limit(l);
    transactor_in1.set_auto_wait_limit(l);
    transactor_out1.set_auto_wait_limit(l);
  }
}

void scverify_top::setup_debug() {
#ifdef MC_DEFAULT_TRANSACTOR_LOG
  static int transactor_coeffs_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_in1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_out1_flags = MC_DEFAULT_TRANSACTOR_LOG;
#else
  static int transactor_coeffs_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_in1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_out1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
#endif
  static int transactor_coeffs_count = -1;
  static int transactor_in1_count = -1;
  static int transactor_out1_count = -1;

  // At the breakpoint, modify the local variables
  // above to turn on/off different levels of transaction
  // logging for each variable. Available flags are:
  //   MC_TRANSACTOR_EMPTY       - log empty FIFOs (on by default)
  //   MC_TRANSACTOR_UNDERFLOW   - log FIFOs that run empty and then are loaded again (off)
  //   MC_TRANSACTOR_READ        - log all read events
  //   MC_TRANSACTOR_WRITE       - log all write events
  //   MC_TRANSACTOR_LOAD        - log all FIFO load events
  //   MC_TRANSACTOR_DUMP        - log all FIFO dump events
  //   MC_TRANSACTOR_STREAMCNT   - log all streamed port index counter events
  //   MC_TRANSACTOR_WAIT        - log user specified handshake waits
  //   MC_TRANSACTOR_SIZE        - log input FIFO size updates

  std::ifstream debug_cmds;
  debug_cmds.open("scverify.cmd",std::fstream::in);
  if (debug_cmds.is_open()) {
    std::cout << "Reading SCVerify debug commands from file 'scverify.cmd'" << std::endl;
    std::string line;
    while (getline(debug_cmds,line)) {
      std::size_t pos1 = line.find(" ");
      if (pos1 == std::string::npos) continue;
      std::size_t pos2 = line.find(" ", pos1+1);
      std::string varname = line.substr(0,pos1);
      std::string flags = line.substr(pos1+1,pos2-pos1-1);
      std::string count = line.substr(pos2+1);
      debug(varname.c_str(),std::atoi(flags.c_str()),std::atoi(count.c_str()));
    }
    debug_cmds.close();
  } else {
    debug("transactor_coeffs",transactor_coeffs_flags,transactor_coeffs_count);
    debug("transactor_in1",transactor_in1_flags,transactor_in1_count);
    debug("transactor_out1",transactor_out1_flags,transactor_out1_count);
  }
}

void scverify_top::debug(const char* varname, int flags, int count) {
  sc_module *xlator_p = 0;
  sc_attr_base *debug_attr_p = 0;
  if (strcmp(varname,"transactor_coeffs") == 0)
    xlator_p = &transactor_coeffs;
  if (strcmp(varname,"transactor_in1") == 0)
    xlator_p = &transactor_in1;
  if (strcmp(varname,"transactor_out1") == 0)
    xlator_p = &transactor_out1;
  if (xlator_p) {
    debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_EVENT");
    if (!debug_attr_p) {
      debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_EVENT",flags);
      xlator_p->add_attribute(*debug_attr_p);
    }
    ((sc_attribute<int>*)debug_attr_p)->value = flags;
  }

  if (count>=0) {
    debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_COUNT");
    if (!debug_attr_p) {
      debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_COUNT",count);
      xlator_p->add_attribute(*debug_attr_p);
    }
    ((sc_attribute<int>*)debug_attr_p)->value = count;
  }
}

// Process: SC_METHOD generate_reset
void scverify_top::generate_reset() {
  static bool first = true;
  if (first || sc_time_stamp() == SC_ZERO_TIME) {
    setup_debug();
    first = false;
    rst.write(SC_LOGIC_1);
    reset_deactivation_event.notify(20.000000 , SC_NS);
  } else {
    transactor_coeffs.reset_streams();
    transactor_in1.reset_streams();
    transactor_out1.reset_streams();
    rst.write(SC_LOGIC_0);
  }
}

void scverify_top::install_observe_foreign_signals() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
#endif
#endif
}

void scverify_top::deadlock_watch() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
#if defined(MTI_SYSTEMC) || defined(NCSC) || defined(VCS_SYSTEMC)
#endif
#endif
#endif
}

void scverify_top::deadlock_notify() {
  if (deadlocked.read() == SC_LOGIC_1) {
    testbench_INST.check_results();
    SC_REPORT_ERROR("System", "Simulation deadlock detected");
    sc_stop();
  }
}

#if defined(MC_SIMULATOR_OSCI) || defined(MC_SIMULATOR_VCS)
int sc_main(int argc, char *argv[]) {
  sc_report_handler::set_actions("/IEEE_Std_1666/deprecated", SC_DO_NOTHING);
  scverify_top scverify_top("scverify_top");
  sc_start();
  return scverify_top.testbench_INST.failed();
}
#else
MC_MODULE_EXPORT(scverify_top);
#endif
