library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity note_gen is
    port (
        clk   : in std_logic;       -- must be 44100hz
        enable : in std_logic;
        notes : in std_logic_vector(11 downto 0); -- twelve notes in an octave
        pwm : buffer std_logic := '0'
    );
end entity note_gen;

architecture rtl of note_gen is
    component counter is
        generic (
            SIZE : integer := 1;
            STEP : integer := 1
            );
        port (
            clk     : in std_logic;
            reset_L : in std_logic := '0';
            enable  : in std_logic := '0';
            up_down : in std_logic := '0';
            cout    : out std_logic_vector(SIZE-1 downto 0)
        );
    end component counter;

    signal counter_reset_ar : std_logic_vector(11 downto 0) := "111111111111"; -- 12 notes

    type cout_ar_t is array(11 downto 0) of std_logic_vector(8 downto 0);
    signal cout_ar : cout_ar_t;

    type note_const_ar_t is array(11 downto 0) of std_logic_vector(8 downto 0); --9 bits for 130hz, aka C3
    constant note_const_ar : note_const_ar_t := (
            "101010001",    -- 130.81hz c2
            "100111110",    -- 138.59hz c2s
            "100101100",    -- 146.83hz d2
            "100011011",    -- 155.56hz d2s
            "100001011",    -- 164.81hz e2
            "011111101",    -- 174.61hz f2
            "011101111",    -- 185.00hz f2s
            "011100001",    -- 196.00hz g2
            "011010100",    -- 207.67hz g2s
            "011001000",    -- 220.00hz a2
            "010111101",    -- 233.08hz a2s
            "010110011"     -- 246.94hz b2
        );

begin
    
    COUNTER_GEN : for i in 11 downto 0 generate
        COUNT: counter 
            generic map (
                SIZE => 9,
                STEP => 1
            )
            port map (
                clk => clk,
                reset_L => counter_reset_ar(i),
                enable => enable,
                up_down => '0',
                cout => cout_ar(i)
            );
    end generate;

process (cout_ar, clk)
begin
    if(rising_edge(clk)) then

        counter_reset_ar <= "111111111111";
        CHECK_FOR_RESET : for i in 11 downto 0 loop
            if (cout_ar(i) > note_const_ar(i)) and notes(i) = '1' then
                pwm <= (not pwm) and enable;
                counter_reset_ar(i) <= '0';
            end if;
        end loop;
    
    end if;
end process;

end architecture;