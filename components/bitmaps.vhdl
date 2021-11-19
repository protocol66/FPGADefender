library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant screen_HEIGHT : positive := 479;
    constant screen_WIDTH : positive := 639;

    constant line_sizeX : positive := screen_WIDTH;
    constant line_sizeY : positive := 2;

    constant ship_sizeX : positive := 25;
    constant ship_sizeY : positive := 25;
    
    constant laser_sizeX : positive := ship_sizeX;
    constant laser_sizeY : positive := 1;

    constant score_sizeX : positive := 10;
    constant score_sizeY : positive := 10;

    constant alien1_sizeX : positive := 20;
    constant alien1_sizeY : positive := 20;

    constant H_LINE : bit_map_t (0 to line_sizeY-1, 0 to line_sizeX-1) := (others => (others => WHITE));
    constant SHIP : bit_map_t (0 to ship_sizeY-1, 0 to ship_sizeX-1) := (others => (others => TEAL));
    constant LASER : bit_map_t (0 to laser_sizeY-1, 0 to laser_sizeX-1) := (others => (others => GREEN));
    constant ALIEN_1 : bit_map_t (0 to alien1_sizeY-1, 0 to alien1_sizeX-1) := (others => (others => YELLOW)); 


    constant score_bit_test : bit_map_t (0 to score_sizeY-1, 0 to score_sizeX-1) := 
    
    (0 => (3|4|6 => Pixel_t'(X"6",X"9",X"4"), 7 => Pixel_t'(X"6",X"9",X"5"), 2|5 => Pixel_t'(X"7",X"9",X"6"), 8 => Pixel_t'(X"c",X"d",X"d"), 1 => Pixel_t'(X"d",X"d",X"e"), 0 => Pixel_t'(X"d",X"e",X"f"), 9 => Pixel_t'(X"e",X"e",X"f")),
    1 => (5 => Pixel_t'(X"5",X"7",X"4"), 6|7 => Pixel_t'(X"5",X"8",X"4"), 2|3|4 => Pixel_t'(X"6",X"9",X"4"), 8 => Pixel_t'(X"8",X"9",X"8"), 1 => Pixel_t'(X"a",X"b",X"a"), 9 => Pixel_t'(X"c",X"d",X"e"), 0 => Pixel_t'(X"e",X"e",X"f")),
    2 => (8 => Pixel_t'(X"5",X"6",X"4"), 4 => Pixel_t'(X"5",X"6",X"5"), 7 => Pixel_t'(X"6",X"7",X"5"), 2 => Pixel_t'(X"6",X"9",X"4"), 1|3 => Pixel_t'(X"6",X"9",X"5"), 5|6 => Pixel_t'(X"8",X"9",X"7"), 9 => Pixel_t'(X"9",X"a",X"9"), 0 => Pixel_t'(X"b",X"c",X"c")),
    3 => (4 => Pixel_t'(X"4",X"3",X"4"), 8 => Pixel_t'(X"4",X"4",X"4"), 2 => Pixel_t'(X"6",X"8",X"4"), 1 => Pixel_t'(X"6",X"9",X"4"), 7 => Pixel_t'(X"7",X"7",X"7"), 0 => Pixel_t'(X"7",X"9",X"6"), 5 => Pixel_t'(X"9",X"9",X"9"), 3 => Pixel_t'(X"9",X"a",X"8"), 9 => Pixel_t'(X"c",X"c",X"c"), 6 => Pixel_t'(X"d",X"d",X"d")),
    4 => (4|6|7 => Pixel_t'(X"6",X"8",X"4"), 5 => Pixel_t'(X"6",X"8",X"5"), 0|1|2|3 => Pixel_t'(X"6",X"9",X"4"), 8 => Pixel_t'(X"6",X"9",X"5"), 9 => Pixel_t'(X"c",X"c",X"d")),
    5 => (0|1|2|3|4|5|6|7 => Pixel_t'(X"6",X"9",X"4"), 8 => Pixel_t'(X"6",X"9",X"5"), 9 => Pixel_t'(X"c",X"c",X"d")),
    6 => (0|1 => Pixel_t'(X"6",X"9",X"4"), 5|8 => Pixel_t'(X"7",X"7",X"4"), 2|6|7 => Pixel_t'(X"7",X"8",X"4"), 4 => Pixel_t'(X"8",X"6",X"4"), 3 => Pixel_t'(X"9",X"6",X"4"), 9 => Pixel_t'(X"b",X"a",X"a")),
    7 => (2 => Pixel_t'(X"6",X"8",X"4"), 0|1 => Pixel_t'(X"6",X"9",X"4"), 4 => Pixel_t'(X"8",X"6",X"4"), 3 => Pixel_t'(X"8",X"7",X"4"), 7 => Pixel_t'(X"9",X"5",X"3"), 6 => Pixel_t'(X"9",X"6",X"3"), 5 => Pixel_t'(X"9",X"6",X"4"), 8 => Pixel_t'(X"9",X"6",X"5"), 9 => Pixel_t'(X"c",X"c",X"d")),
    8 => (0 => Pixel_t'(X"4",X"6",X"9"), 1 => Pixel_t'(X"5",X"8",X"5"), 6 => Pixel_t'(X"6",X"8",X"5"), 2|3|4|5 => Pixel_t'(X"6",X"9",X"4"), 7 => Pixel_t'(X"9",X"a",X"8"), 8 => Pixel_t'(X"d",X"d",X"e"), 9 => Pixel_t'(X"d",X"e",X"f")),
    9 => (1 => Pixel_t'(X"2",X"4",X"d"), 0 => Pixel_t'(X"2",X"4",X"f"), 2 => Pixel_t'(X"3",X"5",X"a"), 6 => Pixel_t'(X"3",X"5",X"c"), 4 => Pixel_t'(X"4",X"6",X"8"), 3|5 => Pixel_t'(X"4",X"6",X"9"), 7 => Pixel_t'(X"b",X"c",X"f"), 9 => Pixel_t'(X"d",X"e",X"f"), 8 => Pixel_t'(X"e",X"e",X"f")));


end package;