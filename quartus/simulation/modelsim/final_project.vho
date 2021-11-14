-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/09/2021 17:59:55"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	project_top_level IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	reset_L : IN std_logic;
	pause : IN std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END project_top_level;

-- Design Ports Information
-- reset_L	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pause	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF project_top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_reset_L : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_L~input_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~9_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~1\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~3\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~7_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~5\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~7\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~9\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~10_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~5_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~11\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~12_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~13\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~14_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~15\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~16_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~17\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~18_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_sync~q\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~3\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~5\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~7\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~9\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~10_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~5_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~11\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~12_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~13\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~14_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~7_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~15\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~16_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~17\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~18_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[0]~9_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~1\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_sync~q\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~5_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|disp_ena~q\ : std_logic;
SIGNAL \VGA_CONTROLL|column[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|column[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|column[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|column[4]~feeder_combout\ : std_logic;
SIGNAL \TEST1|pixel.red[0]~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|column[7]~feeder_combout\ : std_logic;
SIGNAL \TEST1|pixel.red[0]~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[6]~feeder_combout\ : std_logic;
SIGNAL \TEST1|LessThan3~0_combout\ : std_logic;
SIGNAL \TEST1|pixel.red[0]~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_CONTROLL|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_CONTROLL|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_CONTROLL|row\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_reset_L <= reset_L;
ww_pause <= pause;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \MAX10_CLK1_50~input_o\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_CONTROLL|h_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_CONTROLL|v_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST1|pixel.red[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST1|pixel.red[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST1|pixel.red[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST1|pixel.red[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: PLL_1
\PLL1|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y9_N6
\VGA_CONTROLL|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~0_combout\ = \VGA_CONTROLL|h_count\(0) $ (VCC)
-- \VGA_CONTROLL|Add0~1\ = CARRY(\VGA_CONTROLL|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(0),
	datad => VCC,
	combout => \VGA_CONTROLL|Add0~0_combout\,
	cout => \VGA_CONTROLL|Add0~1\);

-- Location: LCCOMB_X6_Y8_N0
\VGA_CONTROLL|h_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~9_combout\ = (\VGA_CONTROLL|Add0~0_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add0~0_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~9_combout\);

-- Location: FF_X6_Y8_N1
\VGA_CONTROLL|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(0));

-- Location: LCCOMB_X6_Y9_N8
\VGA_CONTROLL|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~2_combout\ = (\VGA_CONTROLL|h_count\(1) & (!\VGA_CONTROLL|Add0~1\)) # (!\VGA_CONTROLL|h_count\(1) & ((\VGA_CONTROLL|Add0~1\) # (GND)))
-- \VGA_CONTROLL|Add0~3\ = CARRY((!\VGA_CONTROLL|Add0~1\) # (!\VGA_CONTROLL|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(1),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~1\,
	combout => \VGA_CONTROLL|Add0~2_combout\,
	cout => \VGA_CONTROLL|Add0~3\);

-- Location: LCCOMB_X6_Y9_N4
\VGA_CONTROLL|h_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~8_combout\ = (\VGA_CONTROLL|Add0~2_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add0~2_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~8_combout\);

-- Location: FF_X6_Y9_N5
\VGA_CONTROLL|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(1));

-- Location: LCCOMB_X6_Y9_N10
\VGA_CONTROLL|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~4_combout\ = (\VGA_CONTROLL|h_count\(2) & (\VGA_CONTROLL|Add0~3\ $ (GND))) # (!\VGA_CONTROLL|h_count\(2) & (!\VGA_CONTROLL|Add0~3\ & VCC))
-- \VGA_CONTROLL|Add0~5\ = CARRY((\VGA_CONTROLL|h_count\(2) & !\VGA_CONTROLL|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(2),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~3\,
	combout => \VGA_CONTROLL|Add0~4_combout\,
	cout => \VGA_CONTROLL|Add0~5\);

-- Location: LCCOMB_X6_Y9_N2
\VGA_CONTROLL|h_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~7_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~4_combout\,
	combout => \VGA_CONTROLL|h_count~7_combout\);

-- Location: FF_X6_Y9_N3
\VGA_CONTROLL|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(2));

-- Location: LCCOMB_X6_Y9_N12
\VGA_CONTROLL|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~6_combout\ = (\VGA_CONTROLL|h_count\(3) & (!\VGA_CONTROLL|Add0~5\)) # (!\VGA_CONTROLL|h_count\(3) & ((\VGA_CONTROLL|Add0~5\) # (GND)))
-- \VGA_CONTROLL|Add0~7\ = CARRY((!\VGA_CONTROLL|Add0~5\) # (!\VGA_CONTROLL|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(3),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~5\,
	combout => \VGA_CONTROLL|Add0~6_combout\,
	cout => \VGA_CONTROLL|Add0~7\);

-- Location: LCCOMB_X6_Y9_N0
\VGA_CONTROLL|h_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~4_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~6_combout\,
	combout => \VGA_CONTROLL|h_count~4_combout\);

-- Location: FF_X6_Y9_N1
\VGA_CONTROLL|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(3));

-- Location: LCCOMB_X6_Y9_N14
\VGA_CONTROLL|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~8_combout\ = (\VGA_CONTROLL|h_count\(4) & (\VGA_CONTROLL|Add0~7\ $ (GND))) # (!\VGA_CONTROLL|h_count\(4) & (!\VGA_CONTROLL|Add0~7\ & VCC))
-- \VGA_CONTROLL|Add0~9\ = CARRY((\VGA_CONTROLL|h_count\(4) & !\VGA_CONTROLL|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(4),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~7\,
	combout => \VGA_CONTROLL|Add0~8_combout\,
	cout => \VGA_CONTROLL|Add0~9\);

-- Location: LCCOMB_X6_Y9_N16
\VGA_CONTROLL|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~10_combout\ = (\VGA_CONTROLL|h_count\(5) & (!\VGA_CONTROLL|Add0~9\)) # (!\VGA_CONTROLL|h_count\(5) & ((\VGA_CONTROLL|Add0~9\) # (GND)))
-- \VGA_CONTROLL|Add0~11\ = CARRY((!\VGA_CONTROLL|Add0~9\) # (!\VGA_CONTROLL|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(5),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~9\,
	combout => \VGA_CONTROLL|Add0~10_combout\,
	cout => \VGA_CONTROLL|Add0~11\);

-- Location: LCCOMB_X6_Y9_N26
\VGA_CONTROLL|h_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~5_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~10_combout\,
	combout => \VGA_CONTROLL|h_count~5_combout\);

-- Location: FF_X6_Y9_N27
\VGA_CONTROLL|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(5));

-- Location: LCCOMB_X6_Y9_N18
\VGA_CONTROLL|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~12_combout\ = (\VGA_CONTROLL|h_count\(6) & (\VGA_CONTROLL|Add0~11\ $ (GND))) # (!\VGA_CONTROLL|h_count\(6) & (!\VGA_CONTROLL|Add0~11\ & VCC))
-- \VGA_CONTROLL|Add0~13\ = CARRY((\VGA_CONTROLL|h_count\(6) & !\VGA_CONTROLL|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(6),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~11\,
	combout => \VGA_CONTROLL|Add0~12_combout\,
	cout => \VGA_CONTROLL|Add0~13\);

-- Location: LCCOMB_X4_Y9_N2
\VGA_CONTROLL|h_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~6_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~12_combout\,
	combout => \VGA_CONTROLL|h_count~6_combout\);

-- Location: FF_X4_Y9_N3
\VGA_CONTROLL|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(6));

