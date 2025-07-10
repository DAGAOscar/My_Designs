-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Dec 21 13:31:27 2021
-- Host        : LAPTOP-DTR1V5L5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    \DELAY_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_INT_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \eqOp__2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\Q_INT[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(1),
      I1 => DELAY(0),
      I2 => DELAY(2),
      I3 => \Q_INT_reg[3]\(0),
      I4 => \eqOp__2\,
      O => \DELAY_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \eqOp__2\ : out STD_LOGIC;
    \DIVIDER_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DIVIDER[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER[1]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER[2]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER[3]_i_1_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DELAY[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DIVIDER[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DIVIDER[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DIVIDER[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DIVIDER[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_INT[3]_i_3\ : label is "soft_lutpair2";
begin
\DELAY[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(3),
      I2 => DIVIDER_reg(1),
      I3 => DIVIDER_reg(2),
      I4 => \DIVIDER_reg[3]_0\(0),
      O => E(0)
    );
\DIVIDER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIVIDER_reg(0),
      O => \DIVIDER[0]_i_1_n_0\
    );
\DIVIDER[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(3),
      I2 => DIVIDER_reg(1),
      I3 => DIVIDER_reg(2),
      O => \DIVIDER[1]_i_1_n_0\
    );
\DIVIDER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(1),
      I2 => DIVIDER_reg(2),
      O => \DIVIDER[2]_i_1_n_0\
    );
\DIVIDER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(3),
      I2 => DIVIDER_reg(1),
      I3 => DIVIDER_reg(2),
      O => \DIVIDER[3]_i_1_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \DIVIDER_reg[3]_0\(0),
      CLR => AR(0),
      D => \DIVIDER[0]_i_1_n_0\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \DIVIDER_reg[3]_0\(0),
      CLR => AR(0),
      D => \DIVIDER[1]_i_1_n_0\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \DIVIDER_reg[3]_0\(0),
      CLR => AR(0),
      D => \DIVIDER[2]_i_1_n_0\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \DIVIDER_reg[3]_0\(0),
      CLR => AR(0),
      D => \DIVIDER[3]_i_1_n_0\,
      Q => DIVIDER_reg(3)
    );
\Q_INT[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => DIVIDER_reg(1),
      I2 => DIVIDER_reg(3),
      I3 => DIVIDER_reg(0),
      O => \eqOp__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TutorVHDL is
  port (
    Q_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_INT_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    LOAD_IBUF : in STD_LOGIC;
    DIR_IBUF : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC
  );
end TutorVHDL;

architecture STRUCTURE of TutorVHDL is
  signal L_DAT : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_INT[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT[1]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT[1]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT[2]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT[2]_i_3_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_4_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_5_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_INT_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_INT_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q_INT_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q_INT_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q_INT_reg_n_0_[3]\ : STD_LOGIC;
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
\L_DAT_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(0),
      G => E(0),
      GE => '1',
      Q => L_DAT(0)
    );
\L_DAT_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(1),
      G => E(0),
      GE => '1',
      Q => L_DAT(1)
    );
\L_DAT_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(2),
      G => E(0),
      GE => '1',
      Q => L_DAT(2)
    );
\L_DAT_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(3),
      G => E(0),
      GE => '1',
      Q => L_DAT(3)
    );
\Q_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => D(0),
      I1 => LOAD_IBUF,
      I2 => \Q_INT_reg_n_0_[0]\,
      O => \Q_INT[0]_i_1_n_0\
    );
\Q_INT[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888BB8B88BB888"
    )
        port map (
      I0 => D(1),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => \Q_INT_reg_n_0_[1]\,
      I4 => \Q_INT_reg_n_0_[3]\,
      I5 => \Q_INT_reg_n_0_[0]\,
      O => \Q_INT[1]_i_2_n_0\
    );
\Q_INT[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B88B"
    )
        port map (
      I0 => D(1),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => \Q_INT_reg_n_0_[1]\,
      I4 => \Q_INT_reg_n_0_[0]\,
      O => \Q_INT[1]_i_3_n_0\
    );
\Q_INT[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888888B8888"
    )
        port map (
      I0 => D(2),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => \Q_INT_reg_n_0_[0]\,
      I4 => \Q_INT_reg_n_0_[3]\,
      I5 => \Q_INT_reg_n_0_[1]\,
      O => \Q_INT[2]_i_2_n_0\
    );
\Q_INT[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBB8"
    )
        port map (
      I0 => D(2),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => \Q_INT_reg_n_0_[0]\,
      I4 => \Q_INT_reg_n_0_[1]\,
      O => \Q_INT[2]_i_3_n_0\
    );
\Q_INT[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B8888BBB8888B"
    )
        port map (
      I0 => D(3),
      I1 => LOAD_IBUF,
      I2 => DIR_IBUF,
      I3 => \Q_INT_reg_n_0_[1]\,
      I4 => \Q_INT_reg_n_0_[3]\,
      I5 => \Q_INT_reg_n_0_[0]\,
      O => \Q_INT[3]_i_4_n_0\
    );
\Q_INT[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => D(3),
      I1 => LOAD_IBUF,
      I2 => \Q_INT_reg_n_0_[0]\,
      I3 => \Q_INT_reg_n_0_[1]\,
      I4 => DIR_IBUF,
      I5 => \Q_INT_reg_n_0_[3]\,
      O => \Q_INT[3]_i_5_n_0\
    );
\Q_INT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => \Q_INT[0]_i_1_n_0\,
      Q => \Q_INT_reg_n_0_[0]\
    );
