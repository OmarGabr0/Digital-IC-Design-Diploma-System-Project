module RX_FSM (

    input   wire         rst,
    input   wire         clk_RX,
    //input to FSM
    input   wire           RX_IN ,
    input   wire           PAR_EN ,
    input   wire    [3:0]  bit_cnt ,
    //input   wire        edg_cnt,
   
    input   wire        Parity_Error ,
    input   wire        Stop_Error ,
    input   wire        str_glitch,
    input   wire        take_sample,
    input   wire        edge_cnt_max,

  



    output  reg         par_chk_en,
    output  reg         str_chk_en,
    output  reg         stp_chk_en,

    output  reg         data_Valid,
    output  reg         deser_en,
    output  reg         edge_cnt_enable,
    output  reg         dat_samp_en

);

//// parameters and internal signals

reg [2:0]   current_state, next_state;

localparam      [2:0]   idle = 'b000,
                        startbit = 'b001, 
                        deserializer = 'b011,
                        parity = 'b010 ,
                        stop = 'b100,
                        data = 'b101;
                       

////////////////////////////////////

/// state tansition 
always @ (posedge clk_RX or negedge rst )
  begin 
    if (!rst)
    current_state <= idle;
    else 
    current_state <= next_state; 
  end
////////////////////////////////////


/// next state logic 

always @ (*)
  begin
    case( current_state )
    idle  :     begin 
                if (!RX_IN && bit_cnt == 0 )     
                begin 
                next_state = startbit;
                end
                else 
                begin
                next_state = idle;
                end
    end 

    startbit : begin
                if  (bit_cnt == 1)
                begin
                   if(!str_glitch)
                    next_state = deserializer;
                    else
                    next_state = idle ; 
                end
                else
                begin
                next_state = startbit ;
                end
    end  
    deserializer : begin 
                if (bit_cnt=='d9)
                begin
                  if ( PAR_EN== 'd1 )
                   next_state = parity ;
                   else 
                   next_state = stop;
                end
                else 
                begin
                next_state = deserializer;
                end
    end
    parity: begin 
                if( bit_cnt == 'd9 && edge_cnt_max  )
                begin
                  if (!Parity_Error)
                  begin
                   next_state = stop ;
                  end
                  else 
                  begin
                    next_state = idle ;
                  end
                end
                else
                next_state = parity;
    end
    stop: begin 
                if((bit_cnt == 'd9 && !PAR_EN && edge_cnt_max ) || ( bit_cnt == 'd10 && PAR_EN && edge_cnt_max) )
                begin
                  if(!Stop_Error && RX_IN)
                  begin
                  next_state = data;
                  end
                  else if (!RX_IN && Stop_Error)
                  begin
                   next_state = startbit;
                  end
                  else 
                  begin 
                    next_state = idle;
                end
                end
                else
                next_state = stop;
    end 
    data : begin 
      if (!RX_IN  && edge_cnt_max)
      next_state = startbit;
      else 
      next_state = idle;
    end
    

 default : begin 
    next_state = idle;
            end

    endcase
  end
  ////////////////////////////////////

  /// output logic  
 always @ (*) 
   begin 

                par_chk_en='b0;
                str_chk_en='b0;
                stp_chk_en='b0;
                data_Valid='b0;
                deser_en='b0;
                edge_cnt_enable='b1;
                dat_samp_en='b1;

    case (current_state)
    idle  :     begin 
      if (!RX_IN)
        begin
          dat_samp_en='b1;
          edge_cnt_enable='b1;
        end
      else
       begin        
                par_chk_en='b0;
                str_chk_en='b0;
                stp_chk_en='b0;
                data_Valid='b0;
                deser_en='b0;
                edge_cnt_enable='b0;
                dat_samp_en='b0;
       end
    end

    startbit:  begin
           if( take_sample) 
            begin
            str_chk_en= 'd1 ; 
            end
            else 
            begin 
            str_chk_en='b0; 
            end
    end

    deserializer: begin 
           
            if(bit_cnt=='d9)
            begin
            deser_en='b0;
            end
            else
            begin
            deser_en='b1;
            end
    end

    parity : begin 
      if(take_sample )
      begin
      par_chk_en='b1;
      end
      else
      begin
       par_chk_en='b0;
      end
    end

    stop: begin
      if(take_sample) 
      begin
      stp_chk_en=1'b1; 
      end
      else if ((bit_cnt == 'd9 && !PAR_EN && edge_cnt_max ) || ( bit_cnt == 'd10 && PAR_EN && edge_cnt_max) )
      begin
      stp_chk_en= 1'd0;
      data_Valid='b1; 
      end  
      else
      stp_chk_en= 1'b0;

    end

    data: begin  // bit_cnt = 10 in case of PAR_EN = 0 , bit_cnt = 11 in case of PAR_EN =1 
     
      if(!RX_IN)
      begin
        data_Valid = 'b1 ;
        edge_cnt_enable='b1;
      end
      else
      begin
         data_Valid = 'b1 ;
         edge_cnt_enable='b0;
      end
     

    end
default : begin 
                par_chk_en='b0;
                str_chk_en='b0;
                stp_chk_en='b0;
                data_Valid='b0;
                deser_en='b0;
                edge_cnt_enable='b1;
                dat_samp_en='b1;
    end

    endcase 
   end
  ////////////////////////////////////


endmodule




                

 