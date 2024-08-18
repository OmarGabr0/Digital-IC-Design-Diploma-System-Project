/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 19 01:44:30 2024
/////////////////////////////////////////////////////////////


module RST_SYNC_stages2_0 ( rst, clk, SYNC_RST );
  input rst, clk;
  output SYNC_RST;

  wire   [1:0] rst_reg;

  DFFRQX2M SYNC_RST_reg ( .D(rst_reg[1]), .CK(clk), .RN(rst), .Q(SYNC_RST) );
  DFFRQX2M \rst_reg_reg[1]  ( .D(rst_reg[0]), .CK(clk), .RN(rst), .Q(
        rst_reg[1]) );
  DFFRQX2M \rst_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(rst_reg[0]) );
endmodule


module RST_SYNC_stages2_1 ( rst, clk, SYNC_RST );
  input rst, clk;
  output SYNC_RST;

  wire   [1:0] rst_reg;

  DFFRQX2M SYNC_RST_reg ( .D(rst_reg[1]), .CK(clk), .RN(rst), .Q(SYNC_RST) );
  DFFRQX2M \rst_reg_reg[1]  ( .D(rst_reg[0]), .CK(clk), .RN(rst), .Q(
        rst_reg[1]) );
  DFFRQX2M \rst_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(rst_reg[0]) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 ( unsync_bus, bus_enable, clk, rst, 
        enable_pulse, sync_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [1:0] sync_ff;

  DFFRQX2M \sync_ff_reg[1]  ( .D(sync_ff[0]), .CK(clk), .RN(n11), .Q(
        sync_ff[1]) );
  DFFRQX2M \sync_ff_reg[0]  ( .D(bus_enable), .CK(clk), .RN(n11), .Q(
        sync_ff[0]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(n11), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(n11), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(n11), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(n11), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(n11), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(n11), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(n11), .Q(sync_bus[0]) );
  DFFRQX4M enable_pulse_reg ( .D(n13), .CK(clk), .RN(n11), .Q(enable_pulse) );
  DFFRQX4M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(n11), .Q(sync_bus[6]) );
  INVX4M U3 ( .A(n1), .Y(n13) );
  BUFX4M U4 ( .A(n1), .Y(n10) );
  INVX6M U5 ( .A(n12), .Y(n11) );
  INVX2M U6 ( .A(rst), .Y(n12) );
  NAND2BX2M U7 ( .AN(sync_ff[1]), .B(sync_ff[0]), .Y(n1) );
  AO22X1M U8 ( .A0(unsync_bus[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(n8) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(n6) );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(
        n4) );
  AO22X1M U11 ( .A0(unsync_bus[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n5) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(
        n2) );
  AO22X1M U13 ( .A0(unsync_bus[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n9) );
  AO22X1M U14 ( .A0(unsync_bus[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(
        n3) );
  AO22X1M U15 ( .A0(unsync_bus[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n7) );
endmodule


module fifo_wr_pointer_width4 ( winc, wclk, wrst_n, gray_rd_ptr, w_addr, 
        gray_wr_ptr, wfull );
  input [3:0] gray_rd_ptr;
  output [2:0] w_addr;
  output [3:0] gray_wr_ptr;
  input winc, wclk, wrst_n;
  output wfull;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n5, n15, n16
;
  wire   [3:0] gray_wr_ptr_cmp;

  DFFRQX2M \wr_ptr_reg[3]  ( .D(n11), .CK(wclk), .RN(n5), .Q(
        gray_wr_ptr_cmp[3]) );
  DFFRQX2M \gray_wr_ptr_reg[0]  ( .D(gray_wr_ptr_cmp[0]), .CK(wclk), .RN(n5), 
        .Q(gray_wr_ptr[0]) );
  DFFRQX2M \gray_wr_ptr_reg[1]  ( .D(gray_wr_ptr_cmp[1]), .CK(wclk), .RN(n5), 
        .Q(gray_wr_ptr[1]) );
  DFFRQX2M \gray_wr_ptr_reg[3]  ( .D(gray_wr_ptr_cmp[3]), .CK(wclk), .RN(n5), 
        .Q(gray_wr_ptr[3]) );
  DFFRQX2M \gray_wr_ptr_reg[2]  ( .D(gray_wr_ptr_cmp[2]), .CK(wclk), .RN(n5), 
        .Q(gray_wr_ptr[2]) );
  DFFRX4M \wr_ptr_reg[0]  ( .D(n14), .CK(wclk), .RN(wrst_n), .Q(w_addr[0]), 
        .QN(n16) );
  DFFRQX4M \wr_ptr_reg[2]  ( .D(n12), .CK(wclk), .RN(n5), .Q(w_addr[2]) );
  DFFRQX4M \wr_ptr_reg[1]  ( .D(n13), .CK(wclk), .RN(n5), .Q(w_addr[1]) );
  INVX4M U3 ( .A(n15), .Y(n5) );
  INVX2M U4 ( .A(wrst_n), .Y(n15) );
  INVX2M U5 ( .A(n1), .Y(wfull) );
  NOR2X2M U6 ( .A(n16), .B(n6), .Y(n4) );
  NAND2X2M U7 ( .A(winc), .B(n1), .Y(n6) );
  CLKXOR2X2M U8 ( .A(gray_wr_ptr[3]), .B(gray_rd_ptr[3]), .Y(n10) );
  NAND4X2M U9 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n1) );
  XNOR2X2M U10 ( .A(gray_wr_ptr[0]), .B(gray_rd_ptr[0]), .Y(n7) );
  XNOR2X2M U11 ( .A(gray_wr_ptr[1]), .B(gray_rd_ptr[1]), .Y(n8) );
  CLKXOR2X2M U12 ( .A(gray_wr_ptr[2]), .B(gray_rd_ptr[2]), .Y(n9) );
  CLKXOR2X2M U13 ( .A(w_addr[1]), .B(n4), .Y(n13) );
  NAND2X2M U14 ( .A(w_addr[1]), .B(n4), .Y(n3) );
  XNOR2X2M U15 ( .A(w_addr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U16 ( .A(gray_wr_ptr_cmp[3]), .B(n2), .Y(n11) );
  NAND2BX2M U17 ( .AN(n3), .B(w_addr[2]), .Y(n2) );
  CLKXOR2X2M U18 ( .A(w_addr[2]), .B(w_addr[1]), .Y(gray_wr_ptr_cmp[1]) );
  CLKXOR2X2M U19 ( .A(w_addr[2]), .B(gray_wr_ptr_cmp[3]), .Y(
        gray_wr_ptr_cmp[2]) );
  XNOR2X2M U20 ( .A(w_addr[1]), .B(n16), .Y(gray_wr_ptr_cmp[0]) );
  XNOR2X2M U21 ( .A(w_addr[0]), .B(n6), .Y(n14) );
endmodule


module fifo_rd_pointer_width4 ( rinc, rclk, rrst_n, gray_wr_ptr, raddr, 
        gray_rd_ptr, empty );
  input [3:0] gray_wr_ptr;
  output [2:0] raddr;
  output [3:0] gray_rd_ptr;
  input rinc, rclk, rrst_n;
  output empty;
  wire   n19, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n16,
         n17, n18;
  wire   [3:0] gray_rd_ptr_cmp;

  DFFRHQX8M \rd_ptr_reg[2]  ( .D(n12), .CK(rclk), .RN(n16), .Q(raddr[2]) );
  DFFRX1M \rd_ptr_reg[0]  ( .D(n14), .CK(rclk), .RN(rrst_n), .Q(raddr[0]), 
        .QN(n18) );
  DFFRQX1M \gray_rd_ptr_reg[3]  ( .D(gray_rd_ptr_cmp[3]), .CK(rclk), .RN(n16), 
        .Q(gray_rd_ptr[3]) );
  DFFRQX1M \gray_rd_ptr_reg[1]  ( .D(gray_rd_ptr_cmp[1]), .CK(rclk), .RN(n16), 
        .Q(gray_rd_ptr[1]) );
  DFFRQX1M \gray_rd_ptr_reg[2]  ( .D(gray_rd_ptr_cmp[2]), .CK(rclk), .RN(n16), 
        .Q(gray_rd_ptr[2]) );
  DFFRQX1M \gray_rd_ptr_reg[0]  ( .D(gray_rd_ptr_cmp[0]), .CK(rclk), .RN(n16), 
        .Q(gray_rd_ptr[0]) );
  DFFRQX1M \rd_ptr_reg[1]  ( .D(n13), .CK(rclk), .RN(n16), .Q(n19) );
  DFFRX4M \rd_ptr_reg[3]  ( .D(n11), .CK(rclk), .RN(n16), .Q(
        gray_rd_ptr_cmp[3]) );
  INVXLM U3 ( .A(n19), .Y(n1) );
  INVX4M U4 ( .A(n1), .Y(raddr[1]) );
  INVX4M U5 ( .A(n17), .Y(n16) );
  INVX2M U6 ( .A(rrst_n), .Y(n17) );
  NOR2X2M U7 ( .A(n18), .B(n5), .Y(n4) );
  INVX2M U8 ( .A(n6), .Y(empty) );
  NAND4X2M U9 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U10 ( .A(gray_wr_ptr[3]), .B(gray_rd_ptr[3]), .Y(n9) );
  XNOR2X2M U11 ( .A(gray_wr_ptr[2]), .B(gray_rd_ptr[2]), .Y(n10) );
  XNOR2X2M U12 ( .A(gray_wr_ptr[0]), .B(gray_rd_ptr[0]), .Y(n8) );
  NAND2X2M U13 ( .A(raddr[1]), .B(n4), .Y(n3) );
  NAND2X2M U14 ( .A(rinc), .B(n6), .Y(n5) );
  XNOR2X2M U15 ( .A(gray_wr_ptr[1]), .B(gray_rd_ptr[1]), .Y(n7) );
  CLKXOR2X2M U16 ( .A(raddr[2]), .B(raddr[1]), .Y(gray_rd_ptr_cmp[1]) );
  CLKXOR2X2M U17 ( .A(raddr[2]), .B(gray_rd_ptr_cmp[3]), .Y(gray_rd_ptr_cmp[2]) );
  CLKXOR2X2M U18 ( .A(raddr[1]), .B(n4), .Y(n13) );
  XNOR2X2M U19 ( .A(raddr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U20 ( .A(gray_rd_ptr_cmp[3]), .B(n2), .Y(n11) );
  NAND2BX2M U21 ( .AN(n3), .B(raddr[2]), .Y(n2) );
  XNOR2X2M U22 ( .A(raddr[0]), .B(n5), .Y(n14) );
  XNOR2X2M U23 ( .A(raddr[1]), .B(n18), .Y(gray_rd_ptr_cmp[0]) );
endmodule


module fifo_mem_DATA8_DEPTH8_pointer_width4 ( wclk, wrst_n, wclken, waddr, 
        raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, wclken;
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
         \regArr[0][0] , n12, n17, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n18,
         n19, n20, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \regArr_reg[5][7]  ( .D(n68), .CK(wclk), .RN(n114), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n67), .CK(wclk), .RN(n114), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n66), .CK(wclk), .RN(n114), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n65), .CK(wclk), .RN(n114), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n64), .CK(wclk), .RN(n114), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n63), .CK(wclk), .RN(n114), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n62), .CK(wclk), .RN(n114), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n61), .CK(wclk), .RN(n114), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n36), .CK(wclk), .RN(n117), .Q(
        \regArr[1][7] ) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n35), .CK(wclk), .RN(n117), .Q(
        \regArr[1][6] ) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n34), .CK(wclk), .RN(n117), .Q(
        \regArr[1][5] ) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n33), .CK(wclk), .RN(n117), .Q(
        \regArr[1][4] ) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n32), .CK(wclk), .RN(n117), .Q(
        \regArr[1][3] ) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n31), .CK(wclk), .RN(n117), .Q(
        \regArr[1][2] ) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n30), .CK(wclk), .RN(n117), .Q(
        \regArr[1][1] ) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n29), .CK(wclk), .RN(n117), .Q(
        \regArr[1][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n84), .CK(wclk), .RN(n113), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n83), .CK(wclk), .RN(n113), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n82), .CK(wclk), .RN(n113), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n81), .CK(wclk), .RN(n113), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n80), .CK(wclk), .RN(n113), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n79), .CK(wclk), .RN(n113), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n78), .CK(wclk), .RN(n113), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n77), .CK(wclk), .RN(n113), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n52), .CK(wclk), .RN(n115), .Q(
        \regArr[3][7] ) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n51), .CK(wclk), .RN(n115), .Q(
        \regArr[3][6] ) );
  DFFRQX2M \regArr_reg[3][5]  ( .D(n50), .CK(wclk), .RN(n115), .Q(
        \regArr[3][5] ) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n49), .CK(wclk), .RN(n115), .Q(
        \regArr[3][4] ) );
  DFFRQX2M \regArr_reg[3][3]  ( .D(n48), .CK(wclk), .RN(n116), .Q(
        \regArr[3][3] ) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n47), .CK(wclk), .RN(n116), .Q(
        \regArr[3][2] ) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n46), .CK(wclk), .RN(n116), .Q(
        \regArr[3][1] ) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n45), .CK(wclk), .RN(n116), .Q(
        \regArr[3][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n76), .CK(wclk), .RN(n113), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n75), .CK(wclk), .RN(n113), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n74), .CK(wclk), .RN(n113), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n73), .CK(wclk), .RN(n113), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n72), .CK(wclk), .RN(n114), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n71), .CK(wclk), .RN(n114), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n70), .CK(wclk), .RN(n114), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n69), .CK(wclk), .RN(n114), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[2][7]  ( .D(n44), .CK(wclk), .RN(n116), .Q(
        \regArr[2][7] ) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n43), .CK(wclk), .RN(n116), .Q(
        \regArr[2][6] ) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n42), .CK(wclk), .RN(n116), .Q(
        \regArr[2][5] ) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n41), .CK(wclk), .RN(n116), .Q(
        \regArr[2][4] ) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n40), .CK(wclk), .RN(n116), .Q(
        \regArr[2][3] ) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n39), .CK(wclk), .RN(n116), .Q(
        \regArr[2][2] ) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n38), .CK(wclk), .RN(n116), .Q(
        \regArr[2][1] ) );
  DFFRQX2M \regArr_reg[2][0]  ( .D(n37), .CK(wclk), .RN(n116), .Q(
        \regArr[2][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n60), .CK(wclk), .RN(n115), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n59), .CK(wclk), .RN(n115), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n58), .CK(wclk), .RN(n115), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n57), .CK(wclk), .RN(n115), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n56), .CK(wclk), .RN(n115), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n55), .CK(wclk), .RN(n115), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n54), .CK(wclk), .RN(n115), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n53), .CK(wclk), .RN(n115), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n28), .CK(wclk), .RN(n117), .Q(
        \regArr[0][7] ) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n27), .CK(wclk), .RN(n117), .Q(
        \regArr[0][6] ) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n26), .CK(wclk), .RN(n117), .Q(
        \regArr[0][5] ) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n25), .CK(wclk), .RN(n117), .Q(
        \regArr[0][4] ) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n24), .CK(wclk), .RN(n118), .Q(
        \regArr[0][3] ) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n23), .CK(wclk), .RN(n118), .Q(
        \regArr[0][2] ) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n22), .CK(wclk), .RN(n118), .Q(
        \regArr[0][1] ) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n21), .CK(wclk), .RN(n118), .Q(
        \regArr[0][0] ) );
  NOR2BX4M U2 ( .AN(wclken), .B(waddr[2]), .Y(n12) );
  INVX2M U3 ( .A(waddr[1]), .Y(n130) );
  INVX2M U4 ( .A(waddr[0]), .Y(n129) );
  BUFX6M U5 ( .A(n120), .Y(n117) );
  BUFX6M U6 ( .A(n119), .Y(n116) );
  BUFX6M U7 ( .A(n119), .Y(n115) );
  BUFX6M U8 ( .A(n120), .Y(n114) );
  BUFX6M U9 ( .A(n120), .Y(n113) );
  BUFX2M U10 ( .A(n119), .Y(n118) );
  BUFX2M U11 ( .A(n120), .Y(n119) );
  INVX4M U12 ( .A(n2), .Y(n104) );
  INVX4M U13 ( .A(n2), .Y(n103) );
  INVX4M U14 ( .A(n1), .Y(n112) );
  INVX4M U15 ( .A(n1), .Y(n111) );
  BUFX2M U16 ( .A(wrst_n), .Y(n120) );
  AND3X2M U17 ( .A(n129), .B(n130), .C(n12), .Y(n1) );
  INVX4M U18 ( .A(n7), .Y(n108) );
  INVX4M U19 ( .A(n7), .Y(n107) );
  INVX4M U20 ( .A(n5), .Y(n106) );
  INVX4M U21 ( .A(n5), .Y(n105) );
  INVX4M U22 ( .A(n8), .Y(n110) );
  INVX4M U23 ( .A(n8), .Y(n109) );
  INVX4M U24 ( .A(n6), .Y(n102) );
  INVX4M U25 ( .A(n6), .Y(n101) );
  INVX4M U26 ( .A(n3), .Y(n100) );
  INVX4M U27 ( .A(n3), .Y(n99) );
  INVX4M U28 ( .A(n4), .Y(n98) );
  INVX4M U29 ( .A(n4), .Y(n97) );
  AND3X2M U30 ( .A(n129), .B(n130), .C(n17), .Y(n2) );
  INVX6M U31 ( .A(n93), .Y(n92) );
  INVX6M U32 ( .A(n93), .Y(n91) );
  INVX4M U33 ( .A(n96), .Y(n95) );
  INVX4M U34 ( .A(n96), .Y(n94) );
  INVX4M U35 ( .A(wdata[0]), .Y(n128) );
  INVX4M U36 ( .A(wdata[1]), .Y(n127) );
  INVX4M U37 ( .A(wdata[2]), .Y(n126) );
  INVX4M U38 ( .A(wdata[3]), .Y(n125) );
  INVX4M U39 ( .A(wdata[4]), .Y(n124) );
  INVX4M U40 ( .A(wdata[5]), .Y(n123) );
  INVX4M U41 ( .A(wdata[6]), .Y(n122) );
  INVX4M U42 ( .A(wdata[7]), .Y(n121) );
  OAI2BB2X1M U43 ( .B0(n128), .B1(n110), .A0N(\regArr[1][0] ), .A1N(n110), .Y(
        n29) );
  OAI2BB2X1M U44 ( .B0(n127), .B1(n109), .A0N(\regArr[1][1] ), .A1N(n109), .Y(
        n30) );
  OAI2BB2X1M U45 ( .B0(n126), .B1(n110), .A0N(\regArr[1][2] ), .A1N(n110), .Y(
        n31) );
  OAI2BB2X1M U46 ( .B0(n125), .B1(n109), .A0N(\regArr[1][3] ), .A1N(n109), .Y(
        n32) );
  OAI2BB2X1M U47 ( .B0(n124), .B1(n110), .A0N(\regArr[1][4] ), .A1N(n110), .Y(
        n33) );
  OAI2BB2X1M U48 ( .B0(n123), .B1(n109), .A0N(\regArr[1][5] ), .A1N(n109), .Y(
        n34) );
  OAI2BB2X1M U49 ( .B0(n122), .B1(n110), .A0N(\regArr[1][6] ), .A1N(n110), .Y(
        n35) );
  OAI2BB2X1M U50 ( .B0(n121), .B1(n109), .A0N(\regArr[1][7] ), .A1N(n109), .Y(
        n36) );
  OAI2BB2X1M U51 ( .B0(n128), .B1(n108), .A0N(\regArr[2][0] ), .A1N(n108), .Y(
        n37) );
  OAI2BB2X1M U52 ( .B0(n127), .B1(n107), .A0N(\regArr[2][1] ), .A1N(n107), .Y(
        n38) );
  OAI2BB2X1M U53 ( .B0(n126), .B1(n108), .A0N(\regArr[2][2] ), .A1N(n108), .Y(
        n39) );
  OAI2BB2X1M U54 ( .B0(n125), .B1(n107), .A0N(\regArr[2][3] ), .A1N(n107), .Y(
        n40) );
  OAI2BB2X1M U55 ( .B0(n124), .B1(n108), .A0N(\regArr[2][4] ), .A1N(n108), .Y(
        n41) );
  OAI2BB2X1M U56 ( .B0(n123), .B1(n107), .A0N(\regArr[2][5] ), .A1N(n107), .Y(
        n42) );
  OAI2BB2X1M U57 ( .B0(n122), .B1(n108), .A0N(\regArr[2][6] ), .A1N(n108), .Y(
        n43) );
  OAI2BB2X1M U58 ( .B0(n121), .B1(n107), .A0N(\regArr[2][7] ), .A1N(n107), .Y(
        n44) );
  OAI2BB2X1M U59 ( .B0(n128), .B1(n106), .A0N(\regArr[3][0] ), .A1N(n106), .Y(
        n45) );
  OAI2BB2X1M U60 ( .B0(n127), .B1(n105), .A0N(\regArr[3][1] ), .A1N(n105), .Y(
        n46) );
  OAI2BB2X1M U61 ( .B0(n126), .B1(n106), .A0N(\regArr[3][2] ), .A1N(n106), .Y(
        n47) );
  OAI2BB2X1M U62 ( .B0(n125), .B1(n105), .A0N(\regArr[3][3] ), .A1N(n105), .Y(
        n48) );
  OAI2BB2X1M U63 ( .B0(n124), .B1(n106), .A0N(\regArr[3][4] ), .A1N(n106), .Y(
        n49) );
  OAI2BB2X1M U64 ( .B0(n123), .B1(n105), .A0N(\regArr[3][5] ), .A1N(n105), .Y(
        n50) );
  OAI2BB2X1M U65 ( .B0(n122), .B1(n106), .A0N(\regArr[3][6] ), .A1N(n106), .Y(
        n51) );
  OAI2BB2X1M U66 ( .B0(n121), .B1(n105), .A0N(\regArr[3][7] ), .A1N(n105), .Y(
        n52) );
  OAI2BB2X1M U67 ( .B0(n128), .B1(n104), .A0N(\regArr[4][0] ), .A1N(n104), .Y(
        n53) );
  OAI2BB2X1M U68 ( .B0(n127), .B1(n103), .A0N(\regArr[4][1] ), .A1N(n103), .Y(
        n54) );
  OAI2BB2X1M U69 ( .B0(n126), .B1(n104), .A0N(\regArr[4][2] ), .A1N(n104), .Y(
        n55) );
  OAI2BB2X1M U70 ( .B0(n125), .B1(n103), .A0N(\regArr[4][3] ), .A1N(n103), .Y(
        n56) );
  OAI2BB2X1M U71 ( .B0(n124), .B1(n104), .A0N(\regArr[4][4] ), .A1N(n104), .Y(
        n57) );
  OAI2BB2X1M U72 ( .B0(n123), .B1(n103), .A0N(\regArr[4][5] ), .A1N(n103), .Y(
        n58) );
  OAI2BB2X1M U73 ( .B0(n122), .B1(n104), .A0N(\regArr[4][6] ), .A1N(n104), .Y(
        n59) );
  OAI2BB2X1M U74 ( .B0(n121), .B1(n103), .A0N(\regArr[4][7] ), .A1N(n103), .Y(
        n60) );
  OAI2BB2X1M U75 ( .B0(n128), .B1(n102), .A0N(\regArr[5][0] ), .A1N(n102), .Y(
        n61) );
  OAI2BB2X1M U76 ( .B0(n127), .B1(n101), .A0N(\regArr[5][1] ), .A1N(n101), .Y(
        n62) );
  OAI2BB2X1M U77 ( .B0(n126), .B1(n102), .A0N(\regArr[5][2] ), .A1N(n102), .Y(
        n63) );
  OAI2BB2X1M U78 ( .B0(n125), .B1(n101), .A0N(\regArr[5][3] ), .A1N(n101), .Y(
        n64) );
  OAI2BB2X1M U79 ( .B0(n124), .B1(n102), .A0N(\regArr[5][4] ), .A1N(n102), .Y(
        n65) );
  OAI2BB2X1M U80 ( .B0(n123), .B1(n101), .A0N(\regArr[5][5] ), .A1N(n101), .Y(
        n66) );
  OAI2BB2X1M U81 ( .B0(n122), .B1(n102), .A0N(\regArr[5][6] ), .A1N(n102), .Y(
        n67) );
  OAI2BB2X1M U82 ( .B0(n121), .B1(n101), .A0N(\regArr[5][7] ), .A1N(n101), .Y(
        n68) );
  OAI2BB2X1M U83 ( .B0(n128), .B1(n100), .A0N(\regArr[6][0] ), .A1N(n100), .Y(
        n69) );
  OAI2BB2X1M U84 ( .B0(n127), .B1(n99), .A0N(\regArr[6][1] ), .A1N(n99), .Y(
        n70) );
  OAI2BB2X1M U85 ( .B0(n126), .B1(n100), .A0N(\regArr[6][2] ), .A1N(n100), .Y(
        n71) );
  OAI2BB2X1M U86 ( .B0(n125), .B1(n99), .A0N(\regArr[6][3] ), .A1N(n99), .Y(
        n72) );
  OAI2BB2X1M U87 ( .B0(n124), .B1(n100), .A0N(\regArr[6][4] ), .A1N(n100), .Y(
        n73) );
  OAI2BB2X1M U88 ( .B0(n123), .B1(n99), .A0N(\regArr[6][5] ), .A1N(n99), .Y(
        n74) );
  OAI2BB2X1M U89 ( .B0(n122), .B1(n100), .A0N(\regArr[6][6] ), .A1N(n100), .Y(
        n75) );
  OAI2BB2X1M U90 ( .B0(n121), .B1(n99), .A0N(\regArr[6][7] ), .A1N(n99), .Y(
        n76) );
  OAI2BB2X1M U91 ( .B0(n128), .B1(n98), .A0N(\regArr[7][0] ), .A1N(n98), .Y(
        n77) );
  OAI2BB2X1M U92 ( .B0(n127), .B1(n97), .A0N(\regArr[7][1] ), .A1N(n97), .Y(
        n78) );
  OAI2BB2X1M U93 ( .B0(n126), .B1(n98), .A0N(\regArr[7][2] ), .A1N(n98), .Y(
        n79) );
  OAI2BB2X1M U94 ( .B0(n125), .B1(n97), .A0N(\regArr[7][3] ), .A1N(n97), .Y(
        n80) );
  OAI2BB2X1M U95 ( .B0(n124), .B1(n98), .A0N(\regArr[7][4] ), .A1N(n98), .Y(
        n81) );
  OAI2BB2X1M U96 ( .B0(n123), .B1(n97), .A0N(\regArr[7][5] ), .A1N(n97), .Y(
        n82) );
  OAI2BB2X1M U97 ( .B0(n122), .B1(n98), .A0N(\regArr[7][6] ), .A1N(n98), .Y(
        n83) );
  OAI2BB2X1M U98 ( .B0(n121), .B1(n97), .A0N(\regArr[7][7] ), .A1N(n97), .Y(
        n84) );
  OAI2BB2X1M U99 ( .B0(n112), .B1(n128), .A0N(\regArr[0][0] ), .A1N(n112), .Y(
        n21) );
  OAI2BB2X1M U100 ( .B0(n111), .B1(n127), .A0N(\regArr[0][1] ), .A1N(n111), 
        .Y(n22) );
  OAI2BB2X1M U101 ( .B0(n112), .B1(n126), .A0N(\regArr[0][2] ), .A1N(n112), 
        .Y(n23) );
  OAI2BB2X1M U102 ( .B0(n111), .B1(n125), .A0N(\regArr[0][3] ), .A1N(n111), 
        .Y(n24) );
  OAI2BB2X1M U103 ( .B0(n112), .B1(n124), .A0N(\regArr[0][4] ), .A1N(n112), 
        .Y(n25) );
  OAI2BB2X1M U104 ( .B0(n111), .B1(n123), .A0N(\regArr[0][5] ), .A1N(n111), 
        .Y(n26) );
  OAI2BB2X1M U105 ( .B0(n112), .B1(n122), .A0N(\regArr[0][6] ), .A1N(n112), 
        .Y(n27) );
  OAI2BB2X1M U106 ( .B0(n111), .B1(n121), .A0N(\regArr[0][7] ), .A1N(n111), 
        .Y(n28) );
  AND2X2M U107 ( .A(waddr[2]), .B(wclken), .Y(n17) );
  AND3X2M U108 ( .A(waddr[1]), .B(n129), .C(n17), .Y(n3) );
  AND3X2M U109 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n4) );
  AND3X2M U110 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n5) );
  AND3X2M U111 ( .A(waddr[0]), .B(n130), .C(n17), .Y(n6) );
  AND3X2M U112 ( .A(n12), .B(n129), .C(waddr[1]), .Y(n7) );
  AND3X2M U113 ( .A(n12), .B(n130), .C(waddr[0]), .Y(n8) );
  MX2X2M U114 ( .A(n88), .B(n87), .S0(N12), .Y(rdata[6]) );
  MX4X1M U115 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n91), .S1(n94), .Y(n87) );
  MX4X1M U116 ( .A(\regArr[0][6] ), .B(\regArr[1][6] ), .C(\regArr[2][6] ), 
        .D(\regArr[3][6] ), .S0(n92), .S1(n95), .Y(n88) );
  MX2X2M U117 ( .A(n20), .B(n19), .S0(N12), .Y(rdata[4]) );
  MX4X1M U118 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n91), .S1(n94), .Y(n19) );
  MX4X1M U119 ( .A(\regArr[0][4] ), .B(\regArr[1][4] ), .C(\regArr[2][4] ), 
        .D(\regArr[3][4] ), .S0(n92), .S1(n95), .Y(n20) );
  MX2X2M U120 ( .A(n10), .B(n9), .S0(N12), .Y(rdata[0]) );
  MX4X1M U121 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n91), .S1(n94), .Y(n9) );
  MX4X1M U122 ( .A(\regArr[0][0] ), .B(\regArr[1][0] ), .C(\regArr[2][0] ), 
        .D(\regArr[3][0] ), .S0(n92), .S1(n95), .Y(n10) );
  MX2X2M U123 ( .A(n86), .B(n85), .S0(N12), .Y(rdata[5]) );
  MX4X1M U124 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n91), .S1(n94), .Y(n85) );
  MX4X1M U125 ( .A(\regArr[0][5] ), .B(\regArr[1][5] ), .C(\regArr[2][5] ), 
        .D(\regArr[3][5] ), .S0(n92), .S1(n95), .Y(n86) );
  MX2X2M U126 ( .A(n13), .B(n11), .S0(N12), .Y(rdata[1]) );
  MX4X1M U127 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n91), .S1(n94), .Y(n11) );
  MX4X1M U128 ( .A(\regArr[0][1] ), .B(\regArr[1][1] ), .C(\regArr[2][1] ), 
        .D(\regArr[3][1] ), .S0(n92), .S1(n95), .Y(n13) );
  MX2X2M U129 ( .A(n90), .B(n89), .S0(N12), .Y(rdata[7]) );
  MX4X1M U130 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n91), .S1(n94), .Y(n89) );
  MX4X1M U131 ( .A(\regArr[0][7] ), .B(\regArr[1][7] ), .C(\regArr[2][7] ), 
        .D(\regArr[3][7] ), .S0(n92), .S1(n95), .Y(n90) );
  MX2X2M U132 ( .A(n15), .B(n14), .S0(N12), .Y(rdata[2]) );
  MX4X1M U133 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n91), .S1(n94), .Y(n14) );
  MX4X1M U134 ( .A(\regArr[0][2] ), .B(\regArr[1][2] ), .C(\regArr[2][2] ), 
        .D(\regArr[3][2] ), .S0(n92), .S1(n95), .Y(n15) );
  MX2X2M U135 ( .A(n18), .B(n16), .S0(N12), .Y(rdata[3]) );
  MX4X1M U136 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n91), .S1(n94), .Y(n16) );
  MX4X1M U137 ( .A(\regArr[0][3] ), .B(\regArr[1][3] ), .C(\regArr[2][3] ), 
        .D(\regArr[3][3] ), .S0(n92), .S1(n95), .Y(n18) );
  INVX2M U138 ( .A(N11), .Y(n96) );
  INVX2M U139 ( .A(N10), .Y(n93) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] , n1, n2;

  DFFRQX1M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[3][0] ) );
  DFFRQX1M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[2][0] ) );
  DFFRQX1M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[1][0] ) );
  DFFRQX1M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[0][0] ) );
  DFFRQX1M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[3]) );
  DFFRQX1M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[2]) );
  DFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[1]) );
  DFFRQX1M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] , n1, n2;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[0]) );
  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(n1), .Q(
        SYNC[2]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(n1), .Q(
        \sync_reg[0][0] ) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module fifo_top_data_width8_FIFO_DEPTH8_pointer_width4 ( W_CLK, W_RST, W_INC, 
        R_CLK, R_RST, R_INC, WR_DATA, FULL, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   WCLKEN, n1, n2, n3, n4;
  wire   [3:0] SYNC_GRAY_RD_PTR;
  wire   [3:0] ASYNC_GRAY_WR_PTR;
  wire   [2:0] waddr;
  wire   [3:0] SYNC_GRAY_WR_PTR;
  wire   [2:0] RADDR;
  wire   [3:0] ASYNC_GRAY_RD_PTR;

  fifo_wr_pointer_width4 u0_FIFO_WR ( .winc(W_INC), .wclk(W_CLK), .wrst_n(n1), 
        .gray_rd_ptr(SYNC_GRAY_RD_PTR), .w_addr(waddr), .gray_wr_ptr(
        ASYNC_GRAY_WR_PTR), .wfull(FULL) );
  fifo_rd_pointer_width4 u0_FIFO_RD ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(n3), 
        .gray_wr_ptr(SYNC_GRAY_WR_PTR), .raddr(RADDR), .gray_rd_ptr(
        ASYNC_GRAY_RD_PTR), .empty(EMPTY) );
  fifo_mem_DATA8_DEPTH8_pointer_width4 u0_FIFO_MEMORY ( .wclk(W_CLK), .wrst_n(
        n1), .wclken(WCLKEN), .waddr(waddr), .raddr(RADDR), .wdata(WR_DATA), 
        .rdata(RD_DATA) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 u_w2r_sync ( .CLK(R_CLK), .RST(n3), 
        .ASYNC(ASYNC_GRAY_WR_PTR), .SYNC(SYNC_GRAY_WR_PTR) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 u_r2w_sync ( .CLK(W_CLK), .RST(n1), 
        .ASYNC(ASYNC_GRAY_RD_PTR), .SYNC(SYNC_GRAY_RD_PTR) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  NOR2BX2M U2 ( .AN(W_INC), .B(FULL), .Y(WCLKEN) );
  INVX2M U3 ( .A(W_RST), .Y(n2) );
  INVX2M U4 ( .A(n4), .Y(n3) );
  INVX2M U5 ( .A(R_RST), .Y(n4) );
endmodule


module PULSE_GEN_0 ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX1M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX1M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module PULSE_GEN_1 ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
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


module ClkDiv_RATIO_WD8_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_RATIO_WD8_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(n2), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(n2), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(n2), .Q(count[6]) );
  DFFRQX4M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(n2), .Q(count[0]) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(n2), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(n2), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(n2), .Q(count[3]) );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(n2), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(n2), .Q(count[1]) );
  NOR4X2M U3 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  NOR2X4M U4 ( .A(n5), .B(i_div_ratio[4]), .Y(n6) );
  AND3X4M U5 ( .A(n12), .B(n13), .C(N2), .Y(n11) );
  NAND4X2M U6 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n15) );
  AO22XLM U7 ( .A0(n1), .A1(count[6]), .B0(N22), .B1(n11), .Y(n19) );
  AO22XLM U8 ( .A0(n1), .A1(count[0]), .B0(N16), .B1(n11), .Y(n25) );
  AO22XLM U9 ( .A0(n1), .A1(count[1]), .B0(N17), .B1(n11), .Y(n24) );
  AO22XLM U10 ( .A0(n1), .A1(count[2]), .B0(N18), .B1(n11), .Y(n23) );
  AO22XLM U11 ( .A0(n1), .A1(count[3]), .B0(N19), .B1(n11), .Y(n22) );
  AO22XLM U12 ( .A0(n1), .A1(count[4]), .B0(N20), .B1(n11), .Y(n21) );
  AO22XLM U13 ( .A0(n1), .A1(count[5]), .B0(N21), .B1(n11), .Y(n20) );
  OR2X2M U14 ( .A(n4), .B(i_div_ratio[3]), .Y(n5) );
  INVX4M U15 ( .A(n3), .Y(n2) );
  INVX2M U16 ( .A(i_rst), .Y(n3) );
  OR2X2M U17 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n4) );
  CLKBUFX6M U18 ( .A(n10), .Y(n1) );
  OAI21X2M U19 ( .A0(n44), .A1(n45), .B0(i_clk_en), .Y(n10) );
  INVX2M U20 ( .A(i_div_ratio[5]), .Y(n9) );
  CLKINVX1M U21 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U22 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n4), .Y(
        edge_flip_half[1]) );
  OAI2BB1X1M U23 ( .A0N(n4), .A1N(i_div_ratio[3]), .B0(n5), .Y(
        edge_flip_half[2]) );
  AO21XLM U24 ( .A0(n5), .A1(i_div_ratio[4]), .B0(n6), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U25 ( .A(n6), .B(n9), .Y(n7) );
  OAI21X1M U26 ( .A0(n6), .A1(n9), .B0(n7), .Y(edge_flip_half[4]) );
  XNOR2X1M U27 ( .A(i_div_ratio[6]), .B(n7), .Y(edge_flip_half[5]) );
  NOR2X1M U28 ( .A(i_div_ratio[6]), .B(n7), .Y(n8) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[7]), .B(n8), .Y(edge_flip_half[6]) );
  MX2X6M U30 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKXOR2X2M U31 ( .A(div_clk), .B(n14), .Y(n18) );
  AOI21X1M U32 ( .A0(n13), .A1(n12), .B0(n1), .Y(n14) );
  OR2X1M U33 ( .A(n15), .B(i_div_ratio[0]), .Y(n12) );
  XNOR2X1M U34 ( .A(odd_edge_tog), .B(n16), .Y(n17) );
  OR2X1M U35 ( .A(n13), .B(n1), .Y(n16) );
  CLKNAND2X2M U36 ( .A(n26), .B(i_div_ratio[0]), .Y(n13) );
  MXI2X1M U37 ( .A(n27), .B(n15), .S0(odd_edge_tog), .Y(n26) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n35) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n34) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n33) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n32) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n30) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n29) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n28) );
  NAND4X1M U45 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n27) );
  NOR4X1M U46 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n42) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n41) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n40) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n38) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n37) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n36) );
  CLKINVX1M U54 ( .A(n1), .Y(N2) );
  OR3X1M U55 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n45) );
  OR4X1M U56 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n44) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NOR3X12M U6 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U8 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U10 ( .A(1'b1), .Y(OUT[7]) );
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


module ClkDiv_RATIO_WD8_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_RATIO_WD8_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n53), .CK(i_ref_clk), .RN(n2), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n54), .CK(i_ref_clk), .SN(n2), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[6]  ( .D(n52), .CK(i_ref_clk), .RN(n2), .Q(count[6]) );
  DFFRQX4M \count_reg[0]  ( .D(n46), .CK(i_ref_clk), .RN(n2), .Q(count[0]) );
  DFFRQX2M \count_reg[5]  ( .D(n51), .CK(i_ref_clk), .RN(n2), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n50), .CK(i_ref_clk), .RN(n2), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n49), .CK(i_ref_clk), .RN(n2), .Q(count[3]) );
  DFFRQX2M \count_reg[2]  ( .D(n48), .CK(i_ref_clk), .RN(n2), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n47), .CK(i_ref_clk), .RN(n2), .Q(count[1]) );
  NOR4X2M U3 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  NOR2X4M U4 ( .A(n5), .B(i_div_ratio[4]), .Y(n6) );
  AND3X4M U5 ( .A(n12), .B(n13), .C(N2), .Y(n11) );
  OR2X2M U6 ( .A(n4), .B(i_div_ratio[3]), .Y(n5) );
  NAND4X2M U7 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n15) );
  AO22XLM U8 ( .A0(n1), .A1(count[6]), .B0(N22), .B1(n11), .Y(n52) );
  AO22XLM U9 ( .A0(n1), .A1(count[0]), .B0(N16), .B1(n11), .Y(n46) );
  AO22XLM U10 ( .A0(n1), .A1(count[1]), .B0(N17), .B1(n11), .Y(n47) );
  AO22XLM U11 ( .A0(n1), .A1(count[2]), .B0(N18), .B1(n11), .Y(n48) );
  AO22XLM U12 ( .A0(n1), .A1(count[3]), .B0(N19), .B1(n11), .Y(n49) );
  AO22XLM U13 ( .A0(n1), .A1(count[4]), .B0(N20), .B1(n11), .Y(n50) );
  AO22XLM U14 ( .A0(n1), .A1(count[5]), .B0(N21), .B1(n11), .Y(n51) );
  OAI2BB1XLM U15 ( .A0N(n4), .A1N(i_div_ratio[3]), .B0(n5), .Y(
        edge_flip_half[2]) );
  INVX4M U16 ( .A(n3), .Y(n2) );
  OR2X2M U17 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n4) );
  INVX2M U18 ( .A(i_rst), .Y(n3) );
  CLKBUFX6M U19 ( .A(n10), .Y(n1) );
  OAI21X2M U20 ( .A0(n44), .A1(n45), .B0(i_clk_en), .Y(n10) );
  INVX2M U21 ( .A(i_div_ratio[5]), .Y(n9) );
  CLKINVX1M U22 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U23 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n4), .Y(
        edge_flip_half[1]) );
  AO21XLM U24 ( .A0(n5), .A1(i_div_ratio[4]), .B0(n6), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U25 ( .A(n6), .B(n9), .Y(n7) );
  OAI21X1M U26 ( .A0(n6), .A1(n9), .B0(n7), .Y(edge_flip_half[4]) );
  XNOR2X1M U27 ( .A(i_div_ratio[6]), .B(n7), .Y(edge_flip_half[5]) );
  NOR2X1M U28 ( .A(i_div_ratio[6]), .B(n7), .Y(n8) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[7]), .B(n8), .Y(edge_flip_half[6]) );
  MX2X6M U30 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKXOR2X2M U31 ( .A(div_clk), .B(n14), .Y(n53) );
  AOI21X1M U32 ( .A0(n13), .A1(n12), .B0(n1), .Y(n14) );
  OR2X1M U33 ( .A(n15), .B(i_div_ratio[0]), .Y(n12) );
  XNOR2X1M U34 ( .A(odd_edge_tog), .B(n16), .Y(n54) );
  OR2X1M U35 ( .A(n13), .B(n1), .Y(n16) );
  CLKNAND2X2M U36 ( .A(n26), .B(i_div_ratio[0]), .Y(n13) );
  MXI2X1M U37 ( .A(n27), .B(n15), .S0(odd_edge_tog), .Y(n26) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n35) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n34) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n33) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n32) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n30) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n29) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n28) );
  NAND4X1M U45 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n27) );
  NOR4X1M U46 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n42) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n41) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n40) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n38) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n37) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n36) );
  CLKINVX1M U54 ( .A(n1), .Y(N2) );
  OR3X1M U55 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n45) );
  OR4X1M U56 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n44) );
