module parity #(parameter datawidth=8) (
    input wire [datawidth-1:0] p_data ,
    input wire clk,rst,
    input wire par_typ,
    

    output reg par_bit
);

always @ (posedge clk or negedge rst)
begin 

if (!rst )
par_bit <=0;
else if (par_typ==0)
par_bit<= ~^p_data;
else if (par_typ==1)
par_bit<=^p_data;

end 


endmodule