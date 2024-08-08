`timescale 1ns/1ps
module fifo_tb ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////
parameter datawidth=8;
parameter fifo_depth = 8;
parameter clockperiod_reading =25;
parameter clockperiod_writing = 10;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////
    reg W_CLK;
    reg W_RST;
    reg W_INC;

    reg R_CLK;
    reg R_RST;
    reg R_INC;

    reg [datawidth-1:0] WR_DATA ;

    wire FULL ;
    wire [datawidth-1:0] RD_DATA;
    wire EMPTY;
///////////////////////////////
////// internal //////////////
////////////////////////////
reg w_inc_en;
reg r_inc_en;
integer data;




////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

///// WR itial block 
initial 
begin 

initialization();
reset();
/////////////////////// TEST CASE 1 //////////////////////
// testing fifo get full and full flag is up 
$display("============================================");
$display("============= TEST CASE 1===================");
$display ("           TESTING FIFO FULL CASE          ");
@(negedge EMPTY) R_INC='b1;
r_inc_en='b1;
write_full('b0);
#(clockperiod_writing);

$display ("TEST CASE 1 FINISH");
$display("============================================");
#(3* clockperiod_reading);
////////////////////////////////////////////////////////////

//////////////////// TEST CASE 2 ///////////////////////////
// testing fifo empty flag


$display("===========================================");
$display("============== TEST CASE 2 ================");
$display("           TESTING FIFO EMBTY CASE      ");
read_embty();
#(clockperiod_reading);
$display ("TEST CASE 2 FINISH");
$display("============================================");
w_inc_en='b1;
#(10* clockperiod_reading);
$stop;

end



////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////


///////////////INITIALIZATION//////////////////////
task initialization;
begin 
W_CLK='b0;
W_RST='b1;
W_INC='b1;

R_CLK='b0;
R_RST='b1;
R_INC='b1;
WR_DATA='b0;

w_inc_en='b1;
r_inc_en='b0;
data = 'b0;

end
endtask

///////////////reset //////////////////////////
task reset;
begin 
W_RST='b1;
R_RST='b1;
#(clockperiod_reading);
W_RST='b0;
R_RST='b0;
#(clockperiod_reading);
W_RST='b1;
R_RST='b1;
end
endtask

///////////////// write full function for test acse 1 only //////////////////////////////
task write_full ;
input [datawidth-1:0] data;
    begin 
        w_inc_en=1;
        r_inc_en=1;

    while (!FULL)
    begin
       
        if(FULL==1)
        begin 
            $display("PASSED fifo full test ");
            $display ("FIFO is FULL ");
        end    
        #(clockperiod_writing);
    end
    end

endtask

//////////////////// read till embty function for test case 2 only ///////////////////
// this function made to force FIFO_WR to turn off so that FIFO_RD will read untill embty flag 

task read_embty ; 
integer i ; 
begin 
    w_inc_en=0;
    r_inc_en=1; 

    while(!EMPTY)
    begin 
        #(clockperiod_reading);
    end 
    if(EMPTY)
    begin 
        r_inc_en=0;
    end
end
endtask
 
///////////////////// Clock Generator //////////////////

//TX_CLOCK
always begin   
 #(clockperiod_writing/2) W_CLK = ~W_CLK ;
 
end
//RX_CLOCK 
always begin 

 #(clockperiod_reading/2) R_CLK= ~R_CLK ;

end

//////////////////// W_INC //////////////////
//to write every clock cycle 

always begin 

 if(w_inc_en && !FULL) 
 begin 
 @(posedge W_CLK)  W_INC= ~W_INC;
 end
 else 
 begin 
  @(posedge W_CLK)   W_INC= 'b0;
   WR_DATA=data;
 end
end


always begin 
 
 if( r_inc_en && !EMPTY)
 begin 
  @(posedge R_CLK)  R_INC= ~R_INC;
 end
 else 
 begin 
  @(posedge R_CLK)  R_INC='b0;
 end
end

 always begin 
    @(posedge W_INC)  WR_DATA=data;
 data=data +'b1;
 end


///////////////// Design Instaniation //////////////////
fifo_top #(.data_width(datawidth),.FIFO_DEPTH(fifo_depth)) DUT (

.W_CLK(W_CLK),
.W_RST(W_RST),
.W_INC(W_INC),

.R_CLK(R_CLK),
.R_RST(R_RST),
.R_INC(R_INC),

.WR_DATA(WR_DATA),
.FULL(FULL),
.RD_DATA(RD_DATA),
.EMPTY(EMPTY)
);


endmodule