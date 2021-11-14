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

        VGA_HS  : out std_logic;
        VGA_VS  : out std_logic;

        HEX0, HEX1, HEX2, HEX3    : out std_logic_vector(7 downto 0);

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

    signal vga_clk              : std_logic;
    signal global_display_en    : std_logic;
    signal global_x             : integer;
    signal global_y             : integer;

    signal very_slow_clk_x : std_logic;
    signal very_slow_clk_y : std_logic;

    signal score_box : Bounding_Box;
    signal score_pixel : Pixel_t;
    signal rand_x_pos : std_logic_vector(7 downto 0);
    signal rand_y_pos : std_logic_vector(7 downto 0);

begin

    PLL1 : vga_pll_25_175 port map (MAX10_CLK1_50, vga_clk);

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


    score_box.x_pos <= global_x;
    score_box.y_pos <= global_y;
    -- score_box.x_origin <= to_integer(unsigned(rand_x_pos));
    -- score_box.y_origin <= to_integer(unsigned(rand_y_pos));

    score_box.x_origin <= 0;
    score_box.y_origin <= 0;
    
    VGA_R <= score_pixel.red;
    VGA_G <= score_pixel.green;
    VGA_B <= score_pixel.blue;

    TEST1: score port map (
        box => score_box,
        enable => global_display_en,
        score_in => "0000",
        pixel => score_pixel
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
    
end architecture;