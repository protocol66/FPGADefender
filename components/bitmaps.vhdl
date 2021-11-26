library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant BACKGROUND : Pixel_t := BLACK;

    constant DEFUALT_OBJ : OBJ := (box => Bounding_Box'(0,0,0,0,'0', 1, 1), 
                                   bit_map => bit_map_t'(0, 0, 1, 1), 
                                   abs_mem_addr => (others=>'0'),
                                   enable => '0', 
                                   in_bounds => '0', 
                                   pixel => BACKGROUND);


    constant LINE_BITMAP : bit_map_t := bit_map_t'(0, 0, 640, 2);
    constant SHIP_BITMAP : bit_map_t := bit_map_t'(0, 1280, 74, 25);
    constant ALIEN1_BITMAP : bit_map_t := bit_map_t'(0, 3130, 30, 30);
                                   

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