-- Location: LCCOMB_X6_Y9_N20
\VGA_CONTROLL|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~14_combout\ = (\VGA_CONTROLL|h_count\(7) & (!\VGA_CONTROLL|Add0~13\)) # (!\VGA_CONTROLL|h_count\(7) & ((\VGA_CONTROLL|Add0~13\) # (GND)))
-- \VGA_CONTROLL|Add0~15\ = CARRY((!\VGA_CONTROLL|Add0~13\) # (!\VGA_CONTROLL|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(7),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~13\,
	combout => \VGA_CONTROLL|Add0~14_combout\,
	cout => \VGA_CONTROLL|Add0~15\);

-- Location: LCCOMB_X4_Y9_N24
\VGA_CONTROLL|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~1_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~14_combout\,
	combout => \VGA_CONTROLL|h_count~1_combout\);

-- Location: FF_X4_Y9_N25
\VGA_CONTROLL|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(7));

-- Location: LCCOMB_X6_Y9_N22
\VGA_CONTROLL|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~16_combout\ = (\VGA_CONTROLL|h_count\(8) & (\VGA_CONTROLL|Add0~15\ $ (GND))) # (!\VGA_CONTROLL|h_count\(8) & (!\VGA_CONTROLL|Add0~15\ & VCC))
-- \VGA_CONTROLL|Add0~17\ = CARRY((\VGA_CONTROLL|h_count\(8) & !\VGA_CONTROLL|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(8),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~15\,
	combout => \VGA_CONTROLL|Add0~16_combout\,
	cout => \VGA_CONTROLL|Add0~17\);

-- Location: LCCOMB_X4_Y9_N6
\VGA_CONTROLL|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~0_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~16_combout\,
	combout => \VGA_CONTROLL|h_count~0_combout\);

