library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.my_data_types.all;
use work.constants.all;
use work.bitmaps.all;

entity rom_controller is
    port (
        clk   : in std_logic;
        address : in std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0);
        pixel : out Pixel_t
    );
end entity rom_controller;

architecture rtl of rom_controller is
    component rom1 IS
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    end component rom1;
    component rom2 IS
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    end component rom2;

    signal rom_id : std_logic_vector(rom_id_bits - 1 downto 0 );
    signal rom_addr : std_logic_vector(15 downto 0);
    
    signal rom_out : std_logic_vector(11 downto 0);
    signal rom1_out : std_logic_vector(11 downto 0);
    signal rom2_out : std_logic_vector(11 downto 0);

begin
    MEM1: rom1 port map (
        address => rom_addr,
        clock => clk,
        q => rom1_out
    );

    MEM2: rom2 port map (
        address => rom_addr(14 downto 0),
        clock => clk,
        q => rom2_out
    );
    
    rom_id <= address(rom_id_bits + rom_addr_bits - 1 downto rom_addr_bits);
    rom_addr <= address(15 downto 0);

    process (rom_id)
    begin
        case rom_id is
            when "00000000" => rom_out <= rom1_out;
            when "00000001" => rom_out <= rom2_out;
            when others => rom_out <= (others => '0');
        end case;
    end process;

    pixel <= Pixel_t'(rom_out(11 downto 8), rom_out(7 downto 4), rom_out(3 downto 0));    -- get er out a here, were running low on time

end architecture;