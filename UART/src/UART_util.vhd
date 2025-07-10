------------------------------------------------------------------------------------
--
-- Title       : UART_util
-- Design      : TestBench tutorial
-- Author      : Jerzy Kasperek & Pawe³ J. Rajda
-- Company     : AGH Kraków
-- Version     : 2.0
------------------------------------------------------------------------------------
--
-- Description : UART transmitter utility function 
--             
--
------------------------------------------------------------------------------------
-- Revision History:
--
-- 1.0 - initial
--
------------------------------------------------------------------------------------

library STD;
use STD.textio.all;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

package UART_util is

	-- UUT UART baud selector parameters for initialization
	constant BAUD_SEL_1200:  std_logic_vector(2 downto 0) := "000";	
	constant BAUD_SEL_2400:  std_logic_vector(2 downto 0) := "001";	
	constant BAUD_SEL_4800:  std_logic_vector(2 downto 0) := "010";	
	constant BAUD_SEL_9600:  std_logic_vector(2 downto 0) := "011";	
	constant BAUD_SEL_19200: std_logic_vector(2 downto 0) := "100";	
	constant BAUD_SEL_38400: std_logic_vector(2 downto 0) := "101";	
	constant BAUD_SEL_57600: std_logic_vector(2 downto 0) := "110";	
	constant BAUD_SEL_115200:std_logic_vector(2 downto 0) := "111";	

	
	-- UART config parameters
	constant DATA_BITS: integer := 8;		-- number of data bits (7 or 8)
	constant STOP_BITS: integer := 1;		-- number of stop bits (1 or 2)
	constant BAUD_RATE: integer := 19200;	-- baudrate

	-- derivative constatnts
	constant CLK_PERIOD: time := 1 sec / BAUD_RATE;
	
	procedure UART_send_byte(
		signal TXD: 	out std_logic;
		variable BYTE:	in  std_logic_vector(7 downto 0));
	
end	UART_util;

package body UART_util is
	--------------------------------------------------------------------------------------------
	-- UART_send_byte procedure
	--------------------------------------------------------------------------------------------
	procedure UART_send_byte(
		signal TXD: 	out std_logic;
		variable BYTE:	in  std_logic_vector(7 downto 0)) is
		
	begin
		-- start bit
			TxD <= '0';				
			wait for CLK_PERIOD;
		-- data bits
		for I in 1 to DATA_BITS loop
			TxD <= BYTE(I-1);
			wait for CLK_PERIOD;
		end loop;
		-- stop bit(s)
		for I in 1 to STOP_BITS loop
			TxD <= '1';	  
			wait for CLK_PERIOD	;
		end loop;
	end;
end UART_util;


	
	
	
