
`timescale 1us/1ns

module uart_tx_tb();
/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter datawidth_tb=8;
parameter clockperiod =8.68;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg data_valid_tb;
reg [datawidth_tb-1:0] p_data_tb;
reg par_en_tb;
reg par_typ_tb;
reg clk_tb;
reg rst_tb;
wire busy_tb;
wire tx_out_tb;

    integer i;
    reg [10:0]  tx_out1;
    reg [9:0] tx_out2;

////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial 
begin 
    $dumpfile("UART_DUMP.vcd") ;       
    $dumpvars; 

    initialization();
    reset();
    
    ///// test case 1 : parity enabled, odd parity 
    take_input(8'h55,1,1);
    out_check_with_parity(11'b10010101010,1);
    //// test case 2: parity not enabled
    take_input (8'd100,0,0);
    out_check_without_parity(10'b1011001000,2);
    //// test case 3: parity enabled , even parity check 
    take_input (8'b10011001,1,0);
    out_check_with_parity(11'b11100110010,3);
    
  
    ///////////////////////////////////////////////////////////////////////////////
    //// test case 4: no delay between tow frames

    ////// let the first frame is 1100 1010 with odd parity 
    data_valid_tb=1'b1;              //data is valid now
    p_data_tb=8'b11001011;          // data input
    par_typ_tb=1'b1;                    //odd parity typr
    par_en_tb=1'b1;

     
 
    tx_out1='b0;
   #(clockperiod);
     data_valid_tb='b0;
     @(negedge tx_out_tb);
    #(clockperiod/2);
    
    for (i=0;i<11;i=i+1)
    begin 
          if(i==10)
       begin
       tx_out1[10]=tx_out_tb;
          data_valid_tb=1'b1;   // data valid for next frame immediatlly
       end
    
       else
       begin
      tx_out1[i]=tx_out_tb;
       #(clockperiod);
       end
    
    end
    i=0;
   

    ////// let the second frame is 1001 1000 without a parity 
            //data is valid now
    p_data_tb=8'b10011011;          // data input
    par_typ_tb=1'b0;                   //odd parity typr
    par_en_tb=1'b0;
   
      tx_out2='b0;
   #(clockperiod);
     data_valid_tb='b0;
    #(clockperiod);
    for (i=0;i<10;i=i+1)
    begin 
       
      tx_out2[i]=tx_out_tb;
       #(clockperiod);
       if(i==10)
       tx_out2[9]=tx_out_tb;
    end
    #(clockperiod);
        if  (tx_out1==11'b11110010110)
    $display ("test case 4.1 passed");
    else 
    $display ("test case 4.1 failed");
    if  (tx_out2==10'b1100110110)
    $display ("test case 4.2 passed",3);
    else 
    $display ("test case 4.2 failed",3);

    $display(" if  test 4.1 and 4.2 passed, that means the two connected frames are passed successfully");

//////////////////////////////////////////////////////////////////////////////////////////

$stop;


end



////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////


///////////////INITIALIZATION//////////////////////
task initialization;
begin 
clk_tb='b0;
p_data_tb='b0;
data_valid_tb='b0;
par_en_tb='b0;
par_typ_tb='b0;
end
endtask

///////////////reset //////////////////////////
task reset;
begin 

rst_tb='b0;
#(clockperiod);
rst_tb='b1;
end
endtask

///////////// input p_data_tb //////////////////////////

task take_input;

input [datawidth_tb-1:0] parallel;
input par_enable;
input par_type;
begin 
    
   
    data_valid_tb='b1; 
    p_data_tb=parallel;     //assign p_data
    par_en_tb=par_enable;   // assign PAR_EN
    par_typ_tb=par_type;    // assign PAR__TYP
   
   

end
endtask
////////////////////////// check output with parity bit ////////////////////////////////
task out_check_with_parity ;
input [10:0] seriesdata;
input  integer op;

reg [10:0]  tx_out ;
integer i;

begin 
    tx_out='b0;
  #(clockperiod);
     data_valid_tb='b0;
    #(clockperiod);
    
for (i=0;i<11;i=i+1)
    begin 
        
      tx_out[i]=tx_out_tb;
      #(clockperiod);
      
    end
    #(clockperiod);

    if  (tx_out==seriesdata)
    $display ("test case %0d passed",op);
    else 
    $display ("test case %0d failed",op);
end

endtask 
/////////////////// ckeck output without parity bit //////////////////////
task out_check_without_parity ;
input [9:0] seriesdata;
input integer op;

reg [9:0]  tx_out ;
integer i;

begin 
    tx_out='b0;
 #(clockperiod);
     data_valid_tb='b0;
    #(clockperiod);
     
for (i=0;i<10;i=i+1)
    begin 
        
      tx_out[i]=tx_out_tb;
      #(clockperiod);
    end
    #(clockperiod);

    if  (tx_out==seriesdata)
    $display ("test case %0d passed",op);
    else 
    $display ("test case %0d failed",op);
end

endtask 

////////////////////////////////////////////////////////
////////////////// Clock Generator  ////////////////////
////////////////////////////////////////////////////////

always #(clockperiod/2)  clk_tb = ~clk_tb ;

////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////

UART_TX #(.DATAWIDTH(datawidth_tb)) DUT(
.CLK(clk_tb),
.RST(rst_tb),
.P_DATA(p_data_tb),
.PAR_TYP(par_typ_tb),
.DATA_VALID(data_valid_tb),
.PAR_EN(par_en_tb),
.BUSY(busy_tb),
.TX_OUT(tx_out_tb)
);

endmodule