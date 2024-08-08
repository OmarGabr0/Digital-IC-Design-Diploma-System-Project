module edge_bit_cnt (
    input    wire         clk_RX,rst,

    input    wire [5:0]   prescale,
    input    wire         edge_cnt_enable,


    input    wire         PAR_EN,

    //output wire        edge_cnt_max,
    output reg    [3:0]  bit_cnt,
    output reg    [5:0] edge_cnt  ,
    output reg    edge_cnt_max
);

///internal signals
reg  bit_cnt_max;

/////////////////////////////////// 

//// counter 
always @ (posedge clk_RX  or negedge rst)
  begin 
    if (!rst)
      begin
        edge_cnt<='b0;
        bit_cnt <='b0;
      end
    else 
        begin 
            if (edge_cnt_enable)
              begin 
                edge_cnt <= edge_cnt +1'b1;
                ///// bit_cnt block
                if (edge_cnt_max && !bit_cnt_max)
                  begin
                    bit_cnt <= bit_cnt + 'd1 ;
                    edge_cnt <= 'd0 ;
                   
                  end
                  else if( edge_cnt_max && bit_cnt_max)
                    begin 
                      bit_cnt <='d0  ;
                      edge_cnt<='d0 ;
                      
                    end
                    else 
                    begin 
                      bit_cnt <= bit_cnt ; 
                    end 
                ///////////////////
              end
            else 
              begin
                edge_cnt <= 'd0 ;
                bit_cnt <= 'd0;
              end 
        end
  end

 always @(*) 
 begin 
  case (prescale) 
  'd8 :begin 
       edge_cnt_max= ( edge_cnt == 'd7 ) ? 1'b1 : 1'b0 ;
  end
  'd16 : begin 
        edge_cnt_max = ( edge_cnt == 'd15 ) ? 1'b1 :1'b0 ;
  end
  'd32 : begin 
        edge_cnt_max = ( edge_cnt == 'd31  ) ? 1'b1 :'b0 ;
  end
  default : begin 
        edge_cnt_max= ( edge_cnt =='d7  ) ? 1'b1 : 1'b0 ;
  end
  endcase
 end
always @ (*) 
begin
 bit_cnt_max = ((PAR_EN && bit_cnt == 'd10 && edge_cnt_max) ||(!PAR_EN && bit_cnt =='d9 && edge_cnt_max) )? 1'b1: 1'b0 ;
end

endmodule