endmodule


module RX_FSM ( rst, clk_RX, RX_IN, PAR_EN, bit_cnt, Parity_Error, Stop_Error, 
        str_glitch, take_sample, edge_cnt_max, par_chk_en, str_chk_en, 
        stp_chk_en, data_Valid, deser_en, edge_cnt_enable, dat_samp_en );
  input [3:0] bit_cnt;
  input rst, clk_RX, RX_IN, PAR_EN, Parity_Error, Stop_Error, str_glitch,
         take_sample, edge_cnt_max;
  output par_chk_en, str_chk_en, stp_chk_en, data_Valid, deser_en,
         edge_cnt_enable, dat_samp_en;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk_RX), .RN(rst), 
        .Q(current_state[0]), .QN(n10) );
  DFFRX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk_RX), .RN(rst), 
        .Q(current_state[2]), .QN(n12) );
  DFFRX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk_RX), .RN(rst), 
        .Q(current_state[1]), .QN(n11) );
  NAND3X4M U3 ( .A(n10), .B(n11), .C(current_state[2]), .Y(n16) );
  OAI21X4M U4 ( .A0(current_state[2]), .A1(n10), .B0(n32), .Y(edge_cnt_enable)
         );
  OAI32X2M U5 ( .A0(n2), .A1(current_state[0]), .A2(Parity_Error), .B0(PAR_EN), 
        .B1(n10), .Y(n20) );
  OR3X1M U6 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(n7), .Y(n34) );
  OAI32X2M U7 ( .A0(n30), .A1(bit_cnt[0]), .A2(RX_IN), .B0(n31), .B1(n10), .Y(
        n29) );
  NOR3X4M U8 ( .A(n9), .B(current_state[1]), .C(n14), .Y(n32) );
  NAND3X2M U9 ( .A(n5), .B(n6), .C(bit_cnt[0]), .Y(n24) );
  NAND2X2M U10 ( .A(current_state[1]), .B(n12), .Y(n17) );
  INVX2M U11 ( .A(bit_cnt[3]), .Y(n7) );
  NAND2X2M U12 ( .A(current_state[0]), .B(n11), .Y(n15) );
  INVX2M U13 ( .A(n21), .Y(n4) );
  OAI32X2M U14 ( .A0(n22), .A1(take_sample), .A2(n16), .B0(n15), .B1(n12), .Y(
        data_Valid) );
  INVX2M U15 ( .A(RX_IN), .Y(n14) );
  NAND2X2M U16 ( .A(n32), .B(n10), .Y(dat_samp_en) );
  NOR3X8M U17 ( .A(n10), .B(n21), .C(n17), .Y(deser_en) );
  NOR2X4M U18 ( .A(n7), .B(n24), .Y(n21) );
  INVX2M U19 ( .A(edge_cnt_max), .Y(n2) );
  INVX2M U20 ( .A(take_sample), .Y(n1) );
  INVX2M U21 ( .A(n16), .Y(n9) );
  NAND2X2M U22 ( .A(edge_cnt_max), .B(n33), .Y(n22) );
  OAI32X2M U23 ( .A0(n34), .A1(n13), .A2(n5), .B0(PAR_EN), .B1(n4), .Y(n33) );
  INVX2M U24 ( .A(PAR_EN), .Y(n13) );
  NAND3X2M U25 ( .A(n6), .B(n7), .C(n5), .Y(n30) );
  NOR3X2M U26 ( .A(n8), .B(bit_cnt[3]), .C(n24), .Y(n31) );
  NAND3BX2M U27 ( .AN(deser_en), .B(n26), .C(n27), .Y(next_state[0]) );
  NAND4BX1M U28 ( .AN(n15), .B(edge_cnt_max), .C(current_state[2]), .D(n14), 
        .Y(n26) );
  AOI33X2M U29 ( .A0(n9), .A1(n28), .A2(n3), .B0(n11), .B1(n12), .B2(n29), .Y(
        n27) );
  INVX2M U30 ( .A(n22), .Y(n3) );
  CLKXOR2X2M U31 ( .A(Stop_Error), .B(RX_IN), .Y(n28) );
  OAI21X2M U32 ( .A0(n18), .A1(n16), .B0(n19), .Y(next_state[2]) );
  NAND3BX2M U33 ( .AN(n17), .B(n20), .C(n21), .Y(n19) );
  AOI2B1X1M U34 ( .A1N(Stop_Error), .A0(RX_IN), .B0(n22), .Y(n18) );
  OAI32X2M U35 ( .A0(n23), .A1(n15), .A2(n24), .B0(n25), .B1(n17), .Y(
        next_state[1]) );
  NAND3X2M U36 ( .A(n12), .B(n8), .C(n7), .Y(n23) );
  AOI221X2M U37 ( .A0(PAR_EN), .A1(current_state[0]), .B0(n10), .B1(n2), .C0(
        n4), .Y(n25) );
  INVX2M U38 ( .A(bit_cnt[2]), .Y(n6) );
  NOR3X2M U39 ( .A(n17), .B(current_state[0]), .C(n1), .Y(par_chk_en) );
  NOR2X2M U40 ( .A(n1), .B(n16), .Y(stp_chk_en) );
  INVX2M U41 ( .A(bit_cnt[1]), .Y(n5) );
  NOR3X4M U42 ( .A(n1), .B(current_state[2]), .C(n15), .Y(str_chk_en) );
  INVX2M U43 ( .A(str_glitch), .Y(n8) );
