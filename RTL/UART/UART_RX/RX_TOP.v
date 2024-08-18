module UART_RX #(parameter DATAWIDTH =8) (
    input  wire      rst,
    input  wire      clk_RX,

    input   wire    RX_IN, 
    input   wire  [5:0]  prescale, 
    input   wire    PAR_EN, 
    input   wire    PAR_TYP, 

    output  wire  [DATAWIDTH-1:0]  P_DATA,

    output  wire Parity_Error,
    output  wire Stop_Error,
    output  wire DATA_VALID,
    output  wire str_glitch
);

//// internl signls
wire  [3:0] bit_cnt;
wire  [5:0] edge_cnt;


//////////////////////////////////////////////

RX_FSM U0_fsm (
    .rst(rst),
    .clk_RX(clk_RX),

    .RX_IN(RX_IN),
    .PAR_EN(PAR_EN),
    .bit_cnt(bit_cnt),

    .Parity_Error(Parity_Error),
    .Stop_Error(Stop_Error),
    .str_glitch(str_glitch),
    .take_sample(take_sample),
    .edge_cnt_max(edge_cnt_max),

    .par_chk_en(par_chk_en),
    .str_chk_en(str_chk_en),
    .stp_chk_en(stp_chk_en),

    .data_Valid(DATA_VALID),
    .deser_en(deser_en),
    .edge_cnt_enable(edge_cnt_enable),
    .dat_samp_en(dat_samp_en)

);


RX_parity_check #(.data_width(DATAWIDTH)) U1_parity_check(
    .clk_RX(clk_RX),
    .rst(rst),

    .P_DATA(P_DATA),
    .par_chk_en(par_chk_en),
    .sampled_bit(sampled_bit),
    .PAR_TYP (PAR_TYP),
    .Parity_Error (Parity_Error)
);

RX_str_check U2_str_check(
    .clk_RX(clk_RX),
    .rst(rst),

    .str_chk_en(str_chk_en),
    .sampled_bit(sampled_bit),

    .str_glitch(str_glitch)
);

RX_stp_chk U3_stp_chk(
    .clk_RX(clk_RX),
    .rst(rst),
    .stp_chk_en(stp_chk_en),
    .sampled_bit(sampled_bit),
    .Stop_Error(Stop_Error)
);

RX_deserializer #(.data_width(DATAWIDTH)) U4_deserializer(
    .clk_RX(clk_RX),
    .rst(rst),

    .sampled_bit(sampled_bit),
    .deser_en(deser_en),
    .take_sample(take_sample),
    .edge_cnt(edge_cnt),
    .edge_cnt_max(edge_cnt_max),

    .P_DATA(P_DATA)
);

RX_edge_bit_cnt U5_edge_bit_cnt(
    .clk_RX(clk_RX),
    .rst(rst),

    .prescale(prescale),
    .edge_cnt_enable(edge_cnt_enable),
    .PAR_EN(PAR_EN),

    .bit_cnt(bit_cnt),
    .edge_cnt(edge_cnt),
    .edge_cnt_max(edge_cnt_max)
);

RX_data_sampling U6_data_sampling(
    .clk_RX(clk_RX),
    .rst(rst),

    .RX_IN(RX_IN),
    .dat_samp_en(dat_samp_en),
    .edge_cnt(edge_cnt),
    .prescale(prescale),

    .sampled_bit(sampled_bit),
    .take_sample(take_sample)
);





endmodule
