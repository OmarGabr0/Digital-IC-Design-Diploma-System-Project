
module REG_FILE #(parameter data_width= 8, depth = 16 , addr = 4) (

    input  wire                             WrEn,RdEn,
    input  wire                             clk,rst,
    input  wire  [addr-1:0]                 Address,
    input  wire  [data_width-1:0]           WrData,  

    output reg   [data_width-1:0]           RdData,
    output reg                              RdData_VLD,
    output wire [data_width-1:0]            REG0,REG1,REG2,REG3 

);
///////////////////////////////////////////////////////
    integer i ;
    // 2D Array
    reg [data_width-1 :0] reg_file [depth- 1:0];        
//////////////////////////////////////////////////////

always @ (posedge clk or negedge rst) 
  begin
      if (!rst)
      begin
        RdData <='b0; 
        RdData_VLD <='b0;
        for (i = 0; i <= depth -1 ; i=i+1)
        begin
          if (i==2)
          reg_file [i] <= 'b100000_01;
          else if (i==3)
          reg_file[i] <= 'b0010_0000 ;
          else 
          reg_file[i] <='b0;
        end
      end 
      
      else if ( WrEn && !RdEn ) 
		  begin
          reg_file[Address] <= WrData;
		  end

		else if (RdEn && !WrEn)
      begin
          RdData <= reg_file[Address]; 
          RdData_VLD <= 'b1 ;
      end 
      else
      RdData_VLD <= 'b0; 
  end

assign REG0 = reg_file [0]; 
assign REG1 = reg_file [1];
assign REG2 = reg_file [2];
assign REG3 = reg_file [3];


endmodule
