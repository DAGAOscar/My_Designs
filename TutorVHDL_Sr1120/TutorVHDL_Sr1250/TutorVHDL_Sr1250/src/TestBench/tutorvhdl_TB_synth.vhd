library ieee;
use ieee.std_logic_1164.all;
library unisim;
use unisim.VCOMPONENTS.all;

	-- Add your library and packages declaration here ...

entity tutorvhdl_tb_stnth is
end tutorvhdl_tb_stnth;

architecture TB_ARCHITECTURE of tutorvhdl_tb_stnth is
	-- Component declaration of the tested unit
	component tutorvhdl
	port(
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DIR : in STD_LOGIC;
		SEL : in STD_LOGIC;
		OE : in STD_LOGIC;
		LE : in STD_LOGIC;
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
	signal DATA : STD_LOGIC_VECTOR(3 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : tutorvhdl
		port map (
			CLR => CLR,
			CLK => CLK,
			CE => CE,
			LOAD => LOAD,
			DIR => DIR,
			SEL => SEL,
			OE => OE,
			LE => LE,
			DATA => DATA,
			Q => Q
		);

	--Below VHDL code is an inserted .\compile\TutorVHDL.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	CE <= '1';
	LOAD <= '0';
	SEL <= '0';
	DIR <= '1';
	OE <= '0';
	LE <= '0';
	DATA <= "0010";
	CLR <= '0';
	CLK <= '0';
    wait for 50 ns; --0 fs
	CLK <= '1';
    wait for 50 ns; --50 ns
	CLK <= '0';
    wait for 50 ns; --100 ns
	CLK <= '1';
    wait for 50 ns; --150 ns
	CLK <= '0';
    wait for 25 ns; --200 ns
	CLR <= '1';
    wait for 25 ns; --225 ns
	CLK <= '1';
    wait for 50 ns; --250 ns
	CLK <= '0';
    wait for 25 ns; --300 ns
	CLR <= '0';
    wait for 25 ns; --325 ns
	CLK <= '1';
    wait for 50 ns; --350 ns
	CLK <= '0';
    wait for 50 ns; --400 ns
	CLK <= '1';
    wait for 50 ns; --450 ns
	CE <= '0';
	CLK <= '0';
    wait for 50 ns; --500 ns
	CLK <= '1';
    wait for 50 ns; --550 ns
	CLK <= '0';
    wait for 50 ns; --600 ns
	CLK <= '1';
    wait for 50 ns; --650 ns
	CLK <= '0';
    wait for 50 ns; --700 ns
	CLK <= '1';
    wait for 50 ns; --750 ns
	CE <= '1';
	CLK <= '0';
    wait for 50 ns; --800 ns
	CLK <= '1';
    wait for 50 ns; --850 ns
	CLK <= '0';
    wait for 50 ns; --900 ns
	CLK <= '1';
    wait for 50 ns; --950 ns
	CLK <= '0';
    wait for 50 ns; --1 us
	CLK <= '1';
    wait for 50 ns; --1050 ns
	CLK <= '0';
    wait for 50 ns; --1100 ns
	CLK <= '1';
    wait for 50 ns; --1150 ns
	LOAD <= '1';
	CLK <= '0';
    wait for 50 ns; --1200 ns
	CLK <= '1';
    wait for 50 ns; --1250 ns
	CLK <= '0';
    wait for 50 ns; --1300 ns
	CLK <= '1';
    wait for 50 ns; --1350 ns
	CLK <= '0';
    wait for 50 ns; --1400 ns
	CLK <= '1';
    wait for 50 ns; --1450 ns
	LOAD <= '0';
	CLK <= '0';
    wait for 50 ns; --1500 ns
	CLK <= '1';
    wait for 50 ns; --1550 ns
	CLK <= '0';
    wait for 50 ns; --1600 ns
	CLK <= '1';
    wait for 50 ns; --1650 ns
	CLK <= '0';
    wait for 50 ns; --1700 ns
	CLK <= '1';
    wait for 50 ns; --1750 ns
	CLK <= '0';
    wait for 50 ns; --1800 ns
	CLK <= '1';
    wait for 50 ns; --1850 ns
	CLK <= '0';
    wait for 50 ns; --1900 ns
	CLK <= '1';
    wait for 50 ns; --1950 ns
	CLK <= '0';
    wait for 50 ns; --2 us
	CLK <= '1';
    wait for 50 ns; --2050 ns
	CLK <= '0';
    wait for 50 ns; --2100 ns
	CLK <= '1';
    wait for 50 ns; --2150 ns
	CLK <= '0';
    wait for 50 ns; --2200 ns
	CLK <= '1';
    wait for 50 ns; --2250 ns
	DIR <= '0';
	CLK <= '0';
    wait for 50 ns; --2300 ns
	CLK <= '1';
    wait for 50 ns; --2350 ns
	CLK <= '0';
    wait for 50 ns; --2400 ns
	CLK <= '1';
    wait for 50 ns; --2450 ns
	CLK <= '0';
    wait for 50 ns; --2500 ns
	CLK <= '1';
    wait for 50 ns; --2550 ns
	CLK <= '0';
    wait for 50 ns; --2600 ns
	CLK <= '1';
    wait for 50 ns; --2650 ns
	CLK <= '0';
    wait for 50 ns; --2700 ns
	CLK <= '1';
    wait for 50 ns; --2750 ns
	CLK <= '0';
    wait for 50 ns; --2800 ns
	CLK <= '1';
    wait for 50 ns; --2850 ns
	CLK <= '0';
    wait for 50 ns; --2900 ns
	CLK <= '1';
    wait for 50 ns; --2950 ns
	CLK <= '0';
    wait for 50 ns; --3 us
	CLK <= '1';
    wait for 50 ns; --3050 ns
	CLK <= '0';
    wait for 50 ns; --3100 ns
	CLK <= '1';
    wait for 50 ns; --3150 ns
	CLK <= '0';
    wait for 50 ns; --3200 ns
	CLK <= '1';
    wait for 50 ns; --3250 ns
	CLK <= '0';
    wait for 50 ns; --3300 ns
	CLK <= '1';
    wait for 50 ns; --3350 ns
	CLK <= '0';
    wait for 50 ns; --3400 ns
	CLK <= '1';
    wait for 50 ns; --3450 ns
	CLK <= '0';
    wait for 50 ns; --3500 ns
	CLK <= '1';
    wait for 50 ns; --3550 ns
	DIR <= '1';
	CLK <= '0';
    wait for 50 ns; --3600 ns
	CLK <= '1';
    wait for 50 ns; --3650 ns
	CLK <= '0';
    wait for 50 ns; --3700 ns
	CLK <= '1';
    wait for 50 ns; --3750 ns
	CLK <= '0';
    wait for 50 ns; --3800 ns
	CLK <= '1';
    wait for 50 ns; --3850 ns
	CLK <= '0';
    wait for 50 ns; --3900 ns
	CLK <= '1';
    wait for 50 ns; --3950 ns
	CLK <= '0';
    wait for 50 ns; --4 us
	CLK <= '1';
    wait for 50 ns; --4050 ns
	CLK <= '0';
    wait for 50 ns; --4100 ns
	CLK <= '1';
    wait for 50 ns; --4150 ns
	SEL <= '1';
	CLK <= '0';
    wait for 50 ns; --4200 ns
	CLK <= '1';
    wait for 50 ns; --4250 ns
	CLK <= '0';
    wait for 50 ns; --4300 ns
	CLK <= '1';
    wait for 50 ns; --4350 ns
	LE <= '1';
	CLK <= '0';
    wait for 50 ns; --4400 ns
	CLK <= '1';
    wait for 50 ns; --4450 ns
	DATA <= "0011";
	CLK <= '0';
    wait for 50 ns; --4500 ns
	LE <= '0';
	CLK <= '1';
    wait for 50 ns; --4550 ns
	DATA <= "0100";
	CLK <= '0';
    wait for 50 ns; --4600 ns
	CLK <= '1';
    wait for 50 ns; --4650 ns
	CLK <= '0';
    wait for 50 ns; --4700 ns
	CLK <= '1';
    wait for 50 ns; --4750 ns
	SEL <= '0';
	CLK <= '0';
    wait for 50 ns; --4800 ns
	CLK <= '1';
    wait for 50 ns; --4850 ns
	CLK <= '0';
    wait for 50 ns; --4900 ns
	CLK <= '1';
    wait for 50 ns; --4950 ns
	OE <= '1';
	CLK <= '0';
    wait for 50 ns; --5 us
	CLK <= '1';
    wait for 50 ns; --5050 ns
	CLK <= '0';
    wait for 50 ns; --5100 ns
	CLK <= '1';
    wait for 50 ns; --5150 ns
	CLK <= '0';
    wait for 50 ns; --5200 ns
	CLK <= '1';
    wait for 50 ns; --5250 ns
	CLK <= '0';
    wait for 50 ns; --5300 ns
	CLK <= '1';
    wait for 50 ns; --5350 ns
	CLK <= '0';
    wait for 50 ns; --5400 ns
	CLK <= '1';
    wait for 50 ns; --5450 ns
	CLK <= '0';
    wait for 50 ns; --5500 ns
	CLK <= '1';
    wait for 50 ns; --5550 ns
	OE <= '0';
	CLK <= '0';
    wait for 50 ns; --5600 ns
	CLK <= '1';
    wait for 50 ns; --5650 ns
	CLK <= '0';
    wait for 50 ns; --5700 ns
	CLK <= '1';
    wait for 50 ns; --5750 ns
	CLK <= '0';
    wait for 50 ns; --5800 ns
	CLK <= '1';
    wait for 50 ns; --5850 ns
	CLK <= '0';
    wait for 50 ns; --5900 ns
	CLK <= '1';
    wait for 50 ns; --5950 ns
	CLK <= '0';
    wait for 50 ns; --6 us
	CLK <= '1';
    wait for 50 ns; --6050 ns
	CLK <= '0';
    wait for 50 ns; --6100 ns
	CLK <= '1';
    wait for 50 ns; --6150 ns
	CLK <= '0';
    wait for 50 ns; --6200 ns
	CLK <= '1';
    wait for 50 ns; --6250 ns
	CLK <= '0';
    wait for 50 ns; --6300 ns
	CLK <= '1';
    wait for 50 ns; --6350 ns
	CLK <= '0';
    wait for 50 ns; --6400 ns
	CLK <= '1';
    wait for 50 ns; --6450 ns
	CLK <= '0';
    wait for 50 ns; --6500 ns
	CLK <= '1';
    wait for 50 ns; --6550 ns
	CLK <= '0';
    wait for 50 ns; --6600 ns
	CLK <= '1';
    wait for 50 ns; --6650 ns
	CLK <= '0';
    wait for 50 ns; --6700 ns
	CLK <= '1';
    wait for 50 ns; --6750 ns
	CLK <= '0';
    wait for 50 ns; --6800 ns
	CLK <= '1';
    wait for 50 ns; --6850 ns
	CLK <= '0';
    wait for 50 ns; --6900 ns
	CLK <= '1';
    wait for 50 ns; --6950 ns
	CLK <= '0';
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	



	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb_stnth is
	for TB_ARCHITECTURE
		for UUT : tutorvhdl
			use entity work.tutorvhdl(structure);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

