vlib work 
vlog -f source.txt
vsim -voptargs=+accs work.fifo_tb
add wave *
add wave -position insertpoint sim:/fifo_tb/DUT/u0_FIFO_WR/*
add wave -position insertpoint sim:/fifo_tb/DUT/u0_FIFO_RD/*
run -all
