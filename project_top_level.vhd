library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;
use work.my_data_types.all;
use work.bitmaps.all;

entity project_top_level is
    port (
        MAX10_CLK1_50   : in std_logic;
        reset_L : in std_logic;
        pause   : in std_logic;

        KEY : in std_logic_vector(1 downto 0);

        VGA_HS  : out std_logic;
        VGA_VS  : out std_logic;

        -- HEX0, HEX1, HEX2, HEX3    : out std_logic_vector(7 downto 0);
        SW : in std_logic_vector(9 downto 0);
        LEDR : out std_logic_vector(9 downto 0);
        ARDUINO_IO : out std_logic_vector(12 downto 12);

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

    component rom_controller is
        port (
            clk   : in std_logic;
            address : in std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0);
            pixel : out Pixel_t
        );
    end component rom_controller;

    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in integer;       -- rounds down to closest even number
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

    -- component score is
    --     generic (
    --             X_SIZE : positive;
    --             Y_SIZE : positive
    --     );
    --     port (
    --         box    : Bounding_Box;
    --         enable : in std_logic;
    --         score_in  : in integer;
    --         pixel     : out Pixel_t
    --     );
    -- end component score;

    component note_gen is
        port (
            clk   : in std_logic;       -- must be 44100hz
            enable : in std_logic;
            notes : in std_logic_vector(11 downto 0); -- twelve notes in an octave
            pwm : buffer std_logic := '0'
        );
    end component note_gen;

    component sound_fx is
        port (
            clk   : in std_logic;   -- make this 50mhz
            reset_L : in std_logic;
            enable : in std_logic;
            fx : in Sound_FX_t;
            pwm : out std_logic
        );
    end component sound_fx;

    component objDisp is
        port (
            box : in Bounding_Box;
            bit_map : in bit_map_t;
            in_bounds : out std_logic := '0';
            mem_addr : out std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0)
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

    component laser_movement is
        port (
            max10_clk : in std_logic;
            shoot : in std_logic;
    
            x_loc : out integer
        );    
    end component;

    component alien_movement is
        generic (
            X_SIZE : positive;
            Y_SIZE : positive
        );
        port (
            max10_clk : in std_logic;
            reset_L : in std_logic;
            alive : in std_logic;
            cnt_div : positive := 500000;
    
            x_loc : out integer;
            y_loc : out integer
        );        
    end component;

    component obstacle_movement is
        generic (
            Y_SIZE : positive
        );
        port (
            max10_clk : in std_logic;
            active : in std_logic;
            cnt_div : positive := 2500000;
            x_loc : out integer;
            y_loc : out integer
        );        
    end component;
    
    constant SEC : positive := 50000000;

    constant BACKGROUND : Pixel_t := BLACK;
    constant NUM_LIVES : positive := 3;
    constant SHIP_SPAWNX : positive := 160;
    constant SHIP_SPAWNY : positive := 240;
    constant NUM_LASERS : positive := 40;

    constant NUM_ENEMIES : positive := 16;
    constant NUM_ASTEROIDS : positive := 5;


    -- type ship_lives_boxes is array (NUM_LIVES-1 downto 0) of Bounding_Box;
    -- type ship_lives_pixel_vector is array (NUM_LIVES-1 downto 0) of Pixel_t;
    type ship_lives_ar_t is array (NUM_LIVES-1 downto 0) of obj;

    -- type laser_boxes is array (NUM_LASERS-1 downto 0) of Bounding_Box;
    -- type laser_pixel_vector is array (NUM_LASERS-1 downto 0) of Pixel_t;
    -- type laser_loc_vector is array (NUM_LASERS-1 downto 0) of integer;
    type laser_ar_t is array (NUM_LASERS-1 downto 0) of obj;
    type laser_loc_ar_t is array (NUM_LASERS-1 downto 0) of integer;

    -- type aliens_boxes is array (NUM_ENEMIES-1 downto 0) of Bounding_Box;
    -- type aliens_pixel_vector is array (NUM_ENEMIES-1 downto 0) of Pixel_t;
    type alien_ar_t is array (NUM_ENEMIES-1 downto 0) of obj;

    -- type asteroids_boxes is array (NUM_ASTEROIDS-1 downto 0) of Bounding_Box;
    -- type asteroids_pixel_vector is array (NUM_ASTEROIDS-1 downto 0) of Pixel_t;
    type asteroids_ar_t is array (NUM_ASTEROIDS-1 downto 0) of obj;

    signal vga_clk              : std_logic;
    signal global_display_en    : std_logic;
    signal global_x             : integer;
    signal global_y             : integer;

    signal very_slow_clk_x : std_logic;
    signal very_slow_clk_y : std_logic;

    signal curr_pixel : Pixel_t;
    signal rom_pixel : Pixel_t;
    signal show_background : std_logic := '0';
    signal curr_mem_addr : std_logic_vector(bit_map_addr_bits-1 downto 0) := (others => '0');
    
    -- signal Tline_box : Bounding_Box;
    -- signal top_line_pixel : Pixel_t;
    -- signal Bline_box : Bounding_Box;
    -- signal bottom_line_pixel : Pixel_t;
    signal Tline : obj := DEFUALT_OBJ;
    signal Bline : obj := DEFUALT_OBJ;
    
    -- signal ship_box : Bounding_Box;
    -- signal ship_pixel : Pixel_t;
    -- signal ship_life_pixels : ship_lives_pixel_vector;
    -- signal ship_lives_box : ship_lives_boxes;
    -- signal ship_lives : std_logic_vector(NUM_LIVES-1 downto 0) := (others => '1'); -- one-hot ship lives
    signal ship : obj := DEFUALT_OBJ;
    signal ship_lives : ship_lives_ar_t := (others => DEFUALT_OBJ);
    signal ship_lives_one_hot : std_logic_vector(NUM_LIVES-1 downto 0) := (others => '1'); -- one-hot ship lives
    
    -- signal ship_reset_L : std_logic := '1';
    -- signal ship_alive : std_logic := '1';
    -- signal ship_collision : std_logic := '0';
    -- signal shipX_offset : integer := 0;
    -- signal shipY_offset : integer := 0;
    signal ship_reset_L : std_logic := '1';
    signal ship_alive : std_logic := '1';
    signal ship_collision : std_logic := '0';
    signal shipX_offset : integer := 0;
    signal shipY_offset : integer := 0;
    
    
    -- signal lasers_box : laser_boxes;
    -- signal laser_pixels : laser_pixel_vector;
    -- signal laser_shoot_main : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    -- signal laser_hit : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    -- signal laser_shoot2 : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    -- signal laser_x : laser_loc_vector;
    -- signal laser_y : laser_loc_vector;
    signal lasers : laser_ar_t := (others => DEFUALT_OBJ);
    signal laser_shoot_main : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_hit : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_shoot2 : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_x : laser_loc_ar_t;
    signal laser_y : laser_loc_ar_t;

    -- signal laser_box : Bounding_Box;
    -- signal laser_pixel : Pixel_t;
    -- signal laser_shoot : std_logic;
    -- signal laser_xloc : integer;
    -- signal lasers_xloc : laser_loc_vector;
    signal laser : obj := DEFUALT_OBJ;
    signal laser_shoot : std_logic;
    signal laser_xloc : integer;
    signal lasers_xloc : laser_loc_ar_t;
    
    -- signal aliens_box : aliens_boxes;
    -- signal aliens_pixels : aliens_pixel_vector;
    -- signal aliens_alive : std_logic_vector(NUM_ENEMIES-1 downto 0) := (0|1|2 => '1', others => '0'); -- one-hot aliens
    -- signal aliens_killed : std_logic_vector(NUM_ENEMIES-1 downto 0) := (others => '0'); -- one-hot aliens
    signal aliens : alien_ar_t := (others => DEFUALT_OBJ);
    signal aliens_alive : std_logic_vector(NUM_ENEMIES-1 downto 0) := (0|1|2 => '1', others => '0'); -- one-hot aliens
    signal aliens_killed : std_logic_vector(NUM_ENEMIES-1 downto 0) := (others => '0'); -- one-hot aliens

    -- signal asteroids_box : asteroids_boxes;
    -- signal asteroids_pixels : asteroids_pixel_vector;
    -- signal asteroids_active : std_logic_vector(NUM_ASTEROIDS-1 downto 0) := (others => '0');
    signal asteroids : asteroids_ar_t := (others => DEFUALT_OBJ);

    -- signal score_box : Bounding_Box;
    -- signal score_pixel : Pixel_t;
    signal score : obj := DEFUALT_OBJ;
    
    signal game_over : std_logic := '0';
    
    signal very_slow_clk : std_logic;
    signal a1_clk : std_logic;
    signal alien_spawn_clk : std_logic;
    signal as_clk : std_logic;
    signal random_num : std_logic_vector(7 downto 0);

    -- signal obj : bit_map_t (0 to asteroid_sizeY-1, 0 to asteroid_sizeX-1);
    -- signal random_alive_div : std_logic_vector(7 downto 0);

    signal pwm : std_logic_vector(5 downto 0);
    signal note_clk : std_logic;


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

    BITMAP_LOOKUP: rom_controller port map (clk => vga_clk, address => curr_mem_addr, pixel => rom_pixel);

    curr_pixel <= rom_pixel when show_background = '1' else BACKGROUND;
    VGA_R <= curr_pixel.red;
    VGA_G <= curr_pixel.green;
    VGA_B <= curr_pixel.blue;


    Tline.box.x_pos <= global_x;
    Tline.box.y_pos <= global_y;
    Tline.box.x_origin <= 0;
    Tline.box.y_origin <= 10 + ship_sizeY;
    Tline.enable <= '1';

    Bline.box.x_pos <= global_x;
    Bline.box.y_pos <= global_y;
    Bline.box.x_origin <= 0;
    Bline.box.y_origin <= screen_HEIGHT - 10;
    Bline.enable <= '1';

    score.box.x_pos <= global_x;
    score.box.y_pos <= global_y;
    score.box.x_origin <= 100;
    score.box.y_origin <= 100;

    ship.box.x_pos <= global_x;
    ship.box.y_pos <= global_y;
    ship.box.x_origin <= SHIP_SPAWNX + shipX_offset;
    ship.box.y_origin <= SHIP_SPAWNY + shipY_offset;

    -- SCORE_1: score 
    --     generic map (
    --         X_SIZE => score_board_sizeX,
    --         Y_SIZE => score_board_sizeY
    --     )
    --     port map (
    --         box => score_box,
    --         enable => '1',
    --         score_in => 987654,
    --         pixel => curr_pixel
    --     );

    -- PEPE: objDisp 
    --     generic map (
    --         X_SIZE => pepe_sizeX,
    --         Y_SIZE => pepe_sizeY
    --     )
    --     port map (
    --         box => pepe_box,
    --         bit_map => pepe_bit_map,
    --         enable => '1',
    --         pixel => curr_pixel
    --     );


    ---------- MUSIC + SOUND FX ------------------------------------------------------------------------------------------------------------------------
    -- CLK_88200: clk_div port map (clk_in => MAX10_CLK1_50, div => 567, clk_out => note_clk); -- 882000hz, go one octave higher than spec, beca
    -- CALC_NOTE: note_gen port map (clk => note_clk, enable => '1', notes => SW & '0' & '0', pwm => pwm);
    -- ARDUINO_IO(12) <= pwm;

    -- FX_GEN6: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(5),
    --     fx => fx6,
    --     pwm => pwm(5)
    -- );
    -- FX_GEN5: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(4),
    --     fx => fx5,
    --     pwm => pwm(4)
    -- );
    -- FX_GEN4: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(3),
    --     fx => fx4,
    --     pwm => pwm(3)
    -- );
    -- FX_GEN3: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(2),
    --     fx => fx3,
    --     pwm => pwm(2)
    -- );
    -- FX_GEN2: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(1),
    --     fx => fx2,
    --     pwm => pwm(1)
    -- );
    -- FX_GEN1: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => KEY(0),
    --     enable => SW(0),
    --     fx => fx1,
    --     pwm => pwm(0)
    -- );

    -- ARDUINO_IO(12) <= pwm(5) xor pwm(4) xor pwm(3) xor pwm(2) xor pwm(1) xor pwm(0);

    
    ----------- Setup main screen ------------------------------------------------------------------------------------------------------------------------------------

    -- TOP_LINE: objDisp generic map (X_SIZE => line_sizeX, Y_SIZE => line_sizeY)
    --                     port map (box => Tline_box, clk => MAX10_CLK1_50, enable => '1', pixel => top_line_pixel);
    -- BOTTOM_LINE: objDisp generic map (X_SIZE => line_sizeX, Y_SIZE => line_sizeY)
    --                     port map (box => Bline_box, clk  => MAX10_CLK1_50, enable => '1', pixel => bottom_line_pixel);

    -- SHIP_OFFSET_GEN: ship_movement port map (max10_clk => MAX10_CLK1_50, reset_L => ship_reset_L, x_offset => shipX_offset, y_offset => shipY_offset, 
    --                                          GSENSOR_SDI => GSENSOR_SDI, GSENSOR_SDO => GSENSOR_SDO, GSENSOR_CS_N => GSENSOR_CS_N, GSENSOR_SCLK => GSENSOR_SCLK);
    -- SHIP_CURR: objDisp generic map (X_SIZE => ship_sizeX, Y_SIZE => ship_sizeY)
    --                     port map (box => ship_box, clk  => MAX10_CLK1_50, enable => ship_alive AND NOT game_over, pixel => ship_pixel);

    -- SCORE_1: objDisp generic map (X_SIZE => score_sizeX, Y_SIZE => score_sizeY)
    --                     port map (box => score_box, clk  => MAX10_CLK1_50, enable => KEY(0), pixel => score_pixel);

    TOP_LINE: objDisp port map (box => Tline.box, bit_map => Tline.bit_map, in_bounds => Tline.in_bounds, mem_addr => Tline.abs_mem_addr);
    BOTTOM_LINE: objDisp port map (box => Bline.box, bit_map => Bline.bit_map, in_bounds => Bline.in_bounds, mem_addr => Bline.abs_mem_addr);
    SHIP_CURR: objDisp port map (box => ship.box, bit_map => ship.bit_map, in_bounds => ship.in_bounds, mem_addr => ship.abs_mem_addr);
    -- SCORE_1: objDisp port map (box => score_box, clk  => MAX10_CLK1_50, enable => KEY(0), pixel => score_pixel);

    SHIP_OFFSET_GEN: ship_movement port map (max10_clk => MAX10_CLK1_50, reset_L => ship_reset_L, x_offset => shipX_offset, y_offset => shipY_offset, 
                                             GSENSOR_SDI => GSENSOR_SDI, GSENSOR_SDO => GSENSOR_SDO, GSENSOR_CS_N => GSENSOR_CS_N, GSENSOR_SCLK => GSENSOR_SCLK);


