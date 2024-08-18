/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 19 02:04:51 2024
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module RST_SYNC_stages1_test_0 ( rst, clk, SYNC_RST, test_si, test_so, test_se
 );
  input rst, clk, test_si, test_se;
  output SYNC_RST, test_so;
  wire   \rst_reg[0] ;
  assign test_so = \rst_reg[0] ;

  SDFFRQX1M \rst_reg_reg[0]  ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(\rst_reg[0] ) );
  SDFFRQX1M SYNC_RST_reg ( .D(\rst_reg[0] ), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(SYNC_RST) );
endmodule


module RST_SYNC_stages1_test_1 ( rst, clk, SYNC_RST, test_si, test_so, test_se
 );
  input rst, clk, test_si, test_se;
  output SYNC_RST, test_so;
  wire   \rst_reg[0] ;
  assign test_so = \rst_reg[0] ;

  SDFFRQX2M \rst_reg_reg[0]  ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(\rst_reg[0] ) );
  SDFFRQX1M SYNC_RST_reg ( .D(\rst_reg[0] ), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 ( unsync_bus, bus_enable, clk, 
        rst, enable_pulse, sync_bus, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst, test_si, test_se;
  output enable_pulse, test_so;
  wire   n1, n3, n5, n7, n9, n11, n13, n15, n17, n21, n33, n34, n35, n36, n40,
         n41, n42, n43, n44;
  wire   [1:0] sync_ff;
  assign test_so = sync_ff[1];

  SDFFRQX4M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(n34), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_ff_reg[1]  ( .D(n44), .SI(n44), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync_ff[1]) );
  SDFFRQX1M \sync_ff_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(clk), .RN(n34), .Q(sync_ff[0]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(n40), .SE(test_se), .CK(clk), 
        .RN(n34), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(enable_pulse), .SE(test_se), .CK(
        clk), .RN(n34), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(n42), .SE(test_se), .CK(clk), .RN(
        n34), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(n34), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(n41), .SE(test_se), .CK(clk), .RN(
        n34), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(n43), .SE(test_se), .CK(clk), 
        .RN(n34), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(n34), .Q(sync_bus[7]) );
  INVX4M U4 ( .A(n21), .Y(enable_pulse) );
  AO22XLM U5 ( .A0(unsync_bus[1]), .A1(n36), .B0(sync_bus[1]), .B1(n33), .Y(n5) );
  INVX4M U27 ( .A(n1), .Y(n36) );
  BUFX4M U28 ( .A(n1), .Y(n33) );
  INVX6M U29 ( .A(n35), .Y(n34) );
  INVX2M U30 ( .A(rst), .Y(n35) );
  NAND2BX2M U31 ( .AN(sync_ff[1]), .B(sync_ff[0]), .Y(n1) );
  AO22X1M U32 ( .A0(unsync_bus[6]), .A1(n36), .B0(sync_bus[6]), .B1(n33), .Y(
        n15) );
  AO22X1M U33 ( .A0(unsync_bus[4]), .A1(n36), .B0(n33), .B1(n43), .Y(n11) );
  AO22X1M U34 ( .A0(unsync_bus[2]), .A1(n36), .B0(n33), .B1(n42), .Y(n7) );
  AO22X1M U35 ( .A0(unsync_bus[3]), .A1(n36), .B0(n33), .B1(n40), .Y(n9) );
  AO22X1M U36 ( .A0(unsync_bus[0]), .A1(n36), .B0(n33), .B1(n41), .Y(n3) );
  AO22X1M U37 ( .A0(unsync_bus[7]), .A1(n36), .B0(sync_bus[7]), .B1(n33), .Y(
        n17) );
  AO22X1M U38 ( .A0(unsync_bus[5]), .A1(n36), .B0(sync_bus[5]), .B1(n33), .Y(
        n13) );
  DLY1X1M U39 ( .A(sync_bus[3]), .Y(n40) );
  DLY1X1M U40 ( .A(sync_bus[0]), .Y(n41) );
  DLY1X1M U41 ( .A(sync_bus[2]), .Y(n42) );
  DLY1X1M U42 ( .A(sync_bus[4]), .Y(n43) );
  DLY1X1M U43 ( .A(sync_ff[0]), .Y(n44) );
  SDFFRX1M enable_pulse_reg ( .D(n36), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .QN(n21) );
endmodule


module fifo_wr_pointer_width4_test_1 ( winc, wclk, wrst_n, gray_rd_ptr, w_addr, 
        gray_wr_ptr, wfull, test_si, test_so, test_se );
  input [3:0] gray_rd_ptr;
  output [2:0] w_addr;
  output [3:0] gray_wr_ptr;
  input winc, wclk, wrst_n, test_si, test_se;
  output wfull, test_so;
  wire   n37, n38, n39, n40, n1, n2, n3, n4, n6, n7, n8, n9, n10, n14, n17,
         n19, n21, n27, n28, n29, n32;
  wire   [3:0] gray_wr_ptr_cmp;
  assign test_so = gray_wr_ptr_cmp[3];

  SDFFRQX4M \wr_ptr_reg[2]  ( .D(n17), .SI(n32), .SE(test_se), .CK(wclk), .RN(
        n27), .Q(w_addr[2]) );
  SDFFRQX1M \gray_wr_ptr_reg[3]  ( .D(gray_wr_ptr_cmp[3]), .SI(gray_wr_ptr[2]), 
        .SE(test_se), .CK(wclk), .RN(n27), .Q(n37) );
  SDFFRQX1M \gray_wr_ptr_reg[1]  ( .D(gray_wr_ptr_cmp[1]), .SI(gray_wr_ptr[0]), 
        .SE(test_se), .CK(wclk), .RN(n27), .Q(n39) );
  SDFFRQX1M \gray_wr_ptr_reg[0]  ( .D(gray_wr_ptr_cmp[0]), .SI(test_si), .SE(
        test_se), .CK(wclk), .RN(n27), .Q(n40) );
  SDFFRQX1M \gray_wr_ptr_reg[2]  ( .D(gray_wr_ptr_cmp[2]), .SI(gray_wr_ptr[1]), 
        .SE(test_se), .CK(wclk), .RN(n27), .Q(n38) );
  SDFFRQX2M \wr_ptr_reg[3]  ( .D(n14), .SI(w_addr[2]), .SE(test_se), .CK(wclk), 
        .RN(n27), .Q(gray_wr_ptr_cmp[3]) );
  SDFFRQX4M \wr_ptr_reg[0]  ( .D(n21), .SI(gray_wr_ptr[3]), .SE(test_se), .CK(
        wclk), .RN(n27), .Q(w_addr[0]) );
  SDFFRQX4M \wr_ptr_reg[1]  ( .D(n19), .SI(w_addr[0]), .SE(test_se), .CK(wclk), 
        .RN(n27), .Q(w_addr[1]) );
  INVX4M U8 ( .A(n28), .Y(n27) );
  INVX2M U9 ( .A(wrst_n), .Y(n28) );
  INVX2M U10 ( .A(n1), .Y(wfull) );
  NOR2X2M U11 ( .A(n29), .B(n6), .Y(n4) );
  NAND2X2M U12 ( .A(winc), .B(n1), .Y(n6) );
  CLKXOR2X2M U13 ( .A(gray_rd_ptr[3]), .B(n37), .Y(n10) );
  NAND4X2M U14 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n1) );
  XNOR2X2M U15 ( .A(n40), .B(gray_rd_ptr[0]), .Y(n7) );
  XNOR2X2M U16 ( .A(n39), .B(gray_rd_ptr[1]), .Y(n8) );
  CLKXOR2X2M U17 ( .A(gray_rd_ptr[2]), .B(n38), .Y(n9) );
  CLKXOR2X2M U18 ( .A(n4), .B(w_addr[1]), .Y(n19) );
  NAND2X2M U19 ( .A(w_addr[1]), .B(n4), .Y(n3) );
  XNOR2X2M U20 ( .A(w_addr[2]), .B(n3), .Y(n17) );
  XNOR2X2M U29 ( .A(gray_wr_ptr_cmp[3]), .B(n2), .Y(n14) );
  NAND2BX2M U30 ( .AN(n3), .B(w_addr[2]), .Y(n2) );
  INVX2M U31 ( .A(w_addr[0]), .Y(n29) );
  CLKXOR2X2M U32 ( .A(w_addr[2]), .B(w_addr[1]), .Y(gray_wr_ptr_cmp[1]) );
  CLKXOR2X2M U33 ( .A(w_addr[2]), .B(gray_wr_ptr_cmp[3]), .Y(
        gray_wr_ptr_cmp[2]) );
  XNOR2X2M U34 ( .A(n32), .B(n29), .Y(gray_wr_ptr_cmp[0]) );
  XNOR2X2M U35 ( .A(w_addr[0]), .B(n6), .Y(n21) );
  DLY1X1M U36 ( .A(w_addr[1]), .Y(n32) );
  DLY1X1M U37 ( .A(n40), .Y(gray_wr_ptr[0]) );
  DLY1X1M U38 ( .A(n39), .Y(gray_wr_ptr[1]) );
  DLY1X1M U39 ( .A(n38), .Y(gray_wr_ptr[2]) );
  DLY1X1M U40 ( .A(n37), .Y(gray_wr_ptr[3]) );
endmodule


module fifo_rd_pointer_width4_test_1 ( rinc, rclk, rrst_n, gray_wr_ptr, raddr, 
        gray_rd_ptr, empty, test_si, test_so, test_se );
  input [3:0] gray_wr_ptr;
  output [2:0] raddr;
  output [3:0] gray_rd_ptr;
  input rinc, rclk, rrst_n, test_si, test_se;
  output empty, test_so;
  wire   n35, n42, n43, n44, n45, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n9, n32, n33, n34;
  wire   [3:0] gray_rd_ptr_cmp;
  assign test_so = gray_rd_ptr_cmp[3];

  SDFFRQX1M \gray_rd_ptr_reg[3]  ( .D(gray_rd_ptr_cmp[3]), .SI(gray_rd_ptr[2]), 
        .SE(test_se), .CK(rclk), .RN(n32), .Q(n42) );
  SDFFRQX1M \gray_rd_ptr_reg[1]  ( .D(gray_rd_ptr_cmp[1]), .SI(gray_rd_ptr[0]), 
        .SE(test_se), .CK(rclk), .RN(n32), .Q(n44) );
  SDFFRQX1M \gray_rd_ptr_reg[2]  ( .D(gray_rd_ptr_cmp[2]), .SI(gray_rd_ptr[1]), 
        .SE(test_se), .CK(rclk), .RN(n32), .Q(n43) );
  SDFFRQX1M \gray_rd_ptr_reg[0]  ( .D(gray_rd_ptr_cmp[0]), .SI(test_si), .SE(
        test_se), .CK(rclk), .RN(n32), .Q(n45) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(n20), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(n32), .Q(n35) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(n22), .SI(gray_rd_ptr[3]), .SE(test_se), .CK(
        rclk), .RN(n32), .Q(raddr[0]) );
  SDFFRQX2M \rd_ptr_reg[3]  ( .D(n19), .SI(raddr[2]), .SE(test_se), .CK(rclk), 
        .RN(n32), .Q(gray_rd_ptr_cmp[3]) );
  SDFFRQX4M \rd_ptr_reg[1]  ( .D(n21), .SI(n34), .SE(test_se), .CK(rclk), .RN(
        rrst_n), .Q(raddr[1]) );
  INVXLM U11 ( .A(n35), .Y(n9) );
  INVX6M U12 ( .A(n9), .Y(raddr[2]) );
  INVX4M U21 ( .A(n33), .Y(n32) );
  INVX2M U22 ( .A(rrst_n), .Y(n33) );
  NOR2X2M U23 ( .A(n34), .B(n13), .Y(n12) );
  INVX2M U24 ( .A(n14), .Y(empty) );
  XNOR2X2M U25 ( .A(n44), .B(gray_wr_ptr[1]), .Y(n15) );
  XNOR2X2M U26 ( .A(gray_rd_ptr_cmp[3]), .B(n10), .Y(n19) );
  NAND2BX2M U27 ( .AN(n11), .B(raddr[2]), .Y(n10) );
  NAND4X2M U28 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  XNOR2X2M U29 ( .A(n42), .B(gray_wr_ptr[3]), .Y(n17) );
  XNOR2X2M U30 ( .A(n43), .B(gray_wr_ptr[2]), .Y(n18) );
  XNOR2X2M U31 ( .A(n45), .B(gray_wr_ptr[0]), .Y(n16) );
  NAND2X2M U32 ( .A(raddr[1]), .B(n12), .Y(n11) );
  NAND2X2M U33 ( .A(rinc), .B(n14), .Y(n13) );
  CLKXOR2X2M U34 ( .A(raddr[2]), .B(raddr[1]), .Y(gray_rd_ptr_cmp[1]) );
  CLKXOR2X2M U35 ( .A(raddr[2]), .B(gray_rd_ptr_cmp[3]), .Y(gray_rd_ptr_cmp[2]) );
  CLKXOR2X2M U36 ( .A(raddr[1]), .B(n12), .Y(n21) );
  XNOR2X2M U37 ( .A(raddr[2]), .B(n11), .Y(n20) );
  XNOR2X2M U38 ( .A(raddr[0]), .B(n13), .Y(n22) );
  XNOR2X2M U39 ( .A(raddr[1]), .B(n34), .Y(gray_rd_ptr_cmp[0]) );
  INVX2M U40 ( .A(raddr[0]), .Y(n34) );
  DLY1X1M U41 ( .A(n45), .Y(gray_rd_ptr[0]) );
  DLY1X1M U42 ( .A(n43), .Y(gray_rd_ptr[2]) );
  DLY1X1M U43 ( .A(n44), .Y(gray_rd_ptr[1]) );
  DLY1X1M U44 ( .A(n42), .Y(gray_rd_ptr[3]) );
endmodule


