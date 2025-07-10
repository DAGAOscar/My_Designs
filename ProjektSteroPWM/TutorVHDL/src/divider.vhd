-------------------------------------------------------------------------------
--
-- Title       : divider
-- Design      : TutorVHDL
-- Author      : daga@student.agh.edu.pl
-- Company     : AGH University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\ProjektSteroPWM\TutorVHDL\src\divider.vhd
-- Generated   : Fri Jan 21 14:17:58 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {divider} architecture {divider}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- VHDL code for D Flip Flop
-- D-Flip-Flop for debouncing module
entity DFF_Debounce is
Port ( 
 CLK : in std_logic;
 en: in std_logic;
 D : in std_logic;
 Q : out std_logic
 );
end DFF_Debounce;
architecture Behavioral of DFF_Debounce is
begin
process(CLK)
begin
 if (rising_edge(CLK)) then
 if (en='1') then
  Q <= D;
 end if;
end if;
end process;
end Behavioral;