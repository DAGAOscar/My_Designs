// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Dec  1 14:11:55 2021
// Host        : Lab401-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Prescaler
   (CE,
    CLK,
    CLR,
    CE_0);
  input CE;
  input CLK;
  input CLR;
  output [0:0]CE_0;

  wire CE;
  wire [0:0]CE_0;
  wire CLK;
  wire CLR;
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
  wire \DIVIDER[24]_i_5_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [27:0]DIVIDER_reg;
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
  wire \DIVIDER_reg[24]_i_1_n_4 ;
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
  wire \Q_INT[3]_i_10_n_0 ;
  wire \Q_INT[3]_i_11_n_0 ;
  wire \Q_INT[3]_i_6_n_0 ;
  wire \Q_INT[3]_i_7_n_0 ;
  wire \Q_INT[3]_i_8_n_0 ;
  wire \Q_INT[3]_i_9_n_0 ;
  wire eqOp__26;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[27]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_3 
       (.I0(DIVIDER_reg[26]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_4 
       (.I0(DIVIDER_reg[25]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_5 
       (.I0(DIVIDER_reg[24]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[24]_i_1_n_4 ,\DIVIDER_reg[24]_i_1_n_5 ,\DIVIDER_reg[24]_i_1_n_6 ,\DIVIDER_reg[24]_i_1_n_7 }),
        .S({\DIVIDER[24]_i_2_n_0 ,\DIVIDER[24]_i_3_n_0 ,\DIVIDER[24]_i_4_n_0 ,\DIVIDER[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[25] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[24]_i_1_n_6 ),
        .Q(DIVIDER_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[26] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[24]_i_1_n_5 ),
        .Q(DIVIDER_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[27] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[24]_i_1_n_4 ),
        .Q(DIVIDER_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
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
        .CE(CE),
        .CLR(CLR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q_INT[3]_i_1 
       (.I0(eqOp__26),
        .I1(CE),
        .O(CE_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q_INT[3]_i_10 
       (.I0(DIVIDER_reg[9]),
        .I1(DIVIDER_reg[8]),
        .I2(DIVIDER_reg[11]),
        .I3(DIVIDER_reg[10]),
        .O(\Q_INT[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \Q_INT[3]_i_11 
       (.I0(DIVIDER_reg[19]),
        .I1(DIVIDER_reg[21]),
        .I2(DIVIDER_reg[17]),
        .I3(DIVIDER_reg[12]),
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
        .O(eqOp__26));
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
    .INIT(64'h0000008000000000)) 
    \Q_INT[3]_i_9 
       (.I0(DIVIDER_reg[22]),
        .I1(DIVIDER_reg[23]),
        .I2(DIVIDER_reg[24]),
        .I3(DIVIDER_reg[25]),
        .I4(DIVIDER_reg[27]),
        .I5(DIVIDER_reg[26]),
        .O(\Q_INT[3]_i_9_n_0 ));
endmodule

(* ECO_CHECKSUM = "daaba894" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire NET94;
  wire OE;
  wire [3:0]Q;
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
  IBUF OE_IBUF_inst
       (.I(OE),
        .O(Q_TRI));
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
        .\Q_INT_reg[3]_0 (NET94),
        .Q_OBUF(Q_OBUF),
        .SEL_IBUF(SEL_IBUF));
  Prescaler U2
       (.CE(CE_IBUF),
        .CE_0(NET94),
        .CLK(CLK_IBUF_BUFG),
        .CLR(CLR_IBUF));
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
