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
        pixel : Pixel_t
    );
end entity rom_controller;

architecture rtl of rom_controller is
    component rom1 IS
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
        );
    end component rom1;

    signal rom_id : std_logic_vector(rom_id_bits - 1 downto 0 );
begin

    

end architecture;