module sys_ctrl #(parameter data_width=8,addr=4) ( 
    
    input wire clk,
    input wire rst,
    
    input wire [15:0]              ALU_OUT,   // from ALU
    input wire                     OUT_VALID, // from ALU
    
    input wire                     FIFO_FULL,  // from FIFO
    input wire                     pulse_en,   // RX_D_VLD  --> from data sync
    input wire  [data_width-1:0]   cmd,        // RX_P_DATA --> from data  sync

    input wire [data_width-1:0]    RdData,       // from REG FILE
    input wire                     RdData_Valid, // FROM REG FILE 

    output reg                     WrEn,   // regfile
    output reg                     RdEn,   // reg file
    output reg [data_width-1:0]    Wr_D,   // reg file

    output reg [3:0]               ALU_FUN, // reg file
    output reg                     ALU_EN,
    output reg                     CLK_EN,
    output reg                    CLKDIV_EN, 
    output reg [addr-1:0]          Address, // fto TEG FILE 
    
    
  
    output reg                     WR_INC,  //to FIFO 
    output reg [data_width-1:0]    WrData  // to FIFO 

);


//////////////////////////////////////
////////////////////////////////////
//internal wires

reg addr_en;
reg [addr-1 : 0] Address_comp;
// states
reg           [3:0]    next,current;
// internal parameters
localparam  [data_width-1:0] write_cmd ='hAA,
                             read_cmd='hBB,
                             ALU_OPER_W_OP_CMD= 'hCC,
                             ALU_OPER_W_NOP_CMD= 'hDD;

localparam   [3:0]   idle = 'b0000,
                     wr_cmd = 'b0001,
                     wr_addr= 'b0011,
                     wr_data= 'b0010,

                     rd_cmd= 'b0110,
                     rd_data= 'b0100,

                     alu_w_op='b0101,
                     Wr_A= 'b1101,
                     Wr_B= 'b1100,
                    
                     Alu_fun='b1000,
                     toggle_inc='b1001,
                     Alu_w_2='b1011,
                     alu_wout_op='b1010,
                     cont='b0111,
                     embty_state1= 'b1110,
                     embty_state2= 'b1111;

///////////////////////////////////


//sequential block 
always @ (posedge clk or negedge rst)
begin
  if(!rst)
    begin 
        current <=idle ;
    end
    else 
        current <=  next;  
end

//next state logic 
always @ (*)
begin 
    case(current)
    idle:   begin 
        if(cmd == write_cmd )
            next =wr_cmd;
        else if (cmd == read_cmd  )
            next = rd_cmd;
        else if ( cmd == ALU_OPER_W_OP_CMD)
            next = alu_w_op;
        else if (cmd == ALU_OPER_W_NOP_CMD)
            next = alu_wout_op ;
        else
            next = idle ; 
    end

    wr_cmd: begin 
        if(pulse_en)
        begin
        next=wr_addr;
        end
        else 
        begin 
        next=wr_cmd;
        end
    end
    
    wr_addr: begin 
        if(pulse_en)
        begin 
            next=wr_data;
        end
        else 
        begin 
            next= wr_addr;
        end
    end

    wr_data: begin 
        if(pulse_en )
        begin 
            next = idle;
        end
        else
        begin 
            next = wr_data; 
        end
    end

    rd_cmd: begin 
        if(pulse_en ) 
        begin 
            next=rd_data;
        end
        else 
        begin 
            next = rd_cmd ; 
        end
    end
    rd_data: begin 
        if(pulse_en && !FIFO_FULL)
        begin 
            next=idle;
        end
        else
        begin 
            next= rd_data;
        end
    end 
    /// ALU_W_OP///
    alu_w_op: begin 
        if(pulse_en) begin 
            next  = Wr_A;
        end
        else begin 
            next =alu_w_op ;
        end
    end
    Wr_A:   begin 
        next = embty_state1;
    end 
    embty_state1 : begin 
        if(pulse_en)
        next=Wr_B;
        else
        next=embty_state1;
    end

    Wr_B: begin 
        next = embty_state2;
    end

    embty_state2: begin 
        if (pulse_en)
        next =  Alu_fun;
        else
        next= embty_state2;
    end

    alu_wout_op: begin 
               if(pulse_en)
               next=Alu_fun;
               else
               next= alu_wout_op;
    end
    Alu_fun :   begin 
              if(OUT_VALID)
              next = toggle_inc ;
              else 
              next =Alu_fun; 
    end 

   
    toggle_inc: begin 
        
         next = Alu_w_2;
    end
   
    Alu_w_2:   begin  
        next = cont;
    end	
    cont:     begin 
	next =  idle;
    end

    default: begin 
  	next = idle ;  
    end
    endcase
