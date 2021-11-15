library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant line_sizeX : positive := 640;
    constant line_sizeY : positive := 2;

    constant ship_sizeX : positive := 25;
    constant ship_sizeY : positive := 25;

    constant score_sizeX : positive := 8;
    constant score_sizeY : positive := 8;


    constant H_LINE : bit_map_t (0 to line_sizeY-1, 0 to line_sizeX-1) := (others => (others => WHITE));
    constant SHIP : bit_map_t (0 to ship_sizeY-1, 0 to ship_sizeX-1) := (others => (others => TEAL));




    constant score_bit_test : bit_map_t (0 to score_sizeY-1, 0 to score_sizeX-1) := 
    
    (0 => (4 => (X"6",X"8",X"5"), 2|3|5 => (X"6",X"9",X"4"), 6 => (X"9",X"b",X"9"), 1 => (X"a",X"b",X"b"), 0|7 => (X"e",X"e",X"f")),
1 => (5 => (X"5",X"8",X"4"), 3 => (X"6",X"8",X"4"), 4|6 => (X"6",X"8",X"5"), 2 => (X"6",X"9",X"4"), 1 => (X"7",X"9",X"6"), 7 => (X"a",X"b",X"b"), 0 => (X"d",X"d",X"e")),
2 => (6 => (X"4",X"4",X"4"), 3 => (X"5",X"5",X"5"), 1 => (X"6",X"9",X"4"), 2 => (X"7",X"9",X"6"), 0 => (X"8",X"a",X"7"), 4 => (X"9",X"a",X"9"), 7 => (X"a",X"b",X"a"), 5 => (X"b",X"b",X"a")),
3 => (6 => (X"5",X"7",X"4"), 3|4 => (X"6",X"8",X"5"), 0|1 => (X"6",X"9",X"4"), 2 => (X"6",X"9",X"5"), 5 => (X"7",X"9",X"6"), 7 => (X"b",X"b",X"b")),
4 => (0|1|2|3|4|5|6 => (X"6",X"9",X"4"), 7 => (X"b",X"b",X"b")),
5 => (0|1 => (X"6",X"9",X"4"), 6 => (X"8",X"6",X"3"), 2|4 => (X"8",X"6",X"4"), 5 => (X"8",X"7",X"4"), 3 => (X"9",X"6",X"4"), 7 => (X"b",X"9",X"9")),
6 => (0 => (X"5",X"8",X"6"), 3 => (X"6",X"8",X"4"), 1|2 => (X"6",X"9",X"4"), 5 => (X"7",X"7",X"4"), 4 => (X"7",X"8",X"4"), 6 => (X"a",X"9",X"8"), 7 => (X"d",X"d",X"e")),
7 => (0 => (X"2",X"4",X"e"), 1 => (X"3",X"5",X"b"), 2|4 => (X"4",X"6",X"8"), 3 => (X"4",X"7",X"7"), 5 => (X"6",X"8",X"c"), 6|7 => (X"d",X"e",X"f")));

end package;