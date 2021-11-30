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

        KEY : in std_logic_vector(1 downto 0);

        VGA_HS  : out std_logic;
        VGA_VS  : out std_logic;

        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5    : out std_logic_vector(7 downto 0);
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

-------- Components --------------------------------------------------------------------------------------------------------------------------------------------

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
            div     : in natural;       -- rounds down to closest even number
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

    component ship_movement is
        port (
            max10_clk : in std_logic;
            reset_L : in std_logic;
            en : in std_logic;
    
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
            random_Y : in std_logic_vector(7 downto 0);
    
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
            reset_L : in std_logic;
            cnt_div : positive := 2500000;
            random_Y : in std_logic_vector (7 downto 0);
            x_loc : out integer;
            y_loc : out integer
        );        
    end component;
    
-------- Constants ---------------------------------------------------------------------------------------------------------------------------------------------

    constant SEC : positive := 50000000;

    constant BACKGROUND : Pixel_t := BLACK;
    constant NUM_LIVES : positive := 3;
    constant SHIP_SPAWNX : positive := 160;
    constant SHIP_SPAWNY : positive := 240;
    constant NUM_LASERS : positive := 16;

    constant NUM_ENEMIES : positive := 4;       -- max of 32 - 8ish due to the random_num
    constant NUM_ASTEROIDS : positive := 3;

-------- Signals -----------------------------------------------------------------------------------------------------------------------------------------------

    type ship_lives_ar_t is array (NUM_LIVES-1 downto 0) of obj;
    type laser_ar_t is array (NUM_LASERS-1 downto 0) of obj;
    type laser_loc_ar_t is array (NUM_LASERS-1 downto 0) of integer;
    type alien_ar_t is array (NUM_ENEMIES-1 downto 0) of obj;
    type asteroids_ar_t is array (NUM_ASTEROIDS-1 downto 0) of obj;

    signal vga_clk              : std_logic;
    signal global_display_en    : std_logic;
    
    signal vga_x                : natural;
    signal vga_y                : natural;
    signal global_x             : natural;
    signal global_y             : natural;

    signal very_slow_clk_x : std_logic;
    signal very_slow_clk_y : std_logic;

    signal curr_pixel : Pixel_t;
    signal rom_pixel : Pixel_t;
    signal show_background : std_logic := '0';
    signal curr_mem_addr : std_logic_vector(bit_map_addr_bits-1 downto 0) := (others => '0');
    
    signal start : obj := DEFUALT_OBJ;
    signal game_over_disp : obj := DEFUALT_OBJ;
    signal Tline : obj := DEFUALT_OBJ;
    signal Bline : obj := DEFUALT_OBJ;
    
    signal ship : obj := DEFUALT_OBJ;
    signal ship_lives : ship_lives_ar_t := (others => DEFUALT_OBJ);
    signal ship_lives_one_hot : std_logic_vector(NUM_LIVES-1 downto 0) := (others => '1'); -- one-hot ship lives
    
    signal ship_reset_L : std_logic := '1';
    signal ship_alive : std_logic := '1';
    signal ship_collision : std_logic := '0';
    signal shipX_offset : integer := 0;
    signal shipY_offset : integer := 0;
    -- for some reason at start of the game, pause needs to be on
    signal lasers : laser_ar_t := (others => DEFUALT_OBJ);
    signal laser_shoot_main : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_hit : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_shoot2 : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_shoot3 : std_logic_vector(NUM_LASERS-1 downto 0) := (others => '0');
    signal laser_x : laser_loc_ar_t;
    signal laser_y : laser_loc_ar_t;


    signal laser : obj := DEFUALT_OBJ;
    signal laser_shoot : std_logic;
    signal lasers_xloc : laser_loc_ar_t;
    signal async_lasers_xloc : laser_loc_ar_t;
    

    signal aliens1 : alien_ar_t := (others => DEFUALT_OBJ);
    signal aliens1_alive : std_logic_vector(NUM_ENEMIES-1 downto 0) := (0|1|2 => '1', others => '0'); -- one-hot aliens
    signal aliens1_killed : std_logic_vector(NUM_ENEMIES-1 downto 0) := (others => '0'); -- one-hot aliens
    signal a1_clk : std_logic;

    signal aliens2 : alien_ar_t := (others => DEFUALT_OBJ);
    signal aliens2_alive : std_logic_vector(NUM_ENEMIES-1 downto 0) := (0|1|2 => '1', others => '0'); -- one-hot aliens
    signal aliens2_killed : std_logic_vector(NUM_ENEMIES-1 downto 0) := (others => '0'); -- one-hot aliens
    signal a2_clk : std_logic;

    signal aliens3 : alien_ar_t := (others => DEFUALT_OBJ);
    signal aliens3_alive : std_logic_vector(NUM_ENEMIES-1 downto 0) := (0|1|2 => '1', others => '0'); -- one-hot aliens
    signal aliens3_killed : std_logic_vector(NUM_ENEMIES-1 downto 0) := (others => '0'); -- one-hot aliens
    signal a3_clk : std_logic;


    signal asteroids : asteroids_ar_t := (others => DEFUALT_OBJ);
    signal asteroids_active : std_logic_vector(NUM_ASTEROIDS-1 downto 0) := (others => '0');
    
    signal curr_score : natural := 0;
    type score_disp_t is array(5 downto 0) of obj;
    signal score_disp : score_disp_t := (others => DEFUALT_OBJ);
    type dec6_t is array (5 downto 0) of std_logic_vector(3 downto 0);
    signal score_dec6 : dec6_t;

    signal game_over : std_logic := '0';
    
    signal very_slow_clk : std_logic;
    signal as_clk : std_logic;
    signal random_num : std_logic_vector(31 downto 0);
    
    signal pause : std_logic := '0';
    signal start_sticky : std_logic := '0'; 

    signal a2_en : std_logic := '0';
    signal a3_en : std_logic := '0';
    signal obs_en : std_logic := '0';

    signal a1_cnt_div : natural;
    signal a1_spawn_div : natural;
    signal a2_cnt_div : natural;
    signal a2_spawn_div : natural;
    signal a3_cnt_div : natural;
    signal a3_spawn_div : natural;
    signal obs_cnt_div : natural;
    signal obs_spawn_div : natural;

    signal pwm : std_logic_vector(5 downto 0);
    signal note_clk : std_logic;
    signal alien_killed_fx : std_logic := '0';
    signal ship_hit_fx : std_logic := '0';


