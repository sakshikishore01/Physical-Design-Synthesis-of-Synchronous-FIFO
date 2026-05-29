## RTL Synthesis Using Cadence Genus

### Step 1: Launch Cadence Genus

Start the synthesis environment:

```bash
genus -gui
```

---

### Step 2: Create the Synthesis TCL Script (`run_fifo_synth.tcl`)

The synthesis flow is automated using a TCL script.

```tcl
read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib

read_hdl sync_fifo.v
elaborate

# Prevent scan-cell mapping issues for non-DFT designs
set_db / .use_scan_seqs_for_non_dft false

read_sdc sync_fifo.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

report_timing > fifo_timing.rep
report_area   > fifo_area.rep
report_power  > fifo_pwr.rep

write_hdl > fifo_net.v
write_sdc > fifo.sdc

gui_show
```

The script performs:

* Library loading
* RTL elaboration
* Constraint loading
* Generic synthesis
* Technology mapping
* Timing optimization
* Timing, area, and power reporting
* Gate-level netlist generation

---

### Step 3: Create the Timing Constraints File (`sync_fifo.sdc`)

The FIFO is constrained to operate at **500 MHz** using a **2 ns clock period**.

Key constraints include:

* Clock definition (`create_clock`)
* Setup and hold clock uncertainty
* Input delay constraints
* Output delay constraints
* Output load modeling

```tcl
create_clock -name clk -period 2.0 [get_ports clk]

set_clock_uncertainty -setup 0.100 [get_clocks clk]
set_clock_uncertainty -hold  0.050 [get_clocks clk]

set_input_delay -max 0.400 -clock clk \
    [get_ports {rst_n wr_en rd_en data_in[*]}]

set_input_delay -min 0.050 -clock clk \
    [get_ports {rst_n wr_en rd_en data_in[*]}]

set_output_delay -max 0.400 -clock clk \
    [get_ports {data_out[*] full empty}]

set_output_delay -min 0.020 -clock clk \
    [get_ports {data_out[*] full empty}]

set_load 0.010 [all_outputs]
```

---

### Step 4: Run the Synthesis Flow

Inside the Genus console:

```tcl
source run_fifo_synth.tcl
```

This generates:

* `fifo_net.v` (synthesized gate-level netlist)
* `fifo_timing.rep`
* `fifo_area.rep`
* `fifo_pwr.rep`

---

### Step 5: Exit Genus

After reviewing the reports and netlist:

```tcl
exit
```