endmodule


module RX_parity_check_data_width8 ( clk_RX, rst, P_DATA, par_chk_en, 
        sampled_bit, PAR_TYP, Parity_Error );
  input [7:0] P_DATA;
  input clk_RX, rst, par_chk_en, sampled_bit, PAR_TYP;
  output Parity_Error;
  wire   n2, n3, n4, n5, n6, n7, n8, n1;

  DFFRX4M Parity_Error_reg ( .D(n8), .CK(clk_RX), .RN(rst), .Q(Parity_Error)
         );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(Parity_Error), .A1N(n1), .Y(n8) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n2) );
  INVX2M U5 ( .A(par_chk_en), .Y(n1) );
  CLKXOR2X2M U6 ( .A(P_DATA[1]), .B(PAR_TYP), .Y(n3) );
  XOR3XLM U7 ( .A(P_DATA[2]), .B(P_DATA[0]), .C(n6), .Y(n5) );
  XNOR2X2M U8 ( .A(P_DATA[4]), .B(P_DATA[3]), .Y(n6) );
  XOR3XLM U9 ( .A(P_DATA[6]), .B(P_DATA[5]), .C(n7), .Y(n4) );
  XNOR2X2M U10 ( .A(sampled_bit), .B(P_DATA[7]), .Y(n7) );
endmodule


module RX_str_check ( clk_RX, rst, str_chk_en, sampled_bit, str_glitch );
  input clk_RX, rst, str_chk_en, sampled_bit;
  output str_glitch;
  wire   n1;

  DFFRX4M str_glitch_reg ( .D(n1), .CK(clk_RX), .RN(rst), .Q(str_glitch) );
  AO2B2X2M U2 ( .B0(str_chk_en), .B1(sampled_bit), .A0(str_glitch), .A1N(
        str_chk_en), .Y(n1) );
endmodule


module RX_stp_chk ( clk_RX, rst, stp_chk_en, sampled_bit, Stop_Error );
  input clk_RX, rst, stp_chk_en, sampled_bit;
  output Stop_Error;
  wire   n2, n1;

  DFFRQX2M Stop_Error_reg ( .D(n2), .CK(clk_RX), .RN(rst), .Q(Stop_Error) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(Stop_Error), .A1N(n1), .Y(n2) );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module RX_deserializer_data_width8 ( clk_RX, rst, sampled_bit, deser_en, 
        take_sample, edge_cnt, edge_cnt_max, P_DATA );
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  input clk_RX, rst, sampled_bit, deser_en, take_sample, edge_cnt_max;
  wire   n1, n2, n3, n4, n5, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n6, n7, n8, n26, n27;

  DFFRQX2M \P_DATA_reg[0]  ( .D(n8), .CK(clk_RX), .RN(n6), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n25), .CK(clk_RX), .RN(n6), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n19), .CK(clk_RX), .RN(n6), .Q(P_DATA[7]) );
  DFFRX1M \P_DATA_reg[6]  ( .D(n20), .CK(clk_RX), .RN(n6), .Q(P_DATA[6]), .QN(
        n1) );
  DFFRX1M \P_DATA_reg[5]  ( .D(n21), .CK(clk_RX), .RN(n6), .Q(P_DATA[5]), .QN(
        n2) );
  DFFRX1M \P_DATA_reg[4]  ( .D(n22), .CK(clk_RX), .RN(n6), .Q(P_DATA[4]), .QN(
        n3) );
  DFFRX1M \P_DATA_reg[3]  ( .D(n23), .CK(clk_RX), .RN(n6), .Q(P_DATA[3]), .QN(
        n4) );
  DFFRX1M \P_DATA_reg[2]  ( .D(n24), .CK(clk_RX), .RN(n6), .Q(P_DATA[2]), .QN(
        n5) );
  NOR4X4M U3 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(n18), .Y(
        n17) );
  OR3X1M U4 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n18) );
  NOR2BX4M U5 ( .AN(n12), .B(n13), .Y(n14) );
  OAI21X4M U6 ( .A0(n11), .A1(n17), .B0(deser_en), .Y(n13) );
  INVX4M U7 ( .A(n14), .Y(n26) );
  INVX2M U8 ( .A(n15), .Y(n27) );
  INVX4M U9 ( .A(n7), .Y(n6) );
  INVX2M U10 ( .A(rst), .Y(n7) );
  NOR2X4M U11 ( .A(n13), .B(n11), .Y(n15) );
  NOR2BX8M U12 ( .AN(take_sample), .B(edge_cnt_max), .Y(n11) );
  NOR2BX4M U13 ( .AN(n17), .B(n11), .Y(n12) );
  OAI22X1M U14 ( .A0(n26), .A1(n4), .B0(n15), .B1(n5), .Y(n24) );
  OAI22X1M U15 ( .A0(n26), .A1(n3), .B0(n15), .B1(n4), .Y(n23) );
  OAI22X1M U16 ( .A0(n26), .A1(n2), .B0(n15), .B1(n3), .Y(n22) );
  OAI22X1M U17 ( .A0(n26), .A1(n1), .B0(n14), .B1(n2), .Y(n21) );
  OAI2BB2X1M U18 ( .B0(n26), .B1(n5), .A0N(n27), .A1N(P_DATA[1]), .Y(n25) );
  INVX2M U19 ( .A(n16), .Y(n8) );
  AOI32X1M U20 ( .A0(P_DATA[1]), .A1(deser_en), .A2(n12), .B0(n27), .B1(
        P_DATA[0]), .Y(n16) );
  OAI2BB2X1M U21 ( .B0(n14), .B1(n1), .A0N(P_DATA[7]), .A1N(n14), .Y(n20) );
  NAND2X2M U22 ( .A(n9), .B(n10), .Y(n19) );
  NAND3X2M U23 ( .A(deser_en), .B(n11), .C(sampled_bit), .Y(n10) );
  OAI21X2M U24 ( .A0(n12), .A1(n13), .B0(P_DATA[7]), .Y(n9) );
endmodule


module RX_edge_bit_cnt ( clk_RX, rst, prescale, edge_cnt_enable, PAR_EN, 
        bit_cnt, edge_cnt, edge_cnt_max );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk_RX, rst, edge_cnt_enable, PAR_EN;
  output edge_cnt_max;
  wire   N12, N13, N14, N15, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, \add_33/carry[5] , \add_33/carry[4] ,
         \add_33/carry[3] , \add_33/carry[2] , n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n28, n29, n30, n31;

  NOR3BX4M U29 ( .AN(n27), .B(prescale[4]), .C(n30), .Y(n24) );
  DFFRX4M \edge_cnt_reg[3]  ( .D(N38), .CK(clk_RX), .RN(n3), .QN(n9) );
  DFFRX4M \edge_cnt_reg[1]  ( .D(N36), .CK(clk_RX), .RN(n3), .Q(edge_cnt[1])
         );
  DFFRX4M \edge_cnt_reg[4]  ( .D(N39), .CK(clk_RX), .RN(rst), .Q(edge_cnt[4]), 
        .QN(n10) );
  DFFRX4M \edge_cnt_reg[0]  ( .D(N35), .CK(clk_RX), .RN(n3), .Q(edge_cnt[0])
         );
  DFFRX4M \edge_cnt_reg[5]  ( .D(N40), .CK(clk_RX), .RN(n3), .Q(edge_cnt[5])
         );
  DFFRX4M \edge_cnt_reg[2]  ( .D(N37), .CK(clk_RX), .RN(n3), .Q(edge_cnt[2])
         );
  DFFRX4M \bit_cnt_reg[0]  ( .D(N41), .CK(clk_RX), .RN(n3), .Q(bit_cnt[0]), 
        .QN(n6) );
  DFFRX4M \bit_cnt_reg[3]  ( .D(N44), .CK(clk_RX), .RN(n3), .Q(bit_cnt[3]) );
  DFFRX4M \bit_cnt_reg[2]  ( .D(N43), .CK(clk_RX), .RN(n3), .Q(bit_cnt[2]), 
        .QN(n8) );
  DFFRX4M \bit_cnt_reg[1]  ( .D(N42), .CK(clk_RX), .RN(n3), .Q(bit_cnt[1]), 
        .QN(n7) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  NOR3X2M U4 ( .A(n7), .B(bit_cnt[3]), .C(n6), .Y(n12) );
  OAI33X2M U5 ( .A0(n28), .A1(n15), .A2(n8), .B0(n16), .B1(bit_cnt[2]), .B2(n7), .Y(N43) );
  INVX6M U6 ( .A(n9), .Y(edge_cnt[3]) );
  OAI33X4M U7 ( .A0(n7), .A1(bit_cnt[0]), .A2(n31), .B0(n6), .B1(bit_cnt[1]), 
        .B2(PAR_EN), .Y(n21) );
  AOI32X1M U8 ( .A0(bit_cnt[2]), .A1(n5), .A2(n12), .B0(bit_cnt[3]), .B1(n13), 
        .Y(n11) );
  AOI32X1M U9 ( .A0(edge_cnt[3]), .A1(n24), .A2(edge_cnt[4]), .B0(n25), .B1(
        n10), .Y(n23) );
  NAND4X2M U10 ( .A(bit_cnt[3]), .B(edge_cnt_max), .C(n21), .D(n8), .Y(n20) );
  INVX2M U11 ( .A(rst), .Y(n4) );
  INVX2M U12 ( .A(n14), .Y(n5) );
  NAND2BX4M U13 ( .AN(n18), .B(edge_cnt_enable), .Y(n19) );
  INVX2M U14 ( .A(edge_cnt_enable), .Y(n28) );
  NOR2BX2M U15 ( .AN(N15), .B(n19), .Y(N39) );
  NOR2BX2M U16 ( .AN(N14), .B(n19), .Y(N38) );
  NOR2BX2M U17 ( .AN(N13), .B(n19), .Y(N37) );
  NOR2BX2M U18 ( .AN(N12), .B(n19), .Y(N36) );
  NAND2X4M U19 ( .A(edge_cnt_max), .B(n20), .Y(n14) );
  AOI21BX2M U20 ( .A0(n6), .A1(n5), .B0N(n18), .Y(n17) );
  NAND2X2M U21 ( .A(n14), .B(n20), .Y(n18) );
  OAI32X2M U22 ( .A0(n29), .A1(edge_cnt[3]), .A2(n24), .B0(n9), .B1(n26), .Y(
        n25) );
  INVX2M U23 ( .A(n26), .Y(n29) );
  NAND3X2M U24 ( .A(n27), .B(n30), .C(prescale[4]), .Y(n26) );
  AND4X4M U25 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(n22), .D(edge_cnt[0]), 
        .Y(edge_cnt_max) );
  NOR2X2M U26 ( .A(edge_cnt[5]), .B(n23), .Y(n22) );
  NOR4X4M U27 ( .A(prescale[1]), .B(prescale[0]), .C(prescale[3]), .D(
        prescale[2]), .Y(n27) );
  INVX2M U28 ( .A(prescale[5]), .Y(n30) );
  OAI32X2M U30 ( .A0(n28), .A1(bit_cnt[0]), .A2(n14), .B0(n6), .B1(n19), .Y(
        N41) );
  OAI32X2M U31 ( .A0(n28), .A1(n17), .A2(n7), .B0(bit_cnt[1]), .B1(n16), .Y(
        N42) );
  NAND3X2M U32 ( .A(n5), .B(bit_cnt[0]), .C(edge_cnt_enable), .Y(n16) );
  NOR2X2M U33 ( .A(n2), .B(n19), .Y(N40) );
  XNOR2X2M U34 ( .A(\add_33/carry[5] ), .B(edge_cnt[5]), .Y(n2) );
  NOR2X2M U35 ( .A(edge_cnt[0]), .B(n19), .Y(N35) );
  NOR2X2M U36 ( .A(n11), .B(n28), .Y(N44) );
  OAI21X2M U37 ( .A0(bit_cnt[2]), .A1(n14), .B0(n15), .Y(n13) );
  INVX2M U38 ( .A(PAR_EN), .Y(n31) );
  OA21X2M U39 ( .A0(bit_cnt[1]), .A1(n14), .B0(n17), .Y(n15) );
  ADDHX1M U40 ( .A(edge_cnt[3]), .B(\add_33/carry[3] ), .CO(\add_33/carry[4] ), 
        .S(N14) );
  ADDHX1M U41 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_33/carry[2] ), .S(
        N12) );
  ADDHX1M U42 ( .A(edge_cnt[2]), .B(\add_33/carry[2] ), .CO(\add_33/carry[3] ), 
        .S(N13) );
  ADDHX1M U43 ( .A(edge_cnt[4]), .B(\add_33/carry[4] ), .CO(\add_33/carry[5] ), 
        .S(N15) );
endmodule


module RX_data_sampling ( clk_RX, rst, RX_IN, dat_samp_en, edge_cnt, prescale, 
        sampled_bit, take_sample );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input clk_RX, rst, RX_IN, dat_samp_en;
  output sampled_bit, take_sample;
  wire   N59, N75, N76, N77, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n51, n52, n53;
  wire   [2:0] sample;

  DFFRQX2M \sample_reg[0]  ( .D(N75), .CK(clk_RX), .RN(n3), .Q(sample[0]) );
  DFFRQX2M \sample_reg[1]  ( .D(N76), .CK(clk_RX), .RN(n3), .Q(sample[1]) );
  DFFRQX2M sampled_bit_reg ( .D(N59), .CK(clk_RX), .RN(n3), .Q(sampled_bit) );
  DFFRX1M \sample_reg[2]  ( .D(N77), .CK(clk_RX), .RN(n3), .Q(sample[2]) );
  INVX2M U3 ( .A(prescale[3]), .Y(n53) );
  NOR3X4M U4 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .Y(n48) );
  NOR4X4M U5 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .C(edge_cnt[2]), .D(
        edge_cnt[5]), .Y(n31) );
  NOR3X2M U6 ( .A(edge_cnt[2]), .B(edge_cnt[5]), .C(edge_cnt[4]), .Y(n47) );
  NOR3X6M U7 ( .A(edge_cnt[4]), .B(edge_cnt[5]), .C(n15), .Y(n32) );
  NAND3X1M U8 ( .A(n40), .B(edge_cnt[3]), .C(edge_cnt[0]), .Y(n39) );
  NOR4X2M U9 ( .A(edge_cnt[4]), .B(edge_cnt[1]), .C(n2), .D(n16), .Y(n20) );
  CLKINVX2M U10 ( .A(edge_cnt[3]), .Y(n16) );
  NOR2X3M U11 ( .A(n10), .B(edge_cnt[3]), .Y(n33) );
  BUFX4M U12 ( .A(n22), .Y(n1) );
  NAND4BX1M U13 ( .AN(prescale[4]), .B(prescale[5]), .C(n48), .D(n53), .Y(n22)
         );
  BUFX4M U14 ( .A(n23), .Y(n2) );
  NAND4BX1M U15 ( .AN(prescale[5]), .B(prescale[4]), .C(n48), .D(n53), .Y(n23)
         );
  OAI211X1M U16 ( .A0(n20), .A1(n21), .B0(n15), .C0(n51), .Y(n19) );
  AND2X2M U17 ( .A(n32), .B(edge_cnt[1]), .Y(n40) );
  INVX2M U18 ( .A(edge_cnt[0]), .Y(n10) );
  BUFX2M U19 ( .A(rst), .Y(n3) );
  INVX2M U20 ( .A(n37), .Y(n7) );
  INVX2M U21 ( .A(n44), .Y(n5) );
  INVX2M U22 ( .A(n38), .Y(n4) );
  INVX2M U23 ( .A(n29), .Y(n8) );
  NAND2X4M U24 ( .A(n1), .B(n2), .Y(n24) );
  NAND2X2M U25 ( .A(n33), .B(n40), .Y(n37) );
  NAND3X2M U26 ( .A(n10), .B(n16), .C(n40), .Y(n44) );
  INVX2M U27 ( .A(dat_samp_en), .Y(n52) );
  NAND4X2M U28 ( .A(n32), .B(n10), .C(n14), .D(n16), .Y(n38) );
  NAND3X2M U29 ( .A(n32), .B(n14), .C(n33), .Y(n29) );
  INVX2M U30 ( .A(n46), .Y(n9) );
  INVX2M U31 ( .A(n39), .Y(n11) );
  INVX2M U32 ( .A(n30), .Y(n12) );
  INVX2M U33 ( .A(n45), .Y(n6) );
  INVX2M U34 ( .A(n28), .Y(n13) );
  NOR4X1M U35 ( .A(edge_cnt[3]), .B(n1), .C(n14), .D(n17), .Y(n21) );
  NAND2X2M U36 ( .A(n18), .B(n19), .Y(take_sample) );
  OAI21BX1M U37 ( .A0(n5), .A1(n7), .B0N(n24), .Y(n18) );
  INVX2M U38 ( .A(edge_cnt[5]), .Y(n51) );
  INVX2M U39 ( .A(edge_cnt[2]), .Y(n15) );
  AOI21X2M U40 ( .A0(n49), .A1(n50), .B0(n52), .Y(N59) );
  NAND2X2M U41 ( .A(sample[0]), .B(sample[1]), .Y(n49) );
  OAI21X2M U42 ( .A0(sample[0]), .A1(sample[1]), .B0(sample[2]), .Y(n50) );
  NOR2X2M U43 ( .A(n41), .B(n52), .Y(N75) );
  AOI22X1M U44 ( .A0(RX_IN), .A1(n42), .B0(sample[0]), .B1(n43), .Y(n41) );
  OAI222X1M U45 ( .A0(n1), .A1(n46), .B0(n24), .B1(n45), .C0(n2), .C1(n44), 
        .Y(n42) );
  OAI222X1M U46 ( .A0(n9), .A1(n1), .B0(n6), .B1(n24), .C0(n5), .C1(n2), .Y(
        n43) );
  NOR2X2M U47 ( .A(n34), .B(n52), .Y(N76) );
  AOI22X1M U48 ( .A0(RX_IN), .A1(n35), .B0(sample[1]), .B1(n36), .Y(n34) );
  OAI222X1M U49 ( .A0(n1), .A1(n39), .B0(n24), .B1(n38), .C0(n2), .C1(n37), 
        .Y(n35) );
  OAI222X1M U50 ( .A0(n11), .A1(n1), .B0(n4), .B1(n24), .C0(n7), .C1(n2), .Y(
        n36) );
  NOR2X2M U51 ( .A(n25), .B(n52), .Y(N77) );
  AOI22X1M U52 ( .A0(RX_IN), .A1(n26), .B0(sample[2]), .B1(n27), .Y(n25) );
  OAI222X1M U53 ( .A0(n1), .A1(n30), .B0(n24), .B1(n29), .C0(n2), .C1(n28), 
        .Y(n26) );
  OAI222X1M U54 ( .A0(n12), .A1(n1), .B0(n8), .B1(n24), .C0(n13), .C1(n2), .Y(
        n27) );
  INVX2M U55 ( .A(edge_cnt[1]), .Y(n14) );
  INVX2M U56 ( .A(edge_cnt[4]), .Y(n17) );
  NAND3X2M U57 ( .A(edge_cnt[3]), .B(n10), .C(n40), .Y(n46) );
  NAND3X2M U58 ( .A(edge_cnt[4]), .B(n16), .C(n31), .Y(n30) );
  NAND3X2M U59 ( .A(n33), .B(edge_cnt[1]), .C(n47), .Y(n45) );
  NAND3X2M U60 ( .A(edge_cnt[3]), .B(n17), .C(n31), .Y(n28) );