begin

-------- VGA ---------------------------------------------------------------------------------------------------------------------------------------------------

    PLL1 : vga_pll_25_175 port map (MAX10_CLK1_50, vga_clk);

    VGA_CONTROLL : vga_controller port map (
        pixel_clk => vga_clk,
        reset_n => '1',
        h_sync => VGA_HS,
        v_sync => VGA_VS,
        disp_ena => global_display_en,
        column => vga_x,
        row    => vga_y,
        n_blank => open,
        n_sync => open
    );

    FUTUR_XY: process (vga_clk)     -- welcome to piplineing, DON'T CHANGE THIS
        variable x : natural;
        variable y : natural;
    begin
        if rising_edge(vga_clk) then
            x := vga_x + 1;     -- there is a latency of 1.5 clock cycles
            y := vga_y;

            if(x > screen_WIDTH) then
                x := vga_x - x;
                y := y + 1;
            end if;
            if(y > screen_HEIGHT) then
                y := 0;
            end if;

            global_x <= x;
            global_y <= y;
        end if;
    end process;

    VGA_R <= curr_pixel.red;
    VGA_G <= curr_pixel.green;
    VGA_B <= curr_pixel.blue;

-------- Pixel Update ------------------------------------------------------------------------------------------------------------------------------------------

    BITMAP_LOOKUP: rom_controller port map (clk => vga_clk, address => curr_mem_addr, pixel => rom_pixel);

    CURRENT_PIXEL: process (vga_clk)
    begin
        if falling_edge(vga_clk) then
            if(show_background = '1') then
                curr_pixel <= BACKGROUND;
            else 
                curr_pixel <= rom_pixel;
            end if;
        end if;
    end process;


-------- Pause -------------------------------------------------------------------------------------------------------------------------------------------------

    pause_btn : process(KEY(1))
    begin
        if falling_edge(KEY(1)) then
            if start_sticky = '1' then
                pause <= not pause;
            end if;
        end if;
        if game_over = '1' then
            pause <= '1';
        end if;
    end process;

    start_btn : process(KEY(0))
    begin
        if falling_edge(KEY(0)) then
            start_sticky <= '1';
        end if;
    end process;


-------- MUSIC + SOUND FX --------------------------------------------------------------------------------------------------------------------------------------
    -- CLK_88200: clk_div port map (clk_in => MAX10_CLK1_50, div => 567, clk_out => note_clk); -- 882000hz, go one octave higher than spec, beca
    -- CALC_NOTE: note_gen port map (clk => note_clk, enable => '1', notes => SW & '0' & '0', pwm => pwm);
    -- ARDUINO_IO(12) <= pwm;

    -- ALIEN_KILLED: sound_fx port map (
    --     clk => MAX10_CLK1_50,
    --     reset_L => alien_killed_fx,
    --     enable => not game_over,
    --     fx => fx5,
    --     pwm => pwm(4)
    -- );
    SHOOT_LASER_FX: sound_fx port map (
        clk => MAX10_CLK1_50,
        reset_L => KEY(0),
        enable => not game_over,
        fx => fx4,
        pwm => pwm(3)
    );

    GAME_OVER_FX: sound_fx port map (
        clk => MAX10_CLK1_50,
        reset_L => game_over,
        enable => game_over,
        fx => fx6,
        pwm => pwm(5)
    );

    SHIP_DEATH_FX: sound_fx port map (
        clk => MAX10_CLK1_50,
        reset_L => not ship_collision,
        enable => not game_over,
        fx => fx1,
        pwm => pwm(0)
    );

    ARDUINO_IO(12) <= pwm(5) xor pwm(4) xor pwm(3) xor pwm(2) xor pwm(1) xor pwm(0);

    