\Q_INT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => \Q_INT_reg[1]_i_1_n_0\,
      Q => \Q_INT_reg_n_0_[1]\
    );
\Q_INT_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[1]_i_2_n_0\,
      I1 => \Q_INT[1]_i_3_n_0\,
      O => \Q_INT_reg[1]_i_1_n_0\,
      S => \Q_INT_reg_n_0_[2]\
    );
\Q_INT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => \Q_INT_reg[2]_i_1_n_0\,
      Q => \Q_INT_reg_n_0_[2]\
    );
\Q_INT_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[2]_i_2_n_0\,
      I1 => \Q_INT[2]_i_3_n_0\,
      O => \Q_INT_reg[2]_i_1_n_0\,
      S => \Q_INT_reg_n_0_[2]\
    );
\Q_INT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => \Q_INT_reg[3]_i_2_n_0\,
      Q => \Q_INT_reg_n_0_[3]\
    );
\Q_INT_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_INT[3]_i_4_n_0\,
      I1 => \Q_INT[3]_i_5_n_0\,
      O => \Q_INT_reg[3]_i_2_n_0\,
      S => \Q_INT_reg_n_0_[2]\
    );
\Q_OBUFT[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(0),
      I1 => SEL_IBUF,
      I2 => \Q_INT_reg_n_0_[0]\,
      O => Q_OBUF(0)
    );
\Q_OBUFT[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(1),
      I1 => SEL_IBUF,
      I2 => \Q_INT_reg_n_0_[1]\,
      O => Q_OBUF(1)
    );
\Q_OBUFT[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(2),
      I1 => SEL_IBUF,
      I2 => \Q_INT_reg_n_0_[2]\,
      O => Q_OBUF(2)
    );
\Q_OBUFT[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DAT(3),
      I1 => SEL_IBUF,
      I2 => \Q_INT_reg_n_0_[3]\,
      O => Q_OBUF(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LOAD : in STD_LOGIC;
    DIR : in STD_LOGIC;
    LE : in STD_LOGIC;
    OE : in STD_LOGIC;
    SEL : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PUSH : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal CEI : STD_LOGIC;
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DIR_IBUF : STD_LOGIC;
  signal LE_IBUF : STD_LOGIC;
  signal LE_IBUF_BUFG : STD_LOGIC;
  signal LOAD_IBUF : STD_LOGIC;
  signal OE_IBUF : STD_LOGIC;
  signal PE : STD_LOGIC;
  signal PUSH_IBUF : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_TRI[0]\ : STD_LOGIC;
  signal SEL_IBUF : STD_LOGIC;
  signal \eqOp__2\ : STD_LOGIC;
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
OE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => OE,
      O => OE_IBUF
    );
PUSH_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PUSH,
      O => PUSH_IBUF
    );
\Q_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(0),
      O => Q(0),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(1),
      O => Q(1),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(2),
      O => Q(2),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(3),
      O => Q(3),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[3]_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OE_IBUF,
      O => \Q_TRI[0]\
    );
SEL_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SEL,
      O => SEL_IBUF
    );
U1: entity work.TutorVHDL
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(3 downto 0) => DATA_IBUF(3 downto 0),
      DIR_IBUF => DIR_IBUF,
      E(0) => LE_IBUF_BUFG,
      LOAD_IBUF => LOAD_IBUF,
      \Q_INT_reg[3]_0\(0) => PE,
      Q_OBUF(3 downto 0) => Q_OBUF(3 downto 0),
      SEL_IBUF => SEL_IBUF
    );
U2: entity work.Prescaler
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      \DIVIDER_reg[3]_0\(0) => CE_IBUF,
      E(0) => CEI,
      \eqOp__2\ => \eqOp__2\
    );
U3: entity work.Debouncer
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => PUSH_IBUF,
      \DELAY_reg[1]_0\(0) => PE,
      E(0) => CEI,
      \Q_INT_reg[3]\(0) => CE_IBUF,
      \eqOp__2\ => \eqOp__2\
    );
end STRUCTURE;
