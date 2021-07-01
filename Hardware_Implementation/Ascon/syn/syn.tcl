# Setting environment
sh mkdir -p Netlist
sh mkdir -p Report

# Import Design
set DESIGN "ascon_enc"

read_file -format verilog  "../ascon_1.v"
current_design [get_designs $DESIGN]
link

source -echo -verbose ./ascon.sdc

# Compile Design
current_design [get_designs ${DESIGN}]

check_design > Report/check_design.txt
check_timing > Report/check_timing.txt
#set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
#compile
compile_ultra
compile -inc
change_names -hierarchy -rule verilog
change_names -hierarchy -rules name_rule

# Report Output
current_design [get_designs ${DESIGN}]
report_design              >  Report/$DESIGN\.design
report_timing_requirements >  Report/$DESIGN\.timingrequirement
report_constraint -all_violators >  Report/$DESIGN\.constraint
report_timing -delay min -max_paths 5 > Report/$DESIGN\.timing_min
report_timing -delay max -max_paths 5 > Report/$DESIGN\.timing_max
report_area                >  Report/$DESIGN\.area
report_qor                 >  Report/$DESIGN\.qor
report_resource -hierarchy >  Report/$DESIGN\.resource
report_power               >  Report/$DESIGN\.power
report_power -hier         >  Report/$DESIGN\.hier_power
report_clock_gating -gating_elements >  Report/$DESIGN\.gating

# Output Design
current_design [get_designs ${DESIGN}]

remove_unconnected_ports -blast_buses [get_cells -hierarchical *]
set verilogout_higher_designs_first true
write -format ddc     -hierarchy -output "./Netlist/${DESIGN}_syn.ddc"
write -format verilog -hierarchy -output "./Netlist/${DESIGN}_syn.v"
write_sdf -version 2.1  -context verilog -load_delay cell ./Netlist/${DESIGN}_syn.sdf
write_sdc  ./Netlist/${DESIGN}_syn.sdc -version 1.8

report_timing
report_area
check_design
exit
