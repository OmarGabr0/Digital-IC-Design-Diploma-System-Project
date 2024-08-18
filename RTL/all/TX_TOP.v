
module UART_TX #(parameter DATAWIDTH =8)(
    input wire CLK,RST,
    input wire [DATAWIDTH-1:0] P_DATA,
    input wire PAR_TYP,
    input wire DATA_VALID,
    input wire PAR_EN,

    output wire BUSY, 
    output wire TX_OUT
);
wire [2:0] MUX_SEL;
wire  SER_DATA;
wire SER_EN;
wire SER_DONE;
wire PAR_BIT;




TX_serializer  #(.datawidth(DATAWIDTH)) u0_serializer (
    .clk (CLK),
    .rst (RST),
    .p_data (P_DATA),
    .data_valid (DATA_VALID),
    .ser_en(SER_EN),
    .ser_done (SER_DONE),
    .ser_data(SER_DATA)
);

TX_parity #(.datawidth(DATAWIDTH)) u0_parity(
    .clk (CLK),
    .rst (RST),
    .p_data (P_DATA),
    .par_bit(PAR_BIT),
    .par_typ(PAR_TYP)
);

 TX_mux u0_mux (
    .clk (CLK),
    .rst (RST),
    .mux_sel(MUX_SEL),
    .ser_data (SER_DATA),
    .par_bit(PAR_BIT),
    .tx_out(TX_OUT)
 );

TX_fsm #(.datawidth(DATAWIDTH)) u0_fsm(
    .clk (CLK),
    .rst (RST),
    .data_valid (DATA_VALID),
    .mux_sel(MUX_SEL),
    .busy(BUSY),
    .ser_en(SER_EN),
    .ser_done (SER_DONE),
    .par_en(PAR_EN)
);

endmodule 
