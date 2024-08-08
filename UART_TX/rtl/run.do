vlib work 
vlog -f source.txt
vsim -voptargs=+accs work.uart_tx_tb
add wave *
run -all