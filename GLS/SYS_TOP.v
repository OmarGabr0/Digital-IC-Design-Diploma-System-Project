module SYS_TOP (
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	UART_TX_O, 
	framing_error, 
	str_glitch, 
	parity_error);
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   output UART_TX_O;
   output framing_error;
   output str_glitch;
   output parity_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire REF_SCAN_CLK__L3_N5;
   wire REF_SCAN_CLK__L3_N4;
   wire REF_SCAN_CLK__L3_N3;
   wire REF_SCAN_CLK__L3_N2;
   wire REF_SCAN_CLK__L3_N1;
   wire REF_SCAN_CLK__L3_N0;
   wire REF_SCAN_CLK__L2_N1;
   wire REF_SCAN_CLK__L2_N0;
   wire REF_SCAN_CLK__L1_N0;
   wire ALU_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire UART_SCAN_CLK__L9_N0;
   wire UART_SCAN_CLK__L8_N0;
   wire UART_SCAN_CLK__L7_N0;
   wire UART_SCAN_CLK__L6_N0;
   wire UART_SCAN_CLK__L5_N0;
   wire UART_SCAN_CLK__L4_N1;
   wire UART_SCAN_CLK__L4_N0;
   wire UART_SCAN_CLK__L3_N1;
   wire UART_SCAN_CLK__L3_N0;
   wire UART_SCAN_CLK__L2_N0;
   wire UART_SCAN_CLK__L1_N0;
   wire UART_TX_SCAN_CLK__L1_N0;
   wire UART_RX_CLK__L1_N0;
   wire UART_RX_SCAN_CLK__L1_N0;
   wire FE_OFN26_SYNC_UART_SCAN_RST;
   wire FE_OFN25_SYNC_REF_SCAN_RST;
   wire FE_OFN24_SYNC_REF_SCAN_RST;
   wire FE_OFN23_SYNC_REF_SCAN_RST;
   wire FE_OFN22_SYNC_REF_SCAN_RST;
   wire FE_OFN10_SE;
   wire FE_OFN9_SE;
   wire FE_OFN8_SE;
   wire FE_OFN7_SE;
   wire FE_OFN6_SE;
   wire FE_OFN5_SE;
   wire REF_SCAN_CLK;
   wire UART_SCAN_CLK;
   wire UART_RX_CLK;
   wire UART_RX_SCAN_CLK;
   wire UART_TX_CLK;
   wire UART_TX_SCAN_CLK;
   wire RSTN_SCAN_RST;
   wire SYNC_REF_RST;
   wire SYNC_REF_SCAN_RST;
   wire SYNC_UART_RST;
   wire SYNC_UART_SCAN_RST;
   wire UART_RX_V_OUT;
   wire UART_RX_V_SYNC;
   wire WrInc_Pulse;
   wire UART_TX_Busy_PULSE;
   wire FIFO_FULL;
   wire UART_TX_V_SYNC;
   wire UART_TX_Busy;
   wire WrInc_SYS;
   wire RF_RdData_VLD;
   wire RF_WrEn;
   wire RF_RdEn;
   wire ALU_EN;
   wire ALU_OUT_VLD;
   wire ALU_CLK;
   wire n4;
   wire n5;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n23;
   wire n24;
   wire n25;
   wire n28;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_SYNC;
   wire [7:0] UART_TX_IN;
   wire [7:0] UART_TX_SYNC;
   wire [7:0] DIV_RATIO;
   wire [7:0] UART_Config;
   wire [7:0] DIV_RATIO_RX;
   wire [7:0] RF_RdData;
   wire [3:0] RF_Address;
   wire [7:0] RF_WrData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX20M REF_SCAN_CLK__L3_I5 (.Y(REF_SCAN_CLK__L3_N5), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX20M REF_SCAN_CLK__L3_I4 (.Y(REF_SCAN_CLK__L3_N4), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX20M REF_SCAN_CLK__L3_I3 (.Y(REF_SCAN_CLK__L3_N3), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX20M REF_SCAN_CLK__L3_I2 (.Y(REF_SCAN_CLK__L3_N2), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX20M REF_SCAN_CLK__L3_I1 (.Y(REF_SCAN_CLK__L3_N1), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX20M REF_SCAN_CLK__L3_I0 (.Y(REF_SCAN_CLK__L3_N0), 
	.A(REF_SCAN_CLK__L2_N0));
   CLKINVX24M REF_SCAN_CLK__L2_I1 (.Y(REF_SCAN_CLK__L2_N1), 
	.A(REF_SCAN_CLK__L1_N0));
   CLKBUFX40M REF_SCAN_CLK__L2_I0 (.Y(REF_SCAN_CLK__L2_N0), 
	.A(REF_SCAN_CLK__L1_N0));
   CLKINVX8M REF_SCAN_CLK__L1_I0 (.Y(REF_SCAN_CLK__L1_N0), 
	.A(REF_SCAN_CLK));
   CLKBUFX40M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKBUFX40M UART_SCAN_CLK__L9_I0 (.Y(UART_SCAN_CLK__L9_N0), 
	.A(UART_SCAN_CLK__L8_N0));
   CLKINVX2M UART_SCAN_CLK__L8_I0 (.Y(UART_SCAN_CLK__L8_N0), 
	.A(UART_SCAN_CLK__L7_N0));
   CLKINVX2M UART_SCAN_CLK__L7_I0 (.Y(UART_SCAN_CLK__L7_N0), 
	.A(UART_SCAN_CLK__L6_N0));
   CLKINVX2M UART_SCAN_CLK__L6_I0 (.Y(UART_SCAN_CLK__L6_N0), 
	.A(UART_SCAN_CLK__L5_N0));
   CLKINVX2M UART_SCAN_CLK__L5_I0 (.Y(UART_SCAN_CLK__L5_N0), 
	.A(UART_SCAN_CLK__L4_N1));
   CLKINVX2M UART_SCAN_CLK__L4_I1 (.Y(UART_SCAN_CLK__L4_N1), 
	.A(UART_SCAN_CLK__L3_N1));
   CLKBUFX40M UART_SCAN_CLK__L4_I0 (.Y(UART_SCAN_CLK__L4_N0), 
	.A(UART_SCAN_CLK__L3_N0));
   CLKINVX2M UART_SCAN_CLK__L3_I1 (.Y(UART_SCAN_CLK__L3_N1), 
	.A(UART_SCAN_CLK__L2_N0));
   CLKBUFX40M UART_SCAN_CLK__L3_I0 (.Y(UART_SCAN_CLK__L3_N0), 
	.A(UART_SCAN_CLK__L2_N0));
   CLKBUFX40M UART_SCAN_CLK__L2_I0 (.Y(UART_SCAN_CLK__L2_N0), 
	.A(UART_SCAN_CLK__L1_N0));
   CLKBUFX40M UART_SCAN_CLK__L1_I0 (.Y(UART_SCAN_CLK__L1_N0), 
	.A(UART_SCAN_CLK));
   CLKBUFX40M UART_TX_SCAN_CLK__L1_I0 (.Y(UART_TX_SCAN_CLK__L1_N0), 
	.A(UART_TX_SCAN_CLK));
   CLKBUFX8M UART_RX_CLK__L1_I0 (.Y(UART_RX_CLK__L1_N0), 
	.A(UART_RX_CLK));
   CLKBUFX40M UART_RX_SCAN_CLK__L1_I0 (.Y(UART_RX_SCAN_CLK__L1_N0), 
	.A(UART_RX_SCAN_CLK));
   BUFX4M FE_OFC26_SYNC_UART_SCAN_RST (.Y(FE_OFN26_SYNC_UART_SCAN_RST), 
	.A(SYNC_UART_SCAN_RST));
   BUFX4M FE_OFC25_SYNC_REF_SCAN_RST (.Y(FE_OFN25_SYNC_REF_SCAN_RST), 
	.A(FE_OFN23_SYNC_REF_SCAN_RST));
   BUFX4M FE_OFC24_SYNC_REF_SCAN_RST (.Y(FE_OFN24_SYNC_REF_SCAN_RST), 
	.A(FE_OFN23_SYNC_REF_SCAN_RST));
   CLKBUFX8M FE_OFC23_SYNC_REF_SCAN_RST (.Y(FE_OFN23_SYNC_REF_SCAN_RST), 
	.A(FE_OFN22_SYNC_REF_SCAN_RST));
   BUFX4M FE_OFC22_SYNC_REF_SCAN_RST (.Y(FE_OFN22_SYNC_REF_SCAN_RST), 
	.A(SYNC_REF_SCAN_RST));
   BUFX4M FE_OFC10_SE (.Y(FE_OFN10_SE), 
	.A(FE_OFN7_SE));
   BUFX4M FE_OFC9_SE (.Y(FE_OFN9_SE), 
	.A(FE_OFN5_SE));
   BUFX4M FE_OFC8_SE (.Y(FE_OFN8_SE), 
	.A(SE));
   BUFX4M FE_OFC7_SE (.Y(FE_OFN7_SE), 
	.A(FE_OFN5_SE));
   CLKBUFX6M FE_OFC6_SE (.Y(FE_OFN6_SE), 
	.A(SE));
   BUFX4M FE_OFC5_SE (.Y(FE_OFN5_SE), 
	.A(SE));
   BUFX2M U7 (.Y(n4), 
	.A(RF_Address[0]));
   BUFX2M U8 (.Y(n5), 
	.A(RF_Address[1]));
   CLKBUFX40M U18 (.Y(SO[0]), 
	.A(UART_TX_O));
   mux2X1_1 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(REF_SCAN_CLK));
   mux2X1_4 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(UART_SCAN_CLK));
   mux2X1_3 U2_mux2X1 (.IN_0(UART_RX_CLK__L1_N0), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(UART_RX_SCAN_CLK));
   mux2X1_2 U3_mux2X1 (.IN_0(UART_TX_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(UART_TX_SCAN_CLK));
   mux2X1_0 U4_mux2X1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RSTN_SCAN_RST));
   mux2X1_6 U5_mux2X1 (.IN_0(SYNC_REF_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_REF_SCAN_RST));
   mux2X1_5 U6_mux2X1 (.IN_0(SYNC_UART_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_UART_SCAN_RST));
   RST_SYNC_stages1_test_0 U0_RST_SYNC (.rst(RSTN_SCAN_RST), 
	.clk(UART_SCAN_CLK__L9_N0), 
	.SYNC_RST(SYNC_UART_RST), 
	.test_si(n24), 
	.test_so(n23), 
	.test_se(SE), 
	.FE_OFN5_SE(FE_OFN5_SE));
   RST_SYNC_stages1_test_1 U1_RST_SYNC (.rst(RSTN_SCAN_RST), 
	.clk(REF_SCAN_CLK__L3_N4), 
	.SYNC_RST(SYNC_REF_RST), 
	.test_si(n14), 
	.test_so(n13), 
	.test_se(SE));
   DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 U0_ref_sync (.unsync_bus({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.bus_enable(UART_RX_V_OUT), 
	.clk(REF_SCAN_CLK__L3_N4), 
	.rst(SYNC_REF_SCAN_RST), 
	.enable_pulse(UART_RX_V_SYNC), 
	.sync_bus({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.test_si(n16), 
	.test_so(n15), 
	.test_se(FE_OFN10_SE), 
	.FE_OFN6_SE(FE_OFN6_SE));
   fifo_top_data_width8_FIFO_DEPTH8_pointer_width4_test_1 U0_FIFO (.W_CLK(REF_SCAN_CLK__L3_N0), 
	.W_RST(FE_OFN24_SYNC_REF_SCAN_RST), 
	.W_INC(WrInc_Pulse), 
	.R_CLK(UART_TX_SCAN_CLK__L1_N0), 
	.R_RST(SYNC_UART_SCAN_RST), 
	.R_INC(UART_TX_Busy_PULSE), 
	.WR_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.FULL(FIFO_FULL), 
	.RD_DATA({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.EMPTY(UART_TX_V_SYNC), 
	.test_si2(SI[2]), 
	.test_si1(n28), 
	.test_so2(n25), 
	.test_so1(SO[3]), 
	.test_se(SE), 
	.FE_OFN3_SYNC_UART_SCAN_RST(SYNC_UART_SCAN_RST), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.FE_OFN13_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN14_SYNC_UART_SCAN_RST(SYNC_UART_SCAN_RST), 
	.FE_OFN17_SYNC_REF_SCAN_RST(FE_OFN23_SYNC_REF_SCAN_RST), 
	.FE_OFN20_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST), 
	.FE_OFN24_SYNC_REF_SCAN_RST(FE_OFN24_SYNC_REF_SCAN_RST), 
	.FE_OFN25_SYNC_REF_SCAN_RST(FE_OFN25_SYNC_REF_SCAN_RST), 
	.FE_OFN26_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST), 
	.REF_SCAN_CLK__L3_N1(REF_SCAN_CLK__L3_N1));
   PULSE_GEN_test_1 U1_WrInc_PULSE_GEN (.clk(UART_TX_SCAN_CLK__L1_N0), 
	.rst(SYNC_UART_SCAN_RST), 
	.lvl_sig(UART_TX_Busy), 
	.pulse_sig(UART_TX_Busy_PULSE), 
	.test_si(n13), 
	.test_so(n12), 
	.test_se(SE));
   PULSE_GEN_test_0 U0_PULSE_GEN (.clk(REF_SCAN_CLK__L3_N4), 
	.rst(SYNC_REF_SCAN_RST), 
	.lvl_sig(WrInc_SYS), 
	.pulse_sig(WrInc_Pulse), 
	.test_si(n25), 
	.test_so(n24), 
	.test_se(SE), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN13_SYNC_REF_SCAN_RST(FE_OFN25_SYNC_REF_SCAN_RST));
   ClkDiv_RATIO_WD8_test_0 U0_ClkDiv (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst(SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(UART_TX_CLK), 
	.test_si(ALU_OUT_VLD), 
	.test_so(n28), 
	.test_se(SE), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.UART_SCAN_CLK__L4_N0(UART_SCAN_CLK__L4_N0), 
	.UART_SCAN_CLK__L9_N0(UART_SCAN_CLK__L9_N0));
   CLKDIV_MUX U0_CLKDIV_MUX (.IN({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }));
   ClkDiv_RATIO_WD8_test_1 U1_ClkDiv (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst(FE_OFN26_SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }), 
	.o_div_clk(UART_RX_CLK), 
	.test_si(n15), 
	.test_so(n14), 
	.test_se(FE_OFN6_SE), 
	.UART_SCAN_CLK__L4_N0(UART_SCAN_CLK__L4_N0), 
	.UART_SCAN_CLK__L9_N0(UART_SCAN_CLK__L9_N0));
   UART_test_1 U0_UART (.clk_rx(UART_RX_SCAN_CLK__L1_N0), 
	.clk_tx(UART_TX_SCAN_CLK__L1_N0), 
	.rst(SYNC_UART_SCAN_RST), 
	.RX_IN(UART_RX_IN), 
	.prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.PAR_EN(UART_Config[0]), 
	.PAR_TYP(UART_Config[1]), 
	.P_DATA({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.data_Valid(UART_RX_V_OUT), 
	.Parity_Error(parity_error), 
	.Stop_Error(framing_error), 
	.str_glitch(str_glitch), 
	.F_EMPTY(UART_TX_V_SYNC), 
	.RD_DATA({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.TX_OUT(UART_TX_O), 
	.BUSY(UART_TX_Busy), 
	.test_si2(n12), 
	.test_si1(n17), 
	.test_so1(n16), 
	.test_se(SE), 
	.FE_OFN3_SYNC_UART_SCAN_RST(SYNC_UART_SCAN_RST), 
	.FE_OFN10_SE(FE_OFN10_SE), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.FE_OFN14_SYNC_UART_SCAN_RST(SYNC_UART_SCAN_RST), 
	.FE_OFN26_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST));
   sys_ctrl_test_1 U0_SYS_CTRL (.clk(REF_SCAN_CLK__L3_N4), 
	.rst(SYNC_REF_SCAN_RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VLD), 
	.FIFO_FULL(FIFO_FULL), 
	.pulse_en(UART_RX_V_SYNC), 
	.cmd({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_Valid(RF_RdData_VLD), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.Wr_D({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WR_INC(WrInc_SYS), 
	.WrData({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN0_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN9_SE(FE_OFN9_SE), 
	.FE_OFN11_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN16_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST));
   REG_FILE_test_1 U0_RegFile (.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.clk(REF_SCAN_CLK__L3_N0), 
	.rst(SYNC_REF_SCAN_RST), 
	.Address({ RF_Address[3],
		RF_Address[2],
		n5,
		n4 }), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_VLD(RF_RdData_VLD), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.test_si3(SI[0]), 
	.test_si2(SI[1]), 
	.test_si1(n23), 
	.test_so3(n18), 
	.test_so2(SO[1]), 
	.test_so1(SO[2]), 
	.test_se(FE_OFN10_SE), 
	.FE_OFN0_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN5_SE(FE_OFN5_SE), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.FE_OFN9_SE(FE_OFN9_SE), 
	.FE_OFN11_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN18_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST), 
	.FE_OFN22_SYNC_REF_SCAN_RST(FE_OFN22_SYNC_REF_SCAN_RST), 
	.FE_OFN23_SYNC_REF_SCAN_RST(FE_OFN23_SYNC_REF_SCAN_RST), 
	.FE_OFN24_SYNC_REF_SCAN_RST(FE_OFN24_SYNC_REF_SCAN_RST), 
	.REF_SCAN_CLK__L3_N2(REF_SCAN_CLK__L3_N2), 
	.REF_SCAN_CLK__L3_N3(REF_SCAN_CLK__L3_N3), 
	.REF_SCAN_CLK__L3_N4(REF_SCAN_CLK__L3_N4), 
	.REF_SCAN_CLK__L3_N5(REF_SCAN_CLK__L3_N5));
   ALU_test_1 U0_ALU (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.clk(ALU_CLK__L1_N0), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.EN(ALU_EN), 
	.rst(SYNC_REF_SCAN_RST), 
	.OUT_VALID(ALU_OUT_VLD), 
	.test_si(SI[3]), 
	.test_se(SE), 
	.FE_OFN17_SYNC_REF_SCAN_RST(SYNC_REF_SCAN_RST));
   CLK_GATE U0_CLK_GATE (.CLK_EN(1'b1), 
	.CLK(REF_SCAN_CLK__L2_N1), 
	.GATED_CLK(ALU_CLK));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Aug 18 21:30:15 2024
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN1_RST_N;
   wire FE_PHN0_RST_N;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC1_RST_N (.Y(FE_PHN1_RST_N), 
	.A(FE_PHN0_RST_N));
   DLY4X1M FE_PHC0_RST_N (.Y(FE_PHN0_RST_N), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(FE_PHN1_RST_N));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module RST_SYNC_stages1_test_0 (
	rst, 
	clk, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_SE);
   input rst;
   input clk;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_SE;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \rst_reg[0] ;

   assign test_so = \rst_reg[0]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \rst_reg_reg[0]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\rst_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M SYNC_RST_reg (.SI(test_si), 
	.SE(FE_OFN5_SE), 
	.RN(rst), 
	.Q(SYNC_RST), 
	.D(\rst_reg[0] ), 
	.CK(clk));
endmodule

module RST_SYNC_stages1_test_1 (
	rst, 
	clk, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se);
   input rst;
   input clk;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \rst_reg[0] ;

   assign test_so = \rst_reg[0]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \rst_reg_reg[0]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\rst_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M SYNC_RST_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(SYNC_RST), 
	.D(\rst_reg[0] ), 
	.CK(clk));
endmodule

module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 (
	unsync_bus, 
	bus_enable, 
	clk, 
	rst, 
	enable_pulse, 
	sync_bus, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN6_SE);
   input [7:0] unsync_bus;
   input bus_enable;
   input clk;
   input rst;
   output enable_pulse;
   output [7:0] sync_bus;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN6_SE;

   // Internal wires
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n21;
   wire n36;
   wire [1:0] sync_ff;

   assign test_so = sync_ff[1] ;

   SDFFRQX4M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX1M \sync_ff_reg[1]  (.SI(sync_ff[0]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_ff[1]), 
	.D(sync_ff[0]), 
	.CK(clk));
   SDFFRQX1M \sync_ff_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_ff[0]), 
	.D(bus_enable), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(clk));
   CLKINVX2M U4 (.Y(enable_pulse), 
	.A(n21));
   AO22XLM U5 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n36), 
	.A0(unsync_bus[1]));
   CLKINVX2M U27 (.Y(n36), 
	.A(n1));
   NAND2BX2M U31 (.Y(n1), 
	.B(sync_ff[0]), 
	.AN(sync_ff[1]));
   AO22X1M U32 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n36), 
	.A0(unsync_bus[6]));
   AO22X1M U33 (.Y(n11), 
	.B1(sync_bus[4]), 
	.B0(n1), 
	.A1(n36), 
	.A0(unsync_bus[4]));
   AO22X1M U34 (.Y(n7), 
	.B1(sync_bus[2]), 
	.B0(n1), 
	.A1(n36), 
	.A0(unsync_bus[2]));
   AO22X1M U35 (.Y(n9), 
	.B1(sync_bus[3]), 
	.B0(n1), 
	.A1(n36), 
	.A0(unsync_bus[3]));
   AO22X1M U36 (.Y(n3), 
	.B1(sync_bus[0]), 
	.B0(n1), 
	.A1(n36), 
	.A0(unsync_bus[0]));
   AO22X1M U37 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n36), 
	.A0(unsync_bus[7]));
   AO22X1M U38 (.Y(n13), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n36), 
	.A0(unsync_bus[5]));
   SDFFRX1M enable_pulse_reg (.SI(test_si), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.QN(n21), 
	.D(n36), 
	.CK(clk));
endmodule

module fifo_wr_pointer_width4_test_1 (
	winc, 
	wclk, 
	wrst_n, 
	gray_rd_ptr, 
	w_addr, 
	gray_wr_ptr, 
	wfull, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_SYNC_REF_SCAN_RST, 
	FE_OFN8_SE);
   input winc;
   input wclk;
   input wrst_n;
   input [3:0] gray_rd_ptr;
   output [2:0] w_addr;
   output [3:0] gray_wr_ptr;
   output wfull;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_SYNC_REF_SCAN_RST;
   input FE_OFN8_SE;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n17;
   wire n19;
   wire n21;
   wire n29;
   wire [3:0] gray_wr_ptr_cmp;

   assign test_so = gray_wr_ptr_cmp[3] ;

   SDFFRQX4M \wr_ptr_reg[2]  (.SI(w_addr[1]), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(w_addr[2]), 
	.D(n17), 
	.CK(wclk));
   SDFFRQX1M \gray_wr_ptr_reg[3]  (.SI(gray_wr_ptr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(gray_wr_ptr[3]), 
	.D(gray_wr_ptr_cmp[3]), 
	.CK(wclk));
   SDFFRQX1M \gray_wr_ptr_reg[1]  (.SI(gray_wr_ptr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(gray_wr_ptr[1]), 
	.D(gray_wr_ptr_cmp[1]), 
	.CK(wclk));
   SDFFRQX1M \gray_wr_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(gray_wr_ptr[0]), 
	.D(gray_wr_ptr_cmp[0]), 
	.CK(wclk));
   SDFFRQX1M \gray_wr_ptr_reg[2]  (.SI(gray_wr_ptr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(gray_wr_ptr[2]), 
	.D(gray_wr_ptr_cmp[2]), 
	.CK(wclk));
   SDFFRQX2M \wr_ptr_reg[3]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(gray_wr_ptr_cmp[3]), 
	.D(n14), 
	.CK(wclk));
   SDFFRQX4M \wr_ptr_reg[0]  (.SI(gray_wr_ptr[3]), 
	.SE(FE_OFN8_SE), 
	.RN(wrst_n), 
	.Q(w_addr[0]), 
	.D(n21), 
	.CK(wclk));
   SDFFRQX4M \wr_ptr_reg[1]  (.SI(w_addr[0]), 
	.SE(FE_OFN8_SE), 
	.RN(wrst_n), 
	.Q(w_addr[1]), 
	.D(n19), 
	.CK(wclk));
   INVX2M U10 (.Y(wfull), 
	.A(n1));
   NOR2X2M U11 (.Y(n4), 
	.B(n6), 
	.A(n29));
   NAND2X2M U12 (.Y(n6), 
	.B(n1), 
	.A(winc));
   CLKXOR2X2M U13 (.Y(n10), 
	.B(gray_wr_ptr[3]), 
	.A(gray_rd_ptr[3]));
   NAND4X2M U14 (.Y(n1), 
	.D(n10), 
	.C(n9), 
	.B(n8), 
	.A(n7));
   XNOR2X2M U15 (.Y(n7), 
	.B(gray_rd_ptr[0]), 
	.A(gray_wr_ptr[0]));
   XNOR2X2M U16 (.Y(n8), 
	.B(gray_rd_ptr[1]), 
	.A(gray_wr_ptr[1]));
   CLKXOR2X2M U17 (.Y(n9), 
	.B(gray_wr_ptr[2]), 
	.A(gray_rd_ptr[2]));
   CLKXOR2X2M U18 (.Y(n19), 
	.B(w_addr[1]), 
	.A(n4));
   NAND2X2M U19 (.Y(n3), 
	.B(n4), 
	.A(w_addr[1]));
   XNOR2X2M U20 (.Y(n17), 
	.B(n3), 
	.A(w_addr[2]));
   XNOR2X2M U29 (.Y(n14), 
	.B(n2), 
	.A(gray_wr_ptr_cmp[3]));
   NAND2BX2M U30 (.Y(n2), 
	.B(w_addr[2]), 
	.AN(n3));
   INVX2M U31 (.Y(n29), 
	.A(w_addr[0]));
   CLKXOR2X2M U32 (.Y(gray_wr_ptr_cmp[1]), 
	.B(w_addr[1]), 
	.A(w_addr[2]));
   CLKXOR2X2M U33 (.Y(gray_wr_ptr_cmp[2]), 
	.B(gray_wr_ptr_cmp[3]), 
	.A(w_addr[2]));
   XNOR2X2M U34 (.Y(gray_wr_ptr_cmp[0]), 
	.B(n29), 
	.A(w_addr[1]));
   XNOR2X2M U35 (.Y(n21), 
	.B(n6), 
	.A(w_addr[0]));
endmodule

module fifo_rd_pointer_width4_test_1 (
	rinc, 
	rclk, 
	rrst_n, 
	gray_wr_ptr, 
	raddr, 
	gray_rd_ptr, 
	empty, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN8_SE, 
	FE_OFN14_SYNC_UART_SCAN_RST);
   input rinc;
   input rclk;
   input rrst_n;
   input [3:0] gray_wr_ptr;
   output [2:0] raddr;
   output [3:0] gray_rd_ptr;
   output empty;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN8_SE;
   input FE_OFN14_SYNC_UART_SCAN_RST;

   // Internal wires
   wire n35;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n9;
   wire n34;
   wire [3:0] gray_rd_ptr_cmp;

   assign test_so = gray_rd_ptr_cmp[3] ;

   SDFFRQX1M \gray_rd_ptr_reg[3]  (.SI(gray_rd_ptr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[3]), 
	.D(gray_rd_ptr_cmp[3]), 
	.CK(rclk));
   SDFFRQX1M \gray_rd_ptr_reg[1]  (.SI(gray_rd_ptr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[1]), 
	.D(gray_rd_ptr_cmp[1]), 
	.CK(rclk));
   SDFFRQX1M \gray_rd_ptr_reg[2]  (.SI(gray_rd_ptr[1]), 
	.SE(test_se), 
	.RN(FE_OFN14_SYNC_UART_SCAN_RST), 
	.Q(gray_rd_ptr[2]), 
	.D(gray_rd_ptr_cmp[2]), 
	.CK(rclk));
   SDFFRQX1M \gray_rd_ptr_reg[0]  (.SI(test_si), 
	.SE(FE_OFN8_SE), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[0]), 
	.D(gray_rd_ptr_cmp[0]), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(raddr[1]), 
	.SE(FE_OFN8_SE), 
	.RN(rrst_n), 
	.Q(n35), 
	.D(n20), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[0]  (.SI(gray_rd_ptr[3]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[0]), 
	.D(n22), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[3]  (.SI(raddr[2]), 
	.SE(test_se), 
	.RN(FE_OFN14_SYNC_UART_SCAN_RST), 
	.Q(gray_rd_ptr_cmp[3]), 
	.D(n19), 
	.CK(rclk));
   SDFFRQX4M \rd_ptr_reg[1]  (.SI(n34), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[1]), 
	.D(n21), 
	.CK(rclk));
   INVXLM U11 (.Y(n9), 
	.A(n35));
   INVX2M U12 (.Y(raddr[2]), 
	.A(n9));
   NOR2X2M U23 (.Y(n12), 
	.B(n13), 
	.A(n34));
   XNOR2X2M U25 (.Y(n15), 
	.B(gray_wr_ptr[1]), 
	.A(gray_rd_ptr[1]));
   XNOR2X2M U26 (.Y(n19), 
	.B(n10), 
	.A(gray_rd_ptr_cmp[3]));
   NAND2BX2M U27 (.Y(n10), 
	.B(raddr[2]), 
	.AN(n11));
   NAND4X2M U28 (.Y(empty), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   XNOR2X2M U29 (.Y(n17), 
	.B(gray_wr_ptr[3]), 
	.A(gray_rd_ptr[3]));
   XNOR2X2M U30 (.Y(n18), 
	.B(gray_wr_ptr[2]), 
	.A(gray_rd_ptr[2]));
   XNOR2X2M U31 (.Y(n16), 
	.B(gray_wr_ptr[0]), 
	.A(gray_rd_ptr[0]));
   NAND2X2M U32 (.Y(n11), 
	.B(n12), 
	.A(raddr[1]));
   NAND2X2M U33 (.Y(n13), 
	.B(empty), 
	.A(rinc));
   CLKXOR2X2M U34 (.Y(gray_rd_ptr_cmp[1]), 
	.B(raddr[1]), 
	.A(raddr[2]));
   CLKXOR2X2M U35 (.Y(gray_rd_ptr_cmp[2]), 
	.B(gray_rd_ptr_cmp[3]), 
	.A(raddr[2]));
   CLKXOR2X2M U36 (.Y(n21), 
	.B(n12), 
	.A(raddr[1]));
   XNOR2X2M U37 (.Y(n20), 
	.B(n11), 
	.A(raddr[2]));
   XNOR2X2M U38 (.Y(n22), 
	.B(n13), 
	.A(raddr[0]));
   XNOR2X2M U39 (.Y(gray_rd_ptr_cmp[0]), 
	.B(n34), 
	.A(raddr[1]));
   INVX2M U40 (.Y(n34), 
	.A(raddr[0]));
endmodule

module fifo_mem_DATA8_DEPTH8_pointer_width4_test_1 (
	wclk, 
	wrst_n, 
	wclken, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_SYNC_REF_SCAN_RST, 
	FE_OFN8_SE, 
	FE_OFN13_SYNC_REF_SCAN_RST, 
	FE_OFN17_SYNC_REF_SCAN_RST, 
	FE_OFN24_SYNC_REF_SCAN_RST, 
	FE_OFN25_SYNC_REF_SCAN_RST, 
	REF_SCAN_CLK__L3_N1);
   input wclk;
   input wrst_n;
   input wclken;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_SYNC_REF_SCAN_RST;
   input FE_OFN8_SE;
   input FE_OFN13_SYNC_REF_SCAN_RST;
   input FE_OFN17_SYNC_REF_SCAN_RST;
   input FE_OFN24_SYNC_REF_SCAN_RST;
   input FE_OFN25_SYNC_REF_SCAN_RST;
   input REF_SCAN_CLK__L3_N1;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \regArr[7][6] ;
   wire \regArr[7][5] ;
   wire \regArr[7][4] ;
   wire \regArr[7][3] ;
   wire \regArr[7][2] ;
   wire \regArr[7][1] ;
   wire \regArr[7][0] ;
   wire \regArr[6][7] ;
   wire \regArr[6][6] ;
   wire \regArr[6][5] ;
   wire \regArr[6][4] ;
   wire \regArr[6][3] ;
   wire \regArr[6][2] ;
   wire \regArr[6][1] ;
   wire \regArr[6][0] ;
   wire \regArr[5][7] ;
   wire \regArr[5][6] ;
   wire \regArr[5][5] ;
   wire \regArr[5][4] ;
   wire \regArr[5][3] ;
   wire \regArr[5][2] ;
   wire \regArr[5][1] ;
   wire \regArr[5][0] ;
   wire \regArr[4][7] ;
   wire \regArr[4][6] ;
   wire \regArr[4][5] ;
   wire \regArr[4][4] ;
   wire \regArr[4][3] ;
   wire \regArr[4][2] ;
   wire \regArr[4][1] ;
   wire \regArr[4][0] ;
   wire \regArr[3][7] ;
   wire \regArr[3][6] ;
   wire \regArr[3][5] ;
   wire \regArr[3][4] ;
   wire \regArr[3][3] ;
   wire \regArr[3][2] ;
   wire \regArr[3][1] ;
   wire \regArr[3][0] ;
   wire \regArr[2][7] ;
   wire \regArr[2][6] ;
   wire \regArr[2][5] ;
   wire \regArr[2][4] ;
   wire \regArr[2][3] ;
   wire \regArr[2][2] ;
   wire \regArr[2][1] ;
   wire \regArr[2][0] ;
   wire \regArr[1][7] ;
   wire \regArr[1][6] ;
   wire \regArr[1][5] ;
   wire \regArr[1][4] ;
   wire \regArr[1][3] ;
   wire \regArr[1][2] ;
   wire \regArr[1][1] ;
   wire \regArr[1][0] ;
   wire \regArr[0][7] ;
   wire \regArr[0][6] ;
   wire \regArr[0][5] ;
   wire \regArr[0][4] ;
   wire \regArr[0][3] ;
   wire \regArr[0][2] ;
   wire \regArr[0][1] ;
   wire \regArr[0][0] ;
   wire n76;
   wire n81;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n220;
   wire n221;
   wire n222;
   wire n224;
   wire n226;
   wire n228;
   wire n230;
   wire n232;
   wire n234;
   wire n236;
   wire n238;
   wire n240;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;

   assign N10 = raddr[0] ;
   assign N11 = raddr[1] ;
   assign N12 = raddr[2] ;

   SDFFRQX1M \regArr_reg[0][7]  (.SI(\regArr[0][6] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][7] ), 
	.D(n92), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[0][6]  (.SI(\regArr[0][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][6] ), 
	.D(n91), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][5]  (.SI(\regArr[0][4] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][5] ), 
	.D(n90), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][4]  (.SI(\regArr[0][3] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][4] ), 
	.D(n89), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][3]  (.SI(\regArr[0][2] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][3] ), 
	.D(n88), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][2]  (.SI(\regArr[0][1] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][2] ), 
	.D(n87), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][1]  (.SI(\regArr[0][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][1] ), 
	.D(n86), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[0][0]  (.SI(test_si1), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[0][0] ), 
	.D(n85), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][7]  (.SI(\regArr[7][6] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(test_so2), 
	.D(n148), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][6]  (.SI(\regArr[7][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][6] ), 
	.D(n147), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][5]  (.SI(\regArr[7][4] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][5] ), 
	.D(n146), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][4]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][4] ), 
	.D(n145), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][3]  (.SI(\regArr[7][2] ), 
	.SE(FE_OFN8_SE), 
	.RN(wrst_n), 
	.Q(\regArr[7][3] ), 
	.D(n144), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][2]  (.SI(\regArr[7][1] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][2] ), 
	.D(n143), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][1]  (.SI(\regArr[7][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][1] ), 
	.D(n142), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[7][0]  (.SI(\regArr[6][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[7][0] ), 
	.D(n141), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][7]  (.SI(\regArr[6][6] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][7] ), 
	.D(n140), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][6]  (.SI(\regArr[6][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][6] ), 
	.D(n139), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][5]  (.SI(\regArr[6][4] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][5] ), 
	.D(n138), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][4]  (.SI(\regArr[6][3] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][4] ), 
	.D(n137), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][3]  (.SI(\regArr[6][2] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][3] ), 
	.D(n136), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][2]  (.SI(\regArr[6][1] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][2] ), 
	.D(n135), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][1]  (.SI(\regArr[6][0] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][1] ), 
	.D(n134), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[6][0]  (.SI(\regArr[5][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[6][0] ), 
	.D(n133), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][7]  (.SI(\regArr[5][6] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][7] ), 
	.D(n132), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][6]  (.SI(\regArr[5][5] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][6] ), 
	.D(n131), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][5]  (.SI(\regArr[5][4] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][5] ), 
	.D(n130), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][4]  (.SI(\regArr[5][3] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][4] ), 
	.D(n129), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][3]  (.SI(\regArr[5][2] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][3] ), 
	.D(n128), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][2]  (.SI(\regArr[5][1] ), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][2] ), 
	.D(n127), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][1]  (.SI(\regArr[5][0] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][1] ), 
	.D(n126), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[5][0]  (.SI(\regArr[4][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[5][0] ), 
	.D(n125), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][7]  (.SI(\regArr[4][6] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][7] ), 
	.D(n124), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][6]  (.SI(\regArr[4][5] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][6] ), 
	.D(n123), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][5]  (.SI(\regArr[4][4] ), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][5] ), 
	.D(n122), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][4]  (.SI(\regArr[4][3] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][4] ), 
	.D(n121), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][3]  (.SI(\regArr[4][2] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][3] ), 
	.D(n120), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][2]  (.SI(\regArr[4][1] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][2] ), 
	.D(n119), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][1]  (.SI(\regArr[4][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][1] ), 
	.D(n118), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[4][0]  (.SI(\regArr[3][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[4][0] ), 
	.D(n117), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[3][7]  (.SI(\regArr[3][6] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][7] ), 
	.D(n116), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[3][6]  (.SI(\regArr[3][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][6] ), 
	.D(n115), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[3][5]  (.SI(\regArr[3][4] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][5] ), 
	.D(n114), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[3][4]  (.SI(\regArr[3][3] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][4] ), 
	.D(n113), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[3][3]  (.SI(\regArr[3][2] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN13_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][3] ), 
	.D(n112), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[3][2]  (.SI(\regArr[3][1] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][2] ), 
	.D(n111), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[3][1]  (.SI(\regArr[3][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][1] ), 
	.D(n110), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[3][0]  (.SI(\regArr[2][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[3][0] ), 
	.D(n109), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[2][7]  (.SI(\regArr[2][6] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][7] ), 
	.D(n108), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[2][6]  (.SI(\regArr[2][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][6] ), 
	.D(n107), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][5]  (.SI(\regArr[2][4] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][5] ), 
	.D(n106), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][4]  (.SI(\regArr[2][3] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][4] ), 
	.D(n105), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][3]  (.SI(\regArr[2][2] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][3] ), 
	.D(n104), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][2]  (.SI(\regArr[2][1] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][2] ), 
	.D(n103), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][1]  (.SI(\regArr[2][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][1] ), 
	.D(n102), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[2][0]  (.SI(\regArr[1][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[2][0] ), 
	.D(n101), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][7]  (.SI(\regArr[1][6] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][7] ), 
	.D(n100), 
	.CK(wclk));
   SDFFRQX1M \regArr_reg[1][6]  (.SI(\regArr[1][5] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][6] ), 
	.D(n99), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][5]  (.SI(\regArr[1][4] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][5] ), 
	.D(n98), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][4]  (.SI(\regArr[1][3] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][4] ), 
	.D(n97), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][3]  (.SI(\regArr[1][2] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][3] ), 
	.D(n96), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][2]  (.SI(\regArr[1][1] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][2] ), 
	.D(n95), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][1]  (.SI(\regArr[1][0] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][1] ), 
	.D(n94), 
	.CK(REF_SCAN_CLK__L3_N1));
   SDFFRQX1M \regArr_reg[1][0]  (.SI(\regArr[0][7] ), 
	.SE(FE_OFN8_SE), 
	.RN(FE_OFN25_SYNC_REF_SCAN_RST), 
	.Q(\regArr[1][0] ), 
	.D(n93), 
	.CK(REF_SCAN_CLK__L3_N1));
   NOR2BX2M U130 (.Y(n76), 
	.B(waddr[2]), 
	.AN(wclken));
   INVX2M U131 (.Y(n258), 
	.A(waddr[1]));
   INVX2M U132 (.Y(n257), 
	.A(waddr[0]));
   CLKINVX2M U140 (.Y(n232), 
	.A(n196));
   CLKINVX2M U142 (.Y(n240), 
	.A(n195));
   CLKINVX2M U145 (.Y(n236), 
	.A(n197));
   CLKINVX2M U147 (.Y(n234), 
	.A(n199));
   CLKINVX2M U149 (.Y(n238), 
	.A(n198));
   CLKINVX2M U151 (.Y(n230), 
	.A(n202));
   CLKINVX2M U153 (.Y(n228), 
	.A(n200));
   CLKINVX2M U155 (.Y(n226), 
	.A(n201));
   AND3X2M U157 (.Y(n195), 
	.C(n76), 
	.B(n258), 
	.A(n257));
   AND3X2M U158 (.Y(n196), 
	.C(n81), 
	.B(n258), 
	.A(n257));
   CLKINVX2M U159 (.Y(n222), 
	.A(n224));
   CLKINVX4M U160 (.Y(n220), 
	.A(n221));
   CLKINVX2M U163 (.Y(n256), 
	.A(wdata[0]));
   CLKINVX2M U164 (.Y(n255), 
	.A(wdata[1]));
   CLKINVX2M U165 (.Y(n254), 
	.A(wdata[2]));
   CLKINVX2M U166 (.Y(n253), 
	.A(wdata[3]));
   CLKINVX2M U167 (.Y(n252), 
	.A(wdata[4]));
   CLKINVX2M U168 (.Y(n251), 
	.A(wdata[5]));
   CLKINVX2M U169 (.Y(n250), 
	.A(wdata[6]));
   CLKINVX2M U170 (.Y(n249), 
	.A(wdata[7]));
   OAI2BB2X1M U171 (.Y(n93), 
	.B1(n238), 
	.B0(n256), 
	.A1N(n238), 
	.A0N(\regArr[1][0] ));
   OAI2BB2X1M U172 (.Y(n94), 
	.B1(n238), 
	.B0(n255), 
	.A1N(n238), 
	.A0N(\regArr[1][1] ));
   OAI2BB2X1M U173 (.Y(n95), 
	.B1(n238), 
	.B0(n254), 
	.A1N(n238), 
	.A0N(\regArr[1][2] ));
   OAI2BB2X1M U174 (.Y(n96), 
	.B1(n238), 
	.B0(n253), 
	.A1N(n238), 
	.A0N(\regArr[1][3] ));
   OAI2BB2X1M U175 (.Y(n97), 
	.B1(n238), 
	.B0(n252), 
	.A1N(n238), 
	.A0N(\regArr[1][4] ));
   OAI2BB2X1M U176 (.Y(n98), 
	.B1(n238), 
	.B0(n251), 
	.A1N(n238), 
	.A0N(\regArr[1][5] ));
   OAI2BB2X1M U177 (.Y(n99), 
	.B1(n238), 
	.B0(n250), 
	.A1N(n238), 
	.A0N(\regArr[1][6] ));
   OAI2BB2X1M U178 (.Y(n100), 
	.B1(n238), 
	.B0(n249), 
	.A1N(n238), 
	.A0N(\regArr[1][7] ));
   OAI2BB2X1M U179 (.Y(n101), 
	.B1(n236), 
	.B0(n256), 
	.A1N(n236), 
	.A0N(\regArr[2][0] ));
   OAI2BB2X1M U180 (.Y(n102), 
	.B1(n236), 
	.B0(n255), 
	.A1N(n236), 
	.A0N(\regArr[2][1] ));
   OAI2BB2X1M U181 (.Y(n103), 
	.B1(n236), 
	.B0(n254), 
	.A1N(n236), 
	.A0N(\regArr[2][2] ));
   OAI2BB2X1M U182 (.Y(n104), 
	.B1(n236), 
	.B0(n253), 
	.A1N(n236), 
	.A0N(\regArr[2][3] ));
   OAI2BB2X1M U183 (.Y(n105), 
	.B1(n236), 
	.B0(n252), 
	.A1N(n236), 
	.A0N(\regArr[2][4] ));
   OAI2BB2X1M U184 (.Y(n106), 
	.B1(n236), 
	.B0(n251), 
	.A1N(n236), 
	.A0N(\regArr[2][5] ));
   OAI2BB2X1M U185 (.Y(n107), 
	.B1(n236), 
	.B0(n250), 
	.A1N(n236), 
	.A0N(\regArr[2][6] ));
   OAI2BB2X1M U186 (.Y(n108), 
	.B1(n236), 
	.B0(n249), 
	.A1N(n236), 
	.A0N(\regArr[2][7] ));
   OAI2BB2X1M U187 (.Y(n109), 
	.B1(n234), 
	.B0(n256), 
	.A1N(n234), 
	.A0N(\regArr[3][0] ));
   OAI2BB2X1M U188 (.Y(n110), 
	.B1(n234), 
	.B0(n255), 
	.A1N(n234), 
	.A0N(\regArr[3][1] ));
   OAI2BB2X1M U189 (.Y(n111), 
	.B1(n234), 
	.B0(n254), 
	.A1N(n234), 
	.A0N(\regArr[3][2] ));
   OAI2BB2X1M U190 (.Y(n112), 
	.B1(n234), 
	.B0(n253), 
	.A1N(n234), 
	.A0N(\regArr[3][3] ));
   OAI2BB2X1M U191 (.Y(n113), 
	.B1(n234), 
	.B0(n252), 
	.A1N(n234), 
	.A0N(\regArr[3][4] ));
   OAI2BB2X1M U192 (.Y(n114), 
	.B1(n234), 
	.B0(n251), 
	.A1N(n234), 
	.A0N(\regArr[3][5] ));
   OAI2BB2X1M U193 (.Y(n115), 
	.B1(n234), 
	.B0(n250), 
	.A1N(n234), 
	.A0N(\regArr[3][6] ));
   OAI2BB2X1M U194 (.Y(n116), 
	.B1(n234), 
	.B0(n249), 
	.A1N(n234), 
	.A0N(\regArr[3][7] ));
   OAI2BB2X1M U195 (.Y(n117), 
	.B1(n232), 
	.B0(n256), 
	.A1N(n232), 
	.A0N(\regArr[4][0] ));
   OAI2BB2X1M U196 (.Y(n118), 
	.B1(n232), 
	.B0(n255), 
	.A1N(n232), 
	.A0N(\regArr[4][1] ));
   OAI2BB2X1M U197 (.Y(n119), 
	.B1(n232), 
	.B0(n254), 
	.A1N(n232), 
	.A0N(\regArr[4][2] ));
   OAI2BB2X1M U198 (.Y(n120), 
	.B1(n232), 
	.B0(n253), 
	.A1N(n232), 
	.A0N(\regArr[4][3] ));
   OAI2BB2X1M U199 (.Y(n121), 
	.B1(n232), 
	.B0(n252), 
	.A1N(n232), 
	.A0N(\regArr[4][4] ));
   OAI2BB2X1M U200 (.Y(n122), 
	.B1(n232), 
	.B0(n251), 
	.A1N(n232), 
	.A0N(\regArr[4][5] ));
   OAI2BB2X1M U201 (.Y(n123), 
	.B1(n232), 
	.B0(n250), 
	.A1N(n232), 
	.A0N(\regArr[4][6] ));
   OAI2BB2X1M U202 (.Y(n124), 
	.B1(n232), 
	.B0(n249), 
	.A1N(n232), 
	.A0N(\regArr[4][7] ));
   OAI2BB2X1M U203 (.Y(n125), 
	.B1(n230), 
	.B0(n256), 
	.A1N(n230), 
	.A0N(\regArr[5][0] ));
   OAI2BB2X1M U204 (.Y(n126), 
	.B1(n230), 
	.B0(n255), 
	.A1N(n230), 
	.A0N(\regArr[5][1] ));
   OAI2BB2X1M U205 (.Y(n127), 
	.B1(n230), 
	.B0(n254), 
	.A1N(n230), 
	.A0N(\regArr[5][2] ));
   OAI2BB2X1M U206 (.Y(n128), 
	.B1(n230), 
	.B0(n253), 
	.A1N(n230), 
	.A0N(\regArr[5][3] ));
   OAI2BB2X1M U207 (.Y(n129), 
	.B1(n230), 
	.B0(n252), 
	.A1N(n230), 
	.A0N(\regArr[5][4] ));
   OAI2BB2X1M U208 (.Y(n130), 
	.B1(n230), 
	.B0(n251), 
	.A1N(n230), 
	.A0N(\regArr[5][5] ));
   OAI2BB2X1M U209 (.Y(n131), 
	.B1(n230), 
	.B0(n250), 
	.A1N(n230), 
	.A0N(\regArr[5][6] ));
   OAI2BB2X1M U210 (.Y(n132), 
	.B1(n230), 
	.B0(n249), 
	.A1N(n230), 
	.A0N(\regArr[5][7] ));
   OAI2BB2X1M U211 (.Y(n133), 
	.B1(n228), 
	.B0(n256), 
	.A1N(n228), 
	.A0N(\regArr[6][0] ));
   OAI2BB2X1M U212 (.Y(n134), 
	.B1(n228), 
	.B0(n255), 
	.A1N(n228), 
	.A0N(\regArr[6][1] ));
   OAI2BB2X1M U213 (.Y(n135), 
	.B1(n228), 
	.B0(n254), 
	.A1N(n228), 
	.A0N(\regArr[6][2] ));
   OAI2BB2X1M U214 (.Y(n136), 
	.B1(n228), 
	.B0(n253), 
	.A1N(n228), 
	.A0N(\regArr[6][3] ));
   OAI2BB2X1M U215 (.Y(n137), 
	.B1(n228), 
	.B0(n252), 
	.A1N(n228), 
	.A0N(\regArr[6][4] ));
   OAI2BB2X1M U216 (.Y(n138), 
	.B1(n228), 
	.B0(n251), 
	.A1N(n228), 
	.A0N(\regArr[6][5] ));
   OAI2BB2X1M U217 (.Y(n139), 
	.B1(n228), 
	.B0(n250), 
	.A1N(n228), 
	.A0N(\regArr[6][6] ));
   OAI2BB2X1M U218 (.Y(n140), 
	.B1(n228), 
	.B0(n249), 
	.A1N(n228), 
	.A0N(\regArr[6][7] ));
   OAI2BB2X1M U219 (.Y(n141), 
	.B1(n226), 
	.B0(n256), 
	.A1N(n226), 
	.A0N(\regArr[7][0] ));
   OAI2BB2X1M U220 (.Y(n142), 
	.B1(n226), 
	.B0(n255), 
	.A1N(n226), 
	.A0N(\regArr[7][1] ));
   OAI2BB2X1M U221 (.Y(n143), 
	.B1(n226), 
	.B0(n254), 
	.A1N(n226), 
	.A0N(\regArr[7][2] ));
   OAI2BB2X1M U222 (.Y(n144), 
	.B1(n226), 
	.B0(n253), 
	.A1N(n226), 
	.A0N(\regArr[7][3] ));
   OAI2BB2X1M U223 (.Y(n145), 
	.B1(n226), 
	.B0(n252), 
	.A1N(n226), 
	.A0N(\regArr[7][4] ));
   OAI2BB2X1M U224 (.Y(n146), 
	.B1(n226), 
	.B0(n251), 
	.A1N(n226), 
	.A0N(\regArr[7][5] ));
   OAI2BB2X1M U225 (.Y(n147), 
	.B1(n226), 
	.B0(n250), 
	.A1N(n226), 
	.A0N(\regArr[7][6] ));
   OAI2BB2X1M U226 (.Y(n148), 
	.B1(n226), 
	.B0(n249), 
	.A1N(n226), 
	.A0N(test_so2));
   OAI2BB2X1M U227 (.Y(n85), 
	.B1(n256), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][0] ));
   OAI2BB2X1M U228 (.Y(n86), 
	.B1(n255), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][1] ));
   OAI2BB2X1M U229 (.Y(n87), 
	.B1(n254), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][2] ));
   OAI2BB2X1M U230 (.Y(n88), 
	.B1(n253), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][3] ));
   OAI2BB2X1M U231 (.Y(n89), 
	.B1(n252), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][4] ));
   OAI2BB2X1M U232 (.Y(n90), 
	.B1(n251), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][5] ));
   OAI2BB2X1M U233 (.Y(n91), 
	.B1(n250), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][6] ));
   OAI2BB2X1M U234 (.Y(n92), 
	.B1(n249), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\regArr[0][7] ));
   AND3X2M U235 (.Y(n197), 
	.C(waddr[1]), 
	.B(n257), 
	.A(n76));
   AND3X2M U236 (.Y(n198), 
	.C(waddr[0]), 
	.B(n258), 
	.A(n76));
   AND3X2M U237 (.Y(n199), 
	.C(waddr[1]), 
	.B(n76), 
	.A(waddr[0]));
   AND2X2M U238 (.Y(n81), 
	.B(wclken), 
	.A(waddr[2]));
   AND3X2M U239 (.Y(n200), 
	.C(n81), 
	.B(n257), 
	.A(waddr[1]));
   AND3X2M U240 (.Y(n201), 
	.C(n81), 
	.B(waddr[0]), 
	.A(waddr[1]));
   AND3X2M U241 (.Y(n202), 
	.C(n81), 
	.B(n258), 
	.A(waddr[0]));
   MX2X2M U242 (.Y(rdata[6]), 
	.S0(N12), 
	.B(n215), 
	.A(n216));
   MX4X1M U243 (.Y(n215), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][6] ), 
	.C(\regArr[6][6] ), 
	.B(\regArr[5][6] ), 
	.A(\regArr[4][6] ));
   MX4X1M U244 (.Y(n216), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][6] ), 
	.C(\regArr[2][6] ), 
	.B(\regArr[1][6] ), 
	.A(\regArr[0][6] ));
   INVX2M U245 (.Y(n224), 
	.A(N11));
   MX2X2M U246 (.Y(rdata[7]), 
	.S0(N12), 
	.B(n217), 
	.A(n218));
   MX4X1M U247 (.Y(n217), 
	.S1(n222), 
	.S0(n220), 
	.D(test_so2), 
	.C(\regArr[6][7] ), 
	.B(\regArr[5][7] ), 
	.A(\regArr[4][7] ));
   MX4X1M U248 (.Y(n218), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][7] ), 
	.C(\regArr[2][7] ), 
	.B(\regArr[1][7] ), 
	.A(\regArr[0][7] ));
   MX2X2M U249 (.Y(rdata[2]), 
	.S0(N12), 
	.B(n207), 
	.A(n208));
   MX4X1M U250 (.Y(n207), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][2] ), 
	.C(\regArr[6][2] ), 
	.B(\regArr[5][2] ), 
	.A(\regArr[4][2] ));
   MX4X1M U251 (.Y(n208), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][2] ), 
	.C(\regArr[2][2] ), 
	.B(\regArr[1][2] ), 
	.A(\regArr[0][2] ));
   MX2X2M U252 (.Y(rdata[3]), 
	.S0(N12), 
	.B(n209), 
	.A(n210));
   MX4X1M U253 (.Y(n209), 
	.S1(n222), 
	.S0(n220), 
	.D(test_so1), 
	.C(\regArr[6][3] ), 
	.B(\regArr[5][3] ), 
	.A(\regArr[4][3] ));
   MX4X1M U254 (.Y(n210), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][3] ), 
	.C(\regArr[2][3] ), 
	.B(\regArr[1][3] ), 
	.A(\regArr[0][3] ));
   MX2X2M U255 (.Y(rdata[4]), 
	.S0(N12), 
	.B(n211), 
	.A(n212));
   MX4X1M U256 (.Y(n211), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][4] ), 
	.C(\regArr[6][4] ), 
	.B(\regArr[5][4] ), 
	.A(\regArr[4][4] ));
   MX4X1M U257 (.Y(n212), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][4] ), 
	.C(\regArr[2][4] ), 
	.B(\regArr[1][4] ), 
	.A(\regArr[0][4] ));
   MX2X2M U258 (.Y(rdata[5]), 
	.S0(N12), 
	.B(n213), 
	.A(n214));
   MX4X1M U259 (.Y(n213), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][5] ), 
	.C(\regArr[6][5] ), 
	.B(\regArr[5][5] ), 
	.A(\regArr[4][5] ));
   MX4X1M U260 (.Y(n214), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][5] ), 
	.C(\regArr[2][5] ), 
	.B(\regArr[1][5] ), 
	.A(\regArr[0][5] ));
   MX2X2M U261 (.Y(rdata[0]), 
	.S0(N12), 
	.B(n203), 
	.A(n204));
   MX4X1M U262 (.Y(n203), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][0] ), 
	.C(\regArr[6][0] ), 
	.B(\regArr[5][0] ), 
	.A(\regArr[4][0] ));
   MX4X1M U263 (.Y(n204), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][0] ), 
	.C(\regArr[2][0] ), 
	.B(\regArr[1][0] ), 
	.A(\regArr[0][0] ));
   MX2X2M U264 (.Y(rdata[1]), 
	.S0(N12), 
	.B(n205), 
	.A(n206));
   MX4X1M U265 (.Y(n205), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[7][1] ), 
	.C(\regArr[6][1] ), 
	.B(\regArr[5][1] ), 
	.A(\regArr[4][1] ));
   MX4X1M U266 (.Y(n206), 
	.S1(n222), 
	.S0(n220), 
	.D(\regArr[3][1] ), 
	.C(\regArr[2][1] ), 
	.B(\regArr[1][1] ), 
	.A(\regArr[0][1] ));
   INVX2M U267 (.Y(n221), 
	.A(N10));
   DLY1X1M U268 (.Y(test_so1), 
	.A(\regArr[7][3] ));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	FE_OFN3_SYNC_UART_SCAN_RST, 
	FE_OFN20_SYNC_UART_SCAN_RST);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;
   input FE_OFN3_SYNC_UART_SCAN_RST;
   input FE_OFN20_SYNC_UART_SCAN_RST;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_UART_SCAN_RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(FE_OFN20_SYNC_UART_SCAN_RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
endmodule

module fifo_top_data_width8_FIFO_DEPTH8_pointer_width4_test_1 (
	W_CLK, 
	W_RST, 
	W_INC, 
	R_CLK, 
	R_RST, 
	R_INC, 
	WR_DATA, 
	FULL, 
	RD_DATA, 
	EMPTY, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_SYNC_UART_SCAN_RST, 
	FE_OFN6_SE, 
	FE_OFN8_SE, 
	FE_OFN13_SYNC_REF_SCAN_RST, 
	FE_OFN14_SYNC_UART_SCAN_RST, 
	FE_OFN17_SYNC_REF_SCAN_RST, 
	FE_OFN20_SYNC_UART_SCAN_RST, 
	FE_OFN24_SYNC_REF_SCAN_RST, 
	FE_OFN25_SYNC_REF_SCAN_RST, 
	FE_OFN26_SYNC_UART_SCAN_RST, 
	REF_SCAN_CLK__L3_N1);
   input W_CLK;
   input W_RST;
   input W_INC;
   input R_CLK;
   input R_RST;
   input R_INC;
   input [7:0] WR_DATA;
   output FULL;
   output [7:0] RD_DATA;
   output EMPTY;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_SYNC_UART_SCAN_RST;
   input FE_OFN6_SE;
   input FE_OFN8_SE;
   input FE_OFN13_SYNC_REF_SCAN_RST;
   input FE_OFN14_SYNC_UART_SCAN_RST;
   input FE_OFN17_SYNC_REF_SCAN_RST;
   input FE_OFN20_SYNC_UART_SCAN_RST;
   input FE_OFN24_SYNC_REF_SCAN_RST;
   input FE_OFN25_SYNC_REF_SCAN_RST;
   input FE_OFN26_SYNC_UART_SCAN_RST;
   input REF_SCAN_CLK__L3_N1;

   // Internal wires
   wire WCLKEN;
   wire n5;
   wire n6;
   wire n7;
   wire [3:0] SYNC_GRAY_RD_PTR;
   wire [3:0] ASYNC_GRAY_WR_PTR;
   wire [2:0] waddr;
   wire [3:0] SYNC_GRAY_WR_PTR;
   wire [2:0] RADDR;
   wire [3:0] ASYNC_GRAY_RD_PTR;

   assign test_so2 = SYNC_GRAY_WR_PTR[3] ;

   NOR2BX2M U2 (.Y(WCLKEN), 
	.B(FULL), 
	.AN(W_INC));
   fifo_wr_pointer_width4_test_1 u0_FIFO_WR (.winc(W_INC), 
	.wclk(REF_SCAN_CLK__L3_N1), 
	.wrst_n(FE_OFN25_SYNC_REF_SCAN_RST), 
	.gray_rd_ptr({ SYNC_GRAY_RD_PTR[3],
		SYNC_GRAY_RD_PTR[2],
		SYNC_GRAY_RD_PTR[1],
		SYNC_GRAY_RD_PTR[0] }), 
	.w_addr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.gray_wr_ptr({ ASYNC_GRAY_WR_PTR[3],
		ASYNC_GRAY_WR_PTR[2],
		ASYNC_GRAY_WR_PTR[1],
		ASYNC_GRAY_WR_PTR[0] }), 
	.wfull(FULL), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN1_SYNC_REF_SCAN_RST(FE_OFN25_SYNC_REF_SCAN_RST), 
	.FE_OFN8_SE(FE_OFN8_SE));
   fifo_rd_pointer_width4_test_1 u0_FIFO_RD (.rinc(R_INC), 
	.rclk(R_CLK), 
	.rrst_n(R_RST), 
	.gray_wr_ptr({ SYNC_GRAY_WR_PTR[3],
		SYNC_GRAY_WR_PTR[2],
		SYNC_GRAY_WR_PTR[1],
		SYNC_GRAY_WR_PTR[0] }), 
	.raddr({ RADDR[2],
		RADDR[1],
		RADDR[0] }), 
	.gray_rd_ptr({ ASYNC_GRAY_RD_PTR[3],
		ASYNC_GRAY_RD_PTR[2],
		ASYNC_GRAY_RD_PTR[1],
		ASYNC_GRAY_RD_PTR[0] }), 
	.empty(EMPTY), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.FE_OFN14_SYNC_UART_SCAN_RST(FE_OFN14_SYNC_UART_SCAN_RST));
   fifo_mem_DATA8_DEPTH8_pointer_width4_test_1 u0_FIFO_MEMORY (.wclk(W_CLK), 
	.wrst_n(FE_OFN17_SYNC_REF_SCAN_RST), 
	.wclken(WCLKEN), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ RADDR[2],
		RADDR[1],
		RADDR[0] }), 
	.wdata({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.rdata({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n7), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN1_SYNC_REF_SCAN_RST(W_RST), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.FE_OFN13_SYNC_REF_SCAN_RST(FE_OFN25_SYNC_REF_SCAN_RST), 
	.FE_OFN17_SYNC_REF_SCAN_RST(FE_OFN17_SYNC_REF_SCAN_RST), 
	.FE_OFN24_SYNC_REF_SCAN_RST(FE_OFN24_SYNC_REF_SCAN_RST), 
	.FE_OFN25_SYNC_REF_SCAN_RST(FE_OFN25_SYNC_REF_SCAN_RST), 
	.REF_SCAN_CLK__L3_N1(REF_SCAN_CLK__L3_N1));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync (.CLK(R_CLK), 
	.RST(FE_OFN20_SYNC_UART_SCAN_RST), 
	.ASYNC({ ASYNC_GRAY_WR_PTR[3],
		ASYNC_GRAY_WR_PTR[2],
		ASYNC_GRAY_WR_PTR[1],
		ASYNC_GRAY_WR_PTR[0] }), 
	.SYNC({ SYNC_GRAY_WR_PTR[3],
		SYNC_GRAY_WR_PTR[2],
		SYNC_GRAY_WR_PTR[1],
		SYNC_GRAY_WR_PTR[0] }), 
	.test_si(SYNC_GRAY_RD_PTR[3]), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN3_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST), 
	.FE_OFN20_SYNC_UART_SCAN_RST(FE_OFN20_SYNC_UART_SCAN_RST));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync (.CLK(REF_SCAN_CLK__L3_N1), 
	.RST(FE_OFN25_SYNC_REF_SCAN_RST), 
	.ASYNC({ ASYNC_GRAY_RD_PTR[3],
		ASYNC_GRAY_RD_PTR[2],
		ASYNC_GRAY_RD_PTR[1],
		ASYNC_GRAY_RD_PTR[0] }), 
	.SYNC({ SYNC_GRAY_RD_PTR[3],
		SYNC_GRAY_RD_PTR[2],
		SYNC_GRAY_RD_PTR[1],
		SYNC_GRAY_RD_PTR[0] }), 
	.test_si(n5), 
	.test_se(FE_OFN6_SE));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pls_flop;

   SDFFRQX1M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX1M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(test_so), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U8 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(test_so));
