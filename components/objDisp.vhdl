library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity objDisp is
    port (
        box : in Bounding_Box;
        bit_map : in bit_map_t;
        in_bounds : out std_logic := '0';
        mem_addr : out std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0)
    );
end objDisp;

architecture arch of objDisp is

    signal x, y : integer;
    signal addr : std_logic_vector(15 downto 0);
begin

    process (box)
    begin
        x <= box.x_pos - box.x_origin;
        y <= box.y_pos - box.y_origin;

        if ((box.x_pos >= box.x_origin) and (box.x_pos < box.x_origin + box.x_size) and (box.y_pos >= box.y_origin) and (box.y_pos < box.y_origin + box.y_size)) then
            in_bounds <= '1';
        else
            in_bounds <= '0';
        end if;
    end process;

    mem_addr <= std_logic_vector(to_unsigned(bit_map.rom_id, rom_id_bits)) & std_logic_vector(to_unsigned(bit_map.addr_offset + (y * box.x_size) + x, rom_addr_bits));

end architecture; 