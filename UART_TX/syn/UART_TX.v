/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Jul 24 06:50:41 2024
/////////////////////////////////////////////////////////////


module serializer ( clk, rst, p_data, data_valid, ser_en, ser_done, ser_data
 );
  input [7:0] p_data;
  input clk, rst, data_valid, ser_en;
  output ser_done, ser_data;
  wire   N12, N13, N14, N15, N19, N20, N21, N22, N23, N24, N25, N26, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [3:0] count;
  wire   [7:0] lfsr;

  DFFRX1M \count_reg[1]  ( .D(N13), .CK(clk), .RN(rst), .Q(count[1]) );
  DFFRX1M \count_reg[0]  ( .D(N12), .CK(clk), .RN(rst), .Q(count[0]) );
  DFFRX1M ser_data_reg ( .D(n11), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRX1M \count_reg[2]  ( .D(N14), .CK(clk), .RN(rst), .Q(count[2]), .QN(n3)
         );
  DFFRX1M \count_reg[3]  ( .D(N15), .CK(clk), .RN(rst), .Q(count[3]), .QN(n2)
         );
  DFFRQX2M ser_done_reg ( .D(n12), .CK(clk), .RN(rst), .Q(ser_done) );
  DFFRQX2M \lfsr_reg[7]  ( .D(N26), .CK(clk), .RN(rst), .Q(lfsr[7]) );
  DFFRQX2M \lfsr_reg[6]  ( .D(N25), .CK(clk), .RN(rst), .Q(lfsr[6]) );
  DFFRQX2M \lfsr_reg[5]  ( .D(N24), .CK(clk), .RN(rst), .Q(lfsr[5]) );
  DFFRQX2M \lfsr_reg[4]  ( .D(N23), .CK(clk), .RN(rst), .Q(lfsr[4]) );
  DFFRQX2M \lfsr_reg[3]  ( .D(N22), .CK(clk), .RN(rst), .Q(lfsr[3]) );
  DFFRQX2M \lfsr_reg[2]  ( .D(N21), .CK(clk), .RN(rst), .Q(lfsr[2]) );
  DFFRQX2M \lfsr_reg[1]  ( .D(N20), .CK(clk), .RN(rst), .Q(lfsr[1]) );
  DFFRQX2M \lfsr_reg[0]  ( .D(N19), .CK(clk), .RN(rst), .Q(lfsr[0]) );
  NAND2X2M U3 ( .A(ser_en), .B(n10), .Y(n4) );
  INVX4M U4 ( .A(n4), .Y(n1) );
  OAI32X1M U5 ( .A0(n3), .A1(count[3]), .A2(n6), .B0(n7), .B1(n2), .Y(N15) );
  AOI21BX2M U6 ( .A0(n1), .A1(n3), .B0N(n8), .Y(n7) );
  OR4X1M U7 ( .A(count[1]), .B(n2), .C(count[0]), .D(count[2]), .Y(n10) );
  NAND3X2M U8 ( .A(count[0]), .B(n1), .C(count[1]), .Y(n6) );
  AOI2BB1X2M U9 ( .A0N(count[1]), .A1N(n4), .B0(N12), .Y(n8) );
  NOR2X2M U10 ( .A(n4), .B(count[0]), .Y(N12) );
  AOI2B1X1M U11 ( .A1N(ser_done), .A0(n1), .B0(n13), .Y(n12) );
  BUFX4M U12 ( .A(n5), .Y(n13) );
  NOR2BX2M U13 ( .AN(data_valid), .B(ser_en), .Y(n5) );
  AO22X1M U14 ( .A0(p_data[6]), .A1(n13), .B0(lfsr[7]), .B1(n1), .Y(N25) );
  AO22X1M U15 ( .A0(p_data[2]), .A1(n13), .B0(lfsr[3]), .B1(n1), .Y(N21) );
  AO22X1M U16 ( .A0(p_data[3]), .A1(n13), .B0(lfsr[4]), .B1(n1), .Y(N22) );
  AO22X1M U17 ( .A0(p_data[1]), .A1(n13), .B0(lfsr[2]), .B1(n1), .Y(N20) );
  AO22X1M U18 ( .A0(p_data[5]), .A1(n13), .B0(lfsr[6]), .B1(n1), .Y(N24) );
  AO22X1M U19 ( .A0(p_data[0]), .A1(n13), .B0(lfsr[1]), .B1(n1), .Y(N19) );
  AO22X1M U20 ( .A0(p_data[4]), .A1(n13), .B0(lfsr[5]), .B1(n1), .Y(N23) );
  AND2X2M U21 ( .A(p_data[7]), .B(n13), .Y(N26) );
  OAI22X1M U22 ( .A0(n8), .A1(n3), .B0(count[2]), .B1(n6), .Y(N14) );
  NOR2X2M U23 ( .A(n9), .B(n4), .Y(N13) );
  XNOR2X2M U24 ( .A(count[0]), .B(count[1]), .Y(n9) );
  AO22X1M U25 ( .A0(lfsr[0]), .A1(n1), .B0(ser_data), .B1(n4), .Y(n11) );
endmodule


module parity ( p_data, clk, rst, par_typ, par_bit );
  input [7:0] p_data;
  input clk, rst, par_typ;
  output par_bit;
  wire   N5, n1, n2, n3, n4;

  DFFRQX2M par_bit_reg ( .D(N5), .CK(clk), .RN(rst), .Q(par_bit) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n4) );
  XOR3XLM U4 ( .A(n1), .B(par_typ), .C(n2), .Y(N5) );
  XOR3XLM U5 ( .A(p_data[1]), .B(p_data[0]), .C(n3), .Y(n2) );
  XOR3XLM U6 ( .A(p_data[5]), .B(p_data[4]), .C(n4), .Y(n1) );
  XNOR2X2M U7 ( .A(p_data[3]), .B(p_data[2]), .Y(n3) );