endmodule

module PULSE_GEN_test_0 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN6_SE, 
	FE_OFN13_SYNC_REF_SCAN_RST);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN6_SE;
   input FE_OFN13_SYNC_REF_SCAN_RST;

   // Internal wires
   wire pls_flop;

   SDFFRQX1M pls_flop_reg (.SI(test_si), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN13_SYNC_REF_SCAN_RST), 
	.Q(pls_flop), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX1M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(test_so), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U7 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(test_so));
endmodule

module ClkDiv_RATIO_WD8_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_RATIO_WD8_test_0 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN8_SE, 
	UART_SCAN_CLK__L4_N0, 
	UART_SCAN_CLK__L9_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN8_SE;
   input UART_SCAN_CLK__L4_N0;
   input UART_SCAN_CLK__L9_N0;

   // Internal wires
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n68;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst), 
	.SI(div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(test_so), 
	.D(n26), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(FE_OFN8_SE), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n28), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(FE_OFN8_SE), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n29), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n30), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n31), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n32), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n33), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX1M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFRQX1M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n34), 
	.CK(UART_SCAN_CLK__L9_N0));
   NOR4X1M U24 (.Y(n51), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   NOR2X4M U25 (.Y(n35), 
	.B(i_div_ratio[4]), 
	.A(n25));
   AND3X2M U26 (.Y(n40), 
	.C(N2), 
	.B(n42), 
	.A(n41));
   NAND4X2M U27 (.Y(n44), 
	.D(n51), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   AO22XLM U28 (.Y(n33), 
	.B1(n40), 
	.B0(N17), 
	.A1(n39), 
	.A0(count[1]));
   AO22XLM U29 (.Y(n32), 
	.B1(n40), 
	.B0(N18), 
	.A1(n39), 
	.A0(count[2]));
   AO22XLM U30 (.Y(n31), 
	.B1(n40), 
	.B0(N19), 
	.A1(n39), 
	.A0(count[3]));
   AO22XLM U31 (.Y(n30), 
	.B1(n40), 
	.B0(N20), 
	.A1(n39), 
	.A0(count[4]));
   AO22XLM U32 (.Y(n29), 
	.B1(n40), 
	.B0(N21), 
	.A1(n39), 
	.A0(count[5]));
   AO22XLM U33 (.Y(n28), 
	.B1(n40), 
	.B0(N22), 
	.A1(n39), 
	.A0(count[6]));
   AO22XLM U34 (.Y(n34), 
	.B1(n40), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n39));
   OR2X2M U35 (.Y(n25), 
	.B(i_div_ratio[3]), 
	.A(n24));
   OR2X2M U37 (.Y(n24), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   OAI21X2M U39 (.Y(n39), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n65), 
	.A0(n64));
   INVX2M U40 (.Y(n38), 
	.A(i_div_ratio[5]));
   MX2XLM U41 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L4_N0));
   CLKINVX1M U42 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U43 (.Y(edge_flip_half[1]), 
	.B0(n24), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OAI2BB1X1M U44 (.Y(edge_flip_half[2]), 
	.B0(n25), 
	.A1N(i_div_ratio[3]), 
	.A0N(n24));
   AO21XLM U45 (.Y(edge_flip_half[3]), 
	.B0(n35), 
	.A1(i_div_ratio[4]), 
	.A0(n25));
   CLKNAND2X2M U46 (.Y(n36), 
	.B(n38), 
	.A(n35));
   OAI21X1M U47 (.Y(edge_flip_half[4]), 
	.B0(n36), 
	.A1(n38), 
	.A0(n35));
   XNOR2X1M U48 (.Y(edge_flip_half[5]), 
	.B(n36), 
	.A(i_div_ratio[6]));
   NOR2X1M U49 (.Y(n37), 
	.B(n36), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U50 (.Y(edge_flip_half[6]), 
	.B(n37), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U51 (.Y(n27), 
	.B(div_clk__Exclude_0_NET), 
	.A(n43));
   AOI21X1M U52 (.Y(n43), 
	.B0(n39), 
	.A1(n41), 
	.A0(n42));
   OR2X1M U53 (.Y(n41), 
	.B(i_div_ratio[0]), 
	.A(n44));
   XNOR2X1M U54 (.Y(n26), 
	.B(n45), 
	.A(test_so));
   OR2X1M U55 (.Y(n45), 
	.B(n39), 
	.A(n42));
   CLKNAND2X2M U56 (.Y(n42), 
	.B(i_div_ratio[0]), 
	.A(n46));
   MXI2X1M U57 (.Y(n46), 
	.S0(test_so), 
	.B(n44), 
	.A(n47));
   CLKXOR2X2M U58 (.Y(n55), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U59 (.Y(n54), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U60 (.Y(n53), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U61 (.Y(n52), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U62 (.Y(n50), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U63 (.Y(n49), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U64 (.Y(n48), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U65 (.Y(n47), 
	.D(n59), 
	.C(n58), 
	.B(n57), 
	.A(n56));
   NOR4X1M U66 (.Y(n59), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.A(n60));
   CLKXOR2X2M U67 (.Y(n63), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U68 (.Y(n62), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U69 (.Y(n61), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U70 (.Y(n60), 
	.B(count[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U71 (.Y(n58), 
	.B(n68), 
	.A(count[4]));
   XNOR2X1M U72 (.Y(n57), 
	.B(i_div_ratio[6]), 
	.A(count[5]));
   XNOR2X1M U73 (.Y(n56), 
	.B(i_div_ratio[4]), 
	.A(count[3]));
   CLKINVX1M U74 (.Y(N2), 
	.A(n39));
   OR3X1M U75 (.Y(n65), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U76 (.Y(n64), 
	.D(i_div_ratio[7]), 
	.C(i_div_ratio[6]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   INVXLM U77 (.Y(n68), 
	.A(n38));
   ClkDiv_RATIO_WD8_0_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module CLKDIV_MUX (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR3X12M U6 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NOR3X8M U12 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   NOR4X6M U13 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U14 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   NAND4BX2M U15 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   NAND4BX2M U16 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   OAI211X4M U17 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NAND2X2M U18 (.Y(n9), 
	.B(n6), 
	.A(n7));
   NOR4X2M U19 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   INVX2M U20 (.Y(n15), 
	.A(IN[2]));
   INVX2M U21 (.Y(n17), 
	.A(IN[0]));
   INVX2M U22 (.Y(n16), 
	.A(IN[1]));
   INVX2M U23 (.Y(n14), 
	.A(IN[5]));
   INVX2M U3 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U8 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U10 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module ClkDiv_RATIO_WD8_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_RATIO_WD8_test_1 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_SCAN_CLK__L4_N0, 
	UART_SCAN_CLK__L9_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_SCAN_CLK__L4_N0;
   input UART_SCAN_CLK__L9_N0;

   // Internal wires
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst), 
	.SI(div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(test_so), 
	.D(n74), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n72), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n71), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n70), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n69), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n68), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n67), 
	.CK(UART_SCAN_CLK__L9_N0));
   SDFFRQX1M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n73), 
	.CK(i_ref_clk));
   SDFFRQX1M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n66), 
	.CK(UART_SCAN_CLK__L9_N0));
   NOR4X1M U24 (.Y(n51), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   NOR2X4M U25 (.Y(n35), 
	.B(LTIE_LTIELO_NET), 
	.A(n25));
   AND3X2M U26 (.Y(n40), 
	.C(N2), 
	.B(n42), 
	.A(n41));
   OR2X2M U27 (.Y(n25), 
	.B(i_div_ratio[3]), 
	.A(n24));
   NAND4X2M U28 (.Y(n44), 
	.D(n51), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   AO22XLM U29 (.Y(n67), 
	.B1(n40), 
	.B0(N17), 
	.A1(n39), 
	.A0(count[1]));
   AO22XLM U30 (.Y(n68), 
	.B1(n40), 
	.B0(N18), 
	.A1(n39), 
	.A0(count[2]));
   AO22XLM U31 (.Y(n69), 
	.B1(n40), 
	.B0(N19), 
	.A1(n39), 
	.A0(count[3]));
   AO22XLM U32 (.Y(n70), 
	.B1(n40), 
	.B0(N20), 
	.A1(n39), 
	.A0(count[4]));
   AO22XLM U33 (.Y(n71), 
	.B1(n40), 
	.B0(N21), 
	.A1(n39), 
	.A0(count[5]));
   AO22XLM U34 (.Y(n72), 
	.B1(n40), 
	.B0(N22), 
	.A1(n39), 
	.A0(count[6]));
   AO22XLM U35 (.Y(n66), 
	.B1(n40), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n39));
   OAI2BB1XLM U36 (.Y(edge_flip_half[2]), 
	.B0(n25), 
	.A1N(i_div_ratio[3]), 
	.A0N(n24));
   OR2X2M U37 (.Y(n24), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   OAI21X2M U40 (.Y(n39), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n65), 
	.A0(n64));
   INVX2M U41 (.Y(n38), 
	.A(LTIE_LTIELO_NET));
   MX2XLM U42 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L4_N0));
   CLKINVX1M U43 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U44 (.Y(edge_flip_half[1]), 
	.B0(n24), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   AO21XLM U45 (.Y(edge_flip_half[3]), 
	.B0(n35), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n25));
   CLKNAND2X2M U46 (.Y(n36), 
	.B(n38), 
	.A(n35));
   OAI21X1M U47 (.Y(edge_flip_half[4]), 
	.B0(n36), 
	.A1(n38), 
	.A0(n35));
   XNOR2X1M U48 (.Y(edge_flip_half[5]), 
	.B(n36), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U49 (.Y(n37), 
	.B(n36), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U50 (.Y(edge_flip_half[6]), 
	.B(n37), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U51 (.Y(n73), 
	.B(div_clk__Exclude_0_NET), 
	.A(n43));
   AOI21X1M U52 (.Y(n43), 
	.B0(n39), 
	.A1(n41), 
	.A0(n42));
   OR2X1M U53 (.Y(n41), 
	.B(i_div_ratio[0]), 
	.A(n44));
   XNOR2X1M U54 (.Y(n74), 
	.B(n45), 
	.A(test_so));
   OR2X1M U55 (.Y(n45), 
	.B(n39), 
	.A(n42));
   CLKNAND2X2M U56 (.Y(n42), 
	.B(i_div_ratio[0]), 
	.A(n46));
   MXI2X1M U57 (.Y(n46), 
	.S0(test_so), 
	.B(n44), 
	.A(n47));
   CLKXOR2X2M U58 (.Y(n55), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U59 (.Y(n54), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U60 (.Y(n53), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U61 (.Y(n52), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U62 (.Y(n50), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U63 (.Y(n49), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U64 (.Y(n48), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U65 (.Y(n47), 
	.D(n59), 
	.C(n58), 
	.B(n57), 
	.A(n56));
   NOR4X1M U66 (.Y(n59), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.A(n60));
   CLKXOR2X2M U67 (.Y(n63), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U68 (.Y(n62), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U69 (.Y(n61), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U70 (.Y(n60), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U71 (.Y(n58), 
	.B(LTIE_LTIELO_NET), 
	.A(count[4]));
   XNOR2X1M U72 (.Y(n57), 
	.B(LTIE_LTIELO_NET), 
	.A(count[5]));
   XNOR2X1M U73 (.Y(n56), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   CLKINVX1M U74 (.Y(N2), 
	.A(n39));
   OR3X1M U75 (.Y(n65), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U76 (.Y(n64), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   ClkDiv_RATIO_WD8_1_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module RX_FSM_test_1 (
	rst, 
	clk_RX, 
	RX_IN, 
	PAR_EN, 
	bit_cnt, 
	Parity_Error, 
	Stop_Error, 
	str_glitch, 
	take_sample, 
	edge_cnt_max, 
	par_chk_en, 
	str_chk_en, 
	stp_chk_en, 
	data_Valid, 
	deser_en, 
	edge_cnt_enable, 
	dat_samp_en, 
	test_si, 
	test_so, 
	test_se);
   input rst;
   input clk_RX;
   input RX_IN;
   input PAR_EN;
   input [3:0] bit_cnt;
   input Parity_Error;
   input Stop_Error;
   input str_glitch;
   input take_sample;
   input edge_cnt_max;
   output par_chk_en;
   output str_chk_en;
   output stp_chk_en;
   output data_Valid;
   output deser_en;
   output edge_cnt_enable;
   output dat_samp_en;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n5;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n43;
   wire n44;
   wire n45;
   wire n49;
   wire [2:0] current_state;
   wire [2:0] next_state;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSRX4M \current_state_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n41), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(clk_RX));
   OAI21X1M U6 (.Y(next_state[2]), 
	.B0(n22), 
	.A1(n19), 
	.A0(n21));
   NOR2X1M U7 (.Y(stp_chk_en), 
	.B(n19), 
	.A(n12));
   CLKINVX1M U8 (.Y(n40), 
	.A(n19));
   OAI32X1M U9 (.Y(n32), 
	.B1(n41), 
	.B0(n34), 
	.A2(RX_IN), 
	.A1(bit_cnt[0]), 
	.A0(n33));
   OAI32X1M U10 (.Y(n23), 
	.B1(n41), 
	.B0(PAR_EN), 
	.A2(Parity_Error), 
	.A1(current_state[0]), 
	.A0(n13));
   INVX2M U12 (.Y(n5), 
	.A(n49));
   NAND3X2M U13 (.Y(n19), 
	.C(test_so), 
	.B(n5), 
	.A(n41));
   NOR3X2M U20 (.Y(n35), 
	.C(n45), 
	.B(n40), 
	.A(n49));
   NAND2X2M U21 (.Y(n20), 
	.B(n43), 
	.A(n49));
   NAND3X2M U22 (.Y(n27), 
	.C(bit_cnt[0]), 
	.B(n17), 
	.A(n16));
   INVX2M U23 (.Y(n38), 
	.A(bit_cnt[3]));
   NAND2X2M U24 (.Y(n18), 
	.B(n5), 
	.A(current_state[0]));
   INVX2M U25 (.Y(n15), 
	.A(n24));
   OAI32X1M U26 (.Y(data_Valid), 
	.B1(n43), 
	.B0(n18), 
	.A2(n19), 
	.A1(take_sample), 
	.A0(n25));
   INVX2M U27 (.Y(n45), 
	.A(RX_IN));
   NAND2X2M U28 (.Y(dat_samp_en), 
	.B(n41), 
	.A(n35));
   NOR3X2M U29 (.Y(deser_en), 
	.C(n20), 
	.B(n24), 
	.A(n41));
   NOR2X2M U30 (.Y(n24), 
	.B(n27), 
	.A(n38));
   INVX2M U31 (.Y(n12), 
	.A(take_sample));
   INVX2M U32 (.Y(n13), 
	.A(edge_cnt_max));
   NAND2X2M U33 (.Y(n25), 
	.B(n36), 
	.A(edge_cnt_max));
   OAI32X1M U34 (.Y(n36), 
	.B1(n15), 
	.B0(PAR_EN), 
	.A2(n16), 
	.A1(n44), 
	.A0(n37));
   OR3X2M U35 (.Y(n37), 
	.C(n38), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[0]));
   INVX2M U36 (.Y(n44), 
	.A(PAR_EN));
   OAI21X2M U37 (.Y(edge_cnt_enable), 
	.B0(n35), 
	.A1(n41), 
	.A0(test_so));
   NAND3X2M U38 (.Y(n33), 
	.C(n16), 
	.B(n38), 
	.A(n17));
   NOR3X2M U39 (.Y(n34), 
	.C(n27), 
	.B(bit_cnt[3]), 
	.A(n39));
   NAND3BX2M U40 (.Y(next_state[0]), 
	.C(n30), 
	.B(n29), 
	.AN(deser_en));
   NAND4BX1M U41 (.Y(n29), 
	.D(n45), 
	.C(test_so), 
	.B(edge_cnt_max), 
	.AN(n18));
   AOI33X2M U42 (.Y(n30), 
	.B2(n32), 
	.B1(n43), 
	.B0(n5), 
	.A2(n14), 
	.A1(n31), 
	.A0(n40));
   INVX2M U43 (.Y(n14), 
	.A(n25));
   CLKXOR2X2M U44 (.Y(n31), 
	.B(RX_IN), 
	.A(Stop_Error));
   NAND3BX2M U45 (.Y(n22), 
	.C(n24), 
	.B(n23), 
	.AN(n20));
   AOI2B1X1M U46 (.Y(n21), 
	.B0(n25), 
	.A1N(Stop_Error), 
	.A0(RX_IN));
   OAI32X1M U47 (.Y(next_state[1]), 
	.B1(n20), 
	.B0(n28), 
	.A2(n27), 
	.A1(n18), 
	.A0(n26));
   NAND3X2M U48 (.Y(n26), 
	.C(n38), 
	.B(n39), 
	.A(n43));
   AOI221XLM U49 (.Y(n28), 
	.C0(n15), 
	.B1(n13), 
	.B0(n41), 
	.A1(current_state[0]), 
	.A0(PAR_EN));
   NOR3X2M U50 (.Y(par_chk_en), 
	.C(n12), 
	.B(current_state[0]), 
	.A(n20));
   INVX2M U51 (.Y(n16), 
	.A(bit_cnt[1]));
   INVX2M U52 (.Y(n17), 
	.A(bit_cnt[2]));
   NOR3X2M U53 (.Y(str_chk_en), 
	.C(n18), 
	.B(n12), 
	.A(test_so));
   INVX2M U54 (.Y(n39), 
	.A(str_glitch));
   SDFFSRX2M \current_state_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n49), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n43), 
	.Q(test_so), 
	.D(next_state[2]), 
	.CK(clk_RX));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(n49), 
	.D(next_state[1]), 
	.CK(clk_RX));
endmodule

module RX_parity_check_data_width8_test_1 (
	clk_RX, 
	rst, 
	P_DATA, 
	par_chk_en, 
	sampled_bit, 
	PAR_TYP, 
	Parity_Error, 
	test_si, 
	test_so, 
	test_se);
   input clk_RX;
   input rst;
   input [7:0] P_DATA;
   input par_chk_en;
   input sampled_bit;
   input PAR_TYP;
   output Parity_Error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n13;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   XNOR2X2M U3 (.Y(n7), 
	.B(P_DATA[7]), 
	.A(sampled_bit));
   CLKXOR2X2M U5 (.Y(n3), 
	.B(PAR_TYP), 
	.A(P_DATA[1]));
   OAI2BB2X1M U8 (.Y(n9), 
	.B1(n2), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(Parity_Error));
   XOR3XLM U9 (.Y(n2), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U10 (.Y(n13), 
	.A(par_chk_en));
   XOR3XLM U12 (.Y(n5), 
	.C(n6), 
	.B(P_DATA[0]), 
	.A(P_DATA[2]));
   XNOR2X2M U13 (.Y(n6), 
	.B(P_DATA[3]), 
	.A(P_DATA[4]));
   XOR3XLM U14 (.Y(n4), 
	.C(n7), 
	.B(P_DATA[5]), 
	.A(P_DATA[6]));
   SDFFSRX4M Parity_Error_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Parity_Error), 
	.D(n9), 
	.CK(clk_RX));
   BUFX2M U4 (.Y(test_so), 
	.A(Parity_Error));
endmodule

module RX_str_check_test_1 (
	clk_RX, 
	rst, 
	str_chk_en, 
	sampled_bit, 
	str_glitch, 
	test_si, 
	test_so, 
	test_se);
   input clk_RX;
   input rst;
   input str_chk_en;
   input sampled_bit;
   output str_glitch;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n2;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   AO2B2XLM U4 (.Y(n2), 
	.B1(sampled_bit), 
	.B0(str_chk_en), 
	.A1N(str_chk_en), 
	.A0(str_glitch));
   SDFFSRX4M str_glitch_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(str_glitch), 
	.D(n2), 
	.CK(clk_RX));
   BUFX2M U2 (.Y(test_so), 
	.A(str_glitch));
endmodule

module RX_stp_chk_test_1 (
	clk_RX, 
	rst, 
	stp_chk_en, 
	sampled_bit, 
	Stop_Error, 
	test_si, 
	test_so, 
	test_se);
   input clk_RX;
   input rst;
   input stp_chk_en;
   input sampled_bit;
   output Stop_Error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n3;
   wire n7;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI2BB2X1M U2 (.Y(n3), 
	.B1(n7), 
	.B0(sampled_bit), 
	.A1N(n7), 
	.A0N(Stop_Error));
   CLKINVX2M U3 (.Y(n7), 
	.A(stp_chk_en));
   SDFFSRX4M Stop_Error_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Stop_Error), 
	.D(n3), 
	.CK(clk_RX));
   BUFX2M U4 (.Y(test_so), 
	.A(Stop_Error));
endmodule

module RX_deserializer_data_width8_test_1 (
	clk_RX, 
	rst, 
	sampled_bit, 
	deser_en, 
	take_sample, 
	edge_cnt, 
	edge_cnt_max, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se);
   input clk_RX;
   input rst;
   input sampled_bit;
   input deser_en;
   input take_sample;
   input [5:0] edge_cnt;
   input edge_cnt_max;
   output [7:0] P_DATA;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n5;
   wire n48;
   wire n49;
   wire n50;
   wire n52;
   wire n1;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRX1M \P_DATA_reg[6]  (.SI(n10), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n9), 
	.Q(P_DATA[6]), 
	.D(n28), 
	.CK(clk_RX));
   SDFFRX1M \P_DATA_reg[5]  (.SI(n11), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n10), 
	.Q(P_DATA[5]), 
	.D(n29), 
	.CK(clk_RX));
   SDFFRX1M \P_DATA_reg[4]  (.SI(n12), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n11), 
	.Q(P_DATA[4]), 
	.D(n30), 
	.CK(clk_RX));
   SDFFRX1M \P_DATA_reg[3]  (.SI(n13), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n12), 
	.Q(P_DATA[3]), 
	.D(n31), 
	.CK(clk_RX));
   SDFFRX1M \P_DATA_reg[2]  (.SI(n52), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n13), 
	.Q(P_DATA[2]), 
	.D(n32), 
	.CK(clk_RX));
   SDFFSRX1M \P_DATA_reg[7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n9), 
	.SE(test_se), 
	.RN(rst), 
	.Q(n5), 
	.D(n27), 
	.CK(clk_RX));
   AOI32X1M U11 (.Y(n24), 
	.B1(P_DATA[0]), 
	.B0(n50), 
	.A2(n20), 
	.A1(deser_en), 
	.A0(P_DATA[1]));
   CLKINVX2M U12 (.Y(n50), 
	.A(n23));
   NOR4X1M U13 (.Y(n25), 
	.D(n26), 
	.C(edge_cnt[0]), 
	.B(edge_cnt[1]), 
	.A(edge_cnt[2]));
   NAND3XLM U16 (.Y(n18), 
	.C(sampled_bit), 
	.B(n19), 
	.A(deser_en));
   OR3X1M U17 (.Y(n26), 
	.C(edge_cnt[3]), 
	.B(edge_cnt[4]), 
	.A(edge_cnt[5]));
   NOR2BX2M U29 (.Y(n22), 
	.B(n21), 
	.AN(n20));
   OAI21X2M U30 (.Y(n21), 
	.B0(deser_en), 
	.A1(n25), 
	.A0(n19));
   CLKINVX2M U31 (.Y(n49), 
	.A(n22));
   NOR2X2M U34 (.Y(n23), 
	.B(n19), 
	.A(n21));
   NOR2BX2M U35 (.Y(n19), 
	.B(edge_cnt_max), 
	.AN(take_sample));
   NOR2BX2M U36 (.Y(n20), 
	.B(n19), 
	.AN(n25));
   OAI22X1M U37 (.Y(n32), 
	.B1(n13), 
	.B0(n23), 
	.A1(n12), 
	.A0(n49));
   OAI22X1M U38 (.Y(n31), 
	.B1(n12), 
	.B0(n23), 
	.A1(n11), 
	.A0(n49));
   OAI22X1M U39 (.Y(n30), 
	.B1(n11), 
	.B0(n23), 
	.A1(n10), 
	.A0(n49));
   OAI22X1M U40 (.Y(n29), 
	.B1(n10), 
	.B0(n22), 
	.A1(n9), 
	.A0(n49));
   OAI2BB2X1M U41 (.Y(n33), 
	.B1(n13), 
	.B0(n49), 
	.A1N(P_DATA[1]), 
	.A0N(n50));
   INVX2M U42 (.Y(n48), 
	.A(n24));
   NAND2X2M U43 (.Y(n27), 
	.B(n18), 
	.A(n17));
   OAI21X2M U44 (.Y(n17), 
	.B0(P_DATA[7]), 
	.A1(n21), 
	.A0(n20));
   OAI2BB2X1M U45 (.Y(n28), 
	.B1(n9), 
	.B0(n22), 
	.A1N(n22), 
	.A0N(P_DATA[7]));
   SDFFSRX2M \P_DATA_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n52), 
	.Q(P_DATA[1]), 
	.D(n33), 
	.CK(clk_RX));
   SDFFSRX2M \P_DATA_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(P_DATA[0]), 
	.D(n48), 
	.CK(clk_RX));
   CLKINVX1M U3 (.Y(n1), 
	.A(n5));
   INVX2M U4 (.Y(P_DATA[7]), 
	.A(n1));
endmodule

module RX_edge_bit_cnt_test_1 (
	clk_RX, 
	rst, 
	prescale, 
	edge_cnt_enable, 
	PAR_EN, 
	bit_cnt, 
	edge_cnt, 
	edge_cnt_max, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN6_SE, 
	FE_OFN7_SE);
   input clk_RX;
   input rst;
   input [5:0] prescale;
   input edge_cnt_enable;
   input PAR_EN;
   output [3:0] bit_cnt;
   output [5:0] edge_cnt;
   output edge_cnt_max;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN6_SE;
   input FE_OFN7_SE;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n74;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire \add_33/carry[5] ;
   wire \add_33/carry[4] ;
   wire \add_33/carry[3] ;
   wire \add_33/carry[2] ;
   wire n14;
   wire n11;
   wire n12;
   wire n18;
   wire n38;
   wire n13;
   wire n61;
   wire n64;
   wire n66;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n80;
   wire n89;
   wire n1;
   wire n5;
   wire n7;

   assign test_so = n38 ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR3BX2M U39 (.Y(n34), 
	.C(n72), 
	.B(prescale[4]), 
	.AN(n37));
   SDFFSRX4M \edge_cnt_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(edge_cnt[0]), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n80), 
	.Q(edge_cnt[1]), 
	.D(N36), 
	.CK(clk_RX));
   SDFFSRX4M \edge_cnt_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(edge_cnt[3]), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n69), 
	.Q(edge_cnt[4]), 
	.D(N39), 
	.CK(clk_RX));
   SDFFSRX1M \edge_cnt_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(bit_cnt[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(n13), 
	.D(N35), 
	.CK(clk_RX));
   SDFFSRX1M \edge_cnt_reg[5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n69), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n38), 
	.D(N40), 
	.CK(clk_RX));
   SDFFSRX1M \bit_cnt_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n89), 
	.SE(test_se), 
	.RN(rst), 
	.Q(n11), 
	.D(N44), 
	.CK(clk_RX));
   SDFFSRX1M \bit_cnt_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n66), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.QN(n89), 
	.Q(n74), 
	.D(N43), 
	.CK(clk_RX));
   INVXLM U13 (.Y(n14), 
	.A(n74));
   CLKINVX2M U14 (.Y(bit_cnt[2]), 
	.A(n14));
   CLKINVX1M U16 (.Y(edge_cnt[5]), 
	.A(n38));
   CLKINVX2M U19 (.Y(bit_cnt[0]), 
	.A(n18));
   AOI32X1M U23 (.Y(n33), 
	.B1(n69), 
	.B0(n35), 
	.A2(edge_cnt[4]), 
	.A1(n34), 
	.A0(edge_cnt[3]));
   OAI33X2M U24 (.Y(n31), 
	.B2(n18), 
	.B1(bit_cnt[1]), 
	.B0(PAR_EN), 
	.A2(n73), 
	.A1(bit_cnt[0]), 
	.A0(n66));
   NAND4X2M U46 (.Y(n30), 
	.D(n89), 
	.C(n31), 
	.B(edge_cnt_max), 
	.A(bit_cnt[3]));
   INVX2M U49 (.Y(n64), 
	.A(n24));
   NAND2BX2M U50 (.Y(n29), 
	.B(edge_cnt_enable), 
	.AN(n28));
   INVX2M U51 (.Y(n70), 
	.A(edge_cnt_enable));
   NOR2BX2M U52 (.Y(N39), 
	.B(n29), 
	.AN(N15));
   NOR2BX2M U53 (.Y(N38), 
	.B(n29), 
	.AN(N14));
   NOR2BX2M U54 (.Y(N37), 
	.B(n29), 
	.AN(N13));
   NOR2BX2M U55 (.Y(N36), 
	.B(n29), 
	.AN(N12));
   CLKNAND2X2M U56 (.Y(n24), 
	.B(n30), 
	.A(edge_cnt_max));
   AOI21BX2M U57 (.Y(n27), 
	.B0N(n28), 
	.A1(n64), 
	.A0(n18));
   NAND2X2M U58 (.Y(n28), 
	.B(n30), 
	.A(n24));
   OAI32X1M U59 (.Y(n35), 
	.B1(n36), 
	.B0(n68), 
	.A2(n34), 
	.A1(edge_cnt[3]), 
	.A0(n71));
   INVX2M U60 (.Y(n71), 
	.A(n36));
   NAND3X2M U61 (.Y(n36), 
	.C(prescale[4]), 
	.B(n72), 
	.A(n37));
   AND4X2M U62 (.Y(edge_cnt_max), 
	.D(edge_cnt[0]), 
	.C(n32), 
	.B(edge_cnt[1]), 
	.A(edge_cnt[2]));
   NOR2X2M U63 (.Y(n32), 
	.B(n33), 
	.A(edge_cnt[5]));
   NOR4X1M U64 (.Y(n37), 
	.D(prescale[2]), 
	.C(prescale[3]), 
	.B(prescale[0]), 
	.A(prescale[1]));
   INVX2M U65 (.Y(n72), 
	.A(prescale[5]));
   OAI33X2M U66 (.Y(N43), 
	.B2(n66), 
	.B1(bit_cnt[2]), 
	.B0(n26), 
	.A2(n70), 
	.A1(n25), 
	.A0(n89));
   OAI32X1M U67 (.Y(N41), 
	.B1(n29), 
	.B0(n18), 
	.A2(n24), 
	.A1(bit_cnt[0]), 
	.A0(n70));
   OAI32X1M U68 (.Y(N42), 
	.B1(n26), 
	.B0(bit_cnt[1]), 
	.A2(n66), 
	.A1(n27), 
	.A0(n70));
   NAND3X2M U69 (.Y(n26), 
	.C(edge_cnt_enable), 
	.B(bit_cnt[0]), 
	.A(n64));
   NOR2X2M U70 (.Y(N40), 
	.B(n29), 
	.A(n61));
   XNOR2X2M U71 (.Y(n61), 
	.B(edge_cnt[5]), 
	.A(\add_33/carry[5] ));
   NOR2X2M U72 (.Y(N35), 
	.B(n29), 
	.A(edge_cnt[0]));
   NOR2X2M U73 (.Y(N44), 
	.B(n70), 
	.A(n21));
   AOI32X1M U74 (.Y(n21), 
	.B1(n23), 
	.B0(bit_cnt[3]), 
	.A2(n22), 
	.A1(n64), 
	.A0(bit_cnt[2]));
   NOR3X2M U75 (.Y(n22), 
	.C(n18), 
	.B(n66), 
	.A(bit_cnt[3]));
   OAI21X2M U76 (.Y(n23), 
	.B0(n25), 
	.A1(n24), 
	.A0(bit_cnt[2]));
   INVX2M U77 (.Y(n73), 
	.A(PAR_EN));
   OA21X2M U78 (.Y(n25), 
	.B0(n27), 
	.A1(n24), 
	.A0(bit_cnt[1]));
   ADDHX1M U79 (.S(N14), 
	.CO(\add_33/carry[4] ), 
	.B(\add_33/carry[3] ), 
	.A(edge_cnt[3]));
   ADDHX1M U80 (.S(N12), 
	.CO(\add_33/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U81 (.S(N13), 
	.CO(\add_33/carry[3] ), 
	.B(\add_33/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U82 (.S(N15), 
	.CO(\add_33/carry[5] ), 
	.B(\add_33/carry[4] ), 
	.A(edge_cnt[4]));
   SDFFSRX2M \bit_cnt_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n18), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n66), 
	.Q(bit_cnt[1]), 
	.D(N42), 
	.CK(clk_RX));
   SDFFSRX2M \bit_cnt_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n18), 
	.D(N41), 
	.CK(clk_RX));
   SDFFSRX4M \edge_cnt_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n80), 
	.SE(FE_OFN7_SE), 
	.RN(rst), 
	.Q(edge_cnt[2]), 
	.D(N37), 
	.CK(clk_RX));
   SDFFSRX1M \edge_cnt_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(edge_cnt[2]), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n68), 
	.Q(n12), 
	.D(N38), 
	.CK(clk_RX));
   INVXLM U3 (.Y(n1), 
	.A(n12));
   CLKINVX1M U4 (.Y(edge_cnt[3]), 
	.A(n1));
   INVXLM U7 (.Y(n5), 
	.A(n11));
   CLKINVX2M U8 (.Y(bit_cnt[3]), 
	.A(n5));
   INVXLM U9 (.Y(n7), 
	.A(n13));
   CLKINVX2M U10 (.Y(edge_cnt[0]), 
	.A(n7));
