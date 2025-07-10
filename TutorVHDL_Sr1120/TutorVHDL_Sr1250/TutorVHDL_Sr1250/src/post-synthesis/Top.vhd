-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Dec  1 14:10:49 2021
-- Host        : Lab401-09 running 64-bit major release  (build 9200)
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
entity Prescaler is
  port (
    CE_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CLR : in STD_LOGIC
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Q_INT[3]_i_10_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_11_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_6_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_7_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_8_n_0\ : STD_LOGIC;
  signal \Q_INT[3]_i_9_n_0\ : STD_LOGIC;
  signal \eqOp__26\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \eqOp__26\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \eqOp__26\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \eqOp__26\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \eqOp__26\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \eqOp__26\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \eqOp__26\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \eqOp__26\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \eqOp__26\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \eqOp__26\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \eqOp__26\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \eqOp__26\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \eqOp__26\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \eqOp__26\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => \eqOp__26\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \eqOp__26\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \eqOp__26\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \eqOp__26\,
      O => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(27),
      I1 => \eqOp__26\,
      O => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(26),
      I1 => \eqOp__26\,
      O => \DIVIDER[24]_i_3_n_0\
    );
\DIVIDER[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(25),
      I1 => \eqOp__26\,
      O => \DIVIDER[24]_i_4_n_0\
    );
\DIVIDER[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(24),
      I1 => \eqOp__26\,
      O => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \eqOp__26\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \eqOp__26\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \eqOp__26\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \eqOp__26\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \eqOp__26\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \eqOp__26\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \eqOp__26\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \eqOp__26\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[20]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[20]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[20]_i_1_n_4\,
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => \DIVIDER[20]_i_2_n_0\,
      S(2) => \DIVIDER[20]_i_3_n_0\,
      S(1) => \DIVIDER[20]_i_4_n_0\,
      S(0) => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[20]_i_1_n_4\,
      Q => DIVIDER_reg(23)
    );
\DIVIDER_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[24]_i_1_n_7\,
      Q => DIVIDER_reg(24)
    );
\DIVIDER_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[20]_i_1_n_0\,
      CO(3) => \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \DIVIDER_reg[24]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[24]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[24]_i_1_n_4\,
      O(2) => \DIVIDER_reg[24]_i_1_n_5\,
      O(1) => \DIVIDER_reg[24]_i_1_n_6\,
      O(0) => \DIVIDER_reg[24]_i_1_n_7\,
      S(3) => \DIVIDER[24]_i_2_n_0\,
      S(2) => \DIVIDER[24]_i_3_n_0\,
      S(1) => \DIVIDER[24]_i_4_n_0\,
      S(0) => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[24]_i_1_n_6\,
      Q => DIVIDER_reg(25)
    );
\DIVIDER_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[24]_i_1_n_5\,
      Q => DIVIDER_reg(26)
    );
\DIVIDER_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[24]_i_1_n_4\,
      Q => DIVIDER_reg(27)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE,
      CLR => CLR,
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\Q_INT[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \eqOp__26\,
      I1 => CE,
      O => CE_0(0)
    );
\Q_INT[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => DIVIDER_reg(8),
      I2 => DIVIDER_reg(11),
      I3 => DIVIDER_reg(10),
      O => \Q_INT[3]_i_10_n_0\
    );
\Q_INT[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => DIVIDER_reg(21),
      I2 => DIVIDER_reg(17),
      I3 => DIVIDER_reg(12),
      O => \Q_INT[3]_i_11_n_0\
    );
\Q_INT[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Q_INT[3]_i_6_n_0\,
      I1 => \Q_INT[3]_i_7_n_0\,
      I2 => \Q_INT[3]_i_8_n_0\,
      I3 => \Q_INT[3]_i_9_n_0\,
      I4 => \Q_INT[3]_i_10_n_0\,
      I5 => \Q_INT[3]_i_11_n_0\,
      O => \eqOp__26\
    );
\Q_INT[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => DIVIDER_reg(14),
      I2 => DIVIDER_reg(15),
      I3 => DIVIDER_reg(16),
      I4 => DIVIDER_reg(20),
      I5 => DIVIDER_reg(18),
      O => \Q_INT[3]_i_6_n_0\
    );
\Q_INT[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => DIVIDER_reg(0),
      I2 => DIVIDER_reg(3),
      I3 => DIVIDER_reg(2),
      O => \Q_INT[3]_i_7_n_0\
    );
\Q_INT[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => DIVIDER_reg(6),
      I2 => DIVIDER_reg(5),
      I3 => DIVIDER_reg(4),
      O => \Q_INT[3]_i_8_n_0\
    );
\Q_INT[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => DIVIDER_reg(23),
      I2 => DIVIDER_reg(24),
      I3 => DIVIDER_reg(25),
      I4 => DIVIDER_reg(27),
      I5 => DIVIDER_reg(26),
      O => \Q_INT[3]_i_9_n_0\
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
     port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => \Q_INT[0]_i_1_n_0\,
      Q => \Q_INT_reg_n_0_[0]\
    );
\Q_INT_reg[1]\: unisim.vcomponents.FDCE
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
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CE : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    DIR : in STD_LOGIC;
    SEL : in STD_LOGIC;
    OE : in STD_LOGIC;
    LE : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DIR_IBUF : STD_LOGIC;
  signal LE_IBUF : STD_LOGIC;
  signal LE_IBUF_BUFG : STD_LOGIC;
  signal LOAD_IBUF : STD_LOGIC;
  signal NET94 : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_TRI[0]\ : STD_LOGIC;
  signal SEL_IBUF : STD_LOGIC;
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
      O => \Q_TRI[0]\
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
      \Q_INT_reg[3]_0\(0) => NET94,
      Q_OBUF(3 downto 0) => Q_OBUF(3 downto 0),
      SEL_IBUF => SEL_IBUF
    );
U2: entity work.Prescaler
     port map (
      CE => CE_IBUF,
      CE_0(0) => NET94,
      CLK => CLK_IBUF_BUFG,
      CLR => CLR_IBUF
    );
end STRUCTURE;