-- Location: FF_X4_Y9_N7
\VGA_CONTROLL|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(8));

-- Location: LCCOMB_X6_Y9_N24
\VGA_CONTROLL|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~18_combout\ = \VGA_CONTROLL|h_count\(9) $ (\VGA_CONTROLL|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(9),
	cin => \VGA_CONTROLL|Add0~17\,
	combout => \VGA_CONTROLL|Add0~18_combout\);

-- Location: LCCOMB_X4_Y9_N4
\VGA_CONTROLL|h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~2_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~18_combout\,
	combout => \VGA_CONTROLL|h_count~2_combout\);

-- Location: FF_X4_Y9_N21
\VGA_CONTROLL|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(9));

-- Location: LCCOMB_X6_Y9_N28
\VGA_CONTROLL|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~0_combout\ = (((!\VGA_CONTROLL|h_count\(2)) # (!\VGA_CONTROLL|h_count\(1))) # (!\VGA_CONTROLL|h_count\(3))) # (!\VGA_CONTROLL|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(4),
	datab => \VGA_CONTROLL|h_count\(3),
	datac => \VGA_CONTROLL|h_count\(1),
	datad => \VGA_CONTROLL|h_count\(2),
	combout => \VGA_CONTROLL|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y9_N30
\VGA_CONTROLL|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~1_combout\ = (\VGA_CONTROLL|h_count\(7)) # ((\VGA_CONTROLL|h_count\(5)) # ((\VGA_CONTROLL|h_count\(0) & !\VGA_CONTROLL|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(7),
	datab => \VGA_CONTROLL|h_count\(0),
	datac => \VGA_CONTROLL|h_count\(5),
	datad => \VGA_CONTROLL|LessThan0~0_combout\,
	combout => \VGA_CONTROLL|LessThan0~1_combout\);

-- Location: LCCOMB_X4_Y9_N20
\VGA_CONTROLL|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~2_combout\ = (((!\VGA_CONTROLL|h_count\(6) & !\VGA_CONTROLL|LessThan0~1_combout\)) # (!\VGA_CONTROLL|h_count\(9))) # (!\VGA_CONTROLL|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(8),
	datab => \VGA_CONTROLL|h_count\(6),
	datac => \VGA_CONTROLL|h_count\(9),
	datad => \VGA_CONTROLL|LessThan0~1_combout\,
	combout => \VGA_CONTROLL|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y9_N8
\VGA_CONTROLL|h_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~3_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~8_combout\,
	combout => \VGA_CONTROLL|h_count~3_combout\);

-- Location: FF_X4_Y9_N9
\VGA_CONTROLL|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(4));

-- Location: LCCOMB_X4_Y9_N26
\VGA_CONTROLL|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~0_combout\ = ((\VGA_CONTROLL|Add0~8_combout\ & (\VGA_CONTROLL|Add0~12_combout\ & \VGA_CONTROLL|Add0~10_combout\)) # (!\VGA_CONTROLL|Add0~8_combout\ & (!\VGA_CONTROLL|Add0~12_combout\ & !\VGA_CONTROLL|Add0~10_combout\))) # 
-- (!\VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~8_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~12_combout\,
	datad => \VGA_CONTROLL|Add0~10_combout\,
	combout => \VGA_CONTROLL|process_0~0_combout\);

-- Location: LCCOMB_X4_Y9_N0
\VGA_CONTROLL|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~1_combout\ = (\VGA_CONTROLL|process_0~0_combout\) # (((\VGA_CONTROLL|h_count~0_combout\) # (!\VGA_CONTROLL|h_count~1_combout\)) # (!\VGA_CONTROLL|h_count~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|process_0~0_combout\,
	datab => \VGA_CONTROLL|h_count~2_combout\,
	datac => \VGA_CONTROLL|h_count~0_combout\,
	datad => \VGA_CONTROLL|h_count~1_combout\,
	combout => \VGA_CONTROLL|process_0~1_combout\);

