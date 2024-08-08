module fifo_wr  (


    input wire winc,
    input wire wclk,
    input wire wrst_n,
    input wire [3:0] gray_rd_ptr,


    output reg [2:0] w_addr,
    output reg [3:0] gray_wr_ptr,    
    //output reg bus_en_wr,
    output reg wfull

);

// internal signals
reg [3:0] wr_ptr;
integer i;
reg [3:0] gray_wr_ptr_cmp;

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
  if( gray_rd_ptr[3] != gray_wr_ptr[3] && gray_wr_ptr [2] != gray_rd_ptr[2] &&  gray_wr_ptr [1:0] == gray_rd_ptr[1:0])
     begin
	wfull =1 ;
     end   
   else 
     begin 
	wfull = 0;
     end 
end 




//sequintial block 
always @ (posedge wclk or negedge wrst_n)

  begin 
    if (!wrst_n)
    begin 
       wr_ptr <=0;
       w_addr <=0;
      //bus_en_wr <=0;
    end 
    else 
      begin 

        if (!wfull && winc && wr_ptr ==0)
        begin 
        
        w_addr <= 0;
        wr_ptr <= wr_ptr+ 'b1;
	      //bus_en_wr <=1;

        end
        else if ( !wfull && winc && wr_ptr != 0)
        begin 
        w_addr <= w_addr + 'b1;
        wr_ptr <= wr_ptr + 'b1;
	     //bus_en_wr <=1;
        end
        else
        begin
      	w_addr <= w_addr;
        wr_ptr <= wr_ptr ;
	     //bus_en_wr <=0;  

	      end
      end
  end 

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