endmodule


module UART_RX_DATAWIDTH8 ( rst, clk_RX, RX_IN, prescale, PAR_EN, PAR_TYP, 
        P_DATA, Parity_Error, Stop_Error, DATA_VALID, str_glitch );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input rst, clk_RX, RX_IN, PAR_EN, PAR_TYP;
  output Parity_Error, Stop_Error, DATA_VALID, str_glitch;
  wire   take_sample, edge_cnt_max, par_chk_en, str_chk_en, stp_chk_en,
         deser_en, edge_cnt_enable, dat_samp_en, sampled_bit, n1, n2, n3, n4,
         n5;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  RX_FSM U0_fsm ( .rst(n3), .clk_RX(clk_RX), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .bit_cnt(bit_cnt), .Parity_Error(Parity_Error), .Stop_Error(Stop_Error), .str_glitch(str_glitch), .take_sample(take_sample), .edge_cnt_max(
        edge_cnt_max), .par_chk_en(par_chk_en), .str_chk_en(str_chk_en), 
        .stp_chk_en(stp_chk_en), .data_Valid(DATA_VALID), .deser_en(deser_en), 
        .edge_cnt_enable(edge_cnt_enable), .dat_samp_en(dat_samp_en) );
  RX_parity_check_data_width8 U1_parity_check ( .clk_RX(clk_RX), .rst(rst), 
        .P_DATA(P_DATA), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), 
        .PAR_TYP(PAR_TYP), .Parity_Error(Parity_Error) );
  RX_str_check U2_str_check ( .clk_RX(clk_RX), .rst(n2), .str_chk_en(
        str_chk_en), .sampled_bit(sampled_bit), .str_glitch(str_glitch) );
  RX_stp_chk U3_stp_chk ( .clk_RX(clk_RX), .rst(n4), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .Stop_Error(Stop_Error) );
  RX_deserializer_data_width8 U4_deserializer ( .clk_RX(clk_RX), .rst(n2), 
        .sampled_bit(sampled_bit), .deser_en(deser_en), .take_sample(
        take_sample), .edge_cnt(edge_cnt), .edge_cnt_max(edge_cnt_max), 
        .P_DATA(P_DATA) );
  RX_edge_bit_cnt U5_edge_bit_cnt ( .clk_RX(clk_RX), .rst(n1), .prescale(
        prescale), .edge_cnt_enable(edge_cnt_enable), .PAR_EN(PAR_EN), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .edge_cnt_max(edge_cnt_max) );
  RX_data_sampling U6_data_sampling ( .clk_RX(clk_RX), .rst(n3), .RX_IN(RX_IN), 
        .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt), .prescale(prescale), 
        .sampled_bit(sampled_bit), .take_sample(take_sample) );
  INVX2M U1 ( .A(n5), .Y(n4) );
  CLKINVX1M U2 ( .A(n5), .Y(n1) );
  CLKINVX1M U3 ( .A(n5), .Y(n2) );
  CLKINVX2M U4 ( .A(n5), .Y(n3) );
  INVX2M U5 ( .A(rst), .Y(n5) );
endmodule


module TX_serializer_datawidth8 ( clk, rst, p_data, data_valid, ser_en, 
        ser_done, ser_data );
  input [7:0] p_data;
  input clk, rst, data_valid, ser_en;
  output ser_done, ser_data;
  wire   N12, N13, N14, N15, N19, N20, N21, N22, N23, N24, N25, N26, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n1, n2, n3, n13, n14, n15;
  wire   [3:0] count;
  wire   [7:0] lfsr;

  DFFRQX1M \lfsr_reg[7]  ( .D(N26), .CK(clk), .RN(n2), .Q(lfsr[7]) );
  DFFRQX1M ser_data_reg ( .D(n11), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRQX1M \lfsr_reg[6]  ( .D(N25), .CK(clk), .RN(n2), .Q(lfsr[6]) );
  DFFRQX1M \lfsr_reg[5]  ( .D(N24), .CK(clk), .RN(n2), .Q(lfsr[5]) );
  DFFRQX1M \lfsr_reg[4]  ( .D(N23), .CK(clk), .RN(n2), .Q(lfsr[4]) );
  DFFRQX1M \lfsr_reg[3]  ( .D(N22), .CK(clk), .RN(n2), .Q(lfsr[3]) );
  DFFRQX1M \lfsr_reg[2]  ( .D(N21), .CK(clk), .RN(n2), .Q(lfsr[2]) );
  DFFRQX1M \lfsr_reg[1]  ( .D(N20), .CK(clk), .RN(n2), .Q(lfsr[1]) );
  DFFRQX1M \lfsr_reg[0]  ( .D(N19), .CK(clk), .RN(rst), .Q(lfsr[0]) );
  DFFRQX1M \count_reg[3]  ( .D(N15), .CK(clk), .RN(n2), .Q(count[3]) );
  DFFRX4M ser_done_reg ( .D(n12), .CK(clk), .RN(n2), .Q(ser_done) );
  DFFRX4M \count_reg[0]  ( .D(N12), .CK(clk), .RN(n2), .Q(count[0]) );
  DFFRX4M \count_reg[1]  ( .D(N13), .CK(clk), .RN(n2), .Q(count[1]) );
  DFFRX4M \count_reg[2]  ( .D(N14), .CK(clk), .RN(n2), .Q(count[2]), .QN(n14)
         );
  XNOR2X2M U3 ( .A(count[0]), .B(count[1]), .Y(n9) );
  NAND3X1M U4 ( .A(count[0]), .B(n13), .C(count[1]), .Y(n6) );
  NOR2X2M U5 ( .A(n4), .B(count[0]), .Y(N12) );
  INVX6M U6 ( .A(n3), .Y(n2) );
  INVX2M U7 ( .A(rst), .Y(n3) );
  INVX6M U8 ( .A(n4), .Y(n13) );
  BUFX4M U9 ( .A(n5), .Y(n1) );
  NOR2BX2M U10 ( .AN(data_valid), .B(ser_en), .Y(n5) );
  AND2X2M U11 ( .A(p_data[7]), .B(n1), .Y(N26) );
  OAI32X2M U12 ( .A0(n14), .A1(count[3]), .A2(n6), .B0(n7), .B1(n15), .Y(N15)
         );
  AOI21BX2M U13 ( .A0(n13), .A1(n14), .B0N(n8), .Y(n7) );
  NAND2X4M U14 ( .A(ser_en), .B(n10), .Y(n4) );
  OR4X1M U15 ( .A(count[1]), .B(n15), .C(count[0]), .D(count[2]), .Y(n10) );
  AOI2BB1X2M U16 ( .A0N(count[1]), .A1N(n4), .B0(N12), .Y(n8) );
  OAI22X1M U17 ( .A0(n8), .A1(n14), .B0(count[2]), .B1(n6), .Y(N14) );
  AOI2B1X1M U18 ( .A1N(ser_done), .A0(n13), .B0(n1), .Y(n12) );
  NOR2X2M U19 ( .A(n9), .B(n4), .Y(N13) );
  INVX2M U20 ( .A(count[3]), .Y(n15) );
  AO22X1M U21 ( .A0(lfsr[0]), .A1(n13), .B0(ser_data), .B1(n4), .Y(n11) );
  AO22X1M U22 ( .A0(p_data[0]), .A1(n1), .B0(lfsr[1]), .B1(n13), .Y(N19) );
  AO22X1M U23 ( .A0(p_data[1]), .A1(n1), .B0(lfsr[2]), .B1(n13), .Y(N20) );
  AO22X1M U24 ( .A0(p_data[2]), .A1(n1), .B0(lfsr[3]), .B1(n13), .Y(N21) );
  AO22X1M U25 ( .A0(p_data[3]), .A1(n1), .B0(lfsr[4]), .B1(n13), .Y(N22) );
  AO22X1M U26 ( .A0(p_data[4]), .A1(n1), .B0(lfsr[5]), .B1(n13), .Y(N23) );
  AO22X1M U27 ( .A0(p_data[5]), .A1(n1), .B0(lfsr[6]), .B1(n13), .Y(N24) );
  AO22X1M U28 ( .A0(p_data[6]), .A1(n1), .B0(lfsr[7]), .B1(n13), .Y(N25) );
endmodule


module TX_parity_datawidth8 ( p_data, clk, rst, par_typ, par_bit );
  input [7:0] p_data;
  input clk, rst, par_typ;
  output par_bit;
  wire   N5, n1, n2, n3, n4;

  DFFRQX1M par_bit_reg ( .D(N5), .CK(clk), .RN(rst), .Q(par_bit) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n4) );
  XOR3XLM U4 ( .A(n1), .B(par_typ), .C(n2), .Y(N5) );
  XOR3XLM U5 ( .A(p_data[1]), .B(p_data[0]), .C(n3), .Y(n2) );
  XOR3XLM U6 ( .A(p_data[5]), .B(p_data[4]), .C(n4), .Y(n1) );
  XNOR2X2M U7 ( .A(p_data[3]), .B(p_data[2]), .Y(n3) );
endmodule


module TX_mux ( clk, rst, mux_sel, ser_data, par_bit, tx_out );
  input [2:0] mux_sel;
  input clk, rst, ser_data, par_bit;
  output tx_out;
  wire   n9, n3, n4, n5, n6, n1, n7, n8;

  DFFRQX1M tx_out_reg ( .D(n6), .CK(clk), .RN(rst), .Q(n9) );
  INVXLM U3 ( .A(n9), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(tx_out) );
  INVX2M U5 ( .A(mux_sel[0]), .Y(n8) );
  AOI2B1X1M U6 ( .A1N(par_bit), .A0(mux_sel[1]), .B0(n8), .Y(n5) );
  AO21XLM U7 ( .A0(tx_out), .A1(mux_sel[2]), .B0(n3), .Y(n6) );
  OAI32X2M U8 ( .A0(n7), .A1(mux_sel[1]), .A2(mux_sel[0]), .B0(mux_sel[2]), 
        .B1(n4), .Y(n3) );
  INVX2M U9 ( .A(mux_sel[2]), .Y(n7) );
  AOI31X1M U10 ( .A0(mux_sel[1]), .A1(n8), .A2(ser_data), .B0(n5), .Y(n4) );
endmodule


module TX_fsm_datawidth8 ( clk, rst, data_valid, par_en, ser_done, ser_en, 
        busy, mux_sel );
  output [2:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   n9, n6, n7, n2, n3, n4, n5, n8;
  wire   [2:0] current;
  wire   [2:0] next;
  assign mux_sel[0] = next[0];

  DFFRQX1M \current_reg[0]  ( .D(next[0]), .CK(clk), .RN(rst), .Q(current[0])
         );
  DFFRX4M \current_reg[1]  ( .D(next[1]), .CK(clk), .RN(rst), .Q(current[1]), 
        .QN(n4) );
  DFFSX4M \current_reg[2]  ( .D(next[2]), .CK(clk), .SN(rst), .Q(current[2]), 
        .QN(n5) );
  OAI222X1M U3 ( .A0(data_valid), .A1(n2), .B0(n3), .B1(n5), .C0(n4), .C1(n5), 
        .Y(next[2]) );
  AOI211X2M U4 ( .A0(ser_done), .A1(n8), .B0(n6), .C0(n4), .Y(n9) );
  AOI21X4M U5 ( .A0(current[1]), .A1(ser_done), .B0(n6), .Y(ser_en) );
  OAI211X1M U6 ( .A0(current[0]), .A1(ser_done), .B0(n5), .C0(current[1]), .Y(
        n7) );
  OAI21X4M U7 ( .A0(current[1]), .A1(n3), .B0(n5), .Y(mux_sel[2]) );
  BUFX2M U8 ( .A(n9), .Y(mux_sel[1]) );
  INVX2M U9 ( .A(current[0]), .Y(n3) );
  NAND2X2M U10 ( .A(n3), .B(n5), .Y(n6) );
  INVX2M U11 ( .A(mux_sel[2]), .Y(n2) );
  INVX2M U12 ( .A(n7), .Y(next[0]) );
  OAI21BX1M U13 ( .A0(n6), .A1(n8), .B0N(ser_en), .Y(next[1]) );
  AOI21X2M U14 ( .A0(n4), .A1(n3), .B0(current[2]), .Y(busy) );
  INVX2M U15 ( .A(par_en), .Y(n8) );
endmodule


module UART_TX_DATAWIDTH8 ( CLK, RST, P_DATA, PAR_TYP, DATA_VALID, PAR_EN, 
        BUSY, TX_OUT );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, DATA_VALID, PAR_EN;
  output BUSY, TX_OUT;
  wire   SER_EN, SER_DONE, SER_DATA, PAR_BIT, n1, n2, n3, n4, n5;
  wire   [2:0] MUX_SEL;

  TX_serializer_datawidth8 u0_serializer ( .clk(CLK), .rst(n4), .p_data(P_DATA), .data_valid(DATA_VALID), .ser_en(SER_EN), .ser_done(SER_DONE), .ser_data(
        SER_DATA) );
  TX_parity_datawidth8 u0_parity ( .p_data(P_DATA), .clk(CLK), .rst(n3), 
        .par_typ(PAR_TYP), .par_bit(PAR_BIT) );
  TX_mux u0_mux ( .clk(CLK), .rst(n2), .mux_sel(MUX_SEL), .ser_data(SER_DATA), 
        .par_bit(PAR_BIT), .tx_out(TX_OUT) );
  TX_fsm_datawidth8 u0_fsm ( .clk(CLK), .rst(n3), .data_valid(DATA_VALID), 
        .par_en(PAR_EN), .ser_done(SER_DONE), .ser_en(SER_EN), .busy(BUSY), 
        .mux_sel(MUX_SEL) );
  INVX2M U1 ( .A(n1), .Y(n3) );
  CLKINVX2M U2 ( .A(n4), .Y(n1) );
  INVXLM U3 ( .A(n1), .Y(n2) );
  INVX2M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(RST), .Y(n5) );
endmodule


