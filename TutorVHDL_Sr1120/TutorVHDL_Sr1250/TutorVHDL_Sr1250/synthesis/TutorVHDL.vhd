-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Nov 24 13:13:25 2021
-- Host        : Lab401-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force TutorVHDL.vhd
-- Design      : TutorVHDL
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TutorVHDL is
  port (
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    DIR : in STD_LOGIC;
    SEL : in STD_LOGIC;
    OE : in STD_LOGIC;
    LE : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TutorVHDL : entity is true;
end TutorVHDL;

architecture STRUCTURE of TutorVHDL is
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DIR_IBUF : STD_LOGIC;
  signal LE_IBUF : STD_LOGIC;
  signal LE_IBUF_BUFG : STD_LOGIC;
  signal LOAD_IBUF : STD_LOGIC;
  signal L_DAT : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_INT : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_INT[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT[1]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT[1]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT[2]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT[2]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_TRI[0]\ : STD_LOGIC;
  signal SEL_IBUF : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \L_DAT_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DAT_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DAT_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DAT_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_INT[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_OBUFT[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_OBUFT[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q_OBUFT[3]_inst_i_1\ : label is "soft_lutpair1";
begin
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
\DATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(0),
      O => DATA_IBUF(0)
    );
\DATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(1),
      O => DATA_IBUF(1)
    );
\DATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(2),
      O => DATA_IBUF(2)
    );
\DATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(3),
      O => DATA_IBUF(3)
    );
DIR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIR,
      O => DIR_IBUF
    );
LE_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => LE_IBUF,
      O => LE_IBUF_BUFG
    );
LE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => LE,
      O => LE_IBUF
    );
LOAD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => LOAD,
      O => LOAD_IBUF
    );
\L_DAT_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CLR_IBUF,
      D => DATA_IBUF(0),
      G => LE_IBUF_BUFG,
      GE => '1',
      Q => L_DAT(0)
    );
\L_DAT_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CLR_IBUF,
      D => DATA_IBUF(1),
      G => LE_IBUF_BUFG,
      GE => '1',
      Q => L_DAT(1)
    );
\L_DAT_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CLR_IBUF,
      D => DATA_IBUF(2),
      G => LE_IBUF_BUFG,
      GE => '1',
      Q => L_DAT(2)
    );
\L_DAT_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CLR_IBUF,
      D => DATA_IBUF(3),
      G => LE_IBUF_BUFG,
      GE => '1',
      Q => L_DAT(3)
    );
OE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => OE,
      O => \Q_TRI[0]\
    );
\Q_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => DATA_IBUF(0),
      I1 => LOAD_IBUF,
      I2 => Q_INT(0),
      O => \Q_INT[0]_i_1_n_0\
    );
\Q_INT[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888BB8B88BB888"
    )
        port map (
      I0 => DATA_IBUF(1),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => Q_INT(1),
      I4 => Q_INT(3),
      I5 => Q_INT(0),
      O => \Q_INT[1]_i_2_n_0\
    );
\Q_INT[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B88B"
    )
        port map (
      I0 => DATA_IBUF(1),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => Q_INT(1),
      I4 => Q_INT(0),
      O => \Q_INT[1]_i_3_n_0\
    );
\Q_INT[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888888B8888"
    )
        port map (
      I0 => DATA_IBUF(2),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => Q_INT(0),
      I4 => Q_INT(3),
      I5 => Q_INT(1),
      O => \Q_INT[2]_i_2_n_0\
    );
\Q_INT[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBB8"
    )
        port map (
      I0 => DATA_IBUF(2),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => Q_INT(0),
      I4 => Q_INT(1),
      O => \Q_INT[2]_i_3_n_0\
    );
\Q_INT[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B8888BBB8888B"
    )
        port map (
      I0 => DATA_IBUF(3),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => Q_INT(1),
      I4 => Q_INT(3),
      I5 => Q_INT(0),
      O => \Q_INT[3]_i_2_n_0\
    );
\Q_INT[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => DATA_IBUF(3),
      I1 => LOAD_IBUF,
      I2 => Q_INT(0),
      I3 => Q_INT(1),
      I4 => DIR_IBUF,
      I5 => Q_INT(3),
      O => \Q_INT[3]_i_3_n_0\
    );
\Q_INT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \Q_INT[0]_i_1_n_0\,
      Q => Q_INT(0)
    );
\Q_INT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \Q_INT_reg[1]_i_1_n_0\,
      Q => Q_INT(1)
    );
\Q_INT_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[1]_i_2_n_0\,
      I1 => \Q_INT[1]_i_3_n_0\,
      O => \Q_INT_reg[1]_i_1_n_0\,
      S => Q_INT(2)
    );
\Q_INT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \Q_INT_reg[2]_i_1_n_0\,
      Q => Q_INT(2)
    );
\Q_INT_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[2]_i_2_n_0\,
      I1 => \Q_INT[2]_i_3_n_0\,
      O => \Q_INT_reg[2]_i_1_n_0\,
      S => Q_INT(2)
    );
\Q_INT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \Q_INT_reg[3]_i_1_n_0\,
      Q => Q_INT(3)
    );
\Q_INT_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[3]_i_2_n_0\,
      I1 => \Q_INT[3]_i_3_n_0\,
      O => \Q_INT_reg[3]_i_1_n_0\,
      S => Q_INT(2)
    );
\Q_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(0),
      O => Q(0),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(0),
      I1 => SEL_IBUF,
      I2 => Q_INT(0),
      O => Q_OBUF(0)
    );
\Q_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(1),
      O => Q(1),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(1),
      I1 => SEL_IBUF,
      I2 => Q_INT(1),
      O => Q_OBUF(1)
    );
\Q_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(2),
      O => Q(2),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(2),
      I1 => SEL_IBUF,
      I2 => Q_INT(2),
      O => Q_OBUF(2)
    );
\Q_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(3),
      O => Q(3),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(3),
      I1 => SEL_IBUF,
      I2 => Q_INT(3),
      O => Q_OBUF(3)
    );
SEL_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SEL,
      O => SEL_IBUF
    );
end STRUCTURE;
