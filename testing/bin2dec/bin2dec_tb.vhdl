library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity bin2dec_tb is
end entity bin2dec_tb;

architecture rtl of bin2dec_tb is
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

    signal clk : std_logic := '0';

    signal bin  : integer range 0 to 999999 := 0;
            
    signal hun_th : std_logic_vector(3 downto 0);
    signal ten_th : std_logic_vector(3 downto 0);
    signal tho : std_logic_vector(3 downto 0);
    signal hun : std_logic_vector(3 downto 0);
    signal ten : std_logic_vector(3 downto 0);
    signal one : std_logic_vector(3 downto 0);

begin
    DUT: bin2dec port map (
        bin, hun_th, ten_th, tho, hun, ten, one
    );
    
    CLOCK: process 
    begin
        clk <= not clk;
        wait for 0.5 ns;
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            bin <= bin + 1;
        end if;
    end process;

end architecture;