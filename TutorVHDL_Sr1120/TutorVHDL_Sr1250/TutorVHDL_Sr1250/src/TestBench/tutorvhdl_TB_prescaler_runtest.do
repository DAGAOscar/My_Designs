SetActiveLib -work
comp -include "$dsn\src\TutorVHDL.vhd" 
comp -include "$dsn\src\TestBench\tutorvhdl_TB_prescaler.vhd" 
asim +access +r TESTBENCH_FOR_tutorvhdl 
wave 
wave -noreg CLR
wave -noreg CLK
wave -noreg CE
wave -noreg LOAD
wave -noreg DIR
wave -noreg SEL
wave -noreg OE
wave -noreg LE
wave -noreg DATA
wave -noreg Q
run 7000 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