-- Location: FF_X4_Y9_N1
\VGA_CONTROLL|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_sync~q\);

-- Location: FF_X2_Y8_N17
\VGA_CONTROLL|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(1));

-- Location: LCCOMB_X3_Y8_N0
\VGA_CONTROLL|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~0_combout\ = \VGA_CONTROLL|v_count\(0) $ (VCC)
-- \VGA_CONTROLL|Add1~1\ = CARRY(\VGA_CONTROLL|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(0),
	datad => VCC,
	combout => \VGA_CONTROLL|Add1~0_combout\,
	cout => \VGA_CONTROLL|Add1~1\);

-- Location: LCCOMB_X3_Y8_N2
\VGA_CONTROLL|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~2_combout\ = (\VGA_CONTROLL|v_count\(1) & (!\VGA_CONTROLL|Add1~1\)) # (!\VGA_CONTROLL|v_count\(1) & ((\VGA_CONTROLL|Add1~1\) # (GND)))
-- \VGA_CONTROLL|Add1~3\ = CARRY((!\VGA_CONTROLL|Add1~1\) # (!\VGA_CONTROLL|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(1),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~1\,
	combout => \VGA_CONTROLL|Add1~2_combout\,
	cout => \VGA_CONTROLL|Add1~3\);

-- Location: LCCOMB_X3_Y8_N4
\VGA_CONTROLL|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~4_combout\ = (\VGA_CONTROLL|v_count\(2) & (\VGA_CONTROLL|Add1~3\ $ (GND))) # (!\VGA_CONTROLL|v_count\(2) & (!\VGA_CONTROLL|Add1~3\ & VCC))
-- \VGA_CONTROLL|Add1~5\ = CARRY((\VGA_CONTROLL|v_count\(2) & !\VGA_CONTROLL|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(2),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~3\,
	combout => \VGA_CONTROLL|Add1~4_combout\,
	cout => \VGA_CONTROLL|Add1~5\);

-- Location: LCCOMB_X4_Y8_N10
\VGA_CONTROLL|v_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~1_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(2))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~4_combout\,
	datac => \VGA_CONTROLL|v_count\(2),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~1_combout\);

-- Location: FF_X4_Y8_N11
\VGA_CONTROLL|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(2));

-- Location: LCCOMB_X3_Y8_N6
\VGA_CONTROLL|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~6_combout\ = (\VGA_CONTROLL|v_count\(3) & (!\VGA_CONTROLL|Add1~5\)) # (!\VGA_CONTROLL|v_count\(3) & ((\VGA_CONTROLL|Add1~5\) # (GND)))
-- \VGA_CONTROLL|Add1~7\ = CARRY((!\VGA_CONTROLL|Add1~5\) # (!\VGA_CONTROLL|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(3),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~5\,
	combout => \VGA_CONTROLL|Add1~6_combout\,
	cout => \VGA_CONTROLL|Add1~7\);

-- Location: LCCOMB_X4_Y8_N8
\VGA_CONTROLL|v_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~4_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(3))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~6_combout\,
	datac => \VGA_CONTROLL|v_count\(3),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~4_combout\);

-- Location: FF_X4_Y8_N9
\VGA_CONTROLL|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(3));

-- Location: LCCOMB_X3_Y8_N8
\VGA_CONTROLL|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~8_combout\ = (\VGA_CONTROLL|v_count\(4) & (\VGA_CONTROLL|Add1~7\ $ (GND))) # (!\VGA_CONTROLL|v_count\(4) & (!\VGA_CONTROLL|Add1~7\ & VCC))
-- \VGA_CONTROLL|Add1~9\ = CARRY((\VGA_CONTROLL|v_count\(4) & !\VGA_CONTROLL|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(4),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~7\,
	combout => \VGA_CONTROLL|Add1~8_combout\,
	cout => \VGA_CONTROLL|Add1~9\);

-- Location: LCCOMB_X3_Y8_N24
\VGA_CONTROLL|v_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~2_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(4))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~8_combout\,
	datac => \VGA_CONTROLL|v_count\(4),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~2_combout\);

