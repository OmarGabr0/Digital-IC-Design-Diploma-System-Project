module UART #(parameter DATAWIDTH= 8 ) (

 input wire               clk_rx,clk_tx,rst,
 
 // RX
 input wire                 RX_IN,

 input wire [5:0]            prescale, // REG2[7:2]  for RX 
 input wire                  PAR_EN,   // REG2[0]    for RX and TX 
 input wire                  PAR_TYP,   // REG2[1]    for RX and TX 

 output wire [DATAWIDTH-1:0] P_DATA,
 output wire                 data_Valid,    // to data sync   
 output wire                 Parity_Error,  // to top module
 output wire                 Stop_Error,  // to top module
 output wire                 str_glitch,  // to top module
//TX 
 input wire                  F_EMPTY, // = !empty from FIFO    
 input wire [DATAWIDTH-1:0]   RD_DATA,
 output wire               TX_OUT,  // to  top module 
 output wire                BUSY   // to top module

); 


///////
UART_RX  #(.DATAWIDTH(DATAWIDTH)) u0_UART_RX (

.rst(rst),
.clk_RX(clk_rx),

.RX_IN(RX_IN),
.prescale(prescale),
.PAR_EN (PAR_EN),
.PAR_TYP(PAR_TYP),

.P_DATA(P_DATA),

.Parity_Error(Parity_Error),
.Stop_Error(Stop_Error),
.DATA_VALID(data_Valid),
.str_glitch(str_glitch)
);

UART_TX #(.DATAWIDTH(DATAWIDTH)) u0_UART_TX(

.CLK(clk_tx),
.RST(rst),

.P_DATA(RD_DATA),
.DATA_VALID(F_EMPTY),
.PAR_EN(PAR_EN),
.PAR_TYP(PAR_TYP),

.BUSY(BUSY),
.TX_OUT(TX_OUT)
);

endmodule 