
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load
####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set verilogout_no_tri true
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_RISE 0.2
set CLK_FALL 0.2
set REF_CLK_PERIOD 20 
set UART_CLK_PERIOD 271.2
set UART_TX_CLK_PERIOD 8680.5
set UART_RX_CLK_PERIOD 271.2


##################################### Create  REF_CLK  ############################################
create_clock -name REF_CLK -period $REF_CLK_PERIOD -waveform "0 [expr $REF_CLK_PERIOD/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks REF_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks REF_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks REF_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks REF_CLK]

################################# create UART_CLK #################################################
create_clock -name UART_CLK -period $UART_CLK_PERIOD -waveform "0 [expr $UART_CLK_PERIOD/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks UART_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks UART_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks UART_CLK]

################################# Generated TX_CLK ###############################################
create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] \
		       -name UART_TX_CLK [get_ports U0_ClkDiv/o_div_clk] \
			-divide_by 32

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks UART_TX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks UART_TX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks UART_TX_CLK]
################################# Generated RX_CLK ###############################################
create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] \
		       -name UART_RX_CLK [get_ports U1_ClkDiv/o_div_clk] \
		       -divide_by 1

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks UART_RX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks UART_RX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks UART_RX_CLK]
################################ Clock Gating ALU_CLK #############################################
create_generated_clock -master REF_CLK -source [get_ports REF_CLK] \
		       -name ALU_CLK [get_ports U0_CLK_GATE/GATED_CLK] \
 		       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks ALU_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks ALU_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks ALU_CLK]
 
##################################3 Don't touch network ############################################
set_dont_touch_network [get_clocks {REF_CLK UART_CLK UART_TX_CLK UART_RX_CLK ALU_CLK}]

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################
set_clock_groups -asynchronous -group [get_clocks {REF_CLK ALU_CLK}] -group [get_clocks {UART_CLK UART_TX_CLK UART_RX_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in1_delay  [expr 0.2*$REF_CLK_PERIOD]
set out1_delay [expr 0.2*$REF_CLK_PERIOD]

set in2_delay  [expr 0.2*$UART_RX_CLK_PERIOD]
set out2_delay [expr 0.2*$UART_RX_CLK_PERIOD]

set in3_delay  [expr 0.2*$UART_TX_CLK_PERIOD]
set out3_delay [expr 0.2*$UART_TX_CLK_PERIOD] 

#Constrain Input Paths
set_input_delay $in1_delay -clock UART_RX_CLK [get_port UART_RX_IN]

#Constrain Output Paths

set_output_delay $out2_delay -clock UART_RX_CLK [get_ports {stop_Error str_glitch parity_error}]
set_output_delay $out3_delay -clock UART_TX_CLK [get_ports UART_TX_O]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports {stop_Error str_glitch parity_error UART_TX_O}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name "tsmc13_wl30" -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