-- Location: FF_X3_Y8_N25
\VGA_CONTROLL|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(4));

-- Location: LCCOMB_X3_Y8_N10
\VGA_CONTROLL|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~10_combout\ = (\VGA_CONTROLL|v_count\(5) & (!\VGA_CONTROLL|Add1~9\)) # (!\VGA_CONTROLL|v_count\(5) & ((\VGA_CONTROLL|Add1~9\) # (GND)))
-- \VGA_CONTROLL|Add1~11\ = CARRY((!\VGA_CONTROLL|Add1~9\) # (!\VGA_CONTROLL|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(5),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~9\,
	combout => \VGA_CONTROLL|Add1~10_combout\,
	cout => \VGA_CONTROLL|Add1~11\);

-- Location: LCCOMB_X4_Y8_N22
\VGA_CONTROLL|v_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~5_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(5))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & ((\VGA_CONTROLL|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(5),
	datad => \VGA_CONTROLL|Add1~10_combout\,
	combout => \VGA_CONTROLL|v_count~5_combout\);

-- Location: FF_X4_Y8_N23
\VGA_CONTROLL|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(5));

-- Location: LCCOMB_X3_Y8_N12
\VGA_CONTROLL|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~12_combout\ = (\VGA_CONTROLL|v_count\(6) & (\VGA_CONTROLL|Add1~11\ $ (GND))) # (!\VGA_CONTROLL|v_count\(6) & (!\VGA_CONTROLL|Add1~11\ & VCC))
-- \VGA_CONTROLL|Add1~13\ = CARRY((\VGA_CONTROLL|v_count\(6) & !\VGA_CONTROLL|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(6),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~11\,
	combout => \VGA_CONTROLL|Add1~12_combout\,
	cout => \VGA_CONTROLL|Add1~13\);

-- Location: LCCOMB_X3_Y8_N26
\VGA_CONTROLL|v_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~6_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(6))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & ((\VGA_CONTROLL|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(6),
	datad => \VGA_CONTROLL|Add1~12_combout\,
	combout => \VGA_CONTROLL|v_count~6_combout\);

-- Location: FF_X3_Y8_N27
\VGA_CONTROLL|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(6));

-- Location: LCCOMB_X3_Y8_N14
\VGA_CONTROLL|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~14_combout\ = (\VGA_CONTROLL|v_count\(7) & (!\VGA_CONTROLL|Add1~13\)) # (!\VGA_CONTROLL|v_count\(7) & ((\VGA_CONTROLL|Add1~13\) # (GND)))
-- \VGA_CONTROLL|Add1~15\ = CARRY((!\VGA_CONTROLL|Add1~13\) # (!\VGA_CONTROLL|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(7),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~13\,
	combout => \VGA_CONTROLL|Add1~14_combout\,
	cout => \VGA_CONTROLL|Add1~15\);

-- Location: LCCOMB_X3_Y8_N20
\VGA_CONTROLL|v_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~7_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(7))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~14_combout\,
	datac => \VGA_CONTROLL|v_count\(7),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~7_combout\);

-- Location: FF_X3_Y8_N21
\VGA_CONTROLL|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(7));

-- Location: LCCOMB_X3_Y8_N16
\VGA_CONTROLL|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~16_combout\ = (\VGA_CONTROLL|v_count\(8) & (\VGA_CONTROLL|Add1~15\ $ (GND))) # (!\VGA_CONTROLL|v_count\(8) & (!\VGA_CONTROLL|Add1~15\ & VCC))
-- \VGA_CONTROLL|Add1~17\ = CARRY((\VGA_CONTROLL|v_count\(8) & !\VGA_CONTROLL|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(8),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~15\,
	combout => \VGA_CONTROLL|Add1~16_combout\,
	cout => \VGA_CONTROLL|Add1~17\);

-- Location: LCCOMB_X4_Y8_N4
\VGA_CONTROLL|v_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~8_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(8))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~16_combout\,
	datac => \VGA_CONTROLL|v_count\(8),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~8_combout\);

