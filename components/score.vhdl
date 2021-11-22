library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity score is
    generic (
            X_SIZE : positive;
            Y_SIZE : positive
    );
    port (
        box    : Bounding_Box;
        enable : in std_logic;
        score_in  : in integer;
        pixel     : out Pixel_t
    );
end entity score;

architecture rtl of score is
    component objDisp is
        generic (
            X_SIZE : positive;
            Y_SIZE : positive
        );
        port (
            box : Bounding_Box;
            bit_map : bit_map_t(0 to Y_SIZE-1, 0 to X_SIZE-1);
            enable : in std_logic;
            pixel : out Pixel_t
        );
    end component;

    component bin2dec is
        port (
            bin  : in integer range 0 to 999999;
            
            hun_th : out std_logic_vector(3 downto 0);
            ten_th : out std_logic_vector(3 downto 0);
            tho : out std_logic_vector(3 downto 0);
            hun : out std_logic_vector(3 downto 0);
            ten : out std_logic_vector(3 downto 0);
            one : out std_logic_vector(3 downto 0)
        );
    end component bin2dec;

    type d_box_vector_t is array(5 downto 0) of Bounding_Box;
    signal d_box : d_box_vector_t;

    type d_bitmap_vector_t is array(5 downto 0) of bit_map_t (0 to score_sizeY-1, 0 to score_sizeX-1);
    signal d_bitmap : d_bitmap_vector_t;

    type d_bitmap_t is array(5 downto 0) of Pixel_t;
    signal d_pixel : d_bitmap_t;

    
    signal bin  : integer range 0 to 999999;
    signal hun_th : std_logic_vector(3 downto 0);
    signal ten_th : std_logic_vector(3 downto 0);
    signal tho : std_logic_vector(3 downto 0);
    signal hun : std_logic_vector(3 downto 0);
    signal ten : std_logic_vector(3 downto 0);
    signal one : std_logic_vector(3 downto 0);

    type dec6_t is array (5 downto 0) of std_logic_vector(3 downto 0);
    signal dec6 : dec6_t;


    signal in_bounds : std_logic;

begin

    D5: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(5),
            bit_map => d_bitmap(5),
            enable => '1',
            pixel => d_pixel(5)
        );

    D4: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(4),
            bit_map => d_bitmap(4),
            enable => '1',
            pixel => d_pixel(4)
        );

    D3: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(3),
            bit_map => d_bitmap(3),
            enable => '1',
            pixel => d_pixel(3)
        );

    D2: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(2),
            bit_map => d_bitmap(2),
            enable => '1',
            pixel => d_pixel(2)
        );

    D1: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(1),
            bit_map => d_bitmap(1),
            enable => '1',
            pixel => d_pixel(1)
        );

    D0: objDisp 
        generic map (
            X_SIZE => score_sizeX,
            Y_SIZE => score_sizeY
        )
        port map (
            box => d_box(0),
            bit_map => d_bitmap(0),
            enable => '1',
            pixel => d_pixel(0)
        );

    BINARY2DEC: bin2dec
            port map (
                bin => score_in,
                hun_th => dec6(5),
                ten_th => dec6(4),
                tho => dec6(3),
                hun => dec6(2),
                ten => dec6(1),
                one => dec6(0)
            );

    
    POS_ASSIGN: for i in 5 downto 0 generate
        d_box(i).x_pos <= box.x_pos;
        d_box(i).y_pos <= box.y_pos;
        d_box(i).x_origin <= box.x_origin + ((score_space_size + score_sizeX) * (5-i));     -- 5-i fixes the order 
        d_box(i).y_origin <= box.y_origin;
    end generate;


    in_bounds <= check_bb_bounds(box, X_SIZE, Y_SIZE);
        
    process (d_pixel, enable, in_bounds)
    begin
        if (enable and in_bounds) = '1' then
            pixel <= BACKGROUND;

            if d_pixel(5) /= BACKGROUND then
                pixel <= d_pixel(5);
            end if;
            if d_pixel(4) /= BACKGROUND then
                pixel <= d_pixel(4);
            end if;
            if d_pixel(3) /= BACKGROUND then
                pixel <= d_pixel(3);
            end if;
            if d_pixel(2) /= BACKGROUND then
                pixel <= d_pixel(2);
            end if;
            if d_pixel(1) /= BACKGROUND then
                pixel <= d_pixel(1);
            end if;
            if d_pixel(0) /= BACKGROUND then
                pixel <= d_pixel(0);
            end if;
        else
            pixel <= BACKGROUND;
        end if;
        
    end process;


    BITMAP_SEL : for i in 5 downto 0 generate
        process (score_in, dec6)
        begin
            case dec6(i) is
                when "0000" => d_bitmap(i) <= score_0;
                when "0001" => d_bitmap(i) <= score_1;
                when "0010" => d_bitmap(i) <= score_2;
                when "0011" => d_bitmap(i) <= score_3;
                when "0100" => d_bitmap(i) <= score_4;
                when "0101" => d_bitmap(i) <= score_5;
                when "0110" => d_bitmap(i) <= score_6;
                when "0111" => d_bitmap(i) <= score_7;
                when "1000" => d_bitmap(i) <= score_8;
                when "1001" => d_bitmap(i) <= score_9;
                when others => d_bitmap(i) <= score_blank;
            end case;            
        end process;
    end generate;

end architecture;