endmodule


module mux ( clk, rst, mux_sel, ser_data, par_bit, tx_out );
  input [2:0] mux_sel;
  input clk, rst, ser_data, par_bit;
  output tx_out;
  wire   n1, n2, n3, n4, n5, n6;

  DFFRHQX8M tx_out_reg ( .D(n6), .CK(clk), .RN(rst), .Q(tx_out) );
  INVX2M U3 ( .A(mux_sel[0]), .Y(n2) );
  AOI2B1X1M U4 ( .A1N(par_bit), .A0(mux_sel[1]), .B0(n2), .Y(n5) );
  AO21XLM U5 ( .A0(tx_out), .A1(mux_sel[2]), .B0(n3), .Y(n6) );
  OAI32X1M U6 ( .A0(n1), .A1(mux_sel[1]), .A2(mux_sel[0]), .B0(mux_sel[2]), 
        .B1(n4), .Y(n3) );
  INVX2M U7 ( .A(mux_sel[2]), .Y(n1) );
  AOI31XLM U8 ( .A0(mux_sel[1]), .A1(n2), .A2(ser_data), .B0(n5), .Y(n4) );
endmodule


module fsm ( clk, rst, data_valid, par_en, ser_done, ser_en, busy, mux_sel );
  output [2:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   n9, n2, n3, n4, n5, n6, n7, n8;
  wire   [2:0] current;
  wire   [2:0] next;

  AOI211X4M U7 ( .A0(ser_done), .A1(n6), .B0(n7), .C0(n4), .Y(mux_sel[1]) );
  DFFRX1M \current_reg[0]  ( .D(mux_sel[0]), .CK(clk), .RN(rst), .Q(current[0]), .QN(n5) );
  DFFRX1M \current_reg[1]  ( .D(next[1]), .CK(clk), .RN(rst), .Q(current[1]), 
        .QN(n4) );
  DFFSX2M \current_reg[2]  ( .D(next[2]), .CK(clk), .SN(rst), .Q(current[2]), 
        .QN(n3) );
  AOI21X1M U3 ( .A0(n4), .A1(n5), .B0(current[2]), .Y(n9) );
  OAI222X1M U4 ( .A0(data_valid), .A1(n2), .B0(n5), .B1(n3), .C0(n4), .C1(n3), 
        .Y(next[2]) );
  OAI21X3M U5 ( .A0(current[1]), .A1(n5), .B0(n3), .Y(mux_sel[2]) );
  NAND2X1M U6 ( .A(n5), .B(n3), .Y(n7) );
  CLKBUFX8M U8 ( .A(n9), .Y(busy) );
  AOI21X2M U9 ( .A0(current[1]), .A1(ser_done), .B0(n7), .Y(ser_en) );
  OAI21BX1M U10 ( .A0(n7), .A1(n6), .B0N(ser_en), .Y(next[1]) );
  INVX2M U11 ( .A(par_en), .Y(n6) );
  INVX2M U12 ( .A(mux_sel[2]), .Y(n2) );
  INVX2M U13 ( .A(n8), .Y(mux_sel[0]) );
  OAI211X2M U14 ( .A0(current[0]), .A1(ser_done), .B0(n3), .C0(current[1]), 
        .Y(n8) );
endmodule


module UART_TX ( CLK, RST, P_DATA, PAR_TYP, DATA_VALID, PAR_EN, BUSY, TX_OUT
 );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, DATA_VALID, PAR_EN;
  output BUSY, TX_OUT;
  wire   SER_EN, SER_DONE, SER_DATA, PAR_BIT;
  wire   [2:0] MUX_SEL;

  serializer u0 ( .clk(CLK), .rst(RST), .p_data(P_DATA), .data_valid(
        DATA_VALID), .ser_en(SER_EN), .ser_done(SER_DONE), .ser_data(SER_DATA)
         );
  parity U1 ( .p_data(P_DATA), .clk(CLK), .rst(RST), .par_typ(PAR_TYP), 
        .par_bit(PAR_BIT) );
  mux U2 ( .clk(CLK), .rst(RST), .mux_sel(MUX_SEL), .ser_data(SER_DATA), 
        .par_bit(PAR_BIT), .tx_out(TX_OUT) );
  fsm u3 ( .clk(CLK), .rst(RST), .data_valid(DATA_VALID), .par_en(PAR_EN), 
        .ser_done(SER_DONE), .ser_en(SER_EN), .busy(BUSY), .mux_sel(MUX_SEL)
         );
endmodule