--     pixel : process(global_x, global_y)
--     begin
--         curr_pixel <= BACKGROUND;
--         if ship_pixel /= BACKGROUND then
--             curr_pixel <= ship_pixel;
--         end if;
--         for l in 0 to NUM_LIVES-1 loop
--             if ship_life_pixels(l) /= BACKGROUND then
--                 curr_pixel <= ship_life_pixels(l);
--             end if;
--         end loop;
--         for s in 0 to NUM_LASERS-1 loop
--             if laser_pixels(s) /= BACKGROUND then
--                 curr_pixel <= laser_pixels(s);
--             end if;
--         end loop;
--         for a in 0 to NUM_ENEMIES-1 loop
--             if aliens_pixels(a) /= BACKGROUND then
--                 curr_pixel <= aliens_pixels(a);
--             end if;
--         end loop;
--         for a in 0 to NUM_ASTEROIDS-1 loop
--             if asteroids_pixels(a) /= BACKGROUND then
--                 curr_pixel <= asteroids_pixels(a);
--             end if;
--         end loop;
--         if score_pixel /= BACKGROUND then
--             curr_pixel <= score_pixel;
--         end if;    
--         if bottom_line_pixel /= BACKGROUND then
--             curr_pixel <= bottom_line_pixel;
--         end if; 
--         if top_line_pixel /= BACKGROUND then
--             curr_pixel <= top_line_pixel;
--         end if;
--     end process;

