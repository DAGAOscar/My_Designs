-------------------------------------------------------------------------------
--
-- Title       : TutorVHDL
-- Design      : TutorVHDL
-- Author      : J.Kasperek & P.J.Rajda
-- Company     : AGH Kraków
--
-------------------------------------------------------------------------------
--
-- Description : 
-- Synchronous 3bits binary up counter with synchronous reset
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;


entity TutorVHDL is
	port(
		CLR : in STD_LOGIC;			-- clear signal 
		CLK : in STD_LOGIC;			-- clock 
		Q : out STD_LOGIC_VECTOR(3 downto 0)	-- outputs 	 --
		);
end TutorVHDL;


architecture TutorVHDL of TutorVHDL is	 	
	signal Q_INT: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');  --deklaracja sygna³u + inicjalizacja tego sygna³u
begin
	process (CLK, CLR)
		-- internal variable Q_INT
		--variable Q_INT: STD_LOGIC_VECTOR(2 downto 0);
		
	begin 
		--zadanie 4
		
		if CLR='1' then
			Q_INT <= (others => '0');
		else
			if CLK'event and CLK='1' then
				
				Q_INT <= Q_INT+1; 
			end if;
			
			
		end if;
		
		
	end process;
	
	Q <= Q_INT;
	
	--zadanie 4
	
	
end TutorVHDL;
