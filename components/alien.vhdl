library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;
use work.constants.all;

entity alien_movement is
    generic (
        X_SIZE : positive;
        Y_SIZE : positive
    );
    port (
        max10_clk : in std_logic;
        reset_L : in std_logic;
        alive : in std_logic;
        cnt_div : positive := 500000;
        random_Y : in std_logic_vector (7 downto 0);

        x_loc : out integer;
        y_loc : out integer
    );        
end alien_movement;

architecture arch of alien_movement is
    constant MAX_UP : integer := 40 + ship_sizeY;
    constant MAX_DOWN : integer := screen_HEIGHT - Y_SIZE - 10;

    -- signal spawn_seed : std_logic_vector (7 downto 0) := "01001100";
    signal spawn : integer := screen_HEIGHT / 2;

    signal x_shift : std_logic_vector(9 downto 0);
    signal y_shift : std_logic_vector(8 downto 0);
    signal y_up_down : std_logic := '0';
	
    signal random : std_logic_vector (7 downto 0);
	signal clk_a : std_logic;
    signal clk_b : std_logic;
    
    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in natural;       -- rounds down to closest even number
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

    -- component pseudorandom_8 is
    --     port (
    --         clk      : in std_logic;
    --         reset_L  : in std_logic := '0';
    --         enable   : in std_logic := '0';
    --         seed     : in std_logic_vector(7 downto 0);
    --         random_8 : out std_logic_vector(7 downto 0)
    --     );
    -- end component;

begin
    U1: clk_div port map (clk_in => max10_clk, div => cnt_div, clk_out => clk_a);
    -- U2: clk_div port map (clk_in => max10_clk, div => 5 * 50000000, clk_out => clk_b);
    U3: counter generic map (SIZE => 10) port map(clk => clk_a, up_down => '0', reset_L => reset_L, enable => alive, cout => x_shift);
    U4: counter generic map (SIZE => 9) port map(clk => clk_a, up_down => y_up_down, reset_L => reset_L, enable => alive, cout => y_shift);
    -- U5: pseudorandom_8 port map (clk => max10_clk, reset_L => '1', enable => '1', seed => spawn_seed, random_8 => random_Y);
    -- U6: pseudorandom_8 port map (clk => clk_b, reset_L => '1', enable => '1', seed => spawn_seed, random_8 => random);

    y_loc <= spawn;

    x_location : process(reset_L, x_shift)
    begin
        if reset_L = '0' then
            x_loc <= screen_WIDTH;
        else 
            x_loc <= screen_WIDTH - to_integer(unsigned(x_shift));
		end if;
    end process;
    
    y_location : process(reset_L, random_Y)
    begin
        if reset_L = '0' then
            if to_integer(unsigned(random_Y)) + 100 > MAX_DOWN then
                spawn <= to_integer(unsigned(random_Y));
            else
                spawn <= to_integer(unsigned(random_Y)) + 100;
			end if;
        else
            if to_integer(signed(y_shift)) + spawn < MAX_UP then
                y_up_down <= '0';
            elsif to_integer(signed(y_shift)) + spawn > MAX_DOWN then
                y_up_down <= '1';
            else
                y_up_down <= random(2) XOR random_Y(4);
            end if;
		end if;
    end process;

end architecture;