-------- Setup main screen -------------------------------------------------------------------------------------------------------------------------------------

    start.box.x_pos <= global_x;
    start.box.y_pos <= global_y;
    start.box.x_origin <= 195;
    start.box.y_origin <= 190;
    start.enable <= not start_sticky;
    start.bit_map <= START_BITMAP;

    game_over_disp.box.x_pos <= global_x;
    game_over_disp.box.y_pos <= global_y;
    game_over_disp.box.x_origin <= 130;
    game_over_disp.box.y_origin <= 203;
    game_over_disp.enable <= game_over;
    game_over_disp.bit_map <= GAME_OVER_BITMAP;

    Tline.box.x_pos <= global_x;
    Tline.box.y_pos <= global_y;
    Tline.box.x_origin <= 0;
    Tline.box.y_origin <= 10 + ship_sizeY;
    Tline.enable <= '1';
    Tline.bit_map <= LINE_BITMAP;

    Bline.box.x_pos <= global_x;
    Bline.box.y_pos <= global_y;
    Bline.box.x_origin <= 0;
    Bline.box.y_origin <= screen_HEIGHT - 10;
    Bline.enable <= '1';
    Bline.bit_map <= LINE_BITMAP;

    ship.box.x_pos <= global_x;
    ship.box.y_pos <= global_y;
    ship.box.x_origin <= SHIP_SPAWNX + shipX_offset;    -- rom lags by 2 pixels, pixel proccess lags by 1
    ship.box.y_origin <= SHIP_SPAWNY + shipY_offset;
    ship.enable <= not ship_collision and not game_over and start_sticky;
    ship.bit_map <= SHIP_BITMAP;

    START_DISP: objDisp port map (box => start.box, bit_map => start.bit_map, in_bounds => start.in_bounds, mem_addr => start.abs_mem_addr);
    YOU_DIED: objDisp port map (box => game_over_disp.box, bit_map => game_over_disp.bit_map, in_bounds => game_over_disp.in_bounds, mem_addr => game_over_disp.abs_mem_addr);
    TOP_LINE: objDisp port map (box => Tline.box, bit_map => Tline.bit_map, in_bounds => Tline.in_bounds, mem_addr => Tline.abs_mem_addr);
    BOTTOM_LINE: objDisp port map (box => Bline.box, bit_map => Bline.bit_map, in_bounds => Bline.in_bounds, mem_addr => Bline.abs_mem_addr);

-------- Score Display -----------------------------------------------------------------------------------------------------------------------------------------
    BINARY2DEC: bin2dec
            port map (
                bin => curr_score,
                hun_th => score_dec6(5),
                ten_th => score_dec6(4),
                tho => score_dec6(3),
                hun => score_dec6(2),
                ten => score_dec6(1),
                one => score_dec6(0)
            );

    CREATE_SCORES: for i in 5 downto 0 generate
        NEW_SCORE: objDisp port map (box => score_disp(i).box, bit_map => score_disp(i).bit_map, in_bounds => score_disp(i).in_bounds, mem_addr => score_disp(i).abs_mem_addr);

        score_disp(i).box.x_pos <= global_x;
        score_disp(i).box.y_pos <= global_y;
        score_disp(i).box.x_origin <= 515 + ((score_space_size + SCORE_0_BITMAP.x_size) * (5-i));     -- 5-i fixes the order, 480 is just the x pos
        score_disp(i).box.y_origin <= 8;
        score_disp(i).enable <= start_sticky;
    end generate;

    BITMAP_SEL : for i in 5 downto 0 generate
        process (score_dec6)
        begin
            case score_dec6(i) is
                when "0000" => score_disp(i).bit_map <= SCORE_0_BITMAP;
                when "0001" => score_disp(i).bit_map <= SCORE_1_BITMAP;
                when "0010" => score_disp(i).bit_map <= SCORE_2_BITMAP;
                when "0011" => score_disp(i).bit_map <= SCORE_3_BITMAP;
                when "0100" => score_disp(i).bit_map <= SCORE_4_BITMAP;
                when "0101" => score_disp(i).bit_map <= SCORE_5_BITMAP;
                when "0110" => score_disp(i).bit_map <= SCORE_6_BITMAP;
                when "0111" => score_disp(i).bit_map <= SCORE_7_BITMAP;
                when "1000" => score_disp(i).bit_map <= SCORE_8_BITMAP;
                when "1001" => score_disp(i).bit_map <= SCORE_9_BITMAP;
                when others => score_disp(i).bit_map <= SCORE_8_BITMAP;
            end case;            
        end process;
    end generate;

