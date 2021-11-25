library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant BACKGROUND : Pixel_t := BLACK;
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

    -- constant H_LINE : bit_map_t (0 to line_sizeY-1, 0 to line_sizeX-1) := (others => (others => WHITE));
    -- constant SHIP : bit_map_t (0 to ship_sizeY-1, 0 to ship_sizeX-1) := (others => (others => TEAL));
    -- constant LASER : bit_map_t (0 to laser_sizeY-1, 0 to laser_sizeX-1) := (others => (others => GREEN));
    -- constant ALIEN_1 : bit_map_t (0 to alien1_sizeY-1, 0 to alien1_sizeX-1) := (others => (others => YELLOW)); 
    -- constant ASTEROID : bit_map_t (0 to asteroid_sizeY-1, 0 to asteroid_sizeX-1) := (others => (others => PURPLE)); 
    -- constant SATELLITE : bit_map_t (0 to asteroid_sizeY-1, 0 to asteroid_sizeX-1) := (others => (others => GREEN)); 

    constant fx1 : Sound_FX_t := (18, (550, 404, 315, 494, 182, 260, 455, 387, 340, 550, 404, 315, 494, 182, 260, 455, 387, 340, others => 0));
    constant fx2 : Sound_FX_t := (10, (300, 350, 500, 700, 990, 970, 1050, 1010, 950, 800, 770, 640, 500, 350, 355, others => 0));
    constant fx3 : Sound_FX_t := (6,  (500, 790, 950, 1300, 1710, 1650, 1300, 800, 700, others=> 0));
    constant fx4 : Sound_FX_t := (60, (1300, 1650, 1660, 1510, 1309, 1158, 1007, 855, others=> 0));
    constant fx5 : Sound_FX_t := (25, (300, 210, 310, 170, 250, 210, 310, 120, 220, 170, 160, 90, 290, 230, 140, 320, 200, 100, 250, 290, others => 0));
    constant fx6 : Sound_FX_t := (15, (700, 702, 698, 701, 699, 700, 250, 251, 249, 252, 248, 130, 131, 129, 132, 128, 130, 130, others=>0));

end package;