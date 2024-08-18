module RX_stp_chk (
    input    wire        clk_RX,rst,

    input   wire         stp_chk_en,
    input   wire         sampled_bit,

    output   reg         Stop_Error
); 

always @ (posedge clk_RX or negedge rst)
  begin 
    
    if (!rst)
      begin 
        Stop_Error <= 1'b0; 
      end 
    else if (stp_chk_en) 
      begin

        Stop_Error <= !sampled_bit ;
      end
    else 
      begin 
        Stop_Error <= Stop_Error;
      end
  end

endmodule 