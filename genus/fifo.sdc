# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri May 22 10:12:04 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design sync_fifo

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_load -pin_load 0.01 [get_ports {data_out[7]}]
set_load -pin_load 0.01 [get_ports {data_out[6]}]
set_load -pin_load 0.01 [get_ports {data_out[5]}]
set_load -pin_load 0.01 [get_ports {data_out[4]}]
set_load -pin_load 0.01 [get_ports {data_out[3]}]
set_load -pin_load 0.01 [get_ports {data_out[2]}]
set_load -pin_load 0.01 [get_ports {data_out[1]}]
set_load -pin_load 0.01 [get_ports {data_out[0]}]
set_load -pin_load 0.01 [get_ports full]
set_load -pin_load 0.01 [get_ports empty]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports wr_en]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports rd_en]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_in[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports wr_en]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports rd_en]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.05 [get_ports {data_in[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {data_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports full]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports empty]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports {data_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports full]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.02 [get_ports empty]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk]
