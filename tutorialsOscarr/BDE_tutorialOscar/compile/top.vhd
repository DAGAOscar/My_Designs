-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : BDE_tutorialOscar
-- Author      : daga@student.agh.edu.pl
-- Company     : AGH University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\tutorialsOscarr\BDE_tutorialOscar\compile\top.vhd
-- Generated   : Mon Nov  8 23:29:44 2021
-- From        : c:\My_Designs\tutorialsOscarr\BDE_tutorialOscar\src\top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity top is
  port(
       LED : out STD_LOGIC_VECTOR(6 downto 0);
       A : in STD_LOGIC_VECTOR(2 downto 0);
       B : in STD_LOGIC_VECTOR(2 downto 0);
       Cin : in STD_LOGIC
  );
end top;

architecture top of top is

---- Component declarations -----

component adder3
  port(
       A : in STD_LOGIC_VECTOR(2 downto 0);
       B : in STD_LOGIC_VECTOR(2 downto 0);
       Cin : in STD_LOGIC;
       Sum : out STD_LOGIC_VECTOR(2 downto 0);
       Cout : out STD_LOGIC
  );
end component;
component hex2led
  port(
       HEX : in STD_LOGIC_VECTOR(3 downto 0);
       LED : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal HEX : STD_LOGIC_VECTOR(3 downto 0);

begin

----  Component instantiations  ----

U1 : adder3
  port map(
       A => A,
       B => B,
       Cin => Cin,
       Sum(2) => HEX(2),
       Sum(1) => HEX(1),
       Sum(0) => HEX(0),
       Cout => HEX(3)
  );

U2 : hex2led
  port map(
       HEX => HEX,
       LED => LED
  );


end top;
