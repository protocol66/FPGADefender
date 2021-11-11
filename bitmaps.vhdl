library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

package bitmaps is
    constant ship_sizeX : natural := 25;
    constant ship_sizeY : natural := 25;

    constant score_sizeX : natural := 20;
    constant score_sizeY : natural := 40;

    constant SHIP : bit_map_t (ship_sizeX, ship_sizeY) := (others => (others => TEAL));
end package;