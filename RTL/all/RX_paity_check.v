module RX_parity_check #(parameter data_width=8) 
(
    input wire  clk_RX,rst, 

    input wire [data_width-1:0]  P_DATA,
    input wire        par_chk_en,
    input wire        sampled_bit, 
    input wire        PAR_TYP,

    output reg         Parity_Error
);
// internal signals
 reg par_err_cmp;
 //reg  [7:0]    DATA_V ;   

////////////////////////////////

//compinational logic block 

always @(*) 
  begin  
    if(PAR_TYP)
      begin 
        par_err_cmp = ( ^P_DATA == sampled_bit)? 1'b0:1'b1; // even
      end
    else
      begin 
        par_err_cmp = ( ~^ P_DATA == sampled_bit)? 1'b0:1'b1;  //odd 
      end 
 
  end

// sequential block 

always @ (posedge clk_RX or negedge rst ) 
  begin 
    if (!rst )
      begin 
        Parity_Error <=0; 
      end
    else if (par_chk_en) 
      begin
        Parity_Error <= par_err_cmp ;
      end
      else
      begin
        Parity_Error<=Parity_Error;
      end
  end


endmodule