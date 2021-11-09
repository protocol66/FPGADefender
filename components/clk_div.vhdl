library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    port (
        clk_in  : in std_logic;
        div     : in integer;       -- rounds down to closest even number
        clk_out : buffer std_logic := '0'
    );
end entity clk_div;

architecture rtl of clk_div is
begin
    process (clk_in)
        variable count : integer := 0;
    begin
        if div = 1 then
            clk_out <= clk_in;
        else
            if(rising_edge(clk_in) and div > 0) then
                count := count + 2; --I am to tired to explain this, but don't change it

                if count >= div-1 then
                    clk_out <= not clk_out;
                    count := 0;
                end if;
            end if;
        end if;
    end process;
end architecture;