module fifo_wr #(parameter pointer_width = 4) (


    input wire winc,
    input wire wclk,
    input wire wrst_n,
    input wire [pointer_width-1:0] gray_rd_ptr,


    output wire [pointer_width-2:0] w_addr,
    output reg [pointer_width-1:0] gray_wr_ptr,    
    //output reg bus_en_wr,
    output reg wfull

);

// internal signals
reg [pointer_width-1:0] wr_ptr;
integer i;
reg [pointer_width-1:0] gray_wr_ptr_cmp;

// blockj to convert from bit to gray code 
always @ (*) 
begin 
    for (i=0 ; i<=3 ; i=i+1)
    begin 
        if (i==3)
        begin 
            gray_wr_ptr_cmp[i] = wr_ptr[i] ;
        end
        else
        begin
        gray_wr_ptr_cmp[i] = wr_ptr[i] ^ wr_ptr[i+1];
        end
    end

end

//  block to assign full flag

//assign wfull= (gray_wr_ptr [6] != gray_rd_ptr[6] && gray_wr_ptr [5] != gray_rd_ptr[5] &&  gray_wr_ptr [4:0] == gray_rd_ptr[4:0])? 'b1 :'b0 ;
always @(*)
begin 
  if( gray_rd_ptr[pointer_width-1] != gray_wr_ptr[pointer_width-1] && gray_wr_ptr [pointer_width-2] != gray_rd_ptr[pointer_width-2] &&  gray_wr_ptr [pointer_width-3:0] == gray_rd_ptr[pointer_width-3:0])
     begin
	wfull =1 ;
     end   
   else 
     begin 
	wfull = 0;
     end 
end 




//sequintial block for wr_ptr
always @ (posedge wclk or negedge wrst_n)

  begin 
    if (!wrst_n)
    begin 
       wr_ptr <=0;
      //bus_en_wr <=0;
    end 
    else if (!wfull && winc)
        begin 
        wr_ptr <= wr_ptr +'b1;
	      //bus_en_wr <=1;
        end
  end 
///////////////////////////////////////////

// compinational block for w_addr
assign w_addr= wr_ptr [pointer_width-2:0] ;

//////////////////////////////////////////

//gray_wr_ptr register 
always @ (posedge wclk or negedge wrst_n)
  begin 
    if (!wrst_n)
    begin 
    gray_wr_ptr<=0 ; 
    end 
    else 
    begin
        gray_wr_ptr <= gray_wr_ptr_cmp; 
    end
  end
////////////////////////////////////


endmodule