module fifo_mem_DATA8_DEPTH8_pointer_width4_test_1 ( wclk, wrst_n, wclken, 
        waddr, raddr, wdata, rdata, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, wclken, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , \regArr[3][7] , \regArr[3][6] , \regArr[3][5] ,
         \regArr[3][4] , \regArr[3][3] , \regArr[3][2] , \regArr[3][1] ,
         \regArr[3][0] , \regArr[2][7] , \regArr[2][6] , \regArr[2][5] ,
         \regArr[2][4] , \regArr[2][3] , \regArr[2][2] , \regArr[2][1] ,
         \regArr[2][0] , \regArr[1][7] , \regArr[1][6] , \regArr[1][5] ,
         \regArr[1][4] , \regArr[1][3] , \regArr[1][2] , \regArr[1][1] ,
         \regArr[1][0] , \regArr[0][7] , \regArr[0][6] , \regArr[0][5] ,
         \regArr[0][4] , \regArr[0][3] , \regArr[0][2] , \regArr[0][1] ,
         \regArr[0][0] , n76, n81, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  SDFFRQX1M \regArr_reg[0][7]  ( .D(n92), .SI(n324), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[0][7] ) );
  SDFFRQX1M \regArr_reg[0][6]  ( .D(n91), .SI(n323), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[0][6] ) );
  SDFFRQX1M \regArr_reg[0][5]  ( .D(n90), .SI(n322), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[0][5] ) );
  SDFFRQX1M \regArr_reg[0][4]  ( .D(n89), .SI(n321), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[0][4] ) );
  SDFFRQX1M \regArr_reg[0][3]  ( .D(n88), .SI(n320), .SE(test_se), .CK(wclk), 
        .RN(n246), .Q(\regArr[0][3] ) );
  SDFFRQX1M \regArr_reg[0][2]  ( .D(n87), .SI(n319), .SE(test_se), .CK(wclk), 
        .RN(n246), .Q(\regArr[0][2] ) );
  SDFFRQX1M \regArr_reg[0][1]  ( .D(n86), .SI(n318), .SE(test_se), .CK(wclk), 
        .RN(n246), .Q(\regArr[0][1] ) );
  SDFFRQX1M \regArr_reg[0][0]  ( .D(n85), .SI(test_si1), .SE(test_se), .CK(
        wclk), .RN(n246), .Q(\regArr[0][0] ) );
  SDFFRQX1M \regArr_reg[7][7]  ( .D(n148), .SI(n308), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][7] ) );
  SDFFRQX1M \regArr_reg[7][6]  ( .D(n147), .SI(n307), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][6] ) );
  SDFFRQX1M \regArr_reg[7][5]  ( .D(n146), .SI(n306), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][5] ) );
  SDFFRQX1M \regArr_reg[7][4]  ( .D(n145), .SI(test_si2), .SE(test_se), .CK(
        wclk), .RN(n241), .Q(\regArr[7][4] ) );
  SDFFRQX1M \regArr_reg[7][3]  ( .D(n144), .SI(n305), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][3] ) );
  SDFFRQX1M \regArr_reg[7][2]  ( .D(n143), .SI(n304), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][2] ) );
  SDFFRQX1M \regArr_reg[7][1]  ( .D(n142), .SI(n303), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][1] ) );
  SDFFRQX1M \regArr_reg[7][0]  ( .D(n141), .SI(n278), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[7][0] ) );
  SDFFRQX1M \regArr_reg[6][7]  ( .D(n140), .SI(n277), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[6][7] ) );
  SDFFRQX1M \regArr_reg[6][6]  ( .D(n139), .SI(n276), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[6][6] ) );
  SDFFRQX1M \regArr_reg[6][5]  ( .D(n138), .SI(n275), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[6][5] ) );
  SDFFRQX1M \regArr_reg[6][4]  ( .D(n137), .SI(n274), .SE(test_se), .CK(wclk), 
        .RN(n241), .Q(\regArr[6][4] ) );
  SDFFRQX1M \regArr_reg[6][3]  ( .D(n136), .SI(n273), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[6][3] ) );
  SDFFRQX1M \regArr_reg[6][2]  ( .D(n135), .SI(n272), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[6][2] ) );
  SDFFRQX1M \regArr_reg[6][1]  ( .D(n134), .SI(n271), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[6][1] ) );
  SDFFRQX1M \regArr_reg[6][0]  ( .D(n133), .SI(n294), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[6][0] ) );
  SDFFRQX1M \regArr_reg[5][7]  ( .D(n132), .SI(n293), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][7] ) );
  SDFFRQX1M \regArr_reg[5][6]  ( .D(n131), .SI(n292), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][6] ) );
  SDFFRQX1M \regArr_reg[5][5]  ( .D(n130), .SI(n291), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][5] ) );
  SDFFRQX1M \regArr_reg[5][4]  ( .D(n129), .SI(n290), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][4] ) );
  SDFFRQX1M \regArr_reg[5][3]  ( .D(n128), .SI(n289), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][3] ) );
  SDFFRQX1M \regArr_reg[5][2]  ( .D(n127), .SI(n288), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][2] ) );
  SDFFRQX1M \regArr_reg[5][1]  ( .D(n126), .SI(n287), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][1] ) );
  SDFFRQX1M \regArr_reg[5][0]  ( .D(n125), .SI(n317), .SE(test_se), .CK(wclk), 
        .RN(n242), .Q(\regArr[5][0] ) );
  SDFFRQX1M \regArr_reg[4][7]  ( .D(n124), .SI(n316), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][7] ) );
  SDFFRQX1M \regArr_reg[4][6]  ( .D(n123), .SI(n315), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][6] ) );
  SDFFRQX1M \regArr_reg[4][5]  ( .D(n122), .SI(n314), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][5] ) );
  SDFFRQX1M \regArr_reg[4][4]  ( .D(n121), .SI(n313), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][4] ) );
  SDFFRQX1M \regArr_reg[4][3]  ( .D(n120), .SI(n312), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][3] ) );
  SDFFRQX1M \regArr_reg[4][2]  ( .D(n119), .SI(n311), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][2] ) );
  SDFFRQX1M \regArr_reg[4][1]  ( .D(n118), .SI(n310), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][1] ) );
  SDFFRQX1M \regArr_reg[4][0]  ( .D(n117), .SI(n302), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[4][0] ) );
  SDFFRQX1M \regArr_reg[3][7]  ( .D(n116), .SI(n301), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[3][7] ) );
  SDFFRQX1M \regArr_reg[3][6]  ( .D(n115), .SI(n300), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[3][6] ) );
  SDFFRQX1M \regArr_reg[3][5]  ( .D(n114), .SI(n299), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[3][5] ) );
  SDFFRQX1M \regArr_reg[3][4]  ( .D(n113), .SI(n298), .SE(test_se), .CK(wclk), 
        .RN(n243), .Q(\regArr[3][4] ) );
  SDFFRQX1M \regArr_reg[3][3]  ( .D(n112), .SI(n297), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[3][3] ) );
  SDFFRQX1M \regArr_reg[3][2]  ( .D(n111), .SI(n296), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[3][2] ) );
  SDFFRQX1M \regArr_reg[3][1]  ( .D(n110), .SI(n295), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[3][1] ) );
  SDFFRQX1M \regArr_reg[3][0]  ( .D(n109), .SI(n270), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[3][0] ) );
  SDFFRQX1M \regArr_reg[2][7]  ( .D(n108), .SI(n269), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][7] ) );
  SDFFRQX1M \regArr_reg[2][6]  ( .D(n107), .SI(n268), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][6] ) );
  SDFFRQX1M \regArr_reg[2][5]  ( .D(n106), .SI(n267), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][5] ) );
  SDFFRQX1M \regArr_reg[2][4]  ( .D(n105), .SI(n266), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][4] ) );
  SDFFRQX1M \regArr_reg[2][3]  ( .D(n104), .SI(n265), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][3] ) );
  SDFFRQX1M \regArr_reg[2][2]  ( .D(n103), .SI(n264), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][2] ) );
  SDFFRQX1M \regArr_reg[2][1]  ( .D(n102), .SI(n263), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][1] ) );
  SDFFRQX1M \regArr_reg[2][0]  ( .D(n101), .SI(n286), .SE(test_se), .CK(wclk), 
        .RN(n244), .Q(\regArr[2][0] ) );
  SDFFRQX1M \regArr_reg[1][7]  ( .D(n100), .SI(n285), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][7] ) );
  SDFFRQX1M \regArr_reg[1][6]  ( .D(n99), .SI(n284), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][6] ) );
  SDFFRQX1M \regArr_reg[1][5]  ( .D(n98), .SI(n283), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][5] ) );
  SDFFRQX1M \regArr_reg[1][4]  ( .D(n97), .SI(n282), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][4] ) );
  SDFFRQX1M \regArr_reg[1][3]  ( .D(n96), .SI(n281), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][3] ) );
  SDFFRQX1M \regArr_reg[1][2]  ( .D(n95), .SI(n280), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][2] ) );
  SDFFRQX1M \regArr_reg[1][1]  ( .D(n94), .SI(n279), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][1] ) );
  SDFFRQX1M \regArr_reg[1][0]  ( .D(n93), .SI(n325), .SE(test_se), .CK(wclk), 
        .RN(n245), .Q(\regArr[1][0] ) );
  NOR2BX4M U130 ( .AN(wclken), .B(waddr[2]), .Y(n76) );
  INVX2M U131 ( .A(waddr[1]), .Y(n258) );
  INVX2M U132 ( .A(waddr[0]), .Y(n257) );
  BUFX6M U133 ( .A(n248), .Y(n245) );
  BUFX6M U134 ( .A(n247), .Y(n244) );
  BUFX6M U135 ( .A(n247), .Y(n243) );
  BUFX6M U136 ( .A(n248), .Y(n242) );
  BUFX6M U137 ( .A(wrst_n), .Y(n241) );
  BUFX2M U138 ( .A(n247), .Y(n246) );
  BUFX2M U139 ( .A(n248), .Y(n247) );
  INVX4M U140 ( .A(n196), .Y(n232) );
  INVX4M U141 ( .A(n196), .Y(n231) );
  INVX4M U142 ( .A(n195), .Y(n240) );
  INVX4M U143 ( .A(n195), .Y(n239) );
  BUFX2M U144 ( .A(wrst_n), .Y(n248) );
  INVX4M U145 ( .A(n197), .Y(n236) );
  INVX4M U146 ( .A(n197), .Y(n235) );
  INVX4M U147 ( .A(n199), .Y(n234) );
  INVX4M U148 ( .A(n199), .Y(n233) );
  INVX4M U149 ( .A(n198), .Y(n238) );
  INVX4M U150 ( .A(n198), .Y(n237) );
  INVX4M U151 ( .A(n202), .Y(n230) );
  INVX4M U152 ( .A(n202), .Y(n229) );
  INVX4M U153 ( .A(n200), .Y(n228) );
  INVX4M U154 ( .A(n200), .Y(n227) );
  INVX4M U155 ( .A(n201), .Y(n226) );
  INVX4M U156 ( .A(n201), .Y(n225) );
  AND3X2M U157 ( .A(n257), .B(n258), .C(n76), .Y(n195) );
  AND3X2M U158 ( .A(n257), .B(n258), .C(n81), .Y(n196) );
  INVX4M U159 ( .A(n224), .Y(n222) );
  INVX6M U160 ( .A(n221), .Y(n220) );
  INVX6M U161 ( .A(n221), .Y(n219) );
  INVX4M U162 ( .A(n224), .Y(n223) );
  INVX4M U163 ( .A(wdata[0]), .Y(n256) );
  INVX4M U164 ( .A(wdata[1]), .Y(n255) );
  INVX4M U165 ( .A(wdata[2]), .Y(n254) );
  INVX4M U166 ( .A(wdata[3]), .Y(n253) );
  INVX4M U167 ( .A(wdata[4]), .Y(n252) );
  INVX4M U168 ( .A(wdata[5]), .Y(n251) );
  INVX4M U169 ( .A(wdata[6]), .Y(n250) );
  INVX4M U170 ( .A(wdata[7]), .Y(n249) );
  OAI2BB2X1M U171 ( .B0(n256), .B1(n238), .A0N(\regArr[1][0] ), .A1N(n238), 
        .Y(n93) );
  OAI2BB2X1M U172 ( .B0(n255), .B1(n237), .A0N(\regArr[1][1] ), .A1N(n237), 
        .Y(n94) );
  OAI2BB2X1M U173 ( .B0(n254), .B1(n238), .A0N(\regArr[1][2] ), .A1N(n238), 
        .Y(n95) );
  OAI2BB2X1M U174 ( .B0(n253), .B1(n237), .A0N(\regArr[1][3] ), .A1N(n237), 
        .Y(n96) );
  OAI2BB2X1M U175 ( .B0(n252), .B1(n238), .A0N(\regArr[1][4] ), .A1N(n238), 
        .Y(n97) );
  OAI2BB2X1M U176 ( .B0(n251), .B1(n237), .A0N(\regArr[1][5] ), .A1N(n237), 
        .Y(n98) );
  OAI2BB2X1M U177 ( .B0(n250), .B1(n238), .A0N(\regArr[1][6] ), .A1N(n238), 
        .Y(n99) );
  OAI2BB2X1M U178 ( .B0(n249), .B1(n237), .A0N(\regArr[1][7] ), .A1N(n237), 
        .Y(n100) );
  OAI2BB2X1M U179 ( .B0(n256), .B1(n236), .A0N(\regArr[2][0] ), .A1N(n236), 
        .Y(n101) );
  OAI2BB2X1M U180 ( .B0(n255), .B1(n235), .A0N(\regArr[2][1] ), .A1N(n235), 
        .Y(n102) );
  OAI2BB2X1M U181 ( .B0(n254), .B1(n236), .A0N(\regArr[2][2] ), .A1N(n236), 
        .Y(n103) );
  OAI2BB2X1M U182 ( .B0(n253), .B1(n235), .A0N(\regArr[2][3] ), .A1N(n235), 
        .Y(n104) );
  OAI2BB2X1M U183 ( .B0(n252), .B1(n236), .A0N(\regArr[2][4] ), .A1N(n236), 
        .Y(n105) );
  OAI2BB2X1M U184 ( .B0(n251), .B1(n235), .A0N(\regArr[2][5] ), .A1N(n235), 
        .Y(n106) );
  OAI2BB2X1M U185 ( .B0(n250), .B1(n236), .A0N(\regArr[2][6] ), .A1N(n236), 
        .Y(n107) );
  OAI2BB2X1M U186 ( .B0(n249), .B1(n235), .A0N(\regArr[2][7] ), .A1N(n235), 
        .Y(n108) );
  OAI2BB2X1M U187 ( .B0(n256), .B1(n234), .A0N(\regArr[3][0] ), .A1N(n234), 
        .Y(n109) );
  OAI2BB2X1M U188 ( .B0(n255), .B1(n233), .A0N(\regArr[3][1] ), .A1N(n233), 
        .Y(n110) );
  OAI2BB2X1M U189 ( .B0(n254), .B1(n234), .A0N(\regArr[3][2] ), .A1N(n234), 
        .Y(n111) );
  OAI2BB2X1M U190 ( .B0(n253), .B1(n233), .A0N(\regArr[3][3] ), .A1N(n233), 
        .Y(n112) );
  OAI2BB2X1M U191 ( .B0(n252), .B1(n234), .A0N(\regArr[3][4] ), .A1N(n234), 
        .Y(n113) );
  OAI2BB2X1M U192 ( .B0(n251), .B1(n233), .A0N(\regArr[3][5] ), .A1N(n233), 
        .Y(n114) );
  OAI2BB2X1M U193 ( .B0(n250), .B1(n234), .A0N(\regArr[3][6] ), .A1N(n234), 
        .Y(n115) );
  OAI2BB2X1M U194 ( .B0(n249), .B1(n233), .A0N(\regArr[3][7] ), .A1N(n233), 
        .Y(n116) );
  OAI2BB2X1M U195 ( .B0(n256), .B1(n232), .A0N(\regArr[4][0] ), .A1N(n232), 
        .Y(n117) );
  OAI2BB2X1M U196 ( .B0(n255), .B1(n231), .A0N(\regArr[4][1] ), .A1N(n231), 
        .Y(n118) );
  OAI2BB2X1M U197 ( .B0(n254), .B1(n232), .A0N(\regArr[4][2] ), .A1N(n232), 
        .Y(n119) );
  OAI2BB2X1M U198 ( .B0(n253), .B1(n231), .A0N(\regArr[4][3] ), .A1N(n231), 
        .Y(n120) );
  OAI2BB2X1M U199 ( .B0(n252), .B1(n232), .A0N(\regArr[4][4] ), .A1N(n232), 
        .Y(n121) );
  OAI2BB2X1M U200 ( .B0(n251), .B1(n231), .A0N(\regArr[4][5] ), .A1N(n231), 
        .Y(n122) );
  OAI2BB2X1M U201 ( .B0(n250), .B1(n232), .A0N(\regArr[4][6] ), .A1N(n232), 
        .Y(n123) );
  OAI2BB2X1M U202 ( .B0(n249), .B1(n231), .A0N(\regArr[4][7] ), .A1N(n231), 
        .Y(n124) );
  OAI2BB2X1M U203 ( .B0(n256), .B1(n230), .A0N(\regArr[5][0] ), .A1N(n230), 
        .Y(n125) );
  OAI2BB2X1M U204 ( .B0(n255), .B1(n229), .A0N(\regArr[5][1] ), .A1N(n229), 
        .Y(n126) );
  OAI2BB2X1M U205 ( .B0(n254), .B1(n230), .A0N(\regArr[5][2] ), .A1N(n230), 
        .Y(n127) );
  OAI2BB2X1M U206 ( .B0(n253), .B1(n229), .A0N(\regArr[5][3] ), .A1N(n229), 
        .Y(n128) );
  OAI2BB2X1M U207 ( .B0(n252), .B1(n230), .A0N(\regArr[5][4] ), .A1N(n230), 
        .Y(n129) );
  OAI2BB2X1M U208 ( .B0(n251), .B1(n229), .A0N(\regArr[5][5] ), .A1N(n229), 
        .Y(n130) );
  OAI2BB2X1M U209 ( .B0(n250), .B1(n230), .A0N(\regArr[5][6] ), .A1N(n230), 
        .Y(n131) );
  OAI2BB2X1M U210 ( .B0(n249), .B1(n229), .A0N(\regArr[5][7] ), .A1N(n229), 
        .Y(n132) );
  OAI2BB2X1M U211 ( .B0(n256), .B1(n228), .A0N(\regArr[6][0] ), .A1N(n228), 
        .Y(n133) );
  OAI2BB2X1M U212 ( .B0(n255), .B1(n227), .A0N(\regArr[6][1] ), .A1N(n227), 
        .Y(n134) );
  OAI2BB2X1M U213 ( .B0(n254), .B1(n228), .A0N(\regArr[6][2] ), .A1N(n228), 
        .Y(n135) );
  OAI2BB2X1M U214 ( .B0(n253), .B1(n227), .A0N(\regArr[6][3] ), .A1N(n227), 
        .Y(n136) );
  OAI2BB2X1M U215 ( .B0(n252), .B1(n228), .A0N(\regArr[6][4] ), .A1N(n228), 
        .Y(n137) );
  OAI2BB2X1M U216 ( .B0(n251), .B1(n227), .A0N(\regArr[6][5] ), .A1N(n227), 
        .Y(n138) );
  OAI2BB2X1M U217 ( .B0(n250), .B1(n228), .A0N(\regArr[6][6] ), .A1N(n228), 
        .Y(n139) );
  OAI2BB2X1M U218 ( .B0(n249), .B1(n227), .A0N(\regArr[6][7] ), .A1N(n227), 
        .Y(n140) );
  OAI2BB2X1M U219 ( .B0(n256), .B1(n226), .A0N(\regArr[7][0] ), .A1N(n226), 
        .Y(n141) );
  OAI2BB2X1M U220 ( .B0(n255), .B1(n225), .A0N(\regArr[7][1] ), .A1N(n225), 
        .Y(n142) );
  OAI2BB2X1M U221 ( .B0(n254), .B1(n226), .A0N(\regArr[7][2] ), .A1N(n226), 
        .Y(n143) );
  OAI2BB2X1M U222 ( .B0(n253), .B1(n225), .A0N(\regArr[7][3] ), .A1N(n225), 
        .Y(n144) );
  OAI2BB2X1M U223 ( .B0(n252), .B1(n226), .A0N(\regArr[7][4] ), .A1N(n226), 
        .Y(n145) );
  OAI2BB2X1M U224 ( .B0(n251), .B1(n225), .A0N(\regArr[7][5] ), .A1N(n225), 
        .Y(n146) );
  OAI2BB2X1M U225 ( .B0(n250), .B1(n226), .A0N(\regArr[7][6] ), .A1N(n226), 
        .Y(n147) );
  OAI2BB2X1M U226 ( .B0(n249), .B1(n225), .A0N(\regArr[7][7] ), .A1N(n225), 
        .Y(n148) );
  OAI2BB2X1M U227 ( .B0(n240), .B1(n256), .A0N(\regArr[0][0] ), .A1N(n240), 
        .Y(n85) );
  OAI2BB2X1M U228 ( .B0(n239), .B1(n255), .A0N(\regArr[0][1] ), .A1N(n239), 
        .Y(n86) );
  OAI2BB2X1M U229 ( .B0(n240), .B1(n254), .A0N(\regArr[0][2] ), .A1N(n240), 
        .Y(n87) );
  OAI2BB2X1M U230 ( .B0(n239), .B1(n253), .A0N(\regArr[0][3] ), .A1N(n239), 
        .Y(n88) );
  OAI2BB2X1M U231 ( .B0(n240), .B1(n252), .A0N(\regArr[0][4] ), .A1N(n240), 
        .Y(n89) );
  OAI2BB2X1M U232 ( .B0(n239), .B1(n251), .A0N(\regArr[0][5] ), .A1N(n239), 
        .Y(n90) );
  OAI2BB2X1M U233 ( .B0(n240), .B1(n250), .A0N(\regArr[0][6] ), .A1N(n240), 
        .Y(n91) );
  OAI2BB2X1M U234 ( .B0(n239), .B1(n249), .A0N(\regArr[0][7] ), .A1N(n239), 
        .Y(n92) );
  AND3X2M U235 ( .A(n76), .B(n257), .C(waddr[1]), .Y(n197) );
  AND3X2M U236 ( .A(n76), .B(n258), .C(waddr[0]), .Y(n198) );
  AND3X2M U237 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n199) );
  AND2X2M U238 ( .A(waddr[2]), .B(wclken), .Y(n81) );
  AND3X2M U239 ( .A(waddr[1]), .B(n257), .C(n81), .Y(n200) );
  AND3X2M U240 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n201) );
  AND3X2M U241 ( .A(waddr[0]), .B(n258), .C(n81), .Y(n202) );
  MX2X2M U242 ( .A(n216), .B(n215), .S0(N12), .Y(rdata[6]) );
  MX4X1M U243 ( .A(n316), .B(n293), .C(n277), .D(n308), .S0(n219), .S1(n222), 
        .Y(n215) );
  MX4X1M U244 ( .A(n324), .B(n285), .C(n269), .D(n301), .S0(n220), .S1(n223), 
        .Y(n216) );
  INVX2M U245 ( .A(N11), .Y(n224) );
  MX2X2M U246 ( .A(n218), .B(n217), .S0(N12), .Y(rdata[7]) );
  MX4X1M U247 ( .A(n317), .B(n294), .C(n278), .D(test_so2), .S0(n219), .S1(
        n222), .Y(n217) );
  MX4X1M U248 ( .A(n325), .B(n286), .C(n270), .D(n302), .S0(n220), .S1(n223), 
        .Y(n218) );
  MX2X2M U249 ( .A(n208), .B(n207), .S0(N12), .Y(rdata[2]) );
  MX4X1M U250 ( .A(n312), .B(n289), .C(n273), .D(n305), .S0(n219), .S1(n222), 
        .Y(n207) );
  MX4X1M U251 ( .A(n320), .B(n281), .C(n265), .D(n297), .S0(n220), .S1(n223), 
        .Y(n208) );
  MX2X2M U252 ( .A(n210), .B(n209), .S0(N12), .Y(rdata[3]) );
  MX4X1M U253 ( .A(n313), .B(n290), .C(n274), .D(test_so1), .S0(n219), .S1(
        n222), .Y(n209) );
  MX4X1M U254 ( .A(n321), .B(n282), .C(n266), .D(n298), .S0(n220), .S1(n223), 
        .Y(n210) );
  MX2X2M U255 ( .A(n212), .B(n211), .S0(N12), .Y(rdata[4]) );
  MX4X1M U256 ( .A(n314), .B(n291), .C(n275), .D(n306), .S0(n219), .S1(n222), 
        .Y(n211) );
  MX4X1M U257 ( .A(n322), .B(n283), .C(n267), .D(n299), .S0(n220), .S1(n223), 
        .Y(n212) );
  MX2X2M U258 ( .A(n214), .B(n213), .S0(N12), .Y(rdata[5]) );
  MX4X1M U259 ( .A(n315), .B(n292), .C(n276), .D(n307), .S0(n219), .S1(n222), 
        .Y(n213) );
  MX4X1M U260 ( .A(n323), .B(n284), .C(n268), .D(n300), .S0(n220), .S1(n223), 
        .Y(n214) );
  MX2X2M U261 ( .A(n204), .B(n203), .S0(N12), .Y(rdata[0]) );
  MX4X1M U262 ( .A(n310), .B(n287), .C(n271), .D(n303), .S0(n219), .S1(n222), 
        .Y(n203) );
  MX4X1M U263 ( .A(n318), .B(n279), .C(n263), .D(n295), .S0(n220), .S1(n223), 
        .Y(n204) );
  MX2X2M U264 ( .A(n206), .B(n205), .S0(N12), .Y(rdata[1]) );
  MX4X1M U265 ( .A(n311), .B(n288), .C(n272), .D(n304), .S0(n219), .S1(n222), 
        .Y(n205) );
  MX4X1M U266 ( .A(n319), .B(n280), .C(n264), .D(n296), .S0(n220), .S1(n223), 
        .Y(n206) );
  INVX2M U267 ( .A(N10), .Y(n221) );
  DLY1X1M U268 ( .A(\regArr[7][3] ), .Y(test_so1) );
  DLY1X1M U269 ( .A(\regArr[2][0] ), .Y(n263) );
  DLY1X1M U270 ( .A(\regArr[2][1] ), .Y(n264) );
  DLY1X1M U271 ( .A(\regArr[2][2] ), .Y(n265) );
  DLY1X1M U272 ( .A(\regArr[2][3] ), .Y(n266) );
  DLY1X1M U273 ( .A(\regArr[2][4] ), .Y(n267) );
  DLY1X1M U274 ( .A(\regArr[2][5] ), .Y(n268) );
  DLY1X1M U275 ( .A(\regArr[2][6] ), .Y(n269) );
  DLY1X1M U276 ( .A(\regArr[2][7] ), .Y(n270) );
  DLY1X1M U277 ( .A(\regArr[6][0] ), .Y(n271) );
  DLY1X1M U278 ( .A(\regArr[6][1] ), .Y(n272) );
  DLY1X1M U279 ( .A(\regArr[6][2] ), .Y(n273) );
  DLY1X1M U280 ( .A(\regArr[6][3] ), .Y(n274) );
  DLY1X1M U281 ( .A(\regArr[6][4] ), .Y(n275) );
  DLY1X1M U282 ( .A(\regArr[6][5] ), .Y(n276) );
  DLY1X1M U283 ( .A(\regArr[6][6] ), .Y(n277) );
  DLY1X1M U284 ( .A(\regArr[6][7] ), .Y(n278) );
  DLY1X1M U285 ( .A(\regArr[1][0] ), .Y(n279) );
  DLY1X1M U286 ( .A(\regArr[1][1] ), .Y(n280) );
  DLY1X1M U287 ( .A(\regArr[1][2] ), .Y(n281) );
  DLY1X1M U288 ( .A(\regArr[1][3] ), .Y(n282) );
  DLY1X1M U289 ( .A(\regArr[1][4] ), .Y(n283) );
  DLY1X1M U290 ( .A(\regArr[1][5] ), .Y(n284) );
  DLY1X1M U291 ( .A(\regArr[1][6] ), .Y(n285) );
  DLY1X1M U292 ( .A(\regArr[1][7] ), .Y(n286) );
  DLY1X1M U293 ( .A(\regArr[5][0] ), .Y(n287) );
  DLY1X1M U294 ( .A(\regArr[5][1] ), .Y(n288) );
  DLY1X1M U295 ( .A(\regArr[5][2] ), .Y(n289) );
  DLY1X1M U296 ( .A(\regArr[5][3] ), .Y(n290) );
  DLY1X1M U297 ( .A(\regArr[5][4] ), .Y(n291) );
  DLY1X1M U298 ( .A(\regArr[5][5] ), .Y(n292) );
  DLY1X1M U299 ( .A(\regArr[5][6] ), .Y(n293) );
  DLY1X1M U300 ( .A(\regArr[5][7] ), .Y(n294) );
  DLY1X1M U301 ( .A(\regArr[3][0] ), .Y(n295) );
  DLY1X1M U302 ( .A(\regArr[3][1] ), .Y(n296) );
  DLY1X1M U303 ( .A(\regArr[3][2] ), .Y(n297) );
  DLY1X1M U304 ( .A(\regArr[3][3] ), .Y(n298) );
  DLY1X1M U305 ( .A(\regArr[3][4] ), .Y(n299) );
  DLY1X1M U306 ( .A(\regArr[3][5] ), .Y(n300) );
  DLY1X1M U307 ( .A(\regArr[3][6] ), .Y(n301) );
  DLY1X1M U308 ( .A(\regArr[3][7] ), .Y(n302) );
  DLY1X1M U309 ( .A(\regArr[7][0] ), .Y(n303) );
  DLY1X1M U310 ( .A(\regArr[7][1] ), .Y(n304) );
  DLY1X1M U311 ( .A(\regArr[7][2] ), .Y(n305) );
  DLY1X1M U312 ( .A(\regArr[7][4] ), .Y(n306) );
  DLY1X1M U313 ( .A(\regArr[7][5] ), .Y(n307) );
  DLY1X1M U314 ( .A(\regArr[7][6] ), .Y(n308) );
  DLY1X1M U315 ( .A(\regArr[7][7] ), .Y(test_so2) );
  DLY1X1M U316 ( .A(\regArr[4][0] ), .Y(n310) );
  DLY1X1M U317 ( .A(\regArr[4][1] ), .Y(n311) );
  DLY1X1M U318 ( .A(\regArr[4][2] ), .Y(n312) );
  DLY1X1M U319 ( .A(\regArr[4][3] ), .Y(n313) );
  DLY1X1M U320 ( .A(\regArr[4][4] ), .Y(n314) );
  DLY1X1M U321 ( .A(\regArr[4][5] ), .Y(n315) );
  DLY1X1M U322 ( .A(\regArr[4][6] ), .Y(n316) );
  DLY1X1M U323 ( .A(\regArr[4][7] ), .Y(n317) );
  DLY1X1M U324 ( .A(\regArr[0][0] ), .Y(n318) );
  DLY1X1M U325 ( .A(\regArr[0][1] ), .Y(n319) );
  DLY1X1M U326 ( .A(\regArr[0][2] ), .Y(n320) );
  DLY1X1M U327 ( .A(\regArr[0][3] ), .Y(n321) );
  DLY1X1M U328 ( .A(\regArr[0][4] ), .Y(n322) );
  DLY1X1M U329 ( .A(\regArr[0][5] ), .Y(n323) );
  DLY1X1M U330 ( .A(\regArr[0][6] ), .Y(n324) );
  DLY1X1M U331 ( .A(\regArr[0][7] ), .Y(n325) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] , n13, n14;

  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[0][0] ) );
  SDFFRQX1M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX1M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[2]) );
  SDFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[1]) );
  SDFFRQX1M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[0]) );
  INVX4M U15 ( .A(n14), .Y(n13) );
  INVX2M U16 ( .A(RST), .Y(n14) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] , n13, n14;

  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(n13), .Q(\sync_reg[0][0] ) );
  SDFFRQX1M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[3]) );
  SDFFRQX1M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[2]) );
  SDFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[1]) );
  SDFFRQX1M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(n13), .Q(SYNC[0]) );
  INVX4M U15 ( .A(n14), .Y(n13) );
  INVX2M U16 ( .A(RST), .Y(n14) );
endmodule


module fifo_top_data_width8_FIFO_DEPTH8_pointer_width4_test_1 ( W_CLK, W_RST, 
        W_INC, R_CLK, R_RST, R_INC, WR_DATA, FULL, RD_DATA, EMPTY, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   WCLKEN, n1, n2, n3, n4, n5, n6, n7;
  wire   [3:0] SYNC_GRAY_RD_PTR;
  wire   [3:0] ASYNC_GRAY_WR_PTR;
  wire   [2:0] waddr;
  wire   [3:0] SYNC_GRAY_WR_PTR;
  wire   [2:0] RADDR;
  wire   [3:0] ASYNC_GRAY_RD_PTR;
  assign test_so2 = SYNC_GRAY_WR_PTR[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  NOR2BX2M U2 ( .AN(W_INC), .B(FULL), .Y(WCLKEN) );
  INVX2M U3 ( .A(W_RST), .Y(n4) );
  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(R_RST), .Y(n2) );
  fifo_wr_pointer_width4_test_1 u0_FIFO_WR ( .winc(W_INC), .wclk(W_CLK), 
        .wrst_n(n3), .gray_rd_ptr(SYNC_GRAY_RD_PTR), .w_addr(waddr), 
        .gray_wr_ptr(ASYNC_GRAY_WR_PTR), .wfull(FULL), .test_si(n6), .test_so(
        n5), .test_se(test_se) );
  fifo_rd_pointer_width4_test_1 u0_FIFO_RD ( .rinc(R_INC), .rclk(R_CLK), 
        .rrst_n(n1), .gray_wr_ptr(SYNC_GRAY_WR_PTR), .raddr(RADDR), 
        .gray_rd_ptr(ASYNC_GRAY_RD_PTR), .empty(EMPTY), .test_si(n7), 
        .test_so(n6), .test_se(test_se) );
  fifo_mem_DATA8_DEPTH8_pointer_width4_test_1 u0_FIFO_MEMORY ( .wclk(W_CLK), 
        .wrst_n(n3), .wclken(WCLKEN), .waddr(waddr), .raddr(RADDR), .wdata(
        WR_DATA), .rdata(RD_DATA), .test_si2(test_si2), .test_si1(test_si1), 
        .test_so2(n7), .test_so1(test_so1), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync ( .CLK(R_CLK), .RST(n1), 
        .ASYNC(ASYNC_GRAY_WR_PTR), .SYNC(SYNC_GRAY_WR_PTR), .test_si(
        SYNC_GRAY_RD_PTR[3]), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync ( .CLK(W_CLK), .RST(n3), 
        .ASYNC(ASYNC_GRAY_RD_PTR), .SYNC(SYNC_GRAY_RD_PTR), .test_si(n5), 
        .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop, n5;

  SDFFRQX1M pls_flop_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(pls_flop) );
  SDFFRQX1M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(rcv_flop) );
  BUFX2M U7 ( .A(rst), .Y(n5) );
  NOR2BX2M U8 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
  DLY1X1M U9 ( .A(rcv_flop), .Y(test_so) );
endmodule


module PULSE_GEN_test_0 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;

  SDFFRQX1M pls_flop_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  SDFFRQX1M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U7 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
  DLY1X1M U8 ( .A(rcv_flop), .Y(test_so) );
endmodule


module ClkDiv_RATIO_WD8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO_WD8_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n21, n22, n23, n24,
         n25, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n68, n69, n70, n71, n72, n73, n74, n75;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFSQX1M odd_edge_tog_reg ( .D(n26), .SI(n75), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(n72), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(n71), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(n70), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(n74), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(n73), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(n2), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[1]) );
  SDFFRQX1M div_clk_reg ( .D(n27), .SI(n69), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(div_clk) );
  SDFFRQX1M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n22), .Q(count[0]) );
  INVX4M U5 ( .A(n23), .Y(n22) );
  INVXLM U6 ( .A(count[0]), .Y(n1) );
  INVX4M U11 ( .A(n1), .Y(n2) );
  NOR4X2M U24 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n51) );
  NOR2X4M U25 ( .A(n25), .B(i_div_ratio[4]), .Y(n35) );
  AND3X4M U26 ( .A(n41), .B(n42), .C(N2), .Y(n40) );
  NAND4X2M U27 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n44) );
  AO22XLM U28 ( .A0(n73), .A1(n21), .B0(N17), .B1(n40), .Y(n33) );
  AO22XLM U29 ( .A0(n74), .A1(n21), .B0(N18), .B1(n40), .Y(n32) );
  AO22XLM U30 ( .A0(n70), .A1(n21), .B0(N19), .B1(n40), .Y(n31) );
  AO22XLM U31 ( .A0(n71), .A1(n21), .B0(N20), .B1(n40), .Y(n30) );
  AO22XLM U32 ( .A0(n72), .A1(n21), .B0(N21), .B1(n40), .Y(n29) );
  AO22XLM U33 ( .A0(n69), .A1(n21), .B0(N22), .B1(n40), .Y(n28) );
  AO22XLM U34 ( .A0(n21), .A1(n2), .B0(N16), .B1(n40), .Y(n34) );
  OR2X2M U35 ( .A(n24), .B(i_div_ratio[3]), .Y(n25) );
  INVX2M U36 ( .A(i_rst), .Y(n23) );
  OR2X2M U37 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n24) );
  CLKBUFX6M U38 ( .A(n39), .Y(n21) );
  OAI21X2M U39 ( .A0(n64), .A1(n65), .B0(i_clk_en), .Y(n39) );
  INVX2M U40 ( .A(i_div_ratio[5]), .Y(n38) );
  MX2XLM U41 ( .A(i_ref_clk), .B(n75), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U42 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U43 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n24), .Y(
        edge_flip_half[1]) );
  OAI2BB1X1M U44 ( .A0N(n24), .A1N(i_div_ratio[3]), .B0(n25), .Y(
        edge_flip_half[2]) );
  AO21XLM U45 ( .A0(n25), .A1(i_div_ratio[4]), .B0(n35), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U46 ( .A(n35), .B(n38), .Y(n36) );
  OAI21X1M U47 ( .A0(n35), .A1(n38), .B0(n36), .Y(edge_flip_half[4]) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n36), .Y(edge_flip_half[5]) );
  NOR2X1M U49 ( .A(i_div_ratio[6]), .B(n36), .Y(n37) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(n37), .Y(edge_flip_half[6]) );
  CLKXOR2X2M U51 ( .A(n43), .B(div_clk), .Y(n27) );
  AOI21X1M U52 ( .A0(n42), .A1(n41), .B0(n21), .Y(n43) );
  OR2X1M U53 ( .A(n44), .B(i_div_ratio[0]), .Y(n41) );
  XNOR2X1M U54 ( .A(test_so), .B(n45), .Y(n26) );
  OR2X1M U55 ( .A(n42), .B(n21), .Y(n45) );
  CLKNAND2X2M U56 ( .A(n46), .B(i_div_ratio[0]), .Y(n42) );
  MXI2X1M U57 ( .A(n47), .B(n44), .S0(odd_edge_tog), .Y(n46) );
  CLKXOR2X2M U58 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n55) );
  CLKXOR2X2M U59 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n54) );
  CLKXOR2X2M U60 ( .A(edge_flip_half[0]), .B(n2), .Y(n53) );
  CLKXOR2X2M U61 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n52) );
  XNOR2X1M U62 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n50) );
  XNOR2X1M U63 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n49) );
  XNOR2X1M U64 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n48) );
  NAND4X1M U65 ( .A(n56), .B(n57), .C(n58), .D(n59), .Y(n47) );
  NOR4X1M U66 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n59) );
  CLKXOR2X2M U67 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n63) );
  CLKXOR2X2M U68 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n62) );
  CLKXOR2X2M U69 ( .A(i_div_ratio[1]), .B(n2), .Y(n61) );
  CLKXOR2X2M U70 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n60) );
  XNOR2X1M U71 ( .A(count[4]), .B(n68), .Y(n58) );
  XNOR2X1M U72 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n57) );
  XNOR2X1M U73 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n56) );
  CLKINVX1M U74 ( .A(n21), .Y(N2) );
  OR3X1M U75 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n65) );
  OR4X1M U76 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n64) );
  INVXLM U77 ( .A(n38), .Y(n68) );
  DLY1X1M U78 ( .A(count[6]), .Y(n69) );
  DLY1X1M U79 ( .A(count[3]), .Y(n70) );
  DLY1X1M U80 ( .A(count[4]), .Y(n71) );
  DLY1X1M U81 ( .A(count[5]), .Y(n72) );
  DLY1X1M U82 ( .A(count[1]), .Y(n73) );
  DLY1X1M U83 ( .A(count[2]), .Y(n74) );
  DLY1X1M U84 ( .A(div_clk), .Y(n75) );
  DLY1X1M U85 ( .A(odd_edge_tog), .Y(test_so) );
  ClkDiv_RATIO_WD8_0_DW01_inc_0 add_49 ( .A({count[6:1], n2}), .SUM({N22, N21, 
        N20, N19, N18, N17, N16}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NOR3X12M U6 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X8M U12 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR4X6M U13 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U14 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NAND4BX2M U15 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND4BX2M U16 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  OAI211X4M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X2M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[0]), .Y(n17) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U8 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U10 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module ClkDiv_RATIO_WD8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO_WD8_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n21, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n86, n87, n88, n89, n90, n91, n92;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFSQX1M odd_edge_tog_reg ( .D(n74), .SI(n92), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n72), .SI(n89), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[5]  ( .D(n71), .SI(n88), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n70), .SI(n87), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n69), .SI(n91), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n68), .SI(n90), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n67), .SI(n2), .SE(test_se), .CK(i_ref_clk), 
        .RN(n22), .Q(count[1]) );
  SDFFRQX1M div_clk_reg ( .D(n73), .SI(n86), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX1M \count_reg[0]  ( .D(n66), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n22), .Q(count[0]) );
  INVX4M U5 ( .A(n23), .Y(n22) );
  INVXLM U6 ( .A(count[0]), .Y(n1) );
  INVX4M U11 ( .A(n1), .Y(n2) );
  NOR4X2M U24 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n51) );
  NOR2X4M U25 ( .A(n25), .B(i_div_ratio[4]), .Y(n35) );
  AND3X4M U26 ( .A(n41), .B(n42), .C(N2), .Y(n40) );
  OR2X2M U27 ( .A(n24), .B(i_div_ratio[3]), .Y(n25) );
  NAND4X2M U28 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n44) );
  AO22XLM U29 ( .A0(n90), .A1(n21), .B0(N17), .B1(n40), .Y(n67) );
  AO22XLM U30 ( .A0(n91), .A1(n21), .B0(N18), .B1(n40), .Y(n68) );
  AO22XLM U31 ( .A0(n87), .A1(n21), .B0(N19), .B1(n40), .Y(n69) );
  AO22XLM U32 ( .A0(n88), .A1(n21), .B0(N20), .B1(n40), .Y(n70) );
  AO22XLM U33 ( .A0(n89), .A1(n21), .B0(N21), .B1(n40), .Y(n71) );
  AO22XLM U34 ( .A0(n86), .A1(n21), .B0(N22), .B1(n40), .Y(n72) );
  AO22XLM U35 ( .A0(n21), .A1(n2), .B0(N16), .B1(n40), .Y(n66) );
  OAI2BB1XLM U36 ( .A0N(n24), .A1N(i_div_ratio[3]), .B0(n25), .Y(
        edge_flip_half[2]) );
  OR2X2M U37 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n24) );
  INVX2M U38 ( .A(i_rst), .Y(n23) );
  CLKBUFX6M U39 ( .A(n39), .Y(n21) );
  OAI21X2M U40 ( .A0(n64), .A1(n65), .B0(i_clk_en), .Y(n39) );
  INVX2M U41 ( .A(i_div_ratio[5]), .Y(n38) );
  MX2XLM U42 ( .A(i_ref_clk), .B(n92), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U43 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U44 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n24), .Y(
        edge_flip_half[1]) );
  AO21XLM U45 ( .A0(n25), .A1(i_div_ratio[4]), .B0(n35), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U46 ( .A(n35), .B(n38), .Y(n36) );
  OAI21X1M U47 ( .A0(n35), .A1(n38), .B0(n36), .Y(edge_flip_half[4]) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n36), .Y(edge_flip_half[5]) );
  NOR2X1M U49 ( .A(i_div_ratio[6]), .B(n36), .Y(n37) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(n37), .Y(edge_flip_half[6]) );
  CLKXOR2X2M U51 ( .A(n43), .B(div_clk), .Y(n73) );
  AOI21X1M U52 ( .A0(n42), .A1(n41), .B0(n21), .Y(n43) );
  OR2X1M U53 ( .A(n44), .B(i_div_ratio[0]), .Y(n41) );
  XNOR2X1M U54 ( .A(test_so), .B(n45), .Y(n74) );
  OR2X1M U55 ( .A(n42), .B(n21), .Y(n45) );
  CLKNAND2X2M U56 ( .A(n46), .B(i_div_ratio[0]), .Y(n42) );
  MXI2X1M U57 ( .A(n47), .B(n44), .S0(odd_edge_tog), .Y(n46) );
  CLKXOR2X2M U58 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n55) );
  CLKXOR2X2M U59 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n54) );
  CLKXOR2X2M U60 ( .A(edge_flip_half[0]), .B(n2), .Y(n53) );
  CLKXOR2X2M U61 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n52) );
  XNOR2X1M U62 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n50) );
  XNOR2X1M U63 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n49) );
  XNOR2X1M U64 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n48) );
  NAND4X1M U65 ( .A(n56), .B(n57), .C(n58), .D(n59), .Y(n47) );
  NOR4X1M U66 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n59) );
  CLKXOR2X2M U67 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n63) );
  CLKXOR2X2M U68 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n62) );
  CLKXOR2X2M U69 ( .A(i_div_ratio[1]), .B(n2), .Y(n61) );
  CLKXOR2X2M U70 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n60) );
  XNOR2X1M U71 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n58) );
  XNOR2X1M U72 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n57) );
  XNOR2X1M U73 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n56) );
  CLKINVX1M U74 ( .A(n21), .Y(N2) );
  OR3X1M U75 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n65) );
  OR4X1M U76 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n64) );
  DLY1X1M U77 ( .A(count[6]), .Y(n86) );
  DLY1X1M U78 ( .A(count[3]), .Y(n87) );
  DLY1X1M U79 ( .A(count[4]), .Y(n88) );
  DLY1X1M U80 ( .A(count[5]), .Y(n89) );
  DLY1X1M U81 ( .A(count[1]), .Y(n90) );
  DLY1X1M U82 ( .A(count[2]), .Y(n91) );
  DLY1X1M U83 ( .A(div_clk), .Y(n92) );
  DLY1X1M U84 ( .A(odd_edge_tog), .Y(test_so) );
  ClkDiv_RATIO_WD8_1_DW01_inc_0 add_49 ( .A({count[6:1], n2}), .SUM({N22, N21, 
        N20, N19, N18, N17, N16}) );
