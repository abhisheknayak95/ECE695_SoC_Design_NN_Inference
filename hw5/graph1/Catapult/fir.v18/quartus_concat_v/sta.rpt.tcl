## HLS SP STA script: characterization mode is 'base'
#set_operating_conditions -model fast -temperature 85 -voltage 1200
puts "-- Starting FMAX for design 'fir'"
report_clock_fmax_summary
puts "-- FMAX finished for design 'fir'"
    set clk_candidates {0 INOUT clk clk} 
    set i_candidates {1 IN {coeffs_rsc_q[*]} coeffs_rsc_q 2 IN {in1_rsc_dat[*]} in1_rsc_dat} 
    set o_candidates {1 IN {coeffs_rsc_radr[*]} coeffs_rsc_radr 3 OUT {out1_rsc_dat[*]} out1_rsc_dat 1 IN coeffs_rsc_triosy_lz coeffs_rsc_triosy_lz 2 IN in1_rsc_triosy_lz in1_rsc_triosy_lz 3 OUT out1_rsc_triosy_lz out1_rsc_triosy_lz} 
puts "-- Starting STA for design 'fir'"
    if { [llength [all_inputs] ] > 0 && [llength [all_outputs] ] > 0 } {
        puts "-- Synthesis input_to_output:timing report for design 'fir'"
        report_timing -from [all_inputs] -to [all_outputs]
        puts "-- END Synthesis input_to_output:timing report for design 'fir'"
    }

    if { [llength [all_inputs] ] > 0 && [llength [all_registers] ] > 0 } {
        puts "-- Synthesis input_to_register:timing report for design 'fir'"
        report_timing -from [all_inputs] -to [all_registers]
        puts "-- END Synthesis input_to_register:timing report for design 'fir'"
    }

    if { [llength [all_registers] ] > 0 } {
        puts "-- Synthesis register_to_register:timing report for design 'fir'"
        report_timing -from [all_registers] -to [all_registers]
        puts "-- END Synthesis register_to_register:timing report for design 'fir'"
    }

    if { [llength [all_registers] ] > 0 && [llength [all_outputs] ] > 0 } {
        puts "-- Synthesis register_to_output:timing report for design 'fir'"
        report_timing -from [all_registers] -to [all_outputs]
        puts "-- END Synthesis register_to_output:timing report for design 'fir'"
    }

puts "-- STA finished for design 'fir'"
