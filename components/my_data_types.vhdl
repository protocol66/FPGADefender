library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


package my_data_types is

    type Pixel_t is record
        red : std_logic_vector(1 downto 0);
        green : std_logic_vector(1 downto 0);
        blue : std_logic_vector(1 downto 0);
    end record;


    type Bounding_Box is record
        x_origin : integer range 0 to 640-1;
        y_origin : integer range 0 to 480-1;
        x_pos    : integer range 0 to 640-1;
        y_pos    : integer range 0 to 480-1;
    end record;

    type fx_ar_t is array(31 downto 0) of integer range 0 to 2000;  --max frequency is 2000hz

    type Sound_FX_t is record
        fx_trans_freq : integer;
        fx_ar_freq : fx_ar_t;
    end record;

    type bit_map_t is array (natural range<>, natural range<>) of Pixel_t;
    constant BLACK  : Pixel_t := ((others => '0'), (others => '0'), (others => '0'));
    constant BLUE   : Pixel_t := ((others => '0'), (others => '0'), (others => '1'));
    constant GREEN  : Pixel_t := ((others => '0'), (others => '1'), (others => '0'));
    constant TEAL   : Pixel_t := ((others => '0'), (others => '1'), (others => '1'));
    constant RED    : Pixel_t := ((others => '1'), (others => '0'), (others => '0'));
    constant PURPLE : Pixel_t := ((others => '1'), (others => '0'), (others => '1'));
    constant YELLOW : Pixel_t := ((others => '1'), (others => '1'), (others => '0'));
    constant WHITE  : Pixel_t := ((others => '1'), (others => '1'), (others => '1'));

    function get_bb_x_index (b : Bounding_Box) return integer;
    function get_bb_y_index (b : Bounding_Box) return integer;
    function check_bb_bounds (b : Bounding_Box; x_size : integer; y_size : integer) return std_logic;

end package;

package body my_data_types is

    function get_bb_x_index (b : Bounding_Box) return integer is
    begin
        return b.x_pos - b.x_origin;
    end function;

    function get_bb_y_index (b : Bounding_Box) return integer is
    begin
        return b.y_pos - b.y_origin;
    end function;

    function check_bb_bounds (b : Bounding_Box; x_size : integer; y_size : integer) return std_logic is
    begin
        if ((b.x_pos >= b.x_origin) and (b.x_pos < b.x_origin + x_size) and (b.y_pos >= b.y_origin) and (b.y_pos < b.y_origin + y_size)) then
            return '1';
        else
            return '0';
        end if;
    end function;

end package body;