end



//output logic
always @(*) 
begin 
    ALU_EN='b0;
    ALU_FUN='b0;
    CLK_EN='b1;
    Address_comp='b0;
    WrEn='b0;
    RdEn='b0;
    WrData='b0;
    WR_INC='b0; 
    Wr_D='b0;
    CLKDIV_EN='b1;
    addr_en='b0;
    

case (current)
        ///write operation /// 
    wr_cmd:  begin
        WrEn='b0;
    end  
    wr_addr: begin 
        Address_comp= cmd;
        addr_en='b1;

        WrEn = 'b0;         //*** if failed, make WrEn =1 ***//
    end
    wr_data: begin 
        if(!pulse_en)
        begin
        Wr_D=cmd;
        WrEn='b1;
        end
        
    end
    
        //read operation//
    rd_cmd: begin
        RdEn='b0;
    end
    rd_data: begin
        Address_comp= cmd;
        addr_en='b1;

        RdEn='b1;

        if (RdData_Valid && !FIFO_FULL)  begin 
            WrData = RdData;
            WR_INC='b1;
        end
        //else begin 
        //    WR_INC= 'b0;
        //end
    end
 
      /// ALU_W_OP///

        alu_w_op: begin 
        Address_comp ='b0;
        addr_en='b1;
        end
        Wr_A: begin 
        addr_en='b1;
        Wr_D=cmd; 
        Address_comp='b0;
        WrEn='b1;
        end
        embty_state1: begin 
            Address_comp='b1;
             addr_en='b1;
        end
        Wr_B: begin 
        Address_comp ='b1;
        addr_en='b1;
        Wr_D=cmd;
        WrEn='b1;
        WR_INC='b0;
        end
      
        /*alu_wout_op: begin 

         end */ 

        Alu_fun: begin 
        CLK_EN='b1;
        ALU_EN='b1;
        ALU_FUN=cmd;
         WR_INC='b0;
        if (OUT_VALID) begin  
            WrData = ALU_OUT[7:0];
            WR_INC='b1;
        end
        end

        toggle_inc:  begin 
        CLK_EN='b1;
        ALU_EN='b1;
        WrData = ALU_OUT[7:0];
        ALU_FUN=cmd;
        WR_INC='b0;
        end

        Alu_w_2: begin 
        CLK_EN='b1;
        ALU_EN='b1;
        ALU_FUN=cmd;
        WR_INC='b1;
        WrData = ALU_OUT[15:8];
        end
        cont: begin 
            WrData = ALU_OUT[15:8];
            CLK_EN='b1;
            ALU_EN='b1;
            ALU_FUN=cmd;
        end

        default : begin 
            ALU_EN='b0;
            ALU_FUN='b0;
            CLK_EN='b1;
            Address_comp='b0;
            WrEn='b0;
            RdEn='b0;
            WrData='b0;
            WR_INC='b0; 
            Wr_D='b0;
            CLKDIV_EN='b1;   
            addr_en='b0;     
        end 
endcase
end



/// address flip flop 
always @ (posedge clk or negedge rst)
begin 
    if(!rst)
    begin 
        Address <= 'b0;
    end 
    else if(addr_en && !pulse_en) 
    begin
    Address <= Address_comp;
    end
    else 
    begin 
    Address<= Address;
    end
end  
 

endmodule
