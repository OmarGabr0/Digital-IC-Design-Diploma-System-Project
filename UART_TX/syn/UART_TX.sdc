###################################################################

# Created by write_sdc on Wed Jul 24 06:50:41 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl20 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[7]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[6]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[5]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_DATA[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports PAR_TYP]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports DATA_VALID]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports PAR_EN]
set_load -pin_load 0.5 [get_ports BUSY]
set_load -pin_load 0.5 [get_ports TX_OUT]
create_clock [get_ports CLK]  -period 8.68  -waveform {0 4.34}
set_clock_latency 0  [get_clocks CLK]
set_clock_uncertainty -setup 0.25  [get_clocks CLK]
set_clock_uncertainty -hold 0.05  [get_clocks CLK]
set_clock_transition -max -rise 0.1 [get_clocks CLK]
set_clock_transition -max -fall 0.1 [get_clocks CLK]
set_clock_transition -min -rise 0.1 [get_clocks CLK]
set_clock_transition -min -fall 0.1 [get_clocks CLK]
group_path -name INOUT  -from [list [get_ports CLK] [get_ports RST] [get_ports {P_DATA[7]}] [get_ports {P_DATA[6]}] [get_ports {P_DATA[5]}] [get_ports {P_DATA[4]}] [get_ports {P_DATA[3]}] [get_ports {P_DATA[2]}] [get_ports {P_DATA[1]}] [get_ports {P_DATA[0]}] [get_ports PAR_TYP] [get_ports DATA_VALID] [get_ports PAR_EN]]  -to [list [get_ports BUSY] [get_ports TX_OUT]]
group_path -name INREG  -from [list [get_ports CLK] [get_ports RST] [get_ports {P_DATA[7]}] [get_ports {P_DATA[6]}] [get_ports {P_DATA[5]}] [get_ports {P_DATA[4]}] [get_ports {P_DATA[3]}] [get_ports {P_DATA[2]}] [get_ports {P_DATA[1]}] [get_ports {P_DATA[0]}] [get_ports PAR_TYP] [get_ports DATA_VALID] [get_ports PAR_EN]]
group_path -name REGOUT  -to [list [get_ports BUSY] [get_ports TX_OUT]]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[7]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[6]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[5]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[4]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[3]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[2]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[1]}]
set_input_delay -clock CLK  2.604  [get_ports {P_DATA[0]}]
set_input_delay -clock CLK  2.604  [get_ports PAR_TYP]
set_input_delay -clock CLK  2.604  [get_ports DATA_VALID]
set_input_delay -clock CLK  2.604  [get_ports PAR_EN]
set_output_delay -clock CLK  2.604  [get_ports BUSY]
set_output_delay -clock CLK  2.604  [get_ports TX_OUT]