pixel : process(global_x, global_y)
    begin
        show_background <= '1';
        if (ship.in_bounds and ship.enable)= '1' then
            curr_mem_addr <= ship.abs_mem_addr;
            show_background <= '0';
        end if;

        for l in 0 to NUM_LIVES-1 loop
            if (ship_lives(l).in_bounds and ship_lives(l).in_bounds) = '1' then
               curr_mem_addr <= ship_lives(l).abs_mem_addr;
               show_background <= '0';
            end if;
        end loop;

        for s in 0 to NUM_LASERS-1 loop
            if (lasers(s).in_bounds and lasers(s).enable) = '1' then
                curr_mem_addr <= lasers(s).abs_mem_addr;
                show_background <= '0';
            end if;
        end loop;

        for a in 0 to NUM_ENEMIES-1 loop
            if (aliens(a).in_bounds and aliens(a).enable) = '1' then
                curr_mem_addr <= aliens(a).abs_mem_addr;
                show_background <= '0';
            end if;
        end loop;

        for a in 0 to NUM_ASTEROIDS-1 loop
            if (asteroids(a).in_bounds and asteroids(a).enable) = '1' then
                curr_mem_addr <= asteroids(a).abs_mem_addr;
                show_background <= '0';
            end if;
        end loop;

        if (score.in_bounds and score.enable) = '1' then
            curr_mem_addr <= score.abs_mem_addr;
            show_background <= '0';
        end if;    

        if (Bline.in_bounds and Bline.enable) = '1' then
            curr_mem_addr <= Bline.abs_mem_addr;
            show_background <= '0';
        end if; 

        if (Tline.in_bounds and Tline.enable) = '1' then
            curr_mem_addr <= Tline.in_bounds;
            show_background <= '0';
        end if;
    end process;

