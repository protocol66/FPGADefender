library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;

entity score is
    port (
        box    : Bounding_Box;
        enable : in std_logic;
        score_in  : in unsigned(3 downto 0);
        in_bounds : buffer std_logic;
        pixel     : out Pixel_t
    );
end entity score;

architecture rtl of score is
    constant X_SIZE : integer := 600;
    constant Y_SIZE : integer := 400;
    signal bit_map : bit_map_t(0 to X_SIZE-1, 0 to Y_SIZE-1) := (others => (others => RED));

    signal x, y : integer;

begin

    -- bit_map <= (0|2|4|6|8|10|12|14|16|18 => (others => GREEN),
    --             others => (1|3|5|7|9|11|13|15|17|19 => BLUE, others => RED));

    x <= get_bb_x_index(box);
    y <= get_bb_y_index(box);
    in_bounds <= check_bb_bounds(box, X_SIZE, Y_SIZE);

    pixel <= bit_map(y,x) when (enable and in_bounds) = '1' else BLACK;
    

end architecture;