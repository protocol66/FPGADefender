library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_data_types.all;
use work.constants.all;

entity objDisp is
    port (
        box : in Bounding_Box;
        bit_map : in bit_map_t;
        in_bounds : out std_logic := '0';
        mem_addr : out std_logic_vector(rom_addr_bits + rom_id_bits - 1 downto 0)
    );
end objDisp;

architecture arch of objDisp is

    component hw_mult IS
	port
	(
		dataa		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (19 DOWNTO 0)
	);
    end component;


    signal x : integer range 0 to screen_WIDTH;
	signal y : integer range 0 to screen_HEIGHT;
    signal addr : std_logic_vector(15 downto 0);

    signal mult_out : std_logic_vector(19 downto 0);
begin

    process (box, bit_map)
    begin
        x <= box.x_pos - box.x_origin;
        y <= box.y_pos - box.y_origin;

        if box.size_overwride = '0' then
            if ((box.x_pos >= box.x_origin) and (box.x_pos < box.x_origin + bit_map.x_size) and (box.y_pos >= box.y_origin) and (box.y_pos < box.y_origin + bit_map.y_size)) then
                in_bounds <= '1';
            else
                in_bounds <= '0';
            end if;
        else 
            if ((box.x_pos >= box.x_origin) and (box.x_pos < box.x_origin + box.x_size) and (box.y_pos >= box.y_origin) and (box.y_pos < box.y_origin + box.y_size)) then
                in_bounds <= '1';
            else
                in_bounds <= '0';
            end if;
        end if;
    end process;

    HW_MULTIPLY: hw_mult port map (std_logic_vector(to_unsigned(y, 10)), std_logic_vector(to_unsigned(bit_map.x_size, 10)), mult_out);  -- calc offset with hw acceleration

    mem_addr <= std_logic_vector(to_unsigned(bit_map.rom_id, rom_id_bits)) & std_logic_vector(to_unsigned(bit_map.addr_offset + to_integer(unsigned(mult_out)) + x, rom_addr_bits));

end architecture; 