-- Location: FF_X4_Y8_N5
\VGA_CONTROLL|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(8));

-- Location: LCCOMB_X3_Y8_N18
\VGA_CONTROLL|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~18_combout\ = \VGA_CONTROLL|v_count\(9) $ (\VGA_CONTROLL|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(9),
	cin => \VGA_CONTROLL|Add1~17\,
	combout => \VGA_CONTROLL|Add1~18_combout\);

-- Location: LCCOMB_X4_Y8_N30
\VGA_CONTROLL|v_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~0_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(9))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\ & (\VGA_CONTROLL|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~2_combout\,
	datab => \VGA_CONTROLL|Add1~18_combout\,
	datac => \VGA_CONTROLL|v_count\(9),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~0_combout\);

-- Location: FF_X4_Y8_N31
\VGA_CONTROLL|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(9));

-- Location: LCCOMB_X3_Y8_N28
\VGA_CONTROLL|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan1~1_combout\ = (!\VGA_CONTROLL|v_count\(4) & (!\VGA_CONTROLL|v_count\(6) & !\VGA_CONTROLL|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(4),
	datac => \VGA_CONTROLL|v_count\(6),
	datad => \VGA_CONTROLL|v_count\(5),
	combout => \VGA_CONTROLL|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y8_N30
\VGA_CONTROLL|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan1~0_combout\ = (!\VGA_CONTROLL|v_count\(8) & (!\VGA_CONTROLL|v_count\(7) & ((!\VGA_CONTROLL|v_count\(3)) # (!\VGA_CONTROLL|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(8),
	datab => \VGA_CONTROLL|v_count\(2),
	datac => \VGA_CONTROLL|v_count\(3),
	datad => \VGA_CONTROLL|v_count\(7),
	combout => \VGA_CONTROLL|LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y8_N22
\VGA_CONTROLL|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan1~2_combout\ = ((\VGA_CONTROLL|LessThan1~1_combout\ & \VGA_CONTROLL|LessThan1~0_combout\)) # (!\VGA_CONTROLL|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(9),
	datab => \VGA_CONTROLL|LessThan1~1_combout\,
	datac => \VGA_CONTROLL|LessThan1~0_combout\,
	combout => \VGA_CONTROLL|LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y8_N2
\VGA_CONTROLL|v_count[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[0]~9_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(0))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|Add1~0_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~0_combout\,
	datab => \VGA_CONTROLL|LessThan1~2_combout\,
	datac => \VGA_CONTROLL|v_count\(0),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count[0]~9_combout\);

-- Location: FF_X6_Y8_N3
\VGA_CONTROLL|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(0));

-- Location: LCCOMB_X2_Y8_N16
\VGA_CONTROLL|v_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count~3_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|v_count\(1))))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|Add1~2_combout\ & (\VGA_CONTROLL|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~2_combout\,
	datab => \VGA_CONTROLL|LessThan1~2_combout\,
	datac => \VGA_CONTROLL|v_count\(1),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|v_count~3_combout\);

-- Location: LCCOMB_X4_Y8_N16
\VGA_CONTROLL|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~2_combout\ = ((\VGA_CONTROLL|v_count~2_combout\) # ((\VGA_CONTROLL|v_count~1_combout\) # (!\VGA_CONTROLL|v_count~4_combout\))) # (!\VGA_CONTROLL|v_count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count~3_combout\,
	datab => \VGA_CONTROLL|v_count~2_combout\,
	datac => \VGA_CONTROLL|v_count~4_combout\,
	datad => \VGA_CONTROLL|v_count~1_combout\,
	combout => \VGA_CONTROLL|process_0~2_combout\);

-- Location: LCCOMB_X4_Y8_N2
\VGA_CONTROLL|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~3_combout\ = (\VGA_CONTROLL|v_count~5_combout\ & (\VGA_CONTROLL|v_count~8_combout\ & (\VGA_CONTROLL|v_count~6_combout\ & \VGA_CONTROLL|v_count~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count~5_combout\,
	datab => \VGA_CONTROLL|v_count~8_combout\,
	datac => \VGA_CONTROLL|v_count~6_combout\,
	datad => \VGA_CONTROLL|v_count~7_combout\,
	combout => \VGA_CONTROLL|process_0~3_combout\);

-- Location: LCCOMB_X4_Y8_N0
\VGA_CONTROLL|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~4_combout\ = (\VGA_CONTROLL|process_0~2_combout\) # ((\VGA_CONTROLL|v_count~0_combout\) # (!\VGA_CONTROLL|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|process_0~2_combout\,
	datac => \VGA_CONTROLL|v_count~0_combout\,
	datad => \VGA_CONTROLL|process_0~3_combout\,
	combout => \VGA_CONTROLL|process_0~4_combout\);

-- Location: FF_X4_Y8_N1
\VGA_CONTROLL|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_sync~q\);

