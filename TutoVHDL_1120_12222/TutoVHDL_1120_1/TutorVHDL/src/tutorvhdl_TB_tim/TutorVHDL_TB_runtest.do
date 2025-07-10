setactivelib -timing
#Compiling UUT module design files

comp -include "$dsn\src\tutorvhdl_TB_tim\TutorVHDL_TB.v"
asim  +access +r TutorVHDL_tb_tim  glbl -L C:\Aldec\Active-HDL-11.1\vlib\xilinx_vivado\simprims_ver -sdftyp -AUTO="$DSN/implement/TutorVHDL.sdf"

wave -noreg CLR
wave -noreg CLK
wave -noreg CE
wave -noreg LOAD
wave -noreg DIR
wave -noreg SEL
wave -noreg DATA
wave -noreg OE
wave -noreg LE
wave -noreg Q

run 7.00 us	  

#End simulation macro
