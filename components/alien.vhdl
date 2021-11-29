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
    constant MAX_DOWN : integer := screen_HEIGHT - Y_SIZE - 20;

    -- signal spawn_seed : std_logic_vector (7 downto 0) := "01001100";
    signal spawn : integer := screen_HEIGHT / 2;

    signal x_shift : std_logic_vector(9 downto 0);
    signal y_shift : std_logic_vector(9 downto 0);
    signal y_up_down : std_logic := '0';

    signal sync_random : std_logic_vector(7 downto 0);
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
            SIZE : positive := 1;
            STEP : positive := 1;
            SEED : natural := 0;
            OVERFLOW : std_logic := '1'
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
    U1: clk_div port map (clk_in => max10_clk, div => cnt_div, clk_out => clk_a);
    U2: clk_div port map (clk_in => max10_clk, div => to_integer(shift_left(to_unsigned(cnt_div, 32), 6)), clk_out => clk_b);   -- multiply by 64 using bit shifting
    U3: counter generic map (SIZE => 10) port map(clk => clk_a, up_down => '0', reset_L => reset_L, enable => alive, cout => x_shift);

        -- the size needs to be one larger than necessary to prevent roll over
    U4: counter generic map (SIZE => 10, STEP => 2, SEED => 512) port map(clk => clk_a, up_down => y_up_down, reset_L => reset_L, enable => alive and sync_random(7), cout => y_shift);


    y_loc <= spawn + to_integer(unsigned(y_shift)) - 512;   -- make the counter add or subtract

    x_location : process(reset_L, x_shift)
    begin
        if reset_L = '0' then
            x_loc <= screen_WIDTH;
        else 
            x_loc <= screen_WIDTH - to_integer(unsigned(x_shift));
		end if;
    end process;
    
    y_location : process(reset_L, clk_a)
    begin
        if reset_L = '0' then
            if to_integer(unsigned(sync_random)) + 100 > MAX_DOWN then
                spawn <= to_integer(unsigned(sync_random));
            else
                spawn <= to_integer(unsigned(sync_random)) + 100;
			end if;
            y_up_down <= '0';
        else
            if(rising_edge(clk_a)) then 
                if (spawn + to_integer(unsigned(y_shift)) - 512) < MAX_UP then
                    y_up_down <= '0';
                elsif (spawn + to_integer(unsigned(y_shift)) - 512) > MAX_DOWN then
                    y_up_down <= '1';
                else
                    y_up_down <= sync_random(6) xor sync_random(5) xor sync_random(2);
                end if;
            end if;
        end if;
    end process;

    SYNC_SLOW_RAND_IN: process (clk_b)
    begin
        if rising_edge(clk_b) then
            sync_random <= random_Y;
        end if;
    end process;

end architecture;