--     collision : process(global_x, global_y)
--     begin
--         if ship_alive = '0' then
--             ship_collision <= '0';
--         end if;
--         if ship_pixel /= BACKGROUND then
--             for a in 0 to NUM_ENEMIES-1 loop
--                 if aliens_pixels(a) /= BACKGROUND then
--                     ship_collision <= '1';
--                 end if;
--             end loop;
--         end if;
--         for l in 0 to NUM_LASERS-1 loop
--             for a in 0 to NUM_ENEMIES-1 loop
--                 if laser_pixels(l) /= BACKGROUND then
--                     if aliens_pixels(a) /= BACKGROUND then
--                         aliens_killed(a) <= '1';
--                         -- laser_hit(l) <= '1';
--                     -- increase score
--                     else
--                         aliens_killed(a) <= '0';
--                         -- laser_hit(l) <= '0';
--                     end if;
--                 end if;
--             end loop;
--         end loop;
--     end process;
--     -- TEST1: score port map (
--     --     box => score_box,
--     --     enable => global_display_en,
--     --     score_in => "0000",
--     --     pixel => score_pixel
--     -- );

--     -- DIAGNOSTIC1: bin2seg7 port map (
--     --     inData => rand_x_pos(3 downto 0),
--     --     enable => '1',
--     --     dispPoint => '0',
--     --     HEX => HEX0
--     -- );