module UART ( clk_rx, clk_tx, rst, RX_IN, prescale, PAR_EN, PAR_TYP, P_DATA, 
        data_Valid, Parity_Error, Stop_Error, str_glitch, F_EMPTY, RD_DATA, 
        TX_OUT, BUSY );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input [7:0] RD_DATA;
  input clk_rx, clk_tx, rst, RX_IN, PAR_EN, PAR_TYP, F_EMPTY;
  output data_Valid, Parity_Error, Stop_Error, str_glitch, TX_OUT, BUSY;
  wire   n1, n2;

  UART_RX_DATAWIDTH8 u0_UART_RX ( .rst(n1), .clk_RX(clk_rx), .RX_IN(RX_IN), 
        .prescale(prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .P_DATA(
        P_DATA), .Parity_Error(Parity_Error), .Stop_Error(Stop_Error), 
        .DATA_VALID(data_Valid), .str_glitch(str_glitch) );
  UART_TX_DATAWIDTH8 u0_UART_TX ( .CLK(clk_tx), .RST(n1), .P_DATA(RD_DATA), 
        .PAR_TYP(PAR_TYP), .DATA_VALID(F_EMPTY), .PAR_EN(PAR_EN), .BUSY(BUSY), 
        .TX_OUT(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module sys_ctrl ( clk, rst, ALU_OUT, OUT_VALID, FIFO_FULL, pulse_en, cmd, 
        RdData, RdData_Valid, WrEn, RdEn, Wr_D, ALU_FUN, ALU_EN, CLK_EN, 
        CLKDIV_EN, Address, WR_INC, WrData );
  input [15:0] ALU_OUT;
  input [7:0] cmd;
  input [7:0] RdData;
  output [7:0] Wr_D;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input clk, rst, OUT_VALID, FIFO_FULL, pulse_en, RdData_Valid;
  output WrEn, RdEn, ALU_EN, CLK_EN, CLKDIV_EN, WR_INC;
  wire   N209, N210, N211, N212, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n40, n41, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [3:0] current;
  wire   [3:0] next;

  NOR3BX4M U22 ( .AN(n51), .B(n25), .C(n36), .Y(n27) );
  NAND3BX4M U80 ( .AN(n8), .B(n66), .C(n37), .Y(ALU_EN) );
  DFFRHQX8M \Address_reg[3]  ( .D(N212), .CK(clk), .RN(n10), .Q(Address[3]) );
  DFFRHQX8M \Address_reg[2]  ( .D(N211), .CK(clk), .RN(n10), .Q(Address[2]) );
  DFFRQX2M \Address_reg[1]  ( .D(N210), .CK(clk), .RN(n10), .Q(Address[1]) );
  DFFRQX2M \Address_reg[0]  ( .D(N209), .CK(clk), .RN(n10), .Q(Address[0]) );
  DFFRQX2M \current_reg[2]  ( .D(next[2]), .CK(clk), .RN(n10), .Q(current[2])
         );
  DFFRQX4M \current_reg[1]  ( .D(next[1]), .CK(clk), .RN(n10), .Q(current[1])
         );
  DFFRQX4M \current_reg[0]  ( .D(next[0]), .CK(clk), .RN(n10), .Q(current[0])
         );
  DFFRQX4M \current_reg[3]  ( .D(next[3]), .CK(clk), .RN(n10), .Q(current[3])
         );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
  INVX2M U5 ( .A(1'b0), .Y(CLK_EN) );
  INVX2M U7 ( .A(ALU_EN), .Y(n18) );
  NOR2X8M U8 ( .A(n18), .B(n80), .Y(ALU_FUN[2]) );
  AOI33X1M U9 ( .A0(n42), .A1(current[0]), .A2(pulse_en), .B0(n19), .B1(n75), 
        .B2(current[1]), .Y(n34) );
  NAND4X4M U10 ( .A(current[1]), .B(current[0]), .C(current[3]), .D(n21), .Y(
        n52) );
  NOR3X4M U11 ( .A(current[1]), .B(current[3]), .C(n21), .Y(n73) );
  NAND2BX2M U12 ( .AN(n5), .B(n70), .Y(n68) );
  BUFX4M U13 ( .A(n69), .Y(n5) );
  OAI31X2M U14 ( .A0(n70), .A1(n25), .A2(n31), .B0(n75), .Y(n69) );
  NOR2X6M U15 ( .A(n18), .B(n82), .Y(ALU_FUN[0]) );
  NOR2X4M U16 ( .A(n18), .B(n81), .Y(ALU_FUN[1]) );
  NOR2X4M U17 ( .A(n41), .B(n21), .Y(n46) );
  INVX6M U18 ( .A(current[0]), .Y(n19) );
  INVX2M U19 ( .A(cmd[3]), .Y(n79) );
  INVX2M U20 ( .A(cmd[2]), .Y(n80) );
  INVX2M U21 ( .A(pulse_en), .Y(n75) );
  INVX2M U23 ( .A(n31), .Y(n17) );
  NAND2X2M U24 ( .A(n33), .B(n72), .Y(n31) );
  INVX4M U25 ( .A(WrEn), .Y(n16) );
  INVX2M U26 ( .A(n50), .Y(n15) );
  INVX2M U27 ( .A(n67), .Y(RdEn) );
  INVX2M U28 ( .A(FIFO_FULL), .Y(n13) );
  CLKBUFX6M U29 ( .A(n57), .Y(n8) );
  OAI31X2M U30 ( .A0(n22), .A1(n21), .A2(n19), .B0(n52), .Y(n57) );
  INVX2M U31 ( .A(n55), .Y(n22) );
  NAND2X2M U32 ( .A(n74), .B(n19), .Y(n66) );
  NOR2X2M U33 ( .A(n18), .B(n79), .Y(ALU_FUN[3]) );
  NAND2X2M U34 ( .A(n46), .B(n40), .Y(n33) );
  INVX4M U35 ( .A(n65), .Y(n12) );
  NOR2BX4M U36 ( .AN(n73), .B(n19), .Y(n25) );
  NAND2X2M U37 ( .A(n73), .B(n19), .Y(n67) );
  NAND2X2M U38 ( .A(n46), .B(n19), .Y(n72) );
  NAND2X2M U39 ( .A(n54), .B(n33), .Y(WrEn) );
  NAND4X2M U40 ( .A(n55), .B(n19), .C(n21), .D(n75), .Y(n54) );
  NAND2X2M U41 ( .A(n32), .B(n67), .Y(n70) );
  NAND4X2M U42 ( .A(n15), .B(n39), .C(n82), .D(n78), .Y(n51) );
  NOR2X2M U43 ( .A(n16), .B(n82), .Y(Wr_D[0]) );
  NOR2X2M U44 ( .A(n16), .B(n81), .Y(Wr_D[1]) );
  NOR2X2M U45 ( .A(n16), .B(n80), .Y(Wr_D[2]) );
  NOR2X2M U46 ( .A(n16), .B(n79), .Y(Wr_D[3]) );
  NOR2X2M U47 ( .A(n16), .B(n78), .Y(Wr_D[4]) );
  NOR2X2M U48 ( .A(n16), .B(n77), .Y(Wr_D[5]) );
  NOR2X2M U49 ( .A(n16), .B(n76), .Y(Wr_D[7]) );
  NAND3X2M U50 ( .A(n19), .B(n40), .C(n42), .Y(n50) );
  BUFX4M U51 ( .A(n43), .Y(n9) );
  OAI21X2M U52 ( .A0(n66), .A1(n14), .B0(n37), .Y(n43) );
  NOR4X2M U53 ( .A(n76), .B(n50), .C(n81), .D(n77), .Y(n47) );
  OAI211X2M U54 ( .A0(n66), .A1(n14), .B0(n52), .C0(n65), .Y(WR_INC) );
  INVX4M U55 ( .A(n11), .Y(n10) );
  INVX2M U56 ( .A(rst), .Y(n11) );
  NOR2X4M U57 ( .A(n40), .B(current[3]), .Y(n55) );
  INVX4M U58 ( .A(current[1]), .Y(n40) );
  NOR3X4M U59 ( .A(current[1]), .B(current[2]), .C(n41), .Y(n74) );
  INVX4M U60 ( .A(current[2]), .Y(n21) );
  NAND2X2M U61 ( .A(n74), .B(current[0]), .Y(n37) );
  INVX2M U62 ( .A(current[3]), .Y(n41) );
  INVX4M U63 ( .A(cmd[0]), .Y(n82) );
  INVX4M U64 ( .A(cmd[1]), .Y(n81) );
  OAI2BB2X1M U65 ( .B0(n81), .B1(n68), .A0N(Address[1]), .A1N(n5), .Y(N210) );
  OAI2BB2X1M U66 ( .B0(n79), .B1(n68), .A0N(Address[3]), .A1N(n5), .Y(N212) );
  OAI2BB2X1M U67 ( .B0(n80), .B1(n68), .A0N(Address[2]), .A1N(n5), .Y(N211) );
  OAI2BB1X2M U68 ( .A0N(ALU_OUT[0]), .A1N(n9), .B0(n64), .Y(WrData[0]) );
  AOI22X1M U69 ( .A0(RdData[0]), .A1(n12), .B0(ALU_OUT[8]), .B1(n8), .Y(n64)
         );
  OAI2BB1X2M U70 ( .A0N(ALU_OUT[1]), .A1N(n9), .B0(n63), .Y(WrData[1]) );
  AOI22X1M U71 ( .A0(RdData[1]), .A1(n12), .B0(ALU_OUT[9]), .B1(n8), .Y(n63)
         );
  OAI2BB1X2M U72 ( .A0N(ALU_OUT[2]), .A1N(n9), .B0(n62), .Y(WrData[2]) );
  AOI22X1M U73 ( .A0(RdData[2]), .A1(n12), .B0(ALU_OUT[10]), .B1(n8), .Y(n62)
         );
  OAI2BB1X2M U74 ( .A0N(ALU_OUT[3]), .A1N(n9), .B0(n61), .Y(WrData[3]) );
  AOI22X1M U75 ( .A0(RdData[3]), .A1(n12), .B0(ALU_OUT[11]), .B1(n8), .Y(n61)
         );
  OAI2BB1X2M U76 ( .A0N(ALU_OUT[4]), .A1N(n9), .B0(n60), .Y(WrData[4]) );
  AOI22X1M U77 ( .A0(RdData[4]), .A1(n12), .B0(ALU_OUT[12]), .B1(n8), .Y(n60)
         );
  OAI2BB1X2M U78 ( .A0N(ALU_OUT[5]), .A1N(n9), .B0(n59), .Y(WrData[5]) );
  AOI22X1M U79 ( .A0(RdData[5]), .A1(n12), .B0(ALU_OUT[13]), .B1(n8), .Y(n59)
         );
  OAI2BB1X2M U81 ( .A0N(ALU_OUT[6]), .A1N(n9), .B0(n58), .Y(WrData[6]) );
  AOI22X1M U82 ( .A0(RdData[6]), .A1(n12), .B0(ALU_OUT[14]), .B1(n8), .Y(n58)
         );
  OAI2BB1X2M U83 ( .A0N(ALU_OUT[7]), .A1N(n9), .B0(n56), .Y(WrData[7]) );
  AOI22X1M U84 ( .A0(RdData[7]), .A1(n12), .B0(ALU_OUT[15]), .B1(n8), .Y(n56)
         );
  OAI2BB2X1M U85 ( .B0(n71), .B1(n5), .A0N(Address[0]), .A1N(n5), .Y(N209) );
  AOI21BX2M U86 ( .A0(cmd[0]), .A1(n70), .B0N(n72), .Y(n71) );
  NAND3X2M U87 ( .A(current[0]), .B(n21), .C(n55), .Y(n32) );
  NAND3BX2M U88 ( .AN(n67), .B(n13), .C(RdData_Valid), .Y(n65) );
  NOR2X4M U89 ( .A(current[2]), .B(current[3]), .Y(n42) );
  OAI21X4M U90 ( .A0(pulse_en), .A1(n26), .B0(n52), .Y(n36) );
  NAND4BX1M U91 ( .AN(n9), .B(n27), .C(n44), .D(n45), .Y(next[0]) );
  OAI211X2M U92 ( .A0(n40), .A1(n75), .B0(current[0]), .C0(n42), .Y(n45) );
  AOI32X1M U93 ( .A0(n19), .A1(n40), .A2(n46), .B0(n47), .B1(n48), .Y(n44) );
  NOR4X2M U94 ( .A(n49), .B(cmd[2]), .C(cmd[6]), .D(cmd[4]), .Y(n48) );
  AND2X2M U95 ( .A(cmd[6]), .B(WrEn), .Y(Wr_D[6]) );
  NAND3X2M U96 ( .A(current[0]), .B(n46), .C(current[1]), .Y(n26) );
  NAND3X2M U97 ( .A(n27), .B(n17), .C(n28), .Y(next[2]) );
  AOI32X1M U98 ( .A0(n29), .A1(n19), .A2(current[2]), .B0(n30), .B1(n15), .Y(
        n28) );
  NAND3X2M U99 ( .A(n13), .B(n40), .C(pulse_en), .Y(n29) );
  AND4X2M U100 ( .A(cmd[6]), .B(cmd[3]), .C(cmd[7]), .D(n53), .Y(n39) );
  NOR3X2M U101 ( .A(n80), .B(cmd[5]), .C(cmd[1]), .Y(n53) );
  NAND4X2M U102 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(next[1]) );
  AOI211X2M U103 ( .A0(n30), .A1(n15), .B0(n36), .C0(n23), .Y(n35) );
  NAND2X2M U104 ( .A(n37), .B(n38), .Y(n23) );
  NAND4X2M U105 ( .A(cmd[4]), .B(cmd[0]), .C(n15), .D(n39), .Y(n38) );
  INVX2M U106 ( .A(cmd[5]), .Y(n77) );
  INVX2M U107 ( .A(cmd[7]), .Y(n76) );
  INVX2M U108 ( .A(cmd[4]), .Y(n78) );
  NAND3BX2M U109 ( .AN(n23), .B(n17), .C(n24), .Y(next[3]) );
  AOI221X2M U110 ( .A0(pulse_en), .A1(n25), .B0(current[3]), .B1(n19), .C0(n20), .Y(n24) );
  INVX2M U111 ( .A(n26), .Y(n20) );
  NAND2X2M U112 ( .A(cmd[3]), .B(n82), .Y(n49) );
  INVX2M U113 ( .A(OUT_VALID), .Y(n14) );
  NOR2X2M U114 ( .A(n6), .B(n7), .Y(n30) );
  OR4X1M U115 ( .A(n82), .B(n78), .C(n81), .D(n77), .Y(n6) );
  OR4X1M U116 ( .A(cmd[6]), .B(cmd[2]), .C(n79), .D(n76), .Y(n7) );
endmodule


module REG_FILE ( WrEn, RdEn, clk, rst, Address, WrData, RdData, RdData_VLD, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, clk, rst;
  output RdData_VLD;
  wire   N11, N12, N13, N14, n272, n273, n274, n275, n276, n277,
         \reg_file[15][7] , \reg_file[15][6] , \reg_file[15][5] ,
         \reg_file[15][4] , \reg_file[15][3] , \reg_file[15][2] ,
         \reg_file[15][1] , \reg_file[15][0] , \reg_file[14][7] ,
         \reg_file[14][6] , \reg_file[14][5] , \reg_file[14][4] ,
         \reg_file[14][3] , \reg_file[14][2] , \reg_file[14][1] ,
         \reg_file[14][0] , \reg_file[13][7] , \reg_file[13][6] ,
         \reg_file[13][5] , \reg_file[13][4] , \reg_file[13][3] ,
         \reg_file[13][2] , \reg_file[13][1] , \reg_file[13][0] ,
         \reg_file[12][7] , \reg_file[12][6] , \reg_file[12][5] ,
         \reg_file[12][4] , \reg_file[12][3] , \reg_file[12][2] ,
         \reg_file[12][1] , \reg_file[12][0] , \reg_file[11][7] ,
         \reg_file[11][6] , \reg_file[11][5] , \reg_file[11][4] ,
         \reg_file[11][3] , \reg_file[11][2] , \reg_file[11][1] ,
         \reg_file[11][0] , \reg_file[10][7] , \reg_file[10][6] ,
         \reg_file[10][5] , \reg_file[10][4] , \reg_file[10][3] ,
         \reg_file[10][2] , \reg_file[10][1] , \reg_file[10][0] ,
         \reg_file[9][7] , \reg_file[9][6] , \reg_file[9][5] ,
         \reg_file[9][4] , \reg_file[9][3] , \reg_file[9][2] ,
         \reg_file[9][1] , \reg_file[9][0] , \reg_file[8][7] ,
         \reg_file[8][6] , \reg_file[8][5] , \reg_file[8][4] ,
         \reg_file[8][3] , \reg_file[8][2] , \reg_file[8][1] ,
         \reg_file[8][0] , \reg_file[7][7] , \reg_file[7][6] ,
         \reg_file[7][5] , \reg_file[7][4] , \reg_file[7][3] ,
         \reg_file[7][2] , \reg_file[7][1] , \reg_file[7][0] ,
         \reg_file[6][7] , \reg_file[6][6] , \reg_file[6][5] ,
         \reg_file[6][4] , \reg_file[6][3] , \reg_file[6][2] ,
         \reg_file[6][1] , \reg_file[6][0] , \reg_file[5][7] ,
         \reg_file[5][6] , \reg_file[5][5] , \reg_file[5][4] ,
         \reg_file[5][3] , \reg_file[5][2] , \reg_file[5][1] ,
         \reg_file[5][0] , \reg_file[4][7] , \reg_file[4][6] ,
         \reg_file[4][5] , \reg_file[4][4] , \reg_file[4][3] ,
         \reg_file[4][2] , \reg_file[4][1] , \reg_file[4][0] , N36, N37, N38,
         N39, N40, N41, N42, N43, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n24, n27, n28, n30, n31, n32, n33, n34, n35, n39, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n3, n5, n9, n10, n11, n12, n23, n25, n26, n29, n36, n37, n38,
         n40, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRHQX8M \reg_file_reg[2][6]  ( .D(n72), .CK(clk), .RN(n251), .Q(REG2[6])
         );
  DFFRHQX8M \reg_file_reg[2][5]  ( .D(n71), .CK(clk), .RN(n251), .Q(REG2[5])
         );
  DFFRHQX8M \reg_file_reg[1][2]  ( .D(n60), .CK(clk), .RN(n250), .Q(REG1[2])
         );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n161), .CK(clk), .RN(n258), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n160), .CK(clk), .RN(n258), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n159), .CK(clk), .RN(n258), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n158), .CK(clk), .RN(n258), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n157), .CK(clk), .RN(n258), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n156), .CK(clk), .RN(n257), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n155), .CK(clk), .RN(n257), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n154), .CK(clk), .RN(n257), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n129), .CK(clk), .RN(n255), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n128), .CK(clk), .RN(n255), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n127), .CK(clk), .RN(n255), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n126), .CK(clk), .RN(n255), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n125), .CK(clk), .RN(n255), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n124), .CK(clk), .RN(n255), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n123), .CK(clk), .RN(n255), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n122), .CK(clk), .RN(n255), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n97), .CK(clk), .RN(n253), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n96), .CK(clk), .RN(n253), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n95), .CK(clk), .RN(n253), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n94), .CK(clk), .RN(n253), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n93), .CK(clk), .RN(n253), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n92), .CK(clk), .RN(n252), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n91), .CK(clk), .RN(n252), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n90), .CK(clk), .RN(n252), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[15][7]  ( .D(n177), .CK(clk), .RN(n249), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n176), .CK(clk), .RN(n259), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n175), .CK(clk), .RN(n259), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n174), .CK(clk), .RN(n259), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n173), .CK(clk), .RN(n259), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n172), .CK(clk), .RN(n259), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n171), .CK(clk), .RN(n259), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n170), .CK(clk), .RN(n259), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n145), .CK(clk), .RN(n257), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n144), .CK(clk), .RN(n257), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n143), .CK(clk), .RN(n256), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n142), .CK(clk), .RN(n256), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n141), .CK(clk), .RN(n256), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n140), .CK(clk), .RN(n256), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n139), .CK(clk), .RN(n256), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n138), .CK(clk), .RN(n256), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n113), .CK(clk), .RN(n254), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n112), .CK(clk), .RN(n254), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n111), .CK(clk), .RN(n254), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n110), .CK(clk), .RN(n254), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n109), .CK(clk), .RN(n254), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n108), .CK(clk), .RN(n254), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n107), .CK(clk), .RN(n254), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n106), .CK(clk), .RN(n254), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n169), .CK(clk), .RN(n258), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n168), .CK(clk), .RN(n258), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n167), .CK(clk), .RN(n258), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n166), .CK(clk), .RN(n258), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n165), .CK(clk), .RN(n258), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n164), .CK(clk), .RN(n258), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n163), .CK(clk), .RN(n258), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n162), .CK(clk), .RN(n258), .Q(
        \reg_file[14][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n137), .CK(clk), .RN(n256), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n136), .CK(clk), .RN(n256), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n135), .CK(clk), .RN(n256), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n134), .CK(clk), .RN(n256), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n133), .CK(clk), .RN(n256), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n132), .CK(clk), .RN(n256), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n131), .CK(clk), .RN(n256), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n130), .CK(clk), .RN(n255), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n105), .CK(clk), .RN(n253), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n104), .CK(clk), .RN(n253), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n103), .CK(clk), .RN(n253), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n102), .CK(clk), .RN(n253), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n101), .CK(clk), .RN(n253), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n100), .CK(clk), .RN(n253), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n99), .CK(clk), .RN(n253), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n98), .CK(clk), .RN(n253), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n153), .CK(clk), .RN(n257), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n152), .CK(clk), .RN(n257), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n151), .CK(clk), .RN(n257), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n150), .CK(clk), .RN(n257), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n149), .CK(clk), .RN(n257), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n148), .CK(clk), .RN(n257), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n147), .CK(clk), .RN(n257), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n146), .CK(clk), .RN(n257), .Q(
        \reg_file[12][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n121), .CK(clk), .RN(n255), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n120), .CK(clk), .RN(n255), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n119), .CK(clk), .RN(n255), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n118), .CK(clk), .RN(n255), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n117), .CK(clk), .RN(n254), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n116), .CK(clk), .RN(n254), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n115), .CK(clk), .RN(n254), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n114), .CK(clk), .RN(n254), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n89), .CK(clk), .RN(n252), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n88), .CK(clk), .RN(n252), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n87), .CK(clk), .RN(n252), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n86), .CK(clk), .RN(n252), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n85), .CK(clk), .RN(n252), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n84), .CK(clk), .RN(n252), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n83), .CK(clk), .RN(n252), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n82), .CK(clk), .RN(n252), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n49), .CK(clk), .RN(n249), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n48), .CK(clk), .RN(n250), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n47), .CK(clk), .RN(n249), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n46), .CK(clk), .RN(n249), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n45), .CK(clk), .RN(n249), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n44), .CK(clk), .RN(n249), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n43), .CK(clk), .RN(n249), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n42), .CK(clk), .RN(n249), .Q(RdData[0]) );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n74), .CK(clk), .RN(n251), .Q(REG3[0]) );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n67), .CK(clk), .RN(n251), .Q(REG2[1]) );
  DFFRQX2M RdData_VLD_reg ( .D(n41), .CK(clk), .RN(n254), .Q(RdData_VLD) );
  DFFSQX4M \reg_file_reg[3][5]  ( .D(n79), .CK(clk), .SN(n249), .Q(REG3[5]) );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n53), .CK(clk), .RN(n250), .Q(REG0[3]) );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n52), .CK(clk), .RN(n250), .Q(REG0[2]) );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n50), .CK(clk), .RN(n249), .Q(REG0[0]) );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n51), .CK(clk), .RN(n249), .Q(REG0[1]) );
  DFFRHQX8M \reg_file_reg[0][4]  ( .D(n54), .CK(clk), .RN(n250), .Q(REG0[4])
         );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n55), .CK(clk), .RN(n250), .Q(REG0[5]) );
  DFFSQX4M \reg_file_reg[2][0]  ( .D(n66), .CK(clk), .SN(n249), .Q(REG2[0]) );
  DFFSQX4M \reg_file_reg[2][7]  ( .D(n73), .CK(clk), .SN(rst), .Q(REG2[7]) );
  DFFRQX4M \reg_file_reg[3][1]  ( .D(n75), .CK(clk), .RN(n251), .Q(REG3[1]) );
  DFFRQX4M \reg_file_reg[2][4]  ( .D(n70), .CK(clk), .RN(n251), .Q(REG2[4]) );
  DFFRQX4M \reg_file_reg[3][4]  ( .D(n78), .CK(clk), .RN(n251), .Q(REG3[4]) );
  DFFRQX4M \reg_file_reg[3][3]  ( .D(n77), .CK(clk), .RN(n251), .Q(REG3[3]) );
  DFFRQX4M \reg_file_reg[3][2]  ( .D(n76), .CK(clk), .RN(n251), .Q(REG3[2]) );
  DFFRQX4M \reg_file_reg[3][6]  ( .D(n80), .CK(clk), .RN(n252), .Q(REG3[6]) );
  DFFRQX4M \reg_file_reg[3][7]  ( .D(n81), .CK(clk), .RN(n252), .Q(REG3[7]) );
  DFFRQX4M \reg_file_reg[2][3]  ( .D(n69), .CK(clk), .RN(n251), .Q(REG2[3]) );
  DFFRQX4M \reg_file_reg[2][2]  ( .D(n68), .CK(clk), .RN(n251), .Q(REG2[2]) );
  DFFRHQX2M \reg_file_reg[1][7]  ( .D(n65), .CK(clk), .RN(n250), .Q(n272) );
  DFFRQX4M \reg_file_reg[1][5]  ( .D(n63), .CK(clk), .RN(n251), .Q(n273) );
  DFFRHQX2M \reg_file_reg[1][4]  ( .D(n62), .CK(clk), .RN(n250), .Q(n274) );
  DFFRHQX2M \reg_file_reg[1][3]  ( .D(n61), .CK(clk), .RN(n250), .Q(n275) );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n59), .CK(clk), .RN(n250), .Q(n276) );
  DFFRHQX1M \reg_file_reg[1][0]  ( .D(n58), .CK(clk), .RN(n250), .Q(n277) );
  DFFRHQX4M \reg_file_reg[0][6]  ( .D(n56), .CK(clk), .RN(n250), .Q(REG0[6])
         );
  DFFRHQX4M \reg_file_reg[0][7]  ( .D(n57), .CK(clk), .RN(n250), .Q(REG0[7])
         );
  DFFRHQX4M \reg_file_reg[1][6]  ( .D(n64), .CK(clk), .RN(n251), .Q(REG1[6])
         );
  CLKBUFX24M U3 ( .A(n272), .Y(REG1[7]) );
  CLKINVX40M U4 ( .A(n5), .Y(REG1[4]) );
  INVX14M U5 ( .A(n274), .Y(n5) );
  CLKINVX40M U6 ( .A(n3), .Y(REG1[5]) );
  CLKINVX20M U7 ( .A(n273), .Y(n3) );
  CLKBUFX32M U8 ( .A(n277), .Y(REG1[0]) );
  BUFX20M U9 ( .A(n276), .Y(REG1[1]) );
  CLKINVX1M U10 ( .A(N11), .Y(n246) );
  BUFX10M U11 ( .A(n275), .Y(REG1[3]) );
  INVXLM U12 ( .A(REG1[6]), .Y(n9) );
  INVX2M U13 ( .A(n9), .Y(n10) );
  BUFX6M U14 ( .A(n260), .Y(n250) );
  BUFX4M U15 ( .A(n14), .Y(n245) );
  NOR2BX2M U16 ( .AN(n13), .B(N14), .Y(n28) );
  MX4XLM U17 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n210), 
        .S1(n209), .Y(n179) );
  MX4XLM U18 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n210), 
        .S1(n208), .Y(n183) );
  MX4XLM U19 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n211), 
        .S1(n208), .Y(n187) );
  MX4XLM U20 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n211), 
        .S1(n208), .Y(n191) );
  MX4XLM U21 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n211), 
        .S1(n209), .Y(n195) );
  MX4XLM U22 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n212), 
        .S1(n209), .Y(n199) );
  MX4XLM U23 ( .A(REG0[6]), .B(n10), .C(REG2[6]), .D(REG3[6]), .S0(n212), .S1(
        n209), .Y(n203) );
  MX4XLM U24 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n212), 
        .S1(n209), .Y(n207) );
  INVX8M U25 ( .A(WrData[6]), .Y(n271) );
  INVX2M U26 ( .A(N12), .Y(n248) );
  NOR2X4M U27 ( .A(n247), .B(N13), .Y(n16) );
  NOR2X4M U28 ( .A(n248), .B(N13), .Y(n21) );
  AND2X2M U29 ( .A(N13), .B(n247), .Y(n27) );
  AND2X2M U30 ( .A(N13), .B(n248), .Y(n24) );
  INVX4M U31 ( .A(n245), .Y(n262) );
  CLKBUFX8M U32 ( .A(N11), .Y(n211) );
  CLKBUFX8M U33 ( .A(n247), .Y(n208) );
  CLKBUFX6M U34 ( .A(N11), .Y(n210) );
  CLKBUFX8M U35 ( .A(n261), .Y(n249) );
  CLKBUFX8M U36 ( .A(n261), .Y(n251) );
  CLKBUFX8M U37 ( .A(n261), .Y(n252) );
  CLKBUFX8M U38 ( .A(n261), .Y(n253) );
  CLKBUFX8M U39 ( .A(n260), .Y(n254) );
  CLKBUFX8M U40 ( .A(n260), .Y(n255) );
  CLKBUFX8M U41 ( .A(n260), .Y(n256) );
  CLKBUFX8M U42 ( .A(rst), .Y(n257) );
  CLKBUFX8M U43 ( .A(n249), .Y(n258) );
  BUFX4M U44 ( .A(n251), .Y(n259) );
  NOR2X4M U45 ( .A(n263), .B(RdEn), .Y(n13) );
  NAND2X2M U46 ( .A(RdEn), .B(n263), .Y(n14) );
  CLKBUFX8M U47 ( .A(N11), .Y(n212) );
  CLKBUFX8M U48 ( .A(n247), .Y(n209) );
  BUFX2M U49 ( .A(rst), .Y(n261) );
  BUFX2M U50 ( .A(rst), .Y(n260) );
  BUFX4M U51 ( .A(n18), .Y(n242) );
  BUFX4M U52 ( .A(n30), .Y(n228) );
  BUFX4M U53 ( .A(n32), .Y(n226) );
  BUFX4M U54 ( .A(n34), .Y(n224) );
  BUFX4M U55 ( .A(n35), .Y(n222) );
  BUFX4M U56 ( .A(n20), .Y(n240) );
  BUFX4M U57 ( .A(n22), .Y(n238) );
  BUFX4M U58 ( .A(n15), .Y(n244) );
  INVX2M U59 ( .A(WrEn), .Y(n263) );
  BUFX4M U60 ( .A(n18), .Y(n241) );
  BUFX4M U61 ( .A(n30), .Y(n227) );
  BUFX4M U62 ( .A(n32), .Y(n225) );
  BUFX4M U63 ( .A(n34), .Y(n223) );
  BUFX4M U64 ( .A(n35), .Y(n221) );
  BUFX4M U65 ( .A(n20), .Y(n239) );
  BUFX4M U66 ( .A(n22), .Y(n237) );
  BUFX4M U67 ( .A(n15), .Y(n243) );
  INVX4M U68 ( .A(n11), .Y(n236) );
  INVX4M U69 ( .A(n11), .Y(n235) );
  INVX4M U70 ( .A(n12), .Y(n234) );
  INVX4M U71 ( .A(n12), .Y(n233) );
  INVX4M U72 ( .A(n23), .Y(n232) );
  INVX4M U73 ( .A(n23), .Y(n231) );
  INVX4M U74 ( .A(n25), .Y(n230) );
  INVX4M U75 ( .A(n25), .Y(n229) );
  INVX4M U76 ( .A(n26), .Y(n220) );
  INVX4M U77 ( .A(n26), .Y(n219) );
  INVX4M U78 ( .A(n29), .Y(n218) );
  INVX4M U79 ( .A(n29), .Y(n217) );
  INVX4M U80 ( .A(n36), .Y(n216) );
  INVX4M U81 ( .A(n36), .Y(n215) );
  INVX4M U82 ( .A(n37), .Y(n214) );
  INVX4M U83 ( .A(n37), .Y(n213) );
  AND2X2M U84 ( .A(n28), .B(n246), .Y(n17) );
  AND2X2M U85 ( .A(n28), .B(n210), .Y(n19) );
  AND2X2M U86 ( .A(n39), .B(n246), .Y(n31) );
  AND2X2M U87 ( .A(n39), .B(n210), .Y(n33) );
  NAND2X2M U88 ( .A(n16), .B(n17), .Y(n15) );
  NAND2X2M U89 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U90 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U91 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U92 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U93 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U94 ( .A(n31), .B(n21), .Y(n34) );
  NAND2X2M U95 ( .A(n33), .B(n21), .Y(n35) );
  AND2X2M U96 ( .A(n24), .B(n17), .Y(n11) );
  AND2X2M U97 ( .A(n24), .B(n19), .Y(n12) );
  AND2X2M U98 ( .A(n27), .B(n17), .Y(n23) );
  AND2X2M U99 ( .A(n27), .B(n19), .Y(n25) );
  AND2X2M U100 ( .A(n31), .B(n24), .Y(n26) );
  AND2X2M U101 ( .A(n33), .B(n24), .Y(n29) );
  AND2X2M U102 ( .A(n31), .B(n27), .Y(n36) );
  AND2X2M U103 ( .A(n33), .B(n27), .Y(n37) );
  INVX8M U104 ( .A(WrData[0]), .Y(n270) );
  INVX8M U105 ( .A(WrData[1]), .Y(n269) );
  INVX8M U106 ( .A(WrData[2]), .Y(n268) );
  INVX8M U107 ( .A(WrData[3]), .Y(n267) );
  INVX8M U108 ( .A(WrData[4]), .Y(n266) );
  INVX8M U109 ( .A(WrData[5]), .Y(n265) );
  INVX8M U110 ( .A(WrData[7]), .Y(n264) );
  INVX2M U111 ( .A(n248), .Y(n247) );
  OAI2BB2X1M U112 ( .B0(n243), .B1(n271), .A0N(REG0[6]), .A1N(n244), .Y(n56)
         );
  OAI2BB2X1M U113 ( .B0(n271), .B1(n241), .A0N(n10), .A1N(n242), .Y(n64) );
  OAI2BB2X1M U114 ( .B0(n271), .B1(n239), .A0N(REG2[6]), .A1N(n240), .Y(n72)
         );
  OAI2BB2X1M U115 ( .B0(n271), .B1(n237), .A0N(REG3[6]), .A1N(n238), .Y(n80)
         );
  OAI2BB2X1M U116 ( .B0(n271), .B1(n236), .A0N(\reg_file[4][6] ), .A1N(n236), 
        .Y(n88) );
  OAI2BB2X1M U117 ( .B0(n271), .B1(n234), .A0N(\reg_file[5][6] ), .A1N(n234), 
        .Y(n96) );
  OAI2BB2X1M U118 ( .B0(n271), .B1(n232), .A0N(\reg_file[6][6] ), .A1N(n232), 
        .Y(n104) );
  OAI2BB2X1M U119 ( .B0(n271), .B1(n230), .A0N(\reg_file[7][6] ), .A1N(n230), 
        .Y(n112) );
  OAI2BB2X1M U120 ( .B0(n271), .B1(n227), .A0N(\reg_file[8][6] ), .A1N(n228), 
        .Y(n120) );
  OAI2BB2X1M U121 ( .B0(n271), .B1(n225), .A0N(\reg_file[9][6] ), .A1N(n226), 
        .Y(n128) );
  OAI2BB2X1M U122 ( .B0(n271), .B1(n223), .A0N(\reg_file[10][6] ), .A1N(n224), 
        .Y(n136) );
  OAI2BB2X1M U123 ( .B0(n271), .B1(n221), .A0N(\reg_file[11][6] ), .A1N(n222), 
        .Y(n144) );
  OAI2BB2X1M U124 ( .B0(n271), .B1(n220), .A0N(\reg_file[12][6] ), .A1N(n220), 
        .Y(n152) );
  OAI2BB2X1M U125 ( .B0(n271), .B1(n218), .A0N(\reg_file[13][6] ), .A1N(n218), 
        .Y(n160) );
  OAI2BB2X1M U126 ( .B0(n271), .B1(n216), .A0N(\reg_file[14][6] ), .A1N(n216), 
        .Y(n168) );
  OAI2BB2X1M U127 ( .B0(n271), .B1(n214), .A0N(\reg_file[15][6] ), .A1N(n214), 
        .Y(n176) );
  OAI2BB2X1M U128 ( .B0(n244), .B1(n270), .A0N(REG0[0]), .A1N(n244), .Y(n50)
         );
  OAI2BB2X1M U129 ( .B0(n243), .B1(n269), .A0N(REG0[1]), .A1N(n244), .Y(n51)
         );
  OAI2BB2X1M U130 ( .B0(n243), .B1(n268), .A0N(REG0[2]), .A1N(n244), .Y(n52)
         );
  OAI2BB2X1M U131 ( .B0(n243), .B1(n267), .A0N(REG0[3]), .A1N(n244), .Y(n53)
         );
  OAI2BB2X1M U132 ( .B0(n243), .B1(n266), .A0N(REG0[4]), .A1N(n244), .Y(n54)
         );
  OAI2BB2X1M U133 ( .B0(n243), .B1(n265), .A0N(REG0[5]), .A1N(n244), .Y(n55)
         );
  OAI2BB2X1M U134 ( .B0(n243), .B1(n264), .A0N(REG0[7]), .A1N(n244), .Y(n57)
         );
  OAI2BB2X1M U135 ( .B0(n270), .B1(n242), .A0N(REG1[0]), .A1N(n242), .Y(n58)
         );
  OAI2BB2X1M U136 ( .B0(n269), .B1(n241), .A0N(REG1[1]), .A1N(n242), .Y(n59)
         );
  OAI2BB2X1M U137 ( .B0(n268), .B1(n241), .A0N(REG1[2]), .A1N(n242), .Y(n60)
         );
  OAI2BB2X1M U138 ( .B0(n267), .B1(n241), .A0N(REG1[3]), .A1N(n242), .Y(n61)
         );
  OAI2BB2X1M U139 ( .B0(n266), .B1(n241), .A0N(REG1[4]), .A1N(n242), .Y(n62)
         );
  OAI2BB2X1M U140 ( .B0(n265), .B1(n241), .A0N(REG1[5]), .A1N(n242), .Y(n63)
         );
  OAI2BB2X1M U141 ( .B0(n264), .B1(n241), .A0N(REG1[7]), .A1N(n242), .Y(n65)
         );
  OAI2BB2X1M U142 ( .B0(n269), .B1(n239), .A0N(REG2[1]), .A1N(n240), .Y(n67)
         );
  OAI2BB2X1M U143 ( .B0(n268), .B1(n239), .A0N(REG2[2]), .A1N(n240), .Y(n68)
         );
  OAI2BB2X1M U144 ( .B0(n267), .B1(n239), .A0N(REG2[3]), .A1N(n240), .Y(n69)
         );
  OAI2BB2X1M U145 ( .B0(n266), .B1(n239), .A0N(REG2[4]), .A1N(n240), .Y(n70)
         );
  OAI2BB2X1M U146 ( .B0(n265), .B1(n239), .A0N(REG2[5]), .A1N(n240), .Y(n71)
         );
  OAI2BB2X1M U147 ( .B0(n270), .B1(n238), .A0N(REG3[0]), .A1N(n238), .Y(n74)
         );
  OAI2BB2X1M U148 ( .B0(n269), .B1(n237), .A0N(REG3[1]), .A1N(n238), .Y(n75)
         );
  OAI2BB2X1M U149 ( .B0(n268), .B1(n237), .A0N(REG3[2]), .A1N(n238), .Y(n76)
         );
  OAI2BB2X1M U150 ( .B0(n267), .B1(n237), .A0N(REG3[3]), .A1N(n238), .Y(n77)
         );
  OAI2BB2X1M U151 ( .B0(n266), .B1(n237), .A0N(REG3[4]), .A1N(n238), .Y(n78)
         );
  OAI2BB2X1M U152 ( .B0(n264), .B1(n237), .A0N(REG3[7]), .A1N(n238), .Y(n81)
         );
  OAI2BB2X1M U153 ( .B0(n270), .B1(n236), .A0N(\reg_file[4][0] ), .A1N(n236), 
        .Y(n82) );
  OAI2BB2X1M U154 ( .B0(n269), .B1(n235), .A0N(\reg_file[4][1] ), .A1N(n235), 
        .Y(n83) );
  OAI2BB2X1M U155 ( .B0(n268), .B1(n236), .A0N(\reg_file[4][2] ), .A1N(n236), 
        .Y(n84) );
  OAI2BB2X1M U156 ( .B0(n267), .B1(n235), .A0N(\reg_file[4][3] ), .A1N(n235), 
        .Y(n85) );
  OAI2BB2X1M U157 ( .B0(n266), .B1(n236), .A0N(\reg_file[4][4] ), .A1N(n236), 
        .Y(n86) );
  OAI2BB2X1M U158 ( .B0(n265), .B1(n235), .A0N(\reg_file[4][5] ), .A1N(n235), 
        .Y(n87) );
  OAI2BB2X1M U159 ( .B0(n264), .B1(n235), .A0N(\reg_file[4][7] ), .A1N(n235), 
        .Y(n89) );
  OAI2BB2X1M U160 ( .B0(n270), .B1(n234), .A0N(\reg_file[5][0] ), .A1N(n234), 
        .Y(n90) );
  OAI2BB2X1M U161 ( .B0(n269), .B1(n233), .A0N(\reg_file[5][1] ), .A1N(n233), 
        .Y(n91) );
  OAI2BB2X1M U162 ( .B0(n268), .B1(n234), .A0N(\reg_file[5][2] ), .A1N(n234), 
        .Y(n92) );
  OAI2BB2X1M U163 ( .B0(n267), .B1(n233), .A0N(\reg_file[5][3] ), .A1N(n233), 
        .Y(n93) );
  OAI2BB2X1M U164 ( .B0(n266), .B1(n234), .A0N(\reg_file[5][4] ), .A1N(n234), 
        .Y(n94) );
  OAI2BB2X1M U165 ( .B0(n265), .B1(n233), .A0N(\reg_file[5][5] ), .A1N(n233), 
        .Y(n95) );
  OAI2BB2X1M U166 ( .B0(n264), .B1(n233), .A0N(\reg_file[5][7] ), .A1N(n233), 
        .Y(n97) );
  OAI2BB2X1M U167 ( .B0(n270), .B1(n232), .A0N(\reg_file[6][0] ), .A1N(n232), 
        .Y(n98) );
  OAI2BB2X1M U168 ( .B0(n269), .B1(n231), .A0N(\reg_file[6][1] ), .A1N(n231), 
        .Y(n99) );
  OAI2BB2X1M U169 ( .B0(n268), .B1(n232), .A0N(\reg_file[6][2] ), .A1N(n232), 
        .Y(n100) );
  OAI2BB2X1M U170 ( .B0(n267), .B1(n231), .A0N(\reg_file[6][3] ), .A1N(n231), 
        .Y(n101) );
  OAI2BB2X1M U171 ( .B0(n266), .B1(n232), .A0N(\reg_file[6][4] ), .A1N(n232), 
        .Y(n102) );
  OAI2BB2X1M U172 ( .B0(n265), .B1(n231), .A0N(\reg_file[6][5] ), .A1N(n231), 
        .Y(n103) );
  OAI2BB2X1M U173 ( .B0(n264), .B1(n231), .A0N(\reg_file[6][7] ), .A1N(n231), 
        .Y(n105) );
  OAI2BB2X1M U174 ( .B0(n270), .B1(n230), .A0N(\reg_file[7][0] ), .A1N(n230), 
        .Y(n106) );
  OAI2BB2X1M U175 ( .B0(n269), .B1(n229), .A0N(\reg_file[7][1] ), .A1N(n229), 
        .Y(n107) );
  OAI2BB2X1M U176 ( .B0(n268), .B1(n230), .A0N(\reg_file[7][2] ), .A1N(n230), 
        .Y(n108) );
  OAI2BB2X1M U177 ( .B0(n267), .B1(n229), .A0N(\reg_file[7][3] ), .A1N(n229), 
        .Y(n109) );
  OAI2BB2X1M U178 ( .B0(n266), .B1(n230), .A0N(\reg_file[7][4] ), .A1N(n230), 
        .Y(n110) );
  OAI2BB2X1M U179 ( .B0(n265), .B1(n229), .A0N(\reg_file[7][5] ), .A1N(n229), 
        .Y(n111) );
  OAI2BB2X1M U180 ( .B0(n264), .B1(n229), .A0N(\reg_file[7][7] ), .A1N(n229), 
        .Y(n113) );
  OAI2BB2X1M U181 ( .B0(n270), .B1(n228), .A0N(\reg_file[8][0] ), .A1N(n228), 
        .Y(n114) );
  OAI2BB2X1M U182 ( .B0(n269), .B1(n227), .A0N(\reg_file[8][1] ), .A1N(n228), 
        .Y(n115) );
  OAI2BB2X1M U183 ( .B0(n268), .B1(n227), .A0N(\reg_file[8][2] ), .A1N(n228), 
        .Y(n116) );
  OAI2BB2X1M U184 ( .B0(n267), .B1(n227), .A0N(\reg_file[8][3] ), .A1N(n228), 
        .Y(n117) );
  OAI2BB2X1M U185 ( .B0(n266), .B1(n227), .A0N(\reg_file[8][4] ), .A1N(n228), 
        .Y(n118) );
  OAI2BB2X1M U186 ( .B0(n265), .B1(n227), .A0N(\reg_file[8][5] ), .A1N(n228), 
        .Y(n119) );
  OAI2BB2X1M U187 ( .B0(n264), .B1(n227), .A0N(\reg_file[8][7] ), .A1N(n228), 
        .Y(n121) );
  OAI2BB2X1M U188 ( .B0(n270), .B1(n226), .A0N(\reg_file[9][0] ), .A1N(n226), 
        .Y(n122) );
  OAI2BB2X1M U189 ( .B0(n269), .B1(n225), .A0N(\reg_file[9][1] ), .A1N(n226), 
        .Y(n123) );
  OAI2BB2X1M U190 ( .B0(n268), .B1(n225), .A0N(\reg_file[9][2] ), .A1N(n226), 
        .Y(n124) );
  OAI2BB2X1M U191 ( .B0(n267), .B1(n225), .A0N(\reg_file[9][3] ), .A1N(n226), 
        .Y(n125) );
  OAI2BB2X1M U192 ( .B0(n266), .B1(n225), .A0N(\reg_file[9][4] ), .A1N(n226), 
        .Y(n126) );
  OAI2BB2X1M U193 ( .B0(n265), .B1(n225), .A0N(\reg_file[9][5] ), .A1N(n226), 
        .Y(n127) );
  OAI2BB2X1M U194 ( .B0(n264), .B1(n225), .A0N(\reg_file[9][7] ), .A1N(n226), 
        .Y(n129) );
  OAI2BB2X1M U195 ( .B0(n270), .B1(n224), .A0N(\reg_file[10][0] ), .A1N(n224), 
        .Y(n130) );
  OAI2BB2X1M U196 ( .B0(n269), .B1(n223), .A0N(\reg_file[10][1] ), .A1N(n224), 
        .Y(n131) );
  OAI2BB2X1M U197 ( .B0(n268), .B1(n223), .A0N(\reg_file[10][2] ), .A1N(n224), 
        .Y(n132) );
  OAI2BB2X1M U198 ( .B0(n267), .B1(n223), .A0N(\reg_file[10][3] ), .A1N(n224), 
        .Y(n133) );
  OAI2BB2X1M U199 ( .B0(n266), .B1(n223), .A0N(\reg_file[10][4] ), .A1N(n224), 
        .Y(n134) );
  OAI2BB2X1M U200 ( .B0(n265), .B1(n223), .A0N(\reg_file[10][5] ), .A1N(n224), 
        .Y(n135) );
  OAI2BB2X1M U201 ( .B0(n264), .B1(n223), .A0N(\reg_file[10][7] ), .A1N(n224), 
        .Y(n137) );
  OAI2BB2X1M U202 ( .B0(n270), .B1(n222), .A0N(\reg_file[11][0] ), .A1N(n222), 
        .Y(n138) );
  OAI2BB2X1M U203 ( .B0(n269), .B1(n221), .A0N(\reg_file[11][1] ), .A1N(n222), 
        .Y(n139) );
  OAI2BB2X1M U204 ( .B0(n268), .B1(n221), .A0N(\reg_file[11][2] ), .A1N(n222), 
        .Y(n140) );
  OAI2BB2X1M U205 ( .B0(n267), .B1(n221), .A0N(\reg_file[11][3] ), .A1N(n222), 
        .Y(n141) );
  OAI2BB2X1M U206 ( .B0(n266), .B1(n221), .A0N(\reg_file[11][4] ), .A1N(n222), 
        .Y(n142) );
  OAI2BB2X1M U207 ( .B0(n265), .B1(n221), .A0N(\reg_file[11][5] ), .A1N(n222), 
        .Y(n143) );
  OAI2BB2X1M U208 ( .B0(n264), .B1(n221), .A0N(\reg_file[11][7] ), .A1N(n222), 
        .Y(n145) );
  OAI2BB2X1M U209 ( .B0(n270), .B1(n220), .A0N(\reg_file[12][0] ), .A1N(n220), 
        .Y(n146) );
  OAI2BB2X1M U210 ( .B0(n269), .B1(n219), .A0N(\reg_file[12][1] ), .A1N(n219), 
        .Y(n147) );
  OAI2BB2X1M U211 ( .B0(n268), .B1(n220), .A0N(\reg_file[12][2] ), .A1N(n220), 
        .Y(n148) );
  OAI2BB2X1M U212 ( .B0(n267), .B1(n219), .A0N(\reg_file[12][3] ), .A1N(n219), 
        .Y(n149) );
  OAI2BB2X1M U213 ( .B0(n266), .B1(n220), .A0N(\reg_file[12][4] ), .A1N(n220), 
        .Y(n150) );
  OAI2BB2X1M U214 ( .B0(n265), .B1(n219), .A0N(\reg_file[12][5] ), .A1N(n219), 
        .Y(n151) );
  OAI2BB2X1M U215 ( .B0(n264), .B1(n219), .A0N(\reg_file[12][7] ), .A1N(n219), 
        .Y(n153) );
  OAI2BB2X1M U216 ( .B0(n270), .B1(n218), .A0N(\reg_file[13][0] ), .A1N(n218), 
        .Y(n154) );
  OAI2BB2X1M U217 ( .B0(n269), .B1(n217), .A0N(\reg_file[13][1] ), .A1N(n217), 
        .Y(n155) );
  OAI2BB2X1M U218 ( .B0(n268), .B1(n218), .A0N(\reg_file[13][2] ), .A1N(n218), 
        .Y(n156) );
  OAI2BB2X1M U219 ( .B0(n267), .B1(n217), .A0N(\reg_file[13][3] ), .A1N(n217), 
        .Y(n157) );
  OAI2BB2X1M U220 ( .B0(n266), .B1(n218), .A0N(\reg_file[13][4] ), .A1N(n218), 
        .Y(n158) );
  OAI2BB2X1M U221 ( .B0(n265), .B1(n217), .A0N(\reg_file[13][5] ), .A1N(n217), 
        .Y(n159) );
  OAI2BB2X1M U222 ( .B0(n264), .B1(n217), .A0N(\reg_file[13][7] ), .A1N(n217), 
        .Y(n161) );
  OAI2BB2X1M U223 ( .B0(n270), .B1(n216), .A0N(\reg_file[14][0] ), .A1N(n216), 
        .Y(n162) );
  OAI2BB2X1M U224 ( .B0(n269), .B1(n215), .A0N(\reg_file[14][1] ), .A1N(n215), 
        .Y(n163) );
  OAI2BB2X1M U225 ( .B0(n268), .B1(n216), .A0N(\reg_file[14][2] ), .A1N(n216), 
        .Y(n164) );
  OAI2BB2X1M U226 ( .B0(n267), .B1(n215), .A0N(\reg_file[14][3] ), .A1N(n215), 
        .Y(n165) );
  OAI2BB2X1M U227 ( .B0(n266), .B1(n216), .A0N(\reg_file[14][4] ), .A1N(n216), 
        .Y(n166) );
  OAI2BB2X1M U228 ( .B0(n265), .B1(n215), .A0N(\reg_file[14][5] ), .A1N(n215), 
        .Y(n167) );
  OAI2BB2X1M U229 ( .B0(n264), .B1(n215), .A0N(\reg_file[14][7] ), .A1N(n215), 
        .Y(n169) );
  OAI2BB2X1M U230 ( .B0(n270), .B1(n214), .A0N(\reg_file[15][0] ), .A1N(n214), 
        .Y(n170) );
  OAI2BB2X1M U231 ( .B0(n269), .B1(n213), .A0N(\reg_file[15][1] ), .A1N(n213), 
        .Y(n171) );
  OAI2BB2X1M U232 ( .B0(n268), .B1(n214), .A0N(\reg_file[15][2] ), .A1N(n214), 
        .Y(n172) );
  OAI2BB2X1M U233 ( .B0(n267), .B1(n213), .A0N(\reg_file[15][3] ), .A1N(n213), 
        .Y(n173) );
  OAI2BB2X1M U234 ( .B0(n266), .B1(n214), .A0N(\reg_file[15][4] ), .A1N(n214), 
        .Y(n174) );
  OAI2BB2X1M U235 ( .B0(n265), .B1(n213), .A0N(\reg_file[15][5] ), .A1N(n213), 
        .Y(n175) );
  OAI2BB2X1M U236 ( .B0(n264), .B1(n213), .A0N(\reg_file[15][7] ), .A1N(n213), 
        .Y(n177) );
  OAI2BB2X1M U237 ( .B0(n270), .B1(n240), .A0N(REG2[0]), .A1N(n240), .Y(n66)
         );
  OAI2BB2X1M U238 ( .B0(n264), .B1(n239), .A0N(REG2[7]), .A1N(n240), .Y(n73)
         );
  OAI2BB2X1M U239 ( .B0(n265), .B1(n237), .A0N(REG3[5]), .A1N(n238), .Y(n79)
         );
  AND2X2M U240 ( .A(N14), .B(n13), .Y(n39) );
  AO22X1M U241 ( .A0(N43), .A1(n262), .B0(RdData[0]), .B1(n245), .Y(n42) );
  MX4X1M U242 ( .A(n179), .B(n40), .C(n178), .D(n38), .S0(N14), .S1(N13), .Y(
        N43) );
  MX4X1M U243 ( .A(\reg_file[8][0] ), .B(\reg_file[9][0] ), .C(
        \reg_file[10][0] ), .D(\reg_file[11][0] ), .S0(n210), .S1(N12), .Y(n40) );
  AO22X1M U244 ( .A0(N42), .A1(n262), .B0(RdData[1]), .B1(n245), .Y(n43) );
  MX4X1M U245 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U246 ( .A(\reg_file[8][1] ), .B(\reg_file[9][1] ), .C(
        \reg_file[10][1] ), .D(\reg_file[11][1] ), .S0(n210), .S1(N12), .Y(
        n181) );
  AO22X1M U247 ( .A0(N41), .A1(n262), .B0(RdData[2]), .B1(n245), .Y(n44) );
  MX4X1M U248 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U249 ( .A(\reg_file[8][2] ), .B(\reg_file[9][2] ), .C(
        \reg_file[10][2] ), .D(\reg_file[11][2] ), .S0(n211), .S1(n208), .Y(
        n185) );
  AO22X1M U250 ( .A0(N40), .A1(n262), .B0(RdData[3]), .B1(n245), .Y(n45) );
  MX4X1M U251 ( .A(n191), .B(n189), .C(n190), .D(n188), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U252 ( .A(\reg_file[8][3] ), .B(\reg_file[9][3] ), .C(
        \reg_file[10][3] ), .D(\reg_file[11][3] ), .S0(n211), .S1(n208), .Y(
        n189) );
  AO22X1M U253 ( .A0(N39), .A1(n262), .B0(RdData[4]), .B1(n245), .Y(n46) );
  MX4X1M U254 ( .A(n195), .B(n193), .C(n194), .D(n192), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U255 ( .A(\reg_file[8][4] ), .B(\reg_file[9][4] ), .C(
        \reg_file[10][4] ), .D(\reg_file[11][4] ), .S0(n211), .S1(n208), .Y(
        n193) );
  AO22X1M U256 ( .A0(N38), .A1(n262), .B0(RdData[5]), .B1(n245), .Y(n47) );
  MX4X1M U257 ( .A(n199), .B(n197), .C(n198), .D(n196), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U258 ( .A(\reg_file[8][5] ), .B(\reg_file[9][5] ), .C(
        \reg_file[10][5] ), .D(\reg_file[11][5] ), .S0(n212), .S1(n209), .Y(
        n197) );
  AO22X1M U259 ( .A0(N37), .A1(n262), .B0(RdData[6]), .B1(n245), .Y(n48) );
  MX4X1M U260 ( .A(n203), .B(n201), .C(n202), .D(n200), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U261 ( .A(\reg_file[8][6] ), .B(\reg_file[9][6] ), .C(
        \reg_file[10][6] ), .D(\reg_file[11][6] ), .S0(n212), .S1(n209), .Y(
        n201) );
  AO22X1M U262 ( .A0(N36), .A1(n262), .B0(RdData[7]), .B1(n245), .Y(n49) );
  MX4X1M U263 ( .A(n207), .B(n205), .C(n206), .D(n204), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U264 ( .A(\reg_file[8][7] ), .B(\reg_file[9][7] ), .C(
        \reg_file[10][7] ), .D(\reg_file[11][7] ), .S0(n212), .S1(n209), .Y(
        n205) );
  AO21XLM U265 ( .A0(RdData_VLD), .A1(n13), .B0(n262), .Y(n41) );
  MX4X1M U266 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n211), .S1(n208), .Y(n186) );
  MX4X1M U267 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n211), .S1(n208), .Y(n190) );
  MX4X1M U268 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n211), .S1(n208), .Y(n194) );
  MX4X1M U269 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(n212), .S1(n209), .Y(n198) );
  MX4X1M U270 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(n212), .S1(n209), .Y(n202) );
  MX4X1M U271 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(
        \reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(n212), .S1(n209), .Y(n206) );
  MX4X1M U272 ( .A(\reg_file[12][2] ), .B(\reg_file[13][2] ), .C(
        \reg_file[14][2] ), .D(\reg_file[15][2] ), .S0(n211), .S1(n208), .Y(
        n184) );
  MX4X1M U273 ( .A(\reg_file[12][3] ), .B(\reg_file[13][3] ), .C(
        \reg_file[14][3] ), .D(\reg_file[15][3] ), .S0(n211), .S1(n208), .Y(
        n188) );
  MX4X1M U274 ( .A(\reg_file[12][4] ), .B(\reg_file[13][4] ), .C(
        \reg_file[14][4] ), .D(\reg_file[15][4] ), .S0(n211), .S1(n208), .Y(
        n192) );
  MX4X1M U275 ( .A(\reg_file[12][5] ), .B(\reg_file[13][5] ), .C(
        \reg_file[14][5] ), .D(\reg_file[15][5] ), .S0(n212), .S1(n209), .Y(
        n196) );
  MX4X1M U276 ( .A(\reg_file[12][6] ), .B(\reg_file[13][6] ), .C(
        \reg_file[14][6] ), .D(\reg_file[15][6] ), .S0(n212), .S1(n209), .Y(
        n200) );
  MX4X1M U277 ( .A(\reg_file[12][7] ), .B(\reg_file[13][7] ), .C(
        \reg_file[14][7] ), .D(\reg_file[15][7] ), .S0(n212), .S1(n209), .Y(
        n204) );
  MX4X1M U278 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(n210), .S1(n208), .Y(n178) );
  MX4X1M U279 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n210), .S1(n208), .Y(n182) );
  MX4X1M U280 ( .A(\reg_file[12][0] ), .B(\reg_file[13][0] ), .C(
        \reg_file[14][0] ), .D(\reg_file[15][0] ), .S0(n210), .S1(n208), .Y(
        n38) );
  MX4X1M U281 ( .A(\reg_file[12][1] ), .B(\reg_file[13][1] ), .C(
        \reg_file[14][1] ), .D(\reg_file[15][1] ), .S0(n210), .S1(n209), .Y(
        n180) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n28, n29, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
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
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n2, n5, n6, n7, n8,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27;

  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n20), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n19), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n20), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n19), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n18), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n17), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n20), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n21), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n21), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n22), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_2  ( .A(n2), .B(n22), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n23), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n22), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n23), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n20), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n22), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n19), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_2  ( .A(n5), .B(n22), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(n6), .B(n22), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n23), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n21), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n23), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n23), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n23), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n21), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n21), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n18), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n23), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  MX2X3M U1 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKINVX20M U2 ( .A(n8), .Y(quotient[7]) );
  MX2X3M U3 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND2X12M U4 ( .A(\u_div/CryTmp[6][2] ), .B(n15), .Y(quotient[6]) );
  BUFX10M U5 ( .A(n28), .Y(n7) );
  NAND2X12M U6 ( .A(n12), .B(n13), .Y(\u_div/PartRem[6][1] ) );
  NAND2X12M U7 ( .A(a[6]), .B(n11), .Y(n12) );
  INVX10M U8 ( .A(b[3]), .Y(n21) );
  BUFX18M U9 ( .A(\u_div/PartRem[3][2] ), .Y(n6) );
  CLKMX2X12M U10 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  BUFX10M U11 ( .A(n16), .Y(quotient[5]) );
  MX2X12M U12 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  AND2X12M U13 ( .A(\u_div/CryTmp[3][5] ), .B(n10), .Y(quotient[3]) );
  AND3X6M U14 ( .A(\u_div/CryTmp[7][1] ), .B(n23), .C(n22), .Y(n14) );
  INVX14M U15 ( .A(b[1]), .Y(n23) );
  INVX32M U16 ( .A(b[0]), .Y(n24) );
  CLKMX2X2M U17 ( .A(n6), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][3] ) );
  BUFX24M U18 ( .A(n29), .Y(quotient[2]) );
  MX2X8M U19 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(n7), .Y(
        \u_div/PartRem[4][1] ) );
  CLKINVX20M U20 ( .A(b[5]), .Y(n19) );
  BUFX6M U21 ( .A(n7), .Y(quotient[4]) );
  MX2X2M U22 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X2M U23 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2X2M U24 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X6M U25 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X12M U26 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  BUFX24M U28 ( .A(n27), .Y(n1) );
  BUFX16M U29 ( .A(\u_div/PartRem[6][2] ), .Y(n2) );
  AND2X1M U30 ( .A(\u_div/CryTmp[5][3] ), .B(n25), .Y(n16) );
  CLKAND2X6M U31 ( .A(\u_div/CryTmp[2][6] ), .B(n1), .Y(n29) );
  AND2X12M U32 ( .A(\u_div/CryTmp[1][7] ), .B(n17), .Y(quotient[1]) );
  CLKMX2X6M U33 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X12M U34 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  BUFX10M U35 ( .A(\u_div/PartRem[4][2] ), .Y(n5) );
  OR2X12M U36 ( .A(a[7]), .B(n24), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U37 ( .A(n24), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X1M U38 ( .A(a[5]), .B(n24), .Y(\u_div/CryTmp[5][1] ) );
  AND2X1M U39 ( .A(\u_div/CryTmp[4][4] ), .B(n26), .Y(n28) );
  AND3X12M U40 ( .A(n1), .B(n20), .C(n19), .Y(n26) );
  NAND2X12M U41 ( .A(n25), .B(n14), .Y(n8) );
  MX2X6M U42 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  NAND2X4M U43 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n13) );
  MX2X1M U44 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  MX2X1M U45 ( .A(n5), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][3] ) );
  AND2X1M U46 ( .A(n1), .B(n19), .Y(n10) );
  MX2X4M U47 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  AND2X1M U48 ( .A(n25), .B(n22), .Y(n15) );
  INVX4M U49 ( .A(quotient[6]), .Y(n11) );
  AND2X12M U50 ( .A(n26), .B(n21), .Y(n25) );
  INVX20M U51 ( .A(b[2]), .Y(n22) );
  MX2X1M U52 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  INVX16M U53 ( .A(b[4]), .Y(n20) );
  OR2X1M U54 ( .A(a[0]), .B(n24), .Y(\u_div/CryTmp[0][1] ) );
  NOR2X12M U55 ( .A(b[6]), .B(b[7]), .Y(n27) );
  MX2X1M U56 ( .A(n2), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][3] ) );
  MX2X1M U57 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U58 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  XNOR2X1M U59 ( .A(n24), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U60 ( .A(n24), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1M U61 ( .A(n24), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U62 ( .A(n24), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U63 ( .A(n24), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  OR2X1M U64 ( .A(a[6]), .B(n24), .Y(\u_div/CryTmp[6][1] ) );
  XNOR2X1M U65 ( .A(n24), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  CLKINVX1M U66 ( .A(b[7]), .Y(n17) );
  OR2X2M U67 ( .A(a[4]), .B(n24), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U68 ( .A(a[3]), .B(n24), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U69 ( .A(a[1]), .B(n24), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U70 ( .A(a[2]), .B(n24), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U71 ( .A(b[6]), .Y(n18) );
  CLKMX2X2M U72 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U73 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U74 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U75 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U76 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
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
  CLKINVX1M U1 ( .A(B[0]), .Y(n8) );
  INVXLM U2 ( .A(B[1]), .Y(n7) );
  INVXLM U3 ( .A(B[4]), .Y(n4) );
  INVXLM U4 ( .A(B[5]), .Y(n3) );
  INVXLM U5 ( .A(B[2]), .Y(n6) );
  INVXLM U6 ( .A(B[3]), .Y(n5) );
  INVXLM U7 ( .A(B[7]), .Y(n1) );
  INVX2M U8 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U9 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U10 ( .A(A[0]), .B(n8), .Y(carry[1]) );
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
  NOR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n11) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n12, n13, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
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
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
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
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
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
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U11 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U12 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U14 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U15 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U16 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U17 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  CLKXOR2X2M U18 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  NOR2X2M U19 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U20 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U21 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U22 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X2M U23 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X2M U24 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U25 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  CLKINVX4M U26 ( .A(A[4]), .Y(n28) );
  CLKINVX4M U27 ( .A(A[5]), .Y(n27) );
  CLKINVX4M U28 ( .A(A[6]), .Y(n26) );
  CLKINVX4M U29 ( .A(A[7]), .Y(n25) );
  CLKINVX4M U30 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U31 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U32 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U33 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U34 ( .A(B[0]), .Y(n24) );
  CLKINVX4M U35 ( .A(B[1]), .Y(n23) );
  CLKINVX4M U36 ( .A(B[7]), .Y(n17) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U40 ( .A(A[1]), .Y(n31) );
  AND2X2M U41 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U42 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U43 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  INVX4M U44 ( .A(A[2]), .Y(n30) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX4M U47 ( .A(A[3]), .Y(n29) );
  AND2X2M U48 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U49 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U51 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U52 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U53 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U54 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX4M U55 ( .A(B[6]), .Y(n18) );
  INVX4M U56 ( .A(A[0]), .Y(n32) );
  XOR2X1M U57 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U58 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U59 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
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
endmodule


module ALU ( A, B, ALU_FUN, clk, ALU_OUT, EN, rst, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, EN, rst;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N158, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n41, n42, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168;
  wire   [15:0] ALU_OUT_cmp;

  OAI2BB1X4M U77 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  ALU_DW_div_uns_0 div_37 ( .a({A[7:6], n28, n26, n23, n20, n17, n15}), .b({
        B[7], n14, B[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, 
        N125, N124}) );
  ALU_DW01_sub_0 sub_35 ( .A({1'b0, n108, n41, n28, n26, n23, n20, n17, n15}), 
        .B({1'b0, B[7], n7, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_34 ( .A({1'b0, n108, A[6], n28, n26, n23, n20, n17, n15}), 
        .B({1'b0, B[7], n7, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  ALU_DW02_mult_0 mult_36 ( .A({n108, n41, n28, n26, n23, n20, n17, n15}), .B(
        {B[7], n6, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_cmp[7]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_cmp[6]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_cmp[5]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_cmp[4]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_cmp[3]), .CK(clk), .RN(n119), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_cmp[2]), .CK(clk), .RN(n119), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_cmp[1]), .CK(clk), .RN(n119), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_cmp[15]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_cmp[14]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_cmp[13]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_cmp[12]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_cmp[11]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_cmp[10]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_cmp[9]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_cmp[8]), .CK(clk), .RN(n118), .Q(
        ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(clk), .RN(n119), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_cmp[0]), .CK(clk), .RN(n119), .Q(
        ALU_OUT[0]) );
  BUFX8M U3 ( .A(B[6]), .Y(n14) );
  NOR2X8M U4 ( .A(n9), .B(n163), .Y(ALU_OUT_cmp[0]) );
  AND3X6M U7 ( .A(n93), .B(n94), .C(n95), .Y(n9) );
  NOR2X4M U8 ( .A(n168), .B(n13), .Y(n105) );
  INVX6M U9 ( .A(EN), .Y(n163) );
  AOI31X2M U10 ( .A0(n81), .A1(n82), .A2(n83), .B0(n163), .Y(ALU_OUT_cmp[1])
         );
  AND3X2M U11 ( .A(n10), .B(n11), .C(n12), .Y(n82) );
  AOI222X4M U12 ( .A0(N108), .A1(n110), .B0(n15), .B1(n112), .C0(N124), .C1(n8), .Y(n94) );
  INVX2M U13 ( .A(A[7]), .Y(n42) );
  INVX4M U14 ( .A(A[5]), .Y(n27) );
  OR2X2M U15 ( .A(n107), .B(n164), .Y(n3) );
  NAND2X2M U16 ( .A(n99), .B(n105), .Y(n4) );
  AOI2B1X1M U17 ( .A1N(n145), .A0(n144), .B0(n143), .Y(n146) );
  INVX2M U18 ( .A(n146), .Y(n153) );
  INVX4M U19 ( .A(A[4]), .Y(n25) );
  INVX2M U20 ( .A(A[6]), .Y(n30) );
  INVX2M U21 ( .A(B[2]), .Y(n150) );
  INVX2M U22 ( .A(B[3]), .Y(n152) );
  INVX2M U23 ( .A(n14), .Y(n5) );
  INVXLM U24 ( .A(n5), .Y(n6) );
  CLKINVX2M U25 ( .A(n5), .Y(n7) );
  XNOR2X4M U26 ( .A(n41), .B(n7), .Y(n140) );
  OAI31X2M U27 ( .A0(n133), .A1(n124), .A2(n123), .B0(n134), .Y(n126) );
  AOI211X2M U28 ( .A0(n18), .A1(n149), .B0(n130), .C0(n122), .Y(n123) );
  NOR2X2M U29 ( .A(n147), .B(B[7]), .Y(n143) );
  AOI211X2M U30 ( .A0(n131), .A1(n161), .B0(n130), .C0(n129), .Y(n132) );
  NAND2BX2M U31 ( .AN(n124), .B(n135), .Y(n130) );
  OAI21X2M U32 ( .A0(n143), .A1(n128), .B0(n144), .Y(N158) );
  BUFX4M U33 ( .A(n49), .Y(n8) );
  NOR3BX2M U34 ( .AN(n105), .B(n167), .C(ALU_FUN[2]), .Y(n49) );
  NAND2XLM U35 ( .A(N125), .B(n8), .Y(n10) );
  NAND2X2M U36 ( .A(n113), .B(n161), .Y(n11) );
  NAND2X2M U37 ( .A(n18), .B(n111), .Y(n12) );
  NOR2X2M U38 ( .A(n150), .B(n21), .Y(n124) );
  NOR2X2M U39 ( .A(n148), .B(n15), .Y(n121) );
  NOR2X2M U40 ( .A(n152), .B(n24), .Y(n133) );
  NOR2X2M U41 ( .A(n13), .B(ALU_FUN[0]), .Y(n100) );
  BUFX6M U42 ( .A(A[0]), .Y(n15) );
  INVXLM U43 ( .A(B[4]), .Y(n157) );
  INVXLM U44 ( .A(B[5]), .Y(n156) );
  INVXLM U45 ( .A(B[7]), .Y(n155) );
  OAI21X1M U46 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  OAI21X1M U47 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  CLKINVX1M U48 ( .A(B[0]), .Y(n148) );
  NAND2X1M U49 ( .A(B[7]), .B(n147), .Y(n144) );
  INVX4M U50 ( .A(n3), .Y(n114) );
  INVX4M U51 ( .A(n3), .Y(n113) );
  INVX4M U52 ( .A(n4), .Y(n111) );
  INVX4M U53 ( .A(n4), .Y(n112) );
  OAI2BB1X2M U54 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[15]) );
  OAI2BB1X2M U55 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[14]) );
  OAI2BB1X2M U56 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[13]) );
  OAI2BB1X2M U57 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[12]) );
  OAI2BB1X2M U58 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[10]) );
  OAI2BB1X2M U59 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[11]) );
  CLKAND2X6M U60 ( .A(n106), .B(n105), .Y(n50) );
  INVX4M U61 ( .A(n91), .Y(n165) );
  INVX2M U62 ( .A(n100), .Y(n164) );
  OAI2BB1X2M U63 ( .A0N(N117), .A1N(n31), .B0(n32), .Y(ALU_OUT_cmp[9]) );
  CLKBUFX6M U64 ( .A(n47), .Y(n117) );
  OAI2BB1X2M U65 ( .A0N(n166), .A1N(n105), .B0(n101), .Y(n47) );
  INVX2M U66 ( .A(n107), .Y(n166) );
  BUFX4M U67 ( .A(n46), .Y(n115) );
  BUFX4M U68 ( .A(n46), .Y(n116) );
  NOR2BX8M U69 ( .AN(n110), .B(n163), .Y(n31) );
  CLKBUFX6M U70 ( .A(n37), .Y(n109) );
  NOR2BX2M U71 ( .AN(n106), .B(n164), .Y(n37) );
  AOI31X2M U72 ( .A0(n51), .A1(n52), .A2(n53), .B0(n163), .Y(ALU_OUT_cmp[6])
         );
  AOI22X1M U73 ( .A0(N105), .A1(n50), .B0(N96), .B1(n109), .Y(n51) );
  AOI221X2M U74 ( .A0(n165), .A1(n108), .B0(n114), .B1(n158), .C0(n54), .Y(n53) );
  AOI222X2M U75 ( .A0(N114), .A1(n110), .B0(n111), .B1(n41), .C0(N130), .C1(n8), .Y(n52) );
  INVX4M U76 ( .A(ALU_FUN[0]), .Y(n168) );
  INVX4M U78 ( .A(ALU_FUN[1]), .Y(n167) );
  AND4X1M U79 ( .A(N158), .B(n99), .C(n13), .D(n168), .Y(n90) );
  NOR2X4M U80 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND3X2M U81 ( .A(n106), .B(ALU_FUN[0]), .C(n13), .Y(n101) );
  AND2X2M U82 ( .A(ALU_FUN[2]), .B(n167), .Y(n99) );
  NAND3X4M U83 ( .A(n166), .B(n168), .C(n13), .Y(n36) );
  NAND2X4M U84 ( .A(EN), .B(n154), .Y(n32) );
  NAND2X2M U85 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  NAND3X2M U86 ( .A(n13), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  AND3X2M U87 ( .A(n106), .B(n168), .C(n13), .Y(n46) );
  CLKBUFX6M U88 ( .A(n35), .Y(n110) );
  NOR3X2M U89 ( .A(n164), .B(ALU_FUN[2]), .C(n167), .Y(n35) );
  INVX2M U90 ( .A(n108), .Y(n147) );
  INVX4M U91 ( .A(n18), .Y(n161) );
  INVX2M U92 ( .A(n21), .Y(n160) );
  INVX2M U93 ( .A(n24), .Y(n159) );
  INVX2M U94 ( .A(n41), .Y(n158) );
  INVX6M U95 ( .A(n120), .Y(n118) );
  INVX4M U96 ( .A(n120), .Y(n119) );
  AOI22X1M U97 ( .A0(N99), .A1(n50), .B0(N90), .B1(n109), .Y(n93) );
  AOI211X2M U98 ( .A0(n114), .A1(n162), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X2M U99 ( .A0(N91), .A1(n109), .B0(N109), .B1(n110), .C0(N100), .C1(
        n50), .Y(n81) );
  AOI211X2M U100 ( .A0(n21), .A1(n165), .B0(n84), .C0(n85), .Y(n83) );
  AOI31X2M U101 ( .A0(n75), .A1(n76), .A2(n77), .B0(n163), .Y(ALU_OUT_cmp[2])
         );
  AOI22X1M U102 ( .A0(N101), .A1(n50), .B0(N92), .B1(n109), .Y(n75) );
  AOI221X2M U103 ( .A0(n24), .A1(n165), .B0(n114), .B1(n160), .C0(n78), .Y(n77) );
  AOI222X2M U104 ( .A0(N110), .A1(n110), .B0(n21), .B1(n111), .C0(N126), .C1(
        n8), .Y(n76) );
  INVX4M U105 ( .A(n27), .Y(n28) );
  INVX4M U106 ( .A(n16), .Y(n17) );
  INVX4M U107 ( .A(n25), .Y(n26) );
  INVX4M U108 ( .A(n19), .Y(n20) );
  AOI31X2M U109 ( .A0(n69), .A1(n70), .A2(n71), .B0(n163), .Y(ALU_OUT_cmp[3])
         );
  AOI22X1M U110 ( .A0(N102), .A1(n50), .B0(N93), .B1(n109), .Y(n69) );
  AOI221X2M U111 ( .A0(A[4]), .A1(n165), .B0(n114), .B1(n159), .C0(n72), .Y(
        n71) );
  AOI222X2M U112 ( .A0(N111), .A1(n110), .B0(n24), .B1(n112), .C0(N127), .C1(
        n8), .Y(n70) );
  INVX4M U113 ( .A(n22), .Y(n23) );
  AOI31X2M U114 ( .A0(n63), .A1(n64), .A2(n65), .B0(n163), .Y(ALU_OUT_cmp[4])
         );
  AOI22X1M U115 ( .A0(N103), .A1(n50), .B0(N94), .B1(n109), .Y(n63) );
  AOI221X2M U116 ( .A0(n165), .A1(n29), .B0(n114), .B1(n25), .C0(n66), .Y(n65)
         );
  AOI222X2M U117 ( .A0(N112), .A1(n110), .B0(A[4]), .B1(n111), .C0(N128), .C1(
        n8), .Y(n64) );
  AOI31X2M U118 ( .A0(n57), .A1(n58), .A2(n59), .B0(n163), .Y(ALU_OUT_cmp[5])
         );
  AOI22X1M U119 ( .A0(N104), .A1(n50), .B0(N95), .B1(n109), .Y(n57) );
  AOI221X2M U120 ( .A0(n165), .A1(n41), .B0(n114), .B1(n27), .C0(n60), .Y(n59)
         );
  AOI222X2M U121 ( .A0(N113), .A1(n110), .B0(n29), .B1(n112), .C0(N129), .C1(
        n8), .Y(n58) );
  AOI31X2M U122 ( .A0(n38), .A1(n39), .A2(n40), .B0(n163), .Y(ALU_OUT_cmp[7])
         );
  AOI22X1M U123 ( .A0(N106), .A1(n50), .B0(N97), .B1(n109), .Y(n38) );
  AOI221X2M U124 ( .A0(n114), .A1(n42), .B0(n112), .B1(n108), .C0(n43), .Y(n40) );
  AOI22X1M U125 ( .A0(N131), .A1(n8), .B0(N115), .B1(n110), .Y(n39) );
  INVX4M U126 ( .A(n19), .Y(n21) );
  OAI222X1M U127 ( .A0(n55), .A1(n5), .B0(n14), .B1(n56), .C0(n36), .C1(n27), 
        .Y(n54) );
  AOI221X2M U128 ( .A0(n41), .A1(n115), .B0(n117), .B1(n158), .C0(n113), .Y(
        n56) );
  AOI221X2M U129 ( .A0(n116), .A1(n158), .B0(n41), .B1(n48), .C0(n112), .Y(n55) );
  CLKBUFX6M U130 ( .A(ALU_FUN[3]), .Y(n13) );
  INVX4M U131 ( .A(n22), .Y(n24) );
  INVX4M U132 ( .A(n16), .Y(n18) );
  INVX2M U133 ( .A(n92), .Y(n154) );
  AOI211X2M U134 ( .A0(N107), .A1(n50), .B0(n114), .C0(n117), .Y(n92) );
  AOI21X2M U135 ( .A0(n33), .A1(n34), .B0(n163), .Y(ALU_OUT_cmp[8]) );
  AOI2BB2X2M U136 ( .B0(N116), .B1(n110), .A0N(n42), .A1N(n36), .Y(n34) );
  AOI21X2M U137 ( .A0(N98), .A1(n109), .B0(n154), .Y(n33) );
  INVX4M U138 ( .A(n30), .Y(n41) );
  INVX4M U139 ( .A(n27), .Y(n29) );
  INVX4M U140 ( .A(n42), .Y(n108) );
  INVX2M U141 ( .A(n15), .Y(n162) );
  INVX2M U142 ( .A(rst), .Y(n120) );
  INVX2M U143 ( .A(A[1]), .Y(n16) );
  INVX2M U144 ( .A(A[2]), .Y(n19) );
  INVX2M U145 ( .A(A[3]), .Y(n22) );
  INVXLM U146 ( .A(n121), .Y(n149) );
  AOI221X2M U147 ( .A0(n15), .A1(n115), .B0(n117), .B1(n162), .C0(n113), .Y(
        n102) );
  AOI31X2M U148 ( .A0(N156), .A1(n13), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U149 ( .A(n167), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  INVXLM U150 ( .A(n132), .Y(n151) );
  AOI221X2M U151 ( .A0(n18), .A1(n115), .B0(n117), .B1(n161), .C0(n113), .Y(
        n87) );
  AOI31X2M U152 ( .A0(n153), .A1(n13), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U153 ( .A(n168), .B(ALU_FUN[2]), .C(n167), .Y(n89) );
  OAI222X1M U154 ( .A0(n44), .A1(n155), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n158), .Y(n43) );
  AOI221X2M U155 ( .A0(n116), .A1(n108), .B0(n117), .B1(n147), .C0(n114), .Y(
        n45) );
  AOI221X2M U156 ( .A0(n116), .A1(n147), .B0(n108), .B1(n48), .C0(n111), .Y(
        n44) );
  OAI222X1M U157 ( .A0(n67), .A1(n157), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n159), .Y(n66) );
  AOI221X2M U158 ( .A0(A[4]), .A1(n115), .B0(n117), .B1(n25), .C0(n113), .Y(
        n68) );
  AOI221X2M U159 ( .A0(n116), .A1(n25), .B0(A[4]), .B1(n48), .C0(n112), .Y(n67) );
  OAI222X1M U160 ( .A0(n61), .A1(n156), .B0(B[5]), .B1(n62), .C0(n36), .C1(n25), .Y(n60) );
  AOI221X2M U161 ( .A0(n29), .A1(n115), .B0(n117), .B1(n27), .C0(n113), .Y(n62) );
  AOI221X2M U162 ( .A0(n116), .A1(n27), .B0(n29), .B1(n48), .C0(n111), .Y(n61)
         );
  OAI222X1M U163 ( .A0(n79), .A1(n150), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n161), .Y(n78) );
  AOI221X2M U164 ( .A0(n21), .A1(n115), .B0(n117), .B1(n160), .C0(n113), .Y(
        n80) );
  AOI221X2M U165 ( .A0(n116), .A1(n160), .B0(n21), .B1(n48), .C0(n112), .Y(n79) );
  OAI222X1M U166 ( .A0(n73), .A1(n152), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n160), .Y(n72) );
  AOI221X2M U167 ( .A0(n24), .A1(n115), .B0(n117), .B1(n159), .C0(n113), .Y(
        n74) );
  AOI221X2M U168 ( .A0(n116), .A1(n159), .B0(n24), .B1(n48), .C0(n111), .Y(n73) );
  OAI2B2X1M U169 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n162), .Y(n85) );
  AOI221X2M U170 ( .A0(n116), .A1(n161), .B0(n18), .B1(n48), .C0(n111), .Y(n86) );
  OAI2B2X1M U171 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n161), .Y(n97) );
  AOI221X2M U172 ( .A0(n115), .A1(n162), .B0(n15), .B1(n48), .C0(n112), .Y(n98) );
  NAND2BX1M U173 ( .AN(B[4]), .B(A[4]), .Y(n136) );
  NAND2BX1M U174 ( .AN(A[4]), .B(B[4]), .Y(n125) );
  CLKNAND2X2M U175 ( .A(n136), .B(n125), .Y(n138) );
  CLKNAND2X2M U176 ( .A(n21), .B(n150), .Y(n135) );
  AOI21X1M U177 ( .A0(n121), .A1(n161), .B0(B[1]), .Y(n122) );
  CLKNAND2X2M U178 ( .A(n24), .B(n152), .Y(n134) );
  NAND2BX1M U179 ( .AN(n29), .B(B[5]), .Y(n141) );
  OAI211X1M U180 ( .A0(n138), .A1(n126), .B0(n125), .C0(n141), .Y(n127) );
  NAND2BX1M U181 ( .AN(B[5]), .B(n29), .Y(n137) );
  AOI32X1M U182 ( .A0(n127), .A1(n137), .A2(n140), .B0(n7), .B1(n30), .Y(n128)
         );
  CLKNAND2X2M U183 ( .A(n15), .B(n148), .Y(n131) );
  OA21X1M U184 ( .A0(n131), .A1(n161), .B0(B[1]), .Y(n129) );
  AOI31X1M U185 ( .A0(n151), .A1(n135), .A2(n134), .B0(n133), .Y(n139) );
  OAI2B11X1M U186 ( .A1N(n139), .A0(n138), .B0(n137), .C0(n136), .Y(n142) );
  AOI32X1M U187 ( .A0(n142), .A1(n141), .A2(n140), .B0(n41), .B1(n5), .Y(n145)
         );
  NOR2X1M U188 ( .A(N158), .B(n153), .Y(N156) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, 
        framing_error, str_glitch, parity_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, framing_error, str_glitch, parity_error;
  wire   SYNC_UART_RST, SYNC_REF_RST, UART_RX_V_OUT, UART_RX_V_SYNC,
         WrInc_Pulse, UART_TX_CLK, UART_TX_Busy_PULSE, FIFO_FULL,
         UART_TX_V_SYNC, UART_TX_Busy, WrInc_SYS, UART_RX_CLK, RF_RdData_VLD,
         RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD, ALU_CLK, n1, n2, n3, n4, n5,
         n6, n7, n8;
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

  RST_SYNC_stages2_0 U0_RST_SYNC ( .rst(RST_N), .clk(UART_CLK), .SYNC_RST(
        SYNC_UART_RST) );
  RST_SYNC_stages2_1 U1_RST_SYNC ( .rst(RST_N), .clk(REF_CLK), .SYNC_RST(
        SYNC_REF_RST) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 U0_ref_sync ( .unsync_bus(UART_RX_OUT), 
        .bus_enable(UART_RX_V_OUT), .clk(REF_CLK), .rst(n5), .enable_pulse(
        UART_RX_V_SYNC), .sync_bus(UART_RX_SYNC) );
  fifo_top_data_width8_FIFO_DEPTH8_pointer_width4 U0_FIFO ( .W_CLK(REF_CLK), 
        .W_RST(n5), .W_INC(WrInc_Pulse), .R_CLK(UART_TX_CLK), .R_RST(n7), 
        .R_INC(UART_TX_Busy_PULSE), .WR_DATA(UART_TX_IN), .FULL(FIFO_FULL), 
        .RD_DATA(UART_TX_SYNC), .EMPTY(UART_TX_V_SYNC) );
  PULSE_GEN_0 U1_WrInc_PULSE_GEN ( .clk(UART_TX_CLK), .rst(n7), .lvl_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE) );
  PULSE_GEN_1 U0_PULSE_GEN ( .clk(REF_CLK), .rst(n7), .lvl_sig(WrInc_SYS), 
        .pulse_sig(WrInc_Pulse) );
  ClkDiv_RATIO_WD8_0 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n5), .i_clk_en(
        1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_RATIO_WD8_1 U1_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n7), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), 
        .o_div_clk(UART_RX_CLK) );
  UART U0_UART ( .clk_rx(UART_RX_CLK), .clk_tx(UART_TX_CLK), .rst(n7), .RX_IN(
        n2), .prescale(UART_Config[7:2]), .PAR_EN(UART_Config[0]), .PAR_TYP(
        UART_Config[1]), .P_DATA(UART_RX_OUT), .data_Valid(UART_RX_V_OUT), 
        .Parity_Error(parity_error), .Stop_Error(framing_error), .str_glitch(
        str_glitch), .F_EMPTY(n1), .RD_DATA(UART_TX_SYNC), .TX_OUT(UART_TX_O), 
        .BUSY(UART_TX_Busy) );
  sys_ctrl U0_SYS_CTRL ( .clk(REF_CLK), .rst(n5), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_VLD), .FIFO_FULL(FIFO_FULL), .pulse_en(
        UART_RX_V_SYNC), .cmd(UART_RX_SYNC), .RdData(RF_RdData), 
        .RdData_Valid(RF_RdData_VLD), .WrEn(RF_WrEn), .RdEn(RF_RdEn), .Wr_D(
        RF_WrData), .ALU_FUN(ALU_FUN), .ALU_EN(ALU_EN), .Address(RF_Address), 
        .WR_INC(WrInc_SYS), .WrData(UART_TX_IN) );
  REG_FILE U0_RegFile ( .WrEn(RF_WrEn), .RdEn(RF_RdEn), .clk(REF_CLK), .rst(n5), .Address({RF_Address[3:2], n4, n3}), .WrData(RF_WrData), .RdData(RF_RdData), 
        .RdData_VLD(RF_RdData_VLD), .REG0(Operand_A), .REG1(Operand_B), .REG2(
        UART_Config), .REG3(DIV_RATIO) );
  ALU U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), .clk(ALU_CLK), 
        .ALU_OUT(ALU_OUT), .EN(ALU_EN), .rst(n5), .OUT_VALID(ALU_OUT_VLD) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(1'b1), .CLK(REF_CLK), .GATED_CLK(ALU_CLK) );
  INVX4M U2 ( .A(n6), .Y(n5) );
  INVX4M U3 ( .A(n8), .Y(n7) );
  INVX2M U4 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U5 ( .A(RF_Address[1]), .Y(n4) );
  BUFX2M U6 ( .A(RF_Address[0]), .Y(n3) );
  BUFX4M U7 ( .A(UART_RX_IN), .Y(n2) );
  INVX2M U8 ( .A(SYNC_REF_RST), .Y(n6) );
  INVX2M U9 ( .A(SYNC_UART_RST), .Y(n8) );
endmodule

