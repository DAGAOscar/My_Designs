SetActiveLib -work
comp -include "$dsn\src\PWM.vhd" 

comp -include "$dsn\src\TestBench\PWM_TB.vhd" 
asim +access +r TESTBENCH_FOR_tutorvhdlzis
wave 
wave -noreg CLR
wave -noreg DUTY_INCREASE
wave -noreg DUTY_DECREASE  
wave -noreg PWM_OUT
#wave -noreg 


run 1200.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
