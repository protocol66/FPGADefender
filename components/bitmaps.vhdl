library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant line_width : natural := 640;
    constant line_length : natural := 2;

    constant ship_sizeX : natural := 25;
    constant ship_sizeY : natural := 25;

    constant score_sizeX : natural := 20;
    constant score_sizeY : natural := 40;


    constant H_LINE : bit_map_t (0 to line_width-1, 0 to line_length-1) := (others => (others => WHITE));

    constant SHIP : bit_map_t (0 to ship_sizeX-1, 0 to ship_sizeY-1) := (others => (others => TEAL));
end package;