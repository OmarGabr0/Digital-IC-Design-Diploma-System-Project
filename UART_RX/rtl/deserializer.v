module deserializer (
    input    wire        clk_RX,rst,

    input    wire         sampled_bit ,
    input    wire         deser_en,
    input    wire         take_sample,
    input    wire     [5:0]    edge_cnt,
    input    wire          edge_cnt_max,

    
    output   reg  [7:0]    P_DATA

    
);

// internal signals


integer i ;
////////////////////////////////


/// sequential block 

always @ (posedge clk_RX or negedge rst ) 
  begin 
    if (!rst)
    begin 
        P_DATA <= 'd0 ;
    end
    else if (deser_en )
      begin 
        for (i=7 ; i>=1 ; i=i-1)
         begin
          if(take_sample  && !edge_cnt_max)
          begin
          P_DATA[7] <= sampled_bit ;
          end
          else if(edge_cnt == 'd0)
          begin 
          P_DATA[i-1] <= P_DATA[i] ;
          end
          else
          begin 
            P_DATA <= P_DATA;
          end

         end
      end
    else 
      begin
        P_DATA <= P_DATA ; 
      end
  end


endmodule
