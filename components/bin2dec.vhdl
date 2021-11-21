library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity bin2dec is
    port (
        bin  : in integer range 0 to 999999;
        
        hun_th : out std_logic_vector(3 downto 0);
        ten_th : out std_logic_vector(3 downto 0);
        tho : out std_logic_vector(3 downto 0);
        hun : out std_logic_vector(3 downto 0);
        ten : out std_logic_vector(3 downto 0);
        one : out std_logic_vector(3 downto 0)
    );
end entity bin2dec;

architecture rtl of bin2dec is

begin

    hun_th <= std_logic_vector(to_unsigned(  bin / 100000, 4 ));
    ten_th <= std_logic_vector(to_unsigned( (bin mod 100000) / 10000, 4  ));
    tho    <= std_logic_vector(to_unsigned( (bin mod 10000 ) /  1000, 4  ));
    hun    <= std_logic_vector(to_unsigned( (bin mod 1000  ) /  100,  4  ));
    ten    <= std_logic_vector(to_unsigned( (bin mod 100   ) /  10 ,  4  ));
    one    <= std_logic_vector(to_unsigned(  bin mod 10, 4 ));
    

end architecture;