
`timescale 1us/1ns

module SYS_TOP_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////
parameter prescale  = 32; 
parameter DATA_WD_TB = 8 ; 
parameter REF_CLK_PERIOD = 0.02;
parameter UART_CLK_PERIOD= 0.271;
parameter NUM_SCAN_CHAINS = 4  ;   

parameter TX_CLK_PERIOD = 8.68 ;     // 115.2 KHz
parameter RX_CLK_PERIOD = TX_CLK_PERIOD/prescale ;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg                  RST_N;
reg                  UART_CLK;
reg                  REF_CLK;
reg                  UART_RX_IN;
reg           					             scan_clk; 
reg          					               scan_rst;
reg           					             test_mode; 
reg          					               SE; 
reg      [NUM_SCAN_CHAINS-1:0] 	     SI; 

wire                 UART_TX_O; 
wire                 stop_Error;
wire                 str_glitch;
wire                 parity_error;
wire     [NUM_SCAN_CHAINS-1:0]       SO;
/*
/////////////////////////////////////////////////////////
//////////////////// GLS Signals ////////////////////////
/////////////////////////////////////////////////////////

wire [DATA_WIDTH_TB-1:0] regfile_ary [RF_DEPTH-1:0] ;    

assign regfile_ary[0] 	  = {DUT.Operand_A[7] , DUT.Operand_A[6] , DUT.Operand_A[5] , DUT.Operand_A[4] , DUT.Operand_A[3] , DUT.Operand_A[2] , DUT.Operand_A[1] , DUT.Operand_A[0]};
assign regfile_ary[1] 	  = {DUT.Operand_B[7] , DUT.Operand_B[6] , DUT.Operand_B[5] , DUT.Operand_B[4] , DUT.Operand_B[3] , DUT.Operand_B[2] , DUT.Operand_B[1] , DUT.Operand_B[0]};
assign regfile_ary[2] 	  = {DUT.UART_Config[7] , DUT.UART_Config[6] , DUT.UART_Config[5] , DUT.UART_Config[4] , DUT.UART_Config[3] , DUT.UART_Config[2] , DUT.UART_Config[1] , DUT.UART_Config[0]};
assign regfile_ary[3] 	  = {DUT.DIV_RATIO[7] , DUT.DIV_RATIO[6] , DUT.DIV_RATIO[5] , DUT.DIV_RATIO[4] , DUT.DIV_RATIO[3] , DUT.DIV_RATIO[2] , DUT.DIV_RATIO[1] , DUT.DIV_RATIO[0]};
assign regfile_ary[4]     = { DUT.U0_RegFile.\reg_file[4][7] , DUT.U0_RegFile.\reg_file[4][6] , DUT.U0_RegFile.\reg_file[4][5] , DUT.U0_RegFile.\reg_file[4][4] , DUT.U0_RegFile.\reg_file[4][3] , DUT.U0_RegFile.\reg_file[4][2] , DUT.U0_RegFile.\reg_file[4][1] , DUT.U0_RegFile.\reg_file[4][0] };
assign regfile_ary[5]     = { DUT.U0_RegFile.\reg_file[5][7] , DUT.U0_RegFile.\reg_file[5][6] , DUT.U0_RegFile.\reg_file[5][5] , DUT.U0_RegFile.\reg_file[5][4] , DUT.U0_RegFile.\reg_file[5][3] , DUT.U0_RegFile.\reg_file[5][2] , DUT.U0_RegFile.\reg_file[5][1] , DUT.U0_RegFile.\reg_file[5][0] };
assign regfile_ary[6]     = { DUT.U0_RegFile.\reg_file[6][7] , DUT.U0_RegFile.\reg_file[6][6] , DUT.U0_RegFile.\reg_file[6][5] , DUT.U0_RegFile.\reg_file[6][4] , DUT.U0_RegFile.\reg_file[6][3] , DUT.U0_RegFile.\reg_file[6][2] , DUT.U0_RegFile.\reg_file[6][1] , DUT.U0_RegFile.\reg_file[6][0] };
assign regfile_ary[7]     = { DUT.U0_RegFile.\reg_file[7][7] , DUT.U0_RegFile.\reg_file[7][6] , DUT.U0_RegFile.\reg_file[7][5] , DUT.U0_RegFile.\reg_file[7][4] , DUT.U0_RegFile.\reg_file[7][3] , DUT.U0_RegFile.\reg_file[7][2] , DUT.U0_RegFile.\reg_file[7][1] , DUT.U0_RegFile.\reg_file[7][0] };
assign regfile_ary[8]     = { DUT.U0_RegFile.\reg_file[8][7] , DUT.U0_RegFile.\reg_file[8][6] , DUT.U0_RegFile.\reg_file[8][5] , DUT.U0_RegFile.\reg_file[8][4] , DUT.U0_RegFile.\reg_file[8][3] , DUT.U0_RegFile.\reg_file[8][2] , DUT.U0_RegFile.\reg_file[8][1] , DUT.U0_RegFile.\reg_file[8][0] };
assign regfile_ary[9]     = { DUT.U0_RegFile.\reg_file[9][7] , DUT.U0_RegFile.\reg_file[9][6] , DUT.U0_RegFile.\reg_file[9][5] , DUT.U0_RegFile.\reg_file[9][4] , DUT.U0_RegFile.\reg_file[9][3] , DUT.U0_RegFile.\reg_file[9][2] , DUT.U0_RegFile.\reg_file[9][1] , DUT.U0_RegFile.\reg_file[9][0] };
assign regfile_ary[10]    = { DUT.U0_RegFile.\reg_file[10][7] , DUT.U0_RegFile.\reg_file[10][6] , DUT.U0_RegFile.\reg_file[10][5] , DUT.U0_RegFile.\reg_file[10][4] , DUT.U0_RegFile.\reg_file[10][3] , DUT.U0_RegFile.\reg_file[10][2] , DUT.U0_RegFile.\reg_file[10][1] , DUT.U0_RegFile.\reg_file[10][0] };
assign regfile_ary[11]    = { DUT.U0_RegFile.\reg_file[11][7] , DUT.U0_RegFile.\reg_file[11][6] , DUT.U0_RegFile.\reg_file[11][5] , DUT.U0_RegFile.\reg_file[11][4] , DUT.U0_RegFile.\reg_file[11][3] , DUT.U0_RegFile.\reg_file[11][2] , DUT.U0_RegFile.\reg_file[11][1] , DUT.U0_RegFile.\reg_file[11][0] };
assign regfile_ary[12]    = { DUT.U0_RegFile.\reg_file[12][7] , DUT.U0_RegFile.\reg_file[12][6] , DUT.U0_RegFile.\reg_file[12][5] , DUT.U0_RegFile.\reg_file[12][4] , DUT.U0_RegFile.\reg_file[12][3] , DUT.U0_RegFile.\reg_file[12][2] , DUT.U0_RegFile.\reg_file[12][1] , DUT.U0_RegFile.\reg_file[12][0] };
assign regfile_ary[13]    = { DUT.U0_RegFile.\reg_file[13][7] , DUT.U0_RegFile.\reg_file[13][6] , DUT.U0_RegFile.\reg_file[13][5] , DUT.U0_RegFile.\reg_file[13][4] , DUT.U0_RegFile.\reg_file[13][3] , DUT.U0_RegFile.\reg_file[13][2] , DUT.U0_RegFile.\reg_file[13][1] , DUT.U0_RegFile.\reg_file[13][0] };
assign regfile_ary[14]    = { DUT.U0_RegFile.\reg_file[14][7] , DUT.U0_RegFile.\reg_file[14][6] , DUT.U0_RegFile.\reg_file[14][5] , DUT.U0_RegFile.\reg_file[14][4] , DUT.U0_RegFile.\reg_file[14][3] , DUT.U0_RegFile.\reg_file[14][2] , DUT.U0_RegFile.\reg_file[14][1] , DUT.U0_RegFile.\reg_file[14][0] };
assign regfile_ary[15]    = { DUT.U0_RegFile.\reg_file[15][7] , DUT.U0_RegFile.\reg_file[15][6] , DUT.U0_RegFile.\reg_file[15][5] , DUT.U0_RegFile.\reg_file[15][4] , DUT.U0_RegFile.\reg_file[15][3] , DUT.U0_RegFile.\reg_file[15][2] , DUT.U0_RegFile.\reg_file[15][1] , DUT.U0_RegFile.\reg_file[15][0] };
*/
////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial 
begin 

initialize(); 
reset();

#(REF_CLK_PERIOD);
////////////////////////////////////////////////////
////////// PARTY--> enable and even parity/////////
///////////////////////////////////////////////////
///////////////// TEST 1 /////////////////////////
/////////////////////////////////////////////////
// TEST CASE 1: testing  wr data 
$display( "=============================================");
$display( "=============TEST CASE 1=====================");
$display( "=============================================");
$display( "witing 0xAA in address 0x4");
#(TX_CLK_PERIOD);
DATA_IN('b11_1010_1010_0); // Write cmd = 0XAA
DATA_IN('b10_0000_0100_0); // Address = 0x4 
DATA_IN('b11_1010_1010_0); // Write data = 0xAA

$display( "witing 0xAA in address 0x5");
#(TX_CLK_PERIOD);
DATA_IN('b11_1010_1010_0); // Write cmd = 0XAA
DATA_IN('b11_0000_0101_0); // Address = 0x5
DATA_IN('b10_1100_1101_0); // Write data = 0xCD

////////////////////////////////
//////////// TEST 2 ///////////
//////////////////////////////
// TEST CASE 2 : Testing Rd data 
$display( "=============================================");
$display( "=============TEST CASE 2=====================");
$display( "=============================================");
$display( "Reading 0xAA that were written before from");
DATA_IN('b11_1011_1011_0); // Read cmd = 0xBB
DATA_IN('b10_0000_0100_0); // Address = 0x4 


out_check_with_parity('haa,2);

#(TX_CLK_PERIOD);

/////////////////////////////
////////// TEST 3 //////////
///////////////////////////
// Testing ALU operation with operand
// A = 5
// B = 6  
$display( "=============================================");
$display( "=============TEST CASE 3=====================");
$display( "=============================================");
$display( "ALU_W_OP: A= 5 , B=6 , pluse operation ");
DATA_IN('b11_1100_1100_0); // ALU_W_OP = 0xCC
DATA_IN('b11_0000_0101_0); // A = 5 
DATA_IN('b11_0000_0110_0); // B=6
DATA_IN('b11_0000_0000_0); // pluse 

out_check_with_parity('d11,3);
out_check_with_parity('d00,3);

/////////////////////////////
////////// TEST 4 //////////
///////////////////////////
// Testing ALU operation with operand
// A = 55
// B = 58
$display( "=============================================");
$display( "=============TEST CASE 4=====================");
$display( "=============================================");
$display( "ALU_W_OP: A= 55 , B=58 , multiplication operation ");
DATA_IN('b11_1100_1100_0); // ALU_W_OP = 0xCC
DATA_IN('b10_0011_0111_0); // A = 55
DATA_IN('b11_0011_1010_0); // B=58
DATA_IN('b10_0000_0010_0); // multiplication

out_check_with_parity('b0111_0110,4);
out_check_with_parity('b1100,4);

/////////////////////////////
////////// TEST 5 //////////
///////////////////////////
// TEST CASE 5 : Testing  ALU_OPER_W_NOP_CMD 
$display( "=============================================");
$display( "=============TEST CASE 5=====================");
$display( "=============================================");
$display( "ALU_W_OP: A= 55 , B=58 , pluse operation ");

DATA_IN('b11_1101_1101_0); // ALU_OPER_W_NOP_CMD = 0xDD
DATA_IN('b11_0000_0000_0); // pluse 
UART_RX_IN='b1;
out_check_with_parity('b0111_0001,5);

repeat(32) @(posedge REF_CLK );


$display( "=============================================");
$display( "============= All Test cases done ============");
$display( "=============================================");

$stop;


end




////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize ;
  begin
   RST_N ='b1;
   UART_CLK='b0;
   REF_CLK='b0;
   UART_RX_IN='b1;

  test_mode         = 1'b0   ;
	SE                = 1'b0   ;
	SI                = 1'b0   ;
	scan_clk          = 1'b0   ;
	scan_rst          = 1'b0   ;	
  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(TX_CLK_PERIOD)
	RST_N  = 'b0;           // rst is activated
	#(TX_CLK_PERIOD)
	RST_N  = 'b1;
	#(TX_CLK_PERIOD) ;
  end
endtask

/////////////////////// Data IN /////////////////////////
task DATA_IN ;

input [10:0]  rx_in ; 

integer i; 
    begin
    $display(" Serial RX_IN = %0b", rx_in);

    for (i=0; i <=10 ;i=i+1)
        begin
        UART_RX_IN = rx_in[i];
        #(TX_CLK_PERIOD) ;
        end
    end 
endtask

///////////////
////////////////////////// check output with parity bit ////////////////////////////////
task out_check_with_parity ;
input [7:0] seriesdata;
input  integer op;

reg [10:0]  tx_out ;
integer i;

begin 
    tx_out='b0;
    @(negedge UART_TX_O);
    #(TX_CLK_PERIOD/2);
    #(TX_CLK_PERIOD); // to skip start bit
    
for (i=0;i<8;i=i+1)
    begin 
      tx_out[i]=UART_TX_O;
      #(TX_CLK_PERIOD);
    end
    $display("TX output = %0h",tx_out);
    if(tx_out==seriesdata)
    begin 
      $display("TEST %0d PASSED",op);
    end
    else
    begin 
          $display("TEST %0d Failed",op);
    end

     #(TX_CLK_PERIOD);

/*
    if  (tx_out==seriesdata)
    $display ("test case %0d passed",op);
    else 
    $display ("test case %0d failed",op);
*/
end

endtask 

///////////////////// Clock Generator //////////////////
always begin 
    #(REF_CLK_PERIOD/2) REF_CLK= ~REF_CLK;
end

always begin 
  #(UART_CLK_PERIOD/2)  UART_CLK = ~UART_CLK;
end

///////////////// Design Instaniation //////////////////

SYS_TOP DUT (
  .scan_clk(scan_clk) ,  
  .scan_rst(scan_rst) ,  
  .test_mode(test_mode) ,  
  .SE(SE) ,  
  .SI(SI) ,  
  .SO(SO) ,  

    .RST_N(RST_N),
    .UART_CLK(UART_CLK),
    .REF_CLK(REF_CLK),
    .UART_RX_IN(UART_RX_IN),

    .UART_TX_O(UART_TX_O),
    .framing_error(stop_Error),
    .str_glitch(str_glitch),
    .parity_error(parity_error)
);

endmodule 