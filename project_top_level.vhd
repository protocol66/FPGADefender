library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;

entity project_top_level is
    port (
        MAX10_CLK1_50   : in std_logic;
        reset_L : in std_logic;
        pause   : in std_logic;

        shoot_L : in std_logic;

        VGA_HS  : out std_logic;
        VGA_VS  : out std_logic;

        HEX0, HEX1, HEX2, HEX3    : out std_logic_vector(7 downto 0);

        GSENSOR_CS_N : OUT	STD_LOGIC;
        GSENSOR_SCLK : OUT	STD_LOGIC;
        GSENSOR_SDI  : INOUT	STD_LOGIC;
        GSENSOR_SDO  : INOUT	STD_LOGIC;

        VGA_R, VGA_G, VGA_B : out std_logic_vector(3 downto 0)
    );
end entity project_top_level;

architecture rtl of project_top_level is

    component vga_controller is
	port(
		pixel_clk	:	IN		STD_LOGIC;	--pixel clock at frequency of VGA mode being used
		reset_n		:	IN		STD_LOGIC;	--active low asycnchronous reset
		h_sync		:	OUT	STD_LOGIC;	--horiztonal sync pulse
		v_sync		:	OUT	STD_LOGIC;	--vertical sync pulse
		disp_ena	:	OUT	STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		column		:	OUT	INTEGER;		--horizontal pixel coordinate
		row			:	OUT	INTEGER;		--vertical pixel coordinate
		n_blank		:	OUT	STD_LOGIC;	--direct blacking output to DAC
		n_sync		:	OUT	STD_LOGIC); --sync-on-green output to DAC
    end component vga_controller;

    component vga_pll_25_175 is
	port
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
    end component vga_pll_25_175;

    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in integer;
            clk_out : buffer std_logic := '0'
        );
    end component clk_div;

    component pseudorandom_8 is
        port (
            clk      : in std_logic;
            reset_L  : in std_logic := '0';
            enable   : in std_logic := '0';
            seed     : in std_logic_vector(7 downto 0);
            random_8 : out std_logic_vector(7 downto 0)
        );
    end component pseudorandom_8;

    component bin2seg7 is
        port (
            inData    : in std_logic_vector(3 downto 0);
            enable    : in std_logic;
            dispPoint : in std_logic;
            HEX : out std_logic_vector(7 downto 0)
        );
    end component bin2seg7;

    component score is
        port (
            box    : Bounding_Box;
            enable : in std_logic;
            score_in  : in unsigned(3 downto 0);
            pixel     : out Pixel_t
        );
    end component score;
    

    component objDisp is
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
    end component;

    component ship_movement is
        port (
            max10_clk : in std_logic;
            reset_L : in std_logic;
    
            x_offset : out integer;
            y_offset : out integer;
        
            GSENSOR_CS_N : OUT	STD_LOGIC;
            GSENSOR_SCLK : OUT	STD_LOGIC;
            GSENSOR_SDI  : INOUT	STD_LOGIC;
            GSENSOR_SDO  : INOUT	STD_LOGIC
        );
    end component;

    constant NUM_LIVES : natural := 3;

    type ship_lives_boxes is array (NUM_LIVES-1 downto 0) of Bounding_Box;

    signal vga_clk              : std_logic;
    signal global_display_en    : std_logic;
    signal global_x             : integer;
    signal global_y             : integer;

    signal very_slow_clk_x : std_logic;
    signal very_slow_clk_y : std_logic;

    signal curr_pixel : Pixel_t;

    signal ship_box : Bounding_Box;
    signal ship_lives_box : ship_lives_boxes;
    signal ship_lives : std_logic_vector(NUM_LIVES-1 downto 0) := (others => '1'); -- one-hot ship lives

    signal ship_reset_L : std_logic := '1';
    signal ship_alive : std_logic := '1';
    signal ship_collision : std_logic := '0';
    signal shipX_offset : integer := 0;
    signal shipY_offset : integer := 0;

    signal score_box : Bounding_Box;
    signal rand_x_pos : std_logic_vector(7 downto 0);
    signal rand_y_pos : std_logic_vector(7 downto 0);

    signal game_over : std_logic := '0';



