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
		CE : in STD_LOGIC;			-- clock enable
		LOAD : in STD_LOGIC;		-- load signal
		DIR : in STD_LOGIC;			-- direction
		SEL : in STD_LOGIC;			-- sterowanie MUX
		OE : in STD_LOGIC;			-- sterowanie buforem
		LE : in STD_LOGIC;			-- sterowanie zatrzaskiem
		DATA : in STD_LOGIC_VECTOR(3 downto 0);	-- input data
		Q : out STD_LOGIC_VECTOR(3 downto 0)	-- outputs
		);
end TutorVHDL;


architecture TutorVHDL of TutorVHDL is	
-- internal signals Q_INT, Q_SEL and L_DAT
	signal Q_INT: STD_LOGIC_VECTOR(3 downto 0);
	signal Q_SEL: STD_LOGIC_VECTOR(3 downto 0);
	signal L_DAT: STD_LOGIC_VECTOR(3 downto 0);
begin
	process (CLK, CLR)		
	begin
		if CLR='1' then
			Q_INT <= (others => '0');
		elsif CLK'event and CLK='1' then
			if CE = '1' then
				if LOAD = '1' then --³aduj
					Q_INT <= DATA;
				else				 -- licz
					if DIR = '1' then	--licz w przód
							Q_INT <= Q_INT+1;
						if Q_INT = 9 then
							Q_INT <= (others => '0');
						end if;		
					else				--licz w ty³
						Q_INT <= Q_INT-1;
						if Q_INT = 0 then
							Q_INT <= "1001";
						end if;
					end if;	
				end if;
			end if;
		end if;			
	end process;
	
	process (LE, CLR, DATA)
	begin
		if CLR='1' then
			L_DAT <= (others => '0');
		elsif LE = '1' then
			L_DAT <= DATA;
		end if;	
	end process;
	
	Q_SEL <= Q_INT when SEL = '0' else L_DAT;
	Q <= Q_SEL when OE = '0' else (others => 'Z');
	
end TutorVHDL;