-- Location: LCCOMB_X4_Y9_N14
\VGA_CONTROLL|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan6~0_combout\ = (((!\VGA_CONTROLL|Add0~14_combout\ & !\VGA_CONTROLL|Add0~16_combout\)) # (!\VGA_CONTROLL|LessThan0~2_combout\)) # (!\VGA_CONTROLL|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~18_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~14_combout\,
	datad => \VGA_CONTROLL|Add0~16_combout\,
	combout => \VGA_CONTROLL|LessThan6~0_combout\);

-- Location: LCCOMB_X4_Y8_N26
\VGA_CONTROLL|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~5_combout\ = (!\VGA_CONTROLL|v_count~0_combout\ & (\VGA_CONTROLL|LessThan6~0_combout\ & !\VGA_CONTROLL|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count~0_combout\,
	datab => \VGA_CONTROLL|LessThan6~0_combout\,
	datad => \VGA_CONTROLL|process_0~3_combout\,
	combout => \VGA_CONTROLL|process_0~5_combout\);

-- Location: FF_X4_Y8_N27
\VGA_CONTROLL|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|disp_ena~q\);

-- Location: LCCOMB_X4_Y9_N10
\VGA_CONTROLL|column[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[8]~feeder_combout\ = \VGA_CONTROLL|h_count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|h_count~0_combout\,
	combout => \VGA_CONTROLL|column[8]~feeder_combout\);

-- Location: FF_X4_Y9_N11
\VGA_CONTROLL|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[8]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(8));

-- Location: LCCOMB_X4_Y9_N12
\VGA_CONTROLL|column[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[3]~feeder_combout\ = \VGA_CONTROLL|h_count~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count~4_combout\,
	combout => \VGA_CONTROLL|column[3]~feeder_combout\);

-- Location: FF_X4_Y9_N13
\VGA_CONTROLL|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[3]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(3));

-- Location: LCCOMB_X4_Y9_N22
\VGA_CONTROLL|column[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[5]~feeder_combout\ = \VGA_CONTROLL|h_count~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count~5_combout\,
	combout => \VGA_CONTROLL|column[5]~feeder_combout\);

-- Location: FF_X4_Y9_N23
\VGA_CONTROLL|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[5]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(5));

-- Location: FF_X4_Y9_N17
\VGA_CONTROLL|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~6_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(6));

-- Location: LCCOMB_X4_Y9_N18
\VGA_CONTROLL|column[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[4]~feeder_combout\ = \VGA_CONTROLL|h_count~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|h_count~3_combout\,
	combout => \VGA_CONTROLL|column[4]~feeder_combout\);

-- Location: FF_X4_Y9_N19
\VGA_CONTROLL|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[4]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(4));

