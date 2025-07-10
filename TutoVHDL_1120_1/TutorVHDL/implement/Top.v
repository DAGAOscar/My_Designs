// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Dec 21 13:33:57 2021
// Host        : LAPTOP-DTR1V5L5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CLK,
    eqOp__2,
    AR,
    D,
    \DELAY_reg[1]_0 ,
    E,
    \Q_INT_reg[3] );
  input CLK;
  input eqOp__2;
  input [0:0]AR;
  input [0:0]D;
  output [0:0]\DELAY_reg[1]_0 ;
  input [0:0]E;
  input [0:0]\Q_INT_reg[3] ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire [0:0]\DELAY_reg[1]_0 ;
  wire [0:0]E;
  wire [0:0]\Q_INT_reg[3] ;
  wire eqOp__2;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \Q_INT[3]_i_1 
       (.I0(DELAY[1]),
        .I1(DELAY[0]),
        .I2(DELAY[2]),
        .I3(\Q_INT_reg[3] ),
        .I4(eqOp__2),
        .O(\DELAY_reg[1]_0 ));
endmodule

module Prescaler
   (CLK,
    eqOp__2,
    AR,
    \DIVIDER_reg[3]_0 ,
    E);
  input CLK;
  output eqOp__2;
  input [0:0]AR;
  input [0:0]\DIVIDER_reg[3]_0 ;
  output [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire \DIVIDER[0]_i_1_n_0 ;
  wire \DIVIDER[1]_i_1_n_0 ;
  wire \DIVIDER[2]_i_1_n_0 ;
  wire \DIVIDER[3]_i_1_n_0 ;
  wire [3:0]DIVIDER_reg;
  wire [0:0]\DIVIDER_reg[3]_0 ;
  wire [0:0]E;
  wire eqOp__2;

  LUT5 #(
    .INIT(32'h00080000)) 
    \DELAY[2]_i_1 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[3]),
        .I2(DIVIDER_reg[1]),
        .I3(DIVIDER_reg[2]),
        .I4(\DIVIDER_reg[3]_0 ),
        .O(E));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \DIVIDER[0]_i_1 
       (.I0(DIVIDER_reg[0]),
        .O(\DIVIDER[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "200" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \DIVIDER[1]_i_1 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[3]),
        .I2(DIVIDER_reg[1]),
        .I3(DIVIDER_reg[2]),
        .O(\DIVIDER[1]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \DIVIDER[2]_i_1 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[1]),
        .I2(DIVIDER_reg[2]),
        .O(\DIVIDER[2]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "200" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \DIVIDER[3]_i_1 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[3]),
        .I2(DIVIDER_reg[1]),
        .I3(DIVIDER_reg[2]),
        .O(\DIVIDER[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(\DIVIDER_reg[3]_0 ),
        .CLR(AR),
        .D(\DIVIDER[0]_i_1_n_0 ),
        .Q(DIVIDER_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(\DIVIDER_reg[3]_0 ),
        .CLR(AR),
        .D(\DIVIDER[1]_i_1_n_0 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(\DIVIDER_reg[3]_0 ),
        .CLR(AR),
        .D(\DIVIDER[2]_i_1_n_0 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(\DIVIDER_reg[3]_0 ),
        .CLR(AR),
        .D(\DIVIDER[3]_i_1_n_0 ),
        .Q(DIVIDER_reg[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Q_INT[3]_i_3 
       (.I0(DIVIDER_reg[2]),
        .I1(DIVIDER_reg[1]),
        .I2(DIVIDER_reg[3]),
        .I3(DIVIDER_reg[0]),
        .O(eqOp__2));
endmodule

(* ECO_CHECKSUM = "651143f4" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (CE,
    CLK,
    CLR,
    DIR,
    LE,
    LOAD,
    OE,
    PUSH,
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
  input PUSH;
  input SEL;
  input [3:0]DATA;
  output [3:0]Q;

  wire CE;
  wire CEI;
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
  wire OE;
  wire OE_IBUF;
  wire PE;
  wire PUSH;
  wire PUSH_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire [0:0]Q_TRI;
  wire SEL;
  wire SEL_IBUF;
  wire eqOp__2;

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
  IBUF OE_IBUF_inst
       (.I(OE),
        .O(OE_IBUF));
  IBUF PUSH_IBUF_inst
       (.I(PUSH),
        .O(PUSH_IBUF));
  OBUFT \Q_OBUFT[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]),
        .T(Q_TRI));
  LUT1 #(
    .INIT(2'h1)) 
    \Q_OBUFT[3]_inst_i_2 
       (.I0(OE_IBUF),
        .O(Q_TRI));
  IBUF SEL_IBUF_inst
       (.I(SEL),
        .O(SEL_IBUF));
  TutorVHDL U1
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(DATA_IBUF),
        .DIR_IBUF(DIR_IBUF),
        .E(LE_IBUF_BUFG),
        .LOAD_IBUF(LOAD_IBUF),
        .\Q_INT_reg[3]_0 (PE),
        .Q_OBUF(Q_OBUF),
        .SEL_IBUF(SEL_IBUF));
  Prescaler U2
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .\DIVIDER_reg[3]_0 (CE_IBUF),
        .E(CEI),
        .eqOp__2(eqOp__2));
  Debouncer U3
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(PUSH_IBUF),
        .\DELAY_reg[1]_0 (PE),
        .E(CEI),
        .\Q_INT_reg[3] (CE_IBUF),
        .eqOp__2(eqOp__2));
endmodule

module TutorVHDL
   (CLK,
    DIR_IBUF,
    LOAD_IBUF,
    SEL_IBUF,
    AR,
    D,
    E,
    \Q_INT_reg[3]_0 ,
    Q_OBUF);
  input CLK;
  input DIR_IBUF;
  input LOAD_IBUF;
  input SEL_IBUF;
  input [0:0]AR;
  input [3:0]D;
  input [0:0]E;
  input [0:0]\Q_INT_reg[3]_0 ;
  output [3:0]Q_OBUF;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire DIR_IBUF;
  wire [0:0]E;
  wire LOAD_IBUF;
  wire [3:0]L_DAT;
  wire \Q_INT[0]_i_1_n_0 ;
  wire \Q_INT[1]_i_2_n_0 ;
  wire \Q_INT[1]_i_3_n_0 ;
  wire \Q_INT[2]_i_2_n_0 ;
  wire \Q_INT[2]_i_3_n_0 ;
  wire \Q_INT[3]_i_4_n_0 ;
  wire \Q_INT[3]_i_5_n_0 ;
  wire \Q_INT_reg[1]_i_1_n_0 ;
  wire \Q_INT_reg[2]_i_1_n_0 ;
  wire [0:0]\Q_INT_reg[3]_0 ;
  wire \Q_INT_reg[3]_i_2_n_0 ;
  wire [3:0]Q_INT_reg_n_0_;
  wire [3:0]Q_OBUF;
  wire SEL_IBUF;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[0] 
       (.CLR(AR),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(L_DAT[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[1] 
       (.CLR(AR),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(L_DAT[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[2] 
       (.CLR(AR),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(L_DAT[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DAT_reg[3] 
       (.CLR(AR),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(L_DAT[3]));
  LUT3 #(
    .INIT(8'h8B)) 
    \Q_INT[0]_i_1 
       (.I0(D[0]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg_n_0_[0]),
        .O(\Q_INT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B888BB8B88BB888)) 
    \Q_INT[1]_i_2 
       (.I0(D[1]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT_reg_n_0_[1]),
        .I4(Q_INT_reg_n_0_[3]),
        .I5(Q_INT_reg_n_0_[0]),
        .O(\Q_INT[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \Q_INT[1]_i_3 
       (.I0(D[1]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT_reg_n_0_[1]),
        .I4(Q_INT_reg_n_0_[0]),
        .O(\Q_INT[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888888B8888)) 
    \Q_INT[2]_i_2 
       (.I0(D[2]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT_reg_n_0_[0]),
        .I4(Q_INT_reg_n_0_[3]),
        .I5(Q_INT_reg_n_0_[1]),
        .O(\Q_INT[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBBBBB8)) 
    \Q_INT[2]_i_3 
       (.I0(D[2]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT_reg_n_0_[0]),
        .I4(Q_INT_reg_n_0_[1]),
        .O(\Q_INT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB8B8888BBB8888B)) 
    \Q_INT[3]_i_4 
       (.I0(D[3]),
        .I1(LOAD_IBUF),
        .I2(DIR_IBUF),
        .I3(Q_INT_reg_n_0_[1]),
        .I4(Q_INT_reg_n_0_[3]),
        .I5(Q_INT_reg_n_0_[0]),
        .O(\Q_INT[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \Q_INT[3]_i_5 
       (.I0(D[3]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg_n_0_[0]),
        .I3(Q_INT_reg_n_0_[1]),
        .I4(DIR_IBUF),
        .I5(Q_INT_reg_n_0_[3]),
        .O(\Q_INT[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[0] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(\Q_INT[0]_i_1_n_0 ),
        .Q(Q_INT_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[1] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(\Q_INT_reg[1]_i_1_n_0 ),
        .Q(Q_INT_reg_n_0_[1]));
  MUXF7 \Q_INT_reg[1]_i_1 
       (.I0(\Q_INT[1]_i_2_n_0 ),
        .I1(\Q_INT[1]_i_3_n_0 ),
        .O(\Q_INT_reg[1]_i_1_n_0 ),
        .S(Q_INT_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[2] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(\Q_INT_reg[2]_i_1_n_0 ),
        .Q(Q_INT_reg_n_0_[2]));
  MUXF7 \Q_INT_reg[2]_i_1 
       (.I0(\Q_INT[2]_i_2_n_0 ),
        .I1(\Q_INT[2]_i_3_n_0 ),
        .O(\Q_INT_reg[2]_i_1_n_0 ),
        .S(Q_INT_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[3] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(\Q_INT_reg[3]_i_2_n_0 ),
        .Q(Q_INT_reg_n_0_[3]));
  MUXF7 \Q_INT_reg[3]_i_2 
       (.I0(\Q_INT[3]_i_4_n_0 ),
        .I1(\Q_INT[3]_i_5_n_0 ),
        .O(\Q_INT_reg[3]_i_2_n_0 ),
        .S(Q_INT_reg_n_0_[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[0]_inst_i_1 
       (.I0(L_DAT[0]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg_n_0_[0]),
        .O(Q_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[1]_inst_i_1 
       (.I0(L_DAT[1]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg_n_0_[1]),
        .O(Q_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[2]_inst_i_1 
       (.I0(L_DAT[2]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg_n_0_[2]),
        .O(Q_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[3]_inst_i_1 
       (.I0(L_DAT[3]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg_n_0_[3]),
        .O(Q_OBUF[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
