library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity objDisp is
    generic (
        X_SIZE : positive;
        Y_SIZE : positive
    );
    port (
        clk : std_logic;
        box : Bounding_Box;
        -- bit_map : bit_map_t(0 to Y_SIZE-1, 0 to X_SIZE-1);
        enable : in std_logic;
        pixel : out Pixel_t
    );
end objDisp;

architecture arch of objDisp is
    component rom1 IS
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
        );
    end component rom1;

    signal x, y : integer;
    signal addr : std_logic_vector(15 downto 0);
    signal in_bounds : std_logic;
    signal mem_out : std_logic_vector(5 downto 0);

begin
    x <= get_bb_x_index(box);
    y <= get_bb_y_index(box);
    in_bounds <= check_bb_bounds(box, X_SIZE, Y_SIZE);

    addr <= std_logic_vector(to_unsigned(y, 8)) & std_logic_vector(to_unsigned(x, 8));

    M1: rom1 port map (address => addr, clock=>clk, q => mem_out);

    pixel <= Pixel_t'(mem_out(5 downto 4), mem_out(3 downto 2), mem_out(1 downto 0)) when (enable and in_bounds) = '1' else BACKGROUND;


end architecture; 