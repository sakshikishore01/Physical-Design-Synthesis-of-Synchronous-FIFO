
read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl sync_fifo.v
elaborate

set_db / .use_scan_seqs_for_non_dft false

read_sdc sync_fifo.sdc 
set_db syn_generic_effort medium 
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt 
report_timing > fifo_timing.rep
report_area > fifo_area.rep
report_power > fifo_pwr.rep
write_hdl > fifo_net.v 
write_sdc > fifo.sdc
gui_show
