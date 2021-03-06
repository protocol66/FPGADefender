library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
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
end entity counter;

architecture rtl of counter is
    constant MAX : unsigned(SIZE-1 downto 0) := (others => '1');
    constant MIN : unsigned(SIZE-1 downto 0) := (others => '0');

    signal count : unsigned(SIZE-1 downto 0);
begin
    process (clk, reset_L, enable, up_down)
    begin
        if (reset_L = '0') then
            count <= to_unsigned(SEED, SIZE);

        else 
            if(rising_edge(clk)) then
                if(enable = '1') then
                    if OVERFLOW = '1' then
                        if (up_down = '0') then
                            count <= count + STEP;
                        else
                            count <= count - STEP;
                        end if;

                    else
                        if (up_down = '0') then
                            if (count + STEP) /= MIN then
                                count <= count + STEP;
                            end if;
                        else
                            if (count - STEP) /= MAX then
                                count <= count - STEP;
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    cout <= std_logic_vector(count);

end architecture;