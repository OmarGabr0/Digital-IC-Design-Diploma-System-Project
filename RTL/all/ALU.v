module ALU # (parameter data_width = 8 , alu_fun=4, out_width=2*data_width) (
input wire [data_width-1:0] A, B,
input wire [alu_fun-1:0] ALU_FUN,
input wire clk,
output reg [out_width-1:0] ALU_OUT,
// added for system integration
input wire                 EN,
input wire                 rst, 
output reg                 OUT_VALID

//output wire Arith_Flag,Logical_Flag,CMP_Flag,Shift_Flag
);

//// internal wires 

reg [out_width-1:0] ALU_OUT_cmp ;
reg OUT_VALID_cmp;

//////////////////////////////
always @ (*)
begin
    if(!EN)
    begin 
    ALU_OUT_cmp='b0;
    OUT_VALID_cmp='b0;
    end
    else
    begin
        OUT_VALID_cmp='b1; 

        case (ALU_FUN)

        //Atriithmatic
        4'b0000: ALU_OUT_cmp = A+B;
        4'b0001: ALU_OUT_cmp = A-B;
        4'b0010: ALU_OUT_cmp = A*B;
        4'b0011: ALU_OUT_cmp = A/B;
        //Logical
        4'b0100: ALU_OUT_cmp = A&B;
        4'b0101: ALU_OUT_cmp = A|B;
        4'b0110: ALU_OUT_cmp = ~(A&B);
        4'b0111: ALU_OUT_cmp = ~(A|B);
        4'b1000: ALU_OUT_cmp = A^B;
        4'b1001: ALU_OUT_cmp = ~(A^B);

        //CMP
        4'b1010: ALU_OUT_cmp = A==B? 1:0 ;
        4'b1011: ALU_OUT_cmp = A>B? 2:0;
        4'b1100: ALU_OUT_cmp = A<B? 3:0;
        
        //Shift
        4'b1101: ALU_OUT_cmp = A>>1;
        4'b1110: ALU_OUT_cmp = A<<1;
        
        default
        ALU_OUT_cmp = 'b0;
        endcase
    end
end
/*
// flags
 assign Arith_Flag= ~(|ALU_FUN[3:2])  ;
 assign Logical_Flag =(~ALU_FUN[3] & ALU_FUN[2])| (ALU_FUN[3] & ~ALU_FUN [2]& ~ALU_FUN[1]);
 assign CMP_Flag =(~ALU_FUN[2] & ALU_FUN[3]&ALU_FUN[1])| (ALU_FUN[3]&ALU_FUN[2]& ~ALU_FUN[1] &~ALU_FUN[0]);
 assign Shift_Flag = ^ALU_FUN[3:0] & (&ALU_FUN [3:2]);
 */

 always @ (posedge clk or negedge rst )
   begin 
    if (!rst) 
      begin 
        ALU_OUT <= 'b0;
        OUT_VALID <='b0;
      end
    else
      begin 
        ALU_OUT <= ALU_OUT_cmp;
        OUT_VALID <= OUT_VALID_cmp; 
      end
   end
endmodule