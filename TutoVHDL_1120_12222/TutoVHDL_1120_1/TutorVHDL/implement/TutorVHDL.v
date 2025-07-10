// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Dec  8 10:36:29 2021
// Host        : Lab401-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force TutorVHDL.v
// Design      : TutorVHDL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "881c9c5" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module TutorVHDL
   (CE,
    CLK,
    CLR,
    DIR,
    LE,
    LOAD,
    OE,
    SEL,
    DATA,
    Q);
  input CE;
  input CLK;
  input CLR;
  input DIR;
  input LE;
  input LOAD;
  input OE;
  input SEL;
  input [3:0]DATA;
  output [3:0]Q;

  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [3:0]DATA;
  wire [3:0]DATA_IBUF;
  wire DIR;
  wire DIR_IBUF;
  wire LE;
  wire LE_IBUF;
  wire LE_IBUF_BUFG;
  wire LOAD;
  wire LOAD_IBUF;
  wire [3:0]L_DAT;
  wire OE;
  wire OE_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_INT;
  wire \Q_INT[0]_i_1_n_0 ;
  wire \Q_INT[1]_i_2_n_0 ;
  wire \Q_INT[1]_i_3_n_0 ;
  wire \Q_INT[2]_i_2_n_0 ;
  wire \Q_INT[2]_i_3_n_0 ;
  wire \Q_INT[3]_i_2_n_0 ;
  wire \Q_INT[3]_i_3_n_0 ;
  wire \Q_INT_reg[1]_i_1_n_0 ;
  wire \Q_INT_reg[2]_i_1_n_0 ;
  wire \Q_INT_reg[3]_i_1_n_0 ;
  wire [3:0]Q_OBUF;
  wire [0:0]Q_TRI;
  wire SEL;
  wire SEL_IBUF;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  IBUF \DATA_IBUF[0]_inst 
       (.I(DATA[0]),
        .O(DATA_IBUF[0]));
  IBUF \DATA_IBUF[1]_inst 
       (.I(DATA[1]),
        .O(DATA_IBUF[1]));
  IBUF \DATA_IBUF[2]_inst 
       (.I(DATA[2]),
        .O(DATA_IBUF[2]));
  IBUF \DATA_IBUF[3]_inst 
       (.I(DATA[3]),
        .O(DATA_IBUF[3]));
  IBUF DIR_IBUF_inst
       (.I(DIR),
        .O(DIR_IBUF));
  BUFG LE_IBUF_BUFG_inst
       (.I(LE_IBUF),
        .O(LE_IBUF_BUFG));
  IBUF LE_IBUF_inst
       (.I(LE),
        .O(LE_IBUF));
  IBUF LOAD_IBUF_inst
       (.I(LOAD),
        .O(LOAD_IBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[0] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[0]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DAT[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[1] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[1]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DAT[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[2] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[2]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DAT[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[3] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[3]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DAT[3]));
  IBUF OE_IBUF_inst
       (.I(OE),
        .O(OE_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \Q_INT[0]_i_1 
       (.I0(DATA_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(Q_INT[0]),
        .O(\Q_INT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B888BB8B88BB888)) 
    \Q_INT[1]_i_2 
       (.I0(DATA_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT[1]),
        .I4(Q_INT[3]),
        .I5(Q_INT[0]),
        .O(\Q_INT[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \Q_INT[1]_i_3 
       (.I0(DATA_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT[1]),
        .I4(Q_INT[0]),
        .O(\Q_INT[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888888B8888)) 
    \Q_INT[2]_i_2 
       (.I0(DATA_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT[0]),
        .I4(Q_INT[3]),
        .I5(Q_INT[1]),
        .O(\Q_INT[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBBBBB8)) 
    \Q_INT[2]_i_3 
       (.I0(DATA_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT[0]),
        .I4(Q_INT[1]),
        .O(\Q_INT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB8B8888BBB8888B)) 
    \Q_INT[3]_i_2 
       (.I0(DATA_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT[1]),
        .I4(Q_INT[3]),
        .I5(Q_INT[0]),
        .O(\Q_INT[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \Q_INT[3]_i_3 
       (.I0(DATA_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(Q_INT[0]),
        .I3(Q_INT[1]),
        .I4(DIR_IBUF),
        .I5(Q_INT[3]),
        .O(\Q_INT[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\Q_INT[0]_i_1_n_0 ),
        .Q(Q_INT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\Q_INT_reg[1]_i_1_n_0 ),
        .Q(Q_INT[1]));
  MUXF7 \Q_INT_reg[1]_i_1 
       (.I0(\Q_INT[1]_i_2_n_0 ),
        .I1(\Q_INT[1]_i_3_n_0 ),
        .O(\Q_INT_reg[1]_i_1_n_0 ),
        .S(Q_INT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\Q_INT_reg[2]_i_1_n_0 ),
        .Q(Q_INT[2]));
  MUXF7 \Q_INT_reg[2]_i_1 
       (.I0(\Q_INT[2]_i_2_n_0 ),
        .I1(\Q_INT[2]_i_3_n_0 ),
        .O(\Q_INT_reg[2]_i_1_n_0 ),
        .S(Q_INT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\Q_INT_reg[3]_i_1_n_0 ),
        .Q(Q_INT[3]));
  MUXF7 \Q_INT_reg[3]_i_1 
       (.I0(\Q_INT[3]_i_2_n_0 ),
        .I1(\Q_INT[3]_i_3_n_0 ),
        .O(\Q_INT_reg[3]_i_1_n_0 ),
        .S(Q_INT[2]));
  OBUFT \Q_OBUFT[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[0]_inst_i_1 
       (.I0(L_DAT[0]),
        .I1(SEL_IBUF),
        .I2(Q_INT[0]),
        .O(Q_OBUF[0]));
  OBUFT \Q_OBUFT[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]),
        .T(Q_TRI));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[1]_inst_i_1 
       (.I0(L_DAT[1]),
        .I1(SEL_IBUF),
        .I2(Q_INT[1]),
        .O(Q_OBUF[1]));
  OBUFT \Q_OBUFT[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[2]_inst_i_1 
       (.I0(L_DAT[2]),
        .I1(SEL_IBUF),
        .I2(Q_INT[2]),
        .O(Q_OBUF[2]));
  OBUFT \Q_OBUFT[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[3]_inst_i_1 
       (.I0(L_DAT[3]),
        .I1(SEL_IBUF),
        .I2(Q_INT[3]),
        .O(Q_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q_OBUFT[3]_inst_i_2 
       (.I0(OE_IBUF),
        .O(Q_TRI));
  IBUF SEL_IBUF_inst
       (.I(SEL),
        .O(SEL_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
