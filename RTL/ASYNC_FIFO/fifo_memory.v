module fifo_mem #(parameter DATA = 16 ,DEPTH = 8,pointer_width=4 ) (

input wire              wclk,
input wire              wrst_n,
input wire              wclken,

input wire [pointer_width-2:0]        waddr, 
input wire [pointer_width-2:0]        raddr,

input wire [DATA-1:0]   wdata,


output wire [DATA-1:0]   rdata

);



//// internal 

reg  [DATA-1:0] regArr [DEPTH-1:0] ;
integer I ; 

/////////////////////


always @(posedge wclk or negedge wrst_n)
 begin
   if(!wrst_n)  // Asynchronous active low reset 
    begin	
      for (I=0 ; I < DEPTH ; I = I +1)
        begin
          regArr[I] <= 'b0 ;
        end
     end

   else if (wclken ) // Register Write Operation
     begin
	   regArr[waddr] <= wdata ;
     end		   
  end

assign rdata = regArr[raddr];


endmodule 
