library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;

entity objDisp is
    generic (
        X_SIZE : integer;
        Y_SIZE : integer;
        bitmap : bit_map_t(0 to X_SIZE-1), 0 to Y_SIZE-1)
    );
    port (
        box : Bounding_Box;
        enable : in std_logic;
        pixel : out Pixel_t
    );
end objDisp;

architecture arch of objDisp is
    signal x, y : integer;
    signal in_bounds : std_logic;

begin
    x <= get_bb_x_index(box);
    y <= get_bb_y_index(box);
    in_bounds <= check_bb_bounds(box, X_SIZE, Y_SIZE);

    pixel <= bit_map(x,y) when (enable and in_bounds) = '1' else BLACK;


end architecture; 