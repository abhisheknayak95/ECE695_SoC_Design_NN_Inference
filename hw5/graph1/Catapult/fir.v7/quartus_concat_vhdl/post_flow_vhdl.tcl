set CATAPULT_HOME "/package/eda/mg/Catapult_10.3d/Mgc_home"
set module [lindex $quartus(args) 0]
global env
source [file join $CATAPULT_HOME pkgs sif userware En_na flows quartus_funcs.tcl]
SourceCustomScriptIfExists final
