// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Dec 21 14:39:44 2021
// Host        : DESKTOP-B9MCHNV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CE_IBUF,
    CLK,
    eqOp__25,
    AR,
    D,
    \DELAY_reg[2]_0 ,
    E);
  input CE_IBUF;
  input CLK;
  input eqOp__25;
  input [0:0]AR;
  input [0:0]D;
  output [0:0]\DELAY_reg[2]_0 ;
  input [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire [0:0]\DELAY_reg[2]_0 ;
  wire [0:0]E;
  wire eqOp__25;

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
    .INIT(32'h20000000)) 
    \Q_INT[3]_i_1 
       (.I0(CE_IBUF),
        .I1(DELAY[2]),
        .I2(DELAY[0]),
        .I3(DELAY[1]),
        .I4(eqOp__25),
        .O(\DELAY_reg[2]_0 ));
endmodule

module Prescaler
   (CE_IBUF,
    CLK,
    eqOp__25,
    AR,
    E);
  input CE_IBUF;
  input CLK;
  output eqOp__25;
  input [0:0]AR;
  output [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[20]_i_5_n_0 ;
  wire \DIVIDER[24]_i_2_n_0 ;
  wire \DIVIDER[24]_i_3_n_0 ;
  wire \DIVIDER[24]_i_4_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [26:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_0 ;
  wire \DIVIDER_reg[20]_i_1_n_4 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[24]_i_1_n_5 ;
  wire \DIVIDER_reg[24]_i_1_n_6 ;
  wire \DIVIDER_reg[24]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire [0:0]E;
  wire \Q_INT[3]_i_10_n_0 ;
  wire \Q_INT[3]_i_11_n_0 ;
  wire \Q_INT[3]_i_6_n_0 ;
  wire \Q_INT[3]_i_7_n_0 ;
  wire \Q_INT[3]_i_8_n_0 ;
  wire \Q_INT[3]_i_9_n_0 ;
  wire eqOp__25;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \DELAY[2]_i_1 
       (.I0(eqOp__25),
        .I1(CE_IBUF),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__25),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(eqOp__25),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(eqOp__25),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(eqOp__25),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__25),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(eqOp__25),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(eqOp__25),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(eqOp__25),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(eqOp__25),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(eqOp__25),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(eqOp__25),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(eqOp__25),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(eqOp__25),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(eqOp__25),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(eqOp__25),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(eqOp__25),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(eqOp__25),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[26]),
        .I1(eqOp__25),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_3 
       (.I0(DIVIDER_reg[25]),
        .I1(eqOp__25),
        .O(\DIVIDER[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_4 
       (.I0(DIVIDER_reg[24]),
        .I1(eqOp__25),
        .O(\DIVIDER[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(eqOp__25),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(eqOp__25),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(eqOp__25),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(eqOp__25),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(eqOp__25),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(eqOp__25),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(eqOp__25),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(eqOp__25),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO({\DIVIDER_reg[20]_i_1_n_0 ,\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[20]_i_1_n_4 ,\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 ,\DIVIDER[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED [3],\DIVIDER_reg[24]_i_1_n_5 ,\DIVIDER_reg[24]_i_1_n_6 ,\DIVIDER_reg[24]_i_1_n_7 }),
        .S({1'b0,\DIVIDER[24]_i_2_n_0 ,\DIVIDER[24]_i_3_n_0 ,\DIVIDER[24]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[25] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_6 ),
        .Q(DIVIDER_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[26] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_5 ),
        .Q(DIVIDER_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT3 #(
    .INIT(8'h01)) 
    \Q_INT[3]_i_10 
       (.I0(DIVIDER_reg[10]),
        .I1(DIVIDER_reg[9]),
        .I2(DIVIDER_reg[8]),
        .O(\Q_INT[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q_INT[3]_i_11 
       (.I0(DIVIDER_reg[19]),
        .I1(DIVIDER_reg[17]),
        .I2(DIVIDER_reg[12]),
        .I3(DIVIDER_reg[11]),
        .O(\Q_INT[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q_INT[3]_i_3 
       (.I0(\Q_INT[3]_i_6_n_0 ),
        .I1(\Q_INT[3]_i_7_n_0 ),
        .I2(\Q_INT[3]_i_8_n_0 ),
        .I3(\Q_INT[3]_i_9_n_0 ),
        .I4(\Q_INT[3]_i_10_n_0 ),
        .I5(\Q_INT[3]_i_11_n_0 ),
        .O(eqOp__25));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q_INT[3]_i_6 
       (.I0(DIVIDER_reg[13]),
        .I1(DIVIDER_reg[14]),
        .I2(DIVIDER_reg[15]),
        .I3(DIVIDER_reg[16]),
        .I4(DIVIDER_reg[20]),
        .I5(DIVIDER_reg[18]),
        .O(\Q_INT[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \Q_INT[3]_i_7 
       (.I0(DIVIDER_reg[1]),
        .I1(DIVIDER_reg[0]),
        .I2(DIVIDER_reg[3]),
        .I3(DIVIDER_reg[2]),
        .O(\Q_INT[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \Q_INT[3]_i_8 
       (.I0(DIVIDER_reg[7]),
        .I1(DIVIDER_reg[6]),
        .I2(DIVIDER_reg[5]),
        .I3(DIVIDER_reg[4]),
        .O(\Q_INT[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \Q_INT[3]_i_9 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[23]),
        .I3(DIVIDER_reg[24]),
        .I4(DIVIDER_reg[25]),
        .I5(DIVIDER_reg[26]),
        .O(\Q_INT[3]_i_9_n_0 ));
endmodule

(* ECO_CHECKSUM = "58577a0d" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire NET116;
  wire NET281;
  wire OE;
  wire OE_IBUF;
  wire PUSH;
  wire PUSH_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire [0:0]Q_TRI;
  wire SEL;
  wire SEL_IBUF;
  wire eqOp__25;

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
        .\Q_INT_reg[3]_0 (NET116),
        .Q_OBUF(Q_OBUF),
        .SEL_IBUF(SEL_IBUF));
  Prescaler U2
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .E(NET281),
        .eqOp__25(eqOp__25));
  Debouncer U3
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(PUSH_IBUF),
        .\DELAY_reg[2]_0 (NET116),
        .E(NET281),
        .eqOp__25(eqOp__25));
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
