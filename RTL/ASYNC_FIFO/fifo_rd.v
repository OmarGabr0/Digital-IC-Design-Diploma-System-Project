module fifo_rd #(parameter pointer_width = 4) (
    input wire rinc,
    input wire rclk,
    input wire rrst_n,
    input wire [pointer_width-1:0] gray_wr_ptr,
  

    output wire [pointer_width-2:0] raddr,
    output reg [pointer_width-1: 0] gray_rd_ptr,
    //output reg       bus_en_rd
    output reg      empty
  
);

//internal signals
reg [pointer_width-1:0] rd_ptr;
integer i;
reg [pointer_width-1:0] gray_rd_ptr_cmp;
/////////////////////////////////


// block to convert from bit to gray code 
always @ (*) 
begin 
    for (i=0 ; i<=3 ; i=i+1)
    begin 
        if (i==3)
        begin 
            gray_rd_ptr_cmp[i] = rd_ptr[i] ;
        end
        else
        begin
        gray_rd_ptr_cmp[i] = rd_ptr[i] ^ rd_ptr[i+1];
        end
    end
end
/////////////////////////////////

///// embty condition 
//assign empty = (gray_wr_ptr == gray_rd_ptr) ?  1'b1:1'b0 ;
always @ (*) 
  begin 
	if((gray_wr_ptr == gray_rd_ptr)) 
	  begin 
		empty = 1'b1;
	  end
	else 
	  begin 
		empty=1'b0;
	  end
  end
/////////////////////////////////
always @ (posedge rclk or negedge rrst_n )
  begin 

    if(!rrst_n)
    begin 
      rd_ptr <=0;
	   // bus_en_rd <=0;
    end
    else if (!empty && rinc )
        begin 
        rd_ptr <= rd_ptr+ 'b1;
	     // bus_en_rd <=1;
        end
  end 
//////////////////////////////////

assign raddr=rd_ptr[pointer_width-2:0];

//////////////////////////////////
  //gray_rd_ptr register 
always @ (posedge rclk or negedge rrst_n)
  begin 
    if (!rrst_n)
    begin 
    gray_rd_ptr<=0 ; 
    end 
    else 
    begin
        gray_rd_ptr <= gray_rd_ptr_cmp; 
    end
  end
////////////////////////////////////


endmodule
