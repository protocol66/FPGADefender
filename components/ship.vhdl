library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

entity ship_movement is
    port (
        max10_clk : in std_logic;
        reset : in std_logic;
	
		GSENSOR_CS_N : OUT	STD_LOGIC;
		GSENSOR_SCLK : OUT	STD_LOGIC;
		GSENSOR_SDI  : INOUT	STD_LOGIC;
		GSENSOR_SDO  : INOUT	STD_LOGIC
    );
end ship_movement;

architecture arch of ship_movement is
    signal data_x : std_logic_vector(0 to 15);
    signal data_y : std_logic_vector(0 to 15);
    signal data_z : std_logic_vector(0 to 15);
    signal x_counter_clk : std_logic;
    signal y_counter_clk : std_logic;

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

begin
     U2: ADXL345_controller port map(reset_n => '1', clk => max10_clk, data_valid => open, data_x => data_x, data_y => data_y, data_z => open, 
                                    SPI_SDI => GSENSOR_SDI, SPI_SDO => GSENSOR_SDO, SPI_CSN => GSENSOR_CS_N, SPI_CLK => GSENSOR_SCLK);
                                    



end architecture ; -- arch