--     -- DIAGNOSTIC2: bin2seg7 port map (
--     --     inData => rand_x_pos(7 downto 4),
--     --     enable => '1',
--     --     dispPoint => '0',
--     --     HEX => HEX1
--     -- );
--     -- DIAGNOSTIC3: bin2seg7 port map (
--     --     inData => rand_y_pos(3 downto 0),
--     --     enable => '1',
--     --     dispPoint => '0',
--     --     HEX => HEX2
--     -- );

--     -- DIAGNOSTIC4: bin2seg7 port map (
--     --     inData => rand_y_pos(7 downto 4),
--     --     enable => '1',
--     --     dispPoint => '0',
--     --     HEX => HEX3
--     -- );
--     -- U1: clk_div port map (clk_in => MAX10_CLK1_50, div => SEC, clk_out => very_slow_clk);
-- --     process (very_slow_clk)
-- --     begin
-- --         if rising_edge(very_slow_clk) then
-- --             -- if (score_box.x_origin < 600)  then
-- --             --     score_box.x_origin <= score_box.x_origin + 1;
-- --             -- else 
-- --             --     score_box.x_origin <= 0;
-- -- --            end if;
-- --         end if;
-- --     end process;
    
--     -- ship_collision <= not KEY(1);
    
--     ship_main : process(ship_collision)
--     begin
--         if rising_edge(ship_collision) then
--             ship_alive <= '0';
--             ship_reset_L <= '0';
--             if ship_lives = "000" then
--                 game_over <= '1';
--             else 
--                 ship_lives <= std_logic_vector(shift_left(unsigned(ship_lives), 1));
-- 			end if;
--         end if;
        