endmodule


module RX_FSM_test_1 ( rst, clk_RX, RX_IN, PAR_EN, bit_cnt, Parity_Error, 
        Stop_Error, str_glitch, take_sample, edge_cnt_max, par_chk_en, 
        str_chk_en, stp_chk_en, data_Valid, deser_en, edge_cnt_enable, 
        dat_samp_en, test_si, test_so, test_se );
  input [3:0] bit_cnt;
  input rst, clk_RX, RX_IN, PAR_EN, Parity_Error, Stop_Error, str_glitch,
         take_sample, edge_cnt_max, test_si, test_se;
  output par_chk_en, str_chk_en, stp_chk_en, data_Valid, deser_en,
         edge_cnt_enable, dat_samp_en, test_so;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n5, n12, n13, n14, n15, n16, n17, n38,
         n39, n40, n41, n43, n44, n45, n49;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFSRX4M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk_RX), .SN(1'b1), .RN(rst), .Q(current_state[0]), .QN(
        n41) );
  OAI21X1M U6 ( .A0(n21), .A1(n19), .B0(n22), .Y(next_state[2]) );
  NOR2X1M U7 ( .A(n12), .B(n19), .Y(stp_chk_en) );
  CLKINVX1M U8 ( .A(n19), .Y(n40) );
  OAI32X2M U9 ( .A0(n33), .A1(bit_cnt[0]), .A2(RX_IN), .B0(n34), .B1(n41), .Y(
        n32) );
  OAI32X2M U10 ( .A0(n13), .A1(current_state[0]), .A2(Parity_Error), .B0(
        PAR_EN), .B1(n41), .Y(n23) );
  INVX2M U12 ( .A(n49), .Y(n5) );
  NAND3X2M U13 ( .A(n41), .B(n5), .C(current_state[2]), .Y(n19) );
  NOR3X4M U20 ( .A(n49), .B(n40), .C(n45), .Y(n35) );
  NAND2X2M U21 ( .A(n49), .B(n43), .Y(n20) );
  NAND3X2M U22 ( .A(n16), .B(n17), .C(bit_cnt[0]), .Y(n27) );
  INVX2M U23 ( .A(bit_cnt[3]), .Y(n38) );
  NAND2X2M U24 ( .A(current_state[0]), .B(n5), .Y(n18) );
  INVX2M U25 ( .A(n24), .Y(n15) );
  OAI32X2M U26 ( .A0(n25), .A1(take_sample), .A2(n19), .B0(n18), .B1(n43), .Y(
        data_Valid) );
  INVX2M U27 ( .A(RX_IN), .Y(n45) );
  NAND2X2M U28 ( .A(n35), .B(n41), .Y(dat_samp_en) );
  NOR3X8M U29 ( .A(n41), .B(n24), .C(n20), .Y(deser_en) );
  NOR2X4M U30 ( .A(n38), .B(n27), .Y(n24) );
  INVX2M U31 ( .A(take_sample), .Y(n12) );
  INVX2M U32 ( .A(edge_cnt_max), .Y(n13) );
  NAND2X2M U33 ( .A(edge_cnt_max), .B(n36), .Y(n25) );
  OAI32X2M U34 ( .A0(n37), .A1(n44), .A2(n16), .B0(PAR_EN), .B1(n15), .Y(n36)
         );
  OR3X2M U35 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(n38), .Y(n37) );
  INVX2M U36 ( .A(PAR_EN), .Y(n44) );
  OAI21X4M U37 ( .A0(current_state[2]), .A1(n41), .B0(n35), .Y(edge_cnt_enable) );
  NAND3X2M U38 ( .A(n17), .B(n38), .C(n16), .Y(n33) );
  NOR3X2M U39 ( .A(n39), .B(bit_cnt[3]), .C(n27), .Y(n34) );
  NAND3BX2M U40 ( .AN(deser_en), .B(n29), .C(n30), .Y(next_state[0]) );
  NAND4BX1M U41 ( .AN(n18), .B(edge_cnt_max), .C(test_so), .D(n45), .Y(n29) );
  AOI33X2M U42 ( .A0(n40), .A1(n31), .A2(n14), .B0(n5), .B1(n43), .B2(n32), 
        .Y(n30) );
  INVX2M U43 ( .A(n25), .Y(n14) );
  CLKXOR2X2M U44 ( .A(Stop_Error), .B(RX_IN), .Y(n31) );
  NAND3BX2M U45 ( .AN(n20), .B(n23), .C(n24), .Y(n22) );
  AOI2B1X1M U46 ( .A1N(Stop_Error), .A0(RX_IN), .B0(n25), .Y(n21) );
  OAI32X2M U47 ( .A0(n26), .A1(n18), .A2(n27), .B0(n28), .B1(n20), .Y(
        next_state[1]) );
  NAND3X2M U48 ( .A(n43), .B(n39), .C(n38), .Y(n26) );
  AOI221X2M U49 ( .A0(PAR_EN), .A1(current_state[0]), .B0(n41), .B1(n13), .C0(
        n15), .Y(n28) );
  NOR3X2M U50 ( .A(n20), .B(current_state[0]), .C(n12), .Y(par_chk_en) );
  INVX2M U51 ( .A(bit_cnt[1]), .Y(n16) );
  INVX2M U52 ( .A(bit_cnt[2]), .Y(n17) );
  NOR3X4M U53 ( .A(current_state[2]), .B(n12), .C(n18), .Y(str_chk_en) );
  INVX2M U54 ( .A(str_glitch), .Y(n39) );
  DLY1X1M U55 ( .A(current_state[2]), .Y(test_so) );
  SDFFSRX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n49), .SE(test_se), 
        .CK(clk_RX), .SN(1'b1), .RN(rst), .Q(current_state[2]), .QN(n43) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk_RX), .RN(rst), .Q(n49) );
endmodule


module RX_parity_check_data_width8_test_1 ( clk_RX, rst, P_DATA, par_chk_en, 
        sampled_bit, PAR_TYP, Parity_Error, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk_RX, rst, par_chk_en, sampled_bit, PAR_TYP, test_si, test_se;
  output Parity_Error, test_so;
  wire   n2, n3, n4, n5, n6, n7, n9, n13;

  XNOR2X2M U3 ( .A(sampled_bit), .B(P_DATA[7]), .Y(n7) );
  CLKXOR2X2M U5 ( .A(P_DATA[1]), .B(PAR_TYP), .Y(n3) );
  OAI2BB2X1M U8 ( .B0(n13), .B1(n2), .A0N(Parity_Error), .A1N(n13), .Y(n9) );
  XOR3XLM U9 ( .A(n3), .B(n4), .C(n5), .Y(n2) );
  INVX2M U10 ( .A(par_chk_en), .Y(n13) );
  XOR3XLM U12 ( .A(P_DATA[2]), .B(P_DATA[0]), .C(n6), .Y(n5) );
  XNOR2X2M U13 ( .A(P_DATA[4]), .B(P_DATA[3]), .Y(n6) );
  XOR3XLM U14 ( .A(P_DATA[6]), .B(P_DATA[5]), .C(n7), .Y(n4) );
  SDFFSRX4M Parity_Error_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(rst), .Q(Parity_Error) );
  BUFX2M U4 ( .A(Parity_Error), .Y(test_so) );
endmodule


module RX_str_check_test_1 ( clk_RX, rst, str_chk_en, sampled_bit, str_glitch, 
        test_si, test_so, test_se );
  input clk_RX, rst, str_chk_en, sampled_bit, test_si, test_se;
  output str_glitch, test_so;
  wire   n2;

  AO2B2XLM U4 ( .B0(str_chk_en), .B1(sampled_bit), .A0(str_glitch), .A1N(
        str_chk_en), .Y(n2) );
  SDFFSRX4M str_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(rst), .Q(str_glitch) );
  BUFX2M U2 ( .A(str_glitch), .Y(test_so) );
endmodule


module RX_stp_chk_test_1 ( clk_RX, rst, stp_chk_en, sampled_bit, Stop_Error, 
        test_si, test_so, test_se );
  input clk_RX, rst, stp_chk_en, sampled_bit, test_si, test_se;
  output Stop_Error, test_so;
  wire   n3, n7;

  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n7), .A0N(Stop_Error), .A1N(n7), .Y(n3) );
  CLKINVX2M U3 ( .A(stp_chk_en), .Y(n7) );
  SDFFSRX4M Stop_Error_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(rst), .Q(Stop_Error) );
  BUFX2M U4 ( .A(Stop_Error), .Y(test_so) );
endmodule