-------- Bitmap Select -----------------------------------------------------------------------------------------------------------------------------------------

    pixel : process(vga_clk)
        begin
            if(falling_edge(vga_clk)) then
                show_background <= '1';
                curr_mem_addr <= (others => '0');       -- needed for collision
                if (ship.in_bounds and ship.enable)= '1' then
                    curr_mem_addr <= ship.abs_mem_addr;
                    ship.pixel <= rom_pixel;
                    show_background <= '0';
                end if;

                for l in 0 to NUM_LIVES-1 loop
                    if (ship_lives(l).in_bounds and ship_lives(l).enable) = '1' then
                    curr_mem_addr <= ship_lives(l).abs_mem_addr;
                    show_background <= '0';
                    end if;
                end loop;
                for s in 0 to NUM_LASERS-1 loop
                    if (lasers(s).in_bounds and lasers(s).enable) = '1' then
                        curr_mem_addr <= lasers(s).abs_mem_addr;
                        lasers(s).pixel <= rom_pixel;
                        show_background <= '0';
                    end if;
                end loop;

                for a in 0 to NUM_ENEMIES-1 loop
                    if (aliens1(a).in_bounds and aliens1(a).enable) = '1' then
                        curr_mem_addr <= aliens1(a).abs_mem_addr;
                        aliens1(a).pixel <= rom_pixel;
                        show_background <= '0';
                    end if;
                    if (aliens2(a).in_bounds and aliens2(a).enable) = '1' then
                        curr_mem_addr <= aliens2(a).abs_mem_addr;
                        aliens2(a).pixel <= rom_pixel;
                        show_background <= '0';
                    end if;
                    if (aliens3(a).in_bounds and aliens3(a).enable) = '1' then
                        curr_mem_addr <= aliens3(a).abs_mem_addr;
                        aliens3(a).pixel <= rom_pixel;
                        show_background <= '0';
                    end if;
                end loop;

                for a in 0 to NUM_ASTEROIDS-1 loop
                    if (asteroids(a).in_bounds and asteroids(a).enable) = '1' then
                        curr_mem_addr <= asteroids(a).abs_mem_addr;
                        asteroids(a).pixel <= rom_pixel;
                        show_background <= '0';
                    end if;
                end loop;

                for i in 5 downto 0 loop
                    if (score_disp(i).in_bounds and score_disp(i).enable) = '1' then
                        curr_mem_addr <= score_disp(i).abs_mem_addr;
                        show_background <= '0';
                    end if;
                end loop;

                if (Bline.in_bounds and Bline.enable) = '1' then
                    curr_mem_addr <= Bline.abs_mem_addr;
                    show_background <= '0';
                end if; 

                if (Tline.in_bounds and Tline.enable) = '1' then
                    curr_mem_addr <= Tline.abs_mem_addr;
                    show_background <= '0';
                end if;

                if (start.in_bounds and start.enable) = '1' then
                    curr_mem_addr <= start.abs_mem_addr;
                    show_background <= '0';
                end if;

                if (game_over_disp.in_bounds and game_over_disp.enable) = '1' then
                    curr_mem_addr <= game_over_disp.abs_mem_addr;
                    show_background <= '0';
                end if;
            end if;
        end process;