--         if ship_alive = '0' then
--             ship_alive <= '1';
--             ship_reset_L <= '1';
--         end if;
--     end process;
     
-- ----Ship Lives--------------------------------------------------------------------------------------------------------------------
    SHIP_REM_LIVES: for I in 0 to NUM_LIVES-1 generate
                    SHIP_LIFE: objDisp port map (box => ship_lives(I).box, bit_map => ship_lives(I).bit_map, in_bounds => ship_lives(I).in_bounds, ship_lives(I).abs_mem_addr);
                    
                    ship_lives(I).box.x_pos <= global_x;
                    ship_lives(I).box.y_pos <= global_y;
                    ship_lives(I).box.x_origin <= 10 + ((10 + ship_sizeX) * I);
                    ship_lives(I).box.y_origin <= 5;
    end generate;
    
-- ----Laser-------------------------------------------------------------------------------------------------------------------------
--     LASERS: for I in 0 to NUM_LASERS-1 generate
--             LASER_disp: objDisp generic map (X_SIZE => laser_sizeX, Y_SIZE => laser_sizeY)
--                             port map (box => lasers_box(I), clk  => MAX10_CLK1_50, enable => laser_shoot_main(I) AND NOT laser_hit(I), pixel => laser_pixels(I));          
--             LASER_LOC: laser_movement port map (max10_clk => MAX10_CLK1_50, shoot => laser_shoot_main(I) AND NOT laser_hit(I), x_loc => lasers_xloc(I));
--             laser_offset : process(lasers_xloc(I))
--             begin
--                 if laser_x(I) + lasers_xloc(I) > screen_WIDTH then
--                     laser_shoot2(I) <= '0';
--                 else
--                     lasers_box(I).x_origin <= laser_x(I) + lasers_xloc(I);
--                     laser_shoot2(I) <= '1';
--                 end if;
--                 lasers_box(I).y_origin <= laser_y(I);
--             end process;
--             lasers_box(I).x_pos <= global_x;
--             lasers_box(I).y_pos <= global_y;
-- 	end generate;

--     shoot_laser : process(KEY(0), laser_shoot2)
--     variable en : integer := 0;
--     begin
--         if game_over = '0' then
--             if falling_edge(KEY(0)) then
--                 laser_shoot_main(en) <= '1';
--                 laser_x(en) <= ship_box.x_origin;
--                 laser_y(en) <= ship_box.y_origin + 5;
--                 en := (en + 1) mod NUM_LASERS;
--             end if;
--         end if;
--         for i in 0 to NUM_LASERS-1 loop
--             if laser_shoot2(i) = '0' then
--                 laser_shoot_main(i) <= '0';
--             end if;
--         end loop;

