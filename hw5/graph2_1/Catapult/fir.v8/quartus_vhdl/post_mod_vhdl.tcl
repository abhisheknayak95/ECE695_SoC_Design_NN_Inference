set CATAPULT_HOME "/package/eda/mg/Catapult_10.3d/Mgc_home"
set module [lindex $quartus(args) 0]
set syn_module ""
set project_name [lindex $quartus(args) 1]
set revision_name [lindex $quartus(args) 2]
post_message "Running after module $module on project $project_name and revision $revision_name "
if { [string match "quartus_syn" $module] } {
  set syn_module syn
}
if { [string match "quartus_map" $module] } {
  set syn_module map
}
if { [llength $syn_module] > 0 } {
  # custom processing to be done after mapping
  # ----------------------------------------------
  # pins_virtual
  post_message "is_project_open=[is_project_open]"
  if { ! [is_project_open] } {
    if [project_exists $project_name] {
      project_open $project_name
    } else {
      project_new $project_name
    }
    post_message "is_project_open=[is_project_open]"
  }
  set changed false
  set vp_val ON
  set name_ids [get_names -filter * -node_type pin]
  foreach_in_collection name_id $name_ids {
    set pin_name [get_name_info -info full_path $name_id]
    set cur_assmt [get_instance_assignment -to $pin_name -name VIRTUAL_PIN]
    post_message "Current VIRTUAL_PIN assignment to $pin_name is $cur_assmt"
    if { $cur_assmt ne $vp_val } {
      set changed true
      post_message "WARNING VIRTUAL_PIN assignment is not set for to $pin_name"
      post_message "Making VIRTUAL_PIN assignment to $pin_name (but the setting is not taken into account unless analysis and elaboration are rerun)"
      set_instance_assignment -to $pin_name -name VIRTUAL_PIN $vp_val
    }
  }
  # ----------------------------------------------
  set_global_assignment -name POST_MODULE_SCRIPT_FILE "quartus_sh:/home/ecegridfs/a/695r48/ece695r/hw5/graph2/Catapult/fir.v8/quartus_vhdl/post_mod_vhdl.tcl"
}
if { [string match "quartus_fit" $module] } {
  # custom processing to be done after fitting
}
source [file join $CATAPULT_HOME pkgs sif userware En_na flows quartus_funcs.tcl]
SourceCustomScriptIfExists module