-------- Dificulty ---------------------------------------------------------------------------------------------------------------------------------------------
    enable : process(curr_score)
    begin
        if curr_score > 500 then
            a2_en <= '1';
        else
            a2_en <= '0';
        end if;
        if curr_score > 2000 then
            obs_en <= '1';
        else
            obs_en <= '0';
        end if;
        if curr_score > 5000 then
            a3_en <= '1';
        else
            a3_en <= '0';
        end if;
        if curr_score > 500000 then
            a1_cnt_div <= 2 * SEC / 640;
            a1_spawn_div <= SEC;

            a2_cnt_div <= 2 * SEC / 640;
            a2_spawn_div <= 2 * SEC;

            a3_cnt_div <= 2 * SEC / 640;
            a3_spawn_div <= 5 * SEC;

            obs_cnt_div <= 4 * SEC / 640;
            obs_spawn_div <= 5 * SEC;
        elsif curr_score > 200000 then
            a1_cnt_div <= 4 * SEC / 640;
            a1_spawn_div <= 2 * SEC;

            a2_cnt_div <= 4 * SEC / 640;
            a2_spawn_div <= 4 * SEC;

            a3_cnt_div <= 2 * SEC / 640;
            a3_spawn_div <= 5 * SEC;

            obs_cnt_div <= 6 * SEC / 640;
            obs_spawn_div <= 10 * SEC;
        elsif curr_score > 150000 then
            a1_cnt_div <= 4 * SEC / 640;
            a1_spawn_div <= 2 * SEC;
            
            a2_cnt_div <= 4 * SEC / 640;
            a2_spawn_div <= 4 * SEC;

            a3_cnt_div <= 4 * SEC / 640;
            a3_spawn_div <= 10 * SEC;

            obs_cnt_div <= 8 * SEC / 640;
            obs_spawn_div <= 15 * SEC;
        elsif curr_score > 100000 then
            a1_cnt_div <= 6 * SEC / 640;
            a1_spawn_div <= 3 * SEC;
            
            a2_cnt_div <= 6 * SEC / 640;
            a2_spawn_div <= 6 * SEC;

            a3_cnt_div <= 4 * SEC / 640;
            a3_spawn_div <= 10 * SEC;

            obs_cnt_div <= 10 * SEC / 640;
            obs_spawn_div <= 20 * SEC;
        elsif curr_score > 10000 then
            a1_cnt_div <= 8 * SEC / 640;
            a1_spawn_div <= 4 * SEC;

            a2_cnt_div <= 6 * SEC / 640;
            a2_spawn_div <= 8 * SEC;

            a3_cnt_div <= 5 * SEC / 640;
            a3_spawn_div <= 15 * SEC;

            obs_cnt_div <= 15 * SEC / 640;
            obs_spawn_div <= 25 * SEC;
        else
            a1_cnt_div <= 10 * SEC / 640;
            a1_spawn_div <= 5 * SEC;
            
            a2_cnt_div <= 8 * SEC / 640;
            a2_spawn_div <= 10 * SEC;

            a3_cnt_div <= 5 * SEC / 640;
            a3_spawn_div <= 20 * SEC;

            obs_cnt_div <= 20 * SEC / 640;
            obs_spawn_div <= 30 * SEC;
        end if;
    end process;

-------- Collision ---------------------------------------------------------------------------------------------------------------------------------------------

    collision : process(vga_clk)
    begin
        if(falling_edge(vga_clk)) then
            if start_sticky = '0' then
                curr_score <= 0;
            end if;
            ship_collision <= '0';
            if ((ship.in_bounds and ship.enable) = '1') and (ship.pixel /= BACKGROUND) then
                for a in 0 to NUM_ENEMIES-1 loop
                    if ((aliens1(a).in_bounds and aliens1(a).enable) = '1') and (aliens1(a).pixel /= BACKGROUND) then
                        ship_collision <= '1';
                    end if;
                    if ((aliens2(a).in_bounds and aliens2(a).enable) = '1') and (aliens2(a).pixel /= BACKGROUND) then
                        ship_collision <= '1';
                    end if;
                    if ((aliens3(a).in_bounds and aliens3(a).enable) = '1') and (aliens3(a).pixel /= BACKGROUND) then
                        ship_collision <= '1';
                    end if;
                end loop;
                for o in 0 to NUM_ASTEROIDS-1 loop
                    if ((asteroids(o).in_bounds and asteroids(o).enable) = '1') and (asteroids(o).pixel /= BACKGROUND) then
                        ship_collision <= '1';
                    end if;
                end loop;
            end if;
            for l in 0 to NUM_LASERS-1 loop
                laser_hit(l) <= '0';
                alien_killed_fx <= '1';

                    if ((lasers(l).in_bounds and lasers(l).enable) = '1') and (lasers(l).pixel /= BACKGROUND) then
                    for a in 0 to NUM_ENEMIES-1 loop
                        
                        aliens1_killed(a) <= '0';
                        aliens2_killed(a) <= '0';
                        aliens3_killed(a) <= '0';
                        if ((aliens1(a).in_bounds and aliens1(a).enable) = '1') and (aliens1(a).pixel /= BACKGROUND) then
                            aliens1_killed(a) <= '1';
                            laser_hit(l) <= '1';
                            curr_score <= curr_score + 150;
                            alien_killed_fx <= '0';
                        end if;
                        if ((aliens2(a).in_bounds and aliens2(a).enable) = '1') and (aliens2(a).pixel /= BACKGROUND) then
                            aliens2_killed(a) <= '1';
                            laser_hit(l) <= '1';
                            curr_score <= curr_score + 300;
                            alien_killed_fx <= '0';
                        end if;
                        if ((aliens3(a).in_bounds and aliens3(a).enable) = '1') and (aliens3(a).pixel /= BACKGROUND) then
                            aliens3_killed(a) <= '1';
                            laser_hit(l) <= '1';
                            curr_score <= curr_score + 600;
                            alien_killed_fx <= '0';
                        end if;
                end loop;

                for a in 0 to NUM_ASTEROIDS-1 loop
                    if ((asteroids(a).in_bounds and asteroids(a).enable) = '1') and (asteroids(a).pixel /= BACKGROUND) then
                        laser_hit(l) <= '1';
                    end if;
                end loop;
                end if;

            end loop;
        end if;
    end process;

