module DATA_SYNC #(parameter BUS_WIDTH=8 ,NUM_STAGES = 2 )
(
   input wire [BUS_WIDTH-1:0]  unsync_bus,
   input wire bus_enable,
   input wire clk,rst,
   
 
   output reg enable_pulse,
   output reg [BUS_WIDTH-1:0] sync_bus
);

// internal signals
reg [NUM_STAGES-1:0] sync_ff;
integer i;
wire pulse_gen_cmp;
/////////////////////////////////////


// sequential block 
always @ (posedge clk or negedge rst)
  begin 
    if (!rst)
      begin 
        sync_ff <= 'b0;
        enable_pulse<='b0;
      end
    
    else 

      begin 
        sync_ff[0] <= bus_enable;
        for (i=1; i<=NUM_STAGES -1 ; i=i+1)
          begin 
           sync_ff[i]<=sync_ff[i-1];
          end
	enable_pulse <= pulse_gen_cmp;
      end

  end
//////////////////////////////////////////

// sequential block for sync_bus 

always @ (posedge clk or negedge rst)
  begin 
    if(!rst)
    begin 
      sync_bus <='b0;
    end
    else 
    begin 
      if (pulse_gen_cmp)
      begin 
        sync_bus<=unsync_bus;
      end  
      else 
      begin 
        sync_bus <= sync_bus;
      end
    end

  end

//////////////////////
assign pulse_gen_cmp = ((!sync_ff[NUM_STAGES-1]) && (sync_ff[NUM_STAGES-2])) ;
endmodule 
