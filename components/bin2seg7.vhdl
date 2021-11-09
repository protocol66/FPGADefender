library ieee;
use ieee.std_logic_1164.all;

entity bin2seg7 is
    port (
        inData    : in std_logic_vector(3 downto 0);
        enable    : in std_logic;
        dispPoint : in std_logic;
        HEX : out std_logic_vector(7 downto 0)
    );
end entity bin2seg7;

architecture behavior of bin2seg7 is
begin
    U1: process (inData, enable, dispPoint)
        variable n : std_logic_vector(0 to 6);	-- big endian, I will regret this later
    begin
        case inData is         --abcdefg
            when "0000" => n := "1111110";
            when "0001" => n := "0110000";
            when "0010" => n := "1101101";
            when "0011" => n := "1111001";
            when "0100" => n := "0110011";
            when "0101" => n := "1011011";
            when "0110" => n := "1011111";
            when "0111" => n := "1110000";
            when "1000" => n := "1111111";
            when "1001" => n := "1111011";
            when "1010" => n := "1110111";
            when "1011" => n := "0011111";
            when "1100" => n := "1001110";
            when "1101" => n := "0111101";
            when "1110" => n := "1001111";
            when "1111" => n := "1000111";
            when others => n := "0000000";
        end case;

        n := not n;    -- 7seg is common anode

        if(enable = '1') then
            HEX <= (not dispPoint) & n(6) & n(5) & n(4) & n(3) & n(2) & n(1) & n(0);	--reverse bit order (I'm lazy)
        else
            HEX <= (others => '1');
        end if;
        
    end process;
end architecture;