-------- Diagnostics -------------------------------------------------------------------------------------------------------------------------------------------

    DIAGNOSTIC1: bin2seg7 port map (
        inData =>score_dec6(0),
        enable => '1',
        dispPoint => '0',
        HEX => HEX0
    );

    DIAGNOSTIC2: bin2seg7 port map (
        inData => score_dec6(1),
        enable => '1',
        dispPoint => '0',
        HEX => HEX1
    );
    DIAGNOSTIC3: bin2seg7 port map (
        inData => score_dec6(2),
        enable => '1',
        dispPoint => '0',
        HEX => HEX2
    );

    DIAGNOSTIC4: bin2seg7 port map (
        inData => score_dec6(3),
        enable => '1',
        dispPoint => '0',
        HEX => HEX3
    );

    DIAGNOSTIC5: bin2seg7 port map (
        inData => score_dec6(4),
        enable => '1',
        dispPoint => '0',
        HEX => HEX4
    );

    DIAGNOSTIC6: bin2seg7 port map (
        inData => score_dec6(5),
        enable => '1',
        dispPoint => '0',
        HEX => HEX5
    );
     

-------- Ship---------------------------------------------------------------------------------------------------------------------------------------------------

    SHIP_CURR: objDisp port map (box => ship.box, bit_map => ship.bit_map, in_bounds => ship.in_bounds, mem_addr => ship.abs_mem_addr);

    SHIP_OFFSET_GEN: ship_movement port map (max10_clk => MAX10_CLK1_50, reset_L => ship_reset_L, en => start_sticky AND NOT pause, x_offset => shipX_offset, y_offset => shipY_offset, 
        GSENSOR_SDI => GSENSOR_SDI, GSENSOR_SDO => GSENSOR_SDO, GSENSOR_CS_N => GSENSOR_CS_N, GSENSOR_SCLK => GSENSOR_SCLK);

    ship_main : process(ship_collision)
    begin
        if rising_edge(ship_collision) then
            ship_alive <= '0';
            ship_reset_L <= '0';
            if ship_lives_one_hot = "000" then
                game_over <= '1';
            else 
                ship_lives_one_hot <= std_logic_vector(shift_left(unsigned(ship_lives_one_hot), 1));
            end if;
        end if;
        
        if ship_alive = '0' then
            ship_alive <= '1';
            ship_reset_L <= '1';
        end if;
    end process;

-------- Ship Lives---------------------------------------------------------------------------------------------------------------------------------------------
    SHIP_REM_LIVES: for I in 0 to NUM_LIVES-1 generate
                    SHIP_LIFE: objDisp port map (box => ship_lives(I).box, bit_map => ship_lives(I).bit_map, in_bounds => ship_lives(I).in_bounds, mem_addr => ship_lives(I).abs_mem_addr);
                    
                    ship_lives(I).box.x_pos <= global_x;
                    ship_lives(I).box.y_pos <= global_y;
                    ship_lives(I).box.x_origin <= 10 + ((10 + ship_lives(I).bit_map.x_size) * I);
                    ship_lives(I).box.y_origin <= 5;
                    ship_lives(I).enable <= ship_lives_one_hot((NUM_LIVES-1) - I) and start_sticky;
                    ship_lives(I).bit_map <= SHIP_BITMAP;
    end generate;
    
-------- Laser--------------------------------------------------------------------------------------------------------------------------------------------------

    LASERS_GEN: for I in 0 to NUM_LASERS-1 generate
        LASER_disp: objDisp port map (box => lasers(I).box, bit_map => lasers(I).bit_map, in_bounds => lasers(I).in_bounds, mem_addr => lasers(I).abs_mem_addr);          
        LASER_LOC: laser_movement port map (max10_clk => MAX10_CLK1_50, shoot => laser_shoot_main(I), x_loc => async_lasers_xloc(I));

        lasers(I).box.x_pos <= global_x;
        lasers(I).box.y_pos <= global_y;
        lasers(I).enable <= laser_shoot_main(I) AND NOT laser_hit(I) and start_sticky and not game_over;
        lasers(I).bit_map <= LASER_BITMAP;
        
        LASER_OFFSET: process (vga_clk)
        begin
            if rising_edge(vga_clk) then
                lasers_xloc(I) <= async_lasers_xloc(I);     -- sync location

                if pause = '0' then
                    if (laser_x(I) + lasers_xloc(I) > screen_WIDTH) or laser_hit(I) = '1' then
                        laser_shoot2(I) <= '0';
                    else
                        lasers(I).box.x_origin <= laser_x(I) + lasers_xloc(I);
                        laser_shoot2(I) <= '1';
                    end if;
                    lasers(I).box.y_origin <= laser_y(I);
                end if;
            end if; 
        end process; 

    end generate; 
        
        LASER_BUFFER: process (vga_clk)
        begin
            if falling_edge(vga_clk) then
                laser_shoot3 <= laser_shoot2;   -- buffer it just in case
            end if;
        end process;


        shoot_laser : process(KEY(0), laser_shoot3)
        variable en : integer := 0;
        begin
            if start_sticky = '1' and pause = '0' then
                if falling_edge(KEY(0)) then
                    laser_shoot_main(en) <= '1';
                    laser_x(en) <= ship.box.x_origin;
                    laser_y(en) <= ship.box.y_origin + 5;
                    en := en + 1;
                    if en = NUM_LASERS then
                        en := 0;
                    end if;
                end if;

                for i in 0 to NUM_LASERS-1 loop
                    if laser_shoot3(i) = '0' then
                        laser_shoot_main(i) <= '0';
                    end if;
                end loop;
            end if;
        end process;

