library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity ship_movement is
    port (
        max10_clk : in std_logic;
        reset_L : in std_logic;

        x_offset : out integer;
        y_offset : out integer;
	
		GSENSOR_CS_N : OUT	STD_LOGIC;
		GSENSOR_SCLK : OUT	STD_LOGIC;
		GSENSOR_SDI  : INOUT	STD_LOGIC;
		GSENSOR_SDO  : INOUT	STD_LOGIC
    );
end ship_movement;

architecture arch of ship_movement is
    constant MAX_X_OFFSET : integer := 160;
    -- constant MAX_Y_OFFSET : integer := 180;
    constant MAX_UP_OFFSET : integer := (480 / 2) - (15 + ship_sizeY);
    constant MAX_DOWN_OFFSET : integer := 480 / 2  - ship_sizeY;
    signal data_x : std_logic_vector(0 to 15);
    signal data_y : std_logic_vector(0 to 15);
    signal clk_10k : std_logic;
    signal x_counter_clk : std_logic;
    signal y_counter_clk : std_logic;
    signal x_shift : std_logic_vector(0 to 8);
    signal y_shift : std_logic_vector(0 to 8);
    signal x_enable : std_logic := '1';
    signal y_enable : std_logic := '1';

    component ADXL345_controller is

        port (
        
            reset_n     : IN STD_LOGIC;
            clk         : IN STD_LOGIC;
            data_valid  : OUT STD_LOGIC;
            data_x      : OUT STD_LOGIC_VECTOR(15 downto 0);
            data_y      : OUT STD_LOGIC_VECTOR(15 downto 0);
            data_z      : OUT STD_LOGIC_VECTOR(15 downto 0);
            SPI_SDI     : OUT STD_LOGIC;
            SPI_SDO     : IN STD_LOGIC;
            SPI_CSN     : OUT STD_LOGIC;
            SPI_CLK     : OUT STD_LOGIC
        
        );
        
    end component;

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

begin
    U1: clk_div port map (clk_in => max10_clk, div => 500, clk_out => clk_10k);
    U2: ADXL345_controller port map(reset_n => '1', clk => max10_clk, data_valid => open, data_x => data_x, data_y => data_y, data_z => open, 
                                    SPI_SDI => GSENSOR_SDI, SPI_SDO => GSENSOR_SDO, SPI_CSN => GSENSOR_CS_N, SPI_CLK => GSENSOR_SCLK);
    U3: counter generic map (SIZE => 9) port map(clk => x_counter_clk, up_down => not data_x(4), reset_L => reset_L, enable => x_enable, cout => x_shift);
    U4: counter generic map (SIZE => 9) port map(clk => y_counter_clk, up_down => not data_y(4), reset_L => reset_L, enable => y_enable, cout => y_shift);

    x_clk_divider : process(clk_10k)
    variable count : integer := 0;
    begin
        if rising_edge(clk_10k) and data_x(8 to 11) /= "0000" then
            count := count + 1;
            if data_x(4) = '0' then
                if count > ((16 - to_integer(unsigned(data_x(8 to 11)))) * 100) then
                    count := 0;
                    x_counter_clk <= not x_counter_clk;
                end if;
            else
                if count > to_integer(unsigned(data_x(8 to 11))) * 100 then
                    count := 0;
                    x_counter_clk <= not x_counter_clk;
                end if;
            end if;
        end if;
    end process;

    y_clk_divider : process(clk_10k)
    variable count : integer := 0;
    begin
        if rising_edge(clk_10k) and data_y(8 to 11) /= "0000" then
            count := count + 1;
            if data_y(4) = '0' then
                if count > ((16 - to_integer(unsigned(data_y(8 to 11)))) * 100) then
                    count := 0;
                    y_counter_clk <= not y_counter_clk;
                end if;
            else
                if count > to_integer(unsigned(data_y(8 to 11))) * 100 then
                    count := 0;
                    y_counter_clk <= not y_counter_clk;
                end if;
            end if;
        end if;
    end process;                                

    bounds : process(x_shift, y_shift)
    begin
        if abs(to_integer(signed(x_shift))) >= MAX_X_OFFSET then
            if to_integer(signed(x_shift)) = MAX_X_OFFSET and data_x(4) = '0' then 
                x_enable <= '1';
            elsif to_integer(signed(x_shift)) = -1 * MAX_X_OFFSET and data_x(4) = '1' then
                x_enable <= '1';
            else
                x_enable <= '0';
            end if;
        else
            x_enable <= '1';
        end if;

        if to_integer(signed(y_shift)) <= -1 * MAX_UP_OFFSET then
            if data_y(4) = '1' then 
                y_enable <= '1';
            else 
                y_enable <= '0';
            end if;
        elsif to_integer(signed(y_shift)) >= MAX_DOWN_OFFSET then
            if data_y(4) = '0' then 
                y_enable <= '1';
            else 
                y_enable <= '0';
            end if;
        else
            y_enable <= '1';
        end if;
        x_offset <= to_integer(signed(x_shift));
        y_offset <= to_integer(signed(y_shift));
    end process;


end architecture ; -- arch