begin

    PLL1 : vga_pll_25_175 port map (MAX10_CLK1_50, vga_clk);

    RAND_CLK_x : clk_div port map (MAX10_CLK1_50, 8_000_000, very_slow_clk_x);
    RAND_CLK_y : clk_div port map (MAX10_CLK1_50, 5_000_000, very_slow_clk_y);

    VGA_CONTROLL : vga_controller port map (
        pixel_clk => vga_clk,
        reset_n => '1',
        h_sync => VGA_HS,
        v_sync => VGA_VS,
        disp_ena => global_display_en,
        column => global_x,
        row    => global_y,
        n_blank => open,
        n_sync => open
    );

    X_POS : pseudorandom_8 port map (
        clk => very_slow_clk_x,
        reset_L => '1',
        enable => '1',
        seed => "10101010",
        random_8 => rand_x_pos
    );

    Y_POS : pseudorandom_8 port map (
        clk => very_slow_clk_y,
        reset_L => '1',
        enable => '1',
        seed => "11111111",
        random_8 => rand_y_pos
    );

    score_box.x_pos <= global_x;
    score_box.y_pos <= global_y;
    score_box.x_origin <= to_integer(unsigned(rand_x_pos));
    score_box.y_origin <= to_integer(unsigned(rand_y_pos));
    
    VGA_R <= curr_pixel.red;
    VGA_G <= curr_pixel.green;
    VGA_B <= curr_pixel.blue;

    TEST1: score port map (
        box => score_box,
        enable => global_display_en,
        score_in => "0000",
        pixel => curr_pixel
    );

    DIAGNOSTIC1: bin2seg7 port map (
        inData => rand_x_pos(3 downto 0),
        enable => '1',
        dispPoint => '0',
        HEX => HEX0
    );

    DIAGNOSTIC2: bin2seg7 port map (
        inData => rand_x_pos(7 downto 4),
        enable => '1',
        dispPoint => '0',
        HEX => HEX1
    );
    DIAGNOSTIC3: bin2seg7 port map (
        inData => rand_y_pos(3 downto 0),
        enable => '1',
        dispPoint => '0',
        HEX => HEX2
    );

    DIAGNOSTIC4: bin2seg7 port map (
        inData => rand_y_pos(7 downto 4),
        enable => '1',
        dispPoint => '0',
        HEX => HEX3
    );

    -- process (very_slow_clk)
    -- begin
    --     if rising_edge(very_slow_clk) then
    --         if (score_box.x_origin < 600)  then
    --             score_box.x_origin <= score_box.x_origin + 1;
    --         else 
    --             score_box.x_origin <= 0;
    --         end if;
    --     end if;
    -- end process;

    SHIP_OFFSET_GEN: ship_movement port map (max10_clk => MAX10_CLK1_50, reset_L => ship_reset_L, x_offset => shipX_offset, y_offset => shipY_offset, 
                                            SPI_SDI => GSENSOR_SDI, SPI_SDO => GSENSOR_SDO, SPI_CSN => GSENSOR_CS_N, SPI_CLK => GSENSOR_SCLK);
    SHIP_CURR: objDisp generic map (X_SIZE => ship_sizeX, Y_SIZE => ship_sizeY, bitmap => shipBitmap)
                        port map (box => ship_box, enable => ship_alive, pixel => curr_pixel);
    
    ship_box.x_pos <= global_x;
    ship_box.y_pos <= global_y;
    ship_box.x_origin <= SHIP_SPAWNX + shipX_offset;
    ship_box.y_origin <= SHIP_SPAWNY + shipY_offset;
    
    ship_main : process(ship_collision)
    begin
        if ship collision = '1' then
            ship_alive <= '0';
            ship_reset_L <= '0';
            if ship_lives /= "000" then
                ship_lives <= std_logic_vector(shift_right(unsigned(ship_lives), 1));
            else 
                game_over <= '1';
        else
            ship_alive <= '1';
            ship_reset_L <= '1';
        end if;
    end process;
     
----Ship Lives--------------------------------------------------------------------------------------------------------------------
    SHIP_LIVES: for I in 0 to NUM_LIVES-1 generate
                    SHIP_LIFE: objDisp generic map (X_SIZE => ship_sizeX, Y_SIZE => ship_sizeY, bitmap => shipBitmap)
                                        port map (box => shipLives_box(I), enable => ship_lives(I), pixel => curr_pixel);
                    
                    shipLives_box(I).x_pos <= global_x;
                    shipLives_box(I).y_pos <= global_y;
                    shipLives_box(I).x_origin <= 10 + ((10 + ship_sizeX) * I);
                    shipLives_box(I).y_origin <= 5;
    end generate;

----Laser-------------------------------------------------------------------------------------------------------------------------
    -- laser : process(shoot_L)
    -- begin
    --     if shoot_L = '0' then
            
    --     end if;
    -- end process;

end architecture;