-------- Random number gen -------------------------------------------------------------------------------------------------------------------------------------

    RN1: pseudorandom_8 port map (clk => MAX10_CLK1_50, reset_L => start_sticky, enable => '1', seed => "01001101", random_8 => random_num(15 downto 8));
    RN2: pseudorandom_8 port map (clk => MAX10_CLK1_50, reset_L => start_sticky, enable => '1', seed => "11010111", random_8 => random_num(7 downto 0));
    random_num(31 downto 24) <= random_num(15 downto 8) xor random_num(7 downto 0);
    random_num(23 downto 16) <= "11010101" xor random_num(31 downto 24);
    
-------- Aliens-------------------------------------------------------------------------------------------------------------------------------------------------
    ALIENS_GEN1: for I in 0 to NUM_ENEMIES-1 generate
        ALIEN1: objDisp port map (box => aliens1(I).box, bit_map => aliens1(I).bit_map, in_bounds => aliens1(I).in_bounds, mem_addr => aliens1(I).abs_mem_addr);
        ALIEN1_LOC: alien_movement generic map (X_SIZE => ALIEN1_BITMAP.x_size, Y_SIZE => ALIEN1_BITMAP.y_size)
                                    port map (max10_clk => MAX10_CLK1_50, reset_L => aliens1_alive(I) AND NOT aliens1_killed(I) AND start_sticky,
                                            cnt_div => a1_cnt_div, alive => aliens1_alive(I) AND NOT aliens1_killed(I) AND start_sticky AND NOT pause,
                                            x_loc => aliens1(I).box.x_origin, y_loc => aliens1(I).box.y_origin, random_Y => random_num(I+7 downto I));

        aliens1(I).box.x_pos <= global_x;
        aliens1(I).box.y_pos <= global_y;
        aliens1(I).enable <= aliens1_alive(I) AND start_sticky;
        aliens1(I).bit_map <= ALIEN1_BITMAP;
    end generate;

    CLK_A1: clk_div port map (clk_in => MAX10_CLK1_50, div => a1_spawn_div, clk_out => a1_clk);
    ALIEN1_SPAWN: process(a1_clk, vga_clk)
    variable en :integer := 0;
    begin
        if start_sticky = '1' and pause = '0' then
            if rising_edge(a1_clk) then
                if aliens1_alive(en) = '0' then
                    aliens1_alive(en) <= '1';
                    en := en + 1;
                    if en = NUM_ENEMIES then
                        en := 0;
                    end if;
                end if;
            end if;
            for i in 0 to NUM_ENEMIES-1 loop
                if aliens1(i).box.x_origin = 0 or ship_collision = '1' then
                    aliens1_alive(i) <= '0';
                end if;
            end loop;
        end if;
    end process;






    ALIENS_GEN2: for I in 0 to NUM_ENEMIES-1 generate
        ALIEN2: objDisp port map (box => aliens2(I).box, bit_map => aliens2(I).bit_map, in_bounds => aliens2(I).in_bounds, mem_addr => aliens2(I).abs_mem_addr);
        ALIEN2_LOC: alien_movement generic map (X_SIZE => ALIEN2_BITMAP.x_size, Y_SIZE => ALIEN2_BITMAP.y_size)
                                    port map (max10_clk => MAX10_CLK1_50, reset_L => aliens2_alive(I) AND NOT aliens2_killed(I) AND start_sticky,
                                            cnt_div => a1_cnt_div, alive => aliens2_alive(I) AND NOT aliens2_killed(I) AND start_sticky AND NOT pause,
                                            x_loc => aliens2(I).box.x_origin, y_loc => aliens2(I).box.y_origin, random_Y => random_num(I+11 downto I+11-7));

        aliens2(I).box.x_pos <= global_x;
        aliens2(I).box.y_pos <= global_y;
        aliens2(I).enable <= aliens2_alive(I) AND start_sticky;
        aliens2(I).bit_map <= ALIEN2_BITMAP;
    end generate;

    CLK_A2: clk_div port map (clk_in => MAX10_CLK1_50, div => a1_spawn_div, clk_out => a2_clk);
    ALIEN2_SPAWN: process(a2_clk, vga_clk)
    variable en :integer := 0;
    begin
        if start_sticky = '1' and pause = '0' then
            if rising_edge(a2_clk) then
                if aliens2_alive(en) = '0' then
                    aliens2_alive(en) <= '1';
                    en := en + 1;
                    if en = NUM_ENEMIES then
                        en := 0;
                    end if;
                end if;
            end if;
            for i in 0 to NUM_ENEMIES-1 loop
                if aliens2(i).box.x_origin = 0 or ship_collision = '1' then
                    aliens2_alive(i) <= '0';
                end if;
            end loop;
        end if;
    end process;






    ALIENS_GEN3: for I in 0 to NUM_ENEMIES-1 generate
        ALIEN3: objDisp port map (box => aliens3(I).box, bit_map => aliens3(I).bit_map, in_bounds => aliens3(I).in_bounds, mem_addr => aliens3(I).abs_mem_addr);
        ALIEN3_LOC: alien_movement generic map (X_SIZE => ALIEN3_BITMAP.x_size, Y_SIZE => ALIEN3_BITMAP.y_size)
                                    port map (max10_clk => MAX10_CLK1_50, reset_L => aliens3_alive(I) AND NOT aliens3_killed(I) AND start_sticky,
                                            cnt_div => a1_cnt_div, alive => aliens3_alive(I) AND NOT aliens3_killed(I) AND start_sticky AND NOT pause,
                                            x_loc => aliens3(I).box.x_origin, y_loc => aliens3(I).box.y_origin, random_Y => random_num(I+19 downto I+19-7));

        aliens3(I).box.x_pos <= global_x;
        aliens3(I).box.y_pos <= global_y;
        aliens3(I).enable <= aliens3_alive(I) AND start_sticky;
        aliens3(I).bit_map <= ALIEN3_BITMAP;
    end generate;

    CLK_A3: clk_div port map (clk_in => MAX10_CLK1_50, div => a1_spawn_div, clk_out => a3_clk);
    ALIEN3_SPAWN: process(a3_clk, vga_clk)
    variable en :integer := 0;
    begin
        if start_sticky = '1' and pause = '0' then
            if rising_edge(a3_clk) then
                if aliens3_alive(en) = '0' then
                    aliens3_alive(en) <= '1';
                    en := en + 1;
                    if en = NUM_ENEMIES then
                        en := 0;
                    end if;
                end if;
            end if;
            for i in 0 to NUM_ENEMIES-1 loop
                if aliens3(i).box.x_origin = 0 or ship_collision = '1' then
                    aliens3_alive(i) <= '0';
                end if;
            end loop;
        end if;
    end process;


