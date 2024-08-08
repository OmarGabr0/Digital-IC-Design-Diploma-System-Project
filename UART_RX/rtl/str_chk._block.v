module str_check (
input    wire     clk_RX,rst,

input    wire     str_chk_en,
input    wire     sampled_bit,

output   reg       str_glitch 
);



///// sequential block 
always @ (posedge clk_RX or negedge rst)
  begin 
    if (!rst)
      begin
        str_glitch <= 1'b0;
      end 
      else if (str_chk_en)
        begin 
          if  ( sampled_bit == 1'b1 )
            begin 
              str_glitch <= 1'b1;
            end
            else 
            begin 
              str_glitch <= 1'b0;
            end 
        end
        else 
          begin 
            str_glitch <= str_glitch;
          end
  end 

endmodule