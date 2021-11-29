library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity counter_tb is
end entity counter_tb;

architecture behavior of counter_tb is

    component counter is
        generic (
            SIZE : positive := 1;
            STEP : positive := 1;
            SEED : natural := 0;
            OVERFLOW : std_logic := '1'
            );
        port (
            clk     : in std_logic;
            reset_L : in std_logic := '0';
            enable  : in std_logic := '0';
            up_down : in std_logic := '0';
            cout    : out std_logic_vector(SIZE-1 downto 0)
        );
    end component counter;

    signal clk     : std_logic;
    signal reset_L : std_logic;
    signal enable : std_logic;
    signal up_down : std_logic;
    signal cout : std_logic_vector(3 downto 0);
    
begin
    DUT: counter generic map (
        SIZE => 4, OVERFLOW => '1'
    )
    port map (
        clk => clk,
        reset_L => reset_L,
        enable => enable,
        up_down => up_down,
        cout => cout
    );

    process
    begin

        reset_L <= '0';
        up_down <= '0';
        enable <= '1';
        wait for 2 ns;
        reset_L <= '1';
        
        wait for 20 ns;
        up_down <= '1';


        

        wait;
    end process;
    
    clock_gen: process
    begin
        clk <= '0';
        wait for 0.5 ns;
        clk <= '1';
        wait for 0.5 ns;
    end process;
end architecture;