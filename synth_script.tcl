read_verilog design.v

synth_design -top top_mod -part xc7k160tfbg484-2 -flatten_hierarchy rebuilt
opt_design

report_utilization -file utilization.txt

report_timing > timing.txt
