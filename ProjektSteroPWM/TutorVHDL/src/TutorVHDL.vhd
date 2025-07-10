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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity led_controller is
    Port (  clk, reset: in std_logic;                    
            in_word: in std_logic_vector(7 downto 0);   
            LEDs: out std_logic_vector(3 downto 0));
end led_controller;

architecture behavior of led_controller is
    --------------------- signals ---------------------
    type freq is array (0 to 3) of integer range 0 to 50000;
    signal frq: freq := (25000, 10000, 5000, 2500);      
    signal led_freq_count: integer range 0 to 50000 := frq(0);

    type d is array (0 to 3) of integer range 0 to 100;
    signal duty: d := (10, 30, 60, 85);      
    signal duty_cycle: integer range 0 to 100 := duty(0);        
    signal LED_switch, new_command: std_logic := '0';
begin

    --------- clock process / sync reset configuration ---------------
    process (clk)
        variable duty_counter: integer range 0 to 100 := 100;
        variable freq_counter: integer range 0 to 50000 := led_freq_count;
    begin
        if rising_edge(clk) then
            ------- if reset was high or new in_word were arrived --------

            if reset = '1' or new_command = '1' then
                LEDs <= "0000";
                duty_counter := 100;
                freq_counter := led_freq_count;
                new_command <= '0';
            else  
            ------- blinking process --------

                if freq_counter = 0 then 
                   freq_counter := led_freq_count;
                   LED_switch <= not LED_switch;
                end if;
                freq_counter := freq_counter - 1;

                if duty_counter = 0 then 
                   duty_counter := 100;
                end if;
                duty_counter := duty_counter - 1;

                ------ output assignment -------
                if LED_switch = '1' and duty_counter < duty_cycle then
                    LEDs <= "1111";
                else 
                    LEDs <= "0000";
                end if;
            end if;
        end if; 
    end process;

    --------- input process---------------
    process (in_word)
    begin
        case in_word(3 downto 0) is
            when "0001" =>   led_freq_count <= frq(0);
            when "0010" =>   led_freq_count <= frq(1);
            when "0100" =>   led_freq_count <= frq(2);
            when "1000" =>   led_freq_count <= frq(3);
            when others =>   led_freq_count <= frq(0);
        end case;
        case in_word(7 downto 4) is
            when "0001" =>   duty_cycle <= duty(0);
            when "0010" =>   duty_cycle <= duty(1);
            when "0100" =>   duty_cycle <= duty(2);
            when "1000" =>   duty_cycle <= duty(3);
            when others =>   duty_cycle <= duty(0);
        end case; 
        new_command    <= '1';
    end process;


end behavior;