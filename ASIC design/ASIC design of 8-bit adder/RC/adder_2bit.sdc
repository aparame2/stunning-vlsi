# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.24 - v14.20-s034_1 on Wed Feb 22 13:16:01 -0700 2017

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1.0fF
set_units -time 1.0ps

# Set the current design
current_design adder_2bit

create_clock -name "clk" -add -period 500.0 -waveform {0.0 250.0} [get_ports clk]
set_load -pin_load -max 15.0 [get_ports {sum[1]}]
set_load -pin_load -max 15.0 [get_ports {sum[0]}]
set_load -pin_load -max 15.0 [get_ports cout]
set_max_delay 200 -from [get_clocks clk] -to [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {b[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {b[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports clk]
set_output_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports cout]
set_output_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {sum[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 100.0 [get_ports {sum[1]}]
set_max_transition 50.0 [current_design]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells asap7sc7p5t_07_R_160418b/DHLx3_ASAP7_75t_R]