endmodule

module RX_data_sampling_test_1 (
	clk_RX, 
	rst, 
	RX_IN, 
	dat_samp_en, 
	edge_cnt, 
	prescale, 
	sampled_bit, 
	take_sample, 
	test_si, 
	test_so, 
	test_se);
   input clk_RX;
   input rst;
   input RX_IN;
   input dat_samp_en;
   input [5:0] edge_cnt;
   input [5:0] prescale;
   output sampled_bit;
   output take_sample;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N59;
   wire N75;
   wire N76;
   wire N77;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n18;
   wire n19;
   wire n26;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n72;
   wire n74;
   wire [2:0] sample;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OR2X2M U7 (.Y(n5), 
	.B(n7), 
	.A(n6));
   OR2X2M U8 (.Y(n6), 
	.B(n18), 
	.A(prescale[3]));
   OR2X2M U9 (.Y(n7), 
	.B(n19), 
	.A(prescale[4]));
   OAI21X2M U10 (.Y(n54), 
	.B0(sample[2]), 
	.A1(n9), 
	.A0(sample[0]));
   NOR3X2M U11 (.Y(n51), 
	.C(edge_cnt[4]), 
	.B(edge_cnt[5]), 
	.A(edge_cnt[2]));
   NAND3X1M U12 (.Y(n32), 
	.C(n35), 
	.B(n67), 
	.A(edge_cnt[3]));
   NOR4X1M U13 (.Y(n35), 
	.D(edge_cnt[5]), 
	.C(edge_cnt[2]), 
	.B(edge_cnt[1]), 
	.A(edge_cnt[0]));
   NOR3X2M U14 (.Y(n36), 
	.C(n65), 
	.B(edge_cnt[5]), 
	.A(edge_cnt[4]));
   CLKINVX1M U15 (.Y(n65), 
	.A(edge_cnt[2]));
   NAND2XLM U17 (.Y(n53), 
	.B(n9), 
	.A(sample[0]));
   NOR4X1M U18 (.Y(n24), 
	.D(n66), 
	.C(n27), 
	.B(edge_cnt[1]), 
	.A(edge_cnt[4]));
   CLKINVX2M U19 (.Y(n66), 
	.A(edge_cnt[3]));
   NOR2X2M U20 (.Y(n37), 
	.B(edge_cnt[3]), 
	.A(n60));
   CLKINVX1M U29 (.Y(n18), 
	.A(n52));
   CLKINVX1M U30 (.Y(n19), 
	.A(prescale[5]));
   NOR3X2M U31 (.Y(n52), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(prescale[2]));
   NAND4BX1M U33 (.Y(n27), 
	.D(n70), 
	.C(n52), 
	.B(prescale[4]), 
	.AN(prescale[5]));
   AND2X2M U34 (.Y(n44), 
	.B(edge_cnt[1]), 
	.A(n36));
   INVX2M U35 (.Y(n60), 
	.A(edge_cnt[0]));
   INVX2M U37 (.Y(n57), 
	.A(n41));
   INVX2M U38 (.Y(n55), 
	.A(n48));
   INVX2M U39 (.Y(n26), 
	.A(n42));
   INVX2M U40 (.Y(n58), 
	.A(n33));
   CLKNAND2X2M U41 (.Y(n28), 
	.B(n27), 
	.A(n5));
   NAND2X2M U42 (.Y(n41), 
	.B(n44), 
	.A(n37));
   NAND3X2M U43 (.Y(n48), 
	.C(n44), 
	.B(n66), 
	.A(n60));
   INVX2M U44 (.Y(n69), 
	.A(dat_samp_en));
   NAND4X2M U45 (.Y(n42), 
	.D(n66), 
	.C(n64), 
	.B(n60), 
	.A(n36));
   NAND3X2M U46 (.Y(n33), 
	.C(n37), 
	.B(n64), 
	.A(n36));
   INVX2M U47 (.Y(n59), 
	.A(n50));
   INVX2M U48 (.Y(n61), 
	.A(n43));
   INVX2M U49 (.Y(n62), 
	.A(n34));
   INVX2M U50 (.Y(n56), 
	.A(n49));
   INVX2M U51 (.Y(n63), 
	.A(n32));
   NAND2X2M U52 (.Y(take_sample), 
	.B(n23), 
	.A(n22));
   OAI211X1M U53 (.Y(n23), 
	.C0(n68), 
	.B0(n65), 
	.A1(n25), 
	.A0(n24));
   OAI21BX1M U54 (.Y(n22), 
	.B0N(n28), 
	.A1(n57), 
	.A0(n55));
   INVX2M U55 (.Y(n68), 
	.A(edge_cnt[5]));
   NOR4X1M U56 (.Y(n25), 
	.D(n67), 
	.C(n64), 
	.B(n5), 
	.A(edge_cnt[3]));
   INVX2M U57 (.Y(n70), 
	.A(prescale[3]));
   AOI21X2M U58 (.Y(N59), 
	.B0(n69), 
	.A1(n54), 
	.A0(n53));
   NOR2X2M U59 (.Y(N75), 
	.B(n69), 
	.A(n45));
   AOI22X1M U60 (.Y(n45), 
	.B1(n47), 
	.B0(sample[0]), 
	.A1(n46), 
	.A0(RX_IN));
   OAI222X1M U61 (.Y(n46), 
	.C1(n48), 
	.C0(n27), 
	.B1(n49), 
	.B0(n28), 
	.A1(n50), 
	.A0(n5));
   OAI222X1M U62 (.Y(n47), 
	.C1(n27), 
	.C0(n55), 
	.B1(n28), 
	.B0(n56), 
	.A1(n5), 
	.A0(n59));
   NOR2X2M U63 (.Y(N76), 
	.B(n69), 
	.A(n38));
   AOI22X1M U64 (.Y(n38), 
	.B1(n40), 
	.B0(n9), 
	.A1(n39), 
	.A0(RX_IN));
   OAI222X1M U65 (.Y(n39), 
	.C1(n41), 
	.C0(n27), 
	.B1(n42), 
	.B0(n28), 
	.A1(n43), 
	.A0(n5));
   OAI222X1M U66 (.Y(n40), 
	.C1(n27), 
	.C0(n57), 
	.B1(n28), 
	.B0(n26), 
	.A1(n5), 
	.A0(n61));
   NOR2X2M U67 (.Y(N77), 
	.B(n69), 
	.A(n29));
   AOI22X1M U68 (.Y(n29), 
	.B1(n31), 
	.B0(sample[2]), 
	.A1(n30), 
	.A0(RX_IN));
   OAI222X1M U69 (.Y(n30), 
	.C1(n32), 
	.C0(n27), 
	.B1(n33), 
	.B0(n28), 
	.A1(n34), 
	.A0(n5));
   OAI222X1M U70 (.Y(n31), 
	.C1(n27), 
	.C0(n63), 
	.B1(n28), 
	.B0(n58), 
	.A1(n5), 
	.A0(n62));
   INVX2M U71 (.Y(n64), 
	.A(edge_cnt[1]));
   INVX2M U72 (.Y(n67), 
	.A(edge_cnt[4]));
   NAND3X2M U73 (.Y(n50), 
	.C(n44), 
	.B(n60), 
	.A(edge_cnt[3]));
   NAND3X2M U74 (.Y(n43), 
	.C(edge_cnt[0]), 
	.B(edge_cnt[3]), 
	.A(n44));
   NAND3X2M U75 (.Y(n34), 
	.C(n35), 
	.B(n66), 
	.A(edge_cnt[4]));
   NAND3X2M U76 (.Y(n49), 
	.C(n51), 
	.B(edge_cnt[1]), 
	.A(n37));
   SDFFSRX2M sampled_bit_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(n72), 
	.SE(test_se), 
	.RN(rst), 
	.QN(test_so), 
	.Q(sampled_bit), 
	.D(N59), 
	.CK(clk_RX));
   SDFFSRX2M \sample_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n74), 
	.Q(sample[0]), 
	.D(N75), 
	.CK(clk_RX));
   SDFFSRX2M \sample_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n74), 
	.SE(test_se), 
	.RN(rst), 
	.Q(n9), 
	.D(N76), 
	.CK(clk_RX));
   SDFFSRX1M \sample_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n9), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n72), 
	.Q(sample[2]), 
	.D(N77), 
	.CK(clk_RX));
