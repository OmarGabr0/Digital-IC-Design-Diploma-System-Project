module data_sampling (
    input   wire        clk_RX,rst,
    input   wire        RX_IN,
    input   wire        dat_samp_en,
    input   wire     [5:0]  edge_cnt, 
    input   wire     [5:0]   prescale,  /// 8 or 16 or 32

    output reg        sampled_bit,
    output reg       take_sample
);

//// parameters and internal signals

 reg       [2:0]  sample;               // registers used in 
 
////////////////////////////////////


/// sequentail block
always @ (posedge clk_RX or negedge rst) 
  begin
    if (!rst)
      begin 
        sampled_bit <= 'b0 ;
   
      end
    else if (dat_samp_en)
      begin
         case (sample)

        'b000 : sampled_bit <= 'b0;
        'b001 : sampled_bit <= 'b0;
        'b010 : sampled_bit <= 'b0;
        'b011 : sampled_bit <= 'b1;
        'b100 : sampled_bit <= 'b0;
        'b101 : sampled_bit <= 'b1;
        'b110 : sampled_bit <= 'b1;
        'b111 : sampled_bit <= 'b1;
    endcase
      end
      else
        begin
        sampled_bit <= 'b0 ;
       
        end
  end
////////////////////////////////

///prescale block
always @ (posedge clk_RX or negedge rst) 
    begin 
    if (!rst)
    begin 
        sample <= 'b0;
    end 
    else if (dat_samp_en )
      begin
      case (prescale) 
        'b1000:  begin 
                   sample [0] <= (edge_cnt==3)? RX_IN : sample[0] ; // would only take sample at edge_bit_cnt=3
                   sample [1] <= (edge_cnt==4)? RX_IN : sample[1] ; // would only take sample at edge_bit_cnt=4
                   sample [2] <= (edge_cnt==5)? RX_IN : sample[2] ; //would only take sample at edge_bit_cnt=5
               
        end

        'b1_0000:  begin 
                   sample [0] <= (edge_cnt==6)? RX_IN : sample[0] ; // would only take sample at edge_bit_cnt=7
                   sample [1] <= (edge_cnt==7)? RX_IN : sample[1] ; // would only take sample at edge_bit_cnt=8
                   sample [2] <= (edge_cnt==8)? RX_IN : sample[2] ; //would only take sample at edge_bit_cnt=9
                

        end
        'b10_0000: begin
                   sample [0] <= (edge_cnt==14)? RX_IN : sample[0] ; // would only take sample at edge_bit_cnt=15
                   sample [1] <= (edge_cnt==15)? RX_IN : sample[1] ; // would only take sample at edge_bit_cnt=16
                   sample [2] <= (edge_cnt==16)? RX_IN : sample[2] ; //would only take sample at edge_bit_cnt=17
              
        end
        default:   begin  /// let the defualt prescale is 4 for now 
                   sample [0] <= (edge_cnt==3)? RX_IN : sample[0] ; // would only take sample at edge_bit_cnt=3
                   sample [1] <= (edge_cnt==4)? RX_IN : sample[1] ; // would only take sample at edge_bit_cnt=4
                   sample [2] <= (edge_cnt==5)? RX_IN : sample[2] ; //would only take sample at edge_bit_cnt=5
                  
        end

      endcase
      end
    else 
      begin 
        sample <= 'b0; 
      end
    
  end 

 always @(*) 
 begin 
    case(prescale )
    'b1000: begin 
      take_sample = (edge_cnt ==6 || edge_cnt== 7 )? 1'b1 :1'b0 ;
    end 
    'b1_0000: begin
      take_sample = (edge_cnt==8 || edge_cnt == 9 )? 1'b1 :1'b0 ;
    end
    'b10_0000: begin
      take_sample = (edge_cnt==18 || edge_cnt ==19 )? 1'b1 :1'b0 ;
    end
    default: begin 
      take_sample = ( edge_cnt== 6 || edge_cnt == 7 )? 1'b1 :1'b0 ;
    end

    endcase



 end



endmodule