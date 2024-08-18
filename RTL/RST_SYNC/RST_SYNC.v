module RST_SYNC # (parameter stages = 2) 

(

    input wire rst,clk,

    output reg SYNC_RST

);


// internal signals

reg [stages-1 :0 ] rst_reg ;

integer i;

/////////////////////////////////////

// sequential block 

always @ (posedge clk or negedge rst)

begin 

  if (!rst)
    begin 
      rst_reg <='b0;
      SYNC_RST <=0;
    end
  else
  begin
   rst_reg[0] <= 1;
   for (i=1 ; i <=stages -1 ; i=i+1)
      begin 
        rst_reg[i] <= rst_reg[i-1];
      end
    SYNC_RST <= rst_reg[stages-1];  
  end
//////////////////////////////////////////


end



endmodule