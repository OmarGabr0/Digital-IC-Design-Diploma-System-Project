module fsm # (parameter datawidth=8)
(
    input wire clk,rst,
    input wire data_valid,
    input wire  par_en,
    input wire ser_done,

   
    output reg ser_en,
    output reg busy,
  output reg [2:0] mux_sel

);
reg [2:0] next,current;

localparam [2:0]  idle=3'b100,
            start_bit=3'b00,
            stop_bit=3'b01,
            ser_data=3'b10,
            par_bit=3'b11;


always @ (posedge clk or negedge rst)
begin 
if(!rst)
current<=idle;
else 
current<=next;
end

/// next state logic
always @(*) 
begin 
case (current)
idle:    if(data_valid)
            begin 
               next=start_bit;
            end
            else 
            next = idle;
start_bit: next=ser_data;

ser_data: begin 
        if (ser_done && par_en) 
        next=par_bit;
        else if(ser_done&&!par_en)
        next=stop_bit;
        else 
        next=ser_data;
end

par_bit:begin 
     next=stop_bit;
end

stop_bit: begin 
        if(data_valid)
        next=start_bit;
        else
        next=idle;
end
 default:next= idle;
 
endcase
end

/// current state logic 
always @(*)
begin 
        
case(current)
idle :begin 
      busy='b0;
      ser_en='b0;
      mux_sel=3'b100;
     

end
start_bit: begin 
        busy='b0;
        mux_sel=3'b0;
        ser_en='b1;
        
end

ser_data:  begin 
             busy=1'b1;
            mux_sel=3'b10;
            ser_en=1'b1;
            if(ser_done)
            begin
                ser_en=1'b0;
                if(par_en)
                mux_sel=3'b11;
                else 
                mux_sel=3'b1;
            end      
end

par_bit:begin 
        mux_sel=3'b1;
        busy=1'b1;
        ser_en=1'b0;
end

stop_bit: begin 
       ser_en=1'b0;
        busy=1'b1;
        mux_sel=3'b100;
end

default:begin
      busy='b0;
      ser_en=1'b0;
      mux_sel=3'b100;
end

endcase
end 


endmodule