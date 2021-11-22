library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.bitmaps.all;

entity sound_fx is
    port (
        clk   : in std_logic;   -- make this 50mhz
        reset_L : in std_logic;
        enable : in std_logic;
        fx : in Sound_FX_t;
        pwm : out std_logic
    );
end entity sound_fx;

architecture rtl of sound_fx is
    component clk_div is
        port (
            clk_in  : in std_logic;
            div     : in integer;       -- rounds down to closest even number
            clk_out : buffer std_logic := '0'
        );
    end component clk_div;

    signal fx_timer_clk : std_logic;
    signal fx_clk_div : integer;
    signal pwm_out : std_logic;

begin

    FX_TIMER: clk_div port map (clk_in => clk, div => MAIN_CLK_FREQ / fx.fx_trans_freq, clk_out => fx_timer_clk);
    FX_gen: clk_div port map (clk_in => clk, div => fx_clk_div, clk_out => pwm_out);

    pwm <= pwm_out and enable;
    
    process (fx_timer_clk, reset_L)
        variable i : integer range 0 to fx.SIZE-1 := fx.SIZE-1;
        variable already_ran : std_logic := '0';
    begin
        if (already_ran = '0') or (reset_L = '0') then
            already_ran := '0';
            i := fx.SIZE-1;

            if rising_edge(fx_timer_clk) and (reset_L = '1') then
                if i = 0 then
                    already_ran := '1';
                else
                    i := i - 1;
                end if;
        
                fx_clk_div <= MAIN_CLK_FREQ / fx.fx_ar_freq(i);
            end if;
        end if;
    end process;

end architecture;