--     end process;
    

-- ----Aliens-------------------------------------------------------------------------------------------------------------------------      
--     ALIENS: for I in 0 to NUM_ENEMIES-1 generate
--             ALIEN: objDisp generic map (X_SIZE => alien1_sizeX, Y_SIZE => alien1_sizeY)
--                             port map (box => aliens_box(I), clk => MAX10_CLK1_50, enable => aliens_alive(I), pixel => aliens_pixels(I));
--             ALIEN_LOC: alien_movement generic map (X_SIZE => alien1_sizeX, Y_SIZE => alien1_sizeY)
--                                         port map (max10_clk => MAX10_CLK1_50, reset_L => aliens_alive(I) AND NOT aliens_killed(I), cnt_div => 3 * SEC / 640, alive => aliens_alive(I) AND NOT aliens_killed(I), x_loc => aliens_box(I).x_origin, y_loc => aliens_box(I).y_origin);
--             aliens_box(I).x_pos <= global_x;
--             aliens_box(I).y_pos <= global_y;
-- 	end generate;
	
--     RN: pseudorandom_8 port map (clk => MAX10_CLK1_50, reset_L => '1', enable => '1', seed => "01001101", random_8 => random_num);

--     CLK_A1: clk_div port map (clk_in => MAX10_CLK1_50, div => 5 * SEC, clk_out => a1_clk);
--     ALIEN_SPAWN: process(a1_clk)
--     variable en :integer := 0;
--     begin
--         if rising_edge(a1_clk) then
--             if aliens_alive(en) = '0' then
--                 aliens_alive(en) <= '1';
--                 en := (en + 1) mod NUM_ENEMIES;
--             end if;
--         end if;
--         for i in 0 to NUM_ENEMIES-1 loop
--             if aliens_box(i).x_origin > screen_WIDTH then
--                 aliens_alive(i) <= '0';
--             end if;
--         end loop;
--     end process;

--     ASTEROIDS: for I in 0 to NUM_ASTEROIDS-1 generate
--             ASTEROID_DISP: objDisp generic map (X_SIZE => asteroid_sizeX, Y_SIZE => asteroid_sizeY) 
--                                 port map (box => asteroids_box(I), clk => MAX10_CLK1_50, enable => asteroids_active(I), pixel => asteroids_pixels(I));
--             ASTEROID_LOC: obstacle_movement generic map (Y_SIZE => asteroid_sizeY)
--                                             port map (max10_clk => MAX10_CLK1_50, active => asteroids_active(I), cnt_div => 25 * SEC / 640, x_loc => asteroids_box(I).x_origin, y_loc => asteroids_box(I).y_origin);
--             asteroids_box(I).x_pos <= global_x;
--             asteroids_box(I).y_pos <= global_y;
            
--             OBJ_SELECT : process(random_num(3))
--             begin
--                 if random_num(3) = '1' then
--                     obj <= ASTEROID;
--                 else
--                     obj <= SATELLITE;
--                 end if;
--             end process;

--     end generate;

--     CLK_AS: clk_div port map (clk_in => MAX10_CLK1_50, div => 30 * SEC, clk_out => as_clk);
--     ASTEROID_SPAWN: process(as_clk)
--     variable en :integer := 0;
--     begin
--         if rising_edge(as_clk) then
--             if asteroids_active(en) = '0' then
--                 asteroids_active(en) <= '1';
--                 en := (en + 1) mod NUM_ASTEROIDS;
--             end if;
--         end if;
--         for i in 0 to NUM_ASTEROIDS-1 loop
--             if asteroids_box(i).x_origin > screen_WIDTH then
--                 asteroids_active(i) <= '0';
--             end if;
--         end loop;
--     end process;

end architecture;