endmodule

module UART_RX_DATAWIDTH8_test_1 (
	rst, 
	clk_RX, 
	RX_IN, 
	prescale, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	Parity_Error, 
	Stop_Error, 
	DATA_VALID, 
	str_glitch, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN6_SE, 
	FE_OFN7_SE);
   input rst;
   input clk_RX;
   input RX_IN;
   input [5:0] prescale;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output Parity_Error;
   output Stop_Error;
   output DATA_VALID;
   output str_glitch;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN6_SE;
   input FE_OFN7_SE;

   // Internal wires
   wire FE_UNCONNECTED_0;
   wire take_sample;
   wire edge_cnt_max;
   wire par_chk_en;
   wire str_chk_en;
   wire stp_chk_en;
   wire deser_en;
   wire edge_cnt_enable;
   wire dat_samp_en;
   wire sampled_bit;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire [3:0] bit_cnt;
   wire [5:0] edge_cnt;

   RX_FSM_test_1 U0_fsm (.rst(rst), 
	.clk_RX(clk_RX), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
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
	.dat_samp_en(dat_samp_en), 
	.test_si(test_si), 
	.test_so(n11), 
	.test_se(test_se));
   RX_parity_check_data_width8_test_1 U1_parity_check (.clk_RX(clk_RX), 
	.rst(rst), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.PAR_TYP(PAR_TYP), 
	.Parity_Error(Parity_Error), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(test_se));
   RX_str_check_test_1 U2_str_check (.clk_RX(clk_RX), 
	.rst(rst), 
	.str_chk_en(str_chk_en), 
	.sampled_bit(sampled_bit), 
	.str_glitch(str_glitch), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(test_se));
   RX_stp_chk_test_1 U3_stp_chk (.clk_RX(clk_RX), 
	.rst(rst), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.Stop_Error(Stop_Error), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(test_se));
   RX_deserializer_data_width8_test_1 U4_deserializer (.clk_RX(clk_RX), 
	.rst(rst), 
	.sampled_bit(sampled_bit), 
	.deser_en(deser_en), 
	.take_sample(take_sample), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.edge_cnt_max(edge_cnt_max), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n8), 
	.test_so(FE_UNCONNECTED_0), 
	.test_se(test_se));
   RX_edge_bit_cnt_test_1 U5_edge_bit_cnt (.clk_RX(clk_RX), 
	.rst(rst), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt_enable(edge_cnt_enable), 
	.PAR_EN(PAR_EN), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.edge_cnt_max(edge_cnt_max), 
	.test_si(P_DATA[7]), 
	.test_so(n6), 
	.test_se(test_se), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN7_SE(FE_OFN7_SE));
   RX_data_sampling_test_1 U6_data_sampling (.clk_RX(clk_RX), 
	.rst(rst), 
	.RX_IN(RX_IN), 
	.dat_samp_en(dat_samp_en), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.sampled_bit(sampled_bit), 
	.take_sample(take_sample), 
	.test_si(n6), 
	.test_so(test_so), 
	.test_se(test_se));
endmodule

