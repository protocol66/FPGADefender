library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity pseudorandom_8 is
    port (
        clk      : in std_logic;
        reset_L  : in std_logic := '0';
        enable   : in std_logic := '0';
        seed     : in std_logic_vector(7 downto 0);
        random_8 : out std_logic_vector(7 downto 0)
    );
end entity pseudorandom_8;

architecture behavior of pseudorandom_8 is
    
    component lsfr_base is
        generic (WIDTH : integer := 4);
    port (
        TAPS    : unsigned(WIDTH-1 downto 0);

        clk     : in std_logic;
        reset_L : in std_logic;
        enable  : in std_logic;
        seed    : in std_logic;
        Y       : out std_logic
    );
    end component lsfr_base;

    constant tap5  : unsigned(4 downto 0)  := (4|2          => '1', others => '0');
    constant tap7  : unsigned(6 downto 0)  := (6|5          => '1', others => '0');
    constant tap13 : unsigned(12 downto 0) := (12|3|2|0     => '1', others => '0');
    constant tap17 : unsigned(16 downto 0) := (16|13        => '1', others => '0');
    constant tap19 : unsigned(18 downto 0) := (18|5|1|0     => '1', others => '0');
    constant tap31 : unsigned(30 downto 0) := (30|27        => '1', others => '0');
    constant tap61 : unsigned(60 downto 0) := (60|59|45|44  => '1', others => '0');
    constant tap89 : unsigned(88 downto 0) := (88|50        => '1', others => '0');

    signal clk_en : std_logic;
    
begin

    TAP_5: lsfr_base 
        generic map (WIDTH => 5)
        port map (
            TAPS => TAP5,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(0),
            Y => random_8(0)
        );

    TAP_7: lsfr_base 
        generic map (WIDTH => 7)
        port map (
            TAPS => TAP7,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(1),
            Y => random_8(1)
        );

    TAP_13: lsfr_base 
        generic map (WIDTH => 13)
        port map (
            TAPS => TAP13,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(2),
            Y => random_8(2)
        );

    TAP_17: lsfr_base 
        generic map (WIDTH => 17)
        port map (
            TAPS => TAP17,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(3),
            Y => random_8(3)
        );

    TAP_19: lsfr_base 
        generic map (WIDTH => 19)
        port map (
            TAPS => TAP19,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(4),
            Y => random_8(4)
        );

    TAP_31: lsfr_base 
        generic map (WIDTH => 31)
        port map (
            TAPS => TAP31,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(5),
            Y => random_8(5)
        );

    TAP_61: lsfr_base 
        generic map (WIDTH => 61)
        port map (
            TAPS => TAP61,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(6),
            Y => random_8(6)
        );

    TAP_89: lsfr_base 
        generic map (WIDTH => 89)
        port map (
            TAPS => TAP89,
            clk => clk,
            reset_L => reset_L,
            enable => enable,
            seed => seed(7),
            Y => random_8(7)
        );

end architecture;
