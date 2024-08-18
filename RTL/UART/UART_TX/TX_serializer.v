

module TX_serializer #(parameter datawidth =8)

(                 
    input wire                 clk,
    input wire                 rst,

    input wire [datawidth-1:0] p_data,
    input wire                 data_valid,
    input wire                 ser_en,

    output reg                ser_done,
    output reg                  ser_data

);

reg [datawidth-1:0] lfsr;
reg [3:0] count;
wire countmax;

// counter block
assign countmax= (count =='d8)? 1:0;

always @ (posedge clk or negedge rst)
begin
if (!rst)
 count <='b0;
 
  else if (ser_en && !countmax)
  begin 
         count<=count+1'b1;
  end
 else 
 count<='b0;
 

end



// sequintial block

always @(posedge clk or negedge rst)
begin 
    if (!rst)
    
    begin
        lfsr <='b0; 
        ser_done<='b0;  
        ser_data<='b0;

    end
    
    else if (data_valid&&!ser_en )
    
    begin
    lfsr<=p_data;
    ser_done<='b0;
    end
    
    else if(ser_en && !countmax)
    
    begin
        ser_data<=lfsr[0];
        lfsr[0]<=lfsr[1];
        lfsr[1]<=lfsr[2];
        lfsr[2]<=lfsr[3];
        lfsr[3]<=lfsr[4];
        lfsr[4]<=lfsr[5];
        lfsr[5]<=lfsr[6];
        lfsr[6]<=lfsr[7];
        lfsr[7]<=1'b0;
        
    end

    else 
    
    begin
    ser_done<=1'b1;
    lfsr<='b0;
    end

end


endmodule