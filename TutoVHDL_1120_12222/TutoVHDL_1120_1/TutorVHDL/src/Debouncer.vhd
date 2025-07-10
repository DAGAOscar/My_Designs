-------------------------------------------------------------------------------
--
-- Title       : Debouncer
-- Design      : TutorVHDL
-- Author      : PJR & JK
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- Description : Simple debounce circuit
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Debouncer} architecture {Debouncer}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- VHDL code for D Flip Flop
-- D-Flip-Flop for debouncing module
entity Debouncer is
Port ( 
 CLK : in std_logic;
 en: in std_logic;
 D : in std_logic;
 Q : out std_logic
 );
end Debouncer;
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