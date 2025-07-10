library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity tutorvhdl_tb is
end tutorvhdl_tb;

architecture TB_ARCHITECTURE of tutorvhdl_tb is
	-- Component declaration of the tested unit
	component top
	port(
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DIR : in STD_LOGIC;
		SEL : in STD_LOGIC;
		OE : in STD_LOGIC; 
		LE : in STD_LOGIC;
		PUSH: in STD_LOGIC;
		DATA : in STD_LOGIC_VECTOR(3 downto 0);
		Q : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLR : STD_LOGIC;
	signal CLK : STD_LOGIC;
	signal CE : STD_LOGIC;
	signal LOAD : STD_LOGIC;
	signal DIR : STD_LOGIC;
	signal SEL : STD_LOGIC;
	signal OE : STD_LOGIC;
	signal LE : STD_LOGIC;
	signal PUSH: STD_LOGIC;
	signal DATA : STD_LOGIC_VECTOR(3 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q : STD_LOGIC_VECTOR(3 downto 0);

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	
	-- Add your code here ...
	
begin
	
	-- Unit Under Test port map
	UUT : Top
	port map (
		    CLR => CLR,
			CLK => CLK,
			CE => CE,
			LOAD => LOAD,
			DIR => DIR,
			SEL => SEL,
			OE => OE,
			LE => LE, 
			PUSH => PUSH,
			DATA => DATA,
			Q => Q
		);
	
	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....
	
	STIMULUS: process
	begin  -- of stimulus process
		--wait for <time to next event>; -- <current time>
		
		CLR <= '0';
		wait for 75 ns; --0 fs
		CLR <= '1';
		wait for 100 ns; --100 ns
		CLR <= '0';
		wait for 2500 ns; --200 ns
		CLR <= '1'; 
		wait for 200 ns ;
		CLR <= '0';
		--	end of stimulus events
		wait;
	end process; -- end of stimulus process
	
	CE_STIMULUS : process 
		
	begin
		
		CE <= '1';
		wait for 1000 ns; --100 ns
		CE <= '0';
		wait for 300 ns; --300 ns 
		CE <= '1';
		wait for 2000 ns; --700 ns
		--	end of stimulus events
		wait;
		
	end process; 
	
	LOAD_STIMULUS : process 
		
	begin
		LOAD <= '0';
		wait for 300 ns; --0 fs
		LOAD <= '1';
		wait for 200 ns; --700 ns 
		LOAD <= '0';
		wait for 600 ns; --0 fs
		--	end of stimulus events
		wait;
		
	end process;   
	
	DIR_STIMULUS : process 
		
	begin
		DIR <= '1';
		wait for 1400 ns; --0 fs
		DIR <= '0';
		wait for 1300 ns; --700 ns 
		
		--	end of stimulus events
		wait;
		
	end process;  
	
	SEL_STIMULUS: process
	begin
		SEL <= '0';
		wait for 3000 ns;
		SEL <= '1';
		wait for 800 ns;
		SEL <= '0';
		wait;
	end process;
	
	
	DATA_STIMULUS : process 
	begin
		DATA <= "0110" ;
		wait for 3350 ns;
		DATA <= "0001" ;
		wait for 200 ns;
		DATA <= "0101" ;
		wait;
	end process; 
	
	OE_STIMULUS: process		  --zadanie 9
	begin  
		
		OE <= '1';
		wait for 2500 ns;
		OE <= '0';
		wait for 100ns;
		OE <= '1';
		wait;
		
		
	end process;  
	
	LE_STIMULUS: process
	begin									
		
		LE <= '0';
		wait for 3250 ns;
		LE <='1';
		wait for 200 ns;
		LE <= '0';
		wait;
		
	end process;
	
	
	CLOCK_CLK : process
	begin
		--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
		--wait for <time to next event>; -- <current time>
		if END_SIM = FALSE then
			CLK <= '0';
			wait for 50 ns; --0 fs
		else
			wait;
		end if;
		if END_SIM = FALSE then
			CLK <= '1';
			wait for 50 ns; --50 ns
		else
			wait;
		end if;
	end process;
	
	
	
	
	-- Add your stimulus here ...
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb is
	for TB_ARCHITECTURE
		for UUT : Top
			use entity work.Top(Top);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

