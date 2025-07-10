-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : TutorVHDL
-- Author      : IE
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\TutoVHDL_1120_1\TutorVHDL\compile\Top.vhd
-- Generated   : Tue Dec 21 13:13:38 2021
-- From        : C:\My_Designs\TutoVHDL_1120_1\TutorVHDL\src\Top.bde
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

entity Top is
  port(
       DATA : in STD_LOGIC_VECTOR(3 downto 0);
       LOAD : in STD_LOGIC;
       DIR : in STD_LOGIC;
       LE : in STD_LOGIC;
       OE : in STD_LOGIC;
       SEL : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(3 downto 0);
       PUSH : in STD_LOGIC
  );
end Top;

architecture Top of Top is

---- Component declarations -----

component Debouncer
  port(
       CEI : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PE : out STD_LOGIC;
       CLK : in STD_LOGIC
  );
end component;
component Prescaler
  port(
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC
  );
end component;
component TutorVHDL
  port(
       CLR : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       LOAD : in STD_LOGIC;
       DATA : in STD_LOGIC_VECTOR(3 downto 0);
       DIR : in STD_LOGIC;
       SEL : in STD_LOGIC;
       OE : in STD_LOGIC;
       LE : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal CEI : STD_LOGIC;
signal PE : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : TutorVHDL
  port map(
       CLR => CLR,
       CLK => CLK,
       CE => PE,
       LOAD => LOAD,
       DATA => DATA,
       DIR => DIR,
       SEL => SEL,
       OE => OE,
       LE => LE,
       Q => Q
  );

U2 : Prescaler
  port map(
       CLK => CLK,
       CE => CE,
       CLR => CLR,
       CEO => CEI
  );

U3 : Debouncer
  port map(
       CEI => CEI,
       PUSH => PUSH,
       CLR => CLR,
       PE => PE,
       CLK => CLK
  );


end Top;
