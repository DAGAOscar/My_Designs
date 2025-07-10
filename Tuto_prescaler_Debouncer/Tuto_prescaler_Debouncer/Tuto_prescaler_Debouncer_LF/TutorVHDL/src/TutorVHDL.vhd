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
		CE : in STD_LOGIC;	
		LOAD : in STD_LOGIC; --zadanie 6
		DATA  : in STD_LOGIC_VECTOR(3 downto 0) ;  
		DIR : in  STD_LOGIC;	  --zadanie 7 kierunek (direction)	 
		SEL : in  STD_LOGIC; --zadanie 8 mux
		OE : in STD_LOGIC; --zadanie 9 
		LE : in STD_LOGIC; --zadanie 10
		Q : out STD_LOGIC_VECTOR(3 downto 0)	-- outputs 	 --	
		);
end TutorVHDL;


architecture TutorVHDL of TutorVHDL is	 	
	signal Q_INT: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');  --deklaracja sygna³u + inicjalizacja tego sygna³u
	signal Q_SEL: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');	--zadanie 9
	signal L_DAT: STD_LOGIC_VECTOR(3 downto 0) := (others => '0') ; --zadanie 10
	
begin
	process (CLK, CLR)
		-- internal variable Q_INT
		--variable Q_INT: STD_LOGIC_VECTOR(2 downto 0);
		
	begin 
		
		
		if CLR='1' then
			Q_INT <= (others => '0');
		else
			if CLK'event and CLK='1' then
				if CE = '1' then 
					
					if LOAD = '1' then		--³adowanie 
						Q_INT <= DATA;
						
					else  
						if DIR = '1' then	--liczenie w przód
							if Q_INT = "1001" then 
								Q_INT <= (others => '0'); 
							else 
								Q_INT <= Q_INT+1;
								
							end if;
							
						else 	--liczenie w ty³
							if Q_INT = "0000" then 
								
								Q_INT <= "1001"; 
							else 
								
								Q_INT <= Q_INT-1;
								
							end if;
							
						end if;	
					end if;
				end if;
			end if;
		end if;
		
		
	end process;
	
	process(LE, CLR, DATA)	  	 --zadanie 10
		
	begin  
		if CLR='1' then
			L_DAT <= (others => '0');
		else
			if LE = '1' then
				L_DAT <= DATA;
			end if;
		end if;	
	end process;
	
	Q_SEL <= Q_INT when SEL = '0' else L_DAT ;	
	Q <= Q_SEL when OE = '1' else (others =>'Z');	  --zadanie 9
	
end TutorVHDL;
