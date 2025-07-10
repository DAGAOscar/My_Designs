-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : BDE_tutorialOscar
-- Author      : daga@student.agh.edu.pl
-- Company     : AGH University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\tutorialsOscarr\BDE_tutorialOscar\compile\adder3.vhd
-- Generated   : Mon Nov  8 23:30:06 2021
-- From        : c:\My_Designs\tutorialsOscarr\BDE_tutorialOscar\src\adder3.bde
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

entity adder3 is
  port(
       A : in STD_LOGIC_VECTOR(2 downto 0);
       B : in STD_LOGIC_VECTOR(2 downto 0);
       Cin : in STD_LOGIC;
       Sum : out STD_LOGIC_VECTOR(2 downto 0);
       Cout : out STD_LOGIC
  );
end adder3;

architecture adder3 of adder3 is

---- Component declarations -----

component adder1
  port(
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Sum : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET41 : STD_LOGIC;
signal NET77 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : adder1
  port map(
       A => A(0),
       B => B(0),
       Cin => Cin,
       Cout => NET77,
       Sum => Sum(0)
  );

U2 : adder1
  port map(
       A => A(1),
       B => B(1),
       Cin => NET77,
       Cout => NET41,
       Sum => Sum(1)
  );

U3 : adder1
  port map(
       A => A(2),
       B => B(2),
       Cin => NET41,
       Cout => Cout,
       Sum => Sum(2)
  );


end adder3;
