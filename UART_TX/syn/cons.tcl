
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
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set CLK_NAME CLK
set CLK_PER 8.68
set CLK_SETUP_SKEW 0.25
set CLK_HOLD_SKEW 0.05
set CLK_LAT 0
set CLK_RISE 0.1
set CLK_FALL 0.1

#master_clock 
create_clock -period $CLK_PER -name $CLK_NAME [get_ports CLK]

set_clock_latency 0 [get_clocks CLK]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks CLK] 

set_clock_transition 0.1 [get_clocks CLK]
				  

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.3*$CLK_PER]
set out_delay [expr 0.3*$CLK_PER]


#Constrain Input Paths
set_input_delay $in_delay -clock $CLK_NAME [get_ports {P_DATA PAR_TYP DATA_VALID PAR_EN}]

#Constrain Output Paths
set_output_delay $out_delay -clock $CLK_NAME [get_ports {BUSY TX_OUT}]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports {P_DATA PAR_TYP DATA_VALID PAR_EN}]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.5 [get_ports {BUSY TX_OUT}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
set_operating_condition -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
			-min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" 

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name "tsmc13_wl20" -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