module RX_deserializer_data_width8_test_1 ( clk_RX, rst, sampled_bit, deser_en, 
        take_sample, edge_cnt, edge_cnt_max, P_DATA, test_si, test_so, test_se
 );
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  input clk_RX, rst, sampled_bit, deser_en, take_sample, edge_cnt_max, test_si,
         test_se;
  output test_so;
  wire   n9, n10, n11, n12, n13, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n5, n46, n47, n48, n49, n50,
         n52, n56, n57, n58, n59, n60, n1;

  SDFFRX1M \P_DATA_reg[6]  ( .D(n28), .SI(n59), .SE(test_se), .CK(clk_RX), 
        .RN(rst), .Q(P_DATA[6]), .QN(n9) );
  SDFFRX1M \P_DATA_reg[5]  ( .D(n29), .SI(n58), .SE(test_se), .CK(clk_RX), 
        .RN(n46), .Q(P_DATA[5]), .QN(n10) );
  SDFFRX1M \P_DATA_reg[4]  ( .D(n30), .SI(n57), .SE(test_se), .CK(clk_RX), 
        .RN(n46), .Q(P_DATA[4]), .QN(n11) );
  SDFFRX1M \P_DATA_reg[3]  ( .D(n31), .SI(n56), .SE(test_se), .CK(clk_RX), 
        .RN(n46), .Q(P_DATA[3]), .QN(n12) );
  SDFFRX1M \P_DATA_reg[2]  ( .D(n32), .SI(n52), .SE(test_se), .CK(clk_RX), 
        .RN(n46), .Q(P_DATA[2]), .QN(n13) );
  SDFFSRX1M \P_DATA_reg[7]  ( .D(n27), .SI(n60), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n46), .Q(n5) );
  AOI32X1M U11 ( .A0(P_DATA[1]), .A1(deser_en), .A2(n20), .B0(n50), .B1(
        P_DATA[0]), .Y(n24) );
  CLKINVX2M U12 ( .A(n23), .Y(n50) );
  NOR4X4M U13 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(n26), 
        .Y(n25) );
  NAND3XLM U16 ( .A(deser_en), .B(n19), .C(sampled_bit), .Y(n18) );
  OR3X1M U17 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n26) );
  NOR2BX4M U29 ( .AN(n20), .B(n21), .Y(n22) );
  OAI21X4M U30 ( .A0(n19), .A1(n25), .B0(deser_en), .Y(n21) );
  INVX4M U31 ( .A(n22), .Y(n49) );
  INVX4M U32 ( .A(n47), .Y(n46) );
  INVX2M U33 ( .A(rst), .Y(n47) );
  NOR2X4M U34 ( .A(n21), .B(n19), .Y(n23) );
  NOR2BX8M U35 ( .AN(take_sample), .B(edge_cnt_max), .Y(n19) );
  NOR2BX4M U36 ( .AN(n25), .B(n19), .Y(n20) );
  OAI22X1M U37 ( .A0(n49), .A1(n57), .B0(n23), .B1(n56), .Y(n32) );
  OAI22X1M U38 ( .A0(n49), .A1(n58), .B0(n23), .B1(n12), .Y(n31) );
  OAI22X1M U39 ( .A0(n49), .A1(n59), .B0(n23), .B1(n11), .Y(n30) );
  OAI22X1M U40 ( .A0(n49), .A1(n9), .B0(n22), .B1(n10), .Y(n29) );
  OAI2BB2X1M U41 ( .B0(n49), .B1(n13), .A0N(n50), .A1N(P_DATA[1]), .Y(n33) );
  INVX2M U42 ( .A(n24), .Y(n48) );
  NAND2X2M U43 ( .A(n17), .B(n18), .Y(n27) );
  OAI21X2M U44 ( .A0(n20), .A1(n21), .B0(test_so), .Y(n17) );
  OAI2BB2X1M U45 ( .B0(n22), .B1(n60), .A0N(test_so), .A1N(n22), .Y(n28) );
  DLY1X1M U46 ( .A(n13), .Y(n56) );
  DLY1X1M U47 ( .A(n12), .Y(n57) );
  DLY1X1M U48 ( .A(n11), .Y(n58) );
  DLY1X1M U49 ( .A(n10), .Y(n59) );
  DLY1X1M U50 ( .A(n9), .Y(n60) );
  SDFFSRX2M \P_DATA_reg[1]  ( .D(n33), .SI(P_DATA[0]), .SE(test_se), .CK(
        clk_RX), .SN(1'b1), .RN(n46), .Q(P_DATA[1]), .QN(n52) );
  SDFFSRX2M \P_DATA_reg[0]  ( .D(n48), .SI(test_si), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n46), .Q(P_DATA[0]) );
  CLKINVX1M U3 ( .A(n5), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(P_DATA[7]) );
  CLKINVX2M U5 ( .A(n1), .Y(test_so) );
endmodule


module RX_edge_bit_cnt_test_1 ( clk_RX, rst, prescale, edge_cnt_enable, PAR_EN, 
        bit_cnt, edge_cnt, edge_cnt_max, test_si, test_so, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk_RX, rst, edge_cnt_enable, PAR_EN, test_si, test_se;
  output edge_cnt_max, test_so;
  wire   n74, N12, N13, N14, N15, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, \add_33/carry[5] , \add_33/carry[4] ,
         \add_33/carry[3] , \add_33/carry[2] , n14, n11, n12, n18, n38, n13,
         n61, n62, n63, n64, n66, n68, n69, n70, n71, n72, n73, n80, n85, n86,
         n87, n88, n89, n1, n3, n4, n5, n7;
  assign test_so = n38;

  NOR3BX4M U39 ( .AN(n37), .B(prescale[4]), .C(n72), .Y(n34) );
  SDFFSRX4M \edge_cnt_reg[1]  ( .D(N36), .SI(edge_cnt[0]), .SE(test_se), .CK(
        clk_RX), .SN(1'b1), .RN(n62), .Q(edge_cnt[1]), .QN(n80) );
  SDFFSRX4M \edge_cnt_reg[4]  ( .D(N39), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk_RX), .SN(1'b1), .RN(n62), .Q(edge_cnt[4]), .QN(n69) );
  SDFFSRX1M \edge_cnt_reg[0]  ( .D(N35), .SI(bit_cnt[3]), .SE(test_se), .CK(
        clk_RX), .SN(1'b1), .RN(n62), .Q(n13) );
  SDFFSRX1M \edge_cnt_reg[5]  ( .D(N40), .SI(n69), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n62), .QN(n38) );
  SDFFSRX1M \bit_cnt_reg[3]  ( .D(N44), .SI(n4), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n62), .Q(n11) );
  SDFFSRX1M \bit_cnt_reg[2]  ( .D(N43), .SI(n88), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n62), .Q(n74), .QN(n89) );
  INVXLM U13 ( .A(n74), .Y(n14) );
  INVX4M U14 ( .A(n14), .Y(bit_cnt[2]) );
  INVX6M U16 ( .A(n38), .Y(edge_cnt[5]) );
  INVX4M U19 ( .A(n18), .Y(bit_cnt[0]) );
  AOI32X1M U23 ( .A0(edge_cnt[3]), .A1(n34), .A2(edge_cnt[4]), .B0(n35), .B1(
        n69), .Y(n33) );
  OAI33X2M U24 ( .A0(n66), .A1(bit_cnt[0]), .A2(n73), .B0(PAR_EN), .B1(
        bit_cnt[1]), .B2(n85), .Y(n31) );
  NAND4X2M U46 ( .A(bit_cnt[3]), .B(edge_cnt_max), .C(n31), .D(n4), .Y(n30) );
  INVX6M U47 ( .A(n63), .Y(n62) );
  INVX2M U48 ( .A(rst), .Y(n63) );
  INVX2M U49 ( .A(n24), .Y(n64) );
  NAND2BX4M U50 ( .AN(n28), .B(edge_cnt_enable), .Y(n29) );
  INVX2M U51 ( .A(edge_cnt_enable), .Y(n70) );
  NOR2BX2M U52 ( .AN(N15), .B(n29), .Y(N39) );
  NOR2BX2M U53 ( .AN(N14), .B(n29), .Y(N38) );
  NOR2BX2M U54 ( .AN(N13), .B(n29), .Y(N37) );
  NOR2BX2M U55 ( .AN(N12), .B(n29), .Y(N36) );
  NAND2X4M U56 ( .A(edge_cnt_max), .B(n30), .Y(n24) );
  AOI21BX2M U57 ( .A0(n87), .A1(n64), .B0N(n28), .Y(n27) );
  NAND2X2M U58 ( .A(n24), .B(n30), .Y(n28) );
  OAI32X2M U59 ( .A0(n71), .A1(edge_cnt[3]), .A2(n34), .B0(n68), .B1(n36), .Y(
        n35) );
  INVX2M U60 ( .A(n36), .Y(n71) );
  NAND3X2M U61 ( .A(n37), .B(n72), .C(prescale[4]), .Y(n36) );
  AND4X4M U62 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(n32), .D(edge_cnt[0]), 
        .Y(edge_cnt_max) );
  NOR2X2M U63 ( .A(edge_cnt[5]), .B(n33), .Y(n32) );
  NOR4X4M U64 ( .A(prescale[1]), .B(prescale[0]), .C(prescale[3]), .D(
        prescale[2]), .Y(n37) );
  INVX2M U65 ( .A(prescale[5]), .Y(n72) );
  OAI33X2M U66 ( .A0(n4), .A1(n25), .A2(n70), .B0(n26), .B1(bit_cnt[2]), .B2(
        n66), .Y(N43) );
  OAI32X2M U67 ( .A0(n70), .A1(bit_cnt[0]), .A2(n24), .B0(n87), .B1(n29), .Y(
        N41) );
  OAI32X2M U68 ( .A0(n70), .A1(n27), .A2(n88), .B0(bit_cnt[1]), .B1(n26), .Y(
        N42) );
  NAND3X2M U69 ( .A(n64), .B(bit_cnt[0]), .C(edge_cnt_enable), .Y(n26) );
  NOR2X2M U70 ( .A(n61), .B(n29), .Y(N40) );
  XNOR2X2M U71 ( .A(\add_33/carry[5] ), .B(edge_cnt[5]), .Y(n61) );
  NOR2X2M U72 ( .A(edge_cnt[0]), .B(n29), .Y(N35) );
  NOR2X2M U73 ( .A(n21), .B(n70), .Y(N44) );
  AOI32X1M U74 ( .A0(bit_cnt[2]), .A1(n64), .A2(n22), .B0(bit_cnt[3]), .B1(n23), .Y(n21) );
  NOR3X2M U75 ( .A(bit_cnt[3]), .B(n66), .C(n86), .Y(n22) );
  OAI21X2M U76 ( .A0(bit_cnt[2]), .A1(n24), .B0(n25), .Y(n23) );
  INVX2M U77 ( .A(PAR_EN), .Y(n73) );
  OA21X2M U78 ( .A0(bit_cnt[1]), .A1(n24), .B0(n27), .Y(n25) );
  ADDHX1M U79 ( .A(edge_cnt[3]), .B(\add_33/carry[3] ), .CO(\add_33/carry[4] ), 
        .S(N14) );
  ADDHX1M U80 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_33/carry[2] ), .S(
        N12) );
  ADDHX1M U81 ( .A(edge_cnt[2]), .B(\add_33/carry[2] ), .CO(\add_33/carry[3] ), 
        .S(N13) );
  ADDHX1M U82 ( .A(edge_cnt[4]), .B(\add_33/carry[4] ), .CO(\add_33/carry[5] ), 
        .S(N15) );
  DLY1X1M U83 ( .A(n18), .Y(n85) );
  DLY1X1M U84 ( .A(n18), .Y(n86) );
  DLY1X1M U85 ( .A(n18), .Y(n87) );
  DLY1X1M U86 ( .A(n66), .Y(n88) );
  SDFFSRX2M \bit_cnt_reg[1]  ( .D(N42), .SI(n86), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n62), .Q(bit_cnt[1]), .QN(n66) );
  SDFFSRX2M \bit_cnt_reg[0]  ( .D(N41), .SI(test_si), .SE(test_se), .CK(clk_RX), .SN(1'b1), .RN(n62), .QN(n18) );
  SDFFSRX4M \edge_cnt_reg[2]  ( .D(N37), .SI(n80), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n62), .Q(edge_cnt[2]) );
  SDFFSRX1M \edge_cnt_reg[3]  ( .D(N38), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk_RX), .SN(1'b1), .RN(n62), .Q(n12), .QN(n68) );
  INVXLM U3 ( .A(n12), .Y(n1) );
  INVX6M U4 ( .A(n1), .Y(edge_cnt[3]) );
  INVXLM U5 ( .A(n89), .Y(n3) );
  INVX2M U6 ( .A(n3), .Y(n4) );
  INVXLM U7 ( .A(n11), .Y(n5) );
  INVX4M U8 ( .A(n5), .Y(bit_cnt[3]) );
  INVXLM U9 ( .A(n13), .Y(n7) );
  INVX4M U10 ( .A(n7), .Y(edge_cnt[0]) );
endmodule


module RX_data_sampling_test_1 ( clk_RX, rst, RX_IN, dat_samp_en, edge_cnt, 
        prescale, sampled_bit, take_sample, test_si, test_so, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input clk_RX, rst, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit, take_sample, test_so;
  wire   N59, N75, N76, N77, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n5, n6, n7, n9, n18, n19, n20,
         n21, n26, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n72, n74;
  wire   [2:0] sample;

  OR2X4M U7 ( .A(n6), .B(n7), .Y(n5) );
  OR2X2M U8 ( .A(prescale[3]), .B(n18), .Y(n6) );
  OR2X2M U9 ( .A(prescale[4]), .B(n19), .Y(n7) );
  OAI21X2M U10 ( .A0(sample[0]), .A1(n9), .B0(sample[2]), .Y(n54) );
  NOR3X2M U11 ( .A(edge_cnt[2]), .B(edge_cnt[5]), .C(edge_cnt[4]), .Y(n51) );
  NAND3X1M U12 ( .A(edge_cnt[3]), .B(n67), .C(n35), .Y(n32) );
  NOR4X2M U13 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .C(edge_cnt[2]), .D(
        edge_cnt[5]), .Y(n35) );
  NOR3X6M U14 ( .A(edge_cnt[4]), .B(edge_cnt[5]), .C(n65), .Y(n36) );
  CLKINVX1M U15 ( .A(edge_cnt[2]), .Y(n65) );
  NAND2XLM U17 ( .A(sample[0]), .B(n9), .Y(n53) );
  NOR4X2M U18 ( .A(edge_cnt[4]), .B(edge_cnt[1]), .C(n20), .D(n66), .Y(n24) );
  CLKINVX2M U19 ( .A(edge_cnt[3]), .Y(n66) );
  NOR2X3M U20 ( .A(n60), .B(edge_cnt[3]), .Y(n37) );
  CLKINVX1M U29 ( .A(n52), .Y(n18) );
  CLKINVX1M U30 ( .A(prescale[5]), .Y(n19) );
  NOR3X4M U31 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .Y(n52) );
  BUFX4M U32 ( .A(n27), .Y(n20) );
  NAND4BX1M U33 ( .AN(prescale[5]), .B(prescale[4]), .C(n52), .D(n70), .Y(n27)
         );
  AND2X2M U34 ( .A(n36), .B(edge_cnt[1]), .Y(n44) );
  INVX2M U35 ( .A(edge_cnt[0]), .Y(n60) );
  BUFX2M U36 ( .A(rst), .Y(n21) );
  INVX2M U37 ( .A(n41), .Y(n57) );
  INVX2M U38 ( .A(n48), .Y(n55) );
  INVX2M U39 ( .A(n42), .Y(n26) );
  INVX2M U40 ( .A(n33), .Y(n58) );
  NAND2X4M U41 ( .A(n5), .B(n20), .Y(n28) );
  NAND2X2M U42 ( .A(n37), .B(n44), .Y(n41) );
  NAND3X2M U43 ( .A(n60), .B(n66), .C(n44), .Y(n48) );
  INVX2M U44 ( .A(dat_samp_en), .Y(n69) );
  NAND4X2M U45 ( .A(n36), .B(n60), .C(n64), .D(n66), .Y(n42) );
  NAND3X2M U46 ( .A(n36), .B(n64), .C(n37), .Y(n33) );
  INVX2M U47 ( .A(n50), .Y(n59) );
  INVX2M U48 ( .A(n43), .Y(n61) );
  INVX2M U49 ( .A(n34), .Y(n62) );
  INVX2M U50 ( .A(n49), .Y(n56) );
  INVX2M U51 ( .A(n32), .Y(n63) );
  NAND2X2M U52 ( .A(n22), .B(n23), .Y(take_sample) );
  OAI211X1M U53 ( .A0(n24), .A1(n25), .B0(n65), .C0(n68), .Y(n23) );
  OAI21BX1M U54 ( .A0(n55), .A1(n57), .B0N(n28), .Y(n22) );
  INVX2M U55 ( .A(edge_cnt[5]), .Y(n68) );
  NOR4X1M U56 ( .A(edge_cnt[3]), .B(n5), .C(n64), .D(n67), .Y(n25) );
  INVX2M U57 ( .A(prescale[3]), .Y(n70) );
  AOI21X2M U58 ( .A0(n53), .A1(n54), .B0(n69), .Y(N59) );
  NOR2X2M U59 ( .A(n45), .B(n69), .Y(N75) );
  AOI22X1M U60 ( .A0(RX_IN), .A1(n46), .B0(sample[0]), .B1(n47), .Y(n45) );
  OAI222X1M U61 ( .A0(n5), .A1(n50), .B0(n28), .B1(n49), .C0(n20), .C1(n48), 
        .Y(n46) );
  OAI222X1M U62 ( .A0(n59), .A1(n5), .B0(n56), .B1(n28), .C0(n55), .C1(n20), 
        .Y(n47) );
  NOR2X2M U63 ( .A(n38), .B(n69), .Y(N76) );
  AOI22X1M U64 ( .A0(RX_IN), .A1(n39), .B0(n9), .B1(n40), .Y(n38) );
  OAI222X1M U65 ( .A0(n5), .A1(n43), .B0(n28), .B1(n42), .C0(n20), .C1(n41), 
        .Y(n39) );
  OAI222X1M U66 ( .A0(n61), .A1(n5), .B0(n26), .B1(n28), .C0(n57), .C1(n20), 
        .Y(n40) );
  NOR2X2M U67 ( .A(n29), .B(n69), .Y(N77) );
  AOI22X1M U68 ( .A0(RX_IN), .A1(n30), .B0(sample[2]), .B1(n31), .Y(n29) );
  OAI222X1M U69 ( .A0(n5), .A1(n34), .B0(n28), .B1(n33), .C0(n20), .C1(n32), 
        .Y(n30) );
  OAI222X1M U70 ( .A0(n62), .A1(n5), .B0(n58), .B1(n28), .C0(n63), .C1(n20), 
        .Y(n31) );
  INVX2M U71 ( .A(edge_cnt[1]), .Y(n64) );
  INVX2M U72 ( .A(edge_cnt[4]), .Y(n67) );
  NAND3X2M U73 ( .A(edge_cnt[3]), .B(n60), .C(n44), .Y(n50) );
  NAND3X2M U74 ( .A(n44), .B(edge_cnt[3]), .C(edge_cnt[0]), .Y(n43) );
  NAND3X2M U75 ( .A(edge_cnt[4]), .B(n66), .C(n35), .Y(n34) );
  NAND3X2M U76 ( .A(n37), .B(edge_cnt[1]), .C(n51), .Y(n49) );
  SDFFSRX2M sampled_bit_reg ( .D(N59), .SI(n72), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n21), .Q(sampled_bit), .QN(test_so) );
  SDFFSRX2M \sample_reg[0]  ( .D(N75), .SI(test_si), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n21), .Q(sample[0]), .QN(n74) );
  SDFFSRX2M \sample_reg[1]  ( .D(N76), .SI(n74), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n21), .Q(n9) );
  SDFFSRX1M \sample_reg[2]  ( .D(N77), .SI(n9), .SE(test_se), .CK(clk_RX), 
        .SN(1'b1), .RN(n21), .Q(sample[2]), .QN(n72) );
endmodule


module UART_RX_DATAWIDTH8_test_1 ( rst, clk_RX, RX_IN, prescale, PAR_EN, 
        PAR_TYP, P_DATA, Parity_Error, Stop_Error, DATA_VALID, str_glitch, 
        test_si, test_so, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input rst, clk_RX, RX_IN, PAR_EN, PAR_TYP, test_si, test_se;
  output Parity_Error, Stop_Error, DATA_VALID, str_glitch, test_so;
  wire   take_sample, edge_cnt_max, par_chk_en, str_chk_en, stp_chk_en,
         deser_en, edge_cnt_enable, dat_samp_en, sampled_bit, n1, n2, n3, n4,
         n6, n7, n8, n9, n10, n11;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(n4), .Y(n2) );
  CLKINVX1M U3 ( .A(n4), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n4) );
  RX_FSM_test_1 U0_fsm ( .rst(n2), .clk_RX(clk_RX), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .bit_cnt(bit_cnt), .Parity_Error(Parity_Error), .Stop_Error(
        Stop_Error), .str_glitch(str_glitch), .take_sample(take_sample), 
        .edge_cnt_max(edge_cnt_max), .par_chk_en(par_chk_en), .str_chk_en(
        str_chk_en), .stp_chk_en(stp_chk_en), .data_Valid(DATA_VALID), 
        .deser_en(deser_en), .edge_cnt_enable(edge_cnt_enable), .dat_samp_en(
        dat_samp_en), .test_si(test_si), .test_so(n11), .test_se(test_se) );
  RX_parity_check_data_width8_test_1 U1_parity_check ( .clk_RX(clk_RX), .rst(
        n3), .P_DATA(P_DATA), .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYP(PAR_TYP), .Parity_Error(Parity_Error), 
        .test_si(n11), .test_so(n10), .test_se(test_se) );
  RX_str_check_test_1 U2_str_check ( .clk_RX(clk_RX), .rst(rst), .str_chk_en(
        str_chk_en), .sampled_bit(sampled_bit), .str_glitch(str_glitch), 
        .test_si(n10), .test_so(n9), .test_se(test_se) );
  RX_stp_chk_test_1 U3_stp_chk ( .clk_RX(clk_RX), .rst(n3), .stp_chk_en(
        stp_chk_en), .sampled_bit(sampled_bit), .Stop_Error(Stop_Error), 
        .test_si(n9), .test_so(n8), .test_se(test_se) );
  RX_deserializer_data_width8_test_1 U4_deserializer ( .clk_RX(clk_RX), .rst(
        n1), .sampled_bit(sampled_bit), .deser_en(deser_en), .take_sample(
        take_sample), .edge_cnt(edge_cnt), .edge_cnt_max(edge_cnt_max), 
        .P_DATA(P_DATA), .test_si(n8), .test_so(n7), .test_se(test_se) );
  RX_edge_bit_cnt_test_1 U5_edge_bit_cnt ( .clk_RX(clk_RX), .rst(n3), 
        .prescale(prescale), .edge_cnt_enable(edge_cnt_enable), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .edge_cnt_max(edge_cnt_max), 
        .test_si(n7), .test_so(n6), .test_se(test_se) );
  RX_data_sampling_test_1 U6_data_sampling ( .clk_RX(clk_RX), .rst(n2), 
        .RX_IN(RX_IN), .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt), 
        .prescale(prescale), .sampled_bit(sampled_bit), .take_sample(
        take_sample), .test_si(n6), .test_so(test_so), .test_se(test_se) );
endmodule


module TX_serializer_datawidth8_test_1 ( clk, rst, p_data, data_valid, ser_en, 
        ser_done, ser_data, test_si, test_se );
  input [7:0] p_data;
  input clk, rst, data_valid, ser_en, test_si, test_se;
  output ser_done, ser_data;
  wire   N12, N13, N14, N15, N19, N20, N21, N22, N23, N24, N25, N26, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n38, n39, n40, n41, n42, n43, n46,
         n47, n48, n49, n50;
  wire   [3:0] count;
  wire   [7:0] lfsr;

  SDFFRQX1M \lfsr_reg[7]  ( .D(N26), .SI(lfsr[6]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[7]) );
  SDFFRQX1M ser_data_reg ( .D(n25), .SI(lfsr[7]), .SE(test_se), .CK(clk), .RN(
        rst), .Q(ser_data) );
  SDFFRQX1M \lfsr_reg[6]  ( .D(N25), .SI(lfsr[5]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[6]) );
  SDFFRQX1M \lfsr_reg[5]  ( .D(N24), .SI(lfsr[4]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[5]) );
  SDFFRQX1M \lfsr_reg[4]  ( .D(N23), .SI(lfsr[3]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[4]) );
  SDFFRQX1M \lfsr_reg[3]  ( .D(N22), .SI(lfsr[2]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[3]) );
  SDFFRQX1M \lfsr_reg[2]  ( .D(N21), .SI(lfsr[1]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[2]) );
  SDFFRQX1M \lfsr_reg[1]  ( .D(N20), .SI(lfsr[0]), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(lfsr[1]) );
  SDFFRQX1M \lfsr_reg[0]  ( .D(N19), .SI(n43), .SE(test_se), .CK(clk), .RN(rst), .Q(lfsr[0]) );
  SDFFRQX1M \count_reg[3]  ( .D(N15), .SI(n42), .SE(test_se), .CK(clk), .RN(
        n39), .Q(count[3]) );
  SDFFRQX2M ser_done_reg ( .D(n26), .SI(n50), .SE(test_se), .CK(clk), .RN(n39), 
        .Q(ser_done) );
  SDFFRQX2M \count_reg[1]  ( .D(N13), .SI(n47), .SE(test_se), .CK(clk), .RN(
        n39), .Q(count[1]) );
  SDFFRQX2M \count_reg[2]  ( .D(N14), .SI(n46), .SE(test_se), .CK(clk), .RN(
        n39), .Q(count[2]) );
  SDFFRQX2M \count_reg[0]  ( .D(N12), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n39), .Q(count[0]) );
  XNOR2X2M U17 ( .A(n46), .B(n47), .Y(n23) );
  NAND3X1M U18 ( .A(n41), .B(count[0]), .C(count[1]), .Y(n20) );
  NOR2X2M U33 ( .A(n18), .B(count[0]), .Y(N12) );
  INVX6M U34 ( .A(n40), .Y(n39) );
  INVX2M U35 ( .A(rst), .Y(n40) );
  INVX6M U36 ( .A(n18), .Y(n41) );
  BUFX4M U37 ( .A(n19), .Y(n38) );
  NOR2BX2M U38 ( .AN(data_valid), .B(ser_en), .Y(n19) );
  AND2X2M U39 ( .A(p_data[7]), .B(n38), .Y(N26) );
  OAI32X2M U40 ( .A0(n42), .A1(count[3]), .A2(n20), .B0(n21), .B1(n43), .Y(N15) );
  AOI21BX2M U41 ( .A0(n41), .A1(n42), .B0N(n22), .Y(n21) );
  NAND2X4M U42 ( .A(ser_en), .B(n24), .Y(n18) );
  OR4X1M U43 ( .A(count[1]), .B(n43), .C(count[0]), .D(count[2]), .Y(n24) );
  AOI2BB1X2M U44 ( .A0N(count[1]), .A1N(n18), .B0(N12), .Y(n22) );
  OAI22X1M U45 ( .A0(n22), .A1(n42), .B0(count[2]), .B1(n20), .Y(N14) );
  AOI2B1X1M U46 ( .A1N(n49), .A0(n41), .B0(n38), .Y(n26) );
  NOR2X2M U47 ( .A(n23), .B(n18), .Y(N13) );
  INVX2M U48 ( .A(count[3]), .Y(n43) );
  AO22X1M U49 ( .A0(lfsr[0]), .A1(n41), .B0(n50), .B1(n18), .Y(n25) );
  AO22X1M U50 ( .A0(p_data[0]), .A1(n38), .B0(lfsr[1]), .B1(n41), .Y(N19) );
  AO22X1M U51 ( .A0(p_data[1]), .A1(n38), .B0(lfsr[2]), .B1(n41), .Y(N20) );
  AO22X1M U52 ( .A0(p_data[2]), .A1(n38), .B0(lfsr[3]), .B1(n41), .Y(N21) );
  AO22X1M U53 ( .A0(p_data[3]), .A1(n38), .B0(lfsr[4]), .B1(n41), .Y(N22) );
  AO22X1M U54 ( .A0(p_data[4]), .A1(n38), .B0(lfsr[5]), .B1(n41), .Y(N23) );
  AO22X1M U55 ( .A0(p_data[5]), .A1(n38), .B0(lfsr[6]), .B1(n41), .Y(N24) );
  AO22X1M U56 ( .A0(p_data[6]), .A1(n38), .B0(lfsr[7]), .B1(n41), .Y(N25) );
  INVX2M U57 ( .A(count[2]), .Y(n42) );
  DLY1X1M U58 ( .A(count[1]), .Y(n46) );
  DLY1X1M U59 ( .A(count[0]), .Y(n47) );
  INVXLM U60 ( .A(ser_done), .Y(n48) );
  INVXLM U61 ( .A(n48), .Y(n49) );
  DLY1X1M U62 ( .A(ser_data), .Y(n50) );
endmodule


module TX_parity_datawidth8_test_1 ( p_data, clk, rst, par_typ, par_bit, 
        test_si, test_se );
  input [7:0] p_data;
  input clk, rst, par_typ, test_si, test_se;
  output par_bit;
  wire   N5, n2, n3, n4, n5;

  SDFFRQX1M par_bit_reg ( .D(N5), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_bit) );
  CLKXOR2X2M U5 ( .A(p_data[7]), .B(p_data[6]), .Y(n5) );
  XOR3XLM U6 ( .A(n2), .B(par_typ), .C(n3), .Y(N5) );
  XOR3XLM U7 ( .A(p_data[1]), .B(p_data[0]), .C(n4), .Y(n3) );
  XOR3XLM U8 ( .A(p_data[5]), .B(p_data[4]), .C(n5), .Y(n2) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n4) );
endmodule


module TX_mux_test_1 ( clk, rst, mux_sel, ser_data, par_bit, tx_out, test_si, 
        test_se );
  input [2:0] mux_sel;
  input clk, rst, ser_data, par_bit, test_si, test_se;
  output tx_out;
  wire   n4, n5, n6, n7, n3, n8;

  SDFFRQX4M tx_out_reg ( .D(n7), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(tx_out) );
  INVX2M U5 ( .A(mux_sel[0]), .Y(n8) );
  AOI2B1X1M U6 ( .A1N(par_bit), .A0(mux_sel[1]), .B0(n8), .Y(n6) );
  AO21XLM U7 ( .A0(tx_out), .A1(mux_sel[2]), .B0(n4), .Y(n7) );
  OAI32X2M U8 ( .A0(n3), .A1(mux_sel[1]), .A2(mux_sel[0]), .B0(mux_sel[2]), 
        .B1(n5), .Y(n4) );
  INVX2M U9 ( .A(mux_sel[2]), .Y(n3) );
  AOI31X1M U10 ( .A0(mux_sel[1]), .A1(n8), .A2(ser_data), .B0(n6), .Y(n5) );
endmodule


module TX_fsm_datawidth8_test_1 ( clk, rst, data_valid, par_en, ser_done, 
        ser_en, busy, mux_sel, test_si, test_so, test_se );
  output [2:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, busy, test_so;
  wire   n15, n9, n10, n8, n11, n12, n13, n14, n18, n19, n1;
  wire   [2:0] current;
  wire   [2:0] next;
  assign mux_sel[0] = next[0];

  SDFFRQX1M \current_reg[0]  ( .D(next[0]), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(current[0]) );
  SDFFRQX2M \current_reg[1]  ( .D(next[1]), .SI(n19), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current[1]) );
  AOI21X4M U6 ( .A0(current[1]), .A1(ser_done), .B0(n9), .Y(ser_en) );
  OAI211X2M U7 ( .A0(current[0]), .A1(n18), .B0(test_so), .C0(current[1]), .Y(
        n10) );
  BUFX2M U11 ( .A(n15), .Y(mux_sel[1]) );
  AOI211X2M U12 ( .A0(n18), .A1(n14), .B0(n9), .C0(n12), .Y(n15) );
  INVX2M U13 ( .A(current[0]), .Y(n11) );
  OAI21X4M U14 ( .A0(n11), .A1(current[1]), .B0(test_so), .Y(mux_sel[2]) );
  NAND2X2M U15 ( .A(n11), .B(test_so), .Y(n9) );
  OAI222X1M U16 ( .A0(data_valid), .A1(n8), .B0(n11), .B1(test_so), .C0(n12), 
        .C1(test_so), .Y(next[2]) );
  INVX2M U17 ( .A(mux_sel[2]), .Y(n8) );
  INVX2M U18 ( .A(n10), .Y(next[0]) );
  OAI21BX1M U19 ( .A0(n9), .A1(n14), .B0N(ser_en), .Y(next[1]) );
  INVX2M U21 ( .A(current[1]), .Y(n12) );
  AOI21X2M U22 ( .A0(n12), .A1(n19), .B0(current[2]), .Y(busy) );
  INVX2M U23 ( .A(par_en), .Y(n14) );
  DLY1X1M U24 ( .A(ser_done), .Y(n18) );
  DLY1X1M U25 ( .A(n11), .Y(n19) );
  SDFFSX1M \current_reg[2]  ( .D(next[2]), .SI(n12), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(current[2]), .QN(n13) );
  INVXLM U3 ( .A(n13), .Y(n1) );
  INVX4M U4 ( .A(n1), .Y(test_so) );
endmodule


