# ==============================================================================
# SDC Timing Constraints for Synchronous FIFO
# Target Frequency is 500 MHz (Clock Period = 2.0 ns)
# ==============================================================================

# 1. Define the Master Clock ( Creates a 500MHz clock named 'clk' assigned to the physical 'clk' port)
create_clock -name clk -period 2.0 [get_ports clk]

# 2. Account for Real-World Clock Imperfections (Sign-off Margins)
#Models 100ps of clock jitter/uncertainty for setup timing analysis
set_clock_uncertainty -setup 0.100 [get_clocks clk]
# Models 50ps of clock jitter/uncertainty for hold timing analysis
set_clock_uncertainty -hold  0.050 [get_clocks clk]


# 3. Define Input Constraints (Data Arrival Windows)
# Assumes the external chip driving our inputs takes up 20% of our clock cycle (0.4ns)
set_input_delay -max 0.400 -clock clk [get_ports {rst_n wr_en rd_en data_in[*]}]
set_input_delay -min 0.050 -clock clk [get_ports {rst_n wr_en rd_en data_in[*]}]


# 4. Define Output Constraints (Data Required Windows)
# Allocates 20% of our clock cycle (0.4ns) for external board/chip propagation delays
set_output_delay -max 0.400 -clock clk [get_ports {data_out[*] full empty}]
set_output_delay -min 0.020 -clock clk [get_ports {data_out[*] full empty}]


# 5. Environment & Loading Models (Crucial for Physical Design)
# Simulates the electrical load of driving typical modern standard cell pins
set_load 0.010 [all_outputs]
