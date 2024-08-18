
module TX_mux (
    input wire clk,rst,

    input wire [2:0] mux_sel,
   
    input wire ser_data,
    input wire par_bit,
    
    output reg tx_out

);

always @ (posedge clk or negedge rst)
begin 
    if (!rst )
    tx_out <= 1'b0;
    else 
   begin
    case(mux_sel)
        3'b000: tx_out <= 1'b0;            //0
        3'b001: tx_out <= 1'b1;            //1
        3'b010: tx_out <= ser_data;        //2
        3'b011: tx_out <= par_bit;         //3
        3'b100: tx_out <= 1'b1;            //4
    endcase
   end
end


endmodule