module TX_serializer_datawidth8_test_1 (
	clk, 
	rst, 
	p_data, 
	data_valid, 
	ser_en, 
	ser_done, 
	ser_data, 
	test_si, 
	test_se, 
	FE_OFN3_SYNC_UART_SCAN_RST, 
	FE_OFN6_SE, 
	FE_OFN8_SE);
   input clk;
   input rst;
   input [7:0] p_data;
   input data_valid;
   input ser_en;
   output ser_done;
   output ser_data;
   input test_si;
   input test_se;
   input FE_OFN3_SYNC_UART_SCAN_RST;
   input FE_OFN6_SE;
   input FE_OFN8_SE;

   // Internal wires
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n41;
   wire n42;
   wire n43;
   wire n48;
   wire n49;
   wire [3:0] count;
   wire [7:0] lfsr;

   SDFFRQX1M \lfsr_reg[7]  (.SI(lfsr[6]), 
	.SE(FE_OFN8_SE), 
	.RN(rst), 
	.Q(lfsr[7]), 
	.D(N26), 
	.CK(clk));
   SDFFRQX1M ser_data_reg (.SI(lfsr[7]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(ser_data), 
	.D(n25), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[6]  (.SI(lfsr[5]), 
	.SE(FE_OFN8_SE), 
	.RN(rst), 
	.Q(lfsr[6]), 
	.D(N25), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[5]  (.SI(lfsr[4]), 
	.SE(FE_OFN8_SE), 
	.RN(rst), 
	.Q(lfsr[5]), 
	.D(N24), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[4]  (.SI(lfsr[3]), 
	.SE(FE_OFN8_SE), 
	.RN(rst), 
	.Q(lfsr[4]), 
	.D(N23), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[3]  (.SI(lfsr[2]), 
	.SE(FE_OFN8_SE), 
	.RN(rst), 
	.Q(lfsr[3]), 
	.D(N22), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[2]  (.SI(lfsr[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(lfsr[2]), 
	.D(N21), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[1]  (.SI(lfsr[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(lfsr[1]), 
	.D(N20), 
	.CK(clk));
   SDFFRQX1M \lfsr_reg[0]  (.SI(n43), 
	.SE(test_se), 
	.RN(rst), 
	.Q(lfsr[0]), 
	.D(N19), 
	.CK(clk));
   SDFFRQX1M \count_reg[3]  (.SI(n42), 
	.SE(test_se), 
	.RN(rst), 
	.Q(count[3]), 
	.D(N15), 
	.CK(clk));
   SDFFRQX2M ser_done_reg (.SI(ser_data), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_UART_SCAN_RST), 
	.Q(ser_done), 
	.D(n26), 
	.CK(clk));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(count[1]), 
	.D(N13), 
	.CK(clk));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(count[2]), 
	.D(N14), 
	.CK(clk));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(count[0]), 
	.D(N12), 
	.CK(clk));
   XNOR2X2M U17 (.Y(n23), 
	.B(count[0]), 
	.A(count[1]));
   NAND3X1M U18 (.Y(n20), 
	.C(count[1]), 
	.B(count[0]), 
	.A(n41));
   NOR2X2M U33 (.Y(N12), 
	.B(count[0]), 
	.A(n18));
   CLKINVX1M U36 (.Y(n41), 
	.A(n18));
   NOR2BX2M U38 (.Y(n19), 
	.B(ser_en), 
	.AN(data_valid));
   AND2X2M U39 (.Y(N26), 
	.B(n19), 
	.A(p_data[7]));
   OAI32X1M U40 (.Y(N15), 
	.B1(n43), 
	.B0(n21), 
	.A2(n20), 
	.A1(count[3]), 
	.A0(n42));
   AOI21BX2M U41 (.Y(n21), 
	.B0N(n22), 
	.A1(n42), 
	.A0(n41));
   CLKNAND2X2M U42 (.Y(n18), 
	.B(n24), 
	.A(ser_en));
   OR4X1M U43 (.Y(n24), 
	.D(count[2]), 
	.C(count[0]), 
	.B(n43), 
	.A(count[1]));
   AOI2BB1X2M U44 (.Y(n22), 
	.B0(N12), 
	.A1N(n18), 
	.A0N(count[1]));
   OAI22X1M U45 (.Y(N14), 
	.B1(n20), 
	.B0(count[2]), 
	.A1(n42), 
	.A0(n22));
   AOI2B1X1M U46 (.Y(n26), 
	.B0(n19), 
	.A1N(n49), 
	.A0(n41));
   NOR2X2M U47 (.Y(N13), 
	.B(n18), 
	.A(n23));
   INVX2M U48 (.Y(n43), 
	.A(count[3]));
   AO22X1M U49 (.Y(n25), 
	.B1(n18), 
	.B0(ser_data), 
	.A1(n41), 
	.A0(lfsr[0]));
   AO22X1M U50 (.Y(N19), 
	.B1(n41), 
	.B0(lfsr[1]), 
	.A1(n19), 
	.A0(p_data[0]));
   AO22X1M U51 (.Y(N20), 
	.B1(n41), 
	.B0(lfsr[2]), 
	.A1(n19), 
	.A0(p_data[1]));
   AO22X1M U52 (.Y(N21), 
	.B1(n41), 
	.B0(lfsr[3]), 
	.A1(n19), 
	.A0(p_data[2]));
   AO22X1M U53 (.Y(N22), 
	.B1(n41), 
	.B0(lfsr[4]), 
	.A1(n19), 
	.A0(p_data[3]));
   AO22X1M U54 (.Y(N23), 
	.B1(n41), 
	.B0(lfsr[5]), 
	.A1(n19), 
	.A0(p_data[4]));
   AO22X1M U55 (.Y(N24), 
	.B1(n41), 
	.B0(lfsr[6]), 
	.A1(n19), 
	.A0(p_data[5]));
   AO22X1M U56 (.Y(N25), 
	.B1(n41), 
	.B0(lfsr[7]), 
	.A1(n19), 
	.A0(p_data[6]));
   INVX2M U57 (.Y(n42), 
	.A(count[2]));
   INVXLM U60 (.Y(n48), 
	.A(ser_done));
   INVXLM U61 (.Y(n49), 
	.A(n48));
endmodule

module TX_parity_datawidth8_test_1 (
	p_data, 
	clk, 
	rst, 
	par_typ, 
	par_bit, 
	test_si, 
	test_se);
   input [7:0] p_data;
   input clk;
   input rst;
   input par_typ;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire N5;
   wire n2;
   wire n3;
   wire n4;
   wire n5;

   SDFFRQX1M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_bit), 
	.D(N5), 
	.CK(clk));
   CLKXOR2X2M U5 (.Y(n5), 
	.B(p_data[6]), 
	.A(p_data[7]));
   XOR3XLM U6 (.Y(N5), 
	.C(n3), 
	.B(par_typ), 
	.A(n2));
   XOR3XLM U7 (.Y(n3), 
	.C(n4), 
	.B(p_data[0]), 
	.A(p_data[1]));
   XOR3XLM U8 (.Y(n2), 
	.C(n5), 
	.B(p_data[4]), 
	.A(p_data[5]));
   XNOR2X2M U9 (.Y(n4), 
	.B(p_data[2]), 
	.A(p_data[3]));
endmodule

module TX_mux_test_1 (
	clk, 
	rst, 
	mux_sel, 
	ser_data, 
	par_bit, 
	tx_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input [2:0] mux_sel;
   input ser_data;
   input par_bit;
   output tx_out;
   input test_si;
   input test_se;

   // Internal wires
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n3;
   wire n8;

   SDFFRQX4M tx_out_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(tx_out), 
	.D(n7), 
	.CK(clk));
   INVX2M U5 (.Y(n8), 
	.A(mux_sel[0]));
   AOI2B1X1M U6 (.Y(n6), 
	.B0(n8), 
	.A1N(par_bit), 
	.A0(mux_sel[1]));
   AO21XLM U7 (.Y(n7), 
	.B0(n4), 
	.A1(mux_sel[2]), 
	.A0(tx_out));
   OAI32X1M U8 (.Y(n4), 
	.B1(n5), 
	.B0(mux_sel[2]), 
	.A2(mux_sel[0]), 
	.A1(mux_sel[1]), 
	.A0(n3));
   INVX2M U9 (.Y(n3), 
	.A(mux_sel[2]));
   AOI31X1M U10 (.Y(n5), 
	.B0(n6), 
	.A2(ser_data), 
	.A1(n8), 
	.A0(mux_sel[1]));
endmodule

module TX_fsm_datawidth8_test_1 (
	clk, 
	rst, 
	data_valid, 
	par_en, 
	ser_done, 
	ser_en, 
	busy, 
	mux_sel, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN26_SYNC_UART_SCAN_RST);
   input clk;
   input rst;
   input data_valid;
   input par_en;
   input ser_done;
   output ser_en;
   output busy;
   output [2:0] mux_sel;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN26_SYNC_UART_SCAN_RST;

   // Internal wires
   wire n9;
   wire n10;
   wire n8;
   wire n11;
   wire n12;
   wire n14;
   wire n18;
   wire [2:0] current;
   wire [2:0] next;

   assign mux_sel[0] = next[0] ;

   SDFFRQX1M \current_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN26_SYNC_UART_SCAN_RST), 
	.Q(current[0]), 
	.D(next[0]), 
	.CK(clk));
   SDFFRQX2M \current_reg[1]  (.SI(n11), 
	.SE(test_se), 
	.RN(FE_OFN26_SYNC_UART_SCAN_RST), 
	.Q(current[1]), 
	.D(next[1]), 
	.CK(clk));
   AOI21X2M U6 (.Y(ser_en), 
	.B0(n9), 
	.A1(ser_done), 
	.A0(current[1]));
   OAI211X2M U7 (.Y(n10), 
	.C0(current[1]), 
	.B0(test_so), 
	.A1(n18), 
	.A0(current[0]));
   AOI211X2M U12 (.Y(mux_sel[1]), 
	.C0(n12), 
	.B0(n9), 
	.A1(n14), 
	.A0(n18));
   INVX2M U13 (.Y(n11), 
	.A(current[0]));
   OAI21X2M U14 (.Y(mux_sel[2]), 
	.B0(test_so), 
	.A1(current[1]), 
	.A0(n11));
   NAND2X2M U15 (.Y(n9), 
	.B(test_so), 
	.A(n11));
   OAI222X1M U16 (.Y(next[2]), 
	.C1(test_so), 
	.C0(n12), 
	.B1(test_so), 
	.B0(n11), 
	.A1(n8), 
	.A0(data_valid));
   INVX2M U17 (.Y(n8), 
	.A(mux_sel[2]));
   INVX2M U18 (.Y(next[0]), 
	.A(n10));
   OAI21BX1M U19 (.Y(next[1]), 
	.B0N(ser_en), 
	.A1(n14), 
	.A0(n9));
   INVX2M U21 (.Y(n12), 
	.A(current[1]));
   AOI21X2M U22 (.Y(busy), 
	.B0(current[2]), 
	.A1(n11), 
	.A0(n12));
   INVX2M U23 (.Y(n14), 
	.A(par_en));
   CLKBUFX1M U24 (.Y(n18), 
	.A(ser_done));
   SDFFSX1M \current_reg[2]  (.SN(rst), 
	.SI(n12), 
	.SE(test_se), 
	.QN(test_so), 
	.Q(current[2]), 
	.D(next[2]), 
	.CK(clk));
endmodule

module UART_TX_DATAWIDTH8_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	PAR_TYP, 
	DATA_VALID, 
	PAR_EN, 
	BUSY, 
	TX_OUT, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN3_SYNC_UART_SCAN_RST, 
	FE_OFN6_SE, 
	FE_OFN8_SE, 
	FE_OFN14_SYNC_UART_SCAN_RST, 
	FE_OFN26_SYNC_UART_SCAN_RST);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input PAR_TYP;
   input DATA_VALID;
   input PAR_EN;
   output BUSY;
   output TX_OUT;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN3_SYNC_UART_SCAN_RST;
   input FE_OFN6_SE;
   input FE_OFN8_SE;
   input FE_OFN14_SYNC_UART_SCAN_RST;
   input FE_OFN26_SYNC_UART_SCAN_RST;

   // Internal wires
   wire SER_EN;
   wire SER_DONE;
   wire SER_DATA;
   wire PAR_BIT;
   wire n3;
   wire [2:0] MUX_SEL;

   assign test_so1 = SER_DONE ;

   TX_serializer_datawidth8_test_1 u0_serializer (.clk(CLK), 
	.rst(RST), 
	.p_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.data_valid(DATA_VALID), 
	.ser_en(SER_EN), 
	.ser_done(SER_DONE), 
	.ser_data(SER_DATA), 
	.test_si(PAR_BIT), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_UART_SCAN_RST(FE_OFN3_SYNC_UART_SCAN_RST), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN8_SE(FE_OFN8_SE));
   TX_parity_datawidth8_test_1 u0_parity (.p_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.clk(CLK), 
	.rst(FE_OFN3_SYNC_UART_SCAN_RST), 
	.par_typ(PAR_TYP), 
	.par_bit(PAR_BIT), 
	.test_si(n3), 
	.test_se(FE_OFN6_SE));
   TX_mux_test_1 u0_mux (.clk(CLK), 
	.rst(FE_OFN14_SYNC_UART_SCAN_RST), 
	.mux_sel({ MUX_SEL[2],
		MUX_SEL[1],
		MUX_SEL[0] }), 
	.ser_data(SER_DATA), 
	.par_bit(PAR_BIT), 
	.tx_out(TX_OUT), 
	.test_si(test_si2), 
	.test_se(FE_OFN6_SE));
   TX_fsm_datawidth8_test_1 u0_fsm (.clk(CLK), 
	.rst(FE_OFN3_SYNC_UART_SCAN_RST), 
	.data_valid(DATA_VALID), 
	.par_en(PAR_EN), 
	.ser_done(SER_DONE), 
	.ser_en(SER_EN), 
	.busy(BUSY), 
	.mux_sel({ MUX_SEL[2],
		MUX_SEL[1],
		MUX_SEL[0] }), 
	.test_si(test_si1), 
	.test_so(n3), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN26_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST));
endmodule

module UART_test_1 (
	clk_rx, 
	clk_tx, 
	rst, 
	RX_IN, 
	prescale, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	data_Valid, 
	Parity_Error, 
	Stop_Error, 
	str_glitch, 
	F_EMPTY, 
	RD_DATA, 
	TX_OUT, 
	BUSY, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN3_SYNC_UART_SCAN_RST, 
	FE_OFN10_SE, 
	FE_OFN6_SE, 
	FE_OFN7_SE, 
	FE_OFN8_SE, 
	FE_OFN14_SYNC_UART_SCAN_RST, 
	FE_OFN26_SYNC_UART_SCAN_RST);
   input clk_rx;
   input clk_tx;
   input rst;
   input RX_IN;
   input [5:0] prescale;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output data_Valid;
   output Parity_Error;
   output Stop_Error;
   output str_glitch;
   input F_EMPTY;
   input [7:0] RD_DATA;
   output TX_OUT;
   output BUSY;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN3_SYNC_UART_SCAN_RST;
   input FE_OFN10_SE;
   input FE_OFN6_SE;
   input FE_OFN7_SE;
   input FE_OFN8_SE;
   input FE_OFN14_SYNC_UART_SCAN_RST;
   input FE_OFN26_SYNC_UART_SCAN_RST;

   // Internal wires
   wire n4;

   UART_RX_DATAWIDTH8_test_1 u0_UART_RX (.rst(FE_OFN26_SYNC_UART_SCAN_RST), 
	.clk_RX(clk_rx), 
	.RX_IN(RX_IN), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Parity_Error(Parity_Error), 
	.Stop_Error(Stop_Error), 
	.DATA_VALID(data_Valid), 
	.str_glitch(str_glitch), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(FE_OFN10_SE), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN7_SE(FE_OFN7_SE));
   UART_TX_DATAWIDTH8_test_1 u0_UART_TX (.CLK(clk_tx), 
	.RST(rst), 
	.P_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.PAR_TYP(PAR_TYP), 
	.DATA_VALID(F_EMPTY), 
	.PAR_EN(PAR_EN), 
	.BUSY(BUSY), 
	.TX_OUT(TX_OUT), 
	.test_si2(test_si2), 
	.test_si1(n4), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_UART_SCAN_RST(FE_OFN3_SYNC_UART_SCAN_RST), 
	.FE_OFN6_SE(FE_OFN6_SE), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.FE_OFN14_SYNC_UART_SCAN_RST(FE_OFN3_SYNC_UART_SCAN_RST), 
	.FE_OFN26_SYNC_UART_SCAN_RST(FE_OFN26_SYNC_UART_SCAN_RST));
endmodule

module sys_ctrl_test_1 (
	clk, 
	rst, 
	ALU_OUT, 
	OUT_VALID, 
	FIFO_FULL, 
	pulse_en, 
	cmd, 
	RdData, 
	RdData_Valid, 
	WrEn, 
	RdEn, 
	Wr_D, 
	ALU_FUN, 
	ALU_EN, 
	CLK_EN, 
	CLKDIV_EN, 
	Address, 
	WR_INC, 
	WrData, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_REF_SCAN_RST, 
	FE_OFN6_SE, 
	FE_OFN9_SE, 
	FE_OFN11_SYNC_REF_SCAN_RST, 
	FE_OFN16_SYNC_REF_SCAN_RST);
   input clk;
   input rst;
   input [15:0] ALU_OUT;
   input OUT_VALID;
   input FIFO_FULL;
   input pulse_en;
   input [7:0] cmd;
   input [7:0] RdData;
   input RdData_Valid;
   output WrEn;
   output RdEn;
   output [7:0] Wr_D;
   output [3:0] ALU_FUN;
   output ALU_EN;
   output CLK_EN;
   output CLKDIV_EN;
   output [3:0] Address;
   output WR_INC;
   output [7:0] WrData;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_REF_SCAN_RST;
   input FE_OFN6_SE;
   input FE_OFN9_SE;
   input FE_OFN11_SYNC_REF_SCAN_RST;
   input FE_OFN16_SYNC_REF_SCAN_RST;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N209;
   wire N210;
   wire N211;
   wire N212;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n17;
   wire n18;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n48;
   wire n49;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire [3:0] current;
   wire [3:0] next;

   assign test_so = n85 ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   NOR3BX2M U30 (.Y(n35), 
	.C(n44), 
	.B(n33), 
	.AN(n59));
   NAND3BX2M U88 (.Y(ALU_EN), 
	.C(n45), 
	.B(n74), 
	.AN(n65));
   SDFFRHQX8M \Address_reg[3]  (.SI(Address[2]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN16_SYNC_REF_SCAN_RST), 
	.Q(Address[3]), 
	.D(N212), 
	.CK(clk));
   SDFFRHQX8M \Address_reg[2]  (.SI(Address[1]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN16_SYNC_REF_SCAN_RST), 
	.Q(Address[2]), 
	.D(N211), 
	.CK(clk));
   SDFFRQX4M \current_reg[3]  (.SI(n49), 
	.SE(FE_OFN6_SE), 
	.RN(rst), 
	.Q(current[3]), 
	.D(next[3]), 
	.CK(clk));
   SDFFRQX4M \current_reg[1]  (.SI(n30), 
	.SE(test_se), 
	.RN(FE_OFN16_SYNC_REF_SCAN_RST), 
	.Q(current[1]), 
	.D(next[1]), 
	.CK(clk));
   SDFFRQX1M \Address_reg[0]  (.SI(test_si), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(Address[0]), 
	.D(N209), 
	.CK(clk));
   SDFFRQX1M \Address_reg[1]  (.SI(Address[0]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN16_SYNC_REF_SCAN_RST), 
	.Q(Address[1]), 
	.D(N210), 
	.CK(clk));
   SDFFRQX2M \current_reg[2]  (.SI(n84), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(current[2]), 
	.D(next[2]), 
	.CK(clk));
   SDFFRQX4M \current_reg[0]  (.SI(Address[3]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN16_SYNC_REF_SCAN_RST), 
	.Q(current[0]), 
	.D(next[0]), 
	.CK(clk));
   INVX2M U15 (.Y(n29), 
	.A(ALU_EN));
   NOR2X2M U16 (.Y(ALU_FUN[2]), 
	.B(n91), 
	.A(n29));
   NOR4X1M U17 (.Y(n56), 
	.D(cmd[4]), 
	.C(cmd[6]), 
	.B(cmd[2]), 
	.A(n57));
   NAND4X1M U18 (.Y(n46), 
	.D(n47), 
	.C(n26), 
	.B(cmd[0]), 
	.A(cmd[4]));
   NAND2BX2M U22 (.Y(n76), 
	.B(n78), 
	.AN(n77));
   OAI31X1M U24 (.Y(n77), 
	.B0(n86), 
	.A2(n39), 
	.A1(n33), 
	.A0(n78));
   NOR2X2M U25 (.Y(ALU_FUN[0]), 
	.B(n93), 
	.A(n29));
   NOR2X2M U26 (.Y(ALU_FUN[1]), 
	.B(n92), 
	.A(n29));
   NOR2X2M U27 (.Y(n54), 
	.B(n49), 
	.A(n85));
   CLKINVX1M U28 (.Y(n30), 
	.A(current[0]));
   INVX2M U29 (.Y(n91), 
	.A(cmd[2]));
   INVX2M U31 (.Y(n90), 
	.A(cmd[3]));
   NOR3X2M U32 (.Y(n81), 
	.C(n49), 
	.B(current[3]), 
	.A(current[1]));
   INVX2M U33 (.Y(n86), 
	.A(pulse_en));
   INVX2M U34 (.Y(n28), 
	.A(n39));
   NAND2X2M U35 (.Y(n39), 
	.B(n80), 
	.A(n41));
   CLKINVX2M U36 (.Y(n27), 
	.A(WrEn));
   INVX2M U37 (.Y(n26), 
	.A(n58));
   INVX2M U38 (.Y(RdEn), 
	.A(n75));
   INVX2M U39 (.Y(n24), 
	.A(FIFO_FULL));
   OAI31X2M U41 (.Y(n65), 
	.B0(n60), 
	.A2(n30), 
	.A1(n49), 
	.A0(n83));
   INVX2M U42 (.Y(n83), 
	.A(n63));
   NAND2X2M U43 (.Y(n74), 
	.B(n30), 
	.A(n82));
   NOR2X2M U44 (.Y(ALU_FUN[3]), 
	.B(n90), 
	.A(n29));
   NAND2X2M U45 (.Y(n41), 
	.B(n84), 
	.A(n54));
   NAND2X2M U46 (.Y(n75), 
	.B(n30), 
	.A(n81));
   NAND2X2M U47 (.Y(n78), 
	.B(n75), 
	.A(n40));
   CLKINVX2M U48 (.Y(n23), 
	.A(n73));
   NOR2BX2M U49 (.Y(n33), 
	.B(n30), 
	.AN(n81));
   NAND2X2M U50 (.Y(n80), 
	.B(n30), 
	.A(n54));
   NAND2X2M U51 (.Y(WrEn), 
	.B(n41), 
	.A(n62));
   NAND4X2M U52 (.Y(n62), 
	.D(n86), 
	.C(n49), 
	.B(n30), 
	.A(n63));
   NAND4X2M U53 (.Y(n59), 
	.D(n89), 
	.C(n93), 
	.B(n47), 
	.A(n26));
   NOR2X2M U54 (.Y(Wr_D[0]), 
	.B(n93), 
	.A(n27));
   NOR2X2M U55 (.Y(Wr_D[1]), 
	.B(n92), 
	.A(n27));
   NOR2X2M U56 (.Y(Wr_D[2]), 
	.B(n91), 
	.A(n27));
   NOR2X2M U57 (.Y(Wr_D[3]), 
	.B(n90), 
	.A(n27));
   NOR2X2M U58 (.Y(Wr_D[4]), 
	.B(n89), 
	.A(n27));
   NOR2X2M U59 (.Y(Wr_D[5]), 
	.B(n88), 
	.A(n27));
   NOR2X2M U60 (.Y(Wr_D[7]), 
	.B(n87), 
	.A(n27));
   NAND3X2M U61 (.Y(n58), 
	.C(n50), 
	.B(n84), 
	.A(n30));
   OAI21X2M U63 (.Y(n51), 
	.B0(n45), 
	.A1(n25), 
	.A0(n74));
   NOR4X1M U64 (.Y(n55), 
	.D(n88), 
	.C(n92), 
	.B(n58), 
	.A(n87));
   OAI211X2M U65 (.Y(WR_INC), 
	.C0(n73), 
	.B0(n60), 
	.A1(n25), 
	.A0(n74));
   NOR2X2M U68 (.Y(n63), 
	.B(current[3]), 
	.A(n84));
   CLKINVX2M U69 (.Y(n84), 
	.A(current[1]));
   NOR3X2M U70 (.Y(n82), 
	.C(n85), 
	.B(current[2]), 
	.A(current[1]));
   CLKINVX2M U71 (.Y(n49), 
	.A(current[2]));
   NAND4X2M U72 (.Y(n60), 
	.D(n49), 
	.C(current[3]), 
	.B(current[0]), 
	.A(current[1]));
   NAND2X2M U73 (.Y(n45), 
	.B(current[0]), 
	.A(n82));
   INVX2M U74 (.Y(n85), 
	.A(current[3]));
   CLKINVX2M U75 (.Y(n93), 
	.A(cmd[0]));
   CLKINVX2M U76 (.Y(n92), 
	.A(cmd[1]));
   OAI2BB2X1M U77 (.Y(N209), 
	.B1(n77), 
	.B0(n79), 
	.A1N(n77), 
	.A0N(Address[0]));
   AOI21BX2M U78 (.Y(n79), 
	.B0N(n80), 
	.A1(n78), 
	.A0(cmd[0]));
   NAND3X2M U79 (.Y(n40), 
	.C(n63), 
	.B(n49), 
	.A(current[0]));
   OAI2BB2X1M U80 (.Y(N210), 
	.B1(n76), 
	.B0(n92), 
	.A1N(n77), 
	.A0N(Address[1]));
   OAI2BB2X1M U81 (.Y(N212), 
	.B1(n76), 
	.B0(n90), 
	.A1N(n77), 
	.A0N(Address[3]));
   OAI2BB2X1M U82 (.Y(N211), 
	.B1(n76), 
	.B0(n91), 
	.A1N(n77), 
	.A0N(Address[2]));
   OAI2BB1X2M U83 (.Y(WrData[0]), 
	.B0(n72), 
	.A1N(n51), 
	.A0N(ALU_OUT[0]));
   AOI22X1M U84 (.Y(n72), 
	.B1(n65), 
	.B0(ALU_OUT[8]), 
	.A1(n23), 
	.A0(RdData[0]));
   OAI2BB1X2M U85 (.Y(WrData[1]), 
	.B0(n71), 
	.A1N(n51), 
	.A0N(ALU_OUT[1]));
   AOI22X1M U86 (.Y(n71), 
	.B1(n65), 
	.B0(ALU_OUT[9]), 
	.A1(n23), 
	.A0(RdData[1]));
   OAI2BB1X2M U87 (.Y(WrData[2]), 
	.B0(n70), 
	.A1N(n51), 
	.A0N(ALU_OUT[2]));
   AOI22X1M U89 (.Y(n70), 
	.B1(n65), 
	.B0(ALU_OUT[10]), 
	.A1(n23), 
	.A0(RdData[2]));
   OAI2BB1X2M U90 (.Y(WrData[3]), 
	.B0(n69), 
	.A1N(n51), 
	.A0N(ALU_OUT[3]));
   AOI22X1M U91 (.Y(n69), 
	.B1(n65), 
	.B0(ALU_OUT[11]), 
	.A1(n23), 
	.A0(RdData[3]));
   OAI2BB1X2M U92 (.Y(WrData[4]), 
	.B0(n68), 
	.A1N(n51), 
	.A0N(ALU_OUT[4]));
   AOI22X1M U93 (.Y(n68), 
	.B1(n65), 
	.B0(ALU_OUT[12]), 
	.A1(n23), 
	.A0(RdData[4]));
   OAI2BB1X2M U94 (.Y(WrData[5]), 
	.B0(n67), 
	.A1N(n51), 
	.A0N(ALU_OUT[5]));
   AOI22X1M U95 (.Y(n67), 
	.B1(n65), 
	.B0(ALU_OUT[13]), 
	.A1(n23), 
	.A0(RdData[5]));
   OAI2BB1X2M U96 (.Y(WrData[6]), 
	.B0(n66), 
	.A1N(n51), 
	.A0N(ALU_OUT[6]));
   AOI22X1M U97 (.Y(n66), 
	.B1(n65), 
	.B0(ALU_OUT[14]), 
	.A1(n23), 
	.A0(RdData[6]));
   OAI2BB1X2M U98 (.Y(WrData[7]), 
	.B0(n64), 
	.A1N(n51), 
	.A0N(ALU_OUT[7]));
   AOI22X1M U99 (.Y(n64), 
	.B1(n65), 
	.B0(ALU_OUT[15]), 
	.A1(n23), 
	.A0(RdData[7]));
   NAND3BX2M U100 (.Y(n73), 
	.C(RdData_Valid), 
	.B(n24), 
	.AN(n75));
   NOR2X2M U101 (.Y(n50), 
	.B(current[3]), 
	.A(current[2]));
   OAI21X2M U102 (.Y(n44), 
	.B0(n60), 
	.A1(n34), 
	.A0(pulse_en));
   NAND4BX1M U103 (.Y(next[0]), 
	.D(n53), 
	.C(n52), 
	.B(n35), 
	.AN(n51));
   OAI211X2M U104 (.Y(n53), 
	.C0(n50), 
	.B0(current[0]), 
	.A1(n86), 
	.A0(n84));
   AOI32X1M U105 (.Y(n52), 
	.B1(n56), 
	.B0(n55), 
	.A2(n54), 
	.A1(n84), 
	.A0(n30));
   AND2X2M U106 (.Y(Wr_D[6]), 
	.B(WrEn), 
	.A(cmd[6]));
   NAND3X2M U107 (.Y(n34), 
	.C(current[1]), 
	.B(n54), 
	.A(current[0]));
   NAND3X2M U108 (.Y(next[2]), 
	.C(n36), 
	.B(n28), 
	.A(n35));
   AOI32X1M U109 (.Y(n36), 
	.B1(n26), 
	.B0(n38), 
	.A2(current[2]), 
	.A1(n30), 
	.A0(n37));
   NAND3X2M U110 (.Y(n37), 
	.C(pulse_en), 
	.B(n84), 
	.A(n24));
   INVX2M U111 (.Y(n89), 
	.A(cmd[4]));
   AND4X2M U112 (.Y(n47), 
	.D(n61), 
	.C(cmd[7]), 
	.B(cmd[3]), 
	.A(cmd[6]));
   NOR3X2M U113 (.Y(n61), 
	.C(cmd[1]), 
	.B(cmd[5]), 
	.A(n91));
   NAND4X2M U114 (.Y(next[1]), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   AOI33X2M U115 (.Y(n42), 
	.B2(current[1]), 
	.B1(n86), 
	.B0(n30), 
	.A2(pulse_en), 
	.A1(current[0]), 
	.A0(n50));
   AOI211X2M U116 (.Y(n43), 
	.C0(n31), 
	.B0(n44), 
	.A1(n26), 
	.A0(n38));
   NAND2X2M U117 (.Y(n31), 
	.B(n46), 
	.A(n45));
   INVX2M U118 (.Y(n88), 
	.A(cmd[5]));
   INVX2M U119 (.Y(n87), 
	.A(cmd[7]));
   NAND3BX2M U120 (.Y(next[3]), 
	.C(n32), 
	.B(n28), 
	.AN(n31));
   AOI221XLM U121 (.Y(n32), 
	.C0(n48), 
	.B1(n30), 
	.B0(current[3]), 
	.A1(n33), 
	.A0(pulse_en));
   INVX2M U122 (.Y(n48), 
	.A(n34));
   NAND2X2M U123 (.Y(n57), 
	.B(n93), 
	.A(cmd[3]));
   INVX2M U124 (.Y(n25), 
	.A(OUT_VALID));
   NOR2X2M U125 (.Y(n38), 
	.B(n18), 
	.A(n17));
   OR4X1M U126 (.Y(n17), 
	.D(n88), 
	.C(n92), 
	.B(n89), 
	.A(n93));
   OR4X1M U127 (.Y(n18), 
	.D(n87), 
	.C(n90), 
	.B(cmd[2]), 
	.A(cmd[6]));
   INVX2M U3 (.Y(CLKDIV_EN), 
	.A(LTIE_LTIELO_NET));
   INVX2M U5 (.Y(CLK_EN), 
	.A(LTIE_LTIELO_NET));
endmodule

module REG_FILE_test_1 (
	WrEn, 
	RdEn, 
	clk, 
	rst, 
	Address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_REF_SCAN_RST, 
	FE_OFN5_SE, 
	FE_OFN7_SE, 
	FE_OFN9_SE, 
	FE_OFN11_SYNC_REF_SCAN_RST, 
	FE_OFN18_SYNC_REF_SCAN_RST, 
	FE_OFN22_SYNC_REF_SCAN_RST, 
	FE_OFN23_SYNC_REF_SCAN_RST, 
	FE_OFN24_SYNC_REF_SCAN_RST, 
	REF_SCAN_CLK__L3_N2, 
	REF_SCAN_CLK__L3_N3, 
	REF_SCAN_CLK__L3_N4, 
	REF_SCAN_CLK__L3_N5);
   input WrEn;
   input RdEn;
   input clk;
   input rst;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_REF_SCAN_RST;
   input FE_OFN5_SE;
   input FE_OFN7_SE;
   input FE_OFN9_SE;
   input FE_OFN11_SYNC_REF_SCAN_RST;
   input FE_OFN18_SYNC_REF_SCAN_RST;
   input FE_OFN22_SYNC_REF_SCAN_RST;
   input FE_OFN23_SYNC_REF_SCAN_RST;
   input FE_OFN24_SYNC_REF_SCAN_RST;
   input REF_SCAN_CLK__L3_N2;
   input REF_SCAN_CLK__L3_N3;
   input REF_SCAN_CLK__L3_N4;
   input REF_SCAN_CLK__L3_N5;

   // Internal wires
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire n529;
   wire n3;
   wire \reg_file[15][6] ;
   wire \reg_file[15][5] ;
   wire \reg_file[15][4] ;
   wire \reg_file[15][3] ;
   wire \reg_file[15][2] ;
   wire \reg_file[15][0] ;
   wire \reg_file[14][7] ;
   wire \reg_file[14][6] ;
   wire \reg_file[14][5] ;
   wire \reg_file[14][4] ;
   wire \reg_file[14][3] ;
   wire \reg_file[14][2] ;
   wire \reg_file[14][1] ;
   wire \reg_file[14][0] ;
   wire \reg_file[13][7] ;
   wire \reg_file[13][6] ;
   wire \reg_file[13][5] ;
   wire \reg_file[13][4] ;
   wire \reg_file[13][3] ;
   wire \reg_file[13][2] ;
   wire \reg_file[13][1] ;
   wire \reg_file[13][0] ;
   wire \reg_file[12][7] ;
   wire \reg_file[12][6] ;
   wire \reg_file[12][5] ;
   wire \reg_file[12][4] ;
   wire \reg_file[12][3] ;
   wire \reg_file[12][2] ;
   wire \reg_file[12][1] ;
   wire \reg_file[12][0] ;
   wire \reg_file[11][7] ;
   wire \reg_file[11][6] ;
   wire \reg_file[11][5] ;
   wire \reg_file[11][4] ;
   wire \reg_file[11][3] ;
   wire \reg_file[11][2] ;
   wire \reg_file[11][1] ;
   wire \reg_file[11][0] ;
   wire \reg_file[10][7] ;
   wire \reg_file[10][6] ;
   wire \reg_file[10][5] ;
   wire \reg_file[10][4] ;
   wire \reg_file[10][3] ;
   wire \reg_file[10][2] ;
   wire \reg_file[10][1] ;
   wire \reg_file[10][0] ;
   wire \reg_file[9][7] ;
   wire \reg_file[9][6] ;
   wire \reg_file[9][5] ;
   wire \reg_file[9][4] ;
   wire \reg_file[9][3] ;
   wire \reg_file[9][2] ;
   wire \reg_file[9][1] ;
   wire \reg_file[9][0] ;
   wire \reg_file[8][7] ;
   wire \reg_file[8][6] ;
   wire \reg_file[8][5] ;
   wire \reg_file[8][4] ;
   wire \reg_file[8][3] ;
   wire \reg_file[8][2] ;
   wire \reg_file[8][1] ;
   wire \reg_file[8][0] ;
   wire \reg_file[7][7] ;
   wire \reg_file[7][6] ;
   wire \reg_file[7][5] ;
   wire \reg_file[7][4] ;
   wire \reg_file[7][3] ;
   wire \reg_file[7][2] ;
   wire \reg_file[7][1] ;
   wire \reg_file[7][0] ;
   wire \reg_file[6][7] ;
   wire \reg_file[6][6] ;
   wire \reg_file[6][5] ;
   wire \reg_file[6][4] ;
   wire \reg_file[6][3] ;
   wire \reg_file[6][2] ;
   wire \reg_file[6][1] ;
   wire \reg_file[6][0] ;
   wire \reg_file[5][7] ;
   wire \reg_file[5][6] ;
   wire \reg_file[5][5] ;
   wire \reg_file[5][4] ;
   wire \reg_file[5][3] ;
   wire \reg_file[5][2] ;
   wire \reg_file[5][1] ;
   wire \reg_file[5][0] ;
   wire \reg_file[4][7] ;
   wire \reg_file[4][6] ;
   wire \reg_file[4][5] ;
   wire \reg_file[4][3] ;
   wire \reg_file[4][2] ;
   wire \reg_file[4][1] ;
   wire \reg_file[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n161;
   wire n164;
   wire n165;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n176;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n140;
   wire n419;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n463;
   wire n464;
   wire n465;
   wire n467;
   wire n469;
   wire n471;
   wire n473;
   wire n483;
   wire n485;
   wire n487;
   wire n489;
   wire n499;
   wire n500;
   wire n501;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n1;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;

   SDFFRHQX8M \reg_file_reg[2][6]  (.SI(REG2[5]), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[6]), 
	.D(n209), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRHQX8M \reg_file_reg[2][5]  (.SI(REG2[4]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[5]), 
	.D(n208), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRHQX8M \reg_file_reg[1][2]  (.SI(REG1[1]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG1[2]), 
	.D(n197), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRHQX8M \reg_file_reg[1][0]  (.SI(REG0[7]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG1[0]), 
	.D(n195), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[3][7]  (.SI(REG3[6]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG3[7]), 
	.D(n218), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[3][4]  (.SI(REG3[3]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG3[4]), 
	.D(n215), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[3][2]  (.SI(REG3[1]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG3[2]), 
	.D(n213), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[3][3]  (.SI(REG3[2]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(REG3[3]), 
	.D(n214), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[3][6]  (.SI(REG3[5]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(REG3[6]), 
	.D(n217), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[3][1]  (.SI(REG3[0]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG3[1]), 
	.D(n212), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[2][4]  (.SI(REG2[3]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[4]), 
	.D(n207), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[0][5]  (.SI(REG0[4]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[5]), 
	.D(n192), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[0][6]  (.SI(REG0[5]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[6]), 
	.D(n193), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[0][7]  (.SI(REG0[6]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[7]), 
	.D(n194), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[7]), 
	.D(n186), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[6]), 
	.D(n185), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[5]), 
	.D(n184), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[4]), 
	.D(n183), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[3]), 
	.D(n182), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[2]), 
	.D(n181), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[1]), 
	.D(n180), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M \RdData_reg[0]  (.SI(RdData_VLD), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(RdData[0]), 
	.D(n179), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M RdData_VLD_reg (.SI(test_si1), 
	.SE(FE_OFN5_SE), 
	.RN(rst), 
	.Q(RdData_VLD), 
	.D(n178), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX1M \reg_file_reg[15][7]  (.SI(\reg_file[15][6] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(test_so3), 
	.D(n314), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][6]  (.SI(\reg_file[15][5] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][6] ), 
	.D(n313), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][5]  (.SI(\reg_file[15][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][5] ), 
	.D(n312), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][4]  (.SI(\reg_file[15][3] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][4] ), 
	.D(n311), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][3]  (.SI(\reg_file[15][2] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][3] ), 
	.D(n310), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][2]  (.SI(test_si3), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][2] ), 
	.D(n309), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][1]  (.SI(\reg_file[15][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(test_so2), 
	.D(n308), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[15][0]  (.SI(\reg_file[14][7] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[15][0] ), 
	.D(n307), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][7]  (.SI(\reg_file[13][6] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][7] ), 
	.D(n298), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][6]  (.SI(\reg_file[13][5] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][6] ), 
	.D(n297), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][5]  (.SI(\reg_file[13][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][5] ), 
	.D(n296), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][4]  (.SI(\reg_file[13][3] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][4] ), 
	.D(n295), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][3]  (.SI(\reg_file[13][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][3] ), 
	.D(n294), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[13][2]  (.SI(\reg_file[13][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][2] ), 
	.D(n293), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[13][1]  (.SI(\reg_file[13][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][1] ), 
	.D(n292), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[13][0]  (.SI(\reg_file[12][7] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[13][0] ), 
	.D(n291), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[14][7]  (.SI(\reg_file[14][6] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][7] ), 
	.D(n306), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][6]  (.SI(\reg_file[14][5] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][6] ), 
	.D(n305), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][5]  (.SI(\reg_file[14][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][5] ), 
	.D(n304), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][4]  (.SI(\reg_file[14][3] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][4] ), 
	.D(n303), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][3]  (.SI(\reg_file[14][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][3] ), 
	.D(n302), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][2]  (.SI(\reg_file[14][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][2] ), 
	.D(n301), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][1]  (.SI(\reg_file[14][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][1] ), 
	.D(n300), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[14][0]  (.SI(\reg_file[13][7] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[14][0] ), 
	.D(n299), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[12][7]  (.SI(\reg_file[12][6] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][7] ), 
	.D(n290), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[12][6]  (.SI(\reg_file[12][5] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][6] ), 
	.D(n289), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[12][5]  (.SI(\reg_file[12][4] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][5] ), 
	.D(n288), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[12][4]  (.SI(\reg_file[12][3] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][4] ), 
	.D(n287), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX1M \reg_file_reg[12][3]  (.SI(\reg_file[12][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][3] ), 
	.D(n286), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[12][2]  (.SI(\reg_file[12][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][2] ), 
	.D(n285), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[12][1]  (.SI(\reg_file[12][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][1] ), 
	.D(n284), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[12][0]  (.SI(\reg_file[11][7] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[12][0] ), 
	.D(n283), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[11][7]  (.SI(\reg_file[11][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][7] ), 
	.D(n282), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][6]  (.SI(\reg_file[11][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][6] ), 
	.D(n281), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][5]  (.SI(\reg_file[11][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][5] ), 
	.D(n280), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][4]  (.SI(\reg_file[11][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][4] ), 
	.D(n279), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][3]  (.SI(\reg_file[11][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][3] ), 
	.D(n278), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][2]  (.SI(\reg_file[11][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][2] ), 
	.D(n277), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[11][1]  (.SI(\reg_file[11][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][1] ), 
	.D(n276), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][7]  (.SI(\reg_file[9][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][7] ), 
	.D(n266), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][6]  (.SI(\reg_file[9][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][6] ), 
	.D(n265), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][5]  (.SI(\reg_file[9][4] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][5] ), 
	.D(n264), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][4]  (.SI(\reg_file[9][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][4] ), 
	.D(n263), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][3]  (.SI(\reg_file[9][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][3] ), 
	.D(n262), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][2]  (.SI(\reg_file[9][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][2] ), 
	.D(n261), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][1]  (.SI(\reg_file[9][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][1] ), 
	.D(n260), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[10][7]  (.SI(\reg_file[10][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][7] ), 
	.D(n274), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][6]  (.SI(\reg_file[10][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][6] ), 
	.D(n273), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][5]  (.SI(\reg_file[10][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][5] ), 
	.D(n272), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][4]  (.SI(\reg_file[10][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][4] ), 
	.D(n271), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][3]  (.SI(\reg_file[10][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][3] ), 
	.D(n270), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][2]  (.SI(\reg_file[10][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][2] ), 
	.D(n269), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][1]  (.SI(\reg_file[10][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][1] ), 
	.D(n268), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][7]  (.SI(\reg_file[8][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][7] ), 
	.D(n258), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][6]  (.SI(\reg_file[8][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][6] ), 
	.D(n257), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][5]  (.SI(\reg_file[8][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][5] ), 
	.D(n256), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][4]  (.SI(\reg_file[8][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][4] ), 
	.D(n255), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][3]  (.SI(\reg_file[8][2] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][3] ), 
	.D(n254), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][2]  (.SI(\reg_file[8][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][2] ), 
	.D(n253), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][1]  (.SI(\reg_file[8][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][1] ), 
	.D(n252), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[11][0]  (.SI(\reg_file[10][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[11][0] ), 
	.D(n275), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[9][0]  (.SI(\reg_file[8][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[9][0] ), 
	.D(n259), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[10][0]  (.SI(\reg_file[9][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[10][0] ), 
	.D(n267), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[8][0]  (.SI(\reg_file[7][7] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[8][0] ), 
	.D(n251), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[6][7]  (.SI(\reg_file[6][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][7] ), 
	.D(n242), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[6][6]  (.SI(\reg_file[6][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][6] ), 
	.D(n241), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[6][5]  (.SI(\reg_file[6][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][5] ), 
	.D(n240), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[6][4]  (.SI(\reg_file[6][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][4] ), 
	.D(n239), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[6][3]  (.SI(\reg_file[6][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][3] ), 
	.D(n238), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[6][2]  (.SI(\reg_file[6][1] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][2] ), 
	.D(n237), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[6][1]  (.SI(\reg_file[6][0] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][1] ), 
	.D(n236), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[6][0]  (.SI(\reg_file[5][7] ), 
	.SE(test_se), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[6][0] ), 
	.D(n235), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[4][7]  (.SI(\reg_file[4][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][7] ), 
	.D(n226), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[4][6]  (.SI(\reg_file[4][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][6] ), 
	.D(n225), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[4][5]  (.SI(test_si2), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][5] ), 
	.D(n224), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[4][4]  (.SI(\reg_file[4][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(test_so1), 
	.D(n223), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[4][3]  (.SI(\reg_file[4][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][3] ), 
	.D(n222), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[4][2]  (.SI(\reg_file[4][1] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][2] ), 
	.D(n221), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[4][1]  (.SI(\reg_file[4][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][1] ), 
	.D(n220), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[4][0]  (.SI(REG3[7]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[4][0] ), 
	.D(n219), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[7][7]  (.SI(\reg_file[7][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][7] ), 
	.D(n250), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[7][6]  (.SI(\reg_file[7][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][6] ), 
	.D(n249), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[7][5]  (.SI(\reg_file[7][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][5] ), 
	.D(n248), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[7][4]  (.SI(\reg_file[7][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][4] ), 
	.D(n247), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[7][3]  (.SI(\reg_file[7][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][3] ), 
	.D(n246), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[7][2]  (.SI(\reg_file[7][1] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][2] ), 
	.D(n245), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[7][1]  (.SI(\reg_file[7][0] ), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][1] ), 
	.D(n244), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[7][0]  (.SI(\reg_file[6][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[7][0] ), 
	.D(n243), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFRQX1M \reg_file_reg[5][7]  (.SI(\reg_file[5][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][7] ), 
	.D(n234), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[5][6]  (.SI(\reg_file[5][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][6] ), 
	.D(n233), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[5][5]  (.SI(\reg_file[5][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][5] ), 
	.D(n232), 
	.CK(clk));
   SDFFRQX1M \reg_file_reg[5][4]  (.SI(\reg_file[5][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][4] ), 
	.D(n231), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[5][3]  (.SI(\reg_file[5][2] ), 
	.SE(test_se), 
	.RN(FE_OFN23_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][3] ), 
	.D(n230), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[5][2]  (.SI(\reg_file[5][1] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][2] ), 
	.D(n229), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[5][1]  (.SI(\reg_file[5][0] ), 
	.SE(test_se), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][1] ), 
	.D(n228), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX1M \reg_file_reg[5][0]  (.SI(\reg_file[4][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN24_SYNC_REF_SCAN_RST), 
	.Q(\reg_file[5][0] ), 
	.D(n227), 
	.CK(REF_SCAN_CLK__L3_N2));
   SDFFSQX2M \reg_file_reg[3][5]  (.SN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.SI(REG3[4]), 
	.SE(FE_OFN9_SE), 
	.Q(REG3[5]), 
	.D(n216), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX2M \reg_file_reg[3][0]  (.SI(REG2[7]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG3[0]), 
	.D(n211), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX2M \reg_file_reg[2][1]  (.SI(REG2[0]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[1]), 
	.D(n204), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX2M \reg_file_reg[0][4]  (.SI(REG0[3]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[4]), 
	.D(n191), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX2M \reg_file_reg[0][0]  (.SI(RdData[7]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG0[0]), 
	.D(n187), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX2M \reg_file_reg[0][3]  (.SI(REG0[2]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[3]), 
	.D(n190), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX2M \reg_file_reg[0][2]  (.SI(REG0[1]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[2]), 
	.D(n189), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX2M \reg_file_reg[0][1]  (.SI(REG0[0]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG0[1]), 
	.D(n188), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[2][3]  (.SI(REG2[2]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[3]), 
	.D(n206), 
	.CK(REF_SCAN_CLK__L3_N5));
   SDFFRQX4M \reg_file_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN9_SE), 
	.RN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.Q(REG2[2]), 
	.D(n205), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFRQX2M \reg_file_reg[1][6]  (.SI(REG1[5]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG1[6]), 
	.D(n201), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX2M \reg_file_reg[1][3]  (.SI(REG1[2]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN22_SYNC_REF_SCAN_RST), 
	.Q(REG1[3]), 
	.D(n198), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[1][4]  (.SI(REG1[3]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(n529), 
	.D(n199), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[1][1]  (.SI(REG1[0]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG1[1]), 
	.D(n196), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[1][7]  (.SI(REG1[6]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN18_SYNC_REF_SCAN_RST), 
	.Q(REG1[7]), 
	.D(n202), 
	.CK(REF_SCAN_CLK__L3_N3));
   SDFFRQX4M \reg_file_reg[1][5]  (.SI(REG1[4]), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(REG1[5]), 
	.D(n200), 
	.CK(REF_SCAN_CLK__L3_N3));
   CLKINVX2M U145 (.Y(n419), 
	.A(n529));
   CLKINVX1M U147 (.Y(REG1[4]), 
	.A(n419));
   CLKINVX1M U150 (.Y(n499), 
	.A(N11));
   CLKINVX2M U152 (.Y(REG2[7]), 
	.A(n140));
   NOR2BX2M U269 (.Y(n165), 
	.B(N14), 
	.AN(n150));
   MX4XLM U270 (.Y(n432), 
	.S1(n500), 
	.S0(n463), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4XLM U271 (.Y(n436), 
	.S1(n500), 
	.S0(n463), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4XLM U272 (.Y(n440), 
	.S1(n500), 
	.S0(n464), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4XLM U273 (.Y(n444), 
	.S1(n500), 
	.S0(n464), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4XLM U274 (.Y(n448), 
	.S1(n500), 
	.S0(n464), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4XLM U275 (.Y(n452), 
	.S1(n500), 
	.S0(n465), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4XLM U276 (.Y(n456), 
	.S1(n500), 
	.S0(n465), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4XLM U277 (.Y(n460), 
	.S1(n500), 
	.S0(n465), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   CLKINVX2M U278 (.Y(n525), 
	.A(WrData[6]));
   INVX2M U279 (.Y(n501), 
	.A(N12));
   NOR2X2M U280 (.Y(n153), 
	.B(N13), 
	.A(n500));
   AND2X2M U281 (.Y(n164), 
	.B(n500), 
	.A(N13));
   NOR2X2M U282 (.Y(n158), 
	.B(N13), 
	.A(n501));
   AND2X2M U283 (.Y(n161), 
	.B(n501), 
	.A(N13));
   BUFX4M U284 (.Y(n464), 
	.A(N11));
   CLKINVX2M U285 (.Y(n516), 
	.A(n151));
   CLKBUFX2M U287 (.Y(n463), 
	.A(N11));
   NOR2X2M U298 (.Y(n150), 
	.B(RdEn), 
	.A(n517));
   NAND2X2M U299 (.Y(n151), 
	.B(n517), 
	.A(RdEn));
   BUFX4M U300 (.Y(n465), 
	.A(N11));
   INVX2M U312 (.Y(n517), 
	.A(WrEn));
   CLKINVX2M U321 (.Y(n489), 
	.A(n425));
   CLKINVX2M U323 (.Y(n487), 
	.A(n426));
   CLKINVX2M U325 (.Y(n485), 
	.A(n427));
   CLKINVX2M U327 (.Y(n483), 
	.A(n428));
   CLKINVX2M U329 (.Y(n473), 
	.A(n421));
   CLKINVX2M U331 (.Y(n471), 
	.A(n422));
   CLKINVX2M U333 (.Y(n469), 
	.A(n423));
   CLKINVX2M U335 (.Y(n467), 
	.A(n424));
   AND2X2M U337 (.Y(n154), 
	.B(n499), 
	.A(n165));
   AND2X2M U338 (.Y(n156), 
	.B(n463), 
	.A(n165));
   AND2X2M U339 (.Y(n168), 
	.B(n499), 
	.A(n176));
   AND2X2M U340 (.Y(n170), 
	.B(n463), 
	.A(n176));
   NAND2X2M U341 (.Y(n152), 
	.B(n154), 
	.A(n153));
   NAND2X2M U342 (.Y(n157), 
	.B(n154), 
	.A(n158));
   NAND2X2M U343 (.Y(n159), 
	.B(n156), 
	.A(n158));
   NAND2X2M U344 (.Y(n155), 
	.B(n153), 
	.A(n156));
   NAND2X2M U345 (.Y(n167), 
	.B(n153), 
	.A(n168));
   NAND2X2M U346 (.Y(n169), 
	.B(n153), 
	.A(n170));
   NAND2X2M U347 (.Y(n171), 
	.B(n158), 
	.A(n168));
   NAND2X2M U348 (.Y(n172), 
	.B(n158), 
	.A(n170));
   AND2X2M U349 (.Y(n421), 
	.B(n161), 
	.A(n168));
   AND2X2M U350 (.Y(n422), 
	.B(n161), 
	.A(n170));
   AND2X2M U351 (.Y(n423), 
	.B(n164), 
	.A(n168));
   AND2X2M U352 (.Y(n424), 
	.B(n164), 
	.A(n170));
   AND2X2M U353 (.Y(n425), 
	.B(n154), 
	.A(n161));
   AND2X2M U354 (.Y(n426), 
	.B(n156), 
	.A(n161));
   AND2X2M U355 (.Y(n427), 
	.B(n154), 
	.A(n164));
   AND2X2M U356 (.Y(n428), 
	.B(n156), 
	.A(n164));
   CLKINVX2M U357 (.Y(n524), 
	.A(WrData[0]));
   CLKINVX2M U358 (.Y(n523), 
	.A(WrData[1]));
   CLKINVX2M U359 (.Y(n522), 
	.A(WrData[2]));
   CLKINVX2M U360 (.Y(n521), 
	.A(WrData[3]));
   CLKINVX2M U361 (.Y(n520), 
	.A(WrData[4]));
   CLKINVX2M U362 (.Y(n519), 
	.A(WrData[5]));
   CLKINVX2M U363 (.Y(n518), 
	.A(WrData[7]));
   INVX4M U364 (.Y(n500), 
	.A(n501));
   OAI2BB2X1M U366 (.Y(n193), 
	.B1(n525), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[6]));
   OAI2BB2X1M U367 (.Y(n201), 
	.B1(n155), 
	.B0(n525), 
	.A1N(n155), 
	.A0N(REG1[6]));
   OAI2BB2X1M U368 (.Y(n209), 
	.B1(n157), 
	.B0(n525), 
	.A1N(n157), 
	.A0N(REG2[6]));
   OAI2BB2X1M U369 (.Y(n217), 
	.B1(n159), 
	.B0(n525), 
	.A1N(n159), 
	.A0N(REG3[6]));
   OAI2BB2X1M U370 (.Y(n225), 
	.B1(n489), 
	.B0(n525), 
	.A1N(n489), 
	.A0N(\reg_file[4][6] ));
   OAI2BB2X1M U371 (.Y(n233), 
	.B1(n487), 
	.B0(n525), 
	.A1N(n487), 
	.A0N(\reg_file[5][6] ));
   OAI2BB2X1M U372 (.Y(n241), 
	.B1(n485), 
	.B0(n525), 
	.A1N(n485), 
	.A0N(\reg_file[6][6] ));
   OAI2BB2X1M U373 (.Y(n249), 
	.B1(n483), 
	.B0(n525), 
	.A1N(n483), 
	.A0N(\reg_file[7][6] ));
   OAI2BB2X1M U374 (.Y(n257), 
	.B1(n167), 
	.B0(n525), 
	.A1N(n167), 
	.A0N(\reg_file[8][6] ));
   OAI2BB2X1M U375 (.Y(n265), 
	.B1(n169), 
	.B0(n525), 
	.A1N(n169), 
	.A0N(\reg_file[9][6] ));
   OAI2BB2X1M U376 (.Y(n273), 
	.B1(n171), 
	.B0(n525), 
	.A1N(n171), 
	.A0N(\reg_file[10][6] ));
   OAI2BB2X1M U377 (.Y(n281), 
	.B1(n172), 
	.B0(n525), 
	.A1N(n172), 
	.A0N(\reg_file[11][6] ));
   OAI2BB2X1M U378 (.Y(n289), 
	.B1(n473), 
	.B0(n525), 
	.A1N(n473), 
	.A0N(\reg_file[12][6] ));
   OAI2BB2X1M U379 (.Y(n297), 
	.B1(n471), 
	.B0(n525), 
	.A1N(n471), 
	.A0N(\reg_file[13][6] ));
   OAI2BB2X1M U380 (.Y(n305), 
	.B1(n469), 
	.B0(n525), 
	.A1N(n469), 
	.A0N(\reg_file[14][6] ));
   OAI2BB2X1M U381 (.Y(n313), 
	.B1(n467), 
	.B0(n525), 
	.A1N(n467), 
	.A0N(\reg_file[15][6] ));
   OAI2BB2X1M U382 (.Y(n187), 
	.B1(n524), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[0]));
   OAI2BB2X1M U383 (.Y(n188), 
	.B1(n523), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[1]));
   OAI2BB2X1M U384 (.Y(n189), 
	.B1(n522), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[2]));
   OAI2BB2X1M U385 (.Y(n190), 
	.B1(n521), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[3]));
   OAI2BB2X1M U386 (.Y(n191), 
	.B1(n520), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[4]));
   OAI2BB2X1M U387 (.Y(n192), 
	.B1(n519), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[5]));
   OAI2BB2X1M U388 (.Y(n194), 
	.B1(n518), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[7]));
   OAI2BB2X1M U389 (.Y(n195), 
	.B1(n155), 
	.B0(n524), 
	.A1N(n155), 
	.A0N(REG1[0]));
   OAI2BB2X1M U390 (.Y(n196), 
	.B1(n155), 
	.B0(n523), 
	.A1N(n155), 
	.A0N(REG1[1]));
   OAI2BB2X1M U391 (.Y(n197), 
	.B1(n155), 
	.B0(n522), 
	.A1N(n155), 
	.A0N(REG1[2]));
   OAI2BB2X1M U392 (.Y(n198), 
	.B1(n155), 
	.B0(n521), 
	.A1N(n155), 
	.A0N(REG1[3]));
   OAI2BB2X1M U393 (.Y(n199), 
	.B1(n155), 
	.B0(n520), 
	.A1N(n155), 
	.A0N(REG1[4]));
   OAI2BB2X1M U394 (.Y(n200), 
	.B1(n155), 
	.B0(n519), 
	.A1N(n155), 
	.A0N(REG1[5]));
   OAI2BB2X1M U395 (.Y(n202), 
	.B1(n155), 
	.B0(n518), 
	.A1N(n155), 
	.A0N(REG1[7]));
   OAI2BB2X1M U396 (.Y(n204), 
	.B1(n157), 
	.B0(n523), 
	.A1N(n157), 
	.A0N(REG2[1]));
   OAI2BB2X1M U397 (.Y(n205), 
	.B1(n157), 
	.B0(n522), 
	.A1N(n157), 
	.A0N(REG2[2]));
   OAI2BB2X1M U398 (.Y(n206), 
	.B1(n157), 
	.B0(n521), 
	.A1N(n157), 
	.A0N(REG2[3]));
   OAI2BB2X1M U399 (.Y(n207), 
	.B1(n157), 
	.B0(n520), 
	.A1N(n157), 
	.A0N(REG2[4]));
   OAI2BB2X1M U400 (.Y(n208), 
	.B1(n157), 
	.B0(n519), 
	.A1N(n157), 
	.A0N(REG2[5]));
   OAI2BB2X1M U401 (.Y(n211), 
	.B1(n159), 
	.B0(n524), 
	.A1N(n159), 
	.A0N(REG3[0]));
   OAI2BB2X1M U402 (.Y(n212), 
	.B1(n159), 
	.B0(n523), 
	.A1N(n159), 
	.A0N(REG3[1]));
   OAI2BB2X1M U403 (.Y(n213), 
	.B1(n159), 
	.B0(n522), 
	.A1N(n159), 
	.A0N(REG3[2]));
   OAI2BB2X1M U404 (.Y(n214), 
	.B1(n159), 
	.B0(n521), 
	.A1N(n159), 
	.A0N(REG3[3]));
   OAI2BB2X1M U405 (.Y(n215), 
	.B1(n159), 
	.B0(n520), 
	.A1N(n159), 
	.A0N(REG3[4]));
   OAI2BB2X1M U406 (.Y(n218), 
	.B1(n159), 
	.B0(n518), 
	.A1N(n159), 
	.A0N(REG3[7]));
   OAI2BB2X1M U407 (.Y(n219), 
	.B1(n489), 
	.B0(n524), 
	.A1N(n489), 
	.A0N(\reg_file[4][0] ));
   OAI2BB2X1M U408 (.Y(n220), 
	.B1(n489), 
	.B0(n523), 
	.A1N(n489), 
	.A0N(\reg_file[4][1] ));
   OAI2BB2X1M U409 (.Y(n221), 
	.B1(n489), 
	.B0(n522), 
	.A1N(n489), 
	.A0N(\reg_file[4][2] ));
   OAI2BB2X1M U410 (.Y(n222), 
	.B1(n489), 
	.B0(n521), 
	.A1N(n489), 
	.A0N(\reg_file[4][3] ));
   OAI2BB2X1M U411 (.Y(n223), 
	.B1(n489), 
	.B0(n520), 
	.A1N(n489), 
	.A0N(test_so1));
   OAI2BB2X1M U412 (.Y(n224), 
	.B1(n489), 
	.B0(n519), 
	.A1N(n489), 
	.A0N(\reg_file[4][5] ));
   OAI2BB2X1M U413 (.Y(n226), 
	.B1(n489), 
	.B0(n518), 
	.A1N(n489), 
	.A0N(\reg_file[4][7] ));
   OAI2BB2X1M U414 (.Y(n227), 
	.B1(n487), 
	.B0(n524), 
	.A1N(n487), 
	.A0N(\reg_file[5][0] ));
   OAI2BB2X1M U415 (.Y(n228), 
	.B1(n487), 
	.B0(n523), 
	.A1N(n487), 
	.A0N(\reg_file[5][1] ));
   OAI2BB2X1M U416 (.Y(n229), 
	.B1(n487), 
	.B0(n522), 
	.A1N(n487), 
	.A0N(\reg_file[5][2] ));
   OAI2BB2X1M U417 (.Y(n230), 
	.B1(n487), 
	.B0(n521), 
	.A1N(n487), 
	.A0N(\reg_file[5][3] ));
   OAI2BB2X1M U418 (.Y(n231), 
	.B1(n487), 
	.B0(n520), 
	.A1N(n487), 
	.A0N(\reg_file[5][4] ));
   OAI2BB2X1M U419 (.Y(n232), 
	.B1(n487), 
	.B0(n519), 
	.A1N(n487), 
	.A0N(\reg_file[5][5] ));
   OAI2BB2X1M U420 (.Y(n234), 
	.B1(n487), 
	.B0(n518), 
	.A1N(n487), 
	.A0N(\reg_file[5][7] ));
   OAI2BB2X1M U421 (.Y(n235), 
	.B1(n485), 
	.B0(n524), 
	.A1N(n485), 
	.A0N(\reg_file[6][0] ));
   OAI2BB2X1M U422 (.Y(n236), 
	.B1(n485), 
	.B0(n523), 
	.A1N(n485), 
	.A0N(\reg_file[6][1] ));
   OAI2BB2X1M U423 (.Y(n237), 
	.B1(n485), 
	.B0(n522), 
	.A1N(n485), 
	.A0N(\reg_file[6][2] ));
   OAI2BB2X1M U424 (.Y(n238), 
	.B1(n485), 
	.B0(n521), 
	.A1N(n485), 
	.A0N(\reg_file[6][3] ));
   OAI2BB2X1M U425 (.Y(n239), 
	.B1(n485), 
	.B0(n520), 
	.A1N(n485), 
	.A0N(\reg_file[6][4] ));
   OAI2BB2X1M U426 (.Y(n240), 
	.B1(n485), 
	.B0(n519), 
	.A1N(n485), 
	.A0N(\reg_file[6][5] ));
   OAI2BB2X1M U427 (.Y(n242), 
	.B1(n485), 
	.B0(n518), 
	.A1N(n485), 
	.A0N(\reg_file[6][7] ));
   OAI2BB2X1M U428 (.Y(n243), 
	.B1(n483), 
	.B0(n524), 
	.A1N(n483), 
	.A0N(\reg_file[7][0] ));
   OAI2BB2X1M U429 (.Y(n244), 
	.B1(n483), 
	.B0(n523), 
	.A1N(n483), 
	.A0N(\reg_file[7][1] ));
   OAI2BB2X1M U430 (.Y(n245), 
	.B1(n483), 
	.B0(n522), 
	.A1N(n483), 
	.A0N(\reg_file[7][2] ));
   OAI2BB2X1M U431 (.Y(n246), 
	.B1(n483), 
	.B0(n521), 
	.A1N(n483), 
	.A0N(\reg_file[7][3] ));
   OAI2BB2X1M U432 (.Y(n247), 
	.B1(n483), 
	.B0(n520), 
	.A1N(n483), 
	.A0N(\reg_file[7][4] ));
   OAI2BB2X1M U433 (.Y(n248), 
	.B1(n483), 
	.B0(n519), 
	.A1N(n483), 
	.A0N(\reg_file[7][5] ));
   OAI2BB2X1M U434 (.Y(n250), 
	.B1(n483), 
	.B0(n518), 
	.A1N(n483), 
	.A0N(\reg_file[7][7] ));
   OAI2BB2X1M U435 (.Y(n251), 
	.B1(n167), 
	.B0(n524), 
	.A1N(n167), 
	.A0N(\reg_file[8][0] ));
   OAI2BB2X1M U436 (.Y(n252), 
	.B1(n167), 
	.B0(n523), 
	.A1N(n167), 
	.A0N(\reg_file[8][1] ));
   OAI2BB2X1M U437 (.Y(n253), 
	.B1(n167), 
	.B0(n522), 
	.A1N(n167), 
	.A0N(\reg_file[8][2] ));
   OAI2BB2X1M U438 (.Y(n254), 
	.B1(n167), 
	.B0(n521), 
	.A1N(n167), 
	.A0N(\reg_file[8][3] ));
   OAI2BB2X1M U439 (.Y(n255), 
	.B1(n167), 
	.B0(n520), 
	.A1N(n167), 
	.A0N(\reg_file[8][4] ));
   OAI2BB2X1M U440 (.Y(n256), 
	.B1(n167), 
	.B0(n519), 
	.A1N(n167), 
	.A0N(\reg_file[8][5] ));
   OAI2BB2X1M U441 (.Y(n258), 
	.B1(n167), 
	.B0(n518), 
	.A1N(n167), 
	.A0N(\reg_file[8][7] ));
   OAI2BB2X1M U442 (.Y(n259), 
	.B1(n169), 
	.B0(n524), 
	.A1N(n169), 
	.A0N(\reg_file[9][0] ));
   OAI2BB2X1M U443 (.Y(n260), 
	.B1(n169), 
	.B0(n523), 
	.A1N(n169), 
	.A0N(\reg_file[9][1] ));
   OAI2BB2X1M U444 (.Y(n261), 
	.B1(n169), 
	.B0(n522), 
	.A1N(n169), 
	.A0N(\reg_file[9][2] ));
   OAI2BB2X1M U445 (.Y(n262), 
	.B1(n169), 
	.B0(n521), 
	.A1N(n169), 
	.A0N(\reg_file[9][3] ));
   OAI2BB2X1M U446 (.Y(n263), 
	.B1(n169), 
	.B0(n520), 
	.A1N(n169), 
	.A0N(\reg_file[9][4] ));
   OAI2BB2X1M U447 (.Y(n264), 
	.B1(n169), 
	.B0(n519), 
	.A1N(n169), 
	.A0N(\reg_file[9][5] ));
   OAI2BB2X1M U448 (.Y(n266), 
	.B1(n169), 
	.B0(n518), 
	.A1N(n169), 
	.A0N(\reg_file[9][7] ));
   OAI2BB2X1M U449 (.Y(n267), 
	.B1(n171), 
	.B0(n524), 
	.A1N(n171), 
	.A0N(\reg_file[10][0] ));
   OAI2BB2X1M U450 (.Y(n268), 
	.B1(n171), 
	.B0(n523), 
	.A1N(n171), 
	.A0N(\reg_file[10][1] ));
   OAI2BB2X1M U451 (.Y(n269), 
	.B1(n171), 
	.B0(n522), 
	.A1N(n171), 
	.A0N(\reg_file[10][2] ));
   OAI2BB2X1M U452 (.Y(n270), 
	.B1(n171), 
	.B0(n521), 
	.A1N(n171), 
	.A0N(\reg_file[10][3] ));
   OAI2BB2X1M U453 (.Y(n271), 
	.B1(n171), 
	.B0(n520), 
	.A1N(n171), 
	.A0N(\reg_file[10][4] ));
   OAI2BB2X1M U454 (.Y(n272), 
	.B1(n171), 
	.B0(n519), 
	.A1N(n171), 
	.A0N(\reg_file[10][5] ));
   OAI2BB2X1M U455 (.Y(n274), 
	.B1(n171), 
	.B0(n518), 
	.A1N(n171), 
	.A0N(\reg_file[10][7] ));
   OAI2BB2X1M U456 (.Y(n275), 
	.B1(n172), 
	.B0(n524), 
	.A1N(n172), 
	.A0N(\reg_file[11][0] ));
   OAI2BB2X1M U457 (.Y(n276), 
	.B1(n172), 
	.B0(n523), 
	.A1N(n172), 
	.A0N(\reg_file[11][1] ));
   OAI2BB2X1M U458 (.Y(n277), 
	.B1(n172), 
	.B0(n522), 
	.A1N(n172), 
	.A0N(\reg_file[11][2] ));
   OAI2BB2X1M U459 (.Y(n278), 
	.B1(n172), 
	.B0(n521), 
	.A1N(n172), 
	.A0N(\reg_file[11][3] ));
   OAI2BB2X1M U460 (.Y(n279), 
	.B1(n172), 
	.B0(n520), 
	.A1N(n172), 
	.A0N(\reg_file[11][4] ));
   OAI2BB2X1M U461 (.Y(n280), 
	.B1(n172), 
	.B0(n519), 
	.A1N(n172), 
	.A0N(\reg_file[11][5] ));
   OAI2BB2X1M U462 (.Y(n282), 
	.B1(n172), 
	.B0(n518), 
	.A1N(n172), 
	.A0N(\reg_file[11][7] ));
   OAI2BB2X1M U463 (.Y(n283), 
	.B1(n473), 
	.B0(n524), 
	.A1N(n473), 
	.A0N(\reg_file[12][0] ));
   OAI2BB2X1M U464 (.Y(n284), 
	.B1(n473), 
	.B0(n523), 
	.A1N(n473), 
	.A0N(\reg_file[12][1] ));
   OAI2BB2X1M U465 (.Y(n285), 
	.B1(n473), 
	.B0(n522), 
	.A1N(n473), 
	.A0N(\reg_file[12][2] ));
   OAI2BB2X1M U466 (.Y(n286), 
	.B1(n473), 
	.B0(n521), 
	.A1N(n473), 
	.A0N(\reg_file[12][3] ));
   OAI2BB2X1M U467 (.Y(n287), 
	.B1(n473), 
	.B0(n520), 
	.A1N(n473), 
	.A0N(\reg_file[12][4] ));
   OAI2BB2X1M U468 (.Y(n288), 
	.B1(n473), 
	.B0(n519), 
	.A1N(n473), 
	.A0N(\reg_file[12][5] ));
   OAI2BB2X1M U469 (.Y(n290), 
	.B1(n473), 
	.B0(n518), 
	.A1N(n473), 
	.A0N(\reg_file[12][7] ));
   OAI2BB2X1M U470 (.Y(n291), 
	.B1(n471), 
	.B0(n524), 
	.A1N(n471), 
	.A0N(\reg_file[13][0] ));
   OAI2BB2X1M U471 (.Y(n292), 
	.B1(n471), 
	.B0(n523), 
	.A1N(n471), 
	.A0N(\reg_file[13][1] ));
   OAI2BB2X1M U472 (.Y(n293), 
	.B1(n471), 
	.B0(n522), 
	.A1N(n471), 
	.A0N(\reg_file[13][2] ));
   OAI2BB2X1M U473 (.Y(n294), 
	.B1(n471), 
	.B0(n521), 
	.A1N(n471), 
	.A0N(\reg_file[13][3] ));
   OAI2BB2X1M U474 (.Y(n295), 
	.B1(n471), 
	.B0(n520), 
	.A1N(n471), 
	.A0N(\reg_file[13][4] ));
   OAI2BB2X1M U475 (.Y(n296), 
	.B1(n471), 
	.B0(n519), 
	.A1N(n471), 
	.A0N(\reg_file[13][5] ));
   OAI2BB2X1M U476 (.Y(n298), 
	.B1(n471), 
	.B0(n518), 
	.A1N(n471), 
	.A0N(\reg_file[13][7] ));
   OAI2BB2X1M U477 (.Y(n299), 
	.B1(n469), 
	.B0(n524), 
	.A1N(n469), 
	.A0N(\reg_file[14][0] ));
   OAI2BB2X1M U478 (.Y(n300), 
	.B1(n469), 
	.B0(n523), 
	.A1N(n469), 
	.A0N(\reg_file[14][1] ));
   OAI2BB2X1M U479 (.Y(n301), 
	.B1(n469), 
	.B0(n522), 
	.A1N(n469), 
	.A0N(\reg_file[14][2] ));
   OAI2BB2X1M U480 (.Y(n302), 
	.B1(n469), 
	.B0(n521), 
	.A1N(n469), 
	.A0N(\reg_file[14][3] ));
   OAI2BB2X1M U481 (.Y(n303), 
	.B1(n469), 
	.B0(n520), 
	.A1N(n469), 
	.A0N(\reg_file[14][4] ));
   OAI2BB2X1M U482 (.Y(n304), 
	.B1(n469), 
	.B0(n519), 
	.A1N(n469), 
	.A0N(\reg_file[14][5] ));
   OAI2BB2X1M U483 (.Y(n306), 
	.B1(n469), 
	.B0(n518), 
	.A1N(n469), 
	.A0N(\reg_file[14][7] ));
   OAI2BB2X1M U484 (.Y(n307), 
	.B1(n467), 
	.B0(n524), 
	.A1N(n467), 
	.A0N(\reg_file[15][0] ));
   OAI2BB2X1M U485 (.Y(n308), 
	.B1(n467), 
	.B0(n523), 
	.A1N(n467), 
	.A0N(test_so2));
   OAI2BB2X1M U486 (.Y(n309), 
	.B1(n467), 
	.B0(n522), 
	.A1N(n467), 
	.A0N(\reg_file[15][2] ));
   OAI2BB2X1M U487 (.Y(n310), 
	.B1(n467), 
	.B0(n521), 
	.A1N(n467), 
	.A0N(\reg_file[15][3] ));
   OAI2BB2X1M U488 (.Y(n311), 
	.B1(n467), 
	.B0(n520), 
	.A1N(n467), 
	.A0N(\reg_file[15][4] ));
   OAI2BB2X1M U489 (.Y(n312), 
	.B1(n467), 
	.B0(n519), 
	.A1N(n467), 
	.A0N(\reg_file[15][5] ));
   OAI2BB2X1M U490 (.Y(n314), 
	.B1(n467), 
	.B0(n518), 
	.A1N(n467), 
	.A0N(test_so3));
   OAI2BB2X1M U491 (.Y(n203), 
	.B1(n157), 
	.B0(n524), 
	.A1N(n157), 
	.A0N(REG2[0]));
   OAI2BB2X1M U492 (.Y(n210), 
	.B1(n157), 
	.B0(n518), 
	.A1N(n157), 
	.A0N(REG2[7]));
   OAI2BB2X1M U493 (.Y(n216), 
	.B1(n159), 
	.B0(n519), 
	.A1N(n159), 
	.A0N(REG3[5]));
   AND2X2M U494 (.Y(n176), 
	.B(n150), 
	.A(N14));
   MX4X1M U495 (.Y(n439), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[7][2] ), 
	.C(\reg_file[6][2] ), 
	.B(\reg_file[5][2] ), 
	.A(\reg_file[4][2] ));
   MX4X1M U496 (.Y(n443), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[7][3] ), 
	.C(\reg_file[6][3] ), 
	.B(\reg_file[5][3] ), 
	.A(\reg_file[4][3] ));
   MX4X1M U497 (.Y(n447), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[7][4] ), 
	.C(\reg_file[6][4] ), 
	.B(\reg_file[5][4] ), 
	.A(test_so1));
   MX4X1M U498 (.Y(n437), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[15][2] ), 
	.C(\reg_file[14][2] ), 
	.B(\reg_file[13][2] ), 
	.A(\reg_file[12][2] ));
   MX4X1M U499 (.Y(n441), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[15][3] ), 
	.C(\reg_file[14][3] ), 
	.B(\reg_file[13][3] ), 
	.A(\reg_file[12][3] ));
   MX4X1M U500 (.Y(n445), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[15][4] ), 
	.C(\reg_file[14][4] ), 
	.B(\reg_file[13][4] ), 
	.A(\reg_file[12][4] ));
   AO22X1M U501 (.Y(n179), 
	.B1(n151), 
	.B0(RdData[0]), 
	.A1(n516), 
	.A0(N43));
   MX4X1M U502 (.Y(N43), 
	.S1(N13), 
	.S0(N14), 
	.D(n429), 
	.C(n431), 
	.B(n430), 
	.A(n432));
   MX4X1M U503 (.Y(n430), 
	.S1(N12), 
	.S0(n463), 
	.D(\reg_file[11][0] ), 
	.C(\reg_file[10][0] ), 
	.B(\reg_file[9][0] ), 
	.A(\reg_file[8][0] ));
   AO22X1M U504 (.Y(n180), 
	.B1(n151), 
	.B0(RdData[1]), 
	.A1(n516), 
	.A0(N42));
   MX4X1M U505 (.Y(N42), 
	.S1(N13), 
	.S0(N14), 
	.D(n433), 
	.C(n435), 
	.B(n434), 
	.A(n436));
   MX4X1M U506 (.Y(n434), 
	.S1(N12), 
	.S0(n463), 
	.D(\reg_file[11][1] ), 
	.C(\reg_file[10][1] ), 
	.B(\reg_file[9][1] ), 
	.A(\reg_file[8][1] ));
   AO22X1M U507 (.Y(n181), 
	.B1(n151), 
	.B0(RdData[2]), 
	.A1(n516), 
	.A0(N41));
   MX4X1M U508 (.Y(N41), 
	.S1(N13), 
	.S0(N14), 
	.D(n437), 
	.C(n439), 
	.B(n438), 
	.A(n440));
   MX4X1M U509 (.Y(n438), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[11][2] ), 
	.C(\reg_file[10][2] ), 
	.B(\reg_file[9][2] ), 
	.A(\reg_file[8][2] ));
   AO22X1M U510 (.Y(n182), 
	.B1(n151), 
	.B0(RdData[3]), 
	.A1(n516), 
	.A0(N40));
   MX4X1M U511 (.Y(N40), 
	.S1(N13), 
	.S0(N14), 
	.D(n441), 
	.C(n443), 
	.B(n442), 
	.A(n444));
   MX4X1M U512 (.Y(n442), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[11][3] ), 
	.C(\reg_file[10][3] ), 
	.B(\reg_file[9][3] ), 
	.A(\reg_file[8][3] ));
   AO22X1M U513 (.Y(n183), 
	.B1(n151), 
	.B0(RdData[4]), 
	.A1(n516), 
	.A0(N39));
   MX4X1M U514 (.Y(N39), 
	.S1(N13), 
	.S0(N14), 
	.D(n445), 
	.C(n447), 
	.B(n446), 
	.A(n448));
   MX4X1M U515 (.Y(n446), 
	.S1(n500), 
	.S0(n464), 
	.D(\reg_file[11][4] ), 
	.C(\reg_file[10][4] ), 
	.B(\reg_file[9][4] ), 
	.A(\reg_file[8][4] ));
   AO22X1M U516 (.Y(n184), 
	.B1(n151), 
	.B0(RdData[5]), 
	.A1(n516), 
	.A0(N38));
   MX4X1M U517 (.Y(N38), 
	.S1(N13), 
	.S0(N14), 
	.D(n449), 
	.C(n451), 
	.B(n450), 
	.A(n452));
   MX4X1M U518 (.Y(n450), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[11][5] ), 
	.C(\reg_file[10][5] ), 
	.B(\reg_file[9][5] ), 
	.A(\reg_file[8][5] ));
   AO22X1M U519 (.Y(n185), 
	.B1(n151), 
	.B0(RdData[6]), 
	.A1(n516), 
	.A0(N37));
   MX4X1M U520 (.Y(N37), 
	.S1(N13), 
	.S0(N14), 
	.D(n453), 
	.C(n455), 
	.B(n454), 
	.A(n456));
   MX4X1M U521 (.Y(n454), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[11][6] ), 
	.C(\reg_file[10][6] ), 
	.B(\reg_file[9][6] ), 
	.A(\reg_file[8][6] ));
   AO22X1M U522 (.Y(n186), 
	.B1(n151), 
	.B0(RdData[7]), 
	.A1(n516), 
	.A0(N36));
   MX4X1M U523 (.Y(N36), 
	.S1(N13), 
	.S0(N14), 
	.D(n457), 
	.C(n459), 
	.B(n458), 
	.A(n460));
   MX4X1M U524 (.Y(n458), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[11][7] ), 
	.C(\reg_file[10][7] ), 
	.B(\reg_file[9][7] ), 
	.A(\reg_file[8][7] ));
   AO21XLM U525 (.Y(n178), 
	.B0(n516), 
	.A1(RdData_VLD), 
	.A0(n150));
   MX4X1M U526 (.Y(n451), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[7][5] ), 
	.C(\reg_file[6][5] ), 
	.B(\reg_file[5][5] ), 
	.A(\reg_file[4][5] ));
   MX4X1M U527 (.Y(n455), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[7][6] ), 
	.C(\reg_file[6][6] ), 
	.B(\reg_file[5][6] ), 
	.A(\reg_file[4][6] ));
   MX4X1M U528 (.Y(n459), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[7][7] ), 
	.C(\reg_file[6][7] ), 
	.B(\reg_file[5][7] ), 
	.A(\reg_file[4][7] ));
   MX4X1M U529 (.Y(n449), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[15][5] ), 
	.C(\reg_file[14][5] ), 
	.B(\reg_file[13][5] ), 
	.A(\reg_file[12][5] ));
   MX4X1M U530 (.Y(n453), 
	.S1(n500), 
	.S0(n465), 
	.D(\reg_file[15][6] ), 
	.C(\reg_file[14][6] ), 
	.B(\reg_file[13][6] ), 
	.A(\reg_file[12][6] ));
   MX4X1M U531 (.Y(n457), 
	.S1(n500), 
	.S0(n465), 
	.D(test_so3), 
	.C(\reg_file[14][7] ), 
	.B(\reg_file[13][7] ), 
	.A(\reg_file[12][7] ));
   MX4X1M U532 (.Y(n431), 
	.S1(n500), 
	.S0(n463), 
	.D(\reg_file[7][0] ), 
	.C(\reg_file[6][0] ), 
	.B(\reg_file[5][0] ), 
	.A(\reg_file[4][0] ));
   MX4X1M U533 (.Y(n435), 
	.S1(n500), 
	.S0(n463), 
	.D(\reg_file[7][1] ), 
	.C(\reg_file[6][1] ), 
	.B(\reg_file[5][1] ), 
	.A(\reg_file[4][1] ));
   MX4X1M U534 (.Y(n429), 
	.S1(n500), 
	.S0(n463), 
	.D(\reg_file[15][0] ), 
	.C(\reg_file[14][0] ), 
	.B(\reg_file[13][0] ), 
	.A(\reg_file[12][0] ));
   MX4X1M U535 (.Y(n433), 
	.S1(n500), 
	.S0(n463), 
	.D(test_so2), 
	.C(\reg_file[14][1] ), 
	.B(\reg_file[13][1] ), 
	.A(\reg_file[12][1] ));
   SDFFSX1M \reg_file_reg[2][7]  (.SN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.SI(REG2[6]), 
	.SE(test_se), 
	.QN(n140), 
	.D(n210), 
	.CK(REF_SCAN_CLK__L3_N4));
   SDFFSQX2M \reg_file_reg[2][0]  (.SN(FE_OFN11_SYNC_REF_SCAN_RST), 
	.SI(REG1[7]), 
	.SE(FE_OFN9_SE), 
	.Q(n3), 
	.D(n203), 
	.CK(REF_SCAN_CLK__L3_N4));
   INVXLM U3 (.Y(n1), 
	.A(n3));
   CLKINVX1M U4 (.Y(REG2[0]), 
	.A(n1));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n188, 
	n187, 
	n184, 
	n185, 
	n182);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n188;
   input n187;
   input n184;
   input n185;
   input n182;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n20;
   wire n21;
   wire n22;
   wire n26;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;

   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n185), 
	.A(\u_div/PartRem[2][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n26), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n184), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n187), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n185), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n184), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n188), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n26), 
	.A(\u_div/PartRem[2][4] ));
   ADDFXLM \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n184), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n184), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[2][1] ));
   ADDFXLM \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[4][1] ));
   ADDFXLM \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n26), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n188), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n188), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n182), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n184), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n29), 
	.A(\u_div/PartRem[1][1] ));
   AND2X2M U2 (.Y(quotient[5]), 
	.B(n31), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X2M U3 (.Y(n32), 
	.B(n21), 
	.A(n33));
   AND2X1M U4 (.Y(quotient[2]), 
	.B(n33), 
	.A(\u_div/CryTmp[2][6] ));
   MX2X1M U5 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   MX2X1M U6 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   AND2X2M U7 (.Y(quotient[1]), 
	.B(n187), 
	.A(\u_div/CryTmp[1][7] ));
   MX2X2M U9 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2XLM U10 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   MX2X1M U12 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U14 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   MX2X2M U15 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   MX2X1M U16 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2X1M U17 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   AND2X2M U19 (.Y(quotient[3]), 
	.B(n10), 
	.A(\u_div/CryTmp[3][5] ));
   MX2X2M U21 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   MX2XLM U22 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKINVX1M U23 (.Y(n29), 
	.A(b[1]));
   MX2X2M U24 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKINVX1M U25 (.Y(n14), 
	.A(quotient[5]));
   AND2X2M U26 (.Y(n21), 
	.B(n188), 
	.A(n26));
   XOR2X2M U27 (.Y(\u_div/SumTmp[2][4] ), 
	.B(n6), 
	.A(\u_div/CryTmp[2][4] ));
   CLKNAND2X2M U29 (.Y(n7), 
	.B(\u_div/PartRem[3][4] ), 
	.A(\u_div/CryTmp[2][4] ));
   CLKINVX2M U30 (.Y(n30), 
	.A(b[0]));
   AND2X1M U34 (.Y(quotient[6]), 
	.B(n22), 
	.A(\u_div/CryTmp[6][2] ));
   AND2X2M U36 (.Y(quotient[4]), 
	.B(n32), 
	.A(\u_div/CryTmp[4][4] ));
   MX2X1M U37 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   MX2XLM U38 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   XNOR2X2M U39 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n30));
   CLKXOR2X2M U40 (.Y(n6), 
	.B(n26), 
	.A(\u_div/PartRem[3][4] ));
   NAND2X1M U41 (.Y(n8), 
	.B(n26), 
	.A(\u_div/CryTmp[2][4] ));
   NAND2X1M U42 (.Y(n9), 
	.B(n26), 
	.A(\u_div/PartRem[3][4] ));
   NAND3XLM U43 (.Y(\u_div/CryTmp[2][5] ), 
	.C(n7), 
	.B(n8), 
	.A(n9));
   CLKINVX1M U44 (.Y(n26), 
	.A(b[4]));
   AND2X1M U45 (.Y(n10), 
	.B(n188), 
	.A(n33));
   MX2XLM U46 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   MX2X2M U47 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   AND2X1M U49 (.Y(quotient[7]), 
	.B(n18), 
	.A(n31));
   NAND2X1M U51 (.Y(n15), 
	.B(n14), 
	.A(a[5]));
   CLKNAND2X2M U52 (.Y(n16), 
	.B(quotient[5]), 
	.A(\u_div/SumTmp[5][0] ));
   NAND2X1M U53 (.Y(\u_div/PartRem[5][1] ), 
	.B(n16), 
	.A(n15));
   OR2X2M U54 (.Y(\u_div/CryTmp[7][1] ), 
	.B(n30), 
	.A(a[7]));
   AND2X2M U55 (.Y(n31), 
	.B(n184), 
	.A(n32));
   AND2X2M U56 (.Y(n20), 
	.B(n182), 
	.A(n29));
   AND2X2M U57 (.Y(n18), 
	.B(n20), 
	.A(\u_div/CryTmp[7][1] ));
   XNOR2X1M U58 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n30));
   XNOR2X1M U59 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n30));
   OR2X1M U60 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n30), 
	.A(a[5]));
   OR2X1M U61 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n30), 
	.A(a[6]));
   MX2X2M U62 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U63 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   AND2X1M U64 (.Y(n22), 
	.B(n182), 
	.A(n31));
   OR2X1M U65 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n30), 
	.A(a[0]));
   MX2X1M U66 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   MX2X1M U67 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2X1M U68 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   MX2X1M U69 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   XNOR2X1M U70 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n30));
   XNOR2X1M U71 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n30));
   XNOR2X1M U72 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n30));
   XNOR2X1M U73 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n30));
   NOR2X2M U74 (.Y(n33), 
	.B(b[7]), 
	.A(b[6]));
   MX2X2M U75 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   OR2X2M U76 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n30), 
	.A(a[4]));
   OR2X2M U77 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n30), 
	.A(a[3]));
   OR2X2M U78 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n30), 
	.A(a[1]));
   OR2X2M U79 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n30), 
	.A(a[2]));
   CLKMX2X2M U82 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U83 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U84 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U85 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n188, 
	n187, 
	n184, 
	n185, 
	n180, 
	n182, 
	n189);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n188;
   input n187;
   input n184;
   input n185;
   input n180;
   input n182;
   input n189;

   // Internal wires
   wire n7;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n187), 
	.A(A[7]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n188), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n189), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n184), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n182), 
	.A(A[2]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n7), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n185), 
	.A(A[6]));
   INVXLM U1 (.Y(n7), 
	.A(B[1]));
   XNOR2X2M U8 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n180));
   OR2X2M U9 (.Y(carry[1]), 
	.B(n180), 
	.A(A[0]));
   CLKINVX1M U11 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XOR2X1M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   OAI21BX1M U2 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   AOI2BB1X2M U3 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   NOR2X2M U4 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U5 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X2M U6 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U7 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   CLKXOR2X2M U8 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   NAND2X2M U9 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U10 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U11 (.Y(n7), 
	.A(A[6]));
   INVX2M U12 (.Y(SUM[6]), 
	.A(n7));
   BUFX2M U13 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U14 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U15 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U16 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U17 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U18 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U19 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U20 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U21 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U22 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U23 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U24 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U25 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U26 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U27 (.Y(n22), 
	.B(n19), 
	.A(n21));
   AND2X1M U28 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U29 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U30 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AND2X1M U31 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U32 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U33 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U35 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n187, 
	n189, 
	n184, 
	n185, 
	n194, 
	n193, 
	n192, 
	n195, 
	n191, 
	n179, 
	n190, 
	n180, 
	n182, 
	n188);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n187;
   input n189;
   input n184;
   input n185;
   input n194;
   input n193;
   input n192;
   input n195;
   input n191;
   input n179;
   input n190;
   input n180;
   input n182;
   input n188;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n19;
   wire n23;
   wire n26;

   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n8), 
	.A(\ab[2][0] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n5), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n4), 
	.A(\ab[2][2] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   NOR2X2M U10 (.Y(\ab[0][6] ), 
	.B(n195), 
	.A(n185));
   NOR2X2M U11 (.Y(\ab[1][6] ), 
	.B(n194), 
	.A(n185));
   NOR2X2M U12 (.Y(\ab[0][5] ), 
	.B(n195), 
	.A(n19));
   NOR2X2M U13 (.Y(\ab[0][4] ), 
	.B(n195), 
	.A(n189));
   NOR2X2M U14 (.Y(\ab[0][2] ), 
	.B(n195), 
	.A(n182));
   NOR2X2M U15 (.Y(\ab[0][3] ), 
	.B(n195), 
	.A(n184));
   NOR2X2M U16 (.Y(\ab[0][1] ), 
	.B(n195), 
	.A(n23));
   NOR2X2M U17 (.Y(\ab[1][5] ), 
	.B(n194), 
	.A(n19));
   NOR2X2M U18 (.Y(\ab[1][4] ), 
	.B(n194), 
	.A(n189));
   NOR2X2M U19 (.Y(\ab[1][3] ), 
	.B(n194), 
	.A(n184));
   NOR2X2M U20 (.Y(\ab[1][1] ), 
	.B(n194), 
	.A(n23));
   NOR2X2M U21 (.Y(\ab[1][2] ), 
	.B(n194), 
	.A(n182));
   NOR2X2M U22 (.Y(\ab[1][0] ), 
	.B(n194), 
	.A(n180));
   NOR2X2M U23 (.Y(\ab[0][7] ), 
	.B(n195), 
	.A(n187));
   NOR2X2M U24 (.Y(\ab[7][7] ), 
	.B(n187), 
	.A(n179));
   CLKINVX2M U27 (.Y(n26), 
	.A(A[6]));
   CLKINVX2M U30 (.Y(n23), 
	.A(B[1]));
   CLKINVX2M U33 (.Y(n19), 
	.A(B[5]));
   CLKXOR2X2M U36 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U37 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U38 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U40 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U41 (.Y(n12), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U42 (.Y(n13), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U44 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U45 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U47 (.Y(n14), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U48 (.Y(n15), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U49 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   AND2X2M U50 (.Y(n16), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKXOR2X2M U51 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   XOR2X1M U52 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   XOR2X1M U53 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   XOR2X1M U55 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   XOR2X1M U56 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   XOR2X1M U57 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   XOR2X1M U58 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   XOR2X1M U59 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   NOR2X1M U62 (.Y(\ab[7][6] ), 
	.B(n185), 
	.A(n179));
   NOR2X1M U63 (.Y(\ab[7][5] ), 
	.B(n19), 
	.A(n179));
   NOR2X1M U64 (.Y(\ab[7][4] ), 
	.B(n189), 
	.A(n179));
   NOR2X1M U65 (.Y(\ab[7][3] ), 
	.B(n184), 
	.A(n179));
   NOR2X1M U66 (.Y(\ab[7][2] ), 
	.B(n182), 
	.A(n179));
   NOR2X1M U67 (.Y(\ab[7][1] ), 
	.B(n23), 
	.A(n179));
   NOR2X1M U68 (.Y(\ab[7][0] ), 
	.B(n180), 
	.A(n179));
   NOR2X1M U69 (.Y(\ab[6][7] ), 
	.B(n26), 
	.A(n187));
   NOR2X1M U70 (.Y(\ab[6][6] ), 
	.B(n26), 
	.A(n185));
   NOR2X1M U71 (.Y(\ab[6][5] ), 
	.B(n26), 
	.A(n19));
   NOR2X1M U72 (.Y(\ab[6][4] ), 
	.B(n26), 
	.A(n189));
   NOR2X1M U73 (.Y(\ab[6][3] ), 
	.B(n26), 
	.A(n184));
   NOR2X1M U74 (.Y(\ab[6][2] ), 
	.B(n26), 
	.A(n182));
   NOR2X1M U75 (.Y(\ab[6][1] ), 
	.B(n26), 
	.A(n23));
   NOR2X1M U76 (.Y(\ab[6][0] ), 
	.B(n26), 
	.A(n180));
   NOR2X1M U77 (.Y(\ab[5][7] ), 
	.B(n190), 
	.A(n187));
   NOR2X1M U78 (.Y(\ab[5][6] ), 
	.B(n190), 
	.A(n185));
   NOR2X1M U79 (.Y(\ab[5][5] ), 
	.B(n190), 
	.A(n19));
   NOR2X1M U80 (.Y(\ab[5][4] ), 
	.B(n190), 
	.A(n189));
   NOR2X1M U81 (.Y(\ab[5][3] ), 
	.B(n190), 
	.A(n184));
   NOR2X1M U82 (.Y(\ab[5][2] ), 
	.B(n190), 
	.A(n182));
   NOR2X1M U83 (.Y(\ab[5][1] ), 
	.B(n190), 
	.A(n23));
   NOR2X1M U84 (.Y(\ab[5][0] ), 
	.B(n190), 
	.A(n180));
   NOR2X1M U85 (.Y(\ab[4][7] ), 
	.B(n191), 
	.A(n187));
   NOR2X1M U86 (.Y(\ab[4][6] ), 
	.B(n191), 
	.A(n185));
   NOR2X1M U87 (.Y(\ab[4][5] ), 
	.B(n191), 
	.A(n19));
   NOR2X1M U88 (.Y(\ab[4][4] ), 
	.B(n191), 
	.A(n189));
   NOR2X1M U89 (.Y(\ab[4][3] ), 
	.B(n191), 
	.A(n184));
   NOR2X1M U90 (.Y(\ab[4][2] ), 
	.B(n191), 
	.A(n182));
   NOR2X1M U91 (.Y(\ab[4][1] ), 
	.B(n191), 
	.A(n23));
   NOR2X1M U92 (.Y(\ab[4][0] ), 
	.B(n191), 
	.A(n180));
   NOR2X1M U93 (.Y(\ab[3][7] ), 
	.B(n192), 
	.A(n187));
   NOR2X1M U94 (.Y(\ab[3][6] ), 
	.B(n192), 
	.A(n185));
   NOR2X1M U95 (.Y(\ab[3][5] ), 
	.B(n192), 
	.A(n19));
   NOR2X1M U96 (.Y(\ab[3][4] ), 
	.B(n192), 
	.A(n189));
   NOR2X1M U97 (.Y(\ab[3][3] ), 
	.B(n192), 
	.A(n184));
   NOR2X1M U98 (.Y(\ab[3][2] ), 
	.B(n192), 
	.A(n182));
   NOR2X1M U99 (.Y(\ab[3][1] ), 
	.B(n192), 
	.A(n23));
   NOR2X1M U100 (.Y(\ab[3][0] ), 
	.B(n192), 
	.A(n180));
   NOR2X1M U101 (.Y(\ab[2][7] ), 
	.B(n193), 
	.A(n187));
   NOR2X1M U102 (.Y(\ab[2][6] ), 
	.B(n193), 
	.A(n185));
   NOR2X1M U103 (.Y(\ab[2][5] ), 
	.B(n193), 
	.A(n19));
   NOR2X1M U104 (.Y(\ab[2][4] ), 
	.B(n193), 
	.A(n189));
   NOR2X1M U105 (.Y(\ab[2][3] ), 
	.B(n193), 
	.A(n184));
   NOR2X1M U106 (.Y(\ab[2][2] ), 
	.B(n193), 
	.A(n182));
   NOR2X1M U107 (.Y(\ab[2][1] ), 
	.B(n193), 
	.A(n23));
   NOR2X1M U108 (.Y(\ab[2][0] ), 
	.B(n193), 
	.A(n180));
   NOR2X1M U109 (.Y(\ab[1][7] ), 
	.B(n194), 
	.A(n187));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n195), 
	.A(n180));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n16,
		n15,
		n14,
		n12,
		n13,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	A, 
	B, 
	ALU_FUN, 
	clk, 
	ALU_OUT, 
	EN, 
	rst, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN17_SYNC_REF_SCAN_RST);
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input clk;
   output [15:0] ALU_OUT;
   input EN;
   input rst;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN17_SYNC_REF_SCAN_RST;

   // Internal wires
   wire FE_PHN2_SI_3_;
   wire FE_OFN27_n52;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N156;
   wire N157;
   wire N158;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n5;
   wire n6;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n143;
   wire n146;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire [15:0] ALU_OUT_cmp;

   DLY2X1M FE_PHC2_SI_3_ (.Y(FE_PHN2_SI_3_), 
	.A(test_si));
   BUFX2M FE_OFC27_n52 (.Y(FE_OFN27_n52), 
	.A(n52));
   OAI2BB1X2M U94 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   SDFFRHQX1M \ALU_OUT_reg[0]  (.SI(FE_PHN2_SI_3_), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_cmp[0]), 
	.CK(clk));
   SDFFRQX1M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_cmp[8]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_cmp[9]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_cmp[6]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_cmp[3]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_cmp[5]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_cmp[4]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_cmp[10]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_cmp[7]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_cmp[11]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_cmp[12]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_cmp[2]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_cmp[13]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(FE_OFN17_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_cmp[14]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_cmp[15]), 
	.CK(clk));
   SDFFRQX1M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_cmp[1]), 
	.CK(clk));
   CLKINVX2M U7 (.Y(n139), 
	.A(A[7]));
   NOR2XLM U23 (.Y(ALU_OUT_cmp[0]), 
	.B(n196), 
	.A(n41));
   CLKINVX2M U24 (.Y(n184), 
	.A(B[3]));
   CLKINVX2M U27 (.Y(n140), 
	.A(n139));
   NOR2X2M U28 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n201));
   CLKINVX2M U29 (.Y(n137), 
	.A(A[6]));
   CLKINVX1M U30 (.Y(n196), 
	.A(EN));
   CLKINVX2M U32 (.Y(n182), 
	.A(B[2]));
   OR2X2M U33 (.Y(n5), 
	.B(n197), 
	.A(n124));
   AOI2B1X1M U34 (.Y(n178), 
	.B0(n175), 
	.A1N(n177), 
	.A0(n176));
   INVX2M U35 (.Y(N157), 
	.A(n178));
   NAND2X2M U36 (.Y(n6), 
	.B(n122), 
	.A(n116));
   INVX2M U38 (.Y(n185), 
	.A(B[6]));
   AOI222X1M U56 (.Y(n111), 
	.C1(n66), 
	.C0(N124), 
	.B1(n143), 
	.B0(A[0]), 
	.A1(FE_OFN27_n52), 
	.A0(N108));
   XNOR2X2M U57 (.Y(n172), 
	.B(B[6]), 
	.A(n138));
   OAI31X1M U58 (.Y(n158), 
	.B0(n166), 
	.A2(n155), 
	.A1(n156), 
	.A0(n165));
   AOI211X2M U59 (.Y(n155), 
	.C0(n154), 
	.B0(n162), 
	.A1(n181), 
	.A0(A[1]));
   AOI211X2M U60 (.Y(n164), 
	.C0(n161), 
	.B0(n162), 
	.A1(n194), 
	.A0(n163));
   NAND2BX2M U61 (.Y(n162), 
	.B(n167), 
	.AN(n156));
   OAI21X2M U62 (.Y(N158), 
	.B0(n176), 
	.A1(n160), 
	.A0(n175));
   NOR3BX2M U64 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n200), 
	.AN(n122));
   AND3X2M U65 (.Y(n41), 
	.C(n112), 
	.B(n111), 
	.A(n110));
   AOI31X2M U67 (.Y(ALU_OUT_cmp[2]), 
	.B0(n196), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   NOR3X2M U68 (.Y(n93), 
	.C(n44), 
	.B(n43), 
	.A(n42));
   NOR2X2M U70 (.Y(n156), 
	.B(A[2]), 
	.A(n182));
   NOR2X2M U71 (.Y(n153), 
	.B(A[0]), 
	.A(n180));
   NOR2X2M U72 (.Y(n165), 
	.B(A[3]), 
	.A(n184));
   NOR2X2M U74 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   CLKINVX1M U77 (.Y(n189), 
	.A(B[4]));
   CLKINVX1M U78 (.Y(n188), 
	.A(B[5]));
   OAI21X1M U79 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   OAI21X1M U80 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   CLKINVX1M U81 (.Y(n180), 
	.A(B[0]));
   NOR2X2M U82 (.Y(n175), 
	.B(B[7]), 
	.A(n179));
   AND2X2M U83 (.Y(n42), 
	.B(FE_OFN27_n52), 
	.A(N110));
   AND2X2M U84 (.Y(n43), 
	.B(n143), 
	.A(A[2]));
   AND2X1M U85 (.Y(n44), 
	.B(n66), 
	.A(N126));
   CLKINVX2M U86 (.Y(n146), 
	.A(n5));
   CLKINVX2M U88 (.Y(n143), 
	.A(n6));
   OAI2BB1X2M U90 (.Y(ALU_OUT_cmp[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U91 (.Y(ALU_OUT_cmp[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U92 (.Y(ALU_OUT_cmp[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U93 (.Y(ALU_OUT_cmp[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U95 (.Y(ALU_OUT_cmp[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U96 (.Y(ALU_OUT_cmp[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U98 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n199));
   AND2X2M U99 (.Y(n67), 
	.B(n122), 
	.A(n123));
   CLKINVX2M U100 (.Y(n198), 
	.A(n108));
   INVX2M U101 (.Y(n197), 
	.A(n117));
   OAI2BB1X2M U102 (.Y(ALU_OUT_cmp[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N117));
   NOR2BX2M U104 (.Y(n54), 
	.B(n197), 
	.AN(n123));
   INVX2M U105 (.Y(n199), 
	.A(n124));
   NOR2BX2M U108 (.Y(n48), 
	.B(n196), 
	.AN(FE_OFN27_n52));
   AOI31X2M U109 (.Y(ALU_OUT_cmp[6]), 
	.B0(n196), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U110 (.Y(n68), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U111 (.Y(n70), 
	.C0(n71), 
	.B1(n137), 
	.B0(n146), 
	.A1(n140), 
	.A0(n198));
   AOI222X1M U112 (.Y(n69), 
	.C1(n66), 
	.C0(N130), 
	.B1(n138), 
	.B0(n143), 
	.A1(FE_OFN27_n52), 
	.A0(N114));
   CLKINVX2M U113 (.Y(n201), 
	.A(ALU_FUN[0]));
   CLKINVX2M U114 (.Y(n200), 
	.A(ALU_FUN[1]));
   AND4X1M U115 (.Y(n107), 
	.D(n201), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N158));
   NOR2X2M U116 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NAND3X2M U117 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   AND2X2M U118 (.Y(n116), 
	.B(n200), 
	.A(ALU_FUN[2]));
   NAND3X2M U119 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n201), 
	.A(n199));
   CLKNAND2X2M U120 (.Y(n49), 
	.B(n186), 
	.A(EN));
   NAND2X2M U121 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NAND3X2M U122 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR3X2M U124 (.Y(n52), 
	.C(n200), 
	.B(ALU_FUN[2]), 
	.A(n197));
   AND3X2M U125 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n201), 
	.A(n123));
   INVX2M U126 (.Y(n179), 
	.A(n140));
   CLKINVX2M U127 (.Y(n194), 
	.A(A[1]));
   INVX2M U128 (.Y(n193), 
	.A(A[2]));
   INVX2M U129 (.Y(n192), 
	.A(A[3]));
   INVX2M U130 (.Y(n191), 
	.A(A[4]));
   INVX2M U131 (.Y(n190), 
	.A(A[5]));
   AOI22X1M U133 (.Y(n110), 
	.B1(n54), 
	.B0(N90), 
	.A1(n67), 
	.A0(N99));
   AOI211X2M U134 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n195), 
	.A0(n146));
   AOI31X2M U135 (.Y(ALU_OUT_cmp[1]), 
	.B0(n196), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI222X1M U136 (.Y(n98), 
	.C1(n67), 
	.C0(N100), 
	.B1(FE_OFN27_n52), 
	.B0(N109), 
	.A1(n54), 
	.A0(N91));
   AOI211X2M U137 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n198), 
	.A0(A[2]));
   AOI222X1M U138 (.Y(n99), 
	.C1(n143), 
	.C0(A[1]), 
	.B1(n194), 
	.B0(n146), 
	.A1(n66), 
	.A0(N125));
   AOI22X1M U139 (.Y(n92), 
	.B1(n54), 
	.B0(N92), 
	.A1(n67), 
	.A0(N101));
   AOI221XLM U140 (.Y(n94), 
	.C0(n95), 
	.B1(n193), 
	.B0(n146), 
	.A1(n198), 
	.A0(A[3]));
   AOI31X2M U144 (.Y(ALU_OUT_cmp[3]), 
	.B0(n196), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U145 (.Y(n86), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U146 (.Y(n88), 
	.C0(n89), 
	.B1(n192), 
	.B0(n146), 
	.A1(n198), 
	.A0(A[4]));
   AOI222X1M U147 (.Y(n87), 
	.C1(n66), 
	.C0(N127), 
	.B1(n143), 
	.B0(A[3]), 
	.A1(FE_OFN27_n52), 
	.A0(N111));
   AOI31X2M U148 (.Y(ALU_OUT_cmp[4]), 
	.B0(n196), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U149 (.Y(n80), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U150 (.Y(n82), 
	.C0(n83), 
	.B1(n191), 
	.B0(n146), 
	.A1(A[5]), 
	.A0(n198));
   AOI222X1M U151 (.Y(n81), 
	.C1(n66), 
	.C0(N128), 
	.B1(n143), 
	.B0(A[4]), 
	.A1(FE_OFN27_n52), 
	.A0(N112));
   AOI31X2M U152 (.Y(ALU_OUT_cmp[5]), 
	.B0(n196), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U153 (.Y(n74), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U154 (.Y(n76), 
	.C0(n77), 
	.B1(n190), 
	.B0(n146), 
	.A1(n138), 
	.A0(n198));
   AOI222X1M U155 (.Y(n75), 
	.C1(n66), 
	.C0(N129), 
	.B1(n143), 
	.B0(A[5]), 
	.A1(FE_OFN27_n52), 
	.A0(N113));
   AOI31X2M U156 (.Y(ALU_OUT_cmp[7]), 
	.B0(n196), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U157 (.Y(n55), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U158 (.Y(n57), 
	.C0(n60), 
	.B1(n140), 
	.B0(n143), 
	.A1(n139), 
	.A0(n146));
   AOI22X1M U159 (.Y(n56), 
	.B1(FE_OFN27_n52), 
	.B0(N115), 
	.A1(n66), 
	.A0(N131));
   OAI222X1M U161 (.Y(n71), 
	.C1(n190), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n185), 
	.A0(n72));
   AOI221XLM U162 (.Y(n73), 
	.C0(n146), 
	.B1(n137), 
	.B0(n64), 
	.A1(n63), 
	.A0(n138));
   AOI221XLM U163 (.Y(n72), 
	.C0(n143), 
	.B1(n65), 
	.B0(n138), 
	.A1(n137), 
	.A0(n63));
   INVX2M U166 (.Y(n186), 
	.A(n109));
   AOI211X2M U167 (.Y(n109), 
	.C0(n64), 
	.B0(n146), 
	.A1(n67), 
	.A0(N107));
   AOI21X2M U168 (.Y(ALU_OUT_cmp[8]), 
	.B0(n196), 
	.A1(n51), 
	.A0(n50));
   AOI2BB2XLM U169 (.Y(n51), 
	.B1(FE_OFN27_n52), 
	.B0(N116), 
	.A1N(n53), 
	.A0N(n139));
   AOI21X2M U170 (.Y(n50), 
	.B0(n186), 
	.A1(n54), 
	.A0(N98));
   CLKINVX2M U172 (.Y(n138), 
	.A(n137));
   INVX2M U173 (.Y(n195), 
	.A(A[0]));
   INVXLM U178 (.Y(n183), 
	.A(n164));
   INVXLM U179 (.Y(n181), 
	.A(n153));
   AOI221XLM U180 (.Y(n119), 
	.C0(n146), 
	.B1(n195), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   AOI31X2M U181 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N156));
   NOR3X2M U182 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n200));
   AOI221XLM U183 (.Y(n104), 
	.C0(n146), 
	.B1(n194), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   AOI31X2M U184 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   NOR3X2M U185 (.Y(n106), 
	.C(n200), 
	.B(ALU_FUN[2]), 
	.A(n201));
   OAI222X1M U186 (.Y(n60), 
	.C1(n137), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n187), 
	.A0(n61));
   INVX2M U187 (.Y(n187), 
	.A(B[7]));
   AOI221XLM U188 (.Y(n62), 
	.C0(n146), 
	.B1(n179), 
	.B0(n64), 
	.A1(n140), 
	.A0(n63));
   AOI221XLM U189 (.Y(n61), 
	.C0(n143), 
	.B1(n65), 
	.B0(n140), 
	.A1(n179), 
	.A0(n63));
   OAI222X1M U190 (.Y(n83), 
	.C1(n192), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n189), 
	.A0(n84));
   AOI221XLM U191 (.Y(n85), 
	.C0(n146), 
	.B1(n191), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U192 (.Y(n84), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n191), 
	.A0(n63));
   OAI222X1M U193 (.Y(n77), 
	.C1(n191), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n188), 
	.A0(n78));
   AOI221XLM U194 (.Y(n79), 
	.C0(n146), 
	.B1(n190), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U195 (.Y(n78), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n190), 
	.A0(n63));
   OAI222X1M U196 (.Y(n95), 
	.C1(n194), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n182), 
	.A0(n96));
   AOI221XLM U197 (.Y(n97), 
	.C0(n146), 
	.B1(n193), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U198 (.Y(n96), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n193), 
	.A0(n63));
   OAI222X1M U199 (.Y(n89), 
	.C1(n193), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n184), 
	.A0(n90));
   AOI221XLM U200 (.Y(n91), 
	.C0(n146), 
	.B1(n192), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U201 (.Y(n90), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n192), 
	.A0(n63));
   OAI2B2X1M U202 (.Y(n102), 
	.B1(n195), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U203 (.Y(n103), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n194), 
	.A0(n63));
   OAI2B2X1M U204 (.Y(n114), 
	.B1(n194), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U205 (.Y(n115), 
	.C0(n143), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n195), 
	.A0(n63));
   NAND2BX1M U206 (.Y(n168), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U207 (.Y(n157), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U208 (.Y(n170), 
	.B(n157), 
	.A(n168));
   CLKNAND2X2M U209 (.Y(n167), 
	.B(n182), 
	.A(A[2]));
   AOI21X1M U210 (.Y(n154), 
	.B0(B[1]), 
	.A1(n194), 
	.A0(n153));
   CLKNAND2X2M U211 (.Y(n166), 
	.B(n184), 
	.A(A[3]));
   NAND2BX1M U212 (.Y(n173), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U213 (.Y(n159), 
	.C0(n173), 
	.B0(n157), 
	.A1(n158), 
	.A0(n170));
   NAND2BX1M U214 (.Y(n169), 
	.B(A[5]), 
	.AN(B[5]));
   AOI32X1M U215 (.Y(n160), 
	.B1(n137), 
	.B0(B[6]), 
	.A2(n172), 
	.A1(n169), 
	.A0(n159));
   CLKNAND2X2M U216 (.Y(n176), 
	.B(n179), 
	.A(B[7]));
   CLKNAND2X2M U217 (.Y(n163), 
	.B(n180), 
	.A(A[0]));
   OA21X1M U218 (.Y(n161), 
	.B0(B[1]), 
	.A1(n194), 
	.A0(n163));
   AOI31X1M U219 (.Y(n171), 
	.B0(n165), 
	.A2(n166), 
	.A1(n167), 
	.A0(n183));
   OAI2B11X1M U220 (.Y(n174), 
	.C0(n168), 
	.B0(n169), 
	.A1N(n171), 
	.A0(n170));
   AOI32X1M U221 (.Y(n177), 
	.B1(n185), 
	.B0(n138), 
	.A2(n172), 
	.A1(n173), 
	.A0(n174));
   NOR2X1M U222 (.Y(N156), 
	.B(N157), 
	.A(N158));
   ALU_DW_div_uns_0 div_37 (.a({ n140,
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125,
		N124 }), 
	.n188(n188), 
	.n187(n187), 
	.n184(n184), 
	.n185(n185), 
	.n182(n182));
   ALU_DW01_sub_0 sub_35 (.A({ 1'b0,
		n140,
		n138,
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100,
		N99 }), 
	.n188(n188), 
	.n187(n187), 
	.n184(n184), 
	.n185(n185), 
	.n180(n180), 
	.n182(n182), 
	.n189(n189));
   ALU_DW01_add_0 add_34 (.A({ 1'b0,
		n140,
		n138,
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90 }));
   ALU_DW02_mult_0 mult_36 (.A({ n140,
		n138,
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109,
		N108 }), 
	.n187(n187), 
	.n189(n189), 
	.n184(n184), 
	.n185(n185), 
	.n194(n194), 
	.n193(n193), 
	.n192(n192), 
	.n195(n195), 
	.n191(n191), 
	.n179(n179), 
	.n190(n190), 
	.n180(n180), 
	.n182(n182), 
	.n188(n188));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire HTIE_LTIEHI_NET;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

