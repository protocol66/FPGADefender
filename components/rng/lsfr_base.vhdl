library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity lsfr_base is
    generic (WIDTH : integer := 4);
    port (
        TAPS    : unsigned(WIDTH-1 downto 0);

        clk     : in std_logic;
        reset_L : in std_logic;
        enable  : in std_logic;
        seed    : in std_logic;
        Y       : out std_logic
    );
end entity lsfr_base;

architecture behavior of lsfr_base is
begin
    process (reset_L, clk)
        variable sr : unsigned(WIDTH-1 downto 0) := (0 => seed, 1 => '1', others => '0');
        variable feedback : std_logic;
    begin
        if (reset_L = '0') then
            sr := (others => '0');  -- 
            sr(1) := '1';           -- Can't let all the numbers be zero
            sr(0) := seed;          -- I could seed it with more... but there are going to be multiple of these seeded

            feedback := '0';
            Y <= feedback;
        
        else
            if rising_edge(clk) then
                if(enable = '1') then
                    feedback := sr(WIDTH-1);

                    for i in (WIDTH-1) downto 1 loop
                        if (TAPS(i - 1) = '1') then     -- Taps(n-1), if width = 8, i = 7, then it should check for n-1 not n. 
                            sr(i) := sr(i-1) xor feedback;      -- one-to-many config
                        else
                            sr(i) := sr(i-1);               --no tap here
                        end if;
                    end loop;

                    sr(0) := feedback;          -- I said no taps, remember...
                    Y <= feedback;

                end if;
            end if;
        end if;    
    
    end process;
end architecture;
