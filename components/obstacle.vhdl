library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity obstacle_movement is
    generic (
        Y_SIZE : positive
    );
    port (
        max10_clk : in std_logic;
        active : in std_logic;
        cnt_div : positive := 2500000;
        x_loc : out integer;
        y_loc : out integer
    );        
end obstacle_movement;

architecture arch of obstacle_movement is
    constant MAX_UP : integer := 40 + ship_sizeY;
    constant MAX_DOWN : integer := screen_HEIGHT - Y_SIZE - 10;

    signal spawn_seed : std_logic_vector (7 downto 0) := "11001010";
    signal random_Y : std_logic_vector (7 downto 0);
    signal spawn : integer := screen_HEIGHT / 2;

    signal x_counter_clk : std_logic;
    signal y_counter_clk : std_logic;
    signal x_enable : std_logic := '1';
    signal y_enable : std_logic := '1';
    signal x_shift : std_logic_vector(9 downto 0);
    signal y_shift : std_logic_vector(8 downto 0);
    signal y_up_down : std_logic := '0';
    signal change_Y : std_logic := '0';
	 
	signal clk_1k : std_logic;
    
    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in integer;       -- rounds down to closest even number
            clk_out : buffer std_logic := '0'
        );
    end component;

    component counter is
        generic (
            SIZE : integer := 1;
            STEP : integer := 1
            );
        port (
            clk     : in std_logic;
            reset_L : in std_logic := '0';
            enable  : in std_logic := '0';
            up_down : in std_logic := '0';
            cout    : out std_logic_vector(SIZE-1 downto 0)
        );
    end component;

    component pseudorandom_8 is
        port (
            clk      : in std_logic;
            reset_L  : in std_logic := '0';
            enable   : in std_logic := '0';
            seed     : in std_logic_vector(7 downto 0);
            random_8 : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    U1: clk_div port map (clk_in => max10_clk, div => cnt_div, clk_out => clk_1k);
    U2: counter generic map (SIZE => 10) port map(clk => clk_1k, up_down => '0', reset_L => active, enable => active, cout => x_shift);
    U4: pseudorandom_8 port map (clk => max10_clk, reset_L => '1', enable => '1', seed => spawn_seed, random_8 => random_Y);

    x_location : process(active, x_shift)
    begin
        if active = '0' then
            x_loc <= screen_WIDTH;
        else 
            x_loc <= screen_WIDTH - to_integer(unsigned(x_shift));
		end if;
    end process;
    
    y_location : process(active, random_Y)
    begin
        if active = '0' then
            if to_integer(unsigned(random_Y)) < MAX_UP then
                y_loc <= to_integer(unsigned(random_Y)) + MAX_UP;
            elsif to_integer(unsigned(random_Y)) * 2 > MAX_DOWN then
                y_loc <= to_integer(shift_right(unsigned(random_Y),2));
            else
                y_loc <= to_integer(unsigned(random_Y)) * 2;
			end if;
		end if;
    end process;


end architecture;