library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package constants is
    constant MAIN_CLK_FREQ : integer := 50000000;

    constant num_roms : positive := 1;
    constant rom_id_bits : positive := 8;      -- allows for using 256 separte roms
    constant rom_addr_bits : positive := 16;    -- amount of words in a rom
    constant bit_map_addr_bits : positive := rom_id_bits + rom_addr_bits;

    constant screen_HEIGHT : positive := 479;
    constant screen_WIDTH : positive := 639;

    constant score_space_size :positive := 5;

end package;