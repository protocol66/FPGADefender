library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity laser_movement is
    port (
        max10_clk : in std_logic;
        shoot : in std_logic;

        x_loc : out integer
    );    
end laser_movement;

architecture arch of laser_movement is
    signal x_counter_clk : std_logic;
    signal x_shift : std_logic_vector(9 downto 0);
    signal clk_100 : std_logic;

    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in natural;       -- rounds down to closest even number
            clk_out : buffer std_logic := '0'
        );
    end component;

    component counter is
        generic (
            SIZE : positive := 1;
            STEP : positive := 1;
            SEED : natural := 0
            );
        port (
            clk     : in std_logic;
            reset_L : in std_logic := '0';
            enable  : in std_logic := '0';
            up_down : in std_logic := '0';
            cout    : out std_logic_vector(SIZE-1 downto 0)
        );
    end component counter;

begin
    U1: clk_div port map (clk_in => max10_clk, div => 50000, clk_out => clk_100);
    U2: counter generic map (SIZE => 10) port map(clk => clk_100, up_down => '0', reset_L => shoot, enable => shoot, cout => x_shift);
    x_loc <= to_integer(unsigned(x_shift));
end architecture;