-- Location: LCCOMB_X4_Y9_N16
\TEST1|pixel.red[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST1|pixel.red[0]~0_combout\ = ((!\VGA_CONTROLL|column\(5) & ((!\VGA_CONTROLL|column\(4)) # (!\VGA_CONTROLL|column\(3))))) # (!\VGA_CONTROLL|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(3),
	datab => \VGA_CONTROLL|column\(5),
	datac => \VGA_CONTROLL|column\(6),
	datad => \VGA_CONTROLL|column\(4),
	combout => \TEST1|pixel.red[0]~0_combout\);

-- Location: FF_X4_Y9_N31
\VGA_CONTROLL|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~2_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(9));

-- Location: LCCOMB_X4_Y9_N28
\VGA_CONTROLL|column[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[7]~feeder_combout\ = \VGA_CONTROLL|h_count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count~1_combout\,
	combout => \VGA_CONTROLL|column[7]~feeder_combout\);

-- Location: FF_X4_Y9_N29
\VGA_CONTROLL|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[7]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(7));

-- Location: LCCOMB_X4_Y9_N30
\TEST1|pixel.red[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST1|pixel.red[0]~1_combout\ = ((!\VGA_CONTROLL|column\(8) & (\TEST1|pixel.red[0]~0_combout\ & !\VGA_CONTROLL|column\(7)))) # (!\VGA_CONTROLL|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(8),
	datab => \TEST1|pixel.red[0]~0_combout\,
	datac => \VGA_CONTROLL|column\(9),
	datad => \VGA_CONTROLL|column\(7),
	combout => \TEST1|pixel.red[0]~1_combout\);

-- Location: LCCOMB_X4_Y8_N20
\VGA_CONTROLL|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~6_combout\ = (\VGA_CONTROLL|v_count~7_combout\ & \VGA_CONTROLL|v_count~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count~7_combout\,
	datac => \VGA_CONTROLL|v_count~8_combout\,
	combout => \VGA_CONTROLL|process_0~6_combout\);

-- Location: LCCOMB_X4_Y8_N14
\VGA_CONTROLL|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan7~0_combout\ = (!\VGA_CONTROLL|v_count~0_combout\ & (((!\VGA_CONTROLL|process_0~6_combout\) # (!\VGA_CONTROLL|v_count~5_combout\)) # (!\VGA_CONTROLL|v_count~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count~0_combout\,
	datab => \VGA_CONTROLL|v_count~6_combout\,
	datac => \VGA_CONTROLL|v_count~5_combout\,
	datad => \VGA_CONTROLL|process_0~6_combout\,
	combout => \VGA_CONTROLL|LessThan7~0_combout\);

-- Location: FF_X4_Y8_N29
\VGA_CONTROLL|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|v_count~7_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(7));

-- Location: LCCOMB_X4_Y8_N6
\VGA_CONTROLL|row[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[5]~feeder_combout\ = \VGA_CONTROLL|v_count~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|v_count~5_combout\,
	combout => \VGA_CONTROLL|row[5]~feeder_combout\);

-- Location: FF_X4_Y8_N7
\VGA_CONTROLL|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[5]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(5));

-- Location: LCCOMB_X4_Y8_N24
\VGA_CONTROLL|row[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[4]~feeder_combout\ = \VGA_CONTROLL|v_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|v_count~2_combout\,
	combout => \VGA_CONTROLL|row[4]~feeder_combout\);

-- Location: FF_X4_Y8_N25
\VGA_CONTROLL|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[4]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(4));

-- Location: FF_X4_Y8_N19
\VGA_CONTROLL|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|v_count~8_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(8));

-- Location: LCCOMB_X4_Y8_N12
\VGA_CONTROLL|row[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[6]~feeder_combout\ = \VGA_CONTROLL|v_count~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|v_count~6_combout\,
	combout => \VGA_CONTROLL|row[6]~feeder_combout\);

-- Location: FF_X4_Y8_N13
\VGA_CONTROLL|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[6]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(6));

-- Location: LCCOMB_X4_Y8_N18
\TEST1|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST1|LessThan3~0_combout\ = ((!\VGA_CONTROLL|row\(5) & (!\VGA_CONTROLL|row\(4) & !\VGA_CONTROLL|row\(6)))) # (!\VGA_CONTROLL|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(5),
	datab => \VGA_CONTROLL|row\(4),
	datac => \VGA_CONTROLL|row\(8),
	datad => \VGA_CONTROLL|row\(6),
	combout => \TEST1|LessThan3~0_combout\);

-- Location: LCCOMB_X4_Y8_N28
\TEST1|pixel.red[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST1|pixel.red[0]~2_combout\ = (\VGA_CONTROLL|disp_ena~q\ & (\TEST1|pixel.red[0]~1_combout\ & ((\TEST1|LessThan3~0_combout\) # (!\VGA_CONTROLL|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|disp_ena~q\,
	datab => \TEST1|pixel.red[0]~1_combout\,
	datac => \VGA_CONTROLL|row\(7),
	datad => \TEST1|LessThan3~0_combout\,
	combout => \TEST1|pixel.red[0]~2_combout\);

-- Location: IOIBUF_X78_Y21_N1
\reset_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_L,
	o => \reset_L~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


