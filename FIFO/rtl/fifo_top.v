module fifo_top #(parameter data_width = 8,FIFO_DEPTH=53  ) (
    input wire W_CLK ,
    input wire W_RST,
    input wire W_INC,

    input wire R_CLK,
    input wire R_RST,
    input wire R_INC,

    input wire [data_width-1:0] WR_DATA , 

    output wire FULL ,
    output wire [data_width-1:0] RD_DATA,
    output wire EMPTY
);

//// intenral 
wire WCLKEN;
wire full;

wire [2:0] waddr;
wire [3:0] ASYNC_GRAY_WR_PTR;
wire [3:0] SYNC_GRAY_WR_PTR;

wire [3:0] ASYNC_GRAY_RD_PTR;
wire [3:0] SYNC_GRAY_RD_PTR;


wire [2:0] RADDR;




//////////////////////////

assign WCLKEN = W_INC & !FULL ;
assign FULL = full ;

fifo_wr u0_FIFO_WR (
.winc(W_INC),
.wclk(W_CLK),
.wrst_n(W_RST),
.gray_rd_ptr(SYNC_GRAY_RD_PTR),

.gray_wr_ptr(ASYNC_GRAY_WR_PTR),
.w_addr(waddr),
.wfull(full)


);

fifo_rd u0_FIFO_RD(
    .rinc(R_INC),
    .rclk(R_CLK),
    .rrst_n(R_RST),
    .gray_wr_ptr(SYNC_GRAY_WR_PTR),

    .raddr(RADDR),
    .gray_rd_ptr(ASYNC_GRAY_RD_PTR),
    .empty(EMPTY)
);

fifo_mem  #(.DATA(data_width), .DEPTH(FIFO_DEPTH)) u0_FIFO_MEMORY (
    .wclk(W_CLK),
    .wrst_n(W_RST),
    .wclken(WCLKEN),
    .waddr(waddr),
    .raddr(RADDR),
    .wdata(WR_DATA),
    .rdata(RD_DATA)
);


// generate bit_sync for width =6 r2w 

genvar i ;
generate 
 for (i=0 ; i<=3;i=i+1)
 begin 
    bitsync r2w (.ASYNC(ASYNC_GRAY_RD_PTR[i]),
                .RST(W_RST),
                .CLK(W_CLK),
                .SYNC(SYNC_GRAY_RD_PTR[i]));
 end

endgenerate
// generate bit_sync for width =6 w2r
genvar n ;
generate 
 for (n=0 ; n<=3;n=n+1)
 begin 
    bitsync w2r (.ASYNC(ASYNC_GRAY_WR_PTR[n]),
                .RST(R_RST),
                .CLK(R_CLK),
                .SYNC(SYNC_GRAY_WR_PTR[n]));
 end

endgenerate
////////////////////////////////

endmodule
