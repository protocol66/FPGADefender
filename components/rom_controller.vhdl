library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity rom_controller is
    port (
        clk   : in std_logic;
        address : in std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0);
        pixel : out Pixel_t
    );
end entity rom_controller;

architecture rtl of rom_controller is
    component rom1 IS
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    end component rom1;

    signal rom_id : std_logic_vector(rom_id_bits - 1 downto 0 );
    signal rom1_addr : std_logic_vector(15 downto 0);
    signal rom1_out : std_logic_vector(11 downto 0);
    signal rom_clk : std_logic;

begin
    MEM1: rom1 port map (
        address => rom1_addr,
        clock => rom_clk,
        q => rom1_out
    );
    
    rom1_addr <= address(15 downto 0);
    rom_clk <= not clk;     -- give combo logic half a clock cycle to finish

    pixel <= Pixel_t'(rom1_out(11 downto 8), rom1_out(7 downto 4), rom1_out(3 downto 0));    -- get er out a here, were running low on time

end architecture;