module UART_TX_DATAWIDTH8_test_1 ( CLK, RST, P_DATA, PAR_TYP, DATA_VALID, 
        PAR_EN, BUSY, TX_OUT, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, DATA_VALID, PAR_EN, test_si2, test_si1, test_se;
  output BUSY, TX_OUT, test_so1;
  wire   SER_EN, SER_DONE, SER_DATA, PAR_BIT, n1, n2, n3;
  wire   [2:0] MUX_SEL;
  assign test_so1 = SER_DONE;

  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  TX_serializer_datawidth8_test_1 u0_serializer ( .clk(CLK), .rst(n1), 
        .p_data(P_DATA), .data_valid(DATA_VALID), .ser_en(SER_EN), .ser_done(
        SER_DONE), .ser_data(SER_DATA), .test_si(PAR_BIT), .test_se(test_se)
         );
  TX_parity_datawidth8_test_1 u0_parity ( .p_data(P_DATA), .clk(CLK), .rst(n1), 
        .par_typ(PAR_TYP), .par_bit(PAR_BIT), .test_si(n3), .test_se(test_se)
         );
  TX_mux_test_1 u0_mux ( .clk(CLK), .rst(n1), .mux_sel(MUX_SEL), .ser_data(
        SER_DATA), .par_bit(PAR_BIT), .tx_out(TX_OUT), .test_si(test_si2), 
        .test_se(test_se) );
  TX_fsm_datawidth8_test_1 u0_fsm ( .clk(CLK), .rst(n1), .data_valid(
        DATA_VALID), .par_en(PAR_EN), .ser_done(SER_DONE), .ser_en(SER_EN), 
        .busy(BUSY), .mux_sel(MUX_SEL), .test_si(test_si1), .test_so(n3), 
        .test_se(test_se) );
endmodule


module UART_test_1 ( clk_rx, clk_tx, rst, RX_IN, prescale, PAR_EN, PAR_TYP, 
        P_DATA, data_Valid, Parity_Error, Stop_Error, str_glitch, F_EMPTY, 
        RD_DATA, TX_OUT, BUSY, test_si2, test_si1, test_so1, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input [7:0] RD_DATA;
  input clk_rx, clk_tx, rst, RX_IN, PAR_EN, PAR_TYP, F_EMPTY, test_si2,
         test_si1, test_se;
  output data_Valid, Parity_Error, Stop_Error, str_glitch, TX_OUT, BUSY,
         test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  UART_RX_DATAWIDTH8_test_1 u0_UART_RX ( .rst(n1), .clk_RX(clk_rx), .RX_IN(
        RX_IN), .prescale(prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .P_DATA(P_DATA), .Parity_Error(Parity_Error), .Stop_Error(Stop_Error), 
        .DATA_VALID(data_Valid), .str_glitch(str_glitch), .test_si(test_si1), 
        .test_so(n4), .test_se(test_se) );
  UART_TX_DATAWIDTH8_test_1 u0_UART_TX ( .CLK(clk_tx), .RST(n1), .P_DATA(
        RD_DATA), .PAR_TYP(PAR_TYP), .DATA_VALID(F_EMPTY), .PAR_EN(PAR_EN), 
        .BUSY(BUSY), .TX_OUT(TX_OUT), .test_si2(test_si2), .test_si1(n4), 
        .test_so1(test_so1), .test_se(test_se) );
endmodule


module sys_ctrl_test_1 ( clk, rst, ALU_OUT, OUT_VALID, FIFO_FULL, pulse_en, 
        cmd, RdData, RdData_Valid, WrEn, RdEn, Wr_D, ALU_FUN, ALU_EN, CLK_EN, 
        CLKDIV_EN, Address, WR_INC, WrData, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] cmd;
  input [7:0] RdData;
  output [7:0] Wr_D;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input clk, rst, OUT_VALID, FIFO_FULL, pulse_en, RdData_Valid, test_si,
         test_se;
  output WrEn, RdEn, ALU_EN, CLK_EN, CLKDIV_EN, WR_INC, test_so;
  wire   N209, N210, N211, N212, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n48, n49, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n96,
         n97;
  wire   [3:0] current;
  wire   [3:0] next;
  assign test_so = n85;

  NOR3BX4M U30 ( .AN(n59), .B(n33), .C(n44), .Y(n35) );
  NAND3BX4M U88 ( .AN(n19), .B(n74), .C(n45), .Y(ALU_EN) );
  SDFFRHQX8M \Address_reg[3]  ( .D(N212), .SI(Address[2]), .SE(test_se), .CK(
        clk), .RN(n21), .Q(Address[3]) );
  SDFFRHQX8M \Address_reg[2]  ( .D(N211), .SI(n97), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(Address[2]) );
  SDFFRQX4M \current_reg[3]  ( .D(next[3]), .SI(n49), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(current[3]) );
  SDFFRQX4M \current_reg[1]  ( .D(next[1]), .SI(n30), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(current[1]) );
  SDFFRQX1M \Address_reg[0]  ( .D(N209), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(Address[0]) );
  SDFFRQX1M \Address_reg[1]  ( .D(N210), .SI(n96), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(Address[1]) );
  SDFFRQX2M \current_reg[2]  ( .D(next[2]), .SI(n84), .SE(test_se), .CK(clk), 
        .RN(n21), .Q(current[2]) );
  SDFFRQX4M \current_reg[0]  ( .D(next[0]), .SI(Address[3]), .SE(test_se), 
        .CK(clk), .RN(n21), .Q(current[0]) );
  INVX2M U15 ( .A(ALU_EN), .Y(n29) );
  NOR2X8M U16 ( .A(n29), .B(n91), .Y(ALU_FUN[2]) );
  NOR4X2M U17 ( .A(n57), .B(cmd[2]), .C(cmd[6]), .D(cmd[4]), .Y(n56) );
  NAND4X1M U18 ( .A(cmd[4]), .B(cmd[0]), .C(n26), .D(n47), .Y(n46) );
  NAND2BX2M U22 ( .AN(n16), .B(n78), .Y(n76) );
  BUFX4M U23 ( .A(n77), .Y(n16) );
  OAI31X2M U24 ( .A0(n78), .A1(n33), .A2(n39), .B0(n86), .Y(n77) );
  NOR2X6M U25 ( .A(n29), .B(n93), .Y(ALU_FUN[0]) );
  NOR2X4M U26 ( .A(n29), .B(n92), .Y(ALU_FUN[1]) );
  NOR2X4M U27 ( .A(n85), .B(n49), .Y(n54) );
  INVX6M U28 ( .A(current[0]), .Y(n30) );
  INVX2M U29 ( .A(cmd[2]), .Y(n91) );
  INVX2M U31 ( .A(cmd[3]), .Y(n90) );
  NOR3X4M U32 ( .A(current[1]), .B(current[3]), .C(n49), .Y(n81) );
  INVX2M U33 ( .A(pulse_en), .Y(n86) );
  INVX2M U34 ( .A(n39), .Y(n28) );
  NAND2X2M U35 ( .A(n41), .B(n80), .Y(n39) );
  INVX4M U36 ( .A(WrEn), .Y(n27) );
  INVX2M U37 ( .A(n58), .Y(n26) );
  INVX2M U38 ( .A(n75), .Y(RdEn) );
  INVX2M U39 ( .A(FIFO_FULL), .Y(n24) );
  CLKBUFX6M U40 ( .A(n65), .Y(n19) );
  OAI31X2M U41 ( .A0(n83), .A1(n49), .A2(n30), .B0(n60), .Y(n65) );
  INVX2M U42 ( .A(n63), .Y(n83) );
  NAND2X2M U43 ( .A(n82), .B(n30), .Y(n74) );
  NOR2X2M U44 ( .A(n29), .B(n90), .Y(ALU_FUN[3]) );
  NAND2X2M U45 ( .A(n54), .B(n84), .Y(n41) );
  NAND2X2M U46 ( .A(n81), .B(n30), .Y(n75) );
  NAND2X2M U47 ( .A(n40), .B(n75), .Y(n78) );
  INVX4M U48 ( .A(n73), .Y(n23) );
  NOR2BX4M U49 ( .AN(n81), .B(n30), .Y(n33) );
  NAND2X2M U50 ( .A(n54), .B(n30), .Y(n80) );
  NAND2X2M U51 ( .A(n62), .B(n41), .Y(WrEn) );
  NAND4X2M U52 ( .A(n63), .B(n30), .C(n49), .D(n86), .Y(n62) );
  NAND4X2M U53 ( .A(n26), .B(n47), .C(n93), .D(n89), .Y(n59) );
  NOR2X2M U54 ( .A(n27), .B(n93), .Y(Wr_D[0]) );
  NOR2X2M U55 ( .A(n27), .B(n92), .Y(Wr_D[1]) );
  NOR2X2M U56 ( .A(n27), .B(n91), .Y(Wr_D[2]) );
  NOR2X2M U57 ( .A(n27), .B(n90), .Y(Wr_D[3]) );
  NOR2X2M U58 ( .A(n27), .B(n89), .Y(Wr_D[4]) );
  NOR2X2M U59 ( .A(n27), .B(n88), .Y(Wr_D[5]) );
  NOR2X2M U60 ( .A(n27), .B(n87), .Y(Wr_D[7]) );
  NAND3X2M U61 ( .A(n30), .B(n84), .C(n50), .Y(n58) );
  BUFX4M U62 ( .A(n51), .Y(n20) );
  OAI21X2M U63 ( .A0(n74), .A1(n25), .B0(n45), .Y(n51) );
  NOR4X2M U64 ( .A(n87), .B(n58), .C(n92), .D(n88), .Y(n55) );
  OAI211X2M U65 ( .A0(n74), .A1(n25), .B0(n60), .C0(n73), .Y(WR_INC) );
  INVX4M U66 ( .A(n22), .Y(n21) );
  INVX2M U67 ( .A(rst), .Y(n22) );
  NOR2X4M U68 ( .A(n84), .B(current[3]), .Y(n63) );
  INVX4M U69 ( .A(current[1]), .Y(n84) );
  NOR3X4M U70 ( .A(current[1]), .B(current[2]), .C(n85), .Y(n82) );
  INVX4M U71 ( .A(current[2]), .Y(n49) );
  NAND4X4M U72 ( .A(current[1]), .B(current[0]), .C(current[3]), .D(n49), .Y(
        n60) );
  NAND2X2M U73 ( .A(n82), .B(current[0]), .Y(n45) );
  INVX2M U74 ( .A(current[3]), .Y(n85) );
  INVX4M U75 ( .A(cmd[0]), .Y(n93) );
  INVX4M U76 ( .A(cmd[1]), .Y(n92) );
  OAI2BB2X1M U77 ( .B0(n79), .B1(n16), .A0N(n96), .A1N(n16), .Y(N209) );
  AOI21BX2M U78 ( .A0(cmd[0]), .A1(n78), .B0N(n80), .Y(n79) );
  NAND3X2M U79 ( .A(current[0]), .B(n49), .C(n63), .Y(n40) );
  OAI2BB2X1M U80 ( .B0(n92), .B1(n76), .A0N(n97), .A1N(n16), .Y(N210) );
  OAI2BB2X1M U81 ( .B0(n90), .B1(n76), .A0N(Address[3]), .A1N(n16), .Y(N212)
         );
  OAI2BB2X1M U82 ( .B0(n91), .B1(n76), .A0N(Address[2]), .A1N(n16), .Y(N211)
         );
  OAI2BB1X2M U83 ( .A0N(ALU_OUT[0]), .A1N(n20), .B0(n72), .Y(WrData[0]) );
  AOI22X1M U84 ( .A0(RdData[0]), .A1(n23), .B0(ALU_OUT[8]), .B1(n19), .Y(n72)
         );
  OAI2BB1X2M U85 ( .A0N(ALU_OUT[1]), .A1N(n20), .B0(n71), .Y(WrData[1]) );
  AOI22X1M U86 ( .A0(RdData[1]), .A1(n23), .B0(ALU_OUT[9]), .B1(n19), .Y(n71)
         );
  OAI2BB1X2M U87 ( .A0N(ALU_OUT[2]), .A1N(n20), .B0(n70), .Y(WrData[2]) );
  AOI22X1M U89 ( .A0(RdData[2]), .A1(n23), .B0(ALU_OUT[10]), .B1(n19), .Y(n70)
         );
  OAI2BB1X2M U90 ( .A0N(ALU_OUT[3]), .A1N(n20), .B0(n69), .Y(WrData[3]) );
  AOI22X1M U91 ( .A0(RdData[3]), .A1(n23), .B0(ALU_OUT[11]), .B1(n19), .Y(n69)
         );
  OAI2BB1X2M U92 ( .A0N(ALU_OUT[4]), .A1N(n20), .B0(n68), .Y(WrData[4]) );
  AOI22X1M U93 ( .A0(RdData[4]), .A1(n23), .B0(ALU_OUT[12]), .B1(n19), .Y(n68)
         );
  OAI2BB1X2M U94 ( .A0N(ALU_OUT[5]), .A1N(n20), .B0(n67), .Y(WrData[5]) );
  AOI22X1M U95 ( .A0(RdData[5]), .A1(n23), .B0(ALU_OUT[13]), .B1(n19), .Y(n67)
         );
  OAI2BB1X2M U96 ( .A0N(ALU_OUT[6]), .A1N(n20), .B0(n66), .Y(WrData[6]) );
  AOI22X1M U97 ( .A0(RdData[6]), .A1(n23), .B0(ALU_OUT[14]), .B1(n19), .Y(n66)
         );
  OAI2BB1X2M U98 ( .A0N(ALU_OUT[7]), .A1N(n20), .B0(n64), .Y(WrData[7]) );
  AOI22X1M U99 ( .A0(RdData[7]), .A1(n23), .B0(ALU_OUT[15]), .B1(n19), .Y(n64)
         );
  NAND3BX2M U100 ( .AN(n75), .B(n24), .C(RdData_Valid), .Y(n73) );
  NOR2X4M U101 ( .A(current[2]), .B(current[3]), .Y(n50) );
  OAI21X4M U102 ( .A0(pulse_en), .A1(n34), .B0(n60), .Y(n44) );
  NAND4BX1M U103 ( .AN(n20), .B(n35), .C(n52), .D(n53), .Y(next[0]) );
  OAI211X2M U104 ( .A0(n84), .A1(n86), .B0(current[0]), .C0(n50), .Y(n53) );
  AOI32X1M U105 ( .A0(n30), .A1(n84), .A2(n54), .B0(n55), .B1(n56), .Y(n52) );
  AND2X2M U106 ( .A(cmd[6]), .B(WrEn), .Y(Wr_D[6]) );
  NAND3X2M U107 ( .A(current[0]), .B(n54), .C(current[1]), .Y(n34) );
  NAND3X2M U108 ( .A(n35), .B(n28), .C(n36), .Y(next[2]) );
  AOI32X1M U109 ( .A0(n37), .A1(n30), .A2(current[2]), .B0(n38), .B1(n26), .Y(
        n36) );
  NAND3X2M U110 ( .A(n24), .B(n84), .C(pulse_en), .Y(n37) );
  INVX2M U111 ( .A(cmd[4]), .Y(n89) );
  AND4X2M U112 ( .A(cmd[6]), .B(cmd[3]), .C(cmd[7]), .D(n61), .Y(n47) );
  NOR3X2M U113 ( .A(n91), .B(cmd[5]), .C(cmd[1]), .Y(n61) );
  NAND4X2M U114 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(next[1]) );
  AOI33X2M U115 ( .A0(n50), .A1(current[0]), .A2(pulse_en), .B0(n30), .B1(n86), 
        .B2(current[1]), .Y(n42) );
  AOI211X2M U116 ( .A0(n38), .A1(n26), .B0(n44), .C0(n31), .Y(n43) );
  NAND2X2M U117 ( .A(n45), .B(n46), .Y(n31) );
  INVX2M U118 ( .A(cmd[5]), .Y(n88) );
  INVX2M U119 ( .A(cmd[7]), .Y(n87) );
  NAND3BX2M U120 ( .AN(n31), .B(n28), .C(n32), .Y(next[3]) );
  AOI221X2M U121 ( .A0(pulse_en), .A1(n33), .B0(current[3]), .B1(n30), .C0(n48), .Y(n32) );
  INVX2M U122 ( .A(n34), .Y(n48) );
  NAND2X2M U123 ( .A(cmd[3]), .B(n93), .Y(n57) );
  INVX2M U124 ( .A(OUT_VALID), .Y(n25) );
  NOR2X2M U125 ( .A(n17), .B(n18), .Y(n38) );
  OR4X1M U126 ( .A(n93), .B(n89), .C(n92), .D(n88), .Y(n17) );
  OR4X1M U127 ( .A(cmd[6]), .B(cmd[2]), .C(n90), .D(n87), .Y(n18) );
  DLY1X1M U128 ( .A(Address[0]), .Y(n96) );
  DLY1X1M U129 ( .A(Address[1]), .Y(n97) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
  INVX2M U5 ( .A(1'b0), .Y(CLK_EN) );
endmodule


module REG_FILE_test_1 ( WrEn, RdEn, clk, rst, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so3, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, clk, rst, test_si3, test_si2, test_si1, test_se;
  output RdData_VLD, test_so3, test_so2, test_so1;
  wire   N11, N12, N13, N14, n526, n527, n528, n529, n530, n531, n532, n533,
         n647, n3, n648, n649, \reg_file[15][7] , \reg_file[15][6] ,
         \reg_file[15][5] , \reg_file[15][4] , \reg_file[15][3] ,
         \reg_file[15][2] , \reg_file[15][1] , \reg_file[15][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[13][7] ,
         \reg_file[13][6] , \reg_file[13][5] , \reg_file[13][4] ,
         \reg_file[13][3] , \reg_file[13][2] , \reg_file[13][1] ,
         \reg_file[13][0] , \reg_file[12][7] , \reg_file[12][6] ,
         \reg_file[12][5] , \reg_file[12][4] , \reg_file[12][3] ,
         \reg_file[12][2] , \reg_file[12][1] , \reg_file[12][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[10][7] ,
         \reg_file[10][6] , \reg_file[10][5] , \reg_file[10][4] ,
         \reg_file[10][3] , \reg_file[10][2] , \reg_file[10][1] ,
         \reg_file[10][0] , \reg_file[9][7] , \reg_file[9][6] ,
         \reg_file[9][5] , \reg_file[9][4] , \reg_file[9][3] ,
         \reg_file[9][2] , \reg_file[9][1] , \reg_file[9][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[7][7] ,
         \reg_file[7][6] , \reg_file[7][5] , \reg_file[7][4] ,
         \reg_file[7][3] , \reg_file[7][2] , \reg_file[7][1] ,
         \reg_file[7][0] , \reg_file[6][7] , \reg_file[6][6] ,
         \reg_file[6][5] , \reg_file[6][4] , \reg_file[6][3] ,
         \reg_file[6][2] , \reg_file[6][1] , \reg_file[6][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[4][7] ,
         \reg_file[4][6] , \reg_file[4][5] , \reg_file[4][4] ,
         \reg_file[4][3] , \reg_file[4][2] , \reg_file[4][1] ,
         \reg_file[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n161, n164, n165,
         n167, n168, n169, n170, n171, n172, n176, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n140, n419, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n1;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  SDFFRHQX8M \reg_file_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG2[6]) );
  SDFFRHQX8M \reg_file_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG2[5]) );
  SDFFRHQX8M \reg_file_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n531) );
  SDFFRHQX8M \reg_file_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n533) );
  SDFFRQX4M \reg_file_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(test_se), .CK(
        clk), .RN(n505), .Q(REG3[7]) );
  SDFFRQX4M \reg_file_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG3[4]) );
  SDFFRQX4M \reg_file_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG3[2]) );
  SDFFRQX4M \reg_file_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG3[3]) );
  SDFFRQX4M \reg_file_reg[3][6]  ( .D(n217), .SI(n648), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(REG3[6]) );
  SDFFRQX4M \reg_file_reg[3][1]  ( .D(n212), .SI(n649), .SE(test_se), .CK(clk), 
        .RN(n504), .Q(REG3[1]) );
  SDFFRQX4M \reg_file_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG2[4]) );
  SDFFRQX4M \reg_file_reg[0][5]  ( .D(n192), .SI(REG0[4]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[5]) );
  SDFFRQX4M \reg_file_reg[0][6]  ( .D(n193), .SI(REG0[5]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[6]) );
  SDFFRQX4M \reg_file_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[7]) );
  SDFFRQX1M \RdData_reg[7]  ( .D(n186), .SI(n549), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[7]) );
  SDFFRQX1M \RdData_reg[6]  ( .D(n185), .SI(n548), .SE(test_se), .CK(clk), 
        .RN(n503), .Q(RdData[6]) );
  SDFFRQX1M \RdData_reg[5]  ( .D(n184), .SI(n547), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[5]) );
  SDFFRQX1M \RdData_reg[4]  ( .D(n183), .SI(n546), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[4]) );
  SDFFRQX1M \RdData_reg[3]  ( .D(n182), .SI(n545), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[3]) );
  SDFFRQX1M \RdData_reg[2]  ( .D(n181), .SI(n544), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[2]) );
  SDFFRQX1M \RdData_reg[1]  ( .D(n180), .SI(n543), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[1]) );
  SDFFRQX1M \RdData_reg[0]  ( .D(n179), .SI(n645), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(RdData[0]) );
  SDFFRQX1M RdData_VLD_reg ( .D(n178), .SI(test_si1), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(RdData_VLD) );
  SDFFRQX1M \reg_file_reg[15][7]  ( .D(n314), .SI(n620), .SE(test_se), .CK(clk), .RN(n502), .Q(\reg_file[15][7] ) );
  SDFFRQX1M \reg_file_reg[15][6]  ( .D(n313), .SI(n619), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][6] ) );
  SDFFRQX1M \reg_file_reg[15][5]  ( .D(n312), .SI(n618), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][5] ) );
  SDFFRQX1M \reg_file_reg[15][4]  ( .D(n311), .SI(n617), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][4] ) );
  SDFFRQX1M \reg_file_reg[15][3]  ( .D(n310), .SI(n616), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][3] ) );
  SDFFRQX1M \reg_file_reg[15][2]  ( .D(n309), .SI(test_si3), .SE(test_se), 
        .CK(clk), .RN(n512), .Q(\reg_file[15][2] ) );
  SDFFRQX1M \reg_file_reg[15][1]  ( .D(n308), .SI(n615), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][1] ) );
  SDFFRQX1M \reg_file_reg[15][0]  ( .D(n307), .SI(n574), .SE(test_se), .CK(clk), .RN(n512), .Q(\reg_file[15][0] ) );
  SDFFRQX1M \reg_file_reg[13][7]  ( .D(n298), .SI(n597), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[13][7] ) );
  SDFFRQX1M \reg_file_reg[13][6]  ( .D(n297), .SI(n596), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[13][6] ) );
  SDFFRQX1M \reg_file_reg[13][5]  ( .D(n296), .SI(n595), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[13][5] ) );
  SDFFRQX1M \reg_file_reg[13][4]  ( .D(n295), .SI(n594), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[13][4] ) );
  SDFFRQX1M \reg_file_reg[13][3]  ( .D(n294), .SI(n593), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[13][3] ) );
  SDFFRQX1M \reg_file_reg[13][2]  ( .D(n293), .SI(n592), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[13][2] ) );
  SDFFRQX1M \reg_file_reg[13][1]  ( .D(n292), .SI(n591), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[13][1] ) );
  SDFFRQX1M \reg_file_reg[13][0]  ( .D(n291), .SI(n644), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[13][0] ) );
  SDFFRQX1M \reg_file_reg[14][7]  ( .D(n306), .SI(n573), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][7] ) );
  SDFFRQX1M \reg_file_reg[14][6]  ( .D(n305), .SI(n572), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][6] ) );
  SDFFRQX1M \reg_file_reg[14][5]  ( .D(n304), .SI(n571), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][5] ) );
  SDFFRQX1M \reg_file_reg[14][4]  ( .D(n303), .SI(n570), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][4] ) );
  SDFFRQX1M \reg_file_reg[14][3]  ( .D(n302), .SI(n569), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][3] ) );
  SDFFRQX1M \reg_file_reg[14][2]  ( .D(n301), .SI(n568), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][2] ) );
  SDFFRQX1M \reg_file_reg[14][1]  ( .D(n300), .SI(n567), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][1] ) );
  SDFFRQX1M \reg_file_reg[14][0]  ( .D(n299), .SI(n598), .SE(test_se), .CK(clk), .RN(n511), .Q(\reg_file[14][0] ) );
  SDFFRQX1M \reg_file_reg[12][7]  ( .D(n290), .SI(n643), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][7] ) );
  SDFFRQX1M \reg_file_reg[12][6]  ( .D(n289), .SI(n642), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][6] ) );
  SDFFRQX1M \reg_file_reg[12][5]  ( .D(n288), .SI(n641), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][5] ) );
  SDFFRQX1M \reg_file_reg[12][4]  ( .D(n287), .SI(n640), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][4] ) );
  SDFFRQX1M \reg_file_reg[12][3]  ( .D(n286), .SI(n639), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][3] ) );
  SDFFRQX1M \reg_file_reg[12][2]  ( .D(n285), .SI(n638), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][2] ) );
  SDFFRQX1M \reg_file_reg[12][1]  ( .D(n284), .SI(n637), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][1] ) );
  SDFFRQX1M \reg_file_reg[12][0]  ( .D(n283), .SI(n614), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[12][0] ) );
  SDFFRQX1M \reg_file_reg[11][7]  ( .D(n282), .SI(n613), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[11][7] ) );
  SDFFRQX1M \reg_file_reg[11][6]  ( .D(n281), .SI(n612), .SE(test_se), .CK(clk), .RN(n510), .Q(\reg_file[11][6] ) );
  SDFFRQX1M \reg_file_reg[11][5]  ( .D(n280), .SI(n611), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][5] ) );
  SDFFRQX1M \reg_file_reg[11][4]  ( .D(n279), .SI(n610), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][4] ) );
  SDFFRQX1M \reg_file_reg[11][3]  ( .D(n278), .SI(n609), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][3] ) );
  SDFFRQX1M \reg_file_reg[11][2]  ( .D(n277), .SI(n608), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][2] ) );
  SDFFRQX1M \reg_file_reg[11][1]  ( .D(n276), .SI(n607), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][1] ) );
  SDFFRQX1M \reg_file_reg[9][7]  ( .D(n266), .SI(n589), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][7] ) );
  SDFFRQX1M \reg_file_reg[9][6]  ( .D(n265), .SI(n588), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][6] ) );
  SDFFRQX1M \reg_file_reg[9][5]  ( .D(n264), .SI(n587), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][5] ) );
  SDFFRQX1M \reg_file_reg[9][4]  ( .D(n263), .SI(n586), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][4] ) );
  SDFFRQX1M \reg_file_reg[9][3]  ( .D(n262), .SI(n585), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][3] ) );
  SDFFRQX1M \reg_file_reg[9][2]  ( .D(n261), .SI(n584), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][2] ) );
  SDFFRQX1M \reg_file_reg[9][1]  ( .D(n260), .SI(n583), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][1] ) );
  SDFFRQX1M \reg_file_reg[10][7]  ( .D(n274), .SI(n565), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][7] ) );
  SDFFRQX1M \reg_file_reg[10][6]  ( .D(n273), .SI(n564), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][6] ) );
  SDFFRQX1M \reg_file_reg[10][5]  ( .D(n272), .SI(n563), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][5] ) );
  SDFFRQX1M \reg_file_reg[10][4]  ( .D(n271), .SI(n562), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][4] ) );
  SDFFRQX1M \reg_file_reg[10][3]  ( .D(n270), .SI(n561), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][3] ) );
  SDFFRQX1M \reg_file_reg[10][2]  ( .D(n269), .SI(n560), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][2] ) );
  SDFFRQX1M \reg_file_reg[10][1]  ( .D(n268), .SI(n559), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[10][1] ) );
  SDFFRQX1M \reg_file_reg[8][7]  ( .D(n258), .SI(n635), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[8][7] ) );
  SDFFRQX1M \reg_file_reg[8][6]  ( .D(n257), .SI(n634), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[8][6] ) );
  SDFFRQX1M \reg_file_reg[8][5]  ( .D(n256), .SI(n633), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[8][5] ) );
  SDFFRQX1M \reg_file_reg[8][4]  ( .D(n255), .SI(n632), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[8][4] ) );
  SDFFRQX1M \reg_file_reg[8][3]  ( .D(n254), .SI(n631), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[8][3] ) );
  SDFFRQX1M \reg_file_reg[8][2]  ( .D(n253), .SI(n630), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[8][2] ) );
  SDFFRQX1M \reg_file_reg[8][1]  ( .D(n252), .SI(n629), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[8][1] ) );
  SDFFRQX1M \reg_file_reg[11][0]  ( .D(n275), .SI(n566), .SE(test_se), .CK(clk), .RN(n509), .Q(\reg_file[11][0] ) );
  SDFFRQX1M \reg_file_reg[9][0]  ( .D(n259), .SI(n636), .SE(test_se), .CK(clk), 
        .RN(n508), .Q(\reg_file[9][0] ) );
  SDFFRQX1M \reg_file_reg[10][0]  ( .D(n267), .SI(n590), .SE(test_se), .CK(clk), .RN(n508), .Q(\reg_file[10][0] ) );
  SDFFRQX1M \reg_file_reg[8][0]  ( .D(n251), .SI(n606), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[8][0] ) );
  SDFFRQX1M \reg_file_reg[6][7]  ( .D(n242), .SI(n557), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][7] ) );
  SDFFRQX1M \reg_file_reg[6][6]  ( .D(n241), .SI(n556), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][6] ) );
  SDFFRQX1M \reg_file_reg[6][5]  ( .D(n240), .SI(n555), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][5] ) );
  SDFFRQX1M \reg_file_reg[6][4]  ( .D(n239), .SI(n554), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][4] ) );
  SDFFRQX1M \reg_file_reg[6][3]  ( .D(n238), .SI(n553), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][3] ) );
  SDFFRQX1M \reg_file_reg[6][2]  ( .D(n237), .SI(n552), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][2] ) );
  SDFFRQX1M \reg_file_reg[6][1]  ( .D(n236), .SI(n551), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][1] ) );
  SDFFRQX1M \reg_file_reg[6][0]  ( .D(n235), .SI(n582), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[6][0] ) );
  SDFFRQX1M \reg_file_reg[4][7]  ( .D(n226), .SI(n627), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][7] ) );
  SDFFRQX1M \reg_file_reg[4][6]  ( .D(n225), .SI(n626), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][6] ) );
  SDFFRQX1M \reg_file_reg[4][5]  ( .D(n224), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(n505), .Q(\reg_file[4][5] ) );
  SDFFRQX1M \reg_file_reg[4][4]  ( .D(n223), .SI(n625), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][4] ) );
  SDFFRQX1M \reg_file_reg[4][3]  ( .D(n222), .SI(n624), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][3] ) );
  SDFFRQX1M \reg_file_reg[4][2]  ( .D(n221), .SI(n623), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][2] ) );
  SDFFRQX1M \reg_file_reg[4][1]  ( .D(n220), .SI(n622), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[4][1] ) );
  SDFFRQX1M \reg_file_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(test_se), .CK(
        clk), .RN(n505), .Q(\reg_file[4][0] ) );
  SDFFRQX1M \reg_file_reg[7][7]  ( .D(n250), .SI(n605), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][7] ) );
  SDFFRQX1M \reg_file_reg[7][6]  ( .D(n249), .SI(n604), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][6] ) );
  SDFFRQX1M \reg_file_reg[7][5]  ( .D(n248), .SI(n603), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][5] ) );
  SDFFRQX1M \reg_file_reg[7][4]  ( .D(n247), .SI(n602), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][4] ) );
  SDFFRQX1M \reg_file_reg[7][3]  ( .D(n246), .SI(n601), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][3] ) );
  SDFFRQX1M \reg_file_reg[7][2]  ( .D(n245), .SI(n600), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][2] ) );
  SDFFRQX1M \reg_file_reg[7][1]  ( .D(n244), .SI(n599), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][1] ) );
  SDFFRQX1M \reg_file_reg[7][0]  ( .D(n243), .SI(n558), .SE(test_se), .CK(clk), 
        .RN(n507), .Q(\reg_file[7][0] ) );
  SDFFRQX1M \reg_file_reg[5][7]  ( .D(n234), .SI(n581), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[5][7] ) );
  SDFFRQX1M \reg_file_reg[5][6]  ( .D(n233), .SI(n580), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[5][6] ) );
  SDFFRQX1M \reg_file_reg[5][5]  ( .D(n232), .SI(n579), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[5][5] ) );
  SDFFRQX1M \reg_file_reg[5][4]  ( .D(n231), .SI(n578), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[5][4] ) );
  SDFFRQX1M \reg_file_reg[5][3]  ( .D(n230), .SI(n577), .SE(test_se), .CK(clk), 
        .RN(n506), .Q(\reg_file[5][3] ) );
  SDFFRQX1M \reg_file_reg[5][2]  ( .D(n229), .SI(n576), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[5][2] ) );
  SDFFRQX1M \reg_file_reg[5][1]  ( .D(n228), .SI(n575), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[5][1] ) );
  SDFFRQX1M \reg_file_reg[5][0]  ( .D(n227), .SI(n628), .SE(test_se), .CK(clk), 
        .RN(n505), .Q(\reg_file[5][0] ) );
  SDFFSQX2M \reg_file_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(test_se), .CK(
        clk), .SN(n502), .Q(n648) );
  SDFFRQX2M \reg_file_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(n649) );
  SDFFRQX2M \reg_file_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(n647) );
  SDFFRQX2M \reg_file_reg[0][4]  ( .D(n191), .SI(REG0[3]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[4]) );
  SDFFRQX2M \reg_file_reg[0][0]  ( .D(n187), .SI(n550), .SE(test_se), .CK(clk), 
        .RN(n502), .Q(REG0[0]) );
  SDFFRQX2M \reg_file_reg[0][3]  ( .D(n190), .SI(REG0[2]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[3]) );
  SDFFRQX2M \reg_file_reg[0][2]  ( .D(n189), .SI(REG0[1]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(REG0[2]) );
  SDFFRQX2M \reg_file_reg[0][1]  ( .D(n188), .SI(REG0[0]), .SE(test_se), .CK(
        clk), .RN(n502), .Q(REG0[1]) );
  SDFFRQX4M \reg_file_reg[2][3]  ( .D(n206), .SI(REG2[2]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(REG2[3]) );
  SDFFRQX4M \reg_file_reg[2][2]  ( .D(n205), .SI(n647), .SE(test_se), .CK(clk), 
        .RN(n504), .Q(REG2[2]) );
  SDFFRQX2M \reg_file_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(n527) );
  SDFFRQX2M \reg_file_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n530) );
  SDFFRQX4M \reg_file_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n529) );
  SDFFRQX4M \reg_file_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n532) );
  SDFFRQX4M \reg_file_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(test_se), .CK(
        clk), .RN(n503), .Q(n526) );
  SDFFRQX4M \reg_file_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(test_se), .CK(
        clk), .RN(n504), .Q(n528) );
  BUFX32M U140 ( .A(n528), .Y(REG1[5]) );
  BUFX32M U141 ( .A(n531), .Y(REG1[2]) );
  BUFX10M U142 ( .A(n527), .Y(REG1[6]) );
  BUFX32M U143 ( .A(n533), .Y(REG1[0]) );
  BUFX32M U144 ( .A(n526), .Y(REG1[7]) );
  CLKINVX24M U145 ( .A(n529), .Y(n419) );
  CLKBUFX32M U146 ( .A(n530), .Y(REG1[3]) );
  CLKINVX40M U147 ( .A(n419), .Y(REG1[4]) );
  BUFX32M U148 ( .A(n532), .Y(REG1[1]) );
  BUFX6M U149 ( .A(n515), .Y(n502) );
  CLKINVX1M U150 ( .A(N11), .Y(n499) );
  INVX4M U152 ( .A(n140), .Y(REG2[7]) );
  BUFX4M U268 ( .A(n151), .Y(n498) );
  NOR2BX2M U269 ( .AN(n150), .B(N14), .Y(n165) );
  MX4XLM U270 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(n649), .S0(n463), 
        .S1(n462), .Y(n432) );
  MX4XLM U271 ( .A(REG0[1]), .B(REG1[1]), .C(n647), .D(REG3[1]), .S0(n463), 
        .S1(n461), .Y(n436) );
  MX4XLM U272 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n464), 
        .S1(n461), .Y(n440) );
  MX4XLM U273 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n464), 
        .S1(n461), .Y(n444) );
  MX4XLM U274 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n464), 
        .S1(n462), .Y(n448) );
  MX4XLM U275 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(n648), .S0(n465), 
        .S1(n462), .Y(n452) );
  MX4XLM U276 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n465), 
        .S1(n462), .Y(n456) );
  MX4XLM U277 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n465), 
        .S1(n462), .Y(n460) );
  INVX8M U278 ( .A(WrData[6]), .Y(n525) );
  INVX2M U279 ( .A(N12), .Y(n501) );
  NOR2X4M U280 ( .A(n500), .B(N13), .Y(n153) );
  AND2X2M U281 ( .A(N13), .B(n500), .Y(n164) );
  NOR2X4M U282 ( .A(n501), .B(N13), .Y(n158) );
  AND2X2M U283 ( .A(N13), .B(n501), .Y(n161) );
  CLKBUFX8M U284 ( .A(N11), .Y(n464) );
  INVX4M U285 ( .A(n498), .Y(n516) );
  CLKBUFX8M U286 ( .A(n500), .Y(n461) );
  CLKBUFX6M U287 ( .A(N11), .Y(n463) );
  CLKBUFX8M U288 ( .A(n514), .Y(n504) );
  CLKBUFX8M U289 ( .A(n514), .Y(n505) );
  CLKBUFX8M U290 ( .A(n514), .Y(n506) );
  CLKBUFX8M U291 ( .A(n513), .Y(n507) );
  CLKBUFX8M U292 ( .A(n513), .Y(n508) );
  CLKBUFX8M U293 ( .A(n513), .Y(n509) );
  CLKBUFX8M U294 ( .A(n513), .Y(n510) );
  CLKBUFX8M U295 ( .A(n514), .Y(n511) );
  CLKBUFX8M U296 ( .A(n515), .Y(n503) );
  BUFX4M U297 ( .A(n502), .Y(n512) );
  NOR2X4M U298 ( .A(n517), .B(RdEn), .Y(n150) );
  NAND2X2M U299 ( .A(RdEn), .B(n517), .Y(n151) );
  CLKBUFX8M U300 ( .A(N11), .Y(n465) );
  CLKBUFX8M U301 ( .A(n500), .Y(n462) );
  BUFX2M U302 ( .A(n515), .Y(n514) );
  BUFX2M U303 ( .A(n515), .Y(n513) );
  BUFX4M U304 ( .A(n155), .Y(n495) );
  BUFX4M U305 ( .A(n167), .Y(n481) );
  BUFX4M U306 ( .A(n169), .Y(n479) );
  BUFX4M U307 ( .A(n171), .Y(n477) );
  BUFX4M U308 ( .A(n172), .Y(n475) );
  BUFX4M U309 ( .A(n157), .Y(n493) );
  BUFX4M U310 ( .A(n159), .Y(n491) );
  BUFX4M U311 ( .A(n152), .Y(n497) );
  INVX2M U312 ( .A(WrEn), .Y(n517) );
  BUFX4M U313 ( .A(n155), .Y(n494) );
  BUFX4M U314 ( .A(n167), .Y(n480) );
  BUFX4M U315 ( .A(n169), .Y(n478) );
  BUFX4M U316 ( .A(n171), .Y(n476) );
  BUFX4M U317 ( .A(n172), .Y(n474) );
  BUFX4M U318 ( .A(n157), .Y(n492) );
  BUFX4M U319 ( .A(n159), .Y(n490) );
  BUFX4M U320 ( .A(n152), .Y(n496) );
  INVX4M U321 ( .A(n425), .Y(n489) );
  INVX4M U322 ( .A(n425), .Y(n488) );
  INVX4M U323 ( .A(n426), .Y(n487) );
  INVX4M U324 ( .A(n426), .Y(n486) );
  INVX4M U325 ( .A(n427), .Y(n485) );
  INVX4M U326 ( .A(n427), .Y(n484) );
  INVX4M U327 ( .A(n428), .Y(n483) );
  INVX4M U328 ( .A(n428), .Y(n482) );
  INVX4M U329 ( .A(n421), .Y(n473) );
  INVX4M U330 ( .A(n421), .Y(n472) );
  INVX4M U331 ( .A(n422), .Y(n471) );
  INVX4M U332 ( .A(n422), .Y(n470) );
  INVX4M U333 ( .A(n423), .Y(n469) );
  INVX4M U334 ( .A(n423), .Y(n468) );
  INVX4M U335 ( .A(n424), .Y(n467) );
  INVX4M U336 ( .A(n424), .Y(n466) );
  AND2X2M U337 ( .A(n165), .B(n499), .Y(n154) );
  AND2X2M U338 ( .A(n165), .B(n463), .Y(n156) );
  AND2X2M U339 ( .A(n176), .B(n499), .Y(n168) );
  AND2X2M U340 ( .A(n176), .B(n463), .Y(n170) );
  NAND2X2M U341 ( .A(n153), .B(n154), .Y(n152) );
  NAND2X2M U342 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U343 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U344 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U345 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U346 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U347 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U348 ( .A(n170), .B(n158), .Y(n172) );
  AND2X2M U349 ( .A(n168), .B(n161), .Y(n421) );
  AND2X2M U350 ( .A(n170), .B(n161), .Y(n422) );
  AND2X2M U351 ( .A(n168), .B(n164), .Y(n423) );
  AND2X2M U352 ( .A(n170), .B(n164), .Y(n424) );
  AND2X2M U353 ( .A(n161), .B(n154), .Y(n425) );
  AND2X2M U354 ( .A(n161), .B(n156), .Y(n426) );
  AND2X2M U355 ( .A(n164), .B(n154), .Y(n427) );
  AND2X2M U356 ( .A(n164), .B(n156), .Y(n428) );
  INVX8M U357 ( .A(WrData[0]), .Y(n524) );
  INVX8M U358 ( .A(WrData[1]), .Y(n523) );
  INVX8M U359 ( .A(WrData[2]), .Y(n522) );
  INVX8M U360 ( .A(WrData[3]), .Y(n521) );
  INVX8M U361 ( .A(WrData[4]), .Y(n520) );
  INVX8M U362 ( .A(WrData[5]), .Y(n519) );
  INVX8M U363 ( .A(WrData[7]), .Y(n518) );
  INVX2M U364 ( .A(n501), .Y(n500) );
  BUFX2M U365 ( .A(rst), .Y(n515) );
  OAI2BB2X1M U366 ( .B0(n496), .B1(n525), .A0N(REG0[6]), .A1N(n497), .Y(n193)
         );
  OAI2BB2X1M U367 ( .B0(n525), .B1(n494), .A0N(REG1[6]), .A1N(n495), .Y(n201)
         );
  OAI2BB2X1M U368 ( .B0(n525), .B1(n492), .A0N(REG2[6]), .A1N(n493), .Y(n209)
         );
  OAI2BB2X1M U369 ( .B0(n525), .B1(n490), .A0N(REG3[6]), .A1N(n491), .Y(n217)
         );
  OAI2BB2X1M U370 ( .B0(n525), .B1(n489), .A0N(n627), .A1N(n489), .Y(n225) );
  OAI2BB2X1M U371 ( .B0(n525), .B1(n487), .A0N(n581), .A1N(n487), .Y(n233) );
  OAI2BB2X1M U372 ( .B0(n525), .B1(n485), .A0N(n557), .A1N(n485), .Y(n241) );
  OAI2BB2X1M U373 ( .B0(n525), .B1(n483), .A0N(n605), .A1N(n483), .Y(n249) );
  OAI2BB2X1M U374 ( .B0(n525), .B1(n480), .A0N(n635), .A1N(n481), .Y(n257) );
  OAI2BB2X1M U375 ( .B0(n525), .B1(n478), .A0N(n589), .A1N(n479), .Y(n265) );
  OAI2BB2X1M U376 ( .B0(n525), .B1(n476), .A0N(n565), .A1N(n477), .Y(n273) );
  OAI2BB2X1M U377 ( .B0(n525), .B1(n474), .A0N(n613), .A1N(n475), .Y(n281) );
  OAI2BB2X1M U378 ( .B0(n525), .B1(n473), .A0N(n643), .A1N(n473), .Y(n289) );
  OAI2BB2X1M U379 ( .B0(n525), .B1(n471), .A0N(n597), .A1N(n471), .Y(n297) );
  OAI2BB2X1M U380 ( .B0(n525), .B1(n469), .A0N(n573), .A1N(n469), .Y(n305) );
  OAI2BB2X1M U381 ( .B0(n525), .B1(n467), .A0N(n620), .A1N(n467), .Y(n313) );
  OAI2BB2X1M U382 ( .B0(n497), .B1(n524), .A0N(REG0[0]), .A1N(n497), .Y(n187)
         );
  OAI2BB2X1M U383 ( .B0(n496), .B1(n523), .A0N(REG0[1]), .A1N(n497), .Y(n188)
         );
  OAI2BB2X1M U384 ( .B0(n496), .B1(n522), .A0N(REG0[2]), .A1N(n497), .Y(n189)
         );
  OAI2BB2X1M U385 ( .B0(n496), .B1(n521), .A0N(REG0[3]), .A1N(n497), .Y(n190)
         );
  OAI2BB2X1M U386 ( .B0(n496), .B1(n520), .A0N(REG0[4]), .A1N(n497), .Y(n191)
         );
  OAI2BB2X1M U387 ( .B0(n496), .B1(n519), .A0N(REG0[5]), .A1N(n497), .Y(n192)
         );
  OAI2BB2X1M U388 ( .B0(n496), .B1(n518), .A0N(REG0[7]), .A1N(n497), .Y(n194)
         );
  OAI2BB2X1M U389 ( .B0(n524), .B1(n495), .A0N(REG1[0]), .A1N(n495), .Y(n195)
         );
  OAI2BB2X1M U390 ( .B0(n523), .B1(n494), .A0N(REG1[1]), .A1N(n495), .Y(n196)
         );
  OAI2BB2X1M U391 ( .B0(n522), .B1(n494), .A0N(REG1[2]), .A1N(n495), .Y(n197)
         );
  OAI2BB2X1M U392 ( .B0(n521), .B1(n494), .A0N(REG1[3]), .A1N(n495), .Y(n198)
         );
  OAI2BB2X1M U393 ( .B0(n520), .B1(n494), .A0N(REG1[4]), .A1N(n495), .Y(n199)
         );
  OAI2BB2X1M U394 ( .B0(n519), .B1(n494), .A0N(REG1[5]), .A1N(n495), .Y(n200)
         );
  OAI2BB2X1M U395 ( .B0(n518), .B1(n494), .A0N(REG1[7]), .A1N(n495), .Y(n202)
         );
  OAI2BB2X1M U396 ( .B0(n523), .B1(n492), .A0N(n647), .A1N(n493), .Y(n204) );
  OAI2BB2X1M U397 ( .B0(n522), .B1(n492), .A0N(REG2[2]), .A1N(n493), .Y(n205)
         );
  OAI2BB2X1M U398 ( .B0(n521), .B1(n492), .A0N(REG2[3]), .A1N(n493), .Y(n206)
         );
  OAI2BB2X1M U399 ( .B0(n520), .B1(n492), .A0N(REG2[4]), .A1N(n493), .Y(n207)
         );
  OAI2BB2X1M U400 ( .B0(n519), .B1(n492), .A0N(REG2[5]), .A1N(n493), .Y(n208)
         );
  OAI2BB2X1M U401 ( .B0(n524), .B1(n491), .A0N(n649), .A1N(n491), .Y(n211) );
  OAI2BB2X1M U402 ( .B0(n523), .B1(n490), .A0N(REG3[1]), .A1N(n491), .Y(n212)
         );
  OAI2BB2X1M U403 ( .B0(n522), .B1(n490), .A0N(REG3[2]), .A1N(n491), .Y(n213)
         );
  OAI2BB2X1M U404 ( .B0(n521), .B1(n490), .A0N(REG3[3]), .A1N(n491), .Y(n214)
         );
  OAI2BB2X1M U405 ( .B0(n520), .B1(n490), .A0N(REG3[4]), .A1N(n491), .Y(n215)
         );
  OAI2BB2X1M U406 ( .B0(n518), .B1(n490), .A0N(REG3[7]), .A1N(n491), .Y(n218)
         );
  OAI2BB2X1M U407 ( .B0(n524), .B1(n489), .A0N(n622), .A1N(n489), .Y(n219) );
  OAI2BB2X1M U408 ( .B0(n523), .B1(n488), .A0N(n623), .A1N(n488), .Y(n220) );
  OAI2BB2X1M U409 ( .B0(n522), .B1(n489), .A0N(n624), .A1N(n489), .Y(n221) );
  OAI2BB2X1M U410 ( .B0(n521), .B1(n488), .A0N(n625), .A1N(n488), .Y(n222) );
  OAI2BB2X1M U411 ( .B0(n520), .B1(n489), .A0N(test_so1), .A1N(n489), .Y(n223)
         );
  OAI2BB2X1M U412 ( .B0(n519), .B1(n488), .A0N(n626), .A1N(n488), .Y(n224) );
  OAI2BB2X1M U413 ( .B0(n518), .B1(n488), .A0N(n628), .A1N(n488), .Y(n226) );
  OAI2BB2X1M U414 ( .B0(n524), .B1(n487), .A0N(n575), .A1N(n487), .Y(n227) );
  OAI2BB2X1M U415 ( .B0(n523), .B1(n486), .A0N(n576), .A1N(n486), .Y(n228) );
  OAI2BB2X1M U416 ( .B0(n522), .B1(n487), .A0N(n577), .A1N(n487), .Y(n229) );
  OAI2BB2X1M U417 ( .B0(n521), .B1(n486), .A0N(n578), .A1N(n486), .Y(n230) );
  OAI2BB2X1M U418 ( .B0(n520), .B1(n487), .A0N(n579), .A1N(n487), .Y(n231) );
  OAI2BB2X1M U419 ( .B0(n519), .B1(n486), .A0N(n580), .A1N(n486), .Y(n232) );
  OAI2BB2X1M U420 ( .B0(n518), .B1(n486), .A0N(n582), .A1N(n486), .Y(n234) );
  OAI2BB2X1M U421 ( .B0(n524), .B1(n485), .A0N(n551), .A1N(n485), .Y(n235) );
  OAI2BB2X1M U422 ( .B0(n523), .B1(n484), .A0N(n552), .A1N(n484), .Y(n236) );
  OAI2BB2X1M U423 ( .B0(n522), .B1(n485), .A0N(n553), .A1N(n485), .Y(n237) );
  OAI2BB2X1M U424 ( .B0(n521), .B1(n484), .A0N(n554), .A1N(n484), .Y(n238) );
  OAI2BB2X1M U425 ( .B0(n520), .B1(n485), .A0N(n555), .A1N(n485), .Y(n239) );
  OAI2BB2X1M U426 ( .B0(n519), .B1(n484), .A0N(n556), .A1N(n484), .Y(n240) );
  OAI2BB2X1M U427 ( .B0(n518), .B1(n484), .A0N(n558), .A1N(n484), .Y(n242) );
  OAI2BB2X1M U428 ( .B0(n524), .B1(n483), .A0N(n599), .A1N(n483), .Y(n243) );
  OAI2BB2X1M U429 ( .B0(n523), .B1(n482), .A0N(n600), .A1N(n482), .Y(n244) );
  OAI2BB2X1M U430 ( .B0(n522), .B1(n483), .A0N(n601), .A1N(n483), .Y(n245) );
  OAI2BB2X1M U431 ( .B0(n521), .B1(n482), .A0N(n602), .A1N(n482), .Y(n246) );
  OAI2BB2X1M U432 ( .B0(n520), .B1(n483), .A0N(n603), .A1N(n483), .Y(n247) );
  OAI2BB2X1M U433 ( .B0(n519), .B1(n482), .A0N(n604), .A1N(n482), .Y(n248) );
  OAI2BB2X1M U434 ( .B0(n518), .B1(n482), .A0N(n606), .A1N(n482), .Y(n250) );
  OAI2BB2X1M U435 ( .B0(n524), .B1(n481), .A0N(n629), .A1N(n481), .Y(n251) );
  OAI2BB2X1M U436 ( .B0(n523), .B1(n480), .A0N(n630), .A1N(n481), .Y(n252) );
  OAI2BB2X1M U437 ( .B0(n522), .B1(n480), .A0N(n631), .A1N(n481), .Y(n253) );
  OAI2BB2X1M U438 ( .B0(n521), .B1(n480), .A0N(n632), .A1N(n481), .Y(n254) );
  OAI2BB2X1M U439 ( .B0(n520), .B1(n480), .A0N(n633), .A1N(n481), .Y(n255) );
  OAI2BB2X1M U440 ( .B0(n519), .B1(n480), .A0N(n634), .A1N(n481), .Y(n256) );
  OAI2BB2X1M U441 ( .B0(n518), .B1(n480), .A0N(n636), .A1N(n481), .Y(n258) );
  OAI2BB2X1M U442 ( .B0(n524), .B1(n479), .A0N(n583), .A1N(n479), .Y(n259) );
  OAI2BB2X1M U443 ( .B0(n523), .B1(n478), .A0N(n584), .A1N(n479), .Y(n260) );
  OAI2BB2X1M U444 ( .B0(n522), .B1(n478), .A0N(n585), .A1N(n479), .Y(n261) );
  OAI2BB2X1M U445 ( .B0(n521), .B1(n478), .A0N(n586), .A1N(n479), .Y(n262) );
  OAI2BB2X1M U446 ( .B0(n520), .B1(n478), .A0N(n587), .A1N(n479), .Y(n263) );
  OAI2BB2X1M U447 ( .B0(n519), .B1(n478), .A0N(n588), .A1N(n479), .Y(n264) );
  OAI2BB2X1M U448 ( .B0(n518), .B1(n478), .A0N(n590), .A1N(n479), .Y(n266) );
  OAI2BB2X1M U449 ( .B0(n524), .B1(n477), .A0N(n559), .A1N(n477), .Y(n267) );
  OAI2BB2X1M U450 ( .B0(n523), .B1(n476), .A0N(n560), .A1N(n477), .Y(n268) );
  OAI2BB2X1M U451 ( .B0(n522), .B1(n476), .A0N(n561), .A1N(n477), .Y(n269) );
  OAI2BB2X1M U452 ( .B0(n521), .B1(n476), .A0N(n562), .A1N(n477), .Y(n270) );
  OAI2BB2X1M U453 ( .B0(n520), .B1(n476), .A0N(n563), .A1N(n477), .Y(n271) );
  OAI2BB2X1M U454 ( .B0(n519), .B1(n476), .A0N(n564), .A1N(n477), .Y(n272) );
  OAI2BB2X1M U455 ( .B0(n518), .B1(n476), .A0N(n566), .A1N(n477), .Y(n274) );
  OAI2BB2X1M U456 ( .B0(n524), .B1(n475), .A0N(n607), .A1N(n475), .Y(n275) );
  OAI2BB2X1M U457 ( .B0(n523), .B1(n474), .A0N(n608), .A1N(n475), .Y(n276) );
  OAI2BB2X1M U458 ( .B0(n522), .B1(n474), .A0N(n609), .A1N(n475), .Y(n277) );
  OAI2BB2X1M U459 ( .B0(n521), .B1(n474), .A0N(n610), .A1N(n475), .Y(n278) );
  OAI2BB2X1M U460 ( .B0(n520), .B1(n474), .A0N(n611), .A1N(n475), .Y(n279) );
  OAI2BB2X1M U461 ( .B0(n519), .B1(n474), .A0N(n612), .A1N(n475), .Y(n280) );
  OAI2BB2X1M U462 ( .B0(n518), .B1(n474), .A0N(n614), .A1N(n475), .Y(n282) );
  OAI2BB2X1M U463 ( .B0(n524), .B1(n473), .A0N(n637), .A1N(n473), .Y(n283) );
  OAI2BB2X1M U464 ( .B0(n523), .B1(n472), .A0N(n638), .A1N(n472), .Y(n284) );
  OAI2BB2X1M U465 ( .B0(n522), .B1(n473), .A0N(n639), .A1N(n473), .Y(n285) );
  OAI2BB2X1M U466 ( .B0(n521), .B1(n472), .A0N(n640), .A1N(n472), .Y(n286) );
  OAI2BB2X1M U467 ( .B0(n520), .B1(n473), .A0N(n641), .A1N(n473), .Y(n287) );
  OAI2BB2X1M U468 ( .B0(n519), .B1(n472), .A0N(n642), .A1N(n472), .Y(n288) );
  OAI2BB2X1M U469 ( .B0(n518), .B1(n472), .A0N(n644), .A1N(n472), .Y(n290) );
  OAI2BB2X1M U470 ( .B0(n524), .B1(n471), .A0N(n591), .A1N(n471), .Y(n291) );
  OAI2BB2X1M U471 ( .B0(n523), .B1(n470), .A0N(n592), .A1N(n470), .Y(n292) );
  OAI2BB2X1M U472 ( .B0(n522), .B1(n471), .A0N(n593), .A1N(n471), .Y(n293) );
  OAI2BB2X1M U473 ( .B0(n521), .B1(n470), .A0N(n594), .A1N(n470), .Y(n294) );
  OAI2BB2X1M U474 ( .B0(n520), .B1(n471), .A0N(n595), .A1N(n471), .Y(n295) );
  OAI2BB2X1M U475 ( .B0(n519), .B1(n470), .A0N(n596), .A1N(n470), .Y(n296) );
  OAI2BB2X1M U476 ( .B0(n518), .B1(n470), .A0N(n598), .A1N(n470), .Y(n298) );
  OAI2BB2X1M U477 ( .B0(n524), .B1(n469), .A0N(n567), .A1N(n469), .Y(n299) );
  OAI2BB2X1M U478 ( .B0(n523), .B1(n468), .A0N(n568), .A1N(n468), .Y(n300) );
  OAI2BB2X1M U479 ( .B0(n522), .B1(n469), .A0N(n569), .A1N(n469), .Y(n301) );
  OAI2BB2X1M U480 ( .B0(n521), .B1(n468), .A0N(n570), .A1N(n468), .Y(n302) );
  OAI2BB2X1M U481 ( .B0(n520), .B1(n469), .A0N(n571), .A1N(n469), .Y(n303) );
  OAI2BB2X1M U482 ( .B0(n519), .B1(n468), .A0N(n572), .A1N(n468), .Y(n304) );
  OAI2BB2X1M U483 ( .B0(n518), .B1(n468), .A0N(n574), .A1N(n468), .Y(n306) );
  OAI2BB2X1M U484 ( .B0(n524), .B1(n467), .A0N(n615), .A1N(n467), .Y(n307) );
  OAI2BB2X1M U485 ( .B0(n523), .B1(n466), .A0N(test_so2), .A1N(n466), .Y(n308)
         );
  OAI2BB2X1M U486 ( .B0(n522), .B1(n467), .A0N(n616), .A1N(n467), .Y(n309) );
  OAI2BB2X1M U487 ( .B0(n521), .B1(n466), .A0N(n617), .A1N(n466), .Y(n310) );
  OAI2BB2X1M U488 ( .B0(n520), .B1(n467), .A0N(n618), .A1N(n467), .Y(n311) );
  OAI2BB2X1M U489 ( .B0(n519), .B1(n466), .A0N(n619), .A1N(n466), .Y(n312) );
  OAI2BB2X1M U490 ( .B0(n518), .B1(n466), .A0N(test_so3), .A1N(n466), .Y(n314)
         );
  OAI2BB2X1M U491 ( .B0(n524), .B1(n493), .A0N(REG2[0]), .A1N(n493), .Y(n203)
         );
  OAI2BB2X1M U492 ( .B0(n518), .B1(n492), .A0N(REG2[7]), .A1N(n493), .Y(n210)
         );
  OAI2BB2X1M U493 ( .B0(n519), .B1(n490), .A0N(n648), .A1N(n491), .Y(n216) );
  AND2X2M U494 ( .A(N14), .B(n150), .Y(n176) );
  MX4X1M U495 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n464), .S1(n461), .Y(n439) );
  MX4X1M U496 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n464), .S1(n461), .Y(n443) );
  MX4X1M U497 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n464), .S1(n461), .Y(n447) );
  MX4X1M U498 ( .A(\reg_file[12][2] ), .B(\reg_file[13][2] ), .C(
        \reg_file[14][2] ), .D(\reg_file[15][2] ), .S0(n464), .S1(n461), .Y(
        n437) );
  MX4X1M U499 ( .A(\reg_file[12][3] ), .B(\reg_file[13][3] ), .C(
        \reg_file[14][3] ), .D(\reg_file[15][3] ), .S0(n464), .S1(n461), .Y(
        n441) );
  MX4X1M U500 ( .A(\reg_file[12][4] ), .B(\reg_file[13][4] ), .C(
        \reg_file[14][4] ), .D(\reg_file[15][4] ), .S0(n464), .S1(n461), .Y(
        n445) );
  AO22X1M U501 ( .A0(N43), .A1(n516), .B0(n543), .B1(n498), .Y(n179) );
  MX4X1M U502 ( .A(n432), .B(n430), .C(n431), .D(n429), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U503 ( .A(\reg_file[8][0] ), .B(\reg_file[9][0] ), .C(
        \reg_file[10][0] ), .D(\reg_file[11][0] ), .S0(n463), .S1(N12), .Y(
        n430) );
  AO22X1M U504 ( .A0(N42), .A1(n516), .B0(n544), .B1(n498), .Y(n180) );
  MX4X1M U505 ( .A(n436), .B(n434), .C(n435), .D(n433), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U506 ( .A(\reg_file[8][1] ), .B(\reg_file[9][1] ), .C(
        \reg_file[10][1] ), .D(\reg_file[11][1] ), .S0(n463), .S1(N12), .Y(
        n434) );
  AO22X1M U507 ( .A0(N41), .A1(n516), .B0(n545), .B1(n498), .Y(n181) );
  MX4X1M U508 ( .A(n440), .B(n438), .C(n439), .D(n437), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U509 ( .A(\reg_file[8][2] ), .B(\reg_file[9][2] ), .C(
        \reg_file[10][2] ), .D(\reg_file[11][2] ), .S0(n464), .S1(n461), .Y(
        n438) );
  AO22X1M U510 ( .A0(N40), .A1(n516), .B0(n546), .B1(n498), .Y(n182) );
  MX4X1M U511 ( .A(n444), .B(n442), .C(n443), .D(n441), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U512 ( .A(\reg_file[8][3] ), .B(\reg_file[9][3] ), .C(
        \reg_file[10][3] ), .D(\reg_file[11][3] ), .S0(n464), .S1(n461), .Y(
        n442) );
  AO22X1M U513 ( .A0(N39), .A1(n516), .B0(n547), .B1(n498), .Y(n183) );
  MX4X1M U514 ( .A(n448), .B(n446), .C(n447), .D(n445), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U515 ( .A(\reg_file[8][4] ), .B(\reg_file[9][4] ), .C(
        \reg_file[10][4] ), .D(\reg_file[11][4] ), .S0(n464), .S1(n461), .Y(
        n446) );
  AO22X1M U516 ( .A0(N38), .A1(n516), .B0(n548), .B1(n498), .Y(n184) );
  MX4X1M U517 ( .A(n452), .B(n450), .C(n451), .D(n449), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U518 ( .A(\reg_file[8][5] ), .B(\reg_file[9][5] ), .C(
        \reg_file[10][5] ), .D(\reg_file[11][5] ), .S0(n465), .S1(n462), .Y(
        n450) );
  AO22X1M U519 ( .A0(N37), .A1(n516), .B0(n549), .B1(n498), .Y(n185) );
  MX4X1M U520 ( .A(n456), .B(n454), .C(n455), .D(n453), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U521 ( .A(\reg_file[8][6] ), .B(\reg_file[9][6] ), .C(
        \reg_file[10][6] ), .D(\reg_file[11][6] ), .S0(n465), .S1(n462), .Y(
        n454) );
  AO22X1M U522 ( .A0(N36), .A1(n516), .B0(n550), .B1(n498), .Y(n186) );
  MX4X1M U523 ( .A(n460), .B(n458), .C(n459), .D(n457), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U524 ( .A(\reg_file[8][7] ), .B(\reg_file[9][7] ), .C(
        \reg_file[10][7] ), .D(\reg_file[11][7] ), .S0(n465), .S1(n462), .Y(
        n458) );
  AO21XLM U525 ( .A0(n150), .A1(n645), .B0(n516), .Y(n178) );
  MX4X1M U526 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(n465), .S1(n462), .Y(n451) );
  MX4X1M U527 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(n465), .S1(n462), .Y(n455) );
  MX4X1M U528 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(
        \reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(n465), .S1(n462), .Y(n459) );
  MX4X1M U529 ( .A(\reg_file[12][5] ), .B(\reg_file[13][5] ), .C(
        \reg_file[14][5] ), .D(\reg_file[15][5] ), .S0(n465), .S1(n462), .Y(
        n449) );
  MX4X1M U530 ( .A(\reg_file[12][6] ), .B(\reg_file[13][6] ), .C(
        \reg_file[14][6] ), .D(\reg_file[15][6] ), .S0(n465), .S1(n462), .Y(
        n453) );
  MX4X1M U531 ( .A(\reg_file[12][7] ), .B(\reg_file[13][7] ), .C(
        \reg_file[14][7] ), .D(\reg_file[15][7] ), .S0(n465), .S1(n462), .Y(
        n457) );
  MX4X1M U532 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(n463), .S1(n461), .Y(n431) );
  MX4X1M U533 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n463), .S1(n461), .Y(n435) );
  MX4X1M U534 ( .A(\reg_file[12][0] ), .B(\reg_file[13][0] ), .C(
        \reg_file[14][0] ), .D(\reg_file[15][0] ), .S0(n463), .S1(n461), .Y(
        n429) );
  MX4X1M U535 ( .A(\reg_file[12][1] ), .B(\reg_file[13][1] ), .C(
        \reg_file[14][1] ), .D(\reg_file[15][1] ), .S0(n463), .S1(n462), .Y(
        n433) );
  DLY1X1M U536 ( .A(n649), .Y(REG3[0]) );
  DLY1X1M U537 ( .A(n647), .Y(REG2[1]) );
  DLY1X1M U538 ( .A(\reg_file[15][1] ), .Y(test_so2) );
  DLY1X1M U539 ( .A(\reg_file[4][4] ), .Y(test_so1) );
  DLY1X1M U540 ( .A(RdData[0]), .Y(n543) );
  DLY1X1M U541 ( .A(RdData[1]), .Y(n544) );
  DLY1X1M U542 ( .A(RdData[2]), .Y(n545) );
  DLY1X1M U543 ( .A(RdData[3]), .Y(n546) );
  DLY1X1M U544 ( .A(RdData[4]), .Y(n547) );
  DLY1X1M U545 ( .A(RdData[5]), .Y(n548) );
  DLY1X1M U546 ( .A(RdData[6]), .Y(n549) );
  DLY1X1M U547 ( .A(RdData[7]), .Y(n550) );
  DLY1X1M U548 ( .A(\reg_file[6][0] ), .Y(n551) );
  DLY1X1M U549 ( .A(\reg_file[6][1] ), .Y(n552) );
  DLY1X1M U550 ( .A(\reg_file[6][2] ), .Y(n553) );
  DLY1X1M U551 ( .A(\reg_file[6][3] ), .Y(n554) );
  DLY1X1M U552 ( .A(\reg_file[6][4] ), .Y(n555) );
  DLY1X1M U553 ( .A(\reg_file[6][5] ), .Y(n556) );
  DLY1X1M U554 ( .A(\reg_file[6][6] ), .Y(n557) );
  DLY1X1M U555 ( .A(\reg_file[6][7] ), .Y(n558) );
  DLY1X1M U556 ( .A(\reg_file[10][0] ), .Y(n559) );
  DLY1X1M U557 ( .A(\reg_file[10][1] ), .Y(n560) );
  DLY1X1M U558 ( .A(\reg_file[10][2] ), .Y(n561) );
  DLY1X1M U559 ( .A(\reg_file[10][3] ), .Y(n562) );
  DLY1X1M U560 ( .A(\reg_file[10][4] ), .Y(n563) );
  DLY1X1M U561 ( .A(\reg_file[10][5] ), .Y(n564) );
  DLY1X1M U562 ( .A(\reg_file[10][6] ), .Y(n565) );
  DLY1X1M U563 ( .A(\reg_file[10][7] ), .Y(n566) );
  DLY1X1M U564 ( .A(\reg_file[14][0] ), .Y(n567) );
  DLY1X1M U565 ( .A(\reg_file[14][1] ), .Y(n568) );
  DLY1X1M U566 ( .A(\reg_file[14][2] ), .Y(n569) );
  DLY1X1M U567 ( .A(\reg_file[14][3] ), .Y(n570) );
  DLY1X1M U568 ( .A(\reg_file[14][4] ), .Y(n571) );
  DLY1X1M U569 ( .A(\reg_file[14][5] ), .Y(n572) );
  DLY1X1M U570 ( .A(\reg_file[14][6] ), .Y(n573) );
  DLY1X1M U571 ( .A(\reg_file[14][7] ), .Y(n574) );
  DLY1X1M U572 ( .A(\reg_file[5][0] ), .Y(n575) );
  DLY1X1M U573 ( .A(\reg_file[5][1] ), .Y(n576) );
  DLY1X1M U574 ( .A(\reg_file[5][2] ), .Y(n577) );
  DLY1X1M U575 ( .A(\reg_file[5][3] ), .Y(n578) );
  DLY1X1M U576 ( .A(\reg_file[5][4] ), .Y(n579) );
  DLY1X1M U577 ( .A(\reg_file[5][5] ), .Y(n580) );
  DLY1X1M U578 ( .A(\reg_file[5][6] ), .Y(n581) );
  DLY1X1M U579 ( .A(\reg_file[5][7] ), .Y(n582) );
  DLY1X1M U580 ( .A(\reg_file[9][0] ), .Y(n583) );
  DLY1X1M U581 ( .A(\reg_file[9][1] ), .Y(n584) );
  DLY1X1M U582 ( .A(\reg_file[9][2] ), .Y(n585) );
  DLY1X1M U583 ( .A(\reg_file[9][3] ), .Y(n586) );
  DLY1X1M U584 ( .A(\reg_file[9][4] ), .Y(n587) );
  DLY1X1M U585 ( .A(\reg_file[9][5] ), .Y(n588) );
  DLY1X1M U586 ( .A(\reg_file[9][6] ), .Y(n589) );
  DLY1X1M U587 ( .A(\reg_file[9][7] ), .Y(n590) );
  DLY1X1M U588 ( .A(\reg_file[13][0] ), .Y(n591) );
  DLY1X1M U589 ( .A(\reg_file[13][1] ), .Y(n592) );
  DLY1X1M U590 ( .A(\reg_file[13][2] ), .Y(n593) );
  DLY1X1M U591 ( .A(\reg_file[13][3] ), .Y(n594) );
  DLY1X1M U592 ( .A(\reg_file[13][4] ), .Y(n595) );
  DLY1X1M U593 ( .A(\reg_file[13][5] ), .Y(n596) );
  DLY1X1M U594 ( .A(\reg_file[13][6] ), .Y(n597) );
  DLY1X1M U595 ( .A(\reg_file[13][7] ), .Y(n598) );
  DLY1X1M U596 ( .A(\reg_file[7][0] ), .Y(n599) );
  DLY1X1M U597 ( .A(\reg_file[7][1] ), .Y(n600) );
  DLY1X1M U598 ( .A(\reg_file[7][2] ), .Y(n601) );
  DLY1X1M U599 ( .A(\reg_file[7][3] ), .Y(n602) );
  DLY1X1M U600 ( .A(\reg_file[7][4] ), .Y(n603) );
  DLY1X1M U601 ( .A(\reg_file[7][5] ), .Y(n604) );
  DLY1X1M U602 ( .A(\reg_file[7][6] ), .Y(n605) );
  DLY1X1M U603 ( .A(\reg_file[7][7] ), .Y(n606) );
  DLY1X1M U604 ( .A(\reg_file[11][0] ), .Y(n607) );
  DLY1X1M U605 ( .A(\reg_file[11][1] ), .Y(n608) );
  DLY1X1M U606 ( .A(\reg_file[11][2] ), .Y(n609) );
  DLY1X1M U607 ( .A(\reg_file[11][3] ), .Y(n610) );
  DLY1X1M U608 ( .A(\reg_file[11][4] ), .Y(n611) );
  DLY1X1M U609 ( .A(\reg_file[11][5] ), .Y(n612) );
  DLY1X1M U610 ( .A(\reg_file[11][6] ), .Y(n613) );
  DLY1X1M U611 ( .A(\reg_file[11][7] ), .Y(n614) );
  DLY1X1M U612 ( .A(\reg_file[15][0] ), .Y(n615) );
  DLY1X1M U613 ( .A(\reg_file[15][2] ), .Y(n616) );
  DLY1X1M U614 ( .A(\reg_file[15][3] ), .Y(n617) );
  DLY1X1M U615 ( .A(\reg_file[15][4] ), .Y(n618) );
  DLY1X1M U616 ( .A(\reg_file[15][5] ), .Y(n619) );
  DLY1X1M U617 ( .A(\reg_file[15][6] ), .Y(n620) );
  DLY1X1M U618 ( .A(\reg_file[15][7] ), .Y(test_so3) );
  DLY1X1M U619 ( .A(\reg_file[4][0] ), .Y(n622) );
  DLY1X1M U620 ( .A(\reg_file[4][1] ), .Y(n623) );
  DLY1X1M U621 ( .A(\reg_file[4][2] ), .Y(n624) );
  DLY1X1M U622 ( .A(\reg_file[4][3] ), .Y(n625) );
  DLY1X1M U623 ( .A(\reg_file[4][5] ), .Y(n626) );
  DLY1X1M U624 ( .A(\reg_file[4][6] ), .Y(n627) );
  DLY1X1M U625 ( .A(\reg_file[4][7] ), .Y(n628) );
  DLY1X1M U626 ( .A(\reg_file[8][0] ), .Y(n629) );
  DLY1X1M U627 ( .A(\reg_file[8][1] ), .Y(n630) );
  DLY1X1M U628 ( .A(\reg_file[8][2] ), .Y(n631) );
  DLY1X1M U629 ( .A(\reg_file[8][3] ), .Y(n632) );
  DLY1X1M U630 ( .A(\reg_file[8][4] ), .Y(n633) );
  DLY1X1M U631 ( .A(\reg_file[8][5] ), .Y(n634) );
  DLY1X1M U632 ( .A(\reg_file[8][6] ), .Y(n635) );
  DLY1X1M U633 ( .A(\reg_file[8][7] ), .Y(n636) );
  DLY1X1M U634 ( .A(\reg_file[12][0] ), .Y(n637) );
  DLY1X1M U635 ( .A(\reg_file[12][1] ), .Y(n638) );
  DLY1X1M U636 ( .A(\reg_file[12][2] ), .Y(n639) );
  DLY1X1M U637 ( .A(\reg_file[12][3] ), .Y(n640) );
  DLY1X1M U638 ( .A(\reg_file[12][4] ), .Y(n641) );
  DLY1X1M U639 ( .A(\reg_file[12][5] ), .Y(n642) );
  DLY1X1M U640 ( .A(\reg_file[12][6] ), .Y(n643) );
  DLY1X1M U641 ( .A(\reg_file[12][7] ), .Y(n644) );
  DLY1X1M U642 ( .A(RdData_VLD), .Y(n645) );
  DLY1X1M U643 ( .A(n648), .Y(REG3[5]) );
  SDFFSX1M \reg_file_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(test_se), .CK(
        clk), .SN(rst), .QN(n140) );
  SDFFSQX2M \reg_file_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(test_se), .CK(
        clk), .SN(rst), .Q(n3) );
  INVXLM U3 ( .A(n3), .Y(n1) );
  INVX6M U4 ( .A(n1), .Y(REG2[0]) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n34, n35, n36, n37, n38, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[3][3] , \u_div/PartRem[3][4] ,
         \u_div/PartRem[3][5] , \u_div/PartRem[4][1] , \u_div/PartRem[4][2] ,
         \u_div/PartRem[4][3] , \u_div/PartRem[4][4] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[5][2] , \u_div/PartRem[5][3] , \u_div/PartRem[6][1] ,
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n2, n3, n5, n6, n7,
         n8, n9, n10, n13, n14, n15, n16, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33;

  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n29), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n28), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n29), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n24), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n26), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n27), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n23), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n24), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n27), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n25), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n26), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n27), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n27), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n28), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n29), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(n2), .B(n28), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_2  ( .A(n3), .B(n28), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n29), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n29), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n28), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n26), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n25), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n25), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n29), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n28), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n27), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n29), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  BUFX10M U1 ( .A(n35), .Y(quotient[5]) );
  CLKAND2X6M U2 ( .A(\u_div/CryTmp[5][3] ), .B(n31), .Y(n35) );
  AND2X12M U3 ( .A(n33), .B(n21), .Y(n32) );
  CLKAND2X16M U4 ( .A(\u_div/CryTmp[2][6] ), .B(n33), .Y(n37) );
  MX2X4M U5 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(n38), .Y(
        \u_div/PartRem[1][1] ) );
  MX2X1M U6 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  AND2X8M U7 ( .A(\u_div/CryTmp[1][7] ), .B(n23), .Y(quotient[1]) );
  BUFX10M U8 ( .A(\u_div/PartRem[3][2] ), .Y(n1) );
  CLKMX2X8M U9 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X6M U10 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  BUFX10M U11 ( .A(\u_div/PartRem[2][2] ), .Y(n2) );
  CLKMX2X12M U12 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  BUFX10M U13 ( .A(n1), .Y(n3) );
  CLKMX2X2M U14 ( .A(n3), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][3] ) );
  MX2X3M U15 ( .A(n2), .B(\u_div/SumTmp[1][2] ), .S0(n13), .Y(
        \u_div/PartRem[1][3] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  BUFX24M U18 ( .A(n37), .Y(quotient[2]) );
  AND2X12M U19 ( .A(\u_div/CryTmp[3][5] ), .B(n10), .Y(quotient[3]) );
  INVX32M U20 ( .A(b[3]), .Y(n27) );
  CLKMX2X8M U21 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X6M U22 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  INVX32M U23 ( .A(b[1]), .Y(n29) );
  MX2X8M U24 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(n36), .Y(
        \u_div/PartRem[4][1] ) );
  INVX6M U25 ( .A(quotient[5]), .Y(n14) );
  AND2X8M U26 ( .A(n26), .B(n25), .Y(n21) );
  XOR2X2M U27 ( .A(\u_div/CryTmp[2][4] ), .B(n6), .Y(\u_div/SumTmp[2][4] ) );
  CLKAND2X6M U28 ( .A(\u_div/CryTmp[1][7] ), .B(n23), .Y(n38) );
  NAND2X4M U29 ( .A(\u_div/CryTmp[2][4] ), .B(\u_div/PartRem[3][4] ), .Y(n7)
         );
  INVX4M U30 ( .A(b[0]), .Y(n30) );
  INVX8M U31 ( .A(b[0]), .Y(n5) );
  AND2X2M U32 ( .A(\u_div/CryTmp[1][7] ), .B(n23), .Y(n13) );
  BUFX8M U33 ( .A(n36), .Y(quotient[4]) );
  AND2X6M U34 ( .A(\u_div/CryTmp[6][2] ), .B(n22), .Y(quotient[6]) );
  INVX32M U35 ( .A(b[2]), .Y(n28) );
  CLKAND2X4M U36 ( .A(\u_div/CryTmp[4][4] ), .B(n32), .Y(n36) );
  CLKMX2X12M U37 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X12M U38 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(n34), .Y(
        \u_div/PartRem[7][1] ) );
  XNOR2X2M U39 ( .A(n30), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  CLKXOR2X2M U40 ( .A(\u_div/PartRem[3][4] ), .B(n26), .Y(n6) );
  NAND2X6M U41 ( .A(\u_div/CryTmp[2][4] ), .B(n26), .Y(n8) );
  NAND2X6M U42 ( .A(\u_div/PartRem[3][4] ), .B(n26), .Y(n9) );
  NAND3X12M U43 ( .A(n9), .B(n8), .C(n7), .Y(\u_div/CryTmp[2][5] ) );
  CLKINVX40M U44 ( .A(b[4]), .Y(n26) );
  AND2X1M U45 ( .A(n33), .B(n25), .Y(n10) );
  CLKMX2X6M U46 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X8M U47 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  INVX32M U48 ( .A(b[5]), .Y(n25) );
  AND2X1M U49 ( .A(n31), .B(n18), .Y(quotient[7]) );
  CLKAND2X16M U50 ( .A(n31), .B(n18), .Y(n34) );
  NAND2X12M U51 ( .A(a[5]), .B(n14), .Y(n15) );
  NAND2X8M U52 ( .A(\u_div/SumTmp[5][0] ), .B(quotient[5]), .Y(n16) );
  NAND2X12M U53 ( .A(n15), .B(n16), .Y(\u_div/PartRem[5][1] ) );
  OR2X12M U54 ( .A(a[7]), .B(n30), .Y(\u_div/CryTmp[7][1] ) );
  AND2X12M U55 ( .A(n32), .B(n27), .Y(n31) );
  AND2X2M U56 ( .A(n29), .B(n28), .Y(n20) );
  AND2X4M U57 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .Y(n18) );
  XNOR2X1M U58 ( .A(n5), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U59 ( .A(n5), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  OR2X1M U60 ( .A(a[5]), .B(n5), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U61 ( .A(a[6]), .B(n5), .Y(\u_div/CryTmp[6][1] ) );
  CLKMX2X4M U62 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U63 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  AND2X1M U64 ( .A(n31), .B(n28), .Y(n22) );
  OR2X1M U65 ( .A(a[0]), .B(n5), .Y(\u_div/CryTmp[0][1] ) );
  MX2X1M U66 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X1M U67 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U68 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U69 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  XNOR2X1M U70 ( .A(n5), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U71 ( .A(n5), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U72 ( .A(n5), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1M U73 ( .A(n5), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NOR2X12M U74 ( .A(b[6]), .B(b[7]), .Y(n33) );
  MX2X2M U75 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  OR2X2M U76 ( .A(a[4]), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U77 ( .A(a[3]), .B(n5), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U78 ( .A(a[1]), .B(n5), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U79 ( .A(a[2]), .B(n5), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U80 ( .A(b[6]), .Y(n24) );
  INVX2M U81 ( .A(b[7]), .Y(n23) );
  CLKMX2X2M U82 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(n13), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U83 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U84 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(n13), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U85 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[1]), .Y(n7) );
  INVXLM U2 ( .A(B[4]), .Y(n4) );
  INVXLM U3 ( .A(B[5]), .Y(n3) );
  INVXLM U4 ( .A(B[2]), .Y(n6) );
  INVXLM U5 ( .A(B[3]), .Y(n5) );
  CLKINVX1M U6 ( .A(B[0]), .Y(n8) );
  INVXLM U7 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U8 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U9 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U10 ( .A(B[7]), .Y(n1) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX4M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U3 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  NOR2X2M U4 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U5 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NOR2X2M U7 ( .A(B[11]), .B(A[11]), .Y(n19) );
  CLKXOR2X2M U8 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n13) );
  CLKXOR2X2M U10 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  INVX2M U11 ( .A(A[6]), .Y(n7) );
  INVX2M U12 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U13 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U14 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U15 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U16 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U17 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U18 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U19 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U20 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U21 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U22 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U23 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U24 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U26 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U27 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U28 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U29 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U30 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U31 ( .A(B[9]), .B(A[9]), .Y(n10) );
  OA21X1M U32 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U34 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n25) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U11 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U12 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U14 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U15 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U16 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U17 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U18 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U19 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U20 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X2M U21 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X2M U22 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X2M U23 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U24 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  CLKINVX4M U25 ( .A(A[4]), .Y(n28) );
  CLKINVX4M U26 ( .A(A[5]), .Y(n27) );
  CLKINVX4M U27 ( .A(A[6]), .Y(n26) );
  CLKINVX4M U28 ( .A(A[7]), .Y(n25) );
  CLKINVX4M U29 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U30 ( .A(B[1]), .Y(n23) );
  CLKINVX4M U31 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U32 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U33 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U34 ( .A(B[0]), .Y(n24) );
  CLKINVX4M U35 ( .A(B[6]), .Y(n18) );
  CLKXOR2X2M U36 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U39 ( .A(A[1]), .Y(n31) );
  AND2X2M U40 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U41 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U42 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  INVX4M U43 ( .A(A[2]), .Y(n30) );
  CLKXOR2X2M U44 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX4M U46 ( .A(A[3]), .Y(n29) );
  AND2X2M U47 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U48 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U49 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U50 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U51 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U52 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U53 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX4M U54 ( .A(A[0]), .Y(n32) );
  XOR2X1M U55 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U56 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U57 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U58 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U59 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U60 ( .A(B[7]), .Y(n17) );
  NOR2X1M U62 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n12, n13, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, clk, ALU_OUT, EN, rst, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, EN, rst, test_si, test_se;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N157, N158, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6, n40,
         n41, n42, n43, n44, n45, n46, n47, n58, n59, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201;
  wire   [15:0] ALU_OUT_cmp;

  OAI2BB1X4M U94 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  SDFFRHQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_cmp[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(n151), .Q(ALU_OUT[0]) );
  SDFFRQX1M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(OUT_VALID) );
  SDFFRQX1M \ALU_OUT_reg[8]  ( .D(ALU_OUT_cmp[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[8]) );
  SDFFRQX1M \ALU_OUT_reg[9]  ( .D(ALU_OUT_cmp[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[9]) );
  SDFFRQX1M \ALU_OUT_reg[6]  ( .D(ALU_OUT_cmp[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[6]) );
  SDFFRQX1M \ALU_OUT_reg[3]  ( .D(ALU_OUT_cmp[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(clk), .RN(n151), .Q(ALU_OUT[3]) );
  SDFFRQX1M \ALU_OUT_reg[5]  ( .D(ALU_OUT_cmp[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[5]) );
  SDFFRQX1M \ALU_OUT_reg[4]  ( .D(ALU_OUT_cmp[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[4]) );
  SDFFRQX1M \ALU_OUT_reg[10]  ( .D(ALU_OUT_cmp[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[10]) );
  SDFFRQX1M \ALU_OUT_reg[7]  ( .D(ALU_OUT_cmp[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[7]) );
  SDFFRQX1M \ALU_OUT_reg[11]  ( .D(ALU_OUT_cmp[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[11]) );
  SDFFRQX1M \ALU_OUT_reg[12]  ( .D(ALU_OUT_cmp[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[12]) );
  SDFFRQX1M \ALU_OUT_reg[2]  ( .D(ALU_OUT_cmp[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(clk), .RN(n151), .Q(ALU_OUT[2]) );
  SDFFRQX1M \ALU_OUT_reg[13]  ( .D(ALU_OUT_cmp[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[13]) );
  SDFFRQX1M \ALU_OUT_reg[14]  ( .D(ALU_OUT_cmp[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[14]) );
  SDFFRQX1M \ALU_OUT_reg[15]  ( .D(ALU_OUT_cmp[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(clk), .RN(n150), .Q(ALU_OUT[15]) );
  SDFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_cmp[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(clk), .RN(n151), .Q(ALU_OUT[1]) );
  INVX20M U7 ( .A(A[7]), .Y(n139) );
  NOR2X8M U23 ( .A(n41), .B(n196), .Y(ALU_OUT_cmp[0]) );
  CLKINVX2M U24 ( .A(B[3]), .Y(n184) );
  BUFX32M U25 ( .A(n140), .Y(n3) );
  CLKBUFX4M U26 ( .A(n140), .Y(n4) );
  INVX20M U27 ( .A(n139), .Y(n140) );
  NOR2X4M U28 ( .A(n201), .B(n45), .Y(n122) );
  INVX4M U29 ( .A(A[6]), .Y(n137) );
  INVX6M U30 ( .A(EN), .Y(n196) );
  INVX2M U31 ( .A(n152), .Y(n151) );
  CLKINVX2M U32 ( .A(B[2]), .Y(n182) );
  OR2X2M U33 ( .A(n124), .B(n197), .Y(n5) );
  AOI2B1X1M U34 ( .A1N(n177), .A0(n176), .B0(n175), .Y(n178) );
  INVX2M U35 ( .A(n178), .Y(N157) );
  NAND2X2M U36 ( .A(n116), .B(n122), .Y(n6) );
  INVX6M U37 ( .A(n135), .Y(n136) );
  INVX2M U38 ( .A(n46), .Y(n185) );
  INVX2M U39 ( .A(A[4]), .Y(n132) );
  AOI222X4M U56 ( .A0(N108), .A1(n142), .B0(n47), .B1(n144), .C0(N124), .C1(
        n40), .Y(n111) );
  XNOR2X4M U57 ( .A(n138), .B(n46), .Y(n172) );
  OAI31X2M U58 ( .A0(n165), .A1(n156), .A2(n155), .B0(n166), .Y(n158) );
  AOI211X2M U59 ( .A0(n125), .A1(n181), .B0(n162), .C0(n154), .Y(n155) );
  AOI211X2M U60 ( .A0(n163), .A1(n194), .B0(n162), .C0(n161), .Y(n164) );
  NAND2BX2M U61 ( .AN(n156), .B(n167), .Y(n162) );
  OAI21X2M U62 ( .A0(n175), .A1(n160), .B0(n176), .Y(N158) );
  BUFX4M U63 ( .A(n66), .Y(n40) );
  NOR3BX2M U64 ( .AN(n122), .B(n200), .C(ALU_FUN[2]), .Y(n66) );
  AND3X6M U65 ( .A(n110), .B(n111), .C(n112), .Y(n41) );
  INVX2M U66 ( .A(A[5]), .Y(n135) );
  AOI31X2M U67 ( .A0(n92), .A1(n93), .A2(n94), .B0(n196), .Y(ALU_OUT_cmp[2])
         );
  NOR3X2M U68 ( .A(n42), .B(n43), .C(n44), .Y(n93) );
  INVX4M U69 ( .A(n129), .Y(n130) );
  NOR2X2M U70 ( .A(n182), .B(n128), .Y(n156) );
  NOR2X2M U71 ( .A(n180), .B(n47), .Y(n153) );
  NOR2X2M U72 ( .A(n184), .B(n131), .Y(n165) );
  CLKBUFX4M U73 ( .A(B[6]), .Y(n46) );
  NOR2X2M U74 ( .A(n45), .B(ALU_FUN[0]), .Y(n117) );
  CLKINVX4M U75 ( .A(n129), .Y(n131) );
  BUFX6M U76 ( .A(A[0]), .Y(n47) );
  INVXLM U77 ( .A(B[4]), .Y(n189) );
  INVXLM U78 ( .A(B[5]), .Y(n188) );
  OAI21X1M U79 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  OAI21X1M U80 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  CLKINVX1M U81 ( .A(B[0]), .Y(n180) );
  NOR2X2M U82 ( .A(n179), .B(B[7]), .Y(n175) );
  AND2X2M U83 ( .A(N110), .B(n142), .Y(n42) );
  AND2X2M U84 ( .A(n128), .B(n143), .Y(n43) );
  AND2X1M U85 ( .A(N126), .B(n40), .Y(n44) );
  INVX4M U86 ( .A(n5), .Y(n146) );
  INVX4M U87 ( .A(n5), .Y(n145) );
  INVX4M U88 ( .A(n6), .Y(n143) );
  INVX4M U89 ( .A(n6), .Y(n144) );
  OAI2BB1X2M U90 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[15]) );
  OAI2BB1X2M U91 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[14]) );
  OAI2BB1X2M U92 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[13]) );
  OAI2BB1X2M U93 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[12]) );
  OAI2BB1X2M U95 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[10]) );
  OAI2BB1X2M U96 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[11]) );
  CLKBUFX6M U97 ( .A(n64), .Y(n149) );
  OAI2BB1X2M U98 ( .A0N(n199), .A1N(n122), .B0(n118), .Y(n64) );
  CLKAND2X6M U99 ( .A(n123), .B(n122), .Y(n67) );
  INVX4M U100 ( .A(n108), .Y(n198) );
  INVX2M U101 ( .A(n117), .Y(n197) );
  OAI2BB1X2M U102 ( .A0N(N117), .A1N(n48), .B0(n49), .Y(ALU_OUT_cmp[9]) );
  CLKBUFX6M U103 ( .A(n54), .Y(n141) );
  NOR2BX2M U104 ( .AN(n123), .B(n197), .Y(n54) );
  INVX2M U105 ( .A(n124), .Y(n199) );
  BUFX4M U106 ( .A(n63), .Y(n147) );
  BUFX4M U107 ( .A(n63), .Y(n148) );
  NOR2BX8M U108 ( .AN(n142), .B(n196), .Y(n48) );
  AOI31X2M U109 ( .A0(n68), .A1(n69), .A2(n70), .B0(n196), .Y(ALU_OUT_cmp[6])
         );
  AOI22X1M U110 ( .A0(N105), .A1(n67), .B0(N96), .B1(n141), .Y(n68) );
  AOI221X2M U111 ( .A0(n198), .A1(n4), .B0(n146), .B1(n137), .C0(n71), .Y(n70)
         );
  AOI222X2M U112 ( .A0(N114), .A1(n142), .B0(n143), .B1(n138), .C0(N130), .C1(
        n40), .Y(n69) );
  INVX4M U113 ( .A(ALU_FUN[0]), .Y(n201) );
  INVX4M U114 ( .A(ALU_FUN[1]), .Y(n200) );
  AND4X1M U115 ( .A(N158), .B(n116), .C(n45), .D(n201), .Y(n107) );
  NOR2X4M U116 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND3X2M U117 ( .A(n123), .B(ALU_FUN[0]), .C(n45), .Y(n118) );
  AND2X2M U118 ( .A(ALU_FUN[2]), .B(n200), .Y(n116) );
  NAND3X4M U119 ( .A(n199), .B(n201), .C(n45), .Y(n53) );
  NAND2X4M U120 ( .A(EN), .B(n186), .Y(n49) );
  NAND2X2M U121 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  NAND3X2M U122 ( .A(n45), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  CLKBUFX6M U123 ( .A(n52), .Y(n142) );
  NOR3X2M U124 ( .A(n197), .B(ALU_FUN[2]), .C(n200), .Y(n52) );
  AND3X2M U125 ( .A(n123), .B(n201), .C(n45), .Y(n63) );
  INVX2M U126 ( .A(n4), .Y(n179) );
  INVX4M U127 ( .A(n125), .Y(n194) );
  INVX2M U128 ( .A(n128), .Y(n193) );
  INVX2M U129 ( .A(n131), .Y(n192) );
  INVX2M U130 ( .A(n134), .Y(n191) );
  INVX2M U131 ( .A(A[5]), .Y(n190) );
  INVX6M U132 ( .A(n152), .Y(n150) );
  AOI22X1M U133 ( .A0(N99), .A1(n67), .B0(N90), .B1(n141), .Y(n110) );
  AOI211X2M U134 ( .A0(n146), .A1(n195), .B0(n113), .C0(n114), .Y(n112) );
  AOI31X2M U135 ( .A0(n98), .A1(n99), .A2(n100), .B0(n196), .Y(ALU_OUT_cmp[1])
         );
  AOI222X2M U136 ( .A0(N91), .A1(n141), .B0(N109), .B1(n142), .C0(N100), .C1(
        n67), .Y(n98) );
  AOI211X2M U137 ( .A0(n128), .A1(n198), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X2M U138 ( .A0(N125), .A1(n40), .B0(n145), .B1(n194), .C0(n125), .C1(
        n143), .Y(n99) );
  AOI22X1M U139 ( .A0(N101), .A1(n67), .B0(N92), .B1(n141), .Y(n92) );
  AOI221X2M U140 ( .A0(n131), .A1(n198), .B0(n146), .B1(n193), .C0(n95), .Y(
        n94) );
  INVX4M U141 ( .A(n58), .Y(n59) );
  INVX4M U142 ( .A(n132), .Y(n133) );
  INVX4M U143 ( .A(n126), .Y(n127) );
  AOI31X2M U144 ( .A0(n86), .A1(n87), .A2(n88), .B0(n196), .Y(ALU_OUT_cmp[3])
         );
  AOI22X1M U145 ( .A0(N102), .A1(n67), .B0(N93), .B1(n141), .Y(n86) );
  AOI221X2M U146 ( .A0(n134), .A1(n198), .B0(n146), .B1(n192), .C0(n89), .Y(
        n88) );
  AOI222X2M U147 ( .A0(N111), .A1(n142), .B0(n131), .B1(n144), .C0(N127), .C1(
        n40), .Y(n87) );
  AOI31X2M U148 ( .A0(n80), .A1(n81), .A2(n82), .B0(n196), .Y(ALU_OUT_cmp[4])
         );
  AOI22X1M U149 ( .A0(N103), .A1(n67), .B0(N94), .B1(n141), .Y(n80) );
  AOI221X2M U150 ( .A0(n198), .A1(A[5]), .B0(n146), .B1(n191), .C0(n83), .Y(
        n82) );
  AOI222X2M U151 ( .A0(N112), .A1(n142), .B0(n134), .B1(n143), .C0(N128), .C1(
        n40), .Y(n81) );
  AOI31X2M U152 ( .A0(n74), .A1(n75), .A2(n76), .B0(n196), .Y(ALU_OUT_cmp[5])
         );
  AOI22X1M U153 ( .A0(N104), .A1(n67), .B0(N95), .B1(n141), .Y(n74) );
  AOI221X2M U154 ( .A0(n198), .A1(n138), .B0(n146), .B1(n190), .C0(n77), .Y(
        n76) );
  AOI222X2M U155 ( .A0(N113), .A1(n142), .B0(A[5]), .B1(n144), .C0(N129), .C1(
        n40), .Y(n75) );
  AOI31X2M U156 ( .A0(n55), .A1(n56), .A2(n57), .B0(n196), .Y(ALU_OUT_cmp[7])
         );
  AOI22X1M U157 ( .A0(N106), .A1(n67), .B0(N97), .B1(n141), .Y(n55) );
  AOI221X2M U158 ( .A0(n146), .A1(n139), .B0(n144), .B1(n4), .C0(n60), .Y(n57)
         );
  AOI22X1M U159 ( .A0(N131), .A1(n40), .B0(N115), .B1(n142), .Y(n56) );
  INVX4M U160 ( .A(n126), .Y(n128) );
  OAI222X1M U161 ( .A0(n72), .A1(n185), .B0(n46), .B1(n73), .C0(n53), .C1(n190), .Y(n71) );
  AOI221X2M U162 ( .A0(n138), .A1(n147), .B0(n149), .B1(n137), .C0(n145), .Y(
        n73) );
  AOI221X2M U163 ( .A0(n148), .A1(n137), .B0(n138), .B1(n65), .C0(n144), .Y(
        n72) );
  CLKBUFX6M U164 ( .A(ALU_FUN[3]), .Y(n45) );
  INVX4M U165 ( .A(n58), .Y(n125) );
  INVX2M U166 ( .A(n109), .Y(n186) );
  AOI211X2M U167 ( .A0(N107), .A1(n67), .B0(n146), .C0(n149), .Y(n109) );
  AOI21X2M U168 ( .A0(n50), .A1(n51), .B0(n196), .Y(ALU_OUT_cmp[8]) );
  AOI2BB2X2M U169 ( .B0(N116), .B1(n142), .A0N(n139), .A1N(n53), .Y(n51) );
  AOI21X2M U170 ( .A0(N98), .A1(n141), .B0(n186), .Y(n50) );
  INVX4M U171 ( .A(n132), .Y(n134) );
  INVX4M U172 ( .A(n137), .Y(n138) );
  INVX2M U173 ( .A(n47), .Y(n195) );
  INVX2M U174 ( .A(rst), .Y(n152) );
  INVX2M U175 ( .A(A[1]), .Y(n58) );
  INVX2M U176 ( .A(A[2]), .Y(n126) );
  INVX2M U177 ( .A(A[3]), .Y(n129) );
  INVXLM U178 ( .A(n164), .Y(n183) );
  INVXLM U179 ( .A(n153), .Y(n181) );
  AOI221X2M U180 ( .A0(n47), .A1(n147), .B0(n149), .B1(n195), .C0(n145), .Y(
        n119) );
  AOI31X2M U181 ( .A0(N156), .A1(n45), .A2(n121), .B0(n107), .Y(n120) );
  NOR3X2M U182 ( .A(n200), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  AOI221X2M U183 ( .A0(n125), .A1(n147), .B0(n149), .B1(n194), .C0(n145), .Y(
        n104) );
  AOI31X2M U184 ( .A0(N157), .A1(n45), .A2(n106), .B0(n107), .Y(n105) );
  NOR3X2M U185 ( .A(n201), .B(ALU_FUN[2]), .C(n200), .Y(n106) );
  OAI222X1M U186 ( .A0(n61), .A1(n187), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n137), .Y(n60) );
  INVX2M U187 ( .A(B[7]), .Y(n187) );
  AOI221X2M U188 ( .A0(n148), .A1(n4), .B0(n149), .B1(n179), .C0(n146), .Y(n62) );
  AOI221X2M U189 ( .A0(n148), .A1(n179), .B0(n4), .B1(n65), .C0(n143), .Y(n61)
         );
  OAI222X1M U190 ( .A0(n84), .A1(n189), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n192), .Y(n83) );
  AOI221X2M U191 ( .A0(n134), .A1(n147), .B0(n149), .B1(n191), .C0(n145), .Y(
        n85) );
  AOI221X2M U192 ( .A0(n148), .A1(n191), .B0(n134), .B1(n65), .C0(n144), .Y(
        n84) );
  OAI222X1M U193 ( .A0(n78), .A1(n188), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n191), .Y(n77) );
  AOI221X2M U194 ( .A0(A[5]), .A1(n147), .B0(n149), .B1(n190), .C0(n145), .Y(
        n79) );
  AOI221X2M U195 ( .A0(n148), .A1(n190), .B0(A[5]), .B1(n65), .C0(n143), .Y(
        n78) );
  OAI222X1M U196 ( .A0(n96), .A1(n182), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n194), .Y(n95) );
  AOI221X2M U197 ( .A0(n128), .A1(n147), .B0(n149), .B1(n193), .C0(n145), .Y(
        n97) );
  AOI221X2M U198 ( .A0(n148), .A1(n193), .B0(n128), .B1(n65), .C0(n144), .Y(
        n96) );
  OAI222X1M U199 ( .A0(n90), .A1(n184), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n193), .Y(n89) );
  AOI221X2M U200 ( .A0(n131), .A1(n147), .B0(n149), .B1(n192), .C0(n145), .Y(
        n91) );
  AOI221X2M U201 ( .A0(n148), .A1(n192), .B0(n131), .B1(n65), .C0(n143), .Y(
        n90) );
  OAI2B2X1M U202 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n195), .Y(n102) );
  AOI221X2M U203 ( .A0(n148), .A1(n194), .B0(n125), .B1(n65), .C0(n143), .Y(
        n103) );
  OAI2B2X1M U204 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n194), .Y(n114) );
  AOI221X2M U205 ( .A0(n147), .A1(n195), .B0(n47), .B1(n65), .C0(n144), .Y(
        n115) );
  NAND2BX1M U206 ( .AN(B[4]), .B(n134), .Y(n168) );
  NAND2BX1M U207 ( .AN(n134), .B(B[4]), .Y(n157) );
  CLKNAND2X2M U208 ( .A(n168), .B(n157), .Y(n170) );
  CLKNAND2X2M U209 ( .A(n128), .B(n182), .Y(n167) );
  AOI21X1M U210 ( .A0(n153), .A1(n194), .B0(B[1]), .Y(n154) );
  CLKNAND2X2M U211 ( .A(n131), .B(n184), .Y(n166) );
  NAND2BX1M U212 ( .AN(n136), .B(B[5]), .Y(n173) );
  OAI211X1M U213 ( .A0(n170), .A1(n158), .B0(n157), .C0(n173), .Y(n159) );
  NAND2BX1M U214 ( .AN(B[5]), .B(n136), .Y(n169) );
  AOI32X1M U215 ( .A0(n159), .A1(n169), .A2(n172), .B0(n46), .B1(n137), .Y(
        n160) );
  CLKNAND2X2M U216 ( .A(B[7]), .B(n179), .Y(n176) );
  CLKNAND2X2M U217 ( .A(n47), .B(n180), .Y(n163) );
  OA21X1M U218 ( .A0(n163), .A1(n194), .B0(B[1]), .Y(n161) );
  AOI31X1M U219 ( .A0(n183), .A1(n167), .A2(n166), .B0(n165), .Y(n171) );
  OAI2B11X1M U220 ( .A1N(n171), .A0(n170), .B0(n169), .C0(n168), .Y(n174) );
  AOI32X1M U221 ( .A0(n174), .A1(n173), .A2(n172), .B0(n138), .B1(n185), .Y(
        n177) );
  NOR2X1M U222 ( .A(N158), .B(N157), .Y(N156) );
  ALU_DW_div_uns_0 div_37 ( .a({n3, A[6], n136, n133, n130, n127, n59, n47}), 
        .b(B), .quotient({N131, N130, N129, N128, N127, N126, N125, N124}) );
  ALU_DW01_sub_0 sub_35 ( .A({1'b0, n4, n138, n136, n133, n130, n127, n59, n47}), .B({1'b0, B[7], n46, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_34 ( .A({1'b0, n4, n138, n136, n133, n130, n127, n59, n47}), .B({1'b0, B[7], n46, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  ALU_DW02_mult_0 mult_36 ( .A({n4, n138, n136, n133, n130, n127, n59, n47}), 
        .B({B[7], n46, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, scan_clk, scan_rst, 
        test_mode, SE, SI, SO, UART_TX_O, framing_error, str_glitch, 
        parity_error );
  input [3:0] SI;
  output [3:0] SO;
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE;
  output UART_TX_O, framing_error, str_glitch, parity_error;
  wire   REF_SCAN_CLK, UART_SCAN_CLK, UART_RX_CLK, UART_RX_SCAN_CLK,
         UART_TX_CLK, UART_TX_SCAN_CLK, RSTN_SCAN_RST, SYNC_REF_RST,
         SYNC_REF_SCAN_RST, SYNC_UART_RST, SYNC_UART_SCAN_RST, UART_RX_V_OUT,
         UART_RX_V_SYNC, WrInc_Pulse, UART_TX_Busy_PULSE, FIFO_FULL,
         UART_TX_V_SYNC, UART_TX_Busy, WrInc_SYS, RF_RdData_VLD, RF_WrEn,
         RF_RdEn, ALU_EN, ALU_OUT_VLD, ALU_CLK, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n12, n13, n14, n15, n16, n17, n18, n23, n24, n25, n28;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U3 ( .A(n7), .Y(n6) );
  INVX2M U4 ( .A(n7), .Y(n2) );
  INVX6M U5 ( .A(n9), .Y(n8) );
  INVX2M U6 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U7 ( .A(RF_Address[0]), .Y(n4) );
  BUFX2M U8 ( .A(RF_Address[1]), .Y(n5) );
  BUFX4M U9 ( .A(UART_RX_IN), .Y(n3) );
  INVX2M U10 ( .A(SYNC_REF_SCAN_RST), .Y(n9) );
  INVX2M U11 ( .A(SYNC_UART_SCAN_RST), .Y(n7) );
  CLKBUFX40M U18 ( .A(UART_TX_O), .Y(SO[0]) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        REF_SCAN_CLK) );
  mux2X1_4 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_SCAN_CLK) );
  mux2X1_3 U2_mux2X1 ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_RX_SCAN_CLK) );
  mux2X1_2 U3_mux2X1 ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_TX_SCAN_CLK) );
  mux2X1_0 U4_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RSTN_SCAN_RST) );
  mux2X1_6 U5_mux2X1 ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_REF_SCAN_RST) );
  mux2X1_5 U6_mux2X1 ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_UART_SCAN_RST) );
  RST_SYNC_stages1_test_0 U0_RST_SYNC ( .rst(RSTN_SCAN_RST), .clk(
        UART_SCAN_CLK), .SYNC_RST(SYNC_UART_RST), .test_si(n24), .test_so(n23), 
        .test_se(SE) );
  RST_SYNC_stages1_test_1 U1_RST_SYNC ( .rst(RSTN_SCAN_RST), .clk(REF_SCAN_CLK), .SYNC_RST(SYNC_REF_RST), .test_si(n14), .test_so(n13), .test_se(SE) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 U0_ref_sync ( .unsync_bus(
        UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .clk(REF_SCAN_CLK), .rst(n8), 
        .enable_pulse(UART_RX_V_SYNC), .sync_bus(UART_RX_SYNC), .test_si(n16), 
        .test_so(n15), .test_se(SE) );
  fifo_top_data_width8_FIFO_DEPTH8_pointer_width4_test_1 U0_FIFO ( .W_CLK(
        REF_SCAN_CLK), .W_RST(n8), .W_INC(WrInc_Pulse), .R_CLK(
        UART_TX_SCAN_CLK), .R_RST(n6), .R_INC(UART_TX_Busy_PULSE), .WR_DATA(
        UART_TX_IN), .FULL(FIFO_FULL), .RD_DATA(UART_TX_SYNC), .EMPTY(
        UART_TX_V_SYNC), .test_si2(SI[2]), .test_si1(n28), .test_so2(n25), 
        .test_so1(SO[3]), .test_se(SE) );
  PULSE_GEN_test_1 U1_WrInc_PULSE_GEN ( .clk(UART_TX_SCAN_CLK), .rst(n6), 
        .lvl_sig(UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n13), 
        .test_so(n12), .test_se(SE) );
  PULSE_GEN_test_0 U0_PULSE_GEN ( .clk(REF_SCAN_CLK), .rst(n8), .lvl_sig(
        WrInc_SYS), .pulse_sig(WrInc_Pulse), .test_si(n25), .test_so(n24), 
        .test_se(SE) );
  ClkDiv_RATIO_WD8_test_0 U0_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(
        SYNC_UART_SCAN_RST), .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), 
        .o_div_clk(UART_TX_CLK), .test_si(ALU_OUT_VLD), .test_so(n28), 
        .test_se(SE) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_RATIO_WD8_test_1 U1_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(UART_RX_CLK), .test_si(n15), .test_so(
        n14), .test_se(SE) );
  UART_test_1 U0_UART ( .clk_rx(UART_RX_SCAN_CLK), .clk_tx(UART_TX_SCAN_CLK), 
        .rst(n6), .RX_IN(n3), .prescale(UART_Config[7:2]), .PAR_EN(
        UART_Config[0]), .PAR_TYP(UART_Config[1]), .P_DATA(UART_RX_OUT), 
        .data_Valid(UART_RX_V_OUT), .Parity_Error(parity_error), .Stop_Error(
        framing_error), .str_glitch(str_glitch), .F_EMPTY(n1), .RD_DATA(
        UART_TX_SYNC), .TX_OUT(UART_TX_O), .BUSY(UART_TX_Busy), .test_si2(n12), 
        .test_si1(n17), .test_so1(n16), .test_se(SE) );
  sys_ctrl_test_1 U0_SYS_CTRL ( .clk(REF_SCAN_CLK), .rst(n8), .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VLD), .FIFO_FULL(FIFO_FULL), .pulse_en(UART_RX_V_SYNC), 
        .cmd(UART_RX_SYNC), .RdData(RF_RdData), .RdData_Valid(RF_RdData_VLD), 
        .WrEn(RF_WrEn), .RdEn(RF_RdEn), .Wr_D(RF_WrData), .ALU_FUN(ALU_FUN), 
        .ALU_EN(ALU_EN), .Address(RF_Address), .WR_INC(WrInc_SYS), .WrData(
        UART_TX_IN), .test_si(n18), .test_so(n17), .test_se(SE) );
  REG_FILE_test_1 U0_RegFile ( .WrEn(RF_WrEn), .RdEn(RF_RdEn), .clk(
        REF_SCAN_CLK), .rst(n8), .Address({RF_Address[3:2], n5, n4}), .WrData(
        RF_WrData), .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), .REG0(
        Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(DIV_RATIO), 
        .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n23), .test_so3(n18), 
        .test_so2(SO[1]), .test_so1(SO[2]), .test_se(SE) );
  ALU_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), .clk(
        ALU_CLK), .ALU_OUT(ALU_OUT), .EN(ALU_EN), .rst(n8), .OUT_VALID(
        ALU_OUT_VLD), .test_si(SI[3]), .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(1'b1), .CLK(REF_SCAN_CLK), .GATED_CLK(ALU_CLK) );
endmodule

