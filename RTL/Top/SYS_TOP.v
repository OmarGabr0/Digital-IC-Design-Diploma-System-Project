
module SYS_TOP # ( parameter DATA_WIDTH = 8 ,  RF_ADDR = 4 )

(
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 
 output  wire                          UART_TX_O,
output  wire                          framing_error,
 //output wire                            stop_Error,
 output wire                            str_glitch,
 output  wire                          parity_error

 //
  //output wire         	        	   UART_RX_V_OUT// from uart to top 

);


wire                                   SYNC_UART_RST,
                                       SYNC_REF_RST;
									   
wire					               UART_TX_CLK;
wire					               UART_RX_CLK;


wire      [DATA_WIDTH-1:0]             Operand_A,
                                       Operand_B,
									   UART_Config,
									   DIV_RATIO;
									   
wire      [DATA_WIDTH-1:0]             DIV_RATIO_RX;
									   
wire      [DATA_WIDTH-1:0]             UART_RX_OUT;
wire         						   UART_RX_V_OUT;
wire      [DATA_WIDTH-1:0]			   UART_RX_SYNC;
wire                                   UART_RX_V_SYNC;

wire      [DATA_WIDTH-1:0]             UART_TX_IN;
//wire        						   UART_TX_VLD;
wire      [DATA_WIDTH-1:0]             UART_TX_SYNC;
wire        						   UART_TX_V_SYNC;

wire                                   UART_TX_Busy;	
wire                                   UART_TX_Busy_PULSE;	
									   
wire                                   RF_WrEn;
wire                                   RF_RdEn;
wire      [RF_ADDR-1:0]                RF_Address;
wire      [DATA_WIDTH-1:0]             RF_WrData;
wire      [DATA_WIDTH-1:0]             RF_RdData;
wire                                   RF_RdData_VLD;									   

wire                                   CLKG_EN;
wire                                   ALU_EN;
wire      [3:0]                        ALU_FUN; 
wire      [DATA_WIDTH*2-1:0]           ALU_OUT;
wire                                   ALU_OUT_VLD; 
									   
wire                                   ALU_CLK ;								   

wire                                   FIFO_FULL ;
	
wire                                   CLKDIV_EN ;

wire                                   WrInc_SYS;
wire                                   WrInc_Pulse;
								   
///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC # (.stages(2)) U0_RST_SYNC (
.rst(RST_N),
.clk(UART_CLK),
.SYNC_RST(SYNC_UART_RST)
);

RST_SYNC # (.stages(2)) U1_RST_SYNC (
.rst(RST_N),
.clk(REF_CLK),
.SYNC_RST(SYNC_REF_RST)
);

///********************************************************///
////////////////////// Data Synchronizer /////////////////////
///********************************************************///

DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) U0_ref_sync (
.clk(REF_CLK),
.rst(SYNC_REF_RST),
.unsync_bus(UART_RX_OUT),
.bus_enable(UART_RX_V_OUT),
.sync_bus(UART_RX_SYNC),
.enable_pulse(UART_RX_V_SYNC)
);

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

fifo_top #(.data_width(DATA_WIDTH) , .pointer_width(4)  , .FIFO_DEPTH(8)) U0_FIFO (
.W_CLK(REF_CLK),
.W_RST(SYNC_REF_RST),  
.W_INC(WrInc_Pulse),

.WR_DATA(UART_TX_IN),             
.R_CLK(UART_TX_CLK),              
.R_RST(SYNC_UART_RST),              
.R_INC(UART_TX_Busy_PULSE),              
.RD_DATA(UART_TX_SYNC),             
.FULL(FIFO_FULL),               
.EMPTY(UART_TX_V_SYNC)               
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN U1_WrInc_PULSE_GEN (
.clk(UART_TX_CLK),
.rst(SYNC_UART_RST),
.lvl_sig(UART_TX_Busy),
.pulse_sig(UART_TX_Busy_PULSE)
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///
// for WrInc
PULSE_GEN U0_PULSE_GEN (
.clk(REF_CLK),
.rst(SYNC_UART_RST),
.lvl_sig(WrInc_SYS),
.pulse_sig(WrInc_Pulse)
);

///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

ClkDiv #(.RATIO_WD(8)) U0_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst(SYNC_REF_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(UART_TX_CLK)             
);

///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

CLKDIV_MUX U0_CLKDIV_MUX (
.IN(UART_Config[7:2]),
.OUT(DIV_RATIO_RX)
);

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

ClkDiv U1_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst(SYNC_UART_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO_RX),           
.o_div_clk(UART_RX_CLK)             
);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART U0_UART (
.rst(SYNC_UART_RST),
.clk_tx(UART_TX_CLK),
.clk_rx(UART_RX_CLK),

.PAR_EN(UART_Config[0]),
.PAR_TYP(UART_Config[1]),
.prescale(UART_Config[7:2]),

.RX_IN(UART_RX_IN),

.P_DATA(UART_RX_OUT),      
.data_Valid(UART_RX_V_OUT), 

.RD_DATA(UART_TX_SYNC), 
.F_EMPTY(!UART_TX_V_SYNC), 
.TX_OUT(UART_TX_O),
.BUSY(UART_TX_Busy),
.Parity_Error(parity_error),
.Stop_Error(framing_error),
.str_glitch(str_glitch)          
);

///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

sys_ctrl U0_SYS_CTRL (
.clk(REF_CLK),
.rst(SYNC_REF_RST),

.RdData(RF_RdData),
.RdData_Valid(RF_RdData_VLD),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.Address(RF_Address),
.Wr_D(RF_WrData),

.ALU_EN(ALU_EN),
.ALU_FUN(ALU_FUN), 
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD),  

.CLK_EN(CLKG_EN), 
.CLKDIV_EN(CLKDIV_EN),

.FIFO_FULL(FIFO_FULL),

.cmd(UART_RX_SYNC), 
.pulse_en(UART_RX_V_SYNC),

.WrData(UART_TX_IN), 
.WR_INC(WrInc_SYS)// --> UART_TX_VLD
);

///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

REG_FILE U0_RegFile (
.clk(REF_CLK),
.rst(SYNC_REF_RST),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.Address(RF_Address),
.WrData(RF_WrData),
.RdData(RF_RdData),
.RdData_VLD(RF_RdData_VLD),
.REG0(Operand_A),
.REG1(Operand_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);

///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
 
ALU U0_ALU (
.clk(ALU_CLK),
.rst(SYNC_REF_RST),  
.A(Operand_A), 
.B(Operand_B),
.EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD)
);

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
.CLK_EN(CLKG_EN),
.CLK(REF_CLK),
.GATED_CLK(ALU_CLK)
);


endmodule
 
