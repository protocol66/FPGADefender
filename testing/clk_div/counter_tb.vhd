library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity counter_tb is
end entity counter_tb;

architecture behavior of counter_tb is

    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in integer;
            clk_out : buffer std_logic := '0'
        );
    end component clk_div;

    signal clk     : std_logic;
    signal div     : integer := 0;
    signal clk_out : std_logic;
    
begin
    DUT: clk_div
         port map (
            clk, div, clk_out
         );

    process
    begin

        wait for 16 ns;
        div <= 1;
        wait for 16 ns;
        div <= 2;
        wait for 16 ns;
        div <= 3;
        wait for 16 ns;
        div <= 4;
        wait for 40 ns;
        div <= 5;
        wait for 40 ns;
        div <= 7;
        wait for 40 ns;
        div <= 0;
        


        

        wait;
    end process;
    
    clock_gen: process
    begin
        clk <= '0';
        wait for 0.5 ns;
        clk <= '1';
        wait for 0.5 ns;
    end process;
end architecture;