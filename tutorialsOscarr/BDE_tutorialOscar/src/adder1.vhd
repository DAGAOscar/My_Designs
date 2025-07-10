-------------------------------------------------------------------------------
--
-- Title       : adder1
-- Design      : BDE_tutorialOscar
-- Author      : daga@student.agh.edu.pl
-- Company     : AGH University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\tutorialsOscarr\BDE_tutorialOscar\src\adder1.vhd
-- Generated   : Mon Nov  8 22:23:22 2021
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
--{entity {adder1} architecture {adder1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity adder1 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Cin : in STD_LOGIC;
		 Cout : out STD_LOGIC;
		 Sum : out STD_LOGIC
	     );
end adder1;

--}} End of automatically maintained section

architecture adder1 of adder1 is
begin

	-- enter your statements here --	
Sum <= A xor B xor Cin;
Cout <= (Cin and A) or (Cin and B) or (A and B);

end adder1;
