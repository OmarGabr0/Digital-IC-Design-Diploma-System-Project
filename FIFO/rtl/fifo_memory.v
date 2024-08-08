module fifo_mem #(parameter DATA = 8 ,DEPTH = 53 ) (

input wire              wclk,
input wire              wrst_n,
input wire              wclken,

input wire [2:0]        waddr, 
input wire [2:0]        raddr,

input wire [DATA-1:0]   wdata,


output reg [DATA-1:0]   rdata

);

/*
Brust lenght =10 * 8 = 10
fifo depth =80 - ((80/100) *40) = 48
read_pointer length = 6 bits
i will increase the widht to 48+5=53
*/

//// internal 

reg  [DATA-1:0] regArr [DEPTH-1:0] ;
integer I ; 

/////////////////////


always @(posedge wclk or negedge wrst_n)
 begin
   if(!wrst_n)  // Asynchronous active low reset 
    begin
      rdata <= 'd0 ;	
      for (I=0 ; I < DEPTH ; I = I +1)
        begin
          regArr[I] <= 0 ;
        end
     end

   else if (wclken ) // Register Write Operation
     begin
	   regArr[waddr] <= wdata ;
	   rdata <= regArr[raddr] ;
     end
   else 
	begin 
	rdata <= regArr[raddr] ;
	end
		   
  end




endmodule 
