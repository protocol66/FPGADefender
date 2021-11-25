library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity objDisp is
    port (
        box : Bounding_Box;
        bit_map : bit_map_t;
        in_bounds : out Pixel_t;
        mem_addr : out std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0)
    );
end objDisp;

architecture arch of objDisp is

    signal x, y : integer;
    signal addr : std_logic_vector(15 downto 0);

begin
    x <= get_bb_x_index(box);
    y <= get_bb_y_index(box);
    in_bounds <= check_bb_bounds(box);

    mem_addr <= std_logic_vector(to_unsigned(bit_map.rom_id, rom_id_bits)) & std_logic_vector(to_unsigned(bit_map.addr_offset + (y * box.x_size) + x));

end architecture; 