-------- Obstacles ---------------------------------------------------------------------------------------------------------------------------------------------

    ASTEROIDS_GEN: for I in 0 to NUM_ASTEROIDS-1 generate
        ASTEROID_DISP: objDisp port map (box => asteroids(I).box, bit_map => asteroids(I).bit_map, in_bounds => asteroids(I).in_bounds, mem_addr => asteroids(I).abs_mem_addr);
        ASTEROID_LOC: obstacle_movement generic map (Y_SIZE => ASTEROID_BITMAP.y_size)
                                        port map (max10_clk => MAX10_CLK1_50, reset_L => asteroids_active(I) AND start_sticky AND NOT ship_collision,
                                                active => asteroids_active(I) AND start_sticky AND NOT pause AND NOT ship_collision, cnt_div => obs_cnt_div, 
                                                x_loc => asteroids(I).box.x_origin, y_loc => asteroids(I).box.y_origin, random_Y => random_num(I+24 downto I+24-7));
        asteroids(I).box.x_pos <= global_x;
        asteroids(I).box.y_pos <= global_y;
        asteroids(I).enable <= asteroids_active(I) AND start_sticky and not game_over;
        asteroids(I).bit_map <= ASTEROID_BITMAP;
    end generate;

    CLK_AS: clk_div port map (clk_in => MAX10_CLK1_50, div => obs_spawn_div, clk_out => as_clk);
    ASTEROID_SPAWN: process(as_clk)
    variable en :integer := 0;
    begin
    if start_sticky = '1' and pause = '0' then
        if rising_edge(as_clk) then
            if asteroids_active(en) = '0' then
                asteroids_active(en) <= '1';
                en := en + 1;
                if en = NUM_ENEMIES then
                    en := 0;
                end if;
            end if;
        end if;
        for i in 0 to NUM_ASTEROIDS-1 loop
            if asteroids(I).box.x_origin = 0 or ship_collision = '1' then
                asteroids_active(i) <= '0';
            end if;
        end loop;
    end if;
    end process;


end architecture;