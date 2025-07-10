-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : TutorVHDL
-- Author      : IE
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\ferna\Downloads\Tuto_prescaler_Debouncer_LF\Tuto_prescaler_Debouncer_LF\TutorVHDL\compile\Top.vhd
-- Generated   : Tue Dec 21 14:29:30 2021
-- From        : C:/Users/ferna/Downloads/Tuto_prescaler_Debouncer_LF/Tuto_prescaler_Debouncer_LF/TutorVHDL/src/Top.bde
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
       CLK : in STD_LOGIC;
       CEI : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PE : out STD_LOGIC
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

signal NET116 : STD_LOGIC;
signal NET281 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : TutorVHDL
  port map(
       CLR => CLR,
       CLK => CLK,
       CE => NET116,
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
       CEO => NET281
  );

U3 : Debouncer
  port map(
       CLK => CLK,
       CEI => NET281,
       PUSH => PUSH,
       CLR => CLR,
       PE => NET116
  );


end Top;
