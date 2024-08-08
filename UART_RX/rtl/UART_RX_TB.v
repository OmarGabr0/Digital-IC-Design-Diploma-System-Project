`timescale 1us/1ns

module UART_RX_TB();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter DATA_WD_TB = 8 ;  

parameter TX_CLK_PERIOD = 8.68 ;     // 115.2 KHz



/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////
reg         clk_TX;
reg         clk_RX_tb;
reg         rst_tb;


reg         RX_IN_tb ; 
reg         PAR_EN_tb ; 
reg         PAR_TYP_tb; 
reg [5:0]   prescale_tb;

wire          data_valid_tb;
wire [7:0]    P_DATA_tb;
wire          Parity_Error_tb;
wire          Stop_Error_tb;
wire          str_glitch_tb; 



////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial 
 begin 
 initialize();

 reset();
 @(posedge clk_TX)     ;            // to align the change of RX_IN with posedge of bit_cnt 

 ///////////////////////////////////////////////////////
 /////Test 1: testing  with prescale 8

 //#((TX_CLK_PERIOD/(2*prescale_tb)))
 
 $display("==================================  TEST 1 ================================== "); 
 UART_CONFG('d8,1,1) ;                  // prescale 8 ,parity enabled and odd parity 
 DATA_IN('b10_1001_0101_0);

 check_out('d1,'b1001_0101,'b000)   ;        //  itest=1, output_data=1001_0101 , Errors 000  
/////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;           
//////////////////////////////////////////////////////////////////////
 //// Test 2 : testing consequent frames  , with prescale = 8

 $display("================================== TEST 2 ================================== ");
 UART_CONFG('d8,1,0) ;               // prescale 8 ,parity enabled and even parity   with parity error
 DATA_IN('b11_1001_1001_0);

 check_out('d2,'b1001_1001, 'b000) ;     // STR_ERR = 0 , PAR_ERR = 1  , STP_ERR = 0 
 UART_CONFG('d8,1,1) ;                 // prescale 8 ,parity enabled and odd parity  with stop error
 DATA_IN('b10_1001_1001_0);      
 check_out('d2,'b1001_1001, 'b000) ;    // STR_ERR = 0 , PAR_ERR = 0  , STP_ERR = 0
 
 $display ("consequent frames: TEST 2 Finished");





 ///////////////////////////////////////////////////////////////////////////
 //////////////////////////////////////////////////////////////////////////
 ///////////////  prescale = 16  ////////////////////////////////////////
 ///////////////////////////////////////////////////////////////////////


 reset();
 @(posedge clk_TX)     ;           

 
 ///////////////////////////////////////////////////
 /// TEST 3: a frame with prescale = 16   
 $display("================================== TEST 3 ================================== "); 
 UART_CONFG('d16,1,1) ;                   // prescale 16 ,parity enabled and odd parity 
 DATA_IN('b10_1001_0101_0);

 check_out(3,'b1001_0101,'b000); 
/////////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;           

 
 //////////////////////////////////////////////////////
 //// Test 4 : testing consequent frames  , with prescale = 16
 $display("==================================  TEST 4 ================================== ");
 UART_CONFG('d16,1,0) ;               // prescale 16 ,parity enabled and even parity  
 DATA_IN('b11_1001_1001_0);

 check_out('d4,'b1001_1001, 'b000) ;     // STR_ERR = 0 , PAR_ERR = 0  , STP_ERR = 0 
 UART_CONFG('d8,1,1) ;                 // prescale 8 ,parity enabled and odd parity 
 DATA_IN('b10_1001_1001_0);      
 check_out('d4,'b1001_1001, 'b000) ;    // STR_ERR = 0 , PAR_ERR = 0  , STP_ERR = 0
 
 $display ("consequent frames: TEST 4 Finished");
/////////////////////////////////////////////////////////////////////////////

 reset();
 @(posedge clk_TX)     ;          


 ////////////////////////////////////////////////////////////////////////////
 ///////////////  prescale = 32  //////////////////////////////////////////
 /////////////////////////////////////////////////////////////////////////

 ///////////////////////////////////////////////////
 /// TEST 5: a frame with prescale =32 
  $display("==================================  TEST 5 ================================== "); 
 UART_CONFG('d32,1,1) ;                   // prescale 32 ,parity enabled and odd parity 
 DATA_IN('b10_1001_0101_0);

 check_out('d5,'b1001_0101,'b000);   
 //////////////////////////////////////////////////////////////////// 

  reset();
 @(posedge clk_TX)     ;        

  //////////////////////////////////////////////////////
 //// Test 6 : testing consequent frames  , with prescale = 32
 $display("================================== TEST 6 ================================== ");
 UART_CONFG('d32,1,0) ;               // prescale 32 ,parity enabled and even parity  
 DATA_IN('b11_1001_1001_0);

 check_out('d6,'b1001_1001, 'b000) ;     // STR_ERR = 0 , PAR_ERR = 0  , STP_ERR = 0 
 UART_CONFG('d32,1,1) ;                 // prescale 32 ,parity enabled and odd parity 
 DATA_IN('b10_1001_1001_0);      
 check_out('d6,'b1001_1001, 'b000) ;    // STR_ERR = 0 , PAR_ERR = 0  , STP_ERR = 0
 
 $display ("consequent frames: TEST 6 Finished");
 /////////////////////////////////////////////////////////////////////////////////////
  reset();
 @(posedge clk_TX)     ;            
 

 ////////////////////////////////////////////////////////////////////////////////////////////////
 /////////////////////// TESTING with  ERRORS            ////////////////////////////////////////
 ////////////////                   prescale = 8    //////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////
 /// TEST 7 : testing str_glith
 $display ("\n ======================================================================");
  $display("================================ Prescale =8 =============================");
 $display ( " TESTING with ERRORS "); 
 $display("================================== TEST 7 ==================================  "); 
 $display ("start_glitch error test "); 


 UART_CONFG('d8,1,1) ;                   // prescale 8 ,parity enabled and odd parity 
 
 RX_IN_tb='b0;
 #(TX_CLK_PERIOD/prescale_tb);
 RX_IN_tb='b1;
 #(TX_CLK_PERIOD);
 if (str_glitch_tb=='b1 )
 $display ( "Test 7 PASSED: str_glitch =%0d",str_glitch_tb); 
 else
 
 $display ( "Test 7 FAILED: str_glitch =%0d",str_glitch_tb); 
 /////////////////////////////////
  reset();
 @(posedge clk_TX)     ;        

 ///////////////////////////////////////////////////////////
 // TEST 8: testing parity error 
 $display("==================================   TEST 8 ================================== "); 
 $display ("TEST 8.1 \n odd par_err test  "); 

 UART_CONFG('d8,1,1) ;    
 DATA_IN('b11_1001_0101_0);

 check_out('d8,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
/////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;    
 ////////////////////////////////////////////////////////////
  $display ("TEST 8.2 \n even par_err test  ");         
  UART_CONFG('d8,1,0) ;    
 DATA_IN('b10_1001_0101_0);

 check_out('d8,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
/////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;        
 ////////////////////////////////////////////////////////////
 // TEST 9 : testing stp_err 

 $display("================================== TEST 9 ==================================  "); 
 $display ("stp_err test "); 
  UART_CONFG('d8,1,1) ;    
 DATA_IN('b00_1001_0101_0);
 check_out('d9,'b1001_0101,'b001)   ;        //  itest=1, output_data=1001_0101 , Errors 001
 RX_IN_tb='b1;   // to stay in idle stat
 ////////////////////////////////////////////////////////////////////////////

 ////////////////////////////////////////////////////////////////////////////////////////////////
 /////////////////////// TESTING with  ERRORS            ////////////////////////////////////////
 ////////////////                 prescale = 16    //////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////
 /// TEST 7 : testing str_glith
 $display ("\n ======================================================================");
 $display ( " TESTING with ERRORS "); 
  $display("================================ Prescale =16 =============================");
 $display("================================== TEST 10 ==================================  "); 
 $display ("start_glitch error test "); 


 UART_CONFG('d16,1,1) ;                   // prescale 16 ,parity enabled and odd parity 
 
 RX_IN_tb='b0;
 #(TX_CLK_PERIOD/prescale_tb);
 RX_IN_tb='b1;
 #(TX_CLK_PERIOD);
 if (str_glitch_tb=='b1 )
 $display ( "Test 10 PASSED: str_glitch =%0d",str_glitch_tb); 
 else
 
 $display ( "Test 10 FAILED: str_glitch =%0d",str_glitch_tb); 
 /////////////////////////////////
  reset();
 @(posedge clk_TX)     ;       

 ///////////////////////////////////////////////////////////
 // TEST 8: testing parity error 
 $display("==================================   TEST 11 ================================== "); 
 $display ("TEST 11.1 \n odd par_err test "); 

 UART_CONFG('d16,1,1) ;    
 DATA_IN('b11_1001_0101_0);

 check_out('d11,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
/////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;          

////////////////////////////////////////////////
   $display ("TEST 11.2 \n even  par_err test "); 

 UART_CONFG('d16,1,0) ;    
 DATA_IN('b10_1001_0101_0);

 check_out('d11,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
 /////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;  
 ////////////////////////////////////////////////////////////
 // TEST 9 : testing stp_err 

 $display("================================== TEST 12 ==================================  "); 
 $display ("stp_err test "); 
  UART_CONFG('d16,1,1) ;    
 DATA_IN('b00_1001_0101_0);
 check_out('d12,'b1001_0101,'b001)   ;        //  itest=1, output_data=1001_0101 , Errors 001
 RX_IN_tb='b1;   // to stay in idle stat

 ////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
 /////////////////////// TESTING with  ERRORS            ////////////////////////////////////////
 ////////////////           prescale = 32    //////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////
 /// TEST 7 : testing str_glith
 $display ("\n ======================================================================");
 $display ( " TESTING with ERRORS "); 
 $display("================================ Prescale =32 =============================");
 $display("================================== TEST 13 =================================="); 
 $display ("start_glitch error test "); 


 UART_CONFG('d32,1,1) ;                   // prescale 8 ,parity enabled and odd parity 
 
 RX_IN_tb='b0;
 #(TX_CLK_PERIOD/prescale_tb);
 RX_IN_tb='b1;
 #(TX_CLK_PERIOD);
 if (str_glitch_tb=='b1 )
 $display ( "Test 13 PASSED: str_glitch =%0d",str_glitch_tb); 
 else
 
 $display ( "Test 13 FAILED: str_glitch =%0d",str_glitch_tb); 
 /////////////////////////////////
  reset();
 @(posedge clk_TX)     ;          

 ///////////////////////////////////////////////////////////
 // TEST 8: testing parity error 
 $display("==================================   TEST 14 ================================== "); 
 $display ("TEST 14.1 \n odd par_err test "); 

 UART_CONFG('d32,1,1) ;    
 DATA_IN('b11_1001_0101_0);

 check_out('d14,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
/////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;        
 /////////////////////////////////////////////////////////////////////    
  $display ("TEST 14.2 \n even  par_err test "); 
 UART_CONFG('d32,1,0) ;    
 DATA_IN('b10_1001_0101_0);

 check_out('d14,'b1001_0101,'b010)   ;        //  itest=1, output_data=1001_0101 , Errors 010  
/////////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;            
 ////////////////////////////////////////////////////////////
 // TEST 9 : testing stp_err 

 $display("================================== TEST 15 ==================================  "); 
 $display ("stp_err test "); 
  UART_CONFG('d32,1,1) ;    
 DATA_IN('b00_1001_0101_0);
 check_out('d15,'b1001_0101,'b001)   ;        //  itest=1, output_data=1001_0101 , Errors 001
 RX_IN_tb='b1;   // to stay in idle stat
 ////////////////////////////////////////////////////////////////////////////
reset();
 @(posedge clk_TX)     ;            
 //////////////////////////////// TEST sending frame without PAR_EN ////////////////////////////////
 $display ("Testing a frame without sending a parity bit --> PAR_EN =0 "); 
 
 $display("==================================  TEST 16 ================================== "); 
 UART_CONFG('d8,0,0) ;                  // prescale 8 ,parity enabled and odd parity 
 DATA_IN('b1_1001_0101_0);

 check_out('d16,'b1001_0101,'b000)   ;        //  itest=1, output_data=1001_0101 , Errors 000  
/////////////////////////////////////////////////////
 reset();
 @(posedge clk_TX)     ;    

 
 $stop;
 end


////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize ;
  begin
    prescale_tb       = 'd8   ;
    clk_RX_tb         = 'b1   ;
    clk_TX            = 'b0   ;
    RX_IN_tb          = 'b1   ;
	  PAR_EN_tb         = 'b0   ;
    PAR_TYP_tb        = 'b0   ;
	  rst_tb            = 'b1   ;    // rst is deactivated
  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(TX_CLK_PERIOD)
	rst_tb  = 'b0;           // rst is activated
	#(TX_CLK_PERIOD)
	rst_tb  = 'b1;
	#(TX_CLK_PERIOD) ;
  end
endtask

///////////////////// Configuration ////////////////////
task UART_CONFG ;
  input      [5:0]        prescale;
  input                   PAR_EN ;
  input                   PAR_TYP;

  begin
  prescale_tb = prescale ;
	PAR_EN_tb   = PAR_EN   ;
	PAR_TYP_tb  = PAR_TYP  ;
  end
endtask


/////////////////////// Data IN /////////////////////////
task DATA_IN ;

input [10:0]  RX_IN ; 

integer i; 
    begin
    $display(" Serial RX_IN = %0b", RX_IN);
    if (PAR_EN_tb)
        begin 
            for (i=0; i <=10 ;i=i+1)
            begin
                RX_IN_tb = RX_IN[i];
                #(TX_CLK_PERIOD) ;
            end
        end
    else
        begin
        for (i=0; i <=9 ;i=i+1)
            begin
            RX_IN_tb = RX_IN[i];
            #(TX_CLK_PERIOD) ;
            end
        end
    end 
endtask

///////////////
//////////////// Data out check  ///////////////////
task check_out; 
input real itest;
input [7:0]   output_data;
input [2:0]   Errors;

reg STR_GLITCH,STP_ERR,PAR_ERR;

 begin 
  STR_GLITCH = str_glitch_tb;
  STP_ERR = Stop_Error_tb;
  PAR_ERR=Parity_Error_tb;
  
     
      $display("  TEST%0d: Prescale = %0d, PAR_EN = %0d, PAR_TYP = %0d,",itest, prescale_tb,PAR_EN_tb,PAR_TYP_tb);
       
      if(output_data== P_DATA_tb) 
      begin 
        if ( Errors == {STR_GLITCH,PAR_ERR,STP_ERR} )
          begin
          $display ("\n*********************** test  %0d PASSED, with CORRECT error report ,output data = %0b ***********************",itest,P_DATA_tb);
          $display ("\n  STR_GLITCH = %0d , PAR_ERR = %0d , STP_ERR = %0d", STR_GLITCH,PAR_ERR,STP_ERR);
          
          end
          else
          begin
          $display ("\n*********************** test  %0d PASSED, with  WRONG report ,output data = %0b *********************** ",itest,P_DATA_tb);
          $display ("\n STR_GLITCH = %0d , PAR_ERR = %0d , STP_ERR = %0d", STR_GLITCH,PAR_ERR,STP_ERR);
          end
      end
      else 
      begin 
        if ( Errors == {STR_GLITCH,PAR_ERR,STP_ERR} )
            begin
            $display ("\n*********************** test  %0d FAILED, with CORRECT error report ,output data = %0b *********************** ",itest,P_DATA_tb);
            $display ("\n  STR_GLITCH = %0d , PAR_ERR = %0d , STP_ERR = %0d", STR_GLITCH,PAR_ERR,STP_ERR);
            end
          else
            begin
            $display ("\n*********************** test  %0d FAILED, with  WRONG report ,output data = %0b ***********************",itest,P_DATA_tb);
            $display ("\n  STR_GLITCH = %0d , PAR_ERR = %0d , STP_ERR = %0d", STR_GLITCH,PAR_ERR,STP_ERR);
            end
    

  end
 end


endtask
///////////////////// Clock Generator //////////////////

//TX_CLOCK
always begin   
 #(TX_CLK_PERIOD/2) clk_TX = ~clk_TX ;
end
//RX_CLOCK 
always begin 

 #(TX_CLK_PERIOD/(prescale_tb*2));  clk_RX_tb= ~clk_RX_tb ;

end

///////////////// Design Instaniation //////////////////
TOP DUT (
    .clk_RX(clk_RX_tb),
    .rst(rst_tb),
    
    .RX_IN(RX_IN_tb),
    .PAR_EN(PAR_EN_tb),
    .PAR_TYP(PAR_TYP_tb),
    .prescale(prescale_tb),
    
    
    .data_Valid(data_valid_tb),
    .P_DATA(P_DATA_tb),
    .Parity_Error(Parity_Error_tb),
    .str_glitch(str_glitch_tb),
    .Stop_Error(Stop_Error_tb),
    .data_valid(data_valid_tb)
);
endmodule