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

    constant pepe_sizeX : positive := 100;
    constant pepe_sizeY : positive := 100;

    constant line_sizeX : positive := screen_WIDTH;
    constant line_sizeY : positive := 2;

    constant ship_sizeX : positive := 25;
    constant ship_sizeY : positive := 25;
    
    constant laser_sizeX : positive := ship_sizeX;
    constant laser_sizeY : positive := 1;

    constant score_sizeX : positive := 15;
    constant score_sizeY : positive := 25;
    constant score_space_size :positive := 5;
    constant score_board_sizeX : positive := (score_sizeX + score_space_size)*5 + score_sizeY;
    constant score_board_sizeY : positive := score_sizeY;

    constant alien1_sizeX : positive := 20;
    constant alien1_sizeY : positive := 20;

    constant asteroid_sizeX : positive := 40;
    constant asteroid_sizeY : positive := 40;

end package;