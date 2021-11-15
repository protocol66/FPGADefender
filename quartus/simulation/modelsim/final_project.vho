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

-- DATE "11/15/2021 02:19:31"

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
	shoot_L : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	GSENSOR_CS_N : OUT std_logic;
	GSENSOR_SCLK : OUT std_logic;
	GSENSOR_SDI : INOUT std_logic;
	GSENSOR_SDO : INOUT std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0)
	);
END project_top_level;

-- Design Ports Information
-- reset_L	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pause	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shoot_L	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- GSENSOR_CS_N	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SCLK	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- GSENSOR_SDI	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDO	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
SIGNAL ww_shoot_L : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_GSENSOR_CS_N : std_logic;
SIGNAL ww_GSENSOR_SCLK : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_L~input_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \shoot_L~input_o\ : std_logic;
SIGNAL \GSENSOR_SDI~input_o\ : std_logic;
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
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~29_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~31_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~33_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~27\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~29\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~31\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~33\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~35\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~37\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~38_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~11\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~13\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~15\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~17\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~19\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~21\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~23\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~25\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add0~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal0~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector7~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Add1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector3~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|count[1]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Add2~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|count[2]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector4~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Selector0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~25_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~37_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~19_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~27_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal1~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_request_r~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|spi_program~35_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~5_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~1\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~3\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~5\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~7\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~8_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~6_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~9\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~10_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~7_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~11\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~12_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~9_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~13\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~14_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~15\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~17\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~18_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count[9]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add0~16_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_count~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|h_sync~q\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~6\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~7_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~25_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~8\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~9_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~23_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~10\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~11_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~26_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~12\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~13_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~27_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~14\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~15_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~28_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~16\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~17_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~29_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_count[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~18\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~19_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~21_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~30_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~2\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~24_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~4\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~5_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|Add1~22_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~2_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~3_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|process_0~4_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|v_sync~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn_next~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn~q\ : std_logic;
SIGNAL \VGA_CONTROLL|column[9]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[0]~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[2]~feeder_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|row[7]~feeder_combout\ : std_logic;
SIGNAL \TOP_LINE|in_bounds~0_combout\ : std_logic;
SIGNAL \SCORE_1|in_bounds~0_combout\ : std_logic;
SIGNAL \SCORE_1|in_bounds~1_combout\ : std_logic;
SIGNAL \SCORE_1|in_bounds~2_combout\ : std_logic;
SIGNAL \SCORE_1|in_bounds~3_combout\ : std_logic;
SIGNAL \SCORE_1|in_bounds~4_combout\ : std_logic;
SIGNAL \SCORE_1|Add1~1_combout\ : std_logic;
SIGNAL \SCORE_1|Add1~0_combout\ : std_logic;
SIGNAL \VGA_CONTROLL|column[0]~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~4_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~2_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~3_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~5_combout\ : std_logic;
SIGNAL \TOP_LINE|in_bounds~2_combout\ : std_logic;
SIGNAL \TOP_LINE|in_bounds~1_combout\ : std_logic;
SIGNAL \TOP_LINE|in_bounds~3_combout\ : std_logic;
SIGNAL \curr_pixel~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~8_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~7_combout\ : std_logic;
SIGNAL \SCORE_1|Mux98~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~6_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~9_combout\ : std_logic;
SIGNAL \SCORE_1|Mux98~1_combout\ : std_logic;
SIGNAL \curr_pixel~1_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~0_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux17~0_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~2_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~10_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~3_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~11_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~4_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[3]~0_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.red[2]~5_combout\ : std_logic;
SIGNAL \curr_pixel~2_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~14_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~13_combout\ : std_logic;
SIGNAL \SCORE_1|Mux96~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~15_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~12_combout\ : std_logic;
SIGNAL \SCORE_1|Mux96~1_combout\ : std_logic;
SIGNAL \curr_pixel~3_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[3]~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux17~1_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[3]~2_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[3]~3_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[3]~4_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.green[0]~5_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.green[0]~6_combout\ : std_logic;
SIGNAL \SCORE_1|Mux103~2_combout\ : std_logic;
SIGNAL \SCORE_1|Mux103~3_combout\ : std_logic;
SIGNAL \SCORE_1|Mux103~4_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.green[0]~4_combout\ : std_logic;
SIGNAL \curr_pixel~4_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~27_combout\ : std_logic;
SIGNAL \SCORE_1|Mux47~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux107~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~26_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~28_combout\ : std_logic;
SIGNAL \SCORE_1|Mux107~1_combout\ : std_logic;
SIGNAL \SCORE_1|pixel.blue[0]~5_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~19_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~16_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~18_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~17_combout\ : std_logic;
SIGNAL \SCORE_1|Mux101~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux101~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux102~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux102~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux102~2_combout\ : std_logic;
SIGNAL \curr_pixel~10_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~21_combout\ : std_logic;
SIGNAL \SCORE_1|Mux105~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~20_combout\ : std_logic;
SIGNAL \SCORE_1|Mux105~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~25_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~22_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~24_combout\ : std_logic;
SIGNAL \SCORE_1|Mux99~23_combout\ : std_logic;
SIGNAL \SCORE_1|Mux106~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux106~1_combout\ : std_logic;
SIGNAL \curr_pixel~11_combout\ : std_logic;
SIGNAL \SCORE_1|Mux100~1_combout\ : std_logic;
SIGNAL \SCORE_1|Mux100~0_combout\ : std_logic;
SIGNAL \SCORE_1|Mux100~2_combout\ : std_logic;
SIGNAL \SCORE_1|Mux100~3_combout\ : std_logic;
SIGNAL \curr_pixel~8_combout\ : std_logic;
SIGNAL \curr_pixel~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~11\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~13\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~15\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~17\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~19\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~21\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~23\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~25\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~27\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~29\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~31\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~33\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~35\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~37\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~39\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~40_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~41\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~42_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~43\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~44_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~45\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~46_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~47\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~48_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~49\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~50_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~25_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~51\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~52_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~53\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~54_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~27_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~55\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~56_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~57\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~58_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~29_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~59\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~60_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|count~19_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|Add0~38_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|clk_out~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|clk_out~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|clk_out~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \GSENSOR_SDO~input_o\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Equal1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[4]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[3]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[6]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[7]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[1]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address[0]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Equal1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[31]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~17\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~19\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~1_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~3_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~5_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~7_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~9_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~11_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~13_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~15_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~17_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~21\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~23\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~37_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~38_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~25\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~35_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~27\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~29\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~33_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~31\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~33\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~31_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~35\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~29_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~37\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~38_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~27_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~39\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~40_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~41\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~42_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~25_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~43\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~44_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~45\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~46_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~47\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~48_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~49\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~50_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~51\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~52_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~19_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~53\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~54_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~55\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~56_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~25_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan3~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[0]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~11\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~13\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~15\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan2~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~57\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~58_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~39_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~59\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~60_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~40_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~41_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~61\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add2~62_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[0]~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_enable~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_enable~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_enable~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|y_enable~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[0]~10\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[1]~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[1]~12\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[2]~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[2]~14\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[3]~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[3]~16\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[4]~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[4]~18\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[5]~19_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[5]~20\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[6]~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[6]~22\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[7]~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[7]~24\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U4|count[8]~25_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~1_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~3_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~5_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~7_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~9_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~11_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~13_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~15_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan2~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~61_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~72_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[0]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~71_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~70_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~69_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~68_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~67_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~11\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~66_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~13\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~65_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~15\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~64_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~17\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~18_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~63_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~19\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~20_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~62_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~21\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~22_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~7_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~9_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~11_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~13_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~15_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~17_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~19_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~21_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~23_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[31]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~23\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~24_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~60_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~25\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~26_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~59_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~27\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~28_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~58_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~29\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~30_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~57_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~31\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~32_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~56_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~33\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~34_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~55_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~35\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~36_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~54_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~37\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~38_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~53_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~39\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~40_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~52_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~41\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~42_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~51_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~43\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~44_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~50_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~45\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~46_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~49_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~47\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~48_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~48_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~49\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~50_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~47_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~51\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~52_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~46_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~53\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~54_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~45_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~55\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~56_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~44_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~57\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~58_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~43_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~59\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~60_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|count~42_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~61\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add0~62_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan1~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~7_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~8_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|LessThan0~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~5_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~6_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~feeder_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~q\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[0]~9_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[5]~20\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[6]~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[6]~22\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[7]~23_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[7]~24\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[8]~25_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|bounds~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~1_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~3_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~5_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~7_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~9_cout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~11\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~13\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~14_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~15\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~16_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~10_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|Add4~12_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_enable~3_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_enable~1_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_enable~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_enable~2_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|x_enable~4_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[0]~10\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[1]~11_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[1]~12\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[2]~13_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[2]~14\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[3]~15_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[3]~16\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[4]~17_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[4]~18\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U3|count[5]~19_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~1_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~3_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~5_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~7_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~9_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~11_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~13_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~15_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~17_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan0~18_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~1\ : std_logic;
SIGNAL \SHIP_CURR|Add3~3\ : std_logic;
SIGNAL \SHIP_CURR|Add3~5\ : std_logic;
SIGNAL \SHIP_CURR|Add3~7\ : std_logic;
SIGNAL \SHIP_CURR|Add3~9\ : std_logic;
SIGNAL \SHIP_CURR|Add3~11\ : std_logic;
SIGNAL \SHIP_CURR|Add3~13\ : std_logic;
SIGNAL \SHIP_CURR|Add3~14_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~12_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~10_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~8_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~6_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~4_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~2_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~0_combout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~1_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~3_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~5_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~7_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~9_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~11_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~13_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~15_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan3~16_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~1\ : std_logic;
SIGNAL \SHIP_CURR|Add2~3\ : std_logic;
SIGNAL \SHIP_CURR|Add2~5\ : std_logic;
SIGNAL \SHIP_CURR|Add2~7\ : std_logic;
SIGNAL \SHIP_CURR|Add2~9\ : std_logic;
SIGNAL \SHIP_CURR|Add2~11\ : std_logic;
SIGNAL \SHIP_CURR|Add2~13\ : std_logic;
SIGNAL \SHIP_CURR|Add2~15\ : std_logic;
SIGNAL \SHIP_CURR|Add2~16_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~14_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~12_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~10_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~8_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~6_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~4_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~2_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~0_combout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~1_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~3_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~5_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~7_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~9_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~11_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~13_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~15_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~17_cout\ : std_logic;
SIGNAL \SHIP_CURR|LessThan1~18_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add2~17\ : std_logic;
SIGNAL \SHIP_CURR|Add2~18_combout\ : std_logic;
SIGNAL \SHIP_CURR|Add3~15\ : std_logic;
SIGNAL \SHIP_CURR|Add3~16_combout\ : std_logic;
SIGNAL \SHIP_CURR|in_bounds~0_combout\ : std_logic;
SIGNAL \SHIP_CURR|in_bounds~1_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1_combout\ : std_logic;
SIGNAL \curr_pixel~5_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1_combout\ : std_logic;
SIGNAL \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2_combout\ : std_logic;
SIGNAL \curr_pixel~6_combout\ : std_logic;
SIGNAL \curr_pixel~7_combout\ : std_logic;
SIGNAL \curr_pixel~12_combout\ : std_logic;
SIGNAL \curr_pixel~13_combout\ : std_logic;
SIGNAL \curr_pixel~14_combout\ : std_logic;
SIGNAL \curr_pixel~15_combout\ : std_logic;
SIGNAL \curr_pixel~16_combout\ : std_logic;
SIGNAL \curr_pixel~17_combout\ : std_logic;
SIGNAL \curr_pixel~18_combout\ : std_logic;
SIGNAL \curr_pixel~19_combout\ : std_logic;
SIGNAL \curr_pixel~20_combout\ : std_logic;
SIGNAL \curr_pixel~21_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|pc\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_CONTROLL|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U3|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U4|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_CONTROLL|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA_CONTROLL|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_CONTROLL|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\ : std_logic;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_reset_L <= reset_L;
ww_pause <= pause;
ww_shoot_L <= shoot_L;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
GSENSOR_CS_N <= ww_GSENSOR_CS_N;
GSENSOR_SCLK <= ww_GSENSOR_SCLK;
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

\SHIP_OFFSET_GEN|y_counter_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SHIP_OFFSET_GEN|y_counter_clk~q\);

\SHIP_OFFSET_GEN|x_counter_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SHIP_OFFSET_GEN|x_counter_clk~q\);

\SHIP_OFFSET_GEN|U1|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SHIP_OFFSET_GEN|U1|clk_out~q\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\ <= NOT \SHIP_OFFSET_GEN|Equal0~0_combout\;
\SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\ <= NOT \SHIP_OFFSET_GEN|Equal1~0_combout\;

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X54_Y0_N2
\GSENSOR_CS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn~q\,
	devoe => ww_devoe,
	o => ww_GSENSOR_CS_N);

-- Location: IOOBUF_X51_Y0_N16
\GSENSOR_SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	devoe => ww_devoe,
	o => ww_GSENSOR_SCLK);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \curr_pixel~0_combout\,
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
	i => \curr_pixel~1_combout\,
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
	i => \curr_pixel~2_combout\,
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
	i => \curr_pixel~3_combout\,
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
	i => \curr_pixel~13_combout\,
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
	i => \curr_pixel~15_combout\,
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
	i => \curr_pixel~16_combout\,
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
	i => \curr_pixel~17_combout\,
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
	i => \curr_pixel~18_combout\,
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
	i => \curr_pixel~19_combout\,
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
	i => \curr_pixel~20_combout\,
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
	i => \curr_pixel~21_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X38_Y0_N30
\GSENSOR_SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SDI);

-- Location: IOOBUF_X38_Y0_N23
\GSENSOR_SDO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SDO);

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

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: FF_X41_Y11_N21
\SHIP_OFFSET_GEN|U2|U0|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(2));

-- Location: FF_X41_Y11_N5
\SHIP_OFFSET_GEN|U2|U0|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(5));

-- Location: FF_X41_Y11_N29
\SHIP_OFFSET_GEN|U2|U0|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(4));

-- Location: FF_X41_Y11_N27
\SHIP_OFFSET_GEN|U2|U0|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(3));

-- Location: LCCOMB_X41_Y11_N8
\SHIP_OFFSET_GEN|U2|U0|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~4_combout\ = (\SHIP_OFFSET_GEN|U2|U0|pc\(2) & (\SHIP_OFFSET_GEN|U2|U0|Add1~3\ $ (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(2) & (!\SHIP_OFFSET_GEN|U2|U0|Add1~3\ & VCC))
-- \SHIP_OFFSET_GEN|U2|U0|Add1~5\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|pc\(2) & !\SHIP_OFFSET_GEN|U2|U0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|pc\(2),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add1~3\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~4_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add1~5\);

-- Location: LCCOMB_X41_Y11_N10
\SHIP_OFFSET_GEN|U2|U0|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~6_combout\ = (\SHIP_OFFSET_GEN|U2|U0|pc\(3) & (!\SHIP_OFFSET_GEN|U2|U0|Add1~5\)) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(3) & ((\SHIP_OFFSET_GEN|U2|U0|Add1~5\) # (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add1~7\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|Add1~5\) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|pc\(3),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add1~5\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~6_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add1~7\);

-- Location: LCCOMB_X41_Y11_N12
\SHIP_OFFSET_GEN|U2|U0|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~8_combout\ = (\SHIP_OFFSET_GEN|U2|U0|pc\(4) & (\SHIP_OFFSET_GEN|U2|U0|Add1~7\ $ (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(4) & (!\SHIP_OFFSET_GEN|U2|U0|Add1~7\ & VCC))
-- \SHIP_OFFSET_GEN|U2|U0|Add1~9\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|pc\(4) & !\SHIP_OFFSET_GEN|U2|U0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|pc\(4),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add1~7\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~8_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add1~9\);

-- Location: LCCOMB_X41_Y11_N14
\SHIP_OFFSET_GEN|U2|U0|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\ = \SHIP_OFFSET_GEN|U2|U0|pc\(5) $ (\SHIP_OFFSET_GEN|U2|U0|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|pc\(5),
	cin => \SHIP_OFFSET_GEN|U2|U0|Add1~9\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\);

-- Location: LCCOMB_X40_Y11_N30
\SHIP_OFFSET_GEN|U2|U0|spi_program~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~29_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ $ (!\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~29_combout\);

-- Location: LCCOMB_X40_Y11_N20
\SHIP_OFFSET_GEN|U2|U0|spi_program~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~30_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ $ (((!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & 
-- !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~30_combout\);

-- Location: LCCOMB_X40_Y11_N6
\SHIP_OFFSET_GEN|U2|U0|spi_program~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~31_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~29_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|spi_program~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|spi_program~29_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~30_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~31_combout\);

-- Location: LCCOMB_X40_Y11_N4
\SHIP_OFFSET_GEN|U2|U0|spi_program~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~32_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ $ (!\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~32_combout\);

-- Location: LCCOMB_X40_Y11_N10
\SHIP_OFFSET_GEN|U2|U0|spi_program~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~33_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~31_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~32_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|spi_program~31_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~32_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~33_combout\);

-- Location: FF_X40_Y11_N11
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0));

-- Location: FF_X41_Y11_N15
\SHIP_OFFSET_GEN|U2|U0|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(0));

-- Location: LCCOMB_X42_Y11_N4
\SHIP_OFFSET_GEN|U2|U0|spi_program~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~11_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~11_combout\);

-- Location: LCCOMB_X42_Y11_N28
\SHIP_OFFSET_GEN|U2|U0|spi_program~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ $ (!\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\);

-- Location: LCCOMB_X42_Y11_N6
\SHIP_OFFSET_GEN|U2|U0|spi_program~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ $ (!\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\);

-- Location: LCCOMB_X42_Y11_N22
\SHIP_OFFSET_GEN|U2|U0|spi_program~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~10_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & 
-- (!\SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~10_combout\);

-- Location: LCCOMB_X42_Y11_N24
\SHIP_OFFSET_GEN|U2|U0|spi_program~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~12_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~10_combout\) # ((!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~11_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~11_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~10_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~12_combout\);

-- Location: FF_X42_Y11_N25
\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0));

-- Location: LCCOMB_X43_Y8_N6
\SHIP_OFFSET_GEN|U2|U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~26_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13) & (\SHIP_OFFSET_GEN|U2|U0|Add0~25\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~25\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~27\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13) & !\SHIP_OFFSET_GEN|U2|U0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~25\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~26_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~27\);

-- Location: LCCOMB_X43_Y8_N8
\SHIP_OFFSET_GEN|U2|U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~28_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~27\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14) & (\SHIP_OFFSET_GEN|U2|U0|Add0~27\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~29\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~27\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~28_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~29\);

-- Location: FF_X43_Y8_N9
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14));

-- Location: LCCOMB_X43_Y8_N10
\SHIP_OFFSET_GEN|U2|U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~30_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15) & (\SHIP_OFFSET_GEN|U2|U0|Add0~29\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~29\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~31\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15) & !\SHIP_OFFSET_GEN|U2|U0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~29\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~30_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~31\);

-- Location: LCCOMB_X43_Y8_N20
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~7_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~30_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add0~30_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~7_combout\);

-- Location: FF_X43_Y8_N21
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15));

-- Location: LCCOMB_X43_Y8_N12
\SHIP_OFFSET_GEN|U2|U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~32_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~31\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16) & (\SHIP_OFFSET_GEN|U2|U0|Add0~31\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~33\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~31\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~32_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~33\);

-- Location: FF_X43_Y8_N13
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16));

-- Location: LCCOMB_X43_Y8_N14
\SHIP_OFFSET_GEN|U2|U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~34_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17) & (\SHIP_OFFSET_GEN|U2|U0|Add0~33\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~33\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~35\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17) & !\SHIP_OFFSET_GEN|U2|U0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~33\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~34_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~35\);

-- Location: FF_X43_Y8_N15
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17));

-- Location: LCCOMB_X43_Y8_N16
\SHIP_OFFSET_GEN|U2|U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~36_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~35\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18) & (\SHIP_OFFSET_GEN|U2|U0|Add0~35\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~37\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~35\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~36_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~37\);

-- Location: FF_X43_Y8_N17
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18));

-- Location: LCCOMB_X43_Y8_N18
\SHIP_OFFSET_GEN|U2|U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~38_combout\ = \SHIP_OFFSET_GEN|U2|U0|Add0~37\ $ (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(19),
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~37\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~38_combout\);

-- Location: FF_X43_Y8_N19
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(19));

-- Location: LCCOMB_X43_Y8_N28
\SHIP_OFFSET_GEN|U2|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(19) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17) & !\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(16),
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(19),
	datac => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(17),
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(18),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y9_N12
\SHIP_OFFSET_GEN|U2|U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~0_combout\ = \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0) $ (VCC)
-- \SHIP_OFFSET_GEN|U2|U0|Add0~1\ = CARRY(\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0),
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~0_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~1\);

-- Location: FF_X43_Y9_N13
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0));

-- Location: LCCOMB_X43_Y9_N14
\SHIP_OFFSET_GEN|U2|U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1) & (\SHIP_OFFSET_GEN|U2|U0|Add0~1\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~1\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~3\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1) & !\SHIP_OFFSET_GEN|U2|U0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~1\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~2_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~3\);

-- Location: FF_X43_Y9_N15
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1));

-- Location: LCCOMB_X43_Y9_N16
\SHIP_OFFSET_GEN|U2|U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~4_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~3\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2) & (\SHIP_OFFSET_GEN|U2|U0|Add0~3\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~5\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~3\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~4_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~5\);

-- Location: FF_X43_Y9_N17
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2));

-- Location: LCCOMB_X43_Y9_N18
\SHIP_OFFSET_GEN|U2|U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~6_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3) & (\SHIP_OFFSET_GEN|U2|U0|Add0~5\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~5\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~7\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3) & !\SHIP_OFFSET_GEN|U2|U0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~5\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~6_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~7\);

-- Location: FF_X43_Y9_N19
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3));

-- Location: LCCOMB_X43_Y9_N20
\SHIP_OFFSET_GEN|U2|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~8_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~7\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4) & (\SHIP_OFFSET_GEN|U2|U0|Add0~7\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~9\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~7\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~8_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~9\);

-- Location: FF_X43_Y9_N21
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4));

-- Location: LCCOMB_X43_Y9_N22
\SHIP_OFFSET_GEN|U2|U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~10_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5) & (\SHIP_OFFSET_GEN|U2|U0|Add0~9\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~9\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~11\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5) & !\SHIP_OFFSET_GEN|U2|U0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~9\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~10_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~11\);

-- Location: FF_X43_Y9_N23
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5));

-- Location: LCCOMB_X43_Y9_N24
\SHIP_OFFSET_GEN|U2|U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~12_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~11\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6) & (\SHIP_OFFSET_GEN|U2|U0|Add0~11\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~13\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~11\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~12_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~13\);

-- Location: LCCOMB_X42_Y9_N14
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~12_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add0~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~0_combout\);

-- Location: FF_X42_Y9_N15
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6));

-- Location: LCCOMB_X43_Y9_N26
\SHIP_OFFSET_GEN|U2|U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~14_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7) & (\SHIP_OFFSET_GEN|U2|U0|Add0~13\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~13\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~15\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7) & !\SHIP_OFFSET_GEN|U2|U0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~13\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~14_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~15\);

-- Location: LCCOMB_X43_Y9_N2
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~14_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add0~14_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~1_combout\);

-- Location: FF_X43_Y9_N3
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7));

-- Location: LCCOMB_X43_Y9_N28
\SHIP_OFFSET_GEN|U2|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~16_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~15\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8) & (\SHIP_OFFSET_GEN|U2|U0|Add0~15\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~17\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~15\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~16_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~17\);

-- Location: LCCOMB_X42_Y9_N16
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~16_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add0~16_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~2_combout\);

-- Location: FF_X42_Y9_N17
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8));

-- Location: LCCOMB_X43_Y9_N30
\SHIP_OFFSET_GEN|U2|U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~18_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9) & (\SHIP_OFFSET_GEN|U2|U0|Add0~17\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~17\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~19\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9) & !\SHIP_OFFSET_GEN|U2|U0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~17\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~18_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~19\);

-- Location: FF_X43_Y9_N31
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9));

-- Location: LCCOMB_X43_Y8_N0
\SHIP_OFFSET_GEN|U2|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~20_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~19\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10) & (\SHIP_OFFSET_GEN|U2|U0|Add0~19\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~21\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~19\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~20_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~21\);

-- Location: LCCOMB_X43_Y9_N6
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~20_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add0~20_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~3_combout\);

-- Location: FF_X43_Y9_N7
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10));

-- Location: LCCOMB_X43_Y8_N2
\SHIP_OFFSET_GEN|U2|U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~22_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11) & (\SHIP_OFFSET_GEN|U2|U0|Add0~21\ & VCC)) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11) & (!\SHIP_OFFSET_GEN|U2|U0|Add0~21\))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~23\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11) & !\SHIP_OFFSET_GEN|U2|U0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~21\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~22_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~23\);

-- Location: LCCOMB_X43_Y8_N22
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~4_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~22_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add0~22_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~4_combout\);

-- Location: FF_X43_Y8_N23
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11));

-- Location: LCCOMB_X43_Y8_N4
\SHIP_OFFSET_GEN|U2|U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add0~24_combout\ = (\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12) & ((GND) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~23\))) # (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12) & (\SHIP_OFFSET_GEN|U2|U0|Add0~23\ $ (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add0~25\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12)) # (!\SHIP_OFFSET_GEN|U2|U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add0~23\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add0~24_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add0~25\);

-- Location: LCCOMB_X43_Y8_N24
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~5_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~24_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add0~24_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~5_combout\);

-- Location: FF_X43_Y8_N25
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12));

-- Location: LCCOMB_X43_Y8_N30
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~6_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add0~26_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add0~26_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~6_combout\);

-- Location: FF_X43_Y8_N31
\SHIP_OFFSET_GEN|U2|U0|update_clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13));

-- Location: LCCOMB_X43_Y8_N26
\SHIP_OFFSET_GEN|U2|U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~4_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14) & !\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(13),
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(15),
	datac => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(14),
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(12),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y9_N4
\SHIP_OFFSET_GEN|U2|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1) & !\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(0),
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(3),
	datac => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y9_N8
\SHIP_OFFSET_GEN|U2|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5) & !\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(6),
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(7),
	datac => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(5),
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(4),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y9_N0
\SHIP_OFFSET_GEN|U2|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~3_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11) & (!\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9) & !\SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(8),
	datab => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(11),
	datac => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(9),
	datad => \SHIP_OFFSET_GEN|U2|U0|update_clock_counter\(10),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y9_N10
\SHIP_OFFSET_GEN|U2|U0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal0~4_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Equal0~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Equal0~2_combout\ & \SHIP_OFFSET_GEN|U2|U0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal0~4_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Equal0~1_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~2_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~3_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y9_N18
\SHIP_OFFSET_GEN|U2|U0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal0~6_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\ & \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal0~5_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal0~6_combout\);

-- Location: FF_X42_Y9_N19
\SHIP_OFFSET_GEN|U2|U0|update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|update~q\);

-- Location: LCCOMB_X44_Y8_N22
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ & !\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\);

-- Location: LCCOMB_X44_Y8_N0
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ & (!\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0) & !\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~3_combout\);

-- Location: FF_X44_Y8_N1
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0));

-- Location: LCCOMB_X44_Y8_N10
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~4_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0) $ (!\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~4_combout\);

-- Location: FF_X44_Y8_N11
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1));

-- Location: LCCOMB_X44_Y8_N28
\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1) & !\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y8_N18
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2) $ (\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~2_combout\);

-- Location: FF_X44_Y8_N19
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2));

-- Location: LCCOMB_X44_Y8_N8
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(3) $ (((!\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2) & \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~1_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~1_combout\);

-- Location: FF_X44_Y8_N9
\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(3));

-- Location: LCCOMB_X44_Y8_N16
\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1)) # ((\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2)) # ((\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(3)) # (\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(1),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(2),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y8_N12
\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~2_combout\ = ((\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\) # (\SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\ $ (!\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|Equal0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~2_combout\);

-- Location: FF_X44_Y8_N13
\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\);

-- Location: FF_X44_Y9_N7
\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\);

-- Location: LCCOMB_X44_Y9_N16
\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\) # (!\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0_combout\);

-- Location: LCCOMB_X40_Y9_N28
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\) # ((\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\) # ((!\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\);

-- Location: LCCOMB_X40_Y9_N4
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0) & ((\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\) # (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0) & 
-- ((!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~3_combout\);

-- Location: FF_X40_Y9_N5
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0));

-- Location: LCCOMB_X40_Y9_N20
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & !\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\);

-- Location: LCCOMB_X40_Y9_N2
\SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ & !\SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\);

-- Location: LCCOMB_X40_Y9_N18
\SHIP_OFFSET_GEN|U2|U0|u0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector7~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1) & (((\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0) & \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1) & (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0) & ((\SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector7~0_combout\);

-- Location: FF_X40_Y9_N19
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1));

-- Location: LCCOMB_X40_Y9_N10
\SHIP_OFFSET_GEN|U2|U0|u0|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2) $ (((\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0)) # (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\);

-- Location: LCCOMB_X40_Y9_N26
\SHIP_OFFSET_GEN|U2|U0|u0|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2)))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\) # ((!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\ & \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|Add1~1_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~2_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~1_combout\);

-- Location: FF_X40_Y9_N27
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2));

-- Location: LCCOMB_X40_Y9_N22
\SHIP_OFFSET_GEN|U2|U0|u0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Add1~0_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3) $ (((\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2)) # ((\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0)) # (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Add1~0_combout\);

-- Location: LCCOMB_X40_Y9_N24
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3))))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\)) 
-- # (!\SHIP_OFFSET_GEN|U2|U0|u0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|Add1~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[0]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]~1_combout\);

-- Location: FF_X40_Y9_N25
\SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3));

-- Location: LCCOMB_X40_Y9_N12
\SHIP_OFFSET_GEN|U2|U0|u0|always2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2) & (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3) & (!\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0) & !\SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(3),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|idlecount\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\);

-- Location: LCCOMB_X44_Y9_N22
\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2)) # ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1_combout\);

-- Location: LCCOMB_X44_Y9_N20
\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\ & (!\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0_combout\) # (\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~1_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\);

-- Location: LCCOMB_X44_Y9_N28
\SHIP_OFFSET_GEN|U2|U0|u0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector3~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\) # ((\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector3~0_combout\);

-- Location: FF_X44_Y9_N29
\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\);

-- Location: LCCOMB_X44_Y9_N2
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\ & !\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\);

-- Location: LCCOMB_X44_Y9_N18
\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ = ((\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|clk_counter~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\);

-- Location: LCCOMB_X41_Y9_N18
\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|count\(0))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~2_combout\);

-- Location: FF_X41_Y9_N19
\SHIP_OFFSET_GEN|U2|U0|u0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0));

-- Location: LCCOMB_X41_Y9_N8
\SHIP_OFFSET_GEN|U2|U0|u0|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|count[1]~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|count\(1))))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) $ 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|count[1]~3_combout\);

-- Location: FF_X41_Y9_N9
\SHIP_OFFSET_GEN|U2|U0|u0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1));

-- Location: LCCOMB_X41_Y9_N30
\SHIP_OFFSET_GEN|U2|U0|u0|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Add2~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & !\SHIP_OFFSET_GEN|U2|U0|u0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Add2~0_combout\);

-- Location: LCCOMB_X41_Y9_N12
\SHIP_OFFSET_GEN|U2|U0|u0|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|count[2]~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|count\(2))))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|Add2~0_combout\ $ 
-- (\SHIP_OFFSET_GEN|U2|U0|u0|count\(2))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|Add2~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|count[0]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|count[2]~1_combout\);

-- Location: FF_X41_Y9_N13
\SHIP_OFFSET_GEN|U2|U0|u0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|count\(2));

-- Location: LCCOMB_X41_Y9_N26
\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) & (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & !\SHIP_OFFSET_GEN|U2|U0|u0|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|count\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\);

-- Location: LCCOMB_X44_Y9_N0
\SHIP_OFFSET_GEN|U2|U0|u0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector4~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & (!\SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\ & \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector4~0_combout\);

-- Location: FF_X44_Y9_N1
\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\);

-- Location: LCCOMB_X44_Y8_N2
\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Selector1~2_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~0_combout\);

-- Location: FF_X44_Y8_N3
\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\);

-- Location: LCCOMB_X42_Y9_N12
\SHIP_OFFSET_GEN|U2|U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Selector0~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0) & (\SHIP_OFFSET_GEN|U2|U0|update~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0) 
-- & ((!\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0),
	datab => \SHIP_OFFSET_GEN|U2|U0|update~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y9_N22
\SHIP_OFFSET_GEN|U2|U0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1) & (\SHIP_OFFSET_GEN|U2|U0|Selector0~0_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1) & 
-- (((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2)) # (\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Selector0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\);

-- Location: LCCOMB_X41_Y11_N4
\SHIP_OFFSET_GEN|U2|U0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|pc\(0) & (\SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\ $ (VCC))) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(0) & (\SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\ & VCC))
-- \SHIP_OFFSET_GEN|U2|U0|Add1~1\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|pc\(0) & \SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|pc\(0),
	datab => \SHIP_OFFSET_GEN|U2|U0|Selector0~1_combout\,
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~0_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add1~1\);

-- Location: LCCOMB_X40_Y11_N8
\SHIP_OFFSET_GEN|U2|U0|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\);

-- Location: LCCOMB_X42_Y11_N10
\SHIP_OFFSET_GEN|U2|U0|spi_program~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & 
-- \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\);

-- Location: LCCOMB_X42_Y11_N0
\SHIP_OFFSET_GEN|U2|U0|spi_program~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~8_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|spi_program~7_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~8_combout\);

-- Location: LCCOMB_X42_Y11_N14
\SHIP_OFFSET_GEN|U2|U0|spi_program~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~9_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (((!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|spi_program~8_combout\ $ ((!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~8_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~9_combout\);

-- Location: FF_X42_Y11_N15
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5));

-- Location: LCCOMB_X40_Y11_N16
\SHIP_OFFSET_GEN|U2|U0|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5)))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5),
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\);

-- Location: LCCOMB_X42_Y11_N30
\SHIP_OFFSET_GEN|U2|U0|spi_program~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~24_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~24_combout\);

-- Location: LCCOMB_X42_Y11_N26
\SHIP_OFFSET_GEN|U2|U0|spi_program~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~22_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~22_combout\);

-- Location: LCCOMB_X42_Y11_N12
\SHIP_OFFSET_GEN|U2|U0|spi_program~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~21_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~21_combout\);

-- Location: LCCOMB_X42_Y11_N16
\SHIP_OFFSET_GEN|U2|U0|spi_program~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~23_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|spi_program~22_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|spi_program~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~22_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~21_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~23_combout\);

-- Location: LCCOMB_X41_Y11_N0
\SHIP_OFFSET_GEN|U2|U0|spi_program~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~25_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~23_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~24_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~23_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~25_combout\);

-- Location: FF_X41_Y11_N1
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1));

-- Location: LCCOMB_X41_Y11_N6
\SHIP_OFFSET_GEN|U2|U0|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|pc\(1) & (!\SHIP_OFFSET_GEN|U2|U0|Add1~1\)) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(1) & ((\SHIP_OFFSET_GEN|U2|U0|Add1~1\) # (GND)))
-- \SHIP_OFFSET_GEN|U2|U0|Add1~3\ = CARRY((!\SHIP_OFFSET_GEN|U2|U0|Add1~1\) # (!\SHIP_OFFSET_GEN|U2|U0|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|pc\(1),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U2|U0|Add1~1\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~2_combout\,
	cout => \SHIP_OFFSET_GEN|U2|U0|Add1~3\);

-- Location: LCCOMB_X41_Y11_N22
\SHIP_OFFSET_GEN|U2|U0|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1),
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~2_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\);

-- Location: FF_X41_Y11_N23
\SHIP_OFFSET_GEN|U2|U0|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|pc\(1));

-- Location: LCCOMB_X40_Y11_N12
\SHIP_OFFSET_GEN|U2|U0|spi_program~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\);

-- Location: LCCOMB_X40_Y11_N2
\SHIP_OFFSET_GEN|U2|U0|spi_program~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ $ ((!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\);

-- Location: LCCOMB_X40_Y11_N26
\SHIP_OFFSET_GEN|U2|U0|spi_program~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ $ (((!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\);

-- Location: LCCOMB_X40_Y11_N14
\SHIP_OFFSET_GEN|U2|U0|spi_program~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~37_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\ $ ((!\SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\ & 
-- (!\SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|spi_program~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~36_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~13_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~37_combout\);

-- Location: FF_X40_Y11_N15
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2));

-- Location: LCCOMB_X41_Y11_N20
\SHIP_OFFSET_GEN|U2|U0|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2)))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~4_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\);

-- Location: LCCOMB_X42_Y10_N0
\SHIP_OFFSET_GEN|U2|U0|spi_program~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\);

-- Location: LCCOMB_X42_Y11_N2
\SHIP_OFFSET_GEN|U2|U0|spi_program~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~17_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~17_combout\);

-- Location: LCCOMB_X41_Y11_N18
\SHIP_OFFSET_GEN|U2|U0|spi_program~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~19_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((!\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5)))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~10_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5),
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~19_combout\);

-- Location: LCCOMB_X41_Y11_N30
\SHIP_OFFSET_GEN|U2|U0|spi_program~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~15_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\);

-- Location: LCCOMB_X41_Y11_N24
\SHIP_OFFSET_GEN|U2|U0|spi_program~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~18_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~18_combout\);

-- Location: LCCOMB_X41_Y11_N16
\SHIP_OFFSET_GEN|U2|U0|spi_program~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~20_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~17_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|spi_program~19_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|spi_program~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~19_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~18_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~20_combout\);

-- Location: FF_X41_Y11_N17
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4));

-- Location: LCCOMB_X41_Y11_N28
\SHIP_OFFSET_GEN|U2|U0|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4),
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~8_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\);

-- Location: LCCOMB_X42_Y11_N20
\SHIP_OFFSET_GEN|U2|U0|spi_program~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~5_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~5_combout\);

-- Location: LCCOMB_X42_Y11_N18
\SHIP_OFFSET_GEN|U2|U0|spi_program~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~4_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~3_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~2_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~4_combout\);

-- Location: LCCOMB_X42_Y11_N8
\SHIP_OFFSET_GEN|U2|U0|spi_program~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~6_combout\ = (\SHIP_OFFSET_GEN|U2|U0|spi_program~4_combout\) # ((!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|spi_program~5_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~5_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~4_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~6_combout\);

-- Location: FF_X42_Y11_N9
\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1));

-- Location: LCCOMB_X42_Y9_N4
\SHIP_OFFSET_GEN|U2|U0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1) & !\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y11_N24
\SHIP_OFFSET_GEN|U2|U0|spi_program~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~27_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~27_combout\);

-- Location: LCCOMB_X40_Y11_N22
\SHIP_OFFSET_GEN|U2|U0|spi_program~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~26_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\)))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~26_combout\);

-- Location: LCCOMB_X40_Y11_N28
\SHIP_OFFSET_GEN|U2|U0|spi_program~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~28_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|spi_program~26_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|spi_program~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~27_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|spi_program~26_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~28_combout\);

-- Location: FF_X40_Y11_N29
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3));

-- Location: LCCOMB_X41_Y11_N26
\SHIP_OFFSET_GEN|U2|U0|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3))) # (!\SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal1~1_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~6_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\);

-- Location: LCCOMB_X41_Y11_N2
\SHIP_OFFSET_GEN|U2|U0|spi_program~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~0_combout\);

-- Location: LCCOMB_X42_Y9_N20
\SHIP_OFFSET_GEN|U2|U0|spi_program~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ & \SHIP_OFFSET_GEN|U2|U0|spi_program~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|spi_program~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~1_combout\);

-- Location: FF_X42_Y9_N21
\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2));

-- Location: LCCOMB_X44_Y9_N30
\SHIP_OFFSET_GEN|U2|U0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & !\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y9_N10
\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & (\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\ & !\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3_combout\);

-- Location: LCCOMB_X44_Y9_N26
\SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\ & !\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Equal1~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~3_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\);

-- Location: FF_X44_Y9_N27
\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\);

-- Location: LCCOMB_X44_Y9_N4
\SHIP_OFFSET_GEN|U2|U0|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal1~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0) & (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & !\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal1~3_combout\);

-- Location: FF_X44_Y9_N5
\SHIP_OFFSET_GEN|U2|U0|u0|tx_request_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Equal1~3_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_request_r~q\);

-- Location: LCCOMB_X44_Y9_N6
\SHIP_OFFSET_GEN|U2|U0|u0|always2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\ & (\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|tx_request_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|tx_request_r~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\);

-- Location: LCCOMB_X41_Y9_N14
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]~feeder_combout\);

-- Location: FF_X41_Y9_N15
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[3]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(3));

-- Location: FF_X41_Y9_N29
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(0));

-- Location: LCCOMB_X41_Y9_N2
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]~feeder_combout\);

-- Location: FF_X41_Y9_N3
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[1]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(1));

-- Location: LCCOMB_X41_Y9_N28
\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & (\SHIP_OFFSET_GEN|U2|U0|u0|count\(0))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & ((\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) & ((\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(1)))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) & (\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(0),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\);

-- Location: LCCOMB_X41_Y9_N24
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]~feeder_combout\);

-- Location: FF_X41_Y9_N25
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[2]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(2));

-- Location: LCCOMB_X40_Y9_N16
\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(3)) # ((!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1))))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\ & 
-- (((\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(3),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~2_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3_combout\);

-- Location: FF_X41_Y9_N7
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(5));

-- Location: FF_X41_Y9_N5
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(4));

-- Location: LCCOMB_X41_Y9_N4
\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) & ((\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(5)) # ((\SHIP_OFFSET_GEN|U2|U0|u0|count\(1))))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(0) & (((\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(4) 
-- & !\SHIP_OFFSET_GEN|U2|U0|u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(5),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|count\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(4),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y11_N0
\SHIP_OFFSET_GEN|U2|U0|spi_program~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~34_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\ $ (\SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~16_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Add1~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Add1~14_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~15_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~34_combout\);

-- Location: LCCOMB_X40_Y11_N18
\SHIP_OFFSET_GEN|U2|U0|spi_program~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|spi_program~35_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\ & (\SHIP_OFFSET_GEN|U2|U0|spi_program~34_combout\ & !\SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Add1~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|spi_program~34_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|Add1~13_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|spi_program~35_combout\);

-- Location: FF_X40_Y11_N19
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(6));

-- Location: FF_X41_Y9_N1
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(6),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(6));

-- Location: FF_X41_Y11_N31
\SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|spi_program~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(7));

-- Location: LCCOMB_X41_Y9_N10
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(7),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]~feeder_combout\);

-- Location: FF_X41_Y9_N11
\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r[7]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(7));

-- Location: LCCOMB_X41_Y9_N0
\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(7))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(1)))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|u0|count\(1) & (\SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|count\(1),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(6),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|tx_data_r\(7),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1_combout\);

-- Location: LCCOMB_X41_Y9_N6
\SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|count\(2) & ((\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|count\(2) & (\SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|count\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~3_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Mux0~1_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0_combout\);

-- Location: LCCOMB_X41_Y9_N16
\SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1_combout\ = ((\SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|always2~1_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1_combout\);

-- Location: LCCOMB_X41_Y9_N20
\SHIP_OFFSET_GEN|U2|U0|u0|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\) # ((!\SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~1_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~2_combout\);

-- Location: FF_X41_Y9_N21
\SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|spi_sdi~q\);

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

-- Location: LCCOMB_X21_Y11_N20
\VGA_CONTROLL|h_count[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count[8]~feeder_combout\ = \VGA_CONTROLL|h_count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|h_count~0_combout\,
	combout => \VGA_CONTROLL|h_count[8]~feeder_combout\);

-- Location: FF_X21_Y11_N21
\VGA_CONTROLL|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(8));

-- Location: LCCOMB_X20_Y11_N8
\VGA_CONTROLL|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~0_combout\ = \VGA_CONTROLL|h_count\(0) $ (VCC)
-- \VGA_CONTROLL|Add0~1\ = CARRY(\VGA_CONTROLL|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(0),
	datad => VCC,
	combout => \VGA_CONTROLL|Add0~0_combout\,
	cout => \VGA_CONTROLL|Add0~1\);

-- Location: LCCOMB_X21_Y11_N4
\VGA_CONTROLL|h_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~5_combout\ = (\VGA_CONTROLL|Add0~0_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~0_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~5_combout\);

-- Location: FF_X21_Y11_N5
\VGA_CONTROLL|h_count[0]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(0));

-- Location: LCCOMB_X20_Y11_N10
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

-- Location: LCCOMB_X20_Y11_N4
\VGA_CONTROLL|h_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~3_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~2_combout\,
	combout => \VGA_CONTROLL|h_count~3_combout\);

-- Location: FF_X20_Y11_N5
\VGA_CONTROLL|h_count[1]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(1));

-- Location: LCCOMB_X20_Y11_N12
\VGA_CONTROLL|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~4_combout\ = (\VGA_CONTROLL|h_count\(2) & (\VGA_CONTROLL|Add0~3\ $ (GND))) # (!\VGA_CONTROLL|h_count\(2) & (!\VGA_CONTROLL|Add0~3\ & VCC))
-- \VGA_CONTROLL|Add0~5\ = CARRY((\VGA_CONTROLL|h_count\(2) & !\VGA_CONTROLL|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(2),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~3\,
	combout => \VGA_CONTROLL|Add0~4_combout\,
	cout => \VGA_CONTROLL|Add0~5\);

-- Location: LCCOMB_X20_Y11_N30
\VGA_CONTROLL|h_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~4_combout\ = (\VGA_CONTROLL|Add0~4_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~4_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~4_combout\);

-- Location: FF_X20_Y11_N31
\VGA_CONTROLL|h_count[2]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(2));

-- Location: LCCOMB_X20_Y11_N14
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

-- Location: LCCOMB_X20_Y11_N0
\VGA_CONTROLL|h_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~8_combout\ = (\VGA_CONTROLL|Add0~6_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add0~6_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~8_combout\);

-- Location: FF_X20_Y11_N1
\VGA_CONTROLL|h_count[3]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(3));

-- Location: LCCOMB_X20_Y11_N16
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

-- Location: LCCOMB_X21_Y11_N2
\VGA_CONTROLL|h_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~6_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|Add0~8_combout\,
	combout => \VGA_CONTROLL|h_count~6_combout\);

-- Location: FF_X21_Y11_N3
\VGA_CONTROLL|h_count[4]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(4));

-- Location: LCCOMB_X20_Y11_N18
\VGA_CONTROLL|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~10_combout\ = (\VGA_CONTROLL|h_count\(5) & (!\VGA_CONTROLL|Add0~9\)) # (!\VGA_CONTROLL|h_count\(5) & ((\VGA_CONTROLL|Add0~9\) # (GND)))
-- \VGA_CONTROLL|Add0~11\ = CARRY((!\VGA_CONTROLL|Add0~9\) # (!\VGA_CONTROLL|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|h_count\(5),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~9\,
	combout => \VGA_CONTROLL|Add0~10_combout\,
	cout => \VGA_CONTROLL|Add0~11\);

-- Location: LCCOMB_X21_Y11_N10
\VGA_CONTROLL|h_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~7_combout\ = (\VGA_CONTROLL|Add0~10_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|Add0~10_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~7_combout\);

-- Location: FF_X21_Y11_N11
\VGA_CONTROLL|h_count[5]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(5));

-- Location: LCCOMB_X20_Y11_N20
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

-- Location: LCCOMB_X21_Y11_N8
\VGA_CONTROLL|h_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~9_combout\ = (\VGA_CONTROLL|Add0~12_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|Add0~12_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~9_combout\);

-- Location: FF_X21_Y11_N9
\VGA_CONTROLL|h_count[6]\ : dffeas
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
	q => \VGA_CONTROLL|h_count\(6));

-- Location: LCCOMB_X20_Y11_N22
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

-- Location: LCCOMB_X21_Y11_N26
\VGA_CONTROLL|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~1_combout\ = (\VGA_CONTROLL|Add0~14_combout\ & \VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|Add0~14_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|h_count~1_combout\);

-- Location: FF_X21_Y11_N27
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

-- Location: LCCOMB_X20_Y11_N24
\VGA_CONTROLL|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~16_combout\ = (\VGA_CONTROLL|h_count\(8) & (\VGA_CONTROLL|Add0~15\ $ (GND))) # (!\VGA_CONTROLL|h_count\(8) & (!\VGA_CONTROLL|Add0~15\ & VCC))
-- \VGA_CONTROLL|Add0~17\ = CARRY((\VGA_CONTROLL|h_count\(8) & !\VGA_CONTROLL|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(8),
	datad => VCC,
	cin => \VGA_CONTROLL|Add0~15\,
	combout => \VGA_CONTROLL|Add0~16_combout\,
	cout => \VGA_CONTROLL|Add0~17\);

-- Location: LCCOMB_X20_Y11_N26
\VGA_CONTROLL|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add0~18_combout\ = \VGA_CONTROLL|Add0~17\ $ (\VGA_CONTROLL|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count\(9),
	cin => \VGA_CONTROLL|Add0~17\,
	combout => \VGA_CONTROLL|Add0~18_combout\);

-- Location: LCCOMB_X21_Y11_N24
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

-- Location: LCCOMB_X21_Y11_N18
\VGA_CONTROLL|h_count[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count[9]~feeder_combout\ = \VGA_CONTROLL|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count~2_combout\,
	combout => \VGA_CONTROLL|h_count[9]~feeder_combout\);

-- Location: FF_X21_Y11_N19
\VGA_CONTROLL|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|h_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|h_count\(9));

-- Location: LCCOMB_X20_Y11_N2
\VGA_CONTROLL|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~0_combout\ = (((!\VGA_CONTROLL|h_count\(3)) # (!\VGA_CONTROLL|h_count\(2))) # (!\VGA_CONTROLL|h_count\(1))) # (!\VGA_CONTROLL|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(4),
	datab => \VGA_CONTROLL|h_count\(1),
	datac => \VGA_CONTROLL|h_count\(2),
	datad => \VGA_CONTROLL|h_count\(3),
	combout => \VGA_CONTROLL|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\VGA_CONTROLL|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~1_combout\ = (\VGA_CONTROLL|h_count\(7)) # ((\VGA_CONTROLL|h_count\(6)) # ((\VGA_CONTROLL|h_count\(0) & !\VGA_CONTROLL|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(0),
	datab => \VGA_CONTROLL|h_count\(7),
	datac => \VGA_CONTROLL|h_count\(6),
	datad => \VGA_CONTROLL|LessThan0~0_combout\,
	combout => \VGA_CONTROLL|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y11_N6
\VGA_CONTROLL|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan0~2_combout\ = (((!\VGA_CONTROLL|h_count\(5) & !\VGA_CONTROLL|LessThan0~1_combout\)) # (!\VGA_CONTROLL|h_count\(9))) # (!\VGA_CONTROLL|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count\(8),
	datab => \VGA_CONTROLL|h_count\(9),
	datac => \VGA_CONTROLL|h_count\(5),
	datad => \VGA_CONTROLL|LessThan0~1_combout\,
	combout => \VGA_CONTROLL|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y11_N30
\VGA_CONTROLL|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|h_count~0_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~16_combout\,
	combout => \VGA_CONTROLL|h_count~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\VGA_CONTROLL|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~0_combout\ = ((\VGA_CONTROLL|Add0~8_combout\ & (\VGA_CONTROLL|Add0~10_combout\ & \VGA_CONTROLL|Add0~12_combout\)) # (!\VGA_CONTROLL|Add0~8_combout\ & (!\VGA_CONTROLL|Add0~10_combout\ & !\VGA_CONTROLL|Add0~12_combout\))) # 
-- (!\VGA_CONTROLL|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~8_combout\,
	datab => \VGA_CONTROLL|Add0~10_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~12_combout\,
	combout => \VGA_CONTROLL|process_0~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\VGA_CONTROLL|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~1_combout\ = (\VGA_CONTROLL|h_count~0_combout\) # ((\VGA_CONTROLL|process_0~0_combout\) # ((!\VGA_CONTROLL|h_count~2_combout\) # (!\VGA_CONTROLL|h_count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|h_count~0_combout\,
	datab => \VGA_CONTROLL|process_0~0_combout\,
	datac => \VGA_CONTROLL|h_count~1_combout\,
	datad => \VGA_CONTROLL|h_count~2_combout\,
	combout => \VGA_CONTROLL|process_0~1_combout\);

-- Location: FF_X21_Y11_N17
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

-- Location: FF_X20_Y10_N3
\VGA_CONTROLL|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(2));

-- Location: LCCOMB_X20_Y10_N10
\VGA_CONTROLL|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~1_combout\ = \VGA_CONTROLL|v_count\(0) $ (VCC)
-- \VGA_CONTROLL|Add1~2\ = CARRY(\VGA_CONTROLL|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(0),
	datad => VCC,
	combout => \VGA_CONTROLL|Add1~1_combout\,
	cout => \VGA_CONTROLL|Add1~2\);

-- Location: LCCOMB_X20_Y10_N14
\VGA_CONTROLL|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~5_combout\ = (\VGA_CONTROLL|v_count\(2) & (\VGA_CONTROLL|Add1~4\ $ (GND))) # (!\VGA_CONTROLL|v_count\(2) & (!\VGA_CONTROLL|Add1~4\ & VCC))
-- \VGA_CONTROLL|Add1~6\ = CARRY((\VGA_CONTROLL|v_count\(2) & !\VGA_CONTROLL|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(2),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~4\,
	combout => \VGA_CONTROLL|Add1~5_combout\,
	cout => \VGA_CONTROLL|Add1~6\);

-- Location: LCCOMB_X20_Y10_N16
\VGA_CONTROLL|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~7_combout\ = (\VGA_CONTROLL|v_count\(3) & (!\VGA_CONTROLL|Add1~6\)) # (!\VGA_CONTROLL|v_count\(3) & ((\VGA_CONTROLL|Add1~6\) # (GND)))
-- \VGA_CONTROLL|Add1~8\ = CARRY((!\VGA_CONTROLL|Add1~6\) # (!\VGA_CONTROLL|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(3),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~6\,
	combout => \VGA_CONTROLL|Add1~7_combout\,
	cout => \VGA_CONTROLL|Add1~8\);

-- Location: LCCOMB_X20_Y10_N4
\VGA_CONTROLL|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~25_combout\ = (\VGA_CONTROLL|Add1~7_combout\ & ((\VGA_CONTROLL|Add1~0_combout\) # ((\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|v_count\(3))))) # (!\VGA_CONTROLL|Add1~7_combout\ & (\VGA_CONTROLL|LessThan0~2_combout\ & 
-- (\VGA_CONTROLL|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~7_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(3),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~25_combout\);

-- Location: FF_X20_Y10_N5
\VGA_CONTROLL|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(3));

-- Location: LCCOMB_X20_Y10_N18
\VGA_CONTROLL|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~9_combout\ = (\VGA_CONTROLL|v_count\(4) & (\VGA_CONTROLL|Add1~8\ $ (GND))) # (!\VGA_CONTROLL|v_count\(4) & (!\VGA_CONTROLL|Add1~8\ & VCC))
-- \VGA_CONTROLL|Add1~10\ = CARRY((\VGA_CONTROLL|v_count\(4) & !\VGA_CONTROLL|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(4),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~8\,
	combout => \VGA_CONTROLL|Add1~9_combout\,
	cout => \VGA_CONTROLL|Add1~10\);

-- Location: LCCOMB_X21_Y10_N18
\VGA_CONTROLL|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~23_combout\ = (\VGA_CONTROLL|v_count\(4) & ((\VGA_CONTROLL|LessThan0~2_combout\) # ((\VGA_CONTROLL|Add1~0_combout\ & \VGA_CONTROLL|Add1~9_combout\)))) # (!\VGA_CONTROLL|v_count\(4) & (\VGA_CONTROLL|Add1~0_combout\ & 
-- (\VGA_CONTROLL|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(4),
	datab => \VGA_CONTROLL|Add1~0_combout\,
	datac => \VGA_CONTROLL|Add1~9_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|Add1~23_combout\);

-- Location: LCCOMB_X21_Y10_N6
\VGA_CONTROLL|v_count[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[4]~feeder_combout\ = \VGA_CONTROLL|Add1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~23_combout\,
	combout => \VGA_CONTROLL|v_count[4]~feeder_combout\);

-- Location: FF_X21_Y10_N7
\VGA_CONTROLL|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(4));

-- Location: LCCOMB_X20_Y10_N20
\VGA_CONTROLL|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~11_combout\ = (\VGA_CONTROLL|v_count\(5) & (!\VGA_CONTROLL|Add1~10\)) # (!\VGA_CONTROLL|v_count\(5) & ((\VGA_CONTROLL|Add1~10\) # (GND)))
-- \VGA_CONTROLL|Add1~12\ = CARRY((!\VGA_CONTROLL|Add1~10\) # (!\VGA_CONTROLL|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(5),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~10\,
	combout => \VGA_CONTROLL|Add1~11_combout\,
	cout => \VGA_CONTROLL|Add1~12\);

-- Location: LCCOMB_X21_Y10_N8
\VGA_CONTROLL|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~26_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & ((\VGA_CONTROLL|v_count\(5)) # ((\VGA_CONTROLL|Add1~11_combout\ & \VGA_CONTROLL|Add1~0_combout\)))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|Add1~11_combout\ & 
-- ((\VGA_CONTROLL|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan0~2_combout\,
	datab => \VGA_CONTROLL|Add1~11_combout\,
	datac => \VGA_CONTROLL|v_count\(5),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~26_combout\);

-- Location: LCCOMB_X21_Y10_N20
\VGA_CONTROLL|v_count[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[5]~feeder_combout\ = \VGA_CONTROLL|Add1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~26_combout\,
	combout => \VGA_CONTROLL|v_count[5]~feeder_combout\);

-- Location: FF_X21_Y10_N21
\VGA_CONTROLL|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(5));

-- Location: LCCOMB_X20_Y10_N22
\VGA_CONTROLL|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~13_combout\ = (\VGA_CONTROLL|v_count\(6) & (\VGA_CONTROLL|Add1~12\ $ (GND))) # (!\VGA_CONTROLL|v_count\(6) & (!\VGA_CONTROLL|Add1~12\ & VCC))
-- \VGA_CONTROLL|Add1~14\ = CARRY((\VGA_CONTROLL|v_count\(6) & !\VGA_CONTROLL|Add1~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|v_count\(6),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~12\,
	combout => \VGA_CONTROLL|Add1~13_combout\,
	cout => \VGA_CONTROLL|Add1~14\);

-- Location: LCCOMB_X21_Y10_N2
\VGA_CONTROLL|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~27_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & ((\VGA_CONTROLL|v_count\(6)) # ((\VGA_CONTROLL|Add1~13_combout\ & \VGA_CONTROLL|Add1~0_combout\)))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|Add1~13_combout\ & 
-- \VGA_CONTROLL|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan0~2_combout\,
	datab => \VGA_CONTROLL|v_count\(6),
	datac => \VGA_CONTROLL|Add1~13_combout\,
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~27_combout\);

-- Location: LCCOMB_X21_Y10_N28
\VGA_CONTROLL|v_count[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[6]~feeder_combout\ = \VGA_CONTROLL|Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|Add1~27_combout\,
	combout => \VGA_CONTROLL|v_count[6]~feeder_combout\);

-- Location: FF_X21_Y10_N29
\VGA_CONTROLL|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(6));

-- Location: LCCOMB_X21_Y10_N10
\VGA_CONTROLL|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan1~1_combout\ = (!\VGA_CONTROLL|v_count\(5) & (!\VGA_CONTROLL|v_count\(6) & !\VGA_CONTROLL|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(5),
	datab => \VGA_CONTROLL|v_count\(6),
	datad => \VGA_CONTROLL|v_count\(4),
	combout => \VGA_CONTROLL|LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y10_N24
\VGA_CONTROLL|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~15_combout\ = (\VGA_CONTROLL|v_count\(7) & (!\VGA_CONTROLL|Add1~14\)) # (!\VGA_CONTROLL|v_count\(7) & ((\VGA_CONTROLL|Add1~14\) # (GND)))
-- \VGA_CONTROLL|Add1~16\ = CARRY((!\VGA_CONTROLL|Add1~14\) # (!\VGA_CONTROLL|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(7),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~14\,
	combout => \VGA_CONTROLL|Add1~15_combout\,
	cout => \VGA_CONTROLL|Add1~16\);

-- Location: LCCOMB_X21_Y10_N16
\VGA_CONTROLL|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~28_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & ((\VGA_CONTROLL|v_count\(7)) # ((\VGA_CONTROLL|Add1~15_combout\ & \VGA_CONTROLL|Add1~0_combout\)))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|Add1~15_combout\ & 
-- ((\VGA_CONTROLL|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan0~2_combout\,
	datab => \VGA_CONTROLL|Add1~15_combout\,
	datac => \VGA_CONTROLL|v_count\(7),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~28_combout\);

-- Location: LCCOMB_X21_Y10_N30
\VGA_CONTROLL|v_count[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[7]~feeder_combout\ = \VGA_CONTROLL|Add1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|Add1~28_combout\,
	combout => \VGA_CONTROLL|v_count[7]~feeder_combout\);

-- Location: FF_X21_Y10_N31
\VGA_CONTROLL|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(7));

-- Location: LCCOMB_X20_Y10_N26
\VGA_CONTROLL|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~17_combout\ = (\VGA_CONTROLL|v_count\(8) & (\VGA_CONTROLL|Add1~16\ $ (GND))) # (!\VGA_CONTROLL|v_count\(8) & (!\VGA_CONTROLL|Add1~16\ & VCC))
-- \VGA_CONTROLL|Add1~18\ = CARRY((\VGA_CONTROLL|v_count\(8) & !\VGA_CONTROLL|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(8),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~16\,
	combout => \VGA_CONTROLL|Add1~17_combout\,
	cout => \VGA_CONTROLL|Add1~18\);

-- Location: LCCOMB_X21_Y10_N26
\VGA_CONTROLL|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~29_combout\ = (\VGA_CONTROLL|Add1~17_combout\ & ((\VGA_CONTROLL|Add1~0_combout\) # ((\VGA_CONTROLL|v_count\(8) & \VGA_CONTROLL|LessThan0~2_combout\)))) # (!\VGA_CONTROLL|Add1~17_combout\ & (((\VGA_CONTROLL|v_count\(8) & 
-- \VGA_CONTROLL|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~17_combout\,
	datab => \VGA_CONTROLL|Add1~0_combout\,
	datac => \VGA_CONTROLL|v_count\(8),
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|Add1~29_combout\);

-- Location: LCCOMB_X21_Y10_N4
\VGA_CONTROLL|v_count[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|v_count[8]~feeder_combout\ = \VGA_CONTROLL|Add1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~29_combout\,
	combout => \VGA_CONTROLL|v_count[8]~feeder_combout\);

-- Location: FF_X21_Y10_N5
\VGA_CONTROLL|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|v_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(8));

-- Location: LCCOMB_X20_Y10_N28
\VGA_CONTROLL|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~19_combout\ = \VGA_CONTROLL|Add1~18\ $ (\VGA_CONTROLL|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|v_count\(9),
	cin => \VGA_CONTROLL|Add1~18\,
	combout => \VGA_CONTROLL|Add1~19_combout\);

-- Location: LCCOMB_X21_Y10_N22
\VGA_CONTROLL|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~21_combout\ = (\VGA_CONTROLL|LessThan0~2_combout\ & ((\VGA_CONTROLL|v_count\(9)) # ((\VGA_CONTROLL|Add1~0_combout\ & \VGA_CONTROLL|Add1~19_combout\)))) # (!\VGA_CONTROLL|LessThan0~2_combout\ & (\VGA_CONTROLL|Add1~0_combout\ & 
-- ((\VGA_CONTROLL|Add1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan0~2_combout\,
	datab => \VGA_CONTROLL|Add1~0_combout\,
	datac => \VGA_CONTROLL|v_count\(9),
	datad => \VGA_CONTROLL|Add1~19_combout\,
	combout => \VGA_CONTROLL|Add1~21_combout\);

-- Location: FF_X21_Y10_N23
\VGA_CONTROLL|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|Add1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(9));

-- Location: LCCOMB_X20_Y10_N0
\VGA_CONTROLL|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan1~0_combout\ = (!\VGA_CONTROLL|v_count\(8) & (!\VGA_CONTROLL|v_count\(7) & ((!\VGA_CONTROLL|v_count\(2)) # (!\VGA_CONTROLL|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(8),
	datab => \VGA_CONTROLL|v_count\(3),
	datac => \VGA_CONTROLL|v_count\(7),
	datad => \VGA_CONTROLL|v_count\(2),
	combout => \VGA_CONTROLL|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\VGA_CONTROLL|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~0_combout\ = (!\VGA_CONTROLL|LessThan0~2_combout\ & (((\VGA_CONTROLL|LessThan1~1_combout\ & \VGA_CONTROLL|LessThan1~0_combout\)) # (!\VGA_CONTROLL|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|LessThan1~1_combout\,
	datab => \VGA_CONTROLL|v_count\(9),
	datac => \VGA_CONTROLL|LessThan1~0_combout\,
	datad => \VGA_CONTROLL|LessThan0~2_combout\,
	combout => \VGA_CONTROLL|Add1~0_combout\);

-- Location: LCCOMB_X20_Y10_N8
\VGA_CONTROLL|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~30_combout\ = (\VGA_CONTROLL|Add1~1_combout\ & ((\VGA_CONTROLL|Add1~0_combout\) # ((\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|v_count\(0))))) # (!\VGA_CONTROLL|Add1~1_combout\ & (\VGA_CONTROLL|LessThan0~2_combout\ & 
-- (\VGA_CONTROLL|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~1_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(0),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~30_combout\);

-- Location: FF_X20_Y10_N9
\VGA_CONTROLL|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(0));

-- Location: LCCOMB_X20_Y10_N12
\VGA_CONTROLL|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~3_combout\ = (\VGA_CONTROLL|v_count\(1) & (!\VGA_CONTROLL|Add1~2\)) # (!\VGA_CONTROLL|v_count\(1) & ((\VGA_CONTROLL|Add1~2\) # (GND)))
-- \VGA_CONTROLL|Add1~4\ = CARRY((!\VGA_CONTROLL|Add1~2\) # (!\VGA_CONTROLL|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|v_count\(1),
	datad => VCC,
	cin => \VGA_CONTROLL|Add1~2\,
	combout => \VGA_CONTROLL|Add1~3_combout\,
	cout => \VGA_CONTROLL|Add1~4\);

-- Location: LCCOMB_X20_Y10_N30
\VGA_CONTROLL|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~24_combout\ = (\VGA_CONTROLL|Add1~3_combout\ & ((\VGA_CONTROLL|Add1~0_combout\) # ((\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|v_count\(1))))) # (!\VGA_CONTROLL|Add1~3_combout\ & (\VGA_CONTROLL|LessThan0~2_combout\ & 
-- (\VGA_CONTROLL|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~3_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(1),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~24_combout\);

-- Location: FF_X20_Y10_N31
\VGA_CONTROLL|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|v_count\(1));

-- Location: LCCOMB_X20_Y10_N2
\VGA_CONTROLL|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|Add1~22_combout\ = (\VGA_CONTROLL|Add1~5_combout\ & ((\VGA_CONTROLL|Add1~0_combout\) # ((\VGA_CONTROLL|LessThan0~2_combout\ & \VGA_CONTROLL|v_count\(2))))) # (!\VGA_CONTROLL|Add1~5_combout\ & (\VGA_CONTROLL|LessThan0~2_combout\ & 
-- (\VGA_CONTROLL|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~5_combout\,
	datab => \VGA_CONTROLL|LessThan0~2_combout\,
	datac => \VGA_CONTROLL|v_count\(2),
	datad => \VGA_CONTROLL|Add1~0_combout\,
	combout => \VGA_CONTROLL|Add1~22_combout\);

-- Location: LCCOMB_X20_Y10_N6
\VGA_CONTROLL|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~2_combout\ = (\VGA_CONTROLL|Add1~22_combout\) # (((\VGA_CONTROLL|Add1~23_combout\) # (!\VGA_CONTROLL|Add1~25_combout\)) # (!\VGA_CONTROLL|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~22_combout\,
	datab => \VGA_CONTROLL|Add1~24_combout\,
	datac => \VGA_CONTROLL|Add1~25_combout\,
	datad => \VGA_CONTROLL|Add1~23_combout\,
	combout => \VGA_CONTROLL|process_0~2_combout\);

-- Location: LCCOMB_X21_Y10_N12
\VGA_CONTROLL|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~3_combout\ = (\VGA_CONTROLL|Add1~29_combout\ & (\VGA_CONTROLL|Add1~27_combout\ & (\VGA_CONTROLL|Add1~26_combout\ & \VGA_CONTROLL|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add1~29_combout\,
	datab => \VGA_CONTROLL|Add1~27_combout\,
	datac => \VGA_CONTROLL|Add1~26_combout\,
	datad => \VGA_CONTROLL|Add1~28_combout\,
	combout => \VGA_CONTROLL|process_0~3_combout\);

-- Location: LCCOMB_X21_Y10_N0
\VGA_CONTROLL|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|process_0~4_combout\ = (\VGA_CONTROLL|process_0~2_combout\) # ((\VGA_CONTROLL|Add1~21_combout\) # (!\VGA_CONTROLL|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|process_0~2_combout\,
	datac => \VGA_CONTROLL|Add1~21_combout\,
	datad => \VGA_CONTROLL|process_0~3_combout\,
	combout => \VGA_CONTROLL|process_0~4_combout\);

-- Location: FF_X21_Y10_N1
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

-- Location: LCCOMB_X44_Y9_N8
\SHIP_OFFSET_GEN|U2|U0|u0|spi_csn_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn_next~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\ & ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2)) # ((\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|always2~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state.IDLE~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn_next~2_combout\);

-- Location: FF_X44_Y9_N9
\SHIP_OFFSET_GEN|U2|U0|u0|spi_csn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|spi_csn~q\);

-- Location: LCCOMB_X21_Y11_N6
\VGA_CONTROLL|column[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[9]~feeder_combout\ = \VGA_CONTROLL|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|h_count~2_combout\,
	combout => \VGA_CONTROLL|column[9]~feeder_combout\);

-- Location: LCCOMB_X21_Y11_N22
\VGA_CONTROLL|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan6~0_combout\ = (((!\VGA_CONTROLL|Add0~16_combout\ & !\VGA_CONTROLL|Add0~14_combout\)) # (!\VGA_CONTROLL|LessThan0~2_combout\)) # (!\VGA_CONTROLL|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|Add0~18_combout\,
	datab => \VGA_CONTROLL|Add0~16_combout\,
	datac => \VGA_CONTROLL|LessThan0~2_combout\,
	datad => \VGA_CONTROLL|Add0~14_combout\,
	combout => \VGA_CONTROLL|LessThan6~0_combout\);

-- Location: FF_X21_Y11_N7
\VGA_CONTROLL|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[9]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(9));

-- Location: LCCOMB_X21_Y10_N14
\VGA_CONTROLL|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|LessThan7~0_combout\ = (!\VGA_CONTROLL|process_0~3_combout\ & !\VGA_CONTROLL|Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|process_0~3_combout\,
	datac => \VGA_CONTROLL|Add1~21_combout\,
	combout => \VGA_CONTROLL|LessThan7~0_combout\);

-- Location: FF_X21_Y10_N11
\VGA_CONTROLL|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|Add1~26_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(5));

-- Location: LCCOMB_X19_Y10_N6
\VGA_CONTROLL|row[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[1]~feeder_combout\ = \VGA_CONTROLL|Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~24_combout\,
	combout => \VGA_CONTROLL|row[1]~feeder_combout\);

-- Location: FF_X19_Y10_N7
\VGA_CONTROLL|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[1]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(1));

-- Location: LCCOMB_X19_Y10_N0
\VGA_CONTROLL|row[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[0]~0_combout\ = !\VGA_CONTROLL|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~30_combout\,
	combout => \VGA_CONTROLL|row[0]~0_combout\);

-- Location: FF_X19_Y10_N1
\VGA_CONTROLL|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[0]~0_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(0));

-- Location: LCCOMB_X19_Y11_N20
\VGA_CONTROLL|row[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[2]~feeder_combout\ = \VGA_CONTROLL|Add1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|Add1~22_combout\,
	combout => \VGA_CONTROLL|row[2]~feeder_combout\);

-- Location: FF_X19_Y11_N21
\VGA_CONTROLL|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[2]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(2));

-- Location: FF_X22_Y11_N29
\VGA_CONTROLL|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|Add1~23_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(4));

-- Location: LCCOMB_X22_Y11_N2
\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0_combout\ = (!\VGA_CONTROLL|row\(4) & (((!\VGA_CONTROLL|row\(1) & \VGA_CONTROLL|row\(0))) # (!\VGA_CONTROLL|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(1),
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|row\(2),
	datad => \VGA_CONTROLL|row\(4),
	combout => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0_combout\);

-- Location: FF_X22_Y11_N1
\VGA_CONTROLL|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|Add1~25_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(3));

-- Location: LCCOMB_X22_Y11_N30
\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\ = (\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0_combout\ & !\VGA_CONTROLL|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~0_combout\,
	datad => \VGA_CONTROLL|row\(3),
	combout => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y11_N22
\VGA_CONTROLL|row[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[6]~feeder_combout\ = \VGA_CONTROLL|Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_CONTROLL|Add1~27_combout\,
	combout => \VGA_CONTROLL|row[6]~feeder_combout\);

-- Location: FF_X22_Y11_N23
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

-- Location: FF_X22_Y11_N21
\VGA_CONTROLL|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|Add1~29_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(8));

-- Location: LCCOMB_X22_Y11_N24
\VGA_CONTROLL|row[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|row[7]~feeder_combout\ = \VGA_CONTROLL|Add1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|Add1~28_combout\,
	combout => \VGA_CONTROLL|row[7]~feeder_combout\);

-- Location: FF_X22_Y11_N25
\VGA_CONTROLL|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|row[7]~feeder_combout\,
	ena => \VGA_CONTROLL|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|row\(7));

-- Location: LCCOMB_X22_Y11_N26
\TOP_LINE|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TOP_LINE|in_bounds~0_combout\ = (!\VGA_CONTROLL|row\(6) & (!\VGA_CONTROLL|row\(8) & !\VGA_CONTROLL|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(6),
	datab => \VGA_CONTROLL|row\(8),
	datad => \VGA_CONTROLL|row\(7),
	combout => \TOP_LINE|in_bounds~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\SCORE_1|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|in_bounds~0_combout\ = (!\VGA_CONTROLL|column\(9) & (!\VGA_CONTROLL|row\(5) & (!\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\ & \TOP_LINE|in_bounds~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(9),
	datab => \VGA_CONTROLL|row\(5),
	datac => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\,
	datad => \TOP_LINE|in_bounds~0_combout\,
	combout => \SCORE_1|in_bounds~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\SCORE_1|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|in_bounds~1_combout\ = (((!\VGA_CONTROLL|row\(1) & \VGA_CONTROLL|row\(0))) # (!\VGA_CONTROLL|row\(2))) # (!\VGA_CONTROLL|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(3),
	datab => \VGA_CONTROLL|row\(2),
	datac => \VGA_CONTROLL|row\(1),
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|in_bounds~1_combout\);

-- Location: FF_X21_Y12_N27
\VGA_CONTROLL|column[4]\ : dffeas
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
	q => \VGA_CONTROLL|column\(4));

-- Location: FF_X21_Y12_N3
\VGA_CONTROLL|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~8_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(3));

-- Location: FF_X21_Y12_N1
\VGA_CONTROLL|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~0_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(8));

-- Location: FF_X21_Y12_N5
\VGA_CONTROLL|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~7_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(5));

-- Location: LCCOMB_X21_Y12_N0
\SCORE_1|in_bounds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|in_bounds~2_combout\ = (\VGA_CONTROLL|column\(4) & (!\VGA_CONTROLL|column\(3) & (\VGA_CONTROLL|column\(8) & !\VGA_CONTROLL|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(4),
	datab => \VGA_CONTROLL|column\(3),
	datac => \VGA_CONTROLL|column\(8),
	datad => \VGA_CONTROLL|column\(5),
	combout => \SCORE_1|in_bounds~2_combout\);

-- Location: FF_X22_Y11_N15
\VGA_CONTROLL|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~1_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(7));

-- Location: FF_X21_Y12_N29
\VGA_CONTROLL|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~9_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(6));

-- Location: LCCOMB_X22_Y11_N28
\SCORE_1|in_bounds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|in_bounds~3_combout\ = (\VGA_CONTROLL|column\(7) & (!\VGA_CONTROLL|row\(4) & !\VGA_CONTROLL|column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|column\(7),
	datac => \VGA_CONTROLL|row\(4),
	datad => \VGA_CONTROLL|column\(6),
	combout => \SCORE_1|in_bounds~3_combout\);

-- Location: LCCOMB_X19_Y11_N2
\SCORE_1|in_bounds~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|in_bounds~4_combout\ = (\SCORE_1|in_bounds~0_combout\ & (\SCORE_1|in_bounds~1_combout\ & (\SCORE_1|in_bounds~2_combout\ & \SCORE_1|in_bounds~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|in_bounds~0_combout\,
	datab => \SCORE_1|in_bounds~1_combout\,
	datac => \SCORE_1|in_bounds~2_combout\,
	datad => \SCORE_1|in_bounds~3_combout\,
	combout => \SCORE_1|in_bounds~4_combout\);

-- Location: LCCOMB_X19_Y11_N30
\SCORE_1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Add1~1_combout\ = \VGA_CONTROLL|row\(2) $ (((\VGA_CONTROLL|row\(1)) # (!\VGA_CONTROLL|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|row\(1),
	datad => \VGA_CONTROLL|row\(2),
	combout => \SCORE_1|Add1~1_combout\);

-- Location: LCCOMB_X16_Y11_N16
\SCORE_1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Add1~0_combout\ = \VGA_CONTROLL|row\(0) $ (!\VGA_CONTROLL|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|row\(0),
	datad => \VGA_CONTROLL|row\(1),
	combout => \SCORE_1|Add1~0_combout\);

-- Location: FF_X20_Y11_N9
\VGA_CONTROLL|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~3_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(1));

-- Location: LCCOMB_X21_Y11_N14
\VGA_CONTROLL|column[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_CONTROLL|column[0]~0_combout\ = !\VGA_CONTROLL|h_count~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_CONTROLL|h_count~5_combout\,
	combout => \VGA_CONTROLL|column[0]~0_combout\);

-- Location: FF_X21_Y11_N15
\VGA_CONTROLL|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_CONTROLL|column[0]~0_combout\,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(0));

-- Location: FF_X19_Y11_N1
\VGA_CONTROLL|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_CONTROLL|h_count~4_combout\,
	sload => VCC,
	ena => \VGA_CONTROLL|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_CONTROLL|column\(2));

-- Location: LCCOMB_X17_Y11_N24
\SCORE_1|Mux99~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~4_combout\ = (\VGA_CONTROLL|column\(1) & (((!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(2))))) # (!\VGA_CONTROLL|column\(1) & (!\SCORE_1|Add1~0_combout\ & ((\VGA_CONTROLL|column\(0)) # (\VGA_CONTROLL|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~4_combout\);

-- Location: LCCOMB_X17_Y11_N0
\SCORE_1|Mux99~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~2_combout\ = (\VGA_CONTROLL|column\(1) & ((\SCORE_1|Add1~0_combout\) # ((!\VGA_CONTROLL|column\(2))))) # (!\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(0)))) # (!\VGA_CONTROLL|column\(2) & 
-- (!\SCORE_1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~2_combout\);

-- Location: LCCOMB_X17_Y11_N26
\SCORE_1|Mux99~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~1_combout\ = (\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(2)))) # (!\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(1) $ (((\VGA_CONTROLL|column\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~1_combout\);

-- Location: LCCOMB_X17_Y11_N22
\SCORE_1|Mux99~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~3_combout\ = (\SCORE_1|Add1~1_combout\ & (((!\VGA_CONTROLL|row\(0))))) # (!\SCORE_1|Add1~1_combout\ & ((\VGA_CONTROLL|row\(0) & (!\SCORE_1|Mux99~2_combout\)) # (!\VGA_CONTROLL|row\(0) & ((\SCORE_1|Mux99~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~1_combout\,
	datab => \SCORE_1|Mux99~2_combout\,
	datac => \SCORE_1|Mux99~1_combout\,
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|Mux99~3_combout\);

-- Location: LCCOMB_X17_Y11_N28
\SCORE_1|Mux99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~0_combout\ = (\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(1) & (!\VGA_CONTROLL|column\(0)))) # (!\SCORE_1|Add1~0_combout\ & ((\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2)))) # (!\VGA_CONTROLL|column\(1) & 
-- (!\VGA_CONTROLL|column\(0) & !\VGA_CONTROLL|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~0_combout\);

-- Location: LCCOMB_X17_Y11_N6
\SCORE_1|Mux99~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~5_combout\ = (\SCORE_1|Add1~1_combout\ & ((\SCORE_1|Mux99~3_combout\ & (\SCORE_1|Mux99~4_combout\)) # (!\SCORE_1|Mux99~3_combout\ & ((\SCORE_1|Mux99~0_combout\))))) # (!\SCORE_1|Add1~1_combout\ & (((\SCORE_1|Mux99~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~1_combout\,
	datab => \SCORE_1|Mux99~4_combout\,
	datac => \SCORE_1|Mux99~3_combout\,
	datad => \SCORE_1|Mux99~0_combout\,
	combout => \SCORE_1|Mux99~5_combout\);

-- Location: LCCOMB_X22_Y12_N20
\TOP_LINE|in_bounds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TOP_LINE|in_bounds~2_combout\ = (\VGA_CONTROLL|row\(5) & (((!\VGA_CONTROLL|column\(8) & !\VGA_CONTROLL|column\(7))) # (!\VGA_CONTROLL|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(8),
	datab => \VGA_CONTROLL|column\(7),
	datac => \VGA_CONTROLL|column\(9),
	datad => \VGA_CONTROLL|row\(5),
	combout => \TOP_LINE|in_bounds~2_combout\);

-- Location: LCCOMB_X19_Y11_N6
\TOP_LINE|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TOP_LINE|in_bounds~1_combout\ = (\VGA_CONTROLL|row\(2)) # ((!\VGA_CONTROLL|row\(0) & \VGA_CONTROLL|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|row\(1),
	datad => \VGA_CONTROLL|row\(2),
	combout => \TOP_LINE|in_bounds~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\TOP_LINE|in_bounds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TOP_LINE|in_bounds~3_combout\ = (\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\ & (\TOP_LINE|in_bounds~0_combout\ & (\TOP_LINE|in_bounds~2_combout\ & \TOP_LINE|in_bounds~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan2~1_combout\,
	datab => \TOP_LINE|in_bounds~0_combout\,
	datac => \TOP_LINE|in_bounds~2_combout\,
	datad => \TOP_LINE|in_bounds~1_combout\,
	combout => \TOP_LINE|in_bounds~3_combout\);

-- Location: LCCOMB_X13_Y11_N0
\curr_pixel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~0_combout\ = (\TOP_LINE|in_bounds~3_combout\) # ((\SCORE_1|in_bounds~4_combout\ & \SCORE_1|Mux99~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|in_bounds~4_combout\,
	datac => \SCORE_1|Mux99~5_combout\,
	datad => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\SCORE_1|Mux99~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~8_combout\ = (\VGA_CONTROLL|column\(1) & (((\SCORE_1|Add1~0_combout\) # (!\VGA_CONTROLL|column\(0))) # (!\VGA_CONTROLL|column\(2)))) # (!\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2) $ (!\VGA_CONTROLL|column\(0))) # 
-- (!\SCORE_1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~8_combout\);

-- Location: LCCOMB_X14_Y11_N2
\SCORE_1|Mux99~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~7_combout\ = (\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2) & ((!\VGA_CONTROLL|column\(0)))) # (!\VGA_CONTROLL|column\(2) & ((\SCORE_1|Add1~0_combout\) # (\VGA_CONTROLL|column\(0)))))) # (!\VGA_CONTROLL|column\(1) & 
-- (((\SCORE_1|Add1~0_combout\) # (!\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~7_combout\);

-- Location: LCCOMB_X14_Y11_N22
\SCORE_1|Mux98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux98~0_combout\ = (\VGA_CONTROLL|row\(0) & (\SCORE_1|Mux99~8_combout\ & ((!\SCORE_1|Add1~1_combout\)))) # (!\VGA_CONTROLL|row\(0) & (((\SCORE_1|Mux99~7_combout\) # (\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux99~8_combout\,
	datab => \SCORE_1|Mux99~7_combout\,
	datac => \VGA_CONTROLL|row\(0),
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux98~0_combout\);

-- Location: LCCOMB_X14_Y11_N0
\SCORE_1|Mux99~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~6_combout\ = (\VGA_CONTROLL|column\(2) & (!\VGA_CONTROLL|column\(0) & (\VGA_CONTROLL|column\(1) $ (!\SCORE_1|Add1~0_combout\)))) # (!\VGA_CONTROLL|column\(2) & (!\VGA_CONTROLL|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~6_combout\);

-- Location: LCCOMB_X14_Y11_N4
\SCORE_1|Mux99~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~9_combout\ = (\SCORE_1|Add1~0_combout\) # ((\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(2)))) # (!\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2)) # (!\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~9_combout\);

-- Location: LCCOMB_X14_Y11_N26
\SCORE_1|Mux98~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux98~1_combout\ = (\SCORE_1|Mux98~0_combout\ & (((\SCORE_1|Mux99~9_combout\) # (!\SCORE_1|Add1~1_combout\)))) # (!\SCORE_1|Mux98~0_combout\ & (\SCORE_1|Mux99~6_combout\ & ((\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux98~0_combout\,
	datab => \SCORE_1|Mux99~6_combout\,
	datac => \SCORE_1|Mux99~9_combout\,
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux98~1_combout\);

-- Location: LCCOMB_X13_Y11_N2
\curr_pixel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~1_combout\ = (\TOP_LINE|in_bounds~3_combout\) # ((\SCORE_1|in_bounds~4_combout\ & \SCORE_1|Mux98~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|in_bounds~4_combout\,
	datab => \SCORE_1|Mux98~1_combout\,
	datad => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~1_combout\);

-- Location: LCCOMB_X15_Y11_N28
\SCORE_1|pixel.red[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~0_combout\ = (\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|row\(1) $ (((!\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(1)))))) # (!\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(1)) # (\VGA_CONTROLL|row\(1) $ 
-- (\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(1),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|pixel.red[2]~0_combout\);

-- Location: LCCOMB_X19_Y11_N12
\SCORE_1|pixel.red[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~1_combout\ = (!\VGA_CONTROLL|row\(2) & ((\VGA_CONTROLL|row\(1)) # (!\VGA_CONTROLL|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|row\(1),
	datad => \VGA_CONTROLL|row\(2),
	combout => \SCORE_1|pixel.red[2]~1_combout\);

-- Location: LCCOMB_X15_Y11_N20
\SCORE_1|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux17~0_combout\ = (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|column\(2) & !\VGA_CONTROLL|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(2),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux17~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\SCORE_1|pixel.red[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~2_combout\ = (\VGA_CONTROLL|row\(1) $ (!\VGA_CONTROLL|row\(2))) # (!\VGA_CONTROLL|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|row\(1),
	datad => \VGA_CONTROLL|row\(2),
	combout => \SCORE_1|pixel.red[2]~2_combout\);

-- Location: LCCOMB_X15_Y11_N6
\SCORE_1|Mux99~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~10_combout\ = (!\VGA_CONTROLL|column\(1) & !\VGA_CONTROLL|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~10_combout\);

-- Location: LCCOMB_X15_Y11_N18
\SCORE_1|pixel.red[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~3_combout\ = (\SCORE_1|pixel.red[2]~2_combout\ & (!\SCORE_1|Mux17~0_combout\ & (!\SCORE_1|pixel.red[2]~1_combout\))) # (!\SCORE_1|pixel.red[2]~2_combout\ & ((\SCORE_1|pixel.red[2]~1_combout\ $ (!\SCORE_1|Mux99~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux17~0_combout\,
	datab => \SCORE_1|pixel.red[2]~2_combout\,
	datac => \SCORE_1|pixel.red[2]~1_combout\,
	datad => \SCORE_1|Mux99~10_combout\,
	combout => \SCORE_1|pixel.red[2]~3_combout\);

-- Location: LCCOMB_X14_Y11_N24
\SCORE_1|Mux99~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~11_combout\ = (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ $ (\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~11_combout\);

-- Location: LCCOMB_X15_Y11_N4
\SCORE_1|pixel.red[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~4_combout\ = (\SCORE_1|pixel.red[2]~3_combout\) # ((\SCORE_1|pixel.red[2]~1_combout\ & (\SCORE_1|pixel.red[2]~2_combout\ & !\SCORE_1|Mux99~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.red[2]~1_combout\,
	datab => \SCORE_1|pixel.red[2]~3_combout\,
	datac => \SCORE_1|pixel.red[2]~2_combout\,
	datad => \SCORE_1|Mux99~11_combout\,
	combout => \SCORE_1|pixel.red[2]~4_combout\);

-- Location: LCCOMB_X19_Y11_N24
\SCORE_1|pixel.blue[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[3]~0_combout\ = (!\VGA_CONTROLL|row\(0) & \VGA_CONTROLL|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(0),
	datad => \VGA_CONTROLL|row\(2),
	combout => \SCORE_1|pixel.blue[3]~0_combout\);

-- Location: LCCOMB_X15_Y11_N26
\SCORE_1|pixel.red[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.red[2]~5_combout\ = (\SCORE_1|in_bounds~4_combout\ & ((\SCORE_1|pixel.blue[3]~0_combout\ & (\SCORE_1|pixel.red[2]~0_combout\)) # (!\SCORE_1|pixel.blue[3]~0_combout\ & ((\SCORE_1|pixel.red[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|in_bounds~4_combout\,
	datab => \SCORE_1|pixel.red[2]~0_combout\,
	datac => \SCORE_1|pixel.red[2]~4_combout\,
	datad => \SCORE_1|pixel.blue[3]~0_combout\,
	combout => \SCORE_1|pixel.red[2]~5_combout\);

-- Location: LCCOMB_X15_Y11_N0
\curr_pixel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~2_combout\ = (\SCORE_1|pixel.red[2]~5_combout\) # (\TOP_LINE|in_bounds~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.red[2]~5_combout\,
	datac => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~2_combout\);

-- Location: LCCOMB_X16_Y11_N24
\SCORE_1|Mux99~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~14_combout\ = (\VGA_CONTROLL|column\(2) & (((!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(1))))) # (!\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(0) & !\VGA_CONTROLL|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~14_combout\);

-- Location: LCCOMB_X16_Y11_N18
\SCORE_1|Mux99~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~13_combout\ = (\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(2) $ (((\VGA_CONTROLL|column\(1)))))) # (!\SCORE_1|Add1~0_combout\ & ((\VGA_CONTROLL|column\(0) & ((\VGA_CONTROLL|column\(1)))) # (!\VGA_CONTROLL|column\(0) & 
-- (!\VGA_CONTROLL|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~13_combout\);

-- Location: LCCOMB_X16_Y11_N26
\SCORE_1|Mux96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux96~0_combout\ = (\VGA_CONTROLL|row\(0) & (\SCORE_1|Mux99~14_combout\ & (!\SCORE_1|Add1~1_combout\))) # (!\VGA_CONTROLL|row\(0) & (((\SCORE_1|Add1~1_combout\) # (!\SCORE_1|Mux99~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(0),
	datab => \SCORE_1|Mux99~14_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux99~13_combout\,
	combout => \SCORE_1|Mux96~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\SCORE_1|Mux99~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~15_combout\ = (\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1) & ((!\VGA_CONTROLL|column\(0)) # (!\SCORE_1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~15_combout\);

-- Location: LCCOMB_X19_Y11_N22
\SCORE_1|Mux99~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~12_combout\ = (\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(1)) # (\VGA_CONTROLL|row\(1) $ (!\VGA_CONTROLL|row\(0))))) # (!\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|row\(1) $ (!\VGA_CONTROLL|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(1),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|Mux99~12_combout\);

-- Location: LCCOMB_X16_Y11_N22
\SCORE_1|Mux96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux96~1_combout\ = (\SCORE_1|Mux96~0_combout\ & ((\SCORE_1|Mux99~15_combout\) # ((!\SCORE_1|Add1~1_combout\)))) # (!\SCORE_1|Mux96~0_combout\ & (((\SCORE_1|Add1~1_combout\ & \SCORE_1|Mux99~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux96~0_combout\,
	datab => \SCORE_1|Mux99~15_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux99~12_combout\,
	combout => \SCORE_1|Mux96~1_combout\);

-- Location: LCCOMB_X13_Y11_N8
\curr_pixel~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~3_combout\ = (\TOP_LINE|in_bounds~3_combout\) # ((\SCORE_1|in_bounds~4_combout\ & \SCORE_1|Mux96~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|in_bounds~4_combout\,
	datac => \SCORE_1|Mux96~1_combout\,
	datad => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~3_combout\);

-- Location: LCCOMB_X15_Y11_N22
\SCORE_1|pixel.blue[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[3]~1_combout\ = (\VGA_CONTROLL|row\(1) & (\VGA_CONTROLL|column\(2) & ((!\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(1))))) # (!\VGA_CONTROLL|row\(1) & (\VGA_CONTROLL|column\(2) $ ((!\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(1),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|pixel.blue[3]~1_combout\);

-- Location: LCCOMB_X15_Y11_N16
\SCORE_1|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux17~1_combout\ = (\VGA_CONTROLL|column\(1) & (!\VGA_CONTROLL|column\(2) & !\VGA_CONTROLL|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(2),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux17~1_combout\);

-- Location: LCCOMB_X15_Y11_N2
\SCORE_1|pixel.blue[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[3]~2_combout\ = (\SCORE_1|pixel.red[2]~1_combout\ & (((\SCORE_1|pixel.red[2]~2_combout\)))) # (!\SCORE_1|pixel.red[2]~1_combout\ & ((\SCORE_1|pixel.red[2]~2_combout\ & (\SCORE_1|Mux99~14_combout\)) # (!\SCORE_1|pixel.red[2]~2_combout\ 
-- & ((!\SCORE_1|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.red[2]~1_combout\,
	datab => \SCORE_1|Mux99~14_combout\,
	datac => \SCORE_1|pixel.red[2]~2_combout\,
	datad => \SCORE_1|Mux17~1_combout\,
	combout => \SCORE_1|pixel.blue[3]~2_combout\);

-- Location: LCCOMB_X15_Y11_N8
\SCORE_1|pixel.blue[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[3]~3_combout\ = (\SCORE_1|pixel.red[2]~1_combout\ & ((\SCORE_1|pixel.blue[3]~2_combout\ & ((\SCORE_1|Mux99~15_combout\))) # (!\SCORE_1|pixel.blue[3]~2_combout\ & (\SCORE_1|Mux17~0_combout\)))) # (!\SCORE_1|pixel.red[2]~1_combout\ & 
-- (((\SCORE_1|pixel.blue[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux17~0_combout\,
	datab => \SCORE_1|Mux99~15_combout\,
	datac => \SCORE_1|pixel.red[2]~1_combout\,
	datad => \SCORE_1|pixel.blue[3]~2_combout\,
	combout => \SCORE_1|pixel.blue[3]~3_combout\);

-- Location: LCCOMB_X15_Y11_N10
\SCORE_1|pixel.blue[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[3]~4_combout\ = (\SCORE_1|in_bounds~4_combout\ & ((\SCORE_1|pixel.blue[3]~0_combout\ & (\SCORE_1|pixel.blue[3]~1_combout\)) # (!\SCORE_1|pixel.blue[3]~0_combout\ & ((\SCORE_1|pixel.blue[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.blue[3]~1_combout\,
	datab => \SCORE_1|pixel.blue[3]~0_combout\,
	datac => \SCORE_1|pixel.blue[3]~3_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \SCORE_1|pixel.blue[3]~4_combout\);

-- Location: LCCOMB_X19_Y11_N8
\SCORE_1|pixel.green[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.green[0]~5_combout\ = (\VGA_CONTROLL|row\(1) & ((\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2)) # (\VGA_CONTROLL|column\(0)))) # (!\VGA_CONTROLL|column\(1) & ((!\VGA_CONTROLL|column\(0)))))) # (!\VGA_CONTROLL|row\(1) & 
-- (((\VGA_CONTROLL|column\(0))) # (!\VGA_CONTROLL|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(1),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|pixel.green[0]~5_combout\);

-- Location: LCCOMB_X19_Y11_N0
\SCORE_1|pixel.green[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.green[0]~6_combout\ = (\VGA_CONTROLL|column\(0) & ((\SCORE_1|pixel.green[0]~5_combout\ & ((!\VGA_CONTROLL|row\(0)))) # (!\SCORE_1|pixel.green[0]~5_combout\ & (!\VGA_CONTROLL|column\(2) & \VGA_CONTROLL|row\(0))))) # 
-- (!\VGA_CONTROLL|column\(0) & ((\SCORE_1|pixel.green[0]~5_combout\) # ((\VGA_CONTROLL|column\(2) & !\VGA_CONTROLL|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(0),
	datab => \SCORE_1|pixel.green[0]~5_combout\,
	datac => \VGA_CONTROLL|column\(2),
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|pixel.green[0]~6_combout\);

-- Location: LCCOMB_X19_Y11_N10
\SCORE_1|Mux103~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux103~2_combout\ = (\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(0)) # (\VGA_CONTROLL|column\(2) $ (!\VGA_CONTROLL|row\(0))))) # (!\VGA_CONTROLL|column\(1) & (((!\VGA_CONTROLL|column\(2) & \VGA_CONTROLL|row\(0))) # 
-- (!\VGA_CONTROLL|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux103~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\SCORE_1|Mux103~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux103~3_combout\ = (\VGA_CONTROLL|row\(0) & (\VGA_CONTROLL|column\(2) $ (((\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(1)))))) # (!\VGA_CONTROLL|row\(0) & (((!\VGA_CONTROLL|column\(2) & \VGA_CONTROLL|column\(1))) # 
-- (!\VGA_CONTROLL|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|row\(0),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux103~3_combout\);

-- Location: LCCOMB_X19_Y11_N26
\SCORE_1|Mux103~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux103~4_combout\ = (\VGA_CONTROLL|row\(1) & ((\SCORE_1|Mux103~3_combout\))) # (!\VGA_CONTROLL|row\(1) & (\SCORE_1|Mux103~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux103~2_combout\,
	datab => \SCORE_1|Mux103~3_combout\,
	datac => \VGA_CONTROLL|row\(1),
	combout => \SCORE_1|Mux103~4_combout\);

-- Location: LCCOMB_X19_Y11_N16
\SCORE_1|pixel.green[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.green[0]~4_combout\ = (\SCORE_1|in_bounds~4_combout\ & ((\SCORE_1|Add1~1_combout\ & (\SCORE_1|pixel.green[0]~6_combout\)) # (!\SCORE_1|Add1~1_combout\ & ((\SCORE_1|Mux103~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~1_combout\,
	datab => \SCORE_1|pixel.green[0]~6_combout\,
	datac => \SCORE_1|Mux103~4_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \SCORE_1|pixel.green[0]~4_combout\);

-- Location: LCCOMB_X15_Y11_N24
\curr_pixel~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~4_combout\ = (!\SCORE_1|pixel.blue[3]~4_combout\ & (!\SCORE_1|pixel.red[2]~5_combout\ & !\SCORE_1|pixel.green[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.blue[3]~4_combout\,
	datac => \SCORE_1|pixel.red[2]~5_combout\,
	datad => \SCORE_1|pixel.green[0]~4_combout\,
	combout => \curr_pixel~4_combout\);

-- Location: LCCOMB_X14_Y11_N10
\SCORE_1|Mux99~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~27_combout\ = (\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(1) & (\SCORE_1|Add1~0_combout\)) # (!\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(0)))))) # (!\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1) $ 
-- (((\SCORE_1|Add1~0_combout\) # (\VGA_CONTROLL|column\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~27_combout\);

-- Location: LCCOMB_X14_Y11_N28
\SCORE_1|Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux47~0_combout\ = (\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2) & ((\SCORE_1|Add1~0_combout\) # (!\VGA_CONTROLL|column\(0)))) # (!\VGA_CONTROLL|column\(2) & (!\SCORE_1|Add1~0_combout\)))) # (!\VGA_CONTROLL|column\(1) & 
-- (\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux47~0_combout\);

-- Location: LCCOMB_X14_Y11_N6
\SCORE_1|Mux107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux107~0_combout\ = (\VGA_CONTROLL|row\(0) & (((\SCORE_1|Mux47~0_combout\ & !\SCORE_1|Add1~1_combout\)))) # (!\VGA_CONTROLL|row\(0) & ((\SCORE_1|Mux99~27_combout\) # ((\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux99~27_combout\,
	datab => \SCORE_1|Mux47~0_combout\,
	datac => \VGA_CONTROLL|row\(0),
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux107~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\SCORE_1|Mux99~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~26_combout\ = (\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1))) # (!\VGA_CONTROLL|column\(2) & (((!\SCORE_1|Add1~0_combout\ & !\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~26_combout\);

-- Location: LCCOMB_X14_Y11_N8
\SCORE_1|Mux99~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~28_combout\ = (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ & !\VGA_CONTROLL|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~28_combout\);

-- Location: LCCOMB_X14_Y11_N30
\SCORE_1|Mux107~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux107~1_combout\ = (\SCORE_1|Mux107~0_combout\ & (((\SCORE_1|Mux99~28_combout\) # (!\SCORE_1|Add1~1_combout\)))) # (!\SCORE_1|Mux107~0_combout\ & (\SCORE_1|Mux99~26_combout\ & ((\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux107~0_combout\,
	datab => \SCORE_1|Mux99~26_combout\,
	datac => \SCORE_1|Mux99~28_combout\,
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux107~1_combout\);

-- Location: LCCOMB_X13_Y11_N6
\SCORE_1|pixel.blue[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|pixel.blue[0]~5_combout\ = (\SCORE_1|Mux107~1_combout\ & \SCORE_1|in_bounds~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCORE_1|Mux107~1_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \SCORE_1|pixel.blue[0]~5_combout\);

-- Location: LCCOMB_X16_Y11_N12
\SCORE_1|Mux99~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~19_combout\ = (!\VGA_CONTROLL|column\(0) & (\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|row\(1) $ (\VGA_CONTROLL|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(1),
	datab => \VGA_CONTROLL|column\(0),
	datac => \VGA_CONTROLL|row\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~19_combout\);

-- Location: LCCOMB_X16_Y11_N28
\SCORE_1|Mux99~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~16_combout\ = (\VGA_CONTROLL|column\(2) & (!\VGA_CONTROLL|column\(0) & (\SCORE_1|Add1~0_combout\ $ (!\VGA_CONTROLL|column\(1))))) # (!\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ & ((!\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~16_combout\);

-- Location: LCCOMB_X16_Y11_N8
\SCORE_1|Mux99~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~18_combout\ = (\VGA_CONTROLL|column\(0) & ((\VGA_CONTROLL|column\(2) & (!\SCORE_1|Add1~0_combout\ & \VGA_CONTROLL|column\(1))) # (!\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ & !\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~18_combout\);

-- Location: LCCOMB_X16_Y11_N6
\SCORE_1|Mux99~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~17_combout\ = (\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1) & (\SCORE_1|Add1~0_combout\ $ (\VGA_CONTROLL|column\(0))))) # (!\VGA_CONTROLL|column\(2) & ((\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(0) & 
-- !\VGA_CONTROLL|column\(1))) # (!\SCORE_1|Add1~0_combout\ & (!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~17_combout\);

-- Location: LCCOMB_X16_Y11_N2
\SCORE_1|Mux101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux101~0_combout\ = (\SCORE_1|Add1~1_combout\ & (((!\VGA_CONTROLL|row\(0))))) # (!\SCORE_1|Add1~1_combout\ & ((\VGA_CONTROLL|row\(0) & (\SCORE_1|Mux99~18_combout\)) # (!\VGA_CONTROLL|row\(0) & ((\SCORE_1|Mux99~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~1_combout\,
	datab => \SCORE_1|Mux99~18_combout\,
	datac => \VGA_CONTROLL|row\(0),
	datad => \SCORE_1|Mux99~17_combout\,
	combout => \SCORE_1|Mux101~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
\SCORE_1|Mux101~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux101~1_combout\ = (\SCORE_1|Add1~1_combout\ & ((\SCORE_1|Mux101~0_combout\ & (\SCORE_1|Mux99~19_combout\)) # (!\SCORE_1|Mux101~0_combout\ & ((!\SCORE_1|Mux99~16_combout\))))) # (!\SCORE_1|Add1~1_combout\ & (((\SCORE_1|Mux101~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux99~19_combout\,
	datab => \SCORE_1|Mux99~16_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux101~0_combout\,
	combout => \SCORE_1|Mux101~1_combout\);

-- Location: LCCOMB_X16_Y11_N4
\SCORE_1|Mux102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux102~0_combout\ = (\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(0)) # (\SCORE_1|Add1~0_combout\ $ (\VGA_CONTROLL|column\(1))))) # (!\VGA_CONTROLL|column\(2) & (((\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux102~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\SCORE_1|Mux102~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux102~1_combout\ = (\VGA_CONTROLL|row\(0) & ((\SCORE_1|Mux102~0_combout\) # ((!\SCORE_1|Add1~1_combout\)))) # (!\VGA_CONTROLL|row\(0) & (!\SCORE_1|Mux102~0_combout\ & (\SCORE_1|Add1~1_combout\ & \VGA_CONTROLL|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(0),
	datab => \SCORE_1|Mux102~0_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux102~1_combout\);

-- Location: LCCOMB_X16_Y11_N20
\SCORE_1|Mux102~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux102~2_combout\ = (\SCORE_1|Mux102~1_combout\ & ((\SCORE_1|Mux99~15_combout\) # ((\SCORE_1|Add1~1_combout\)))) # (!\SCORE_1|Mux102~1_combout\ & (((!\SCORE_1|Add1~1_combout\ & !\SCORE_1|Mux99~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux102~1_combout\,
	datab => \SCORE_1|Mux99~15_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux99~13_combout\,
	combout => \SCORE_1|Mux102~2_combout\);

-- Location: LCCOMB_X13_Y11_N26
\curr_pixel~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~10_combout\ = ((!\SCORE_1|Mux101~1_combout\ & !\SCORE_1|Mux102~2_combout\)) # (!\SCORE_1|in_bounds~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCORE_1|Mux101~1_combout\,
	datac => \SCORE_1|Mux102~2_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~10_combout\);

-- Location: LCCOMB_X16_Y11_N14
\SCORE_1|Mux99~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~21_combout\ = (\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ $ (((\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(1)))))) # (!\VGA_CONTROLL|column\(2) & (((\VGA_CONTROLL|column\(0)) # (\VGA_CONTROLL|column\(1))) # 
-- (!\SCORE_1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SCORE_1|Add1~0_combout\,
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux99~21_combout\);

-- Location: LCCOMB_X14_Y11_N12
\SCORE_1|Mux105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux105~0_combout\ = (\VGA_CONTROLL|row\(0) & (!\SCORE_1|Mux17~0_combout\ & ((!\SCORE_1|Add1~1_combout\)))) # (!\VGA_CONTROLL|row\(0) & (((\SCORE_1|Mux99~21_combout\) # (\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux17~0_combout\,
	datab => \SCORE_1|Mux99~21_combout\,
	datac => \VGA_CONTROLL|row\(0),
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux105~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\SCORE_1|Mux99~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~20_combout\ = (\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\)) # (!\VGA_CONTROLL|column\(2) & (!\SCORE_1|Add1~0_combout\ & \VGA_CONTROLL|column\(0))))) # (!\VGA_CONTROLL|column\(1) & 
-- (!\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(2) $ (!\VGA_CONTROLL|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \SCORE_1|Add1~0_combout\,
	datad => \VGA_CONTROLL|column\(0),
	combout => \SCORE_1|Mux99~20_combout\);

-- Location: LCCOMB_X14_Y11_N18
\SCORE_1|Mux105~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux105~1_combout\ = (\SCORE_1|Mux105~0_combout\ & (((!\SCORE_1|Add1~1_combout\)) # (!\SCORE_1|Mux99~11_combout\))) # (!\SCORE_1|Mux105~0_combout\ & (((!\SCORE_1|Mux99~20_combout\ & \SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux105~0_combout\,
	datab => \SCORE_1|Mux99~11_combout\,
	datac => \SCORE_1|Mux99~20_combout\,
	datad => \SCORE_1|Add1~1_combout\,
	combout => \SCORE_1|Mux105~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\SCORE_1|Mux99~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~25_combout\ = (\VGA_CONTROLL|column\(1) & (((!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(2))))) # (!\VGA_CONTROLL|column\(1) & (!\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(0) & !\VGA_CONTROLL|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~25_combout\);

-- Location: LCCOMB_X17_Y11_N16
\SCORE_1|Mux99~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~22_combout\ = (\SCORE_1|Add1~0_combout\ & ((\VGA_CONTROLL|column\(1) & (!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(2))) # (!\VGA_CONTROLL|column\(1) & ((!\VGA_CONTROLL|column\(2)))))) # (!\SCORE_1|Add1~0_combout\ & 
-- ((\VGA_CONTROLL|column\(0) $ (\VGA_CONTROLL|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~22_combout\);

-- Location: LCCOMB_X17_Y11_N12
\SCORE_1|Mux99~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~24_combout\ = (\VGA_CONTROLL|column\(2) & (!\VGA_CONTROLL|column\(0) & ((\VGA_CONTROLL|column\(1)) # (!\SCORE_1|Add1~0_combout\)))) # (!\VGA_CONTROLL|column\(2) & (\SCORE_1|Add1~0_combout\ & (!\VGA_CONTROLL|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~24_combout\);

-- Location: LCCOMB_X17_Y11_N18
\SCORE_1|Mux99~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux99~23_combout\ = (\VGA_CONTROLL|column\(1) & ((\VGA_CONTROLL|column\(0) & ((\VGA_CONTROLL|column\(2)))) # (!\VGA_CONTROLL|column\(0) & (!\SCORE_1|Add1~0_combout\)))) # (!\VGA_CONTROLL|column\(1) & (!\SCORE_1|Add1~0_combout\ & 
-- ((!\VGA_CONTROLL|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|column\(2),
	combout => \SCORE_1|Mux99~23_combout\);

-- Location: LCCOMB_X17_Y11_N14
\SCORE_1|Mux106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux106~0_combout\ = (\VGA_CONTROLL|row\(0) & ((\SCORE_1|Add1~1_combout\ & ((\SCORE_1|Mux99~23_combout\))) # (!\SCORE_1|Add1~1_combout\ & (\SCORE_1|Mux99~24_combout\)))) # (!\VGA_CONTROLL|row\(0) & (((\SCORE_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux99~24_combout\,
	datab => \VGA_CONTROLL|row\(0),
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux99~23_combout\,
	combout => \SCORE_1|Mux106~0_combout\);

-- Location: LCCOMB_X17_Y11_N2
\SCORE_1|Mux106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux106~1_combout\ = (\SCORE_1|Mux106~0_combout\ & ((\SCORE_1|Mux99~25_combout\) # ((\VGA_CONTROLL|row\(0))))) # (!\SCORE_1|Mux106~0_combout\ & (((\SCORE_1|Mux99~22_combout\ & !\VGA_CONTROLL|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux99~25_combout\,
	datab => \SCORE_1|Mux99~22_combout\,
	datac => \SCORE_1|Mux106~0_combout\,
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|Mux106~1_combout\);

-- Location: LCCOMB_X13_Y11_N24
\curr_pixel~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~11_combout\ = (\curr_pixel~10_combout\ & (((!\SCORE_1|Mux105~1_combout\ & !\SCORE_1|Mux106~1_combout\)) # (!\SCORE_1|in_bounds~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_pixel~10_combout\,
	datab => \SCORE_1|Mux105~1_combout\,
	datac => \SCORE_1|Mux106~1_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~11_combout\);

-- Location: LCCOMB_X17_Y11_N30
\SCORE_1|Mux100~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux100~1_combout\ = (\VGA_CONTROLL|row\(0) & ((\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(1)))) # (!\VGA_CONTROLL|column\(2) & (\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|Mux100~1_combout\);

-- Location: LCCOMB_X17_Y11_N20
\SCORE_1|Mux100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux100~0_combout\ = (\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|column\(2) $ (((\VGA_CONTROLL|column\(0) & !\VGA_CONTROLL|row\(0)))))) # (!\VGA_CONTROLL|column\(1) & (\VGA_CONTROLL|row\(0) $ (((\VGA_CONTROLL|column\(2) & 
-- !\VGA_CONTROLL|column\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|column\(1),
	datac => \VGA_CONTROLL|column\(0),
	datad => \VGA_CONTROLL|row\(0),
	combout => \SCORE_1|Mux100~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\SCORE_1|Mux100~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux100~2_combout\ = (\SCORE_1|Add1~0_combout\ & ((\SCORE_1|Mux100~0_combout\) # ((!\SCORE_1|Mux100~1_combout\)))) # (!\SCORE_1|Add1~0_combout\ & (\VGA_CONTROLL|column\(1) $ (((\SCORE_1|Mux100~1_combout\) # (!\SCORE_1|Mux100~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Add1~0_combout\,
	datab => \SCORE_1|Mux100~0_combout\,
	datac => \SCORE_1|Mux100~1_combout\,
	datad => \VGA_CONTROLL|column\(1),
	combout => \SCORE_1|Mux100~2_combout\);

-- Location: LCCOMB_X17_Y11_N10
\SCORE_1|Mux100~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCORE_1|Mux100~3_combout\ = (\SCORE_1|Mux100~2_combout\ & (((!\SCORE_1|Mux100~0_combout\) # (!\SCORE_1|Add1~1_combout\)) # (!\SCORE_1|Mux100~1_combout\))) # (!\SCORE_1|Mux100~2_combout\ & (\SCORE_1|Mux100~1_combout\ $ (\SCORE_1|Add1~1_combout\ $ 
-- (\SCORE_1|Mux100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux100~1_combout\,
	datab => \SCORE_1|Mux100~2_combout\,
	datac => \SCORE_1|Add1~1_combout\,
	datad => \SCORE_1|Mux100~0_combout\,
	combout => \SCORE_1|Mux100~3_combout\);

-- Location: LCCOMB_X13_Y11_N14
\curr_pixel~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~8_combout\ = ((!\SCORE_1|Mux99~5_combout\ & !\SCORE_1|Mux96~1_combout\)) # (!\SCORE_1|in_bounds~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCORE_1|Mux99~5_combout\,
	datac => \SCORE_1|Mux96~1_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~8_combout\);

-- Location: LCCOMB_X13_Y11_N4
\curr_pixel~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~9_combout\ = (\curr_pixel~8_combout\ & (((!\SCORE_1|Mux100~3_combout\ & !\SCORE_1|Mux98~1_combout\)) # (!\SCORE_1|in_bounds~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux100~3_combout\,
	datab => \SCORE_1|Mux98~1_combout\,
	datac => \curr_pixel~8_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~9_combout\);

-- Location: FF_X46_Y52_N31
\SHIP_OFFSET_GEN|U1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(31));

-- Location: LCCOMB_X46_Y53_N2
\SHIP_OFFSET_GEN|U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~0_combout\ = \SHIP_OFFSET_GEN|U1|count\(1) $ (VCC)
-- \SHIP_OFFSET_GEN|U1|Add0~1\ = CARRY(\SHIP_OFFSET_GEN|U1|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(1),
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|U1|Add0~0_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~1\);

-- Location: LCCOMB_X45_Y53_N6
\SHIP_OFFSET_GEN|U1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~3_combout\ = ((!\SHIP_OFFSET_GEN|U1|Add0~14_combout\) # (!\SHIP_OFFSET_GEN|U1|Add0~10_combout\)) # (!\SHIP_OFFSET_GEN|U1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~12_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~10_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~14_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y53_N24
\SHIP_OFFSET_GEN|U1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~2_combout\ = (((!\SHIP_OFFSET_GEN|U1|Add0~4_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~2_combout\)) # (!\SHIP_OFFSET_GEN|U1|Add0~6_combout\)) # (!\SHIP_OFFSET_GEN|U1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~4_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~8_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~6_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~2_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y53_N30
\SHIP_OFFSET_GEN|U1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~0_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~16_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~20_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~18_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~16_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~20_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~18_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~22_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~0_combout\);

-- Location: LCCOMB_X47_Y52_N0
\SHIP_OFFSET_GEN|U1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~1_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~30_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~24_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~26_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~30_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~24_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~26_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~28_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y53_N20
\SHIP_OFFSET_GEN|U1|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\ = (\SHIP_OFFSET_GEN|U1|LessThan1~0_combout\ & (\SHIP_OFFSET_GEN|U1|LessThan1~1_combout\ & ((\SHIP_OFFSET_GEN|U1|LessThan1~3_combout\) # (\SHIP_OFFSET_GEN|U1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|LessThan1~3_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~2_combout\,
	datac => \SHIP_OFFSET_GEN|U1|LessThan1~0_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~1_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y53_N14
\SHIP_OFFSET_GEN|U1|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~8_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~0_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~8_combout\);

-- Location: FF_X45_Y53_N15
\SHIP_OFFSET_GEN|U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(1));

-- Location: LCCOMB_X46_Y53_N4
\SHIP_OFFSET_GEN|U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~2_combout\ = (\SHIP_OFFSET_GEN|U1|count\(2) & (!\SHIP_OFFSET_GEN|U1|Add0~1\)) # (!\SHIP_OFFSET_GEN|U1|count\(2) & ((\SHIP_OFFSET_GEN|U1|Add0~1\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~3\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~1\) # (!\SHIP_OFFSET_GEN|U1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(2),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~1\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~2_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~3\);

-- Location: LCCOMB_X45_Y53_N28
\SHIP_OFFSET_GEN|U1|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~7_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~2_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~2_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~7_combout\);

-- Location: FF_X45_Y53_N29
\SHIP_OFFSET_GEN|U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(2));

-- Location: LCCOMB_X46_Y53_N6
\SHIP_OFFSET_GEN|U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~4_combout\ = (\SHIP_OFFSET_GEN|U1|count\(3) & (\SHIP_OFFSET_GEN|U1|Add0~3\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(3) & (!\SHIP_OFFSET_GEN|U1|Add0~3\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~5\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(3) & !\SHIP_OFFSET_GEN|U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(3),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~3\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~4_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~5\);

-- Location: LCCOMB_X45_Y53_N0
\SHIP_OFFSET_GEN|U1|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~6_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~4_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~4_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~6_combout\);

-- Location: FF_X45_Y53_N1
\SHIP_OFFSET_GEN|U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(3));

-- Location: LCCOMB_X46_Y53_N8
\SHIP_OFFSET_GEN|U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~6_combout\ = (\SHIP_OFFSET_GEN|U1|count\(4) & (!\SHIP_OFFSET_GEN|U1|Add0~5\)) # (!\SHIP_OFFSET_GEN|U1|count\(4) & ((\SHIP_OFFSET_GEN|U1|Add0~5\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~7\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~5\) # (!\SHIP_OFFSET_GEN|U1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(4),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~5\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~6_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~7\);

-- Location: LCCOMB_X45_Y53_N22
\SHIP_OFFSET_GEN|U1|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~5_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~6_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~6_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~5_combout\);

-- Location: FF_X45_Y53_N23
\SHIP_OFFSET_GEN|U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(4));

-- Location: LCCOMB_X46_Y53_N10
\SHIP_OFFSET_GEN|U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~8_combout\ = (\SHIP_OFFSET_GEN|U1|count\(5) & (\SHIP_OFFSET_GEN|U1|Add0~7\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(5) & (!\SHIP_OFFSET_GEN|U1|Add0~7\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~9\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(5) & !\SHIP_OFFSET_GEN|U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(5),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~7\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~8_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~9\);

-- Location: LCCOMB_X45_Y53_N18
\SHIP_OFFSET_GEN|U1|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~4_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~8_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~8_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~4_combout\);

-- Location: FF_X45_Y53_N19
\SHIP_OFFSET_GEN|U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(5));

-- Location: LCCOMB_X46_Y53_N12
\SHIP_OFFSET_GEN|U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~10_combout\ = (\SHIP_OFFSET_GEN|U1|count\(6) & (!\SHIP_OFFSET_GEN|U1|Add0~9\)) # (!\SHIP_OFFSET_GEN|U1|count\(6) & ((\SHIP_OFFSET_GEN|U1|Add0~9\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~11\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~9\) # (!\SHIP_OFFSET_GEN|U1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(6),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~9\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~10_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~11\);

-- Location: LCCOMB_X45_Y53_N12
\SHIP_OFFSET_GEN|U1|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~3_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~10_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~10_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~3_combout\);

-- Location: FF_X45_Y53_N13
\SHIP_OFFSET_GEN|U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(6));

-- Location: LCCOMB_X46_Y53_N14
\SHIP_OFFSET_GEN|U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~12_combout\ = (\SHIP_OFFSET_GEN|U1|count\(7) & (\SHIP_OFFSET_GEN|U1|Add0~11\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(7) & (!\SHIP_OFFSET_GEN|U1|Add0~11\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~13\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(7) & !\SHIP_OFFSET_GEN|U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(7),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~11\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~12_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~13\);

-- Location: LCCOMB_X45_Y53_N8
\SHIP_OFFSET_GEN|U1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~2_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~12_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~12_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~2_combout\);

-- Location: FF_X45_Y53_N9
\SHIP_OFFSET_GEN|U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(7));

-- Location: LCCOMB_X46_Y53_N16
\SHIP_OFFSET_GEN|U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~14_combout\ = (\SHIP_OFFSET_GEN|U1|count\(8) & (!\SHIP_OFFSET_GEN|U1|Add0~13\)) # (!\SHIP_OFFSET_GEN|U1|count\(8) & ((\SHIP_OFFSET_GEN|U1|Add0~13\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~15\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~13\) # (!\SHIP_OFFSET_GEN|U1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~13\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~14_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~15\);

-- Location: LCCOMB_X45_Y53_N26
\SHIP_OFFSET_GEN|U1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~1_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~14_combout\ & ((\SHIP_OFFSET_GEN|U1|Add0~60_combout\) # ((\SHIP_OFFSET_GEN|U1|LessThan1~4_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~14_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~1_combout\);

-- Location: FF_X45_Y53_N27
\SHIP_OFFSET_GEN|U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(8));

-- Location: LCCOMB_X46_Y53_N18
\SHIP_OFFSET_GEN|U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~16_combout\ = (\SHIP_OFFSET_GEN|U1|count\(9) & (\SHIP_OFFSET_GEN|U1|Add0~15\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(9) & (!\SHIP_OFFSET_GEN|U1|Add0~15\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~17\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(9) & !\SHIP_OFFSET_GEN|U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(9),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~15\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~16_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~17\);

-- Location: LCCOMB_X46_Y53_N0
\SHIP_OFFSET_GEN|U1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~0_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~16_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~0_combout\);

-- Location: FF_X46_Y53_N1
\SHIP_OFFSET_GEN|U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(9));

-- Location: LCCOMB_X46_Y53_N20
\SHIP_OFFSET_GEN|U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~18_combout\ = (\SHIP_OFFSET_GEN|U1|count\(10) & (!\SHIP_OFFSET_GEN|U1|Add0~17\)) # (!\SHIP_OFFSET_GEN|U1|count\(10) & ((\SHIP_OFFSET_GEN|U1|Add0~17\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~19\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~17\) # (!\SHIP_OFFSET_GEN|U1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(10),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~17\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~18_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~19\);

-- Location: LCCOMB_X45_Y53_N2
\SHIP_OFFSET_GEN|U1|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~9_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~18_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~9_combout\);

-- Location: FF_X45_Y53_N3
\SHIP_OFFSET_GEN|U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(10));

-- Location: LCCOMB_X46_Y53_N22
\SHIP_OFFSET_GEN|U1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~20_combout\ = (\SHIP_OFFSET_GEN|U1|count\(11) & (\SHIP_OFFSET_GEN|U1|Add0~19\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(11) & (!\SHIP_OFFSET_GEN|U1|Add0~19\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~21\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(11) & !\SHIP_OFFSET_GEN|U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(11),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~19\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~20_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~21\);

-- Location: LCCOMB_X45_Y52_N12
\SHIP_OFFSET_GEN|U1|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~10_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~20_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~10_combout\);

-- Location: FF_X45_Y52_N13
\SHIP_OFFSET_GEN|U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(11));

-- Location: LCCOMB_X46_Y53_N24
\SHIP_OFFSET_GEN|U1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~22_combout\ = (\SHIP_OFFSET_GEN|U1|count\(12) & (!\SHIP_OFFSET_GEN|U1|Add0~21\)) # (!\SHIP_OFFSET_GEN|U1|count\(12) & ((\SHIP_OFFSET_GEN|U1|Add0~21\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~23\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~21\) # (!\SHIP_OFFSET_GEN|U1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(12),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~21\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~22_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~23\);

-- Location: LCCOMB_X45_Y53_N16
\SHIP_OFFSET_GEN|U1|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~11_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~22_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~11_combout\);

-- Location: FF_X45_Y53_N17
\SHIP_OFFSET_GEN|U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(12));

-- Location: LCCOMB_X46_Y53_N26
\SHIP_OFFSET_GEN|U1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~24_combout\ = (\SHIP_OFFSET_GEN|U1|count\(13) & (\SHIP_OFFSET_GEN|U1|Add0~23\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(13) & (!\SHIP_OFFSET_GEN|U1|Add0~23\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~25\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(13) & !\SHIP_OFFSET_GEN|U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(13),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~23\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~24_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~25\);

-- Location: LCCOMB_X47_Y52_N12
\SHIP_OFFSET_GEN|U1|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~12_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~24_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~12_combout\);

-- Location: FF_X47_Y52_N13
\SHIP_OFFSET_GEN|U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(13));

-- Location: LCCOMB_X46_Y53_N28
\SHIP_OFFSET_GEN|U1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~26_combout\ = (\SHIP_OFFSET_GEN|U1|count\(14) & (!\SHIP_OFFSET_GEN|U1|Add0~25\)) # (!\SHIP_OFFSET_GEN|U1|count\(14) & ((\SHIP_OFFSET_GEN|U1|Add0~25\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~27\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~25\) # (!\SHIP_OFFSET_GEN|U1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(14),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~25\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~26_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~27\);

-- Location: LCCOMB_X47_Y52_N2
\SHIP_OFFSET_GEN|U1|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~13_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~26_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~13_combout\);

-- Location: FF_X47_Y52_N3
\SHIP_OFFSET_GEN|U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(14));

-- Location: LCCOMB_X46_Y53_N30
\SHIP_OFFSET_GEN|U1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~28_combout\ = (\SHIP_OFFSET_GEN|U1|count\(15) & (\SHIP_OFFSET_GEN|U1|Add0~27\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(15) & (!\SHIP_OFFSET_GEN|U1|Add0~27\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~29\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(15) & !\SHIP_OFFSET_GEN|U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(15),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~27\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~28_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~29\);

-- Location: LCCOMB_X47_Y52_N24
\SHIP_OFFSET_GEN|U1|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~14_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~28_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~14_combout\);

-- Location: FF_X47_Y52_N25
\SHIP_OFFSET_GEN|U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(15));

-- Location: LCCOMB_X46_Y52_N0
\SHIP_OFFSET_GEN|U1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~30_combout\ = (\SHIP_OFFSET_GEN|U1|count\(16) & (!\SHIP_OFFSET_GEN|U1|Add0~29\)) # (!\SHIP_OFFSET_GEN|U1|count\(16) & ((\SHIP_OFFSET_GEN|U1|Add0~29\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~31\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~29\) # (!\SHIP_OFFSET_GEN|U1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(16),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~29\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~30_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~31\);

-- Location: LCCOMB_X47_Y52_N10
\SHIP_OFFSET_GEN|U1|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~15_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~30_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~30_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~15_combout\);

-- Location: FF_X47_Y52_N11
\SHIP_OFFSET_GEN|U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(16));

-- Location: LCCOMB_X46_Y52_N2
\SHIP_OFFSET_GEN|U1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~32_combout\ = (\SHIP_OFFSET_GEN|U1|count\(17) & (\SHIP_OFFSET_GEN|U1|Add0~31\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(17) & (!\SHIP_OFFSET_GEN|U1|Add0~31\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~33\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(17) & !\SHIP_OFFSET_GEN|U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(17),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~31\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~32_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~33\);

-- Location: LCCOMB_X47_Y52_N22
\SHIP_OFFSET_GEN|U1|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~16_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~32_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~32_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~16_combout\);

-- Location: FF_X47_Y52_N23
\SHIP_OFFSET_GEN|U1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(17));

-- Location: LCCOMB_X46_Y52_N4
\SHIP_OFFSET_GEN|U1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~34_combout\ = (\SHIP_OFFSET_GEN|U1|count\(18) & (!\SHIP_OFFSET_GEN|U1|Add0~33\)) # (!\SHIP_OFFSET_GEN|U1|count\(18) & ((\SHIP_OFFSET_GEN|U1|Add0~33\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~35\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~33\) # (!\SHIP_OFFSET_GEN|U1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(18),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~33\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~34_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~35\);

-- Location: LCCOMB_X47_Y52_N4
\SHIP_OFFSET_GEN|U1|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~17_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~34_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~34_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~17_combout\);

-- Location: FF_X47_Y52_N5
\SHIP_OFFSET_GEN|U1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(18));

-- Location: LCCOMB_X46_Y52_N6
\SHIP_OFFSET_GEN|U1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~36_combout\ = (\SHIP_OFFSET_GEN|U1|count\(19) & (\SHIP_OFFSET_GEN|U1|Add0~35\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(19) & (!\SHIP_OFFSET_GEN|U1|Add0~35\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~37\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(19) & !\SHIP_OFFSET_GEN|U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(19),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~35\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~36_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~37\);

-- Location: LCCOMB_X47_Y52_N18
\SHIP_OFFSET_GEN|U1|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~18_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~36_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~36_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~18_combout\);

-- Location: FF_X47_Y52_N19
\SHIP_OFFSET_GEN|U1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(19));

-- Location: LCCOMB_X46_Y52_N8
\SHIP_OFFSET_GEN|U1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~38_combout\ = (\SHIP_OFFSET_GEN|U1|count\(20) & (!\SHIP_OFFSET_GEN|U1|Add0~37\)) # (!\SHIP_OFFSET_GEN|U1|count\(20) & ((\SHIP_OFFSET_GEN|U1|Add0~37\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~39\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~37\) # (!\SHIP_OFFSET_GEN|U1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(20),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~37\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~38_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~39\);

-- Location: LCCOMB_X46_Y52_N10
\SHIP_OFFSET_GEN|U1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~40_combout\ = (\SHIP_OFFSET_GEN|U1|count\(21) & (\SHIP_OFFSET_GEN|U1|Add0~39\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(21) & (!\SHIP_OFFSET_GEN|U1|Add0~39\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~41\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(21) & !\SHIP_OFFSET_GEN|U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(21),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~39\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~40_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~41\);

-- Location: LCCOMB_X45_Y52_N14
\SHIP_OFFSET_GEN|U1|count~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~20_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~40_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~40_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~20_combout\);

-- Location: FF_X45_Y52_N15
\SHIP_OFFSET_GEN|U1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(21));

-- Location: LCCOMB_X46_Y52_N12
\SHIP_OFFSET_GEN|U1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~42_combout\ = (\SHIP_OFFSET_GEN|U1|count\(22) & (!\SHIP_OFFSET_GEN|U1|Add0~41\)) # (!\SHIP_OFFSET_GEN|U1|count\(22) & ((\SHIP_OFFSET_GEN|U1|Add0~41\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~43\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~41\) # (!\SHIP_OFFSET_GEN|U1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(22),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~41\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~42_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~43\);

-- Location: LCCOMB_X45_Y52_N16
\SHIP_OFFSET_GEN|U1|count~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~21_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~42_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~42_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~21_combout\);

-- Location: FF_X45_Y52_N17
\SHIP_OFFSET_GEN|U1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(22));

-- Location: LCCOMB_X46_Y52_N14
\SHIP_OFFSET_GEN|U1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~44_combout\ = (\SHIP_OFFSET_GEN|U1|count\(23) & (\SHIP_OFFSET_GEN|U1|Add0~43\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(23) & (!\SHIP_OFFSET_GEN|U1|Add0~43\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~45\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(23) & !\SHIP_OFFSET_GEN|U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(23),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~43\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~44_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~45\);

-- Location: LCCOMB_X45_Y52_N6
\SHIP_OFFSET_GEN|U1|count~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~22_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~44_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~44_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~22_combout\);

-- Location: FF_X45_Y52_N7
\SHIP_OFFSET_GEN|U1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(23));

-- Location: LCCOMB_X46_Y52_N16
\SHIP_OFFSET_GEN|U1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~46_combout\ = (\SHIP_OFFSET_GEN|U1|count\(24) & (!\SHIP_OFFSET_GEN|U1|Add0~45\)) # (!\SHIP_OFFSET_GEN|U1|count\(24) & ((\SHIP_OFFSET_GEN|U1|Add0~45\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~47\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~45\) # (!\SHIP_OFFSET_GEN|U1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(24),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~45\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~46_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~47\);

-- Location: LCCOMB_X45_Y52_N28
\SHIP_OFFSET_GEN|U1|count~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~23_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~46_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~23_combout\);

-- Location: FF_X45_Y52_N29
\SHIP_OFFSET_GEN|U1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(24));

-- Location: LCCOMB_X46_Y52_N18
\SHIP_OFFSET_GEN|U1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~48_combout\ = (\SHIP_OFFSET_GEN|U1|count\(25) & (\SHIP_OFFSET_GEN|U1|Add0~47\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(25) & (!\SHIP_OFFSET_GEN|U1|Add0~47\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~49\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(25) & !\SHIP_OFFSET_GEN|U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(25),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~47\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~48_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~49\);

-- Location: LCCOMB_X45_Y52_N20
\SHIP_OFFSET_GEN|U1|count~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~24_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~48_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~24_combout\);

-- Location: FF_X45_Y52_N21
\SHIP_OFFSET_GEN|U1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(25));

-- Location: LCCOMB_X46_Y52_N20
\SHIP_OFFSET_GEN|U1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~50_combout\ = (\SHIP_OFFSET_GEN|U1|count\(26) & (!\SHIP_OFFSET_GEN|U1|Add0~49\)) # (!\SHIP_OFFSET_GEN|U1|count\(26) & ((\SHIP_OFFSET_GEN|U1|Add0~49\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~51\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~49\) # (!\SHIP_OFFSET_GEN|U1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(26),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~49\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~50_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~51\);

-- Location: LCCOMB_X45_Y52_N2
\SHIP_OFFSET_GEN|U1|count~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~25_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~50_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~50_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~25_combout\);

-- Location: FF_X45_Y52_N3
\SHIP_OFFSET_GEN|U1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(26));

-- Location: LCCOMB_X46_Y52_N22
\SHIP_OFFSET_GEN|U1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~52_combout\ = (\SHIP_OFFSET_GEN|U1|count\(27) & (\SHIP_OFFSET_GEN|U1|Add0~51\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(27) & (!\SHIP_OFFSET_GEN|U1|Add0~51\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~53\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(27) & !\SHIP_OFFSET_GEN|U1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(27),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~51\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~52_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~53\);

-- Location: LCCOMB_X45_Y52_N8
\SHIP_OFFSET_GEN|U1|count~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~26_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~52_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~26_combout\);

-- Location: FF_X45_Y52_N9
\SHIP_OFFSET_GEN|U1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(27));

-- Location: LCCOMB_X46_Y52_N24
\SHIP_OFFSET_GEN|U1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~54_combout\ = (\SHIP_OFFSET_GEN|U1|count\(28) & (!\SHIP_OFFSET_GEN|U1|Add0~53\)) # (!\SHIP_OFFSET_GEN|U1|count\(28) & ((\SHIP_OFFSET_GEN|U1|Add0~53\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~55\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~53\) # (!\SHIP_OFFSET_GEN|U1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(28),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~53\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~54_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~55\);

-- Location: LCCOMB_X45_Y52_N26
\SHIP_OFFSET_GEN|U1|count~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~27_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~54_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~27_combout\);

-- Location: FF_X45_Y52_N27
\SHIP_OFFSET_GEN|U1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(28));

-- Location: LCCOMB_X46_Y52_N26
\SHIP_OFFSET_GEN|U1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~56_combout\ = (\SHIP_OFFSET_GEN|U1|count\(29) & (\SHIP_OFFSET_GEN|U1|Add0~55\ $ (GND))) # (!\SHIP_OFFSET_GEN|U1|count\(29) & (!\SHIP_OFFSET_GEN|U1|Add0~55\ & VCC))
-- \SHIP_OFFSET_GEN|U1|Add0~57\ = CARRY((\SHIP_OFFSET_GEN|U1|count\(29) & !\SHIP_OFFSET_GEN|U1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(29),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~55\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~56_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~57\);

-- Location: LCCOMB_X45_Y52_N10
\SHIP_OFFSET_GEN|U1|count~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~28_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~56_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~28_combout\);

-- Location: FF_X45_Y52_N11
\SHIP_OFFSET_GEN|U1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(29));

-- Location: LCCOMB_X46_Y52_N28
\SHIP_OFFSET_GEN|U1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~58_combout\ = (\SHIP_OFFSET_GEN|U1|count\(30) & (!\SHIP_OFFSET_GEN|U1|Add0~57\)) # (!\SHIP_OFFSET_GEN|U1|count\(30) & ((\SHIP_OFFSET_GEN|U1|Add0~57\) # (GND)))
-- \SHIP_OFFSET_GEN|U1|Add0~59\ = CARRY((!\SHIP_OFFSET_GEN|U1|Add0~57\) # (!\SHIP_OFFSET_GEN|U1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|count\(30),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U1|Add0~57\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~58_combout\,
	cout => \SHIP_OFFSET_GEN|U1|Add0~59\);

-- Location: LCCOMB_X45_Y52_N4
\SHIP_OFFSET_GEN|U1|count~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~29_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & \SHIP_OFFSET_GEN|U1|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~58_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~29_combout\);

-- Location: FF_X45_Y52_N5
\SHIP_OFFSET_GEN|U1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(30));

-- Location: LCCOMB_X46_Y52_N30
\SHIP_OFFSET_GEN|U1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|Add0~60_combout\ = \SHIP_OFFSET_GEN|U1|count\(31) $ (!\SHIP_OFFSET_GEN|U1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|count\(31),
	cin => \SHIP_OFFSET_GEN|U1|Add0~59\,
	combout => \SHIP_OFFSET_GEN|U1|Add0~60_combout\);

-- Location: LCCOMB_X47_Y52_N20
\SHIP_OFFSET_GEN|U1|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|count~19_combout\ = (\SHIP_OFFSET_GEN|U1|Add0~38_combout\ & \SHIP_OFFSET_GEN|U1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~38_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	combout => \SHIP_OFFSET_GEN|U1|count~19_combout\);

-- Location: FF_X47_Y52_N21
\SHIP_OFFSET_GEN|U1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|count\(20));

-- Location: LCCOMB_X47_Y52_N14
\SHIP_OFFSET_GEN|U1|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~5_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~38_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~36_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~34_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~38_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~36_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~34_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~32_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y52_N18
\SHIP_OFFSET_GEN|U1|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~6_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~44_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~42_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~40_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~44_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~42_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~40_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~46_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~6_combout\);

-- Location: LCCOMB_X45_Y52_N22
\SHIP_OFFSET_GEN|U1|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~8_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~58_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|Add0~58_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~56_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~8_combout\);

-- Location: LCCOMB_X45_Y52_N24
\SHIP_OFFSET_GEN|U1|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~7_combout\ = (!\SHIP_OFFSET_GEN|U1|Add0~54_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~52_combout\ & (!\SHIP_OFFSET_GEN|U1|Add0~50_combout\ & !\SHIP_OFFSET_GEN|U1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|Add0~54_combout\,
	datab => \SHIP_OFFSET_GEN|U1|Add0~52_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~50_combout\,
	datad => \SHIP_OFFSET_GEN|U1|Add0~48_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~7_combout\);

-- Location: LCCOMB_X45_Y52_N0
\SHIP_OFFSET_GEN|U1|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\ = (\SHIP_OFFSET_GEN|U1|LessThan1~5_combout\ & (\SHIP_OFFSET_GEN|U1|LessThan1~6_combout\ & (\SHIP_OFFSET_GEN|U1|LessThan1~8_combout\ & \SHIP_OFFSET_GEN|U1|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|LessThan1~5_combout\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~6_combout\,
	datac => \SHIP_OFFSET_GEN|U1|LessThan1~8_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~7_combout\,
	combout => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\);

-- Location: LCCOMB_X45_Y53_N4
\SHIP_OFFSET_GEN|U1|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|clk_out~0_combout\ = \SHIP_OFFSET_GEN|U1|clk_out~q\ $ (((!\SHIP_OFFSET_GEN|U1|Add0~60_combout\ & ((!\SHIP_OFFSET_GEN|U1|LessThan1~4_combout\) # (!\SHIP_OFFSET_GEN|U1|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U1|clk_out~q\,
	datab => \SHIP_OFFSET_GEN|U1|LessThan1~9_combout\,
	datac => \SHIP_OFFSET_GEN|U1|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|U1|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|U1|clk_out~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\SHIP_OFFSET_GEN|U1|clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U1|clk_out~feeder_combout\ = \SHIP_OFFSET_GEN|U1|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U1|clk_out~0_combout\,
	combout => \SHIP_OFFSET_GEN|U1|clk_out~feeder_combout\);

-- Location: FF_X45_Y53_N11
\SHIP_OFFSET_GEN|U1|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U1|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U1|clk_out~q\);

-- Location: CLKCTRL_G14
\SHIP_OFFSET_GEN|U1|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N22
\GSENSOR_SDO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SDO,
	o => \GSENSOR_SDO~input_o\);

-- Location: LCCOMB_X43_Y15_N26
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]~feeder_combout\ = \GSENSOR_SDO~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GSENSOR_SDO~input_o\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N24
\SHIP_OFFSET_GEN|U2|U0|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Equal1~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0) & (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & !\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0),
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|Equal1~2_combout\);

-- Location: FF_X44_Y9_N25
\SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|Equal1~2_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\);

-- Location: LCCOMB_X44_Y9_N14
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\ & (\SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\ & (\SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\ & \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk_last~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|spi_clk~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\);

-- Location: FF_X43_Y15_N27
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[0]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(0));

-- Location: LCCOMB_X43_Y15_N16
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]~feeder_combout\);

-- Location: FF_X43_Y15_N17
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[1]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(1));

-- Location: LCCOMB_X43_Y15_N18
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]~feeder_combout\);

-- Location: FF_X43_Y15_N19
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[2]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(2));

-- Location: LCCOMB_X43_Y15_N12
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(2),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~feeder_combout\);

-- Location: FF_X43_Y15_N13
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3));

-- Location: LCCOMB_X43_Y15_N14
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]~feeder_combout\);

-- Location: FF_X43_Y15_N15
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[4]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(4));

-- Location: LCCOMB_X43_Y15_N28
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(4),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]~feeder_combout\);

-- Location: FF_X43_Y15_N29
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[5]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(5));

-- Location: LCCOMB_X36_Y13_N10
\SHIP_OFFSET_GEN|U2|U0|address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[4]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(4),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N2
\SHIP_OFFSET_GEN|U2|U0|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0) & (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2) & (!\SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1) & 
-- \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(0),
	datab => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(2),
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.opcode\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|state.TO_ACTIVE~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\);

-- Location: FF_X36_Y13_N11
\SHIP_OFFSET_GEN|U2|U0|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[4]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(4));

-- Location: LCCOMB_X36_Y13_N8
\SHIP_OFFSET_GEN|U2|U0|address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[3]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(3),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[3]~feeder_combout\);

-- Location: FF_X36_Y13_N9
\SHIP_OFFSET_GEN|U2|U0|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[3]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(3));

-- Location: FF_X36_Y13_N27
\SHIP_OFFSET_GEN|U2|U0|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(2),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(2));

-- Location: LCCOMB_X44_Y9_N12
\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\ & (\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\ & \SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|state.ACTIVE~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~0_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|state_next~2_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_request_r~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~2_combout\);

-- Location: FF_X44_Y9_N13
\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\);

-- Location: LCCOMB_X36_Y13_N28
\SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\) # ((!\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\ & \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~0_combout\);

-- Location: FF_X36_Y13_N29
\SHIP_OFFSET_GEN|U2|U0|monitor_rx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\);

-- Location: LCCOMB_X36_Y13_N26
\SHIP_OFFSET_GEN|U2|U0|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|address\(4) & (!\SHIP_OFFSET_GEN|U2|U0|address\(3) & (!\SHIP_OFFSET_GEN|U2|U0|address\(2) & \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|address\(4),
	datab => \SHIP_OFFSET_GEN|U2|U0|address\(3),
	datac => \SHIP_OFFSET_GEN|U2|U0|address\(2),
	datad => \SHIP_OFFSET_GEN|U2|U0|monitor_rx_r~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\);

-- Location: LCCOMB_X36_Y13_N14
\SHIP_OFFSET_GEN|U2|U0|address[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[6]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(6),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[6]~feeder_combout\);

-- Location: FF_X36_Y13_N15
\SHIP_OFFSET_GEN|U2|U0|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[6]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(6));

-- Location: FF_X36_Y13_N21
\SHIP_OFFSET_GEN|U2|U0|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(5),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(5));

-- Location: LCCOMB_X36_Y13_N16
\SHIP_OFFSET_GEN|U2|U0|address[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[7]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(7),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[7]~feeder_combout\);

-- Location: FF_X36_Y13_N17
\SHIP_OFFSET_GEN|U2|U0|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[7]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(7));

-- Location: LCCOMB_X36_Y13_N20
\SHIP_OFFSET_GEN|U2|U0|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\ & (!\SHIP_OFFSET_GEN|U2|U0|address\(6) & (!\SHIP_OFFSET_GEN|U2|U0|address\(5) & !\SHIP_OFFSET_GEN|U2|U0|address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|u0|rx_valid~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|address\(6),
	datac => \SHIP_OFFSET_GEN|U2|U0|address\(5),
	datad => \SHIP_OFFSET_GEN|U2|U0|address\(7),
	combout => \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\);

-- Location: LCCOMB_X36_Y13_N4
\SHIP_OFFSET_GEN|U2|U0|address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[1]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(1),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[1]~feeder_combout\);

-- Location: FF_X36_Y13_N5
\SHIP_OFFSET_GEN|U2|U0|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[1]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(1));

-- Location: LCCOMB_X36_Y13_N18
\SHIP_OFFSET_GEN|U2|U0|address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|address[0]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|current_instruction.immediate\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|address[0]~feeder_combout\);

-- Location: FF_X36_Y13_N19
\SHIP_OFFSET_GEN|U2|U0|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|address[0]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|address\(0));

-- Location: LCCOMB_X36_Y13_N12
\SHIP_OFFSET_GEN|U2|U0|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|address\(1) & !\SHIP_OFFSET_GEN|U2|U0|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|address\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|address\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\);

-- Location: FF_X42_Y15_N19
\SHIP_OFFSET_GEN|U2|U0|memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\);

-- Location: FF_X42_Y15_N21
\SHIP_OFFSET_GEN|U2|U0|memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\);

-- Location: LCCOMB_X43_Y15_N8
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(5),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]~feeder_combout\);

-- Location: FF_X43_Y15_N9
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[6]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(6));

-- Location: FF_X42_Y15_N23
\SHIP_OFFSET_GEN|U2|U0|memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\);

-- Location: LCCOMB_X43_Y15_N30
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(6),
	combout => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]~feeder_combout\);

-- Location: FF_X43_Y15_N31
\SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[7]~feeder_combout\,
	ena => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(7));

-- Location: FF_X42_Y15_N13
\SHIP_OFFSET_GEN|U2|U0|memory[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\);

-- Location: LCCOMB_X42_Y15_N24
\SHIP_OFFSET_GEN|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Equal1~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & !\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	combout => \SHIP_OFFSET_GEN|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y13_N22
\SHIP_OFFSET_GEN|U2|U0|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\ & \SHIP_OFFSET_GEN|U2|U0|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\,
	datad => \SHIP_OFFSET_GEN|U2|U0|address\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\);

-- Location: LCCOMB_X36_Y13_N24
\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|address\(1) & (\SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3))) # (!\SHIP_OFFSET_GEN|U2|U0|address\(1) & 
-- ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))) # (!\SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|address\(1),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0_combout\);

-- Location: LCCOMB_X35_Y13_N4
\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~0_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~feeder_combout\);

-- Location: FF_X35_Y13_N5
\SHIP_OFFSET_GEN|U2|U0|memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\);

-- Location: FF_X40_Y14_N31
\SHIP_OFFSET_GEN|y_clk_divider:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|Add2~62_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[31]~q\);

-- Location: LCCOMB_X39_Y14_N2
\SHIP_OFFSET_GEN|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~3_combout\ = (\SHIP_OFFSET_GEN|Add2~16_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~16_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~3_combout\);

-- Location: FF_X39_Y14_N3
\SHIP_OFFSET_GEN|y_clk_divider:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~3_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\);

-- Location: LCCOMB_X40_Y15_N0
\SHIP_OFFSET_GEN|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~0_combout\ = \SHIP_OFFSET_GEN|y_clk_divider:count[0]~q\ $ (VCC)
-- \SHIP_OFFSET_GEN|Add2~1\ = CARRY(\SHIP_OFFSET_GEN|y_clk_divider:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[0]~q\,
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|Add2~0_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~1\);

-- Location: LCCOMB_X39_Y15_N0
\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	combout => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\);

-- Location: LCCOMB_X39_Y15_N8
\SHIP_OFFSET_GEN|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~1_combout\ = (\SHIP_OFFSET_GEN|Add2~20_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~20_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~1_combout\);

-- Location: FF_X39_Y15_N9
\SHIP_OFFSET_GEN|y_clk_divider:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~1_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\);

-- Location: LCCOMB_X40_Y15_N16
\SHIP_OFFSET_GEN|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~16_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\ & (\SHIP_OFFSET_GEN|Add2~15\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\ & (!\SHIP_OFFSET_GEN|Add2~15\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~17\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\ & !\SHIP_OFFSET_GEN|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[8]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~15\,
	combout => \SHIP_OFFSET_GEN|Add2~16_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~17\);

-- Location: LCCOMB_X40_Y15_N18
\SHIP_OFFSET_GEN|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~18_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\ & (!\SHIP_OFFSET_GEN|Add2~17\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\ & ((\SHIP_OFFSET_GEN|Add2~17\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~19\ = CARRY((!\SHIP_OFFSET_GEN|Add2~17\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~17\,
	combout => \SHIP_OFFSET_GEN|Add2~18_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~19\);

-- Location: LCCOMB_X39_Y14_N22
\SHIP_OFFSET_GEN|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~2_combout\ = (\SHIP_OFFSET_GEN|Add2~18_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~18_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~2_combout\);

-- Location: FF_X39_Y14_N23
\SHIP_OFFSET_GEN|y_clk_divider:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~2_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[9]~q\);

-- Location: LCCOMB_X40_Y15_N20
\SHIP_OFFSET_GEN|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~20_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\ & (\SHIP_OFFSET_GEN|Add2~19\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\ & (!\SHIP_OFFSET_GEN|Add2~19\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~21\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\ & !\SHIP_OFFSET_GEN|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[10]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~19\,
	combout => \SHIP_OFFSET_GEN|Add2~20_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~21\);

-- Location: LCCOMB_X42_Y15_N12
\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & ((!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	combout => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X42_Y15_N26
\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\) # (\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & ((!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & 
-- \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	combout => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X39_Y15_N10
\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	combout => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X42_Y15_N20
\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & !\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X39_Y15_N4
\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ $ (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	combout => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\);

-- Location: LCCOMB_X39_Y15_N2
\SHIP_OFFSET_GEN|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~4_combout\ = (\SHIP_OFFSET_GEN|Add2~0_combout\) # (\SHIP_OFFSET_GEN|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~0_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~4_combout\);

-- Location: LCCOMB_X39_Y15_N12
\SHIP_OFFSET_GEN|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~1_cout\ = CARRY(\SHIP_OFFSET_GEN|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|LessThan2~4_combout\,
	datad => VCC,
	cout => \SHIP_OFFSET_GEN|LessThan3~1_cout\);

-- Location: LCCOMB_X39_Y15_N14
\SHIP_OFFSET_GEN|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~3_cout\ = CARRY((\SHIP_OFFSET_GEN|Add2~4_combout\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & !\SHIP_OFFSET_GEN|LessThan3~1_cout\)) # (!\SHIP_OFFSET_GEN|Add2~4_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\) # 
-- (!\SHIP_OFFSET_GEN|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~4_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~1_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~3_cout\);

-- Location: LCCOMB_X39_Y15_N16
\SHIP_OFFSET_GEN|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~5_cout\ = CARRY((\SHIP_OFFSET_GEN|Add2~6_combout\ & ((!\SHIP_OFFSET_GEN|LessThan3~3_cout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))) # (!\SHIP_OFFSET_GEN|Add2~6_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & 
-- !\SHIP_OFFSET_GEN|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~6_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~3_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~5_cout\);

-- Location: LCCOMB_X39_Y15_N18
\SHIP_OFFSET_GEN|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~7_cout\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & ((!\SHIP_OFFSET_GEN|LessThan3~5_cout\) # (!\SHIP_OFFSET_GEN|Add2~8_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & (!\SHIP_OFFSET_GEN|Add2~8_combout\ & 
-- !\SHIP_OFFSET_GEN|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datab => \SHIP_OFFSET_GEN|Add2~8_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~5_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~7_cout\);

-- Location: LCCOMB_X39_Y15_N20
\SHIP_OFFSET_GEN|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~9_cout\ = CARRY((\SHIP_OFFSET_GEN|Add2~10_combout\ & ((!\SHIP_OFFSET_GEN|LessThan3~7_cout\) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\))) # (!\SHIP_OFFSET_GEN|Add2~10_combout\ & 
-- (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\ & !\SHIP_OFFSET_GEN|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~10_combout\,
	datab => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~7_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~9_cout\);

-- Location: LCCOMB_X39_Y15_N22
\SHIP_OFFSET_GEN|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~11_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ & ((!\SHIP_OFFSET_GEN|LessThan3~9_cout\) # (!\SHIP_OFFSET_GEN|Add2~12_combout\))) # (!\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ & 
-- (!\SHIP_OFFSET_GEN|Add2~12_combout\ & !\SHIP_OFFSET_GEN|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~12_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~9_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~11_cout\);

-- Location: LCCOMB_X39_Y15_N24
\SHIP_OFFSET_GEN|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~13_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\ & (\SHIP_OFFSET_GEN|Add2~14_combout\ & !\SHIP_OFFSET_GEN|LessThan3~11_cout\)) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\ & 
-- ((\SHIP_OFFSET_GEN|Add2~14_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][7]~2_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~14_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~11_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~13_cout\);

-- Location: LCCOMB_X39_Y15_N26
\SHIP_OFFSET_GEN|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~15_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\ & ((!\SHIP_OFFSET_GEN|LessThan3~13_cout\) # (!\SHIP_OFFSET_GEN|Add2~16_combout\))) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\ & 
-- (!\SHIP_OFFSET_GEN|Add2~16_combout\ & !\SHIP_OFFSET_GEN|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][8]~1_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~16_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~13_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~15_cout\);

-- Location: LCCOMB_X39_Y15_N28
\SHIP_OFFSET_GEN|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~17_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & (\SHIP_OFFSET_GEN|Add2~18_combout\ & !\SHIP_OFFSET_GEN|LessThan3~15_cout\)) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & 
-- ((\SHIP_OFFSET_GEN|Add2~18_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\,
	datab => \SHIP_OFFSET_GEN|Add2~18_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan3~15_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan3~17_cout\);

-- Location: LCCOMB_X39_Y15_N30
\SHIP_OFFSET_GEN|LessThan3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~18_combout\ = (\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\ & (\SHIP_OFFSET_GEN|LessThan3~17_cout\ & \SHIP_OFFSET_GEN|Add2~20_combout\)) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\ & 
-- ((\SHIP_OFFSET_GEN|LessThan3~17_cout\) # (\SHIP_OFFSET_GEN|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][10]~0_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~20_combout\,
	cin => \SHIP_OFFSET_GEN|LessThan3~17_cout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~18_combout\);

-- Location: LCCOMB_X41_Y15_N4
\SHIP_OFFSET_GEN|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~0_combout\ = (\SHIP_OFFSET_GEN|Add2~22_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add2~22_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~0_combout\);

-- Location: FF_X41_Y15_N5
\SHIP_OFFSET_GEN|y_clk_divider:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~0_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\);

-- Location: LCCOMB_X40_Y15_N22
\SHIP_OFFSET_GEN|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~22_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\ & (!\SHIP_OFFSET_GEN|Add2~21\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\ & ((\SHIP_OFFSET_GEN|Add2~21\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~23\ = CARRY((!\SHIP_OFFSET_GEN|Add2~21\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[11]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~21\,
	combout => \SHIP_OFFSET_GEN|Add2~22_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~23\);

-- Location: LCCOMB_X40_Y15_N24
\SHIP_OFFSET_GEN|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~24_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\ & (\SHIP_OFFSET_GEN|Add2~23\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\ & (!\SHIP_OFFSET_GEN|Add2~23\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~25\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\ & !\SHIP_OFFSET_GEN|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~23\,
	combout => \SHIP_OFFSET_GEN|Add2~24_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~25\);

-- Location: LCCOMB_X42_Y14_N24
\SHIP_OFFSET_GEN|count~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~37_combout\ = (\SHIP_OFFSET_GEN|Add2~24_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~24_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~37_combout\);

-- Location: LCCOMB_X42_Y14_N12
\SHIP_OFFSET_GEN|count~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~38_combout\ = (\SHIP_OFFSET_GEN|count~37_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (\SHIP_OFFSET_GEN|Add2~62_combout\)) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|count~37_combout\,
	combout => \SHIP_OFFSET_GEN|count~38_combout\);

-- Location: FF_X42_Y14_N13
\SHIP_OFFSET_GEN|y_clk_divider:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~38_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[12]~q\);

-- Location: LCCOMB_X40_Y15_N26
\SHIP_OFFSET_GEN|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~26_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\ & (!\SHIP_OFFSET_GEN|Add2~25\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\ & ((\SHIP_OFFSET_GEN|Add2~25\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~27\ = CARRY((!\SHIP_OFFSET_GEN|Add2~25\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~25\,
	combout => \SHIP_OFFSET_GEN|Add2~26_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~27\);

-- Location: LCCOMB_X42_Y14_N30
\SHIP_OFFSET_GEN|count~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~35_combout\ = (\SHIP_OFFSET_GEN|Add2~26_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((!\SHIP_OFFSET_GEN|LessThan3~26_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~26_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~35_combout\);

-- Location: LCCOMB_X42_Y14_N14
\SHIP_OFFSET_GEN|count~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~36_combout\ = (\SHIP_OFFSET_GEN|count~35_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|count~35_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	combout => \SHIP_OFFSET_GEN|count~36_combout\);

-- Location: FF_X42_Y14_N15
\SHIP_OFFSET_GEN|y_clk_divider:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~36_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[13]~q\);

-- Location: LCCOMB_X40_Y15_N28
\SHIP_OFFSET_GEN|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~28_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\ & (\SHIP_OFFSET_GEN|Add2~27\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\ & (!\SHIP_OFFSET_GEN|Add2~27\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~29\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\ & !\SHIP_OFFSET_GEN|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~27\,
	combout => \SHIP_OFFSET_GEN|Add2~28_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~29\);

-- Location: LCCOMB_X39_Y14_N28
\SHIP_OFFSET_GEN|count~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~34_combout\ = (\SHIP_OFFSET_GEN|Add2~28_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~28_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~34_combout\);

-- Location: FF_X39_Y14_N29
\SHIP_OFFSET_GEN|y_clk_divider:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~34_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[14]~q\);

-- Location: LCCOMB_X40_Y15_N30
\SHIP_OFFSET_GEN|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~30_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\ & (!\SHIP_OFFSET_GEN|Add2~29\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\ & ((\SHIP_OFFSET_GEN|Add2~29\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~31\ = CARRY((!\SHIP_OFFSET_GEN|Add2~29\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~29\,
	combout => \SHIP_OFFSET_GEN|Add2~30_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~31\);

-- Location: LCCOMB_X41_Y14_N16
\SHIP_OFFSET_GEN|count~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~33_combout\ = (\SHIP_OFFSET_GEN|Add2~30_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~30_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~33_combout\);

-- Location: FF_X41_Y14_N17
\SHIP_OFFSET_GEN|y_clk_divider:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~33_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[15]~q\);

-- Location: LCCOMB_X40_Y14_N0
\SHIP_OFFSET_GEN|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~32_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\ & (\SHIP_OFFSET_GEN|Add2~31\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\ & (!\SHIP_OFFSET_GEN|Add2~31\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~33\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\ & !\SHIP_OFFSET_GEN|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~31\,
	combout => \SHIP_OFFSET_GEN|Add2~32_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~33\);

-- Location: LCCOMB_X41_Y14_N10
\SHIP_OFFSET_GEN|count~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~32_combout\ = (\SHIP_OFFSET_GEN|Add2~32_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~32_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~32_combout\);

-- Location: FF_X41_Y14_N11
\SHIP_OFFSET_GEN|y_clk_divider:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~32_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[16]~q\);

-- Location: LCCOMB_X40_Y14_N2
\SHIP_OFFSET_GEN|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~34_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\ & (!\SHIP_OFFSET_GEN|Add2~33\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\ & ((\SHIP_OFFSET_GEN|Add2~33\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~35\ = CARRY((!\SHIP_OFFSET_GEN|Add2~33\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~33\,
	combout => \SHIP_OFFSET_GEN|Add2~34_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~35\);

-- Location: LCCOMB_X39_Y14_N12
\SHIP_OFFSET_GEN|count~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~31_combout\ = (\SHIP_OFFSET_GEN|Add2~34_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~34_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~31_combout\);

-- Location: FF_X39_Y14_N13
\SHIP_OFFSET_GEN|y_clk_divider:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~31_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[17]~q\);

-- Location: LCCOMB_X40_Y14_N4
\SHIP_OFFSET_GEN|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~36_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\ & (\SHIP_OFFSET_GEN|Add2~35\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\ & (!\SHIP_OFFSET_GEN|Add2~35\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~37\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\ & !\SHIP_OFFSET_GEN|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~35\,
	combout => \SHIP_OFFSET_GEN|Add2~36_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~37\);

-- Location: LCCOMB_X41_Y14_N26
\SHIP_OFFSET_GEN|count~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~29_combout\ = (\SHIP_OFFSET_GEN|Add2~36_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~36_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~29_combout\);

-- Location: LCCOMB_X41_Y14_N24
\SHIP_OFFSET_GEN|count~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~30_combout\ = (\SHIP_OFFSET_GEN|count~29_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (\SHIP_OFFSET_GEN|Add2~62_combout\)) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|count~29_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|Add2~62_combout\,
	combout => \SHIP_OFFSET_GEN|count~30_combout\);

-- Location: FF_X41_Y14_N25
\SHIP_OFFSET_GEN|y_clk_divider:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~30_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[18]~q\);

-- Location: LCCOMB_X40_Y14_N6
\SHIP_OFFSET_GEN|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~38_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\ & (!\SHIP_OFFSET_GEN|Add2~37\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\ & ((\SHIP_OFFSET_GEN|Add2~37\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~39\ = CARRY((!\SHIP_OFFSET_GEN|Add2~37\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~37\,
	combout => \SHIP_OFFSET_GEN|Add2~38_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~39\);

-- Location: LCCOMB_X42_Y14_N4
\SHIP_OFFSET_GEN|count~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~27_combout\ = (\SHIP_OFFSET_GEN|Add2~38_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~38_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~27_combout\);

-- Location: LCCOMB_X42_Y14_N16
\SHIP_OFFSET_GEN|count~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~28_combout\ = (\SHIP_OFFSET_GEN|count~27_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|count~27_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	combout => \SHIP_OFFSET_GEN|count~28_combout\);

-- Location: FF_X42_Y14_N17
\SHIP_OFFSET_GEN|y_clk_divider:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~28_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[19]~q\);

-- Location: LCCOMB_X40_Y14_N8
\SHIP_OFFSET_GEN|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~40_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\ & (\SHIP_OFFSET_GEN|Add2~39\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\ & (!\SHIP_OFFSET_GEN|Add2~39\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~41\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\ & !\SHIP_OFFSET_GEN|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~39\,
	combout => \SHIP_OFFSET_GEN|Add2~40_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~41\);

-- Location: LCCOMB_X39_Y14_N6
\SHIP_OFFSET_GEN|count~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~26_combout\ = (\SHIP_OFFSET_GEN|Add2~40_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~40_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~26_combout\);

-- Location: FF_X39_Y14_N7
\SHIP_OFFSET_GEN|y_clk_divider:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~26_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[20]~q\);

-- Location: LCCOMB_X40_Y14_N10
\SHIP_OFFSET_GEN|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~42_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\ & (!\SHIP_OFFSET_GEN|Add2~41\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\ & ((\SHIP_OFFSET_GEN|Add2~41\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~43\ = CARRY((!\SHIP_OFFSET_GEN|Add2~41\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~41\,
	combout => \SHIP_OFFSET_GEN|Add2~42_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~43\);

-- Location: LCCOMB_X42_Y14_N18
\SHIP_OFFSET_GEN|count~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~25_combout\ = (!\SHIP_OFFSET_GEN|y_counter_clk~0_combout\ & \SHIP_OFFSET_GEN|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~42_combout\,
	combout => \SHIP_OFFSET_GEN|count~25_combout\);

-- Location: FF_X42_Y14_N19
\SHIP_OFFSET_GEN|y_clk_divider:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~25_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[21]~q\);

-- Location: LCCOMB_X40_Y14_N12
\SHIP_OFFSET_GEN|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~44_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\ & (\SHIP_OFFSET_GEN|Add2~43\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\ & (!\SHIP_OFFSET_GEN|Add2~43\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~45\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\ & !\SHIP_OFFSET_GEN|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~43\,
	combout => \SHIP_OFFSET_GEN|Add2~44_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~45\);

-- Location: LCCOMB_X39_Y14_N24
\SHIP_OFFSET_GEN|count~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~24_combout\ = (\SHIP_OFFSET_GEN|Add2~44_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~44_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~24_combout\);

-- Location: FF_X39_Y14_N25
\SHIP_OFFSET_GEN|y_clk_divider:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~24_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[22]~q\);

-- Location: LCCOMB_X40_Y14_N14
\SHIP_OFFSET_GEN|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~46_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\ & (!\SHIP_OFFSET_GEN|Add2~45\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\ & ((\SHIP_OFFSET_GEN|Add2~45\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~47\ = CARRY((!\SHIP_OFFSET_GEN|Add2~45\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~45\,
	combout => \SHIP_OFFSET_GEN|Add2~46_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~47\);

-- Location: LCCOMB_X39_Y14_N18
\SHIP_OFFSET_GEN|count~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~23_combout\ = (\SHIP_OFFSET_GEN|Add2~46_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~46_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~23_combout\);

-- Location: FF_X39_Y14_N19
\SHIP_OFFSET_GEN|y_clk_divider:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~23_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[23]~q\);

-- Location: LCCOMB_X40_Y14_N16
\SHIP_OFFSET_GEN|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~48_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\ & (\SHIP_OFFSET_GEN|Add2~47\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\ & (!\SHIP_OFFSET_GEN|Add2~47\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~49\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\ & !\SHIP_OFFSET_GEN|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~47\,
	combout => \SHIP_OFFSET_GEN|Add2~48_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~49\);

-- Location: LCCOMB_X39_Y14_N8
\SHIP_OFFSET_GEN|count~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~22_combout\ = (\SHIP_OFFSET_GEN|Add2~48_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add2~48_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~22_combout\);

-- Location: FF_X39_Y14_N9
\SHIP_OFFSET_GEN|y_clk_divider:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~22_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[24]~q\);

-- Location: LCCOMB_X40_Y14_N18
\SHIP_OFFSET_GEN|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~50_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\ & (!\SHIP_OFFSET_GEN|Add2~49\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\ & ((\SHIP_OFFSET_GEN|Add2~49\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~51\ = CARRY((!\SHIP_OFFSET_GEN|Add2~49\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~49\,
	combout => \SHIP_OFFSET_GEN|Add2~50_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~51\);

-- Location: LCCOMB_X42_Y14_N22
\SHIP_OFFSET_GEN|count~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~20_combout\ = (\SHIP_OFFSET_GEN|Add2~50_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|Add2~50_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~20_combout\);

-- Location: LCCOMB_X42_Y14_N28
\SHIP_OFFSET_GEN|count~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~21_combout\ = (\SHIP_OFFSET_GEN|count~20_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|count~20_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	combout => \SHIP_OFFSET_GEN|count~21_combout\);

-- Location: FF_X42_Y14_N29
\SHIP_OFFSET_GEN|y_clk_divider:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~21_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[25]~q\);

-- Location: LCCOMB_X40_Y14_N20
\SHIP_OFFSET_GEN|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~52_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\ & (\SHIP_OFFSET_GEN|Add2~51\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\ & (!\SHIP_OFFSET_GEN|Add2~51\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~53\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\ & !\SHIP_OFFSET_GEN|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~51\,
	combout => \SHIP_OFFSET_GEN|Add2~52_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~53\);

-- Location: LCCOMB_X39_Y14_N10
\SHIP_OFFSET_GEN|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~19_combout\ = (\SHIP_OFFSET_GEN|Add2~52_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~52_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~19_combout\);

-- Location: FF_X39_Y14_N11
\SHIP_OFFSET_GEN|y_clk_divider:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~19_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[26]~q\);

-- Location: LCCOMB_X40_Y14_N22
\SHIP_OFFSET_GEN|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~54_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\ & (!\SHIP_OFFSET_GEN|Add2~53\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\ & ((\SHIP_OFFSET_GEN|Add2~53\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~55\ = CARRY((!\SHIP_OFFSET_GEN|Add2~53\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~53\,
	combout => \SHIP_OFFSET_GEN|Add2~54_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~55\);

-- Location: LCCOMB_X39_Y14_N14
\SHIP_OFFSET_GEN|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~18_combout\ = (\SHIP_OFFSET_GEN|Add2~54_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add2~54_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~18_combout\);

-- Location: FF_X39_Y14_N15
\SHIP_OFFSET_GEN|y_clk_divider:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~18_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[27]~q\);

-- Location: LCCOMB_X40_Y14_N24
\SHIP_OFFSET_GEN|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~56_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\ & (\SHIP_OFFSET_GEN|Add2~55\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\ & (!\SHIP_OFFSET_GEN|Add2~55\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~57\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\ & !\SHIP_OFFSET_GEN|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~55\,
	combout => \SHIP_OFFSET_GEN|Add2~56_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~57\);

-- Location: LCCOMB_X41_Y14_N30
\SHIP_OFFSET_GEN|LessThan3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~20_combout\ = (!\SHIP_OFFSET_GEN|Add2~32_combout\ & (!\SHIP_OFFSET_GEN|Add2~34_combout\ & (!\SHIP_OFFSET_GEN|Add2~36_combout\ & !\SHIP_OFFSET_GEN|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~32_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~34_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~36_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~30_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~20_combout\);

-- Location: LCCOMB_X41_Y14_N8
\SHIP_OFFSET_GEN|LessThan3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~21_combout\ = (!\SHIP_OFFSET_GEN|Add2~40_combout\ & (!\SHIP_OFFSET_GEN|Add2~38_combout\ & (!\SHIP_OFFSET_GEN|Add2~42_combout\ & !\SHIP_OFFSET_GEN|Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~40_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~38_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~42_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~44_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~21_combout\);

-- Location: LCCOMB_X41_Y14_N14
\SHIP_OFFSET_GEN|LessThan3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~22_combout\ = (\SHIP_OFFSET_GEN|Add2~48_combout\) # ((\SHIP_OFFSET_GEN|Add2~26_combout\) # ((\SHIP_OFFSET_GEN|Add2~28_combout\) # (\SHIP_OFFSET_GEN|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~48_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~26_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~28_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~50_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~22_combout\);

-- Location: LCCOMB_X41_Y14_N20
\SHIP_OFFSET_GEN|LessThan3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~23_combout\ = (\SHIP_OFFSET_GEN|Add2~46_combout\) # ((\SHIP_OFFSET_GEN|Add2~54_combout\) # ((\SHIP_OFFSET_GEN|Add2~24_combout\) # (\SHIP_OFFSET_GEN|Add2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~46_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~54_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~24_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~52_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~23_combout\);

-- Location: LCCOMB_X41_Y14_N6
\SHIP_OFFSET_GEN|LessThan3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~24_combout\ = (\SHIP_OFFSET_GEN|LessThan3~20_combout\ & (\SHIP_OFFSET_GEN|LessThan3~21_combout\ & (!\SHIP_OFFSET_GEN|LessThan3~22_combout\ & !\SHIP_OFFSET_GEN|LessThan3~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan3~20_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan3~21_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan3~22_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~23_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~24_combout\);

-- Location: LCCOMB_X41_Y14_N28
\SHIP_OFFSET_GEN|LessThan3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~25_combout\ = (!\SHIP_OFFSET_GEN|Add2~58_combout\ & (!\SHIP_OFFSET_GEN|Add2~60_combout\ & (!\SHIP_OFFSET_GEN|Add2~56_combout\ & \SHIP_OFFSET_GEN|LessThan3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~58_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~60_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~56_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~24_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~25_combout\);

-- Location: LCCOMB_X41_Y14_N2
\SHIP_OFFSET_GEN|LessThan3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan3~26_combout\ = (\SHIP_OFFSET_GEN|LessThan3~18_combout\) # ((\SHIP_OFFSET_GEN|Add2~22_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan3~18_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~22_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~25_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan3~26_combout\);

-- Location: LCCOMB_X42_Y14_N6
\SHIP_OFFSET_GEN|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~14_combout\ = (\SHIP_OFFSET_GEN|Add2~0_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~14_combout\);

-- Location: LCCOMB_X41_Y14_N18
\SHIP_OFFSET_GEN|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~15_combout\ = (\SHIP_OFFSET_GEN|count~14_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|count~14_combout\,
	combout => \SHIP_OFFSET_GEN|count~15_combout\);

-- Location: FF_X41_Y14_N19
\SHIP_OFFSET_GEN|y_clk_divider:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~15_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[0]~q\);

-- Location: LCCOMB_X40_Y15_N2
\SHIP_OFFSET_GEN|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~2_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\ & (!\SHIP_OFFSET_GEN|Add2~1\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\ & ((\SHIP_OFFSET_GEN|Add2~1\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~3\ = CARRY((!\SHIP_OFFSET_GEN|Add2~1\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~1\,
	combout => \SHIP_OFFSET_GEN|Add2~2_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~3\);

-- Location: LCCOMB_X39_Y15_N6
\SHIP_OFFSET_GEN|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~13_combout\ = (\SHIP_OFFSET_GEN|Add2~2_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~2_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~13_combout\);

-- Location: FF_X39_Y15_N7
\SHIP_OFFSET_GEN|y_clk_divider:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~13_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[1]~q\);

-- Location: LCCOMB_X40_Y15_N4
\SHIP_OFFSET_GEN|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~4_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\ & (\SHIP_OFFSET_GEN|Add2~3\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\ & (!\SHIP_OFFSET_GEN|Add2~3\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~5\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\ & !\SHIP_OFFSET_GEN|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~3\,
	combout => \SHIP_OFFSET_GEN|Add2~4_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~5\);

-- Location: LCCOMB_X41_Y15_N20
\SHIP_OFFSET_GEN|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~12_combout\ = (\SHIP_OFFSET_GEN|Add2~4_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~4_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~12_combout\);

-- Location: FF_X41_Y15_N21
\SHIP_OFFSET_GEN|y_clk_divider:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~12_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[2]~q\);

-- Location: LCCOMB_X40_Y15_N6
\SHIP_OFFSET_GEN|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~6_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\ & (!\SHIP_OFFSET_GEN|Add2~5\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\ & ((\SHIP_OFFSET_GEN|Add2~5\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~7\ = CARRY((!\SHIP_OFFSET_GEN|Add2~5\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~5\,
	combout => \SHIP_OFFSET_GEN|Add2~6_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~7\);

-- Location: LCCOMB_X41_Y15_N22
\SHIP_OFFSET_GEN|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~11_combout\ = (\SHIP_OFFSET_GEN|Add2~6_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~6_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~11_combout\);

-- Location: FF_X41_Y15_N23
\SHIP_OFFSET_GEN|y_clk_divider:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~11_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[3]~q\);

-- Location: LCCOMB_X40_Y15_N8
\SHIP_OFFSET_GEN|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~8_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\ & (\SHIP_OFFSET_GEN|Add2~7\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\ & (!\SHIP_OFFSET_GEN|Add2~7\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~9\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\ & !\SHIP_OFFSET_GEN|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~7\,
	combout => \SHIP_OFFSET_GEN|Add2~8_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~9\);

-- Location: LCCOMB_X41_Y15_N0
\SHIP_OFFSET_GEN|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~9_combout\ = (\SHIP_OFFSET_GEN|Add2~8_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((!\SHIP_OFFSET_GEN|LessThan3~26_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~8_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~9_combout\);

-- Location: LCCOMB_X41_Y15_N28
\SHIP_OFFSET_GEN|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~10_combout\ = (\SHIP_OFFSET_GEN|count~9_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datad => \SHIP_OFFSET_GEN|count~9_combout\,
	combout => \SHIP_OFFSET_GEN|count~10_combout\);

-- Location: FF_X41_Y15_N29
\SHIP_OFFSET_GEN|y_clk_divider:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~10_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[4]~q\);

-- Location: LCCOMB_X40_Y15_N10
\SHIP_OFFSET_GEN|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~10_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\ & (!\SHIP_OFFSET_GEN|Add2~9\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\ & ((\SHIP_OFFSET_GEN|Add2~9\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~11\ = CARRY((!\SHIP_OFFSET_GEN|Add2~9\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~9\,
	combout => \SHIP_OFFSET_GEN|Add2~10_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~11\);

-- Location: LCCOMB_X41_Y14_N4
\SHIP_OFFSET_GEN|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~8_combout\ = (\SHIP_OFFSET_GEN|Add2~10_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add2~10_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~8_combout\);

-- Location: FF_X41_Y14_N5
\SHIP_OFFSET_GEN|y_clk_divider:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~8_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[5]~q\);

-- Location: LCCOMB_X40_Y15_N12
\SHIP_OFFSET_GEN|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~12_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\ & (\SHIP_OFFSET_GEN|Add2~11\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\ & (!\SHIP_OFFSET_GEN|Add2~11\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~13\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\ & !\SHIP_OFFSET_GEN|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~11\,
	combout => \SHIP_OFFSET_GEN|Add2~12_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~13\);

-- Location: LCCOMB_X42_Y14_N8
\SHIP_OFFSET_GEN|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~6_combout\ = (\SHIP_OFFSET_GEN|Add2~12_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((!\SHIP_OFFSET_GEN|LessThan3~26_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~12_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~6_combout\);

-- Location: LCCOMB_X42_Y14_N0
\SHIP_OFFSET_GEN|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~7_combout\ = (\SHIP_OFFSET_GEN|count~6_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|count~6_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	combout => \SHIP_OFFSET_GEN|count~7_combout\);

-- Location: FF_X42_Y14_N1
\SHIP_OFFSET_GEN|y_clk_divider:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~7_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[6]~q\);

-- Location: LCCOMB_X40_Y15_N14
\SHIP_OFFSET_GEN|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~14_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\ & (!\SHIP_OFFSET_GEN|Add2~13\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\ & ((\SHIP_OFFSET_GEN|Add2~13\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~15\ = CARRY((!\SHIP_OFFSET_GEN|Add2~13\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~13\,
	combout => \SHIP_OFFSET_GEN|Add2~14_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~15\);

-- Location: LCCOMB_X41_Y15_N2
\SHIP_OFFSET_GEN|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~4_combout\ = (\SHIP_OFFSET_GEN|Add2~14_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((!\SHIP_OFFSET_GEN|LessThan3~26_combout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~14_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~4_combout\);

-- Location: LCCOMB_X41_Y15_N26
\SHIP_OFFSET_GEN|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~5_combout\ = (\SHIP_OFFSET_GEN|count~4_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datad => \SHIP_OFFSET_GEN|count~4_combout\,
	combout => \SHIP_OFFSET_GEN|count~5_combout\);

-- Location: FF_X41_Y15_N27
\SHIP_OFFSET_GEN|y_clk_divider:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~5_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[7]~q\);

-- Location: LCCOMB_X42_Y15_N18
\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & (((!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ $ (((!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\);

-- Location: LCCOMB_X42_Y15_N22
\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X42_Y15_N0
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ & (\SHIP_OFFSET_GEN|Equal1~0_combout\ $ (VCC))) # (!\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ & 
-- (\SHIP_OFFSET_GEN|Equal1~0_combout\ & VCC))
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\ & \SHIP_OFFSET_GEN|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][6]~0_combout\,
	datab => \SHIP_OFFSET_GEN|Equal1~0_combout\,
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X42_Y15_N2
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\ & ((\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][7]~3_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X42_Y15_N4
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\ & !\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][8]~2_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X41_Y15_N18
\SHIP_OFFSET_GEN|LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~8_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ $ (((!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\) # (\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	combout => \SHIP_OFFSET_GEN|LessThan2~8_combout\);

-- Location: LCCOMB_X41_Y15_N14
\SHIP_OFFSET_GEN|LessThan2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~10_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & 
-- \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	combout => \SHIP_OFFSET_GEN|LessThan2~10_combout\);

-- Location: LCCOMB_X41_Y15_N10
\SHIP_OFFSET_GEN|LessThan2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~18_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & (\SHIP_OFFSET_GEN|Add2~4_combout\ & ((\SHIP_OFFSET_GEN|Add2~0_combout\) # (\SHIP_OFFSET_GEN|Add2~2_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ & 
-- ((\SHIP_OFFSET_GEN|Add2~0_combout\) # ((\SHIP_OFFSET_GEN|Add2~4_combout\) # (\SHIP_OFFSET_GEN|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~4_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~18_combout\);

-- Location: LCCOMB_X41_Y15_N24
\SHIP_OFFSET_GEN|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~9_combout\ = (\SHIP_OFFSET_GEN|Add2~6_combout\ & ((\SHIP_OFFSET_GEN|LessThan2~18_combout\) # (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ $ (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))) # (!\SHIP_OFFSET_GEN|Add2~6_combout\ & 
-- (\SHIP_OFFSET_GEN|LessThan2~18_combout\ & (\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\ $ (!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~6_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~18_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~9_combout\);

-- Location: LCCOMB_X41_Y15_N8
\SHIP_OFFSET_GEN|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~11_combout\ = (\SHIP_OFFSET_GEN|Add2~8_combout\ & ((\SHIP_OFFSET_GEN|LessThan2~9_combout\) # (\SHIP_OFFSET_GEN|Add2~10_combout\ $ (!\SHIP_OFFSET_GEN|LessThan2~10_combout\)))) # (!\SHIP_OFFSET_GEN|Add2~8_combout\ & 
-- (\SHIP_OFFSET_GEN|LessThan2~9_combout\ & (\SHIP_OFFSET_GEN|Add2~10_combout\ $ (!\SHIP_OFFSET_GEN|LessThan2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~10_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan2~10_combout\,
	datac => \SHIP_OFFSET_GEN|Add2~8_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~9_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~11_combout\);

-- Location: LCCOMB_X41_Y15_N16
\SHIP_OFFSET_GEN|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~7_combout\ = (\SHIP_OFFSET_GEN|Add2~14_combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\SHIP_OFFSET_GEN|Add2~12_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)))) # (!\SHIP_OFFSET_GEN|Add2~14_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\SHIP_OFFSET_GEN|Add2~12_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~14_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~12_combout\,
	datac => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~7_combout\);

-- Location: LCCOMB_X41_Y15_N30
\SHIP_OFFSET_GEN|LessThan2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~12_combout\ = (\SHIP_OFFSET_GEN|LessThan2~7_combout\ & ((\SHIP_OFFSET_GEN|Add2~10_combout\ & ((\SHIP_OFFSET_GEN|LessThan2~11_combout\) # (!\SHIP_OFFSET_GEN|LessThan2~8_combout\))) # (!\SHIP_OFFSET_GEN|Add2~10_combout\ & 
-- (!\SHIP_OFFSET_GEN|LessThan2~8_combout\ & \SHIP_OFFSET_GEN|LessThan2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~10_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan2~8_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan2~11_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~7_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~12_combout\);

-- Location: LCCOMB_X41_Y15_N12
\SHIP_OFFSET_GEN|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~13_combout\ = (\SHIP_OFFSET_GEN|Add2~14_combout\ & (((\SHIP_OFFSET_GEN|Add2~12_combout\ & !\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))) # (!\SHIP_OFFSET_GEN|Add2~14_combout\ & (\SHIP_OFFSET_GEN|Add2~12_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- !\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~14_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~12_combout\,
	datac => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~13_combout\);

-- Location: LCCOMB_X41_Y14_N12
\SHIP_OFFSET_GEN|LessThan2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~14_combout\ = (\SHIP_OFFSET_GEN|Add2~16_combout\ & (((\SHIP_OFFSET_GEN|LessThan2~12_combout\) # (\SHIP_OFFSET_GEN|LessThan2~13_combout\)) # (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # 
-- (!\SHIP_OFFSET_GEN|Add2~16_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\SHIP_OFFSET_GEN|LessThan2~12_combout\) # (\SHIP_OFFSET_GEN|LessThan2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~16_combout\,
	datab => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan2~12_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~13_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~14_combout\);

-- Location: LCCOMB_X42_Y15_N6
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\SHIP_OFFSET_GEN|Equal1~0_combout\ & ((\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ & 
-- VCC)) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\SHIP_OFFSET_GEN|Equal1~0_combout\ & ((\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & ((\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\SHIP_OFFSET_GEN|Equal1~0_combout\ & (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\ & !\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\SHIP_OFFSET_GEN|Equal1~0_combout\ & ((!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Equal1~0_combout\,
	datab => \SHIP_OFFSET_GEN|Mult3|mult_core|romout[0][9]~combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X41_Y15_N6
\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & ((!\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\) # (\SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[2][4]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[2][6]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[2][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[2][5]~q\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\);

-- Location: LCCOMB_X42_Y15_N8
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\SHIP_OFFSET_GEN|Equal1~0_combout\ $ (\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\SHIP_OFFSET_GEN|Equal1~0_combout\ & ((\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\) # 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\SHIP_OFFSET_GEN|Equal1~0_combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\ & !\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Equal1~0_combout\,
	datab => \SHIP_OFFSET_GEN|Mult2|mult_core|romout[0][10]~1_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X42_Y15_N10
\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X42_Y15_N16
\SHIP_OFFSET_GEN|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~15_combout\ = (\SHIP_OFFSET_GEN|Add2~20_combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\SHIP_OFFSET_GEN|Add2~22_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)))) # (!\SHIP_OFFSET_GEN|Add2~20_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\SHIP_OFFSET_GEN|Add2~22_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~20_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~22_combout\,
	datac => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~15_combout\);

-- Location: LCCOMB_X42_Y15_N30
\SHIP_OFFSET_GEN|LessThan2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~16_combout\ = (\SHIP_OFFSET_GEN|LessThan2~15_combout\ & (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (!\SHIP_OFFSET_GEN|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~18_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~15_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~16_combout\);

-- Location: LCCOMB_X42_Y15_N28
\SHIP_OFFSET_GEN|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~5_combout\ = (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\SHIP_OFFSET_GEN|Add2~18_combout\ & 
-- \SHIP_OFFSET_GEN|Add2~20_combout\))) # (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\SHIP_OFFSET_GEN|Add2~20_combout\) # ((!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- \SHIP_OFFSET_GEN|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~18_combout\,
	datac => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => \SHIP_OFFSET_GEN|Add2~20_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~5_combout\);

-- Location: LCCOMB_X42_Y15_N14
\SHIP_OFFSET_GEN|LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~6_combout\ = (\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\SHIP_OFFSET_GEN|Add2~22_combout\ & \SHIP_OFFSET_GEN|LessThan2~5_combout\)) # 
-- (!\SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\SHIP_OFFSET_GEN|Add2~22_combout\) # (\SHIP_OFFSET_GEN|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \SHIP_OFFSET_GEN|Add2~22_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~5_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~6_combout\);

-- Location: LCCOMB_X41_Y14_N22
\SHIP_OFFSET_GEN|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan2~17_combout\ = ((\SHIP_OFFSET_GEN|LessThan2~6_combout\) # ((\SHIP_OFFSET_GEN|LessThan2~14_combout\ & \SHIP_OFFSET_GEN|LessThan2~16_combout\))) # (!\SHIP_OFFSET_GEN|LessThan3~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan2~14_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan3~25_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan2~16_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~6_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan2~17_combout\);

-- Location: LCCOMB_X42_Y14_N20
\SHIP_OFFSET_GEN|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~16_combout\ = (\SHIP_OFFSET_GEN|Add2~56_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~56_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~16_combout\);

-- Location: LCCOMB_X42_Y14_N2
\SHIP_OFFSET_GEN|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~17_combout\ = (\SHIP_OFFSET_GEN|count~16_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (\SHIP_OFFSET_GEN|Add2~62_combout\)) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|count~16_combout\,
	combout => \SHIP_OFFSET_GEN|count~17_combout\);

-- Location: FF_X42_Y14_N3
\SHIP_OFFSET_GEN|y_clk_divider:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~17_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[28]~q\);

-- Location: LCCOMB_X40_Y14_N26
\SHIP_OFFSET_GEN|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~58_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\ & (!\SHIP_OFFSET_GEN|Add2~57\)) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\ & ((\SHIP_OFFSET_GEN|Add2~57\) # (GND)))
-- \SHIP_OFFSET_GEN|Add2~59\ = CARRY((!\SHIP_OFFSET_GEN|Add2~57\) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~57\,
	combout => \SHIP_OFFSET_GEN|Add2~58_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~59\);

-- Location: LCCOMB_X39_Y14_N16
\SHIP_OFFSET_GEN|count~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~39_combout\ = (\SHIP_OFFSET_GEN|Add2~58_combout\ & !\SHIP_OFFSET_GEN|y_counter_clk~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add2~58_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|count~39_combout\);

-- Location: FF_X39_Y14_N17
\SHIP_OFFSET_GEN|y_clk_divider:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~39_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[29]~q\);

-- Location: LCCOMB_X40_Y14_N28
\SHIP_OFFSET_GEN|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~60_combout\ = (\SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\ & (\SHIP_OFFSET_GEN|Add2~59\ $ (GND))) # (!\SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\ & (!\SHIP_OFFSET_GEN|Add2~59\ & VCC))
-- \SHIP_OFFSET_GEN|Add2~61\ = CARRY((\SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\ & !\SHIP_OFFSET_GEN|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add2~59\,
	combout => \SHIP_OFFSET_GEN|Add2~60_combout\,
	cout => \SHIP_OFFSET_GEN|Add2~61\);

-- Location: LCCOMB_X42_Y14_N26
\SHIP_OFFSET_GEN|count~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~40_combout\ = (\SHIP_OFFSET_GEN|Add2~60_combout\ & (((\SHIP_OFFSET_GEN|Add2~62_combout\) # (!\SHIP_OFFSET_GEN|LessThan3~26_combout\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~60_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|count~40_combout\);

-- Location: LCCOMB_X42_Y14_N10
\SHIP_OFFSET_GEN|count~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~41_combout\ = (\SHIP_OFFSET_GEN|count~40_combout\ & ((\SHIP_OFFSET_GEN|Add2~62_combout\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (!\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datac => \SHIP_OFFSET_GEN|count~40_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	combout => \SHIP_OFFSET_GEN|count~41_combout\);

-- Location: FF_X42_Y14_N11
\SHIP_OFFSET_GEN|y_clk_divider:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~41_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_clk_divider:count[30]~q\);

-- Location: LCCOMB_X40_Y14_N30
\SHIP_OFFSET_GEN|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add2~62_combout\ = \SHIP_OFFSET_GEN|y_clk_divider:count[31]~q\ $ (\SHIP_OFFSET_GEN|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_clk_divider:count[31]~q\,
	cin => \SHIP_OFFSET_GEN|Add2~61\,
	combout => \SHIP_OFFSET_GEN|Add2~62_combout\);

-- Location: LCCOMB_X41_Y14_N0
\SHIP_OFFSET_GEN|y_counter_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_counter_clk~0_combout\ = (!\SHIP_OFFSET_GEN|Add2~62_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|LessThan3~26_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & 
-- (\SHIP_OFFSET_GEN|LessThan2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|Add2~62_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan2~17_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan3~26_combout\,
	combout => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\);

-- Location: LCCOMB_X39_Y14_N0
\SHIP_OFFSET_GEN|y_counter_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_counter_clk~1_combout\ = \SHIP_OFFSET_GEN|y_counter_clk~q\ $ (((!\SHIP_OFFSET_GEN|Equal1~0_combout\ & \SHIP_OFFSET_GEN|y_counter_clk~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|y_counter_clk~q\,
	datab => \SHIP_OFFSET_GEN|Equal1~0_combout\,
	datad => \SHIP_OFFSET_GEN|y_counter_clk~0_combout\,
	combout => \SHIP_OFFSET_GEN|y_counter_clk~1_combout\);

-- Location: LCCOMB_X39_Y14_N30
\SHIP_OFFSET_GEN|y_counter_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_counter_clk~feeder_combout\ = \SHIP_OFFSET_GEN|y_counter_clk~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|y_counter_clk~1_combout\,
	combout => \SHIP_OFFSET_GEN|y_counter_clk~feeder_combout\);

-- Location: FF_X39_Y14_N31
\SHIP_OFFSET_GEN|y_counter_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|y_counter_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|y_counter_clk~q\);

-- Location: CLKCTRL_G16
\SHIP_OFFSET_GEN|y_counter_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y13_N12
\SHIP_OFFSET_GEN|U4|count[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[0]~9_combout\ = \SHIP_OFFSET_GEN|U4|count\(0) $ (VCC)
-- \SHIP_OFFSET_GEN|U4|count[0]~10\ = CARRY(\SHIP_OFFSET_GEN|U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(0),
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|U4|count[0]~9_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[0]~10\);

-- Location: LCCOMB_X35_Y13_N30
\SHIP_OFFSET_GEN|y_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_enable~0_combout\ = (\SHIP_OFFSET_GEN|U4|count\(7) & ((\SHIP_OFFSET_GEN|U4|count\(8)) # ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & \SHIP_OFFSET_GEN|U4|count\(6))))) # (!\SHIP_OFFSET_GEN|U4|count\(7) & (\SHIP_OFFSET_GEN|U4|count\(8) & 
-- ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # (\SHIP_OFFSET_GEN|U4|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(7),
	datab => \SHIP_OFFSET_GEN|U4|count\(8),
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|U4|count\(6),
	combout => \SHIP_OFFSET_GEN|y_enable~0_combout\);

-- Location: LCCOMB_X35_Y13_N0
\SHIP_OFFSET_GEN|y_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_enable~1_combout\ = (\SHIP_OFFSET_GEN|U4|count\(7) & (\SHIP_OFFSET_GEN|U4|count\(2) & (\SHIP_OFFSET_GEN|U4|count\(1) & \SHIP_OFFSET_GEN|U4|count\(0)))) # (!\SHIP_OFFSET_GEN|U4|count\(7) & ((\SHIP_OFFSET_GEN|U4|count\(2)) # 
-- ((\SHIP_OFFSET_GEN|U4|count\(1)) # (\SHIP_OFFSET_GEN|U4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(7),
	datab => \SHIP_OFFSET_GEN|U4|count\(2),
	datac => \SHIP_OFFSET_GEN|U4|count\(1),
	datad => \SHIP_OFFSET_GEN|U4|count\(0),
	combout => \SHIP_OFFSET_GEN|y_enable~1_combout\);

-- Location: LCCOMB_X35_Y13_N10
\SHIP_OFFSET_GEN|y_enable~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_enable~2_combout\ = (\SHIP_OFFSET_GEN|U4|count\(4) & ((\SHIP_OFFSET_GEN|U4|count\(8) & (\SHIP_OFFSET_GEN|U4|count\(3) & \SHIP_OFFSET_GEN|y_enable~1_combout\)) # (!\SHIP_OFFSET_GEN|U4|count\(8) & ((\SHIP_OFFSET_GEN|U4|count\(3)) # 
-- (\SHIP_OFFSET_GEN|y_enable~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(8),
	datac => \SHIP_OFFSET_GEN|U4|count\(3),
	datad => \SHIP_OFFSET_GEN|y_enable~1_combout\,
	combout => \SHIP_OFFSET_GEN|y_enable~2_combout\);

-- Location: LCCOMB_X35_Y13_N8
\SHIP_OFFSET_GEN|y_enable~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|y_enable~3_combout\ = (\SHIP_OFFSET_GEN|U4|count\(8) & ((\SHIP_OFFSET_GEN|y_enable~0_combout\) # ((\SHIP_OFFSET_GEN|U4|count\(5) & \SHIP_OFFSET_GEN|y_enable~2_combout\)))) # (!\SHIP_OFFSET_GEN|U4|count\(8) & 
-- (((!\SHIP_OFFSET_GEN|U4|count\(5) & !\SHIP_OFFSET_GEN|y_enable~2_combout\)) # (!\SHIP_OFFSET_GEN|y_enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(5),
	datab => \SHIP_OFFSET_GEN|U4|count\(8),
	datac => \SHIP_OFFSET_GEN|y_enable~0_combout\,
	datad => \SHIP_OFFSET_GEN|y_enable~2_combout\,
	combout => \SHIP_OFFSET_GEN|y_enable~3_combout\);

-- Location: FF_X35_Y13_N13
\SHIP_OFFSET_GEN|U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[0]~9_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(0));

-- Location: LCCOMB_X35_Y13_N14
\SHIP_OFFSET_GEN|U4|count[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[1]~11_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(1) & (!\SHIP_OFFSET_GEN|U4|count[0]~10\)) # (!\SHIP_OFFSET_GEN|U4|count\(1) & ((\SHIP_OFFSET_GEN|U4|count[0]~10\) # (GND))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(1) & (\SHIP_OFFSET_GEN|U4|count[0]~10\ & VCC)) # (!\SHIP_OFFSET_GEN|U4|count\(1) & (!\SHIP_OFFSET_GEN|U4|count[0]~10\))))
-- \SHIP_OFFSET_GEN|U4|count[1]~12\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((!\SHIP_OFFSET_GEN|U4|count[0]~10\) # (!\SHIP_OFFSET_GEN|U4|count\(1)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (!\SHIP_OFFSET_GEN|U4|count\(1) & 
-- !\SHIP_OFFSET_GEN|U4|count[0]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|U4|count\(1),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[0]~10\,
	combout => \SHIP_OFFSET_GEN|U4|count[1]~11_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[1]~12\);

-- Location: FF_X35_Y13_N15
\SHIP_OFFSET_GEN|U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[1]~11_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(1));

-- Location: LCCOMB_X35_Y13_N16
\SHIP_OFFSET_GEN|U4|count[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[2]~13_combout\ = ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ $ (\SHIP_OFFSET_GEN|U4|count\(2) $ (\SHIP_OFFSET_GEN|U4|count[1]~12\)))) # (GND)
-- \SHIP_OFFSET_GEN|U4|count[2]~14\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (\SHIP_OFFSET_GEN|U4|count\(2) & !\SHIP_OFFSET_GEN|U4|count[1]~12\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(2)) # 
-- (!\SHIP_OFFSET_GEN|U4|count[1]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|U4|count\(2),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[1]~12\,
	combout => \SHIP_OFFSET_GEN|U4|count[2]~13_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[2]~14\);

-- Location: FF_X35_Y13_N17
\SHIP_OFFSET_GEN|U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[2]~13_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(2));

-- Location: LCCOMB_X35_Y13_N18
\SHIP_OFFSET_GEN|U4|count[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[3]~15_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(3) & (!\SHIP_OFFSET_GEN|U4|count[2]~14\)) # (!\SHIP_OFFSET_GEN|U4|count\(3) & ((\SHIP_OFFSET_GEN|U4|count[2]~14\) # (GND))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(3) & (\SHIP_OFFSET_GEN|U4|count[2]~14\ & VCC)) # (!\SHIP_OFFSET_GEN|U4|count\(3) & (!\SHIP_OFFSET_GEN|U4|count[2]~14\))))
-- \SHIP_OFFSET_GEN|U4|count[3]~16\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((!\SHIP_OFFSET_GEN|U4|count[2]~14\) # (!\SHIP_OFFSET_GEN|U4|count\(3)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (!\SHIP_OFFSET_GEN|U4|count\(3) & 
-- !\SHIP_OFFSET_GEN|U4|count[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|U4|count\(3),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[2]~14\,
	combout => \SHIP_OFFSET_GEN|U4|count[3]~15_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[3]~16\);

-- Location: FF_X35_Y13_N19
\SHIP_OFFSET_GEN|U4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[3]~15_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(3));

-- Location: LCCOMB_X35_Y13_N20
\SHIP_OFFSET_GEN|U4|count[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[4]~17_combout\ = ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ $ (\SHIP_OFFSET_GEN|U4|count\(4) $ (\SHIP_OFFSET_GEN|U4|count[3]~16\)))) # (GND)
-- \SHIP_OFFSET_GEN|U4|count[4]~18\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (\SHIP_OFFSET_GEN|U4|count\(4) & !\SHIP_OFFSET_GEN|U4|count[3]~16\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(4)) # 
-- (!\SHIP_OFFSET_GEN|U4|count[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|U4|count\(4),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[3]~16\,
	combout => \SHIP_OFFSET_GEN|U4|count[4]~17_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[4]~18\);

-- Location: FF_X35_Y13_N21
\SHIP_OFFSET_GEN|U4|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[4]~17_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(4));

-- Location: LCCOMB_X35_Y13_N22
\SHIP_OFFSET_GEN|U4|count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[5]~19_combout\ = (\SHIP_OFFSET_GEN|U4|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (!\SHIP_OFFSET_GEN|U4|count[4]~18\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (\SHIP_OFFSET_GEN|U4|count[4]~18\ & VCC)))) # 
-- (!\SHIP_OFFSET_GEN|U4|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count[4]~18\) # (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (!\SHIP_OFFSET_GEN|U4|count[4]~18\))))
-- \SHIP_OFFSET_GEN|U4|count[5]~20\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(5) & (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & !\SHIP_OFFSET_GEN|U4|count[4]~18\)) # (!\SHIP_OFFSET_GEN|U4|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\) # 
-- (!\SHIP_OFFSET_GEN|U4|count[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(5),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[4]~18\,
	combout => \SHIP_OFFSET_GEN|U4|count[5]~19_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[5]~20\);

-- Location: FF_X35_Y13_N23
\SHIP_OFFSET_GEN|U4|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[5]~19_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(5));

-- Location: LCCOMB_X35_Y13_N24
\SHIP_OFFSET_GEN|U4|count[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[6]~21_combout\ = ((\SHIP_OFFSET_GEN|U4|count\(6) $ (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ $ (\SHIP_OFFSET_GEN|U4|count[5]~20\)))) # (GND)
-- \SHIP_OFFSET_GEN|U4|count[6]~22\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(6) & ((!\SHIP_OFFSET_GEN|U4|count[5]~20\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\))) # (!\SHIP_OFFSET_GEN|U4|count\(6) & (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & 
-- !\SHIP_OFFSET_GEN|U4|count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(6),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[5]~20\,
	combout => \SHIP_OFFSET_GEN|U4|count[6]~21_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[6]~22\);

-- Location: FF_X35_Y13_N25
\SHIP_OFFSET_GEN|U4|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[6]~21_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(6));

-- Location: LCCOMB_X35_Y13_N26
\SHIP_OFFSET_GEN|U4|count[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[7]~23_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(7) & (!\SHIP_OFFSET_GEN|U4|count[6]~22\)) # (!\SHIP_OFFSET_GEN|U4|count\(7) & ((\SHIP_OFFSET_GEN|U4|count[6]~22\) # (GND))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((\SHIP_OFFSET_GEN|U4|count\(7) & (\SHIP_OFFSET_GEN|U4|count[6]~22\ & VCC)) # (!\SHIP_OFFSET_GEN|U4|count\(7) & (!\SHIP_OFFSET_GEN|U4|count[6]~22\))))
-- \SHIP_OFFSET_GEN|U4|count[7]~24\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & ((!\SHIP_OFFSET_GEN|U4|count[6]~22\) # (!\SHIP_OFFSET_GEN|U4|count\(7)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ & (!\SHIP_OFFSET_GEN|U4|count\(7) & 
-- !\SHIP_OFFSET_GEN|U4|count[6]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datab => \SHIP_OFFSET_GEN|U4|count\(7),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U4|count[6]~22\,
	combout => \SHIP_OFFSET_GEN|U4|count[7]~23_combout\,
	cout => \SHIP_OFFSET_GEN|U4|count[7]~24\);

-- Location: FF_X35_Y13_N27
\SHIP_OFFSET_GEN|U4|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[7]~23_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(7));

-- Location: LCCOMB_X35_Y13_N28
\SHIP_OFFSET_GEN|U4|count[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U4|count[8]~25_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\ $ (\SHIP_OFFSET_GEN|U4|count[7]~24\ $ (\SHIP_OFFSET_GEN|U4|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[3][3]~q\,
	datad => \SHIP_OFFSET_GEN|U4|count\(8),
	cin => \SHIP_OFFSET_GEN|U4|count[7]~24\,
	combout => \SHIP_OFFSET_GEN|U4|count[8]~25_combout\);

-- Location: FF_X35_Y13_N29
\SHIP_OFFSET_GEN|U4|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|y_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U4|count[8]~25_combout\,
	ena => \SHIP_OFFSET_GEN|y_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U4|count\(8));

-- Location: LCCOMB_X24_Y11_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SHIP_OFFSET_GEN|U4|count\(4)) # ((\SHIP_OFFSET_GEN|U4|count\(6)) # ((\SHIP_OFFSET_GEN|U4|count\(7)) # (\SHIP_OFFSET_GEN|U4|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(6),
	datac => \SHIP_OFFSET_GEN|U4|count\(7),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = \SHIP_OFFSET_GEN|U4|count\(8) $ (\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U4|count\(8),
	datad => \Add1~0_combout\,
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X24_Y11_N8
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = \SHIP_OFFSET_GEN|U4|count\(7) $ (((\SHIP_OFFSET_GEN|U4|count\(4)) # ((\SHIP_OFFSET_GEN|U4|count\(6)) # (\SHIP_OFFSET_GEN|U4|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(6),
	datac => \SHIP_OFFSET_GEN|U4|count\(7),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X24_Y11_N4
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \SHIP_OFFSET_GEN|U4|count\(6) $ (((\SHIP_OFFSET_GEN|U4|count\(4)) # (\SHIP_OFFSET_GEN|U4|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(6),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X24_Y11_N30
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \SHIP_OFFSET_GEN|U4|count\(4) $ (\SHIP_OFFSET_GEN|U4|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X22_Y11_N4
\SHIP_CURR|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~1_cout\ = CARRY((\VGA_CONTROLL|row\(0) & \SHIP_OFFSET_GEN|U4|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(0),
	datab => \SHIP_OFFSET_GEN|U4|count\(0),
	datad => VCC,
	cout => \SHIP_CURR|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y11_N6
\SHIP_CURR|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~3_cout\ = CARRY((\VGA_CONTROLL|row\(1) & ((!\SHIP_CURR|LessThan2~1_cout\) # (!\SHIP_OFFSET_GEN|U4|count\(1)))) # (!\VGA_CONTROLL|row\(1) & (!\SHIP_OFFSET_GEN|U4|count\(1) & !\SHIP_CURR|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(1),
	datab => \SHIP_OFFSET_GEN|U4|count\(1),
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~1_cout\,
	cout => \SHIP_CURR|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y11_N8
\SHIP_CURR|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~5_cout\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(2) & ((!\SHIP_CURR|LessThan2~3_cout\) # (!\VGA_CONTROLL|row\(2)))) # (!\SHIP_OFFSET_GEN|U4|count\(2) & (!\VGA_CONTROLL|row\(2) & !\SHIP_CURR|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(2),
	datab => \VGA_CONTROLL|row\(2),
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~3_cout\,
	cout => \SHIP_CURR|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y11_N10
\SHIP_CURR|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~7_cout\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(3) & (\VGA_CONTROLL|row\(3) & !\SHIP_CURR|LessThan2~5_cout\)) # (!\SHIP_OFFSET_GEN|U4|count\(3) & ((\VGA_CONTROLL|row\(3)) # (!\SHIP_CURR|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(3),
	datab => \VGA_CONTROLL|row\(3),
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~5_cout\,
	cout => \SHIP_CURR|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y11_N12
\SHIP_CURR|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~9_cout\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(4) & (!\VGA_CONTROLL|row\(4) & !\SHIP_CURR|LessThan2~7_cout\)) # (!\SHIP_OFFSET_GEN|U4|count\(4) & ((!\SHIP_CURR|LessThan2~7_cout\) # (!\VGA_CONTROLL|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \VGA_CONTROLL|row\(4),
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~7_cout\,
	cout => \SHIP_CURR|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y11_N14
\SHIP_CURR|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~11_cout\ = CARRY((\VGA_CONTROLL|row\(5) & ((\Add1~6_combout\) # (!\SHIP_CURR|LessThan2~9_cout\))) # (!\VGA_CONTROLL|row\(5) & (\Add1~6_combout\ & !\SHIP_CURR|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(5),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~9_cout\,
	cout => \SHIP_CURR|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y11_N16
\SHIP_CURR|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~13_cout\ = CARRY((\VGA_CONTROLL|row\(6) & (!\Add1~5_combout\ & !\SHIP_CURR|LessThan2~11_cout\)) # (!\VGA_CONTROLL|row\(6) & ((!\SHIP_CURR|LessThan2~11_cout\) # (!\Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(6),
	datab => \Add1~5_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~11_cout\,
	cout => \SHIP_CURR|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y11_N18
\SHIP_CURR|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~15_cout\ = CARRY((\Add1~4_combout\ & ((\VGA_CONTROLL|row\(7)) # (!\SHIP_CURR|LessThan2~13_cout\))) # (!\Add1~4_combout\ & (\VGA_CONTROLL|row\(7) & !\SHIP_CURR|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \VGA_CONTROLL|row\(7),
	datad => VCC,
	cin => \SHIP_CURR|LessThan2~13_cout\,
	cout => \SHIP_CURR|LessThan2~15_cout\);

-- Location: LCCOMB_X22_Y11_N20
\SHIP_CURR|LessThan2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan2~16_combout\ = (\VGA_CONTROLL|row\(8) & (!\SHIP_CURR|LessThan2~15_cout\ & \Add1~3_combout\)) # (!\VGA_CONTROLL|row\(8) & ((\Add1~3_combout\) # (!\SHIP_CURR|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|row\(8),
	datad => \Add1~3_combout\,
	cin => \SHIP_CURR|LessThan2~15_cout\,
	combout => \SHIP_CURR|LessThan2~16_combout\);

-- Location: LCCOMB_X36_Y13_N2
\SHIP_OFFSET_GEN|U2|U0|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\ & (\SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|address\(1) & !\SHIP_OFFSET_GEN|U2|U0|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Decoder0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|Decoder0~1_combout\,
	datac => \SHIP_OFFSET_GEN|U2|U0|address\(1),
	datad => \SHIP_OFFSET_GEN|U2|U0|address\(0),
	combout => \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\);

-- Location: FF_X39_Y19_N25
\SHIP_OFFSET_GEN|U2|U0|memory[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\);

-- Location: FF_X39_Y19_N15
\SHIP_OFFSET_GEN|U2|U0|memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\);

-- Location: FF_X39_Y19_N23
\SHIP_OFFSET_GEN|U2|U0|memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\);

-- Location: FF_X39_Y19_N21
\SHIP_OFFSET_GEN|U2|U0|memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \SHIP_OFFSET_GEN|U2|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\);

-- Location: LCCOMB_X39_Y19_N28
\SHIP_OFFSET_GEN|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Equal0~0_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & !\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	combout => \SHIP_OFFSET_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y19_N22
\SHIP_OFFSET_GEN|count~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~61_combout\ = (\SHIP_OFFSET_GEN|Add0~22_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~22_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~61_combout\);

-- Location: FF_X43_Y19_N23
\SHIP_OFFSET_GEN|x_clk_divider:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~61_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\);

-- Location: LCCOMB_X41_Y19_N0
\SHIP_OFFSET_GEN|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~0_combout\ = \SHIP_OFFSET_GEN|x_clk_divider:count[0]~q\ $ (VCC)
-- \SHIP_OFFSET_GEN|Add0~1\ = CARRY(\SHIP_OFFSET_GEN|x_clk_divider:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[0]~q\,
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|Add0~0_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~1\);

-- Location: LCCOMB_X42_Y19_N20
\SHIP_OFFSET_GEN|count~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~72_combout\ = (\SHIP_OFFSET_GEN|Add0~0_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~0_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~72_combout\);

-- Location: FF_X42_Y19_N21
\SHIP_OFFSET_GEN|x_clk_divider:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~72_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[0]~q\);

-- Location: LCCOMB_X41_Y19_N2
\SHIP_OFFSET_GEN|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~2_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\ & (!\SHIP_OFFSET_GEN|Add0~1\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\ & ((\SHIP_OFFSET_GEN|Add0~1\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~3\ = CARRY((!\SHIP_OFFSET_GEN|Add0~1\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~1\,
	combout => \SHIP_OFFSET_GEN|Add0~2_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~3\);

-- Location: LCCOMB_X42_Y19_N6
\SHIP_OFFSET_GEN|count~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~71_combout\ = (\SHIP_OFFSET_GEN|Add0~2_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~2_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~71_combout\);

-- Location: FF_X42_Y19_N7
\SHIP_OFFSET_GEN|x_clk_divider:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~71_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[1]~q\);

-- Location: LCCOMB_X41_Y19_N4
\SHIP_OFFSET_GEN|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~4_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\ & (\SHIP_OFFSET_GEN|Add0~3\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\ & (!\SHIP_OFFSET_GEN|Add0~3\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~5\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\ & !\SHIP_OFFSET_GEN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~3\,
	combout => \SHIP_OFFSET_GEN|Add0~4_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~5\);

-- Location: LCCOMB_X42_Y19_N4
\SHIP_OFFSET_GEN|count~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~70_combout\ = (\SHIP_OFFSET_GEN|Add0~4_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~4_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~70_combout\);

-- Location: FF_X42_Y19_N5
\SHIP_OFFSET_GEN|x_clk_divider:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~70_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[2]~q\);

-- Location: LCCOMB_X41_Y19_N6
\SHIP_OFFSET_GEN|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~6_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\ & (!\SHIP_OFFSET_GEN|Add0~5\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\ & ((\SHIP_OFFSET_GEN|Add0~5\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~7\ = CARRY((!\SHIP_OFFSET_GEN|Add0~5\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~5\,
	combout => \SHIP_OFFSET_GEN|Add0~6_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~7\);

-- Location: LCCOMB_X42_Y19_N14
\SHIP_OFFSET_GEN|count~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~69_combout\ = (\SHIP_OFFSET_GEN|Add0~6_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~6_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~69_combout\);

-- Location: FF_X42_Y19_N15
\SHIP_OFFSET_GEN|x_clk_divider:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~69_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[3]~q\);

-- Location: LCCOMB_X41_Y19_N8
\SHIP_OFFSET_GEN|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~8_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\ & (\SHIP_OFFSET_GEN|Add0~7\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\ & (!\SHIP_OFFSET_GEN|Add0~7\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~9\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\ & !\SHIP_OFFSET_GEN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~7\,
	combout => \SHIP_OFFSET_GEN|Add0~8_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~9\);

-- Location: LCCOMB_X42_Y19_N12
\SHIP_OFFSET_GEN|count~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~68_combout\ = (\SHIP_OFFSET_GEN|Add0~8_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~8_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~68_combout\);

-- Location: FF_X42_Y19_N13
\SHIP_OFFSET_GEN|x_clk_divider:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~68_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[4]~q\);

-- Location: LCCOMB_X41_Y19_N10
\SHIP_OFFSET_GEN|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~10_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\ & (!\SHIP_OFFSET_GEN|Add0~9\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\ & ((\SHIP_OFFSET_GEN|Add0~9\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~11\ = CARRY((!\SHIP_OFFSET_GEN|Add0~9\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~9\,
	combout => \SHIP_OFFSET_GEN|Add0~10_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~11\);

-- Location: LCCOMB_X42_Y19_N10
\SHIP_OFFSET_GEN|count~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~67_combout\ = (\SHIP_OFFSET_GEN|Add0~10_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~10_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~67_combout\);

-- Location: FF_X42_Y19_N11
\SHIP_OFFSET_GEN|x_clk_divider:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~67_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[5]~q\);

-- Location: LCCOMB_X41_Y19_N12
\SHIP_OFFSET_GEN|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~12_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\ & (\SHIP_OFFSET_GEN|Add0~11\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\ & (!\SHIP_OFFSET_GEN|Add0~11\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~13\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\ & !\SHIP_OFFSET_GEN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~11\,
	combout => \SHIP_OFFSET_GEN|Add0~12_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~13\);

-- Location: LCCOMB_X42_Y19_N8
\SHIP_OFFSET_GEN|count~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~66_combout\ = (\SHIP_OFFSET_GEN|Add0~12_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~12_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~66_combout\);

-- Location: FF_X42_Y19_N9
\SHIP_OFFSET_GEN|x_clk_divider:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~66_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[6]~q\);

-- Location: LCCOMB_X41_Y19_N14
\SHIP_OFFSET_GEN|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~14_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\ & (!\SHIP_OFFSET_GEN|Add0~13\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\ & ((\SHIP_OFFSET_GEN|Add0~13\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~15\ = CARRY((!\SHIP_OFFSET_GEN|Add0~13\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~13\,
	combout => \SHIP_OFFSET_GEN|Add0~14_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~15\);

-- Location: LCCOMB_X42_Y19_N26
\SHIP_OFFSET_GEN|count~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~65_combout\ = (\SHIP_OFFSET_GEN|Add0~14_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~14_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~65_combout\);

-- Location: FF_X42_Y19_N27
\SHIP_OFFSET_GEN|x_clk_divider:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~65_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[7]~q\);

-- Location: LCCOMB_X41_Y19_N16
\SHIP_OFFSET_GEN|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~16_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\ & (\SHIP_OFFSET_GEN|Add0~15\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\ & (!\SHIP_OFFSET_GEN|Add0~15\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~17\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\ & !\SHIP_OFFSET_GEN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~15\,
	combout => \SHIP_OFFSET_GEN|Add0~16_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~17\);

-- Location: LCCOMB_X40_Y19_N28
\SHIP_OFFSET_GEN|count~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~64_combout\ = (\SHIP_OFFSET_GEN|Add0~16_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~16_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~64_combout\);

-- Location: FF_X40_Y19_N29
\SHIP_OFFSET_GEN|x_clk_divider:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~64_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[8]~q\);

-- Location: LCCOMB_X41_Y19_N18
\SHIP_OFFSET_GEN|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~18_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\ & (!\SHIP_OFFSET_GEN|Add0~17\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\ & ((\SHIP_OFFSET_GEN|Add0~17\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~19\ = CARRY((!\SHIP_OFFSET_GEN|Add0~17\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~17\,
	combout => \SHIP_OFFSET_GEN|Add0~18_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~19\);

-- Location: LCCOMB_X40_Y19_N26
\SHIP_OFFSET_GEN|count~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~63_combout\ = (\SHIP_OFFSET_GEN|Add0~18_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~18_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~63_combout\);

-- Location: FF_X40_Y19_N27
\SHIP_OFFSET_GEN|x_clk_divider:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~63_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[9]~q\);

-- Location: LCCOMB_X41_Y19_N20
\SHIP_OFFSET_GEN|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~20_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\ & (\SHIP_OFFSET_GEN|Add0~19\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\ & (!\SHIP_OFFSET_GEN|Add0~19\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~21\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\ & !\SHIP_OFFSET_GEN|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~19\,
	combout => \SHIP_OFFSET_GEN|Add0~20_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~21\);

-- Location: LCCOMB_X43_Y19_N28
\SHIP_OFFSET_GEN|count~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~62_combout\ = (\SHIP_OFFSET_GEN|Add0~20_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~20_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~62_combout\);

-- Location: FF_X43_Y19_N29
\SHIP_OFFSET_GEN|x_clk_divider:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~62_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[10]~q\);

-- Location: LCCOMB_X41_Y19_N22
\SHIP_OFFSET_GEN|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~22_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\ & (!\SHIP_OFFSET_GEN|Add0~21\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\ & ((\SHIP_OFFSET_GEN|Add0~21\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~23\ = CARRY((!\SHIP_OFFSET_GEN|Add0~21\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[11]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~21\,
	combout => \SHIP_OFFSET_GEN|Add0~22_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~23\);

-- Location: LCCOMB_X36_Y13_N30
\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|address\(1) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))) # (!\SHIP_OFFSET_GEN|U2|U0|address\(1) & 
-- (\SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3))))) # (!\SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|Decoder0~2_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|address\(1),
	datac => \SHIP_OFFSET_GEN|U2|U0|u0|rx_data\(3),
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	combout => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1_combout\);

-- Location: LCCOMB_X27_Y13_N0
\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~feeder_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~1_combout\,
	combout => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~feeder_combout\);

-- Location: FF_X27_Y13_N1
\SHIP_OFFSET_GEN|U2|U0|memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\);

-- Location: LCCOMB_X39_Y19_N30
\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & (((\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & !\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ & ((!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X39_Y19_N0
\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & (((!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ $ (((!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\);

-- Location: LCCOMB_X39_Y19_N18
\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X39_Y19_N16
\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ $ (((!\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X39_Y19_N2
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ & (\SHIP_OFFSET_GEN|Equal0~0_combout\ $ (VCC))) # (!\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ & 
-- (\SHIP_OFFSET_GEN|Equal0~0_combout\ & VCC))
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ & \SHIP_OFFSET_GEN|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\,
	datab => \SHIP_OFFSET_GEN|Equal0~0_combout\,
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X39_Y19_N4
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\ & ((\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][7]~3_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X39_Y19_N6
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\ & !\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][8]~2_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X39_Y19_N8
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & ((\SHIP_OFFSET_GEN|Equal0~0_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & 
-- VCC)) # (!\SHIP_OFFSET_GEN|Equal0~0_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & ((\SHIP_OFFSET_GEN|Equal0~0_combout\ & 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\SHIP_OFFSET_GEN|Equal0~0_combout\ & ((\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & (!\SHIP_OFFSET_GEN|Equal0~0_combout\ & !\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & ((!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\SHIP_OFFSET_GEN|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\,
	datab => \SHIP_OFFSET_GEN|Equal0~0_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X39_Y19_N26
\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\) # (\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\);

-- Location: LCCOMB_X39_Y19_N10
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\SHIP_OFFSET_GEN|Equal0~0_combout\ $ (\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\SHIP_OFFSET_GEN|Equal0~0_combout\ & ((\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\) # 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\SHIP_OFFSET_GEN|Equal0~0_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\ & !\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Equal0~0_combout\,
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][10]~1_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X39_Y19_N12
\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X43_Y19_N2
\SHIP_OFFSET_GEN|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~5_combout\ = (\SHIP_OFFSET_GEN|Add0~22_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\SHIP_OFFSET_GEN|Add0~20_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)))) # (!\SHIP_OFFSET_GEN|Add0~22_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\SHIP_OFFSET_GEN|Add0~20_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~22_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~20_combout\,
	datac => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~5_combout\);

-- Location: LCCOMB_X43_Y19_N8
\SHIP_OFFSET_GEN|x_counter_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~0_combout\ = (\SHIP_OFFSET_GEN|Add0~18_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & \SHIP_OFFSET_GEN|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~18_combout\,
	datac => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~5_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~0_combout\);

-- Location: LCCOMB_X40_Y19_N30
\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\) # ((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	combout => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\);

-- Location: LCCOMB_X39_Y19_N22
\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & !\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\))))) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & 
-- ((\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X39_Y19_N14
\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\)) # 
-- (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X39_Y19_N24
\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ $ (\SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	combout => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\);

-- Location: LCCOMB_X40_Y19_N20
\SHIP_OFFSET_GEN|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~4_combout\ = (\SHIP_OFFSET_GEN|Add0~0_combout\) # (\SHIP_OFFSET_GEN|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add0~0_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y19_N0
\SHIP_OFFSET_GEN|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~7_cout\ = CARRY(\SHIP_OFFSET_GEN|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|LessThan0~4_combout\,
	datad => VCC,
	cout => \SHIP_OFFSET_GEN|LessThan1~7_cout\);

-- Location: LCCOMB_X40_Y19_N2
\SHIP_OFFSET_GEN|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~9_cout\ = CARRY((\SHIP_OFFSET_GEN|Add0~4_combout\ & (\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & !\SHIP_OFFSET_GEN|LessThan1~7_cout\)) # (!\SHIP_OFFSET_GEN|Add0~4_combout\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\) # 
-- (!\SHIP_OFFSET_GEN|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~4_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~7_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~9_cout\);

-- Location: LCCOMB_X40_Y19_N4
\SHIP_OFFSET_GEN|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~11_cout\ = CARRY((\SHIP_OFFSET_GEN|Add0~6_combout\ & ((!\SHIP_OFFSET_GEN|LessThan1~9_cout\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\))) # (!\SHIP_OFFSET_GEN|Add0~6_combout\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ & 
-- !\SHIP_OFFSET_GEN|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~6_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~9_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~11_cout\);

-- Location: LCCOMB_X40_Y19_N6
\SHIP_OFFSET_GEN|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~13_cout\ = CARRY((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & ((!\SHIP_OFFSET_GEN|LessThan1~11_cout\) # (!\SHIP_OFFSET_GEN|Add0~8_combout\))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & (!\SHIP_OFFSET_GEN|Add0~8_combout\ & 
-- !\SHIP_OFFSET_GEN|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|Add0~8_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~11_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~13_cout\);

-- Location: LCCOMB_X40_Y19_N8
\SHIP_OFFSET_GEN|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~15_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\ & (\SHIP_OFFSET_GEN|Add0~10_combout\ & !\SHIP_OFFSET_GEN|LessThan1~13_cout\)) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\ & 
-- ((\SHIP_OFFSET_GEN|Add0~10_combout\) # (!\SHIP_OFFSET_GEN|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][5]~3_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~10_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~13_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~15_cout\);

-- Location: LCCOMB_X40_Y19_N10
\SHIP_OFFSET_GEN|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~17_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ & ((!\SHIP_OFFSET_GEN|LessThan1~15_cout\) # (!\SHIP_OFFSET_GEN|Add0~12_combout\))) # (!\SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\ & 
-- (!\SHIP_OFFSET_GEN|Add0~12_combout\ & !\SHIP_OFFSET_GEN|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult0|mult_core|romout[0][6]~0_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~12_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~15_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~17_cout\);

-- Location: LCCOMB_X40_Y19_N12
\SHIP_OFFSET_GEN|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~19_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\ & (\SHIP_OFFSET_GEN|Add0~14_combout\ & !\SHIP_OFFSET_GEN|LessThan1~17_cout\)) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\ & 
-- ((\SHIP_OFFSET_GEN|Add0~14_combout\) # (!\SHIP_OFFSET_GEN|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][7]~2_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~14_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~17_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~19_cout\);

-- Location: LCCOMB_X40_Y19_N14
\SHIP_OFFSET_GEN|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~21_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\ & ((!\SHIP_OFFSET_GEN|LessThan1~19_cout\) # (!\SHIP_OFFSET_GEN|Add0~16_combout\))) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\ & 
-- (!\SHIP_OFFSET_GEN|Add0~16_combout\ & !\SHIP_OFFSET_GEN|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][8]~1_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~16_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~19_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~21_cout\);

-- Location: LCCOMB_X40_Y19_N16
\SHIP_OFFSET_GEN|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~23_cout\ = CARRY((\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & (\SHIP_OFFSET_GEN|Add0~18_combout\ & !\SHIP_OFFSET_GEN|LessThan1~21_cout\)) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\ & 
-- ((\SHIP_OFFSET_GEN|Add0~18_combout\) # (!\SHIP_OFFSET_GEN|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][9]~combout\,
	datab => \SHIP_OFFSET_GEN|Add0~18_combout\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|LessThan1~21_cout\,
	cout => \SHIP_OFFSET_GEN|LessThan1~23_cout\);

-- Location: LCCOMB_X40_Y19_N18
\SHIP_OFFSET_GEN|LessThan1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~24_combout\ = (\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\ & (\SHIP_OFFSET_GEN|LessThan1~23_cout\ & \SHIP_OFFSET_GEN|Add0~20_combout\)) # (!\SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\ & 
-- ((\SHIP_OFFSET_GEN|LessThan1~23_cout\) # (\SHIP_OFFSET_GEN|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult1|mult_core|romout[0][10]~0_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~20_combout\,
	cin => \SHIP_OFFSET_GEN|LessThan1~23_cout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~24_combout\);

-- Location: LCCOMB_X43_Y19_N26
\SHIP_OFFSET_GEN|x_counter_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~1_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|Add0~22_combout\) # ((\SHIP_OFFSET_GEN|LessThan1~24_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & 
-- (((\SHIP_OFFSET_GEN|x_counter_clk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~22_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~0_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan1~24_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~1_combout\);

-- Location: FF_X41_Y18_N31
\SHIP_OFFSET_GEN|x_clk_divider:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|Add0~62_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[31]~q\);

-- Location: LCCOMB_X41_Y19_N24
\SHIP_OFFSET_GEN|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~24_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\ & (\SHIP_OFFSET_GEN|Add0~23\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\ & (!\SHIP_OFFSET_GEN|Add0~23\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~25\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\ & !\SHIP_OFFSET_GEN|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~23\,
	combout => \SHIP_OFFSET_GEN|Add0~24_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~25\);

-- Location: LCCOMB_X43_Y19_N0
\SHIP_OFFSET_GEN|count~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~60_combout\ = (\SHIP_OFFSET_GEN|Add0~24_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~24_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~60_combout\);

-- Location: FF_X43_Y19_N1
\SHIP_OFFSET_GEN|x_clk_divider:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~60_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[12]~q\);

-- Location: LCCOMB_X41_Y19_N26
\SHIP_OFFSET_GEN|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~26_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\ & (!\SHIP_OFFSET_GEN|Add0~25\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\ & ((\SHIP_OFFSET_GEN|Add0~25\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~27\ = CARRY((!\SHIP_OFFSET_GEN|Add0~25\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~25\,
	combout => \SHIP_OFFSET_GEN|Add0~26_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~27\);

-- Location: LCCOMB_X43_Y19_N14
\SHIP_OFFSET_GEN|count~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~59_combout\ = (\SHIP_OFFSET_GEN|Add0~26_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~26_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~59_combout\);

-- Location: FF_X43_Y19_N15
\SHIP_OFFSET_GEN|x_clk_divider:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~59_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[13]~q\);

-- Location: LCCOMB_X41_Y19_N28
\SHIP_OFFSET_GEN|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~28_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\ & (\SHIP_OFFSET_GEN|Add0~27\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\ & (!\SHIP_OFFSET_GEN|Add0~27\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~29\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\ & !\SHIP_OFFSET_GEN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~27\,
	combout => \SHIP_OFFSET_GEN|Add0~28_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~29\);

-- Location: LCCOMB_X43_Y19_N24
\SHIP_OFFSET_GEN|count~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~58_combout\ = (\SHIP_OFFSET_GEN|Add0~28_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~28_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~58_combout\);

-- Location: FF_X43_Y19_N25
\SHIP_OFFSET_GEN|x_clk_divider:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~58_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[14]~q\);

-- Location: LCCOMB_X41_Y19_N30
\SHIP_OFFSET_GEN|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~30_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\ & (!\SHIP_OFFSET_GEN|Add0~29\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\ & ((\SHIP_OFFSET_GEN|Add0~29\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~31\ = CARRY((!\SHIP_OFFSET_GEN|Add0~29\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~29\,
	combout => \SHIP_OFFSET_GEN|Add0~30_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~31\);

-- Location: LCCOMB_X40_Y19_N24
\SHIP_OFFSET_GEN|count~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~57_combout\ = (\SHIP_OFFSET_GEN|Add0~30_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~30_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~57_combout\);

-- Location: FF_X40_Y19_N25
\SHIP_OFFSET_GEN|x_clk_divider:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~57_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[15]~q\);

-- Location: LCCOMB_X41_Y18_N0
\SHIP_OFFSET_GEN|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~32_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\ & (\SHIP_OFFSET_GEN|Add0~31\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\ & (!\SHIP_OFFSET_GEN|Add0~31\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~33\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\ & !\SHIP_OFFSET_GEN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~31\,
	combout => \SHIP_OFFSET_GEN|Add0~32_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~33\);

-- Location: LCCOMB_X42_Y19_N0
\SHIP_OFFSET_GEN|count~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~56_combout\ = (\SHIP_OFFSET_GEN|Add0~32_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~32_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~56_combout\);

-- Location: FF_X42_Y19_N1
\SHIP_OFFSET_GEN|x_clk_divider:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~56_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[16]~q\);

-- Location: LCCOMB_X41_Y18_N2
\SHIP_OFFSET_GEN|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~34_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\ & (!\SHIP_OFFSET_GEN|Add0~33\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\ & ((\SHIP_OFFSET_GEN|Add0~33\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~35\ = CARRY((!\SHIP_OFFSET_GEN|Add0~33\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~33\,
	combout => \SHIP_OFFSET_GEN|Add0~34_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~35\);

-- Location: LCCOMB_X43_Y19_N6
\SHIP_OFFSET_GEN|count~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~55_combout\ = (\SHIP_OFFSET_GEN|Add0~34_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~34_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~55_combout\);

-- Location: FF_X43_Y19_N7
\SHIP_OFFSET_GEN|x_clk_divider:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~55_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[17]~q\);

-- Location: LCCOMB_X41_Y18_N4
\SHIP_OFFSET_GEN|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~36_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\ & (\SHIP_OFFSET_GEN|Add0~35\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\ & (!\SHIP_OFFSET_GEN|Add0~35\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~37\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\ & !\SHIP_OFFSET_GEN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~35\,
	combout => \SHIP_OFFSET_GEN|Add0~36_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~37\);

-- Location: LCCOMB_X43_Y19_N20
\SHIP_OFFSET_GEN|count~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~54_combout\ = (\SHIP_OFFSET_GEN|Add0~36_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~36_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~54_combout\);

-- Location: FF_X43_Y19_N21
\SHIP_OFFSET_GEN|x_clk_divider:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~54_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[18]~q\);

-- Location: LCCOMB_X41_Y18_N6
\SHIP_OFFSET_GEN|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~38_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\ & (!\SHIP_OFFSET_GEN|Add0~37\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\ & ((\SHIP_OFFSET_GEN|Add0~37\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~39\ = CARRY((!\SHIP_OFFSET_GEN|Add0~37\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~37\,
	combout => \SHIP_OFFSET_GEN|Add0~38_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~39\);

-- Location: LCCOMB_X42_Y18_N20
\SHIP_OFFSET_GEN|count~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~53_combout\ = (\SHIP_OFFSET_GEN|Add0~38_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add0~38_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~53_combout\);

-- Location: FF_X42_Y18_N21
\SHIP_OFFSET_GEN|x_clk_divider:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~53_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[19]~q\);

-- Location: LCCOMB_X41_Y18_N8
\SHIP_OFFSET_GEN|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~40_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\ & (\SHIP_OFFSET_GEN|Add0~39\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\ & (!\SHIP_OFFSET_GEN|Add0~39\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~41\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\ & !\SHIP_OFFSET_GEN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~39\,
	combout => \SHIP_OFFSET_GEN|Add0~40_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~41\);

-- Location: LCCOMB_X42_Y18_N6
\SHIP_OFFSET_GEN|count~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~52_combout\ = (\SHIP_OFFSET_GEN|Add0~40_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~40_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~52_combout\);

-- Location: FF_X42_Y18_N7
\SHIP_OFFSET_GEN|x_clk_divider:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~52_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[20]~q\);

-- Location: LCCOMB_X41_Y18_N10
\SHIP_OFFSET_GEN|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~42_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\ & (!\SHIP_OFFSET_GEN|Add0~41\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\ & ((\SHIP_OFFSET_GEN|Add0~41\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~43\ = CARRY((!\SHIP_OFFSET_GEN|Add0~41\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~41\,
	combout => \SHIP_OFFSET_GEN|Add0~42_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~43\);

-- Location: LCCOMB_X43_Y19_N18
\SHIP_OFFSET_GEN|count~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~51_combout\ = (\SHIP_OFFSET_GEN|Add0~42_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~42_combout\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~51_combout\);

-- Location: FF_X43_Y19_N19
\SHIP_OFFSET_GEN|x_clk_divider:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~51_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[21]~q\);

-- Location: LCCOMB_X41_Y18_N12
\SHIP_OFFSET_GEN|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~44_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\ & (\SHIP_OFFSET_GEN|Add0~43\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\ & (!\SHIP_OFFSET_GEN|Add0~43\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~45\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\ & !\SHIP_OFFSET_GEN|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~43\,
	combout => \SHIP_OFFSET_GEN|Add0~44_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~45\);

-- Location: LCCOMB_X44_Y19_N30
\SHIP_OFFSET_GEN|count~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~50_combout\ = (\SHIP_OFFSET_GEN|Add0~44_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add0~44_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~50_combout\);

-- Location: FF_X44_Y19_N31
\SHIP_OFFSET_GEN|x_clk_divider:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~50_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[22]~q\);

-- Location: LCCOMB_X41_Y18_N14
\SHIP_OFFSET_GEN|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~46_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\ & (!\SHIP_OFFSET_GEN|Add0~45\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\ & ((\SHIP_OFFSET_GEN|Add0~45\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~47\ = CARRY((!\SHIP_OFFSET_GEN|Add0~45\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~45\,
	combout => \SHIP_OFFSET_GEN|Add0~46_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~47\);

-- Location: LCCOMB_X42_Y18_N28
\SHIP_OFFSET_GEN|count~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~49_combout\ = (\SHIP_OFFSET_GEN|Add0~46_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~46_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~49_combout\);

-- Location: FF_X42_Y18_N29
\SHIP_OFFSET_GEN|x_clk_divider:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~49_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[23]~q\);

-- Location: LCCOMB_X41_Y18_N16
\SHIP_OFFSET_GEN|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~48_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\ & (\SHIP_OFFSET_GEN|Add0~47\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\ & (!\SHIP_OFFSET_GEN|Add0~47\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~49\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\ & !\SHIP_OFFSET_GEN|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~47\,
	combout => \SHIP_OFFSET_GEN|Add0~48_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~49\);

-- Location: LCCOMB_X42_Y18_N2
\SHIP_OFFSET_GEN|count~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~48_combout\ = (\SHIP_OFFSET_GEN|Add0~48_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add0~48_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~48_combout\);

-- Location: FF_X42_Y18_N3
\SHIP_OFFSET_GEN|x_clk_divider:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~48_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[24]~q\);

-- Location: LCCOMB_X41_Y18_N18
\SHIP_OFFSET_GEN|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~50_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\ & (!\SHIP_OFFSET_GEN|Add0~49\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\ & ((\SHIP_OFFSET_GEN|Add0~49\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~51\ = CARRY((!\SHIP_OFFSET_GEN|Add0~49\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~49\,
	combout => \SHIP_OFFSET_GEN|Add0~50_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~51\);

-- Location: LCCOMB_X43_Y19_N12
\SHIP_OFFSET_GEN|count~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~47_combout\ = (!\SHIP_OFFSET_GEN|x_counter_clk~5_combout\ & \SHIP_OFFSET_GEN|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~50_combout\,
	combout => \SHIP_OFFSET_GEN|count~47_combout\);

-- Location: FF_X43_Y19_N13
\SHIP_OFFSET_GEN|x_clk_divider:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~47_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[25]~q\);

-- Location: LCCOMB_X41_Y18_N20
\SHIP_OFFSET_GEN|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~52_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\ & (\SHIP_OFFSET_GEN|Add0~51\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\ & (!\SHIP_OFFSET_GEN|Add0~51\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~53\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\ & !\SHIP_OFFSET_GEN|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~51\,
	combout => \SHIP_OFFSET_GEN|Add0~52_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~53\);

-- Location: LCCOMB_X42_Y18_N4
\SHIP_OFFSET_GEN|count~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~46_combout\ = (\SHIP_OFFSET_GEN|Add0~52_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~52_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~46_combout\);

-- Location: FF_X42_Y18_N5
\SHIP_OFFSET_GEN|x_clk_divider:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~46_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[26]~q\);

-- Location: LCCOMB_X41_Y18_N22
\SHIP_OFFSET_GEN|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~54_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\ & (!\SHIP_OFFSET_GEN|Add0~53\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\ & ((\SHIP_OFFSET_GEN|Add0~53\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~55\ = CARRY((!\SHIP_OFFSET_GEN|Add0~53\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~53\,
	combout => \SHIP_OFFSET_GEN|Add0~54_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~55\);

-- Location: LCCOMB_X42_Y18_N22
\SHIP_OFFSET_GEN|count~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~45_combout\ = (\SHIP_OFFSET_GEN|Add0~54_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~54_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~45_combout\);

-- Location: FF_X42_Y18_N23
\SHIP_OFFSET_GEN|x_clk_divider:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~45_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[27]~q\);

-- Location: LCCOMB_X41_Y18_N24
\SHIP_OFFSET_GEN|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~56_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\ & (\SHIP_OFFSET_GEN|Add0~55\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\ & (!\SHIP_OFFSET_GEN|Add0~55\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~57\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\ & !\SHIP_OFFSET_GEN|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~55\,
	combout => \SHIP_OFFSET_GEN|Add0~56_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~57\);

-- Location: LCCOMB_X42_Y18_N12
\SHIP_OFFSET_GEN|count~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~44_combout\ = (\SHIP_OFFSET_GEN|Add0~56_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~56_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~44_combout\);

-- Location: FF_X42_Y18_N13
\SHIP_OFFSET_GEN|x_clk_divider:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~44_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[28]~q\);

-- Location: LCCOMB_X41_Y18_N26
\SHIP_OFFSET_GEN|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~58_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\ & (!\SHIP_OFFSET_GEN|Add0~57\)) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\ & ((\SHIP_OFFSET_GEN|Add0~57\) # (GND)))
-- \SHIP_OFFSET_GEN|Add0~59\ = CARRY((!\SHIP_OFFSET_GEN|Add0~57\) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~57\,
	combout => \SHIP_OFFSET_GEN|Add0~58_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~59\);

-- Location: LCCOMB_X42_Y18_N14
\SHIP_OFFSET_GEN|count~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~43_combout\ = (\SHIP_OFFSET_GEN|Add0~58_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add0~58_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~43_combout\);

-- Location: FF_X42_Y18_N15
\SHIP_OFFSET_GEN|x_clk_divider:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~43_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[29]~q\);

-- Location: LCCOMB_X41_Y18_N28
\SHIP_OFFSET_GEN|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~60_combout\ = (\SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\ & (\SHIP_OFFSET_GEN|Add0~59\ $ (GND))) # (!\SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\ & (!\SHIP_OFFSET_GEN|Add0~59\ & VCC))
-- \SHIP_OFFSET_GEN|Add0~61\ = CARRY((\SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\ & !\SHIP_OFFSET_GEN|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add0~59\,
	combout => \SHIP_OFFSET_GEN|Add0~60_combout\,
	cout => \SHIP_OFFSET_GEN|Add0~61\);

-- Location: LCCOMB_X42_Y18_N24
\SHIP_OFFSET_GEN|count~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|count~42_combout\ = (\SHIP_OFFSET_GEN|Add0~60_combout\ & !\SHIP_OFFSET_GEN|x_counter_clk~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|count~42_combout\);

-- Location: FF_X42_Y18_N25
\SHIP_OFFSET_GEN|x_clk_divider:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|count~42_combout\,
	ena => \SHIP_OFFSET_GEN|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_clk_divider:count[30]~q\);

-- Location: LCCOMB_X41_Y18_N30
\SHIP_OFFSET_GEN|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add0~62_combout\ = \SHIP_OFFSET_GEN|x_clk_divider:count[31]~q\ $ (\SHIP_OFFSET_GEN|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_clk_divider:count[31]~q\,
	cin => \SHIP_OFFSET_GEN|Add0~61\,
	combout => \SHIP_OFFSET_GEN|Add0~62_combout\);

-- Location: LCCOMB_X42_Y18_N16
\SHIP_OFFSET_GEN|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~1_combout\ = (\SHIP_OFFSET_GEN|Add0~42_combout\) # ((\SHIP_OFFSET_GEN|Add0~26_combout\) # ((\SHIP_OFFSET_GEN|Add0~28_combout\) # (\SHIP_OFFSET_GEN|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~42_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~26_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~28_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~44_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~1_combout\);

-- Location: LCCOMB_X42_Y18_N30
\SHIP_OFFSET_GEN|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~0_combout\ = (!\SHIP_OFFSET_GEN|Add0~32_combout\ & (!\SHIP_OFFSET_GEN|Add0~34_combout\ & (!\SHIP_OFFSET_GEN|Add0~36_combout\ & !\SHIP_OFFSET_GEN|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~32_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~34_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~36_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~30_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~0_combout\);

-- Location: LCCOMB_X42_Y18_N8
\SHIP_OFFSET_GEN|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~3_combout\ = (!\SHIP_OFFSET_GEN|Add0~46_combout\ & (!\SHIP_OFFSET_GEN|Add0~50_combout\ & (!\SHIP_OFFSET_GEN|Add0~48_combout\ & !\SHIP_OFFSET_GEN|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~46_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~50_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~48_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~52_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~3_combout\);

-- Location: LCCOMB_X42_Y18_N18
\SHIP_OFFSET_GEN|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~2_combout\ = (!\SHIP_OFFSET_GEN|Add0~58_combout\ & (!\SHIP_OFFSET_GEN|Add0~56_combout\ & (!\SHIP_OFFSET_GEN|Add0~60_combout\ & !\SHIP_OFFSET_GEN|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~58_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~56_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~60_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~54_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~2_combout\);

-- Location: LCCOMB_X42_Y18_N10
\SHIP_OFFSET_GEN|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~4_combout\ = (\SHIP_OFFSET_GEN|Add0~24_combout\) # ((\SHIP_OFFSET_GEN|Add0~38_combout\) # ((!\SHIP_OFFSET_GEN|LessThan1~2_combout\) # (!\SHIP_OFFSET_GEN|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~24_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~38_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan1~3_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan1~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~4_combout\);

-- Location: LCCOMB_X42_Y18_N0
\SHIP_OFFSET_GEN|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan1~5_combout\ = (!\SHIP_OFFSET_GEN|Add0~40_combout\ & (!\SHIP_OFFSET_GEN|LessThan1~1_combout\ & (\SHIP_OFFSET_GEN|LessThan1~0_combout\ & !\SHIP_OFFSET_GEN|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~40_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan1~1_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan1~0_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan1~4_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan1~5_combout\);

-- Location: LCCOMB_X43_Y19_N4
\SHIP_OFFSET_GEN|x_counter_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~2_combout\ = (\SHIP_OFFSET_GEN|Add0~22_combout\ & (((!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \SHIP_OFFSET_GEN|Add0~20_combout\)) # 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))) # (!\SHIP_OFFSET_GEN|Add0~22_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\SHIP_OFFSET_GEN|Add0~20_combout\ & 
-- !\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~20_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~22_combout\,
	datad => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~2_combout\);

-- Location: LCCOMB_X42_Y19_N22
\SHIP_OFFSET_GEN|LessThan0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~12_combout\ = (\SHIP_OFFSET_GEN|Add0~14_combout\ & (((!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & \SHIP_OFFSET_GEN|Add0~12_combout\)) # 
-- (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))) # (!\SHIP_OFFSET_GEN|Add0~14_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\SHIP_OFFSET_GEN|Add0~12_combout\ & 
-- !\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~14_combout\,
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~12_combout\,
	datad => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~12_combout\);

-- Location: LCCOMB_X40_Y19_N22
\SHIP_OFFSET_GEN|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~7_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ $ (((!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & ((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\) # (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	combout => \SHIP_OFFSET_GEN|LessThan0~7_combout\);

-- Location: LCCOMB_X39_Y19_N20
\SHIP_OFFSET_GEN|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~9_combout\ = \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\ $ (((\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\ & 
-- (\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][6]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][7]~q\,
	datac => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	combout => \SHIP_OFFSET_GEN|LessThan0~9_combout\);

-- Location: LCCOMB_X42_Y19_N2
\SHIP_OFFSET_GEN|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~14_combout\ = (\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & (\SHIP_OFFSET_GEN|Add0~4_combout\ & ((\SHIP_OFFSET_GEN|Add0~0_combout\) # (\SHIP_OFFSET_GEN|Add0~2_combout\)))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\ & 
-- ((\SHIP_OFFSET_GEN|Add0~0_combout\) # ((\SHIP_OFFSET_GEN|Add0~4_combout\) # (\SHIP_OFFSET_GEN|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~0_combout\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|Add0~4_combout\,
	datad => \SHIP_OFFSET_GEN|Add0~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~14_combout\);

-- Location: LCCOMB_X42_Y19_N24
\SHIP_OFFSET_GEN|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~8_combout\ = (\SHIP_OFFSET_GEN|Add0~6_combout\ & ((\SHIP_OFFSET_GEN|LessThan0~14_combout\) # (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ $ (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\)))) # (!\SHIP_OFFSET_GEN|Add0~6_combout\ & 
-- (\SHIP_OFFSET_GEN|LessThan0~14_combout\ & (\SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\ $ (!\SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U2|U0|memory[0][5]~q\,
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[0][4]~q\,
	datac => \SHIP_OFFSET_GEN|Add0~6_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~14_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~8_combout\);

-- Location: LCCOMB_X42_Y19_N30
\SHIP_OFFSET_GEN|LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~10_combout\ = (\SHIP_OFFSET_GEN|Add0~8_combout\ & ((\SHIP_OFFSET_GEN|LessThan0~8_combout\) # (\SHIP_OFFSET_GEN|Add0~10_combout\ $ (!\SHIP_OFFSET_GEN|LessThan0~9_combout\)))) # (!\SHIP_OFFSET_GEN|Add0~8_combout\ & 
-- (\SHIP_OFFSET_GEN|LessThan0~8_combout\ & (\SHIP_OFFSET_GEN|Add0~10_combout\ $ (!\SHIP_OFFSET_GEN|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~10_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan0~9_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~8_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~8_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~10_combout\);

-- Location: LCCOMB_X42_Y19_N18
\SHIP_OFFSET_GEN|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~6_combout\ = (\SHIP_OFFSET_GEN|Add0~14_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Add0~12_combout\)))) # (!\SHIP_OFFSET_GEN|Add0~14_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ 
-- (!\SHIP_OFFSET_GEN|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~14_combout\,
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \SHIP_OFFSET_GEN|Add0~12_combout\,
	datad => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y19_N16
\SHIP_OFFSET_GEN|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~11_combout\ = (\SHIP_OFFSET_GEN|LessThan0~6_combout\ & ((\SHIP_OFFSET_GEN|Add0~10_combout\ & ((\SHIP_OFFSET_GEN|LessThan0~10_combout\) # (!\SHIP_OFFSET_GEN|LessThan0~7_combout\))) # (!\SHIP_OFFSET_GEN|Add0~10_combout\ & 
-- (!\SHIP_OFFSET_GEN|LessThan0~7_combout\ & \SHIP_OFFSET_GEN|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~10_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan0~7_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan0~10_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~6_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~11_combout\);

-- Location: LCCOMB_X42_Y19_N28
\SHIP_OFFSET_GEN|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|LessThan0~13_combout\ = (\SHIP_OFFSET_GEN|Add0~16_combout\ & (((\SHIP_OFFSET_GEN|LessThan0~12_combout\) # (\SHIP_OFFSET_GEN|LessThan0~11_combout\)) # (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # 
-- (!\SHIP_OFFSET_GEN|Add0~16_combout\ & (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\SHIP_OFFSET_GEN|LessThan0~12_combout\) # (\SHIP_OFFSET_GEN|LessThan0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~16_combout\,
	datab => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan0~12_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~11_combout\,
	combout => \SHIP_OFFSET_GEN|LessThan0~13_combout\);

-- Location: LCCOMB_X43_Y19_N10
\SHIP_OFFSET_GEN|x_counter_clk~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~3_combout\ = (\SHIP_OFFSET_GEN|LessThan0~5_combout\ & (\SHIP_OFFSET_GEN|LessThan0~13_combout\ & (\SHIP_OFFSET_GEN|Add0~18_combout\ $ (!\SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add0~18_combout\,
	datab => \SHIP_OFFSET_GEN|LessThan0~5_combout\,
	datac => \SHIP_OFFSET_GEN|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => \SHIP_OFFSET_GEN|LessThan0~13_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~3_combout\);

-- Location: LCCOMB_X43_Y19_N16
\SHIP_OFFSET_GEN|x_counter_clk~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~4_combout\ = (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|x_counter_clk~2_combout\) # (\SHIP_OFFSET_GEN|x_counter_clk~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datac => \SHIP_OFFSET_GEN|x_counter_clk~2_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~3_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~4_combout\);

-- Location: LCCOMB_X43_Y19_N30
\SHIP_OFFSET_GEN|x_counter_clk~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~5_combout\ = (!\SHIP_OFFSET_GEN|Add0~62_combout\ & ((\SHIP_OFFSET_GEN|x_counter_clk~1_combout\) # ((\SHIP_OFFSET_GEN|x_counter_clk~4_combout\) # (!\SHIP_OFFSET_GEN|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|x_counter_clk~1_combout\,
	datab => \SHIP_OFFSET_GEN|Add0~62_combout\,
	datac => \SHIP_OFFSET_GEN|LessThan1~5_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~4_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\);

-- Location: LCCOMB_X44_Y19_N8
\SHIP_OFFSET_GEN|x_counter_clk~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~6_combout\ = \SHIP_OFFSET_GEN|x_counter_clk~q\ $ (((!\SHIP_OFFSET_GEN|Equal0~0_combout\ & \SHIP_OFFSET_GEN|x_counter_clk~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|x_counter_clk~q\,
	datac => \SHIP_OFFSET_GEN|Equal0~0_combout\,
	datad => \SHIP_OFFSET_GEN|x_counter_clk~5_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~6_combout\);

-- Location: LCCOMB_X44_Y19_N24
\SHIP_OFFSET_GEN|x_counter_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_counter_clk~feeder_combout\ = \SHIP_OFFSET_GEN|x_counter_clk~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|x_counter_clk~6_combout\,
	combout => \SHIP_OFFSET_GEN|x_counter_clk~feeder_combout\);

-- Location: FF_X44_Y19_N25
\SHIP_OFFSET_GEN|x_counter_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|U1|clk_out~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|x_counter_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|x_counter_clk~q\);

-- Location: CLKCTRL_G17
\SHIP_OFFSET_GEN|x_counter_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y13_N10
\SHIP_OFFSET_GEN|U3|count[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[0]~9_combout\ = \SHIP_OFFSET_GEN|U3|count\(0) $ (VCC)
-- \SHIP_OFFSET_GEN|U3|count[0]~10\ = CARRY(\SHIP_OFFSET_GEN|U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U3|count\(0),
	datad => VCC,
	combout => \SHIP_OFFSET_GEN|U3|count[0]~9_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[0]~10\);

-- Location: LCCOMB_X27_Y13_N20
\SHIP_OFFSET_GEN|U3|count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[5]~19_combout\ = (\SHIP_OFFSET_GEN|U3|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[4]~18\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (\SHIP_OFFSET_GEN|U3|count[4]~18\ & VCC)))) # 
-- (!\SHIP_OFFSET_GEN|U3|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|U3|count[4]~18\) # (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[4]~18\))))
-- \SHIP_OFFSET_GEN|U3|count[5]~20\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(5) & (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & !\SHIP_OFFSET_GEN|U3|count[4]~18\)) # (!\SHIP_OFFSET_GEN|U3|count\(5) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\) # 
-- (!\SHIP_OFFSET_GEN|U3|count[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[4]~18\,
	combout => \SHIP_OFFSET_GEN|U3|count[5]~19_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[5]~20\);

-- Location: LCCOMB_X27_Y13_N22
\SHIP_OFFSET_GEN|U3|count[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[6]~21_combout\ = ((\SHIP_OFFSET_GEN|U3|count\(6) $ (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ $ (\SHIP_OFFSET_GEN|U3|count[5]~20\)))) # (GND)
-- \SHIP_OFFSET_GEN|U3|count[6]~22\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(6) & ((!\SHIP_OFFSET_GEN|U3|count[5]~20\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))) # (!\SHIP_OFFSET_GEN|U3|count\(6) & (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & 
-- !\SHIP_OFFSET_GEN|U3|count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(6),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[5]~20\,
	combout => \SHIP_OFFSET_GEN|U3|count[6]~21_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[6]~22\);

-- Location: FF_X27_Y13_N23
\SHIP_OFFSET_GEN|U3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[6]~21_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(6));

-- Location: LCCOMB_X27_Y13_N24
\SHIP_OFFSET_GEN|U3|count[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[7]~23_combout\ = (\SHIP_OFFSET_GEN|U3|count\(7) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[6]~22\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (\SHIP_OFFSET_GEN|U3|count[6]~22\ & VCC)))) # 
-- (!\SHIP_OFFSET_GEN|U3|count\(7) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|U3|count[6]~22\) # (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[6]~22\))))
-- \SHIP_OFFSET_GEN|U3|count[7]~24\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(7) & (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & !\SHIP_OFFSET_GEN|U3|count[6]~22\)) # (!\SHIP_OFFSET_GEN|U3|count\(7) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\) # 
-- (!\SHIP_OFFSET_GEN|U3|count[6]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(7),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[6]~22\,
	combout => \SHIP_OFFSET_GEN|U3|count[7]~23_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[7]~24\);

-- Location: FF_X27_Y13_N25
\SHIP_OFFSET_GEN|U3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[7]~23_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(7));

-- Location: LCCOMB_X27_Y13_N26
\SHIP_OFFSET_GEN|U3|count[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[8]~25_combout\ = \SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count[7]~24\ $ (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	cin => \SHIP_OFFSET_GEN|U3|count[7]~24\,
	combout => \SHIP_OFFSET_GEN|U3|count[8]~25_combout\);

-- Location: FF_X27_Y13_N27
\SHIP_OFFSET_GEN|U3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[8]~25_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(8));

-- Location: LCCOMB_X27_Y13_N4
\SHIP_OFFSET_GEN|bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|bounds~0_combout\ = \SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => \SHIP_OFFSET_GEN|U3|count\(0),
	combout => \SHIP_OFFSET_GEN|bounds~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\SHIP_OFFSET_GEN|Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~1_cout\ = CARRY((\SHIP_OFFSET_GEN|bounds~0_combout\ & \SHIP_OFFSET_GEN|U3|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|bounds~0_combout\,
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => VCC,
	cout => \SHIP_OFFSET_GEN|Add4~1_cout\);

-- Location: LCCOMB_X26_Y13_N6
\SHIP_OFFSET_GEN|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~3_cout\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(8) $ (!\SHIP_OFFSET_GEN|U3|count\(1))) # (!\SHIP_OFFSET_GEN|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \SHIP_OFFSET_GEN|U3|count\(1),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~1_cout\,
	cout => \SHIP_OFFSET_GEN|Add4~3_cout\);

-- Location: LCCOMB_X26_Y13_N8
\SHIP_OFFSET_GEN|Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~5_cout\ = CARRY((!\SHIP_OFFSET_GEN|Add4~3_cout\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \SHIP_OFFSET_GEN|U3|count\(2),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~3_cout\,
	cout => \SHIP_OFFSET_GEN|Add4~5_cout\);

-- Location: LCCOMB_X26_Y13_N10
\SHIP_OFFSET_GEN|Add4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~7_cout\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(3) $ (!\SHIP_OFFSET_GEN|U3|count\(8))) # (!\SHIP_OFFSET_GEN|Add4~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(3),
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~5_cout\,
	cout => \SHIP_OFFSET_GEN|Add4~7_cout\);

-- Location: LCCOMB_X26_Y13_N12
\SHIP_OFFSET_GEN|Add4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~9_cout\ = CARRY((!\SHIP_OFFSET_GEN|Add4~7_cout\ & (\SHIP_OFFSET_GEN|U3|count\(4) $ (\SHIP_OFFSET_GEN|U3|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(4),
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~7_cout\,
	cout => \SHIP_OFFSET_GEN|Add4~9_cout\);

-- Location: LCCOMB_X26_Y13_N14
\SHIP_OFFSET_GEN|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~10_combout\ = (\SHIP_OFFSET_GEN|Add4~9_cout\ & (\SHIP_OFFSET_GEN|U3|count\(5) $ ((!\SHIP_OFFSET_GEN|U3|count\(8))))) # (!\SHIP_OFFSET_GEN|Add4~9_cout\ & ((\SHIP_OFFSET_GEN|U3|count\(5) $ (\SHIP_OFFSET_GEN|U3|count\(8))) # (GND)))
-- \SHIP_OFFSET_GEN|Add4~11\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(5) $ (!\SHIP_OFFSET_GEN|U3|count\(8))) # (!\SHIP_OFFSET_GEN|Add4~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~9_cout\,
	combout => \SHIP_OFFSET_GEN|Add4~10_combout\,
	cout => \SHIP_OFFSET_GEN|Add4~11\);

-- Location: LCCOMB_X26_Y13_N16
\SHIP_OFFSET_GEN|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~12_combout\ = (\SHIP_OFFSET_GEN|Add4~11\ & ((\SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count\(6))))) # (!\SHIP_OFFSET_GEN|Add4~11\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count\(6) $ (VCC))))
-- \SHIP_OFFSET_GEN|Add4~13\ = CARRY((!\SHIP_OFFSET_GEN|Add4~11\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ (\SHIP_OFFSET_GEN|U3|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~11\,
	combout => \SHIP_OFFSET_GEN|Add4~12_combout\,
	cout => \SHIP_OFFSET_GEN|Add4~13\);

-- Location: LCCOMB_X26_Y13_N18
\SHIP_OFFSET_GEN|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~14_combout\ = (\SHIP_OFFSET_GEN|Add4~13\ & (\SHIP_OFFSET_GEN|U3|count\(7) $ ((!\SHIP_OFFSET_GEN|U3|count\(8))))) # (!\SHIP_OFFSET_GEN|Add4~13\ & ((\SHIP_OFFSET_GEN|U3|count\(7) $ (\SHIP_OFFSET_GEN|U3|count\(8))) # (GND)))
-- \SHIP_OFFSET_GEN|Add4~15\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(7) $ (!\SHIP_OFFSET_GEN|U3|count\(8))) # (!\SHIP_OFFSET_GEN|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(7),
	datab => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|Add4~13\,
	combout => \SHIP_OFFSET_GEN|Add4~14_combout\,
	cout => \SHIP_OFFSET_GEN|Add4~15\);

-- Location: LCCOMB_X26_Y13_N20
\SHIP_OFFSET_GEN|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|Add4~16_combout\ = !\SHIP_OFFSET_GEN|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SHIP_OFFSET_GEN|Add4~15\,
	combout => \SHIP_OFFSET_GEN|Add4~16_combout\);

-- Location: LCCOMB_X26_Y13_N0
\SHIP_OFFSET_GEN|x_enable~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_enable~3_combout\ = (!\SHIP_OFFSET_GEN|Add4~10_combout\ & !\SHIP_OFFSET_GEN|Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|Add4~10_combout\,
	datad => \SHIP_OFFSET_GEN|Add4~12_combout\,
	combout => \SHIP_OFFSET_GEN|x_enable~3_combout\);

-- Location: LCCOMB_X27_Y13_N8
\SHIP_OFFSET_GEN|x_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_enable~1_combout\ = (\SHIP_OFFSET_GEN|U3|count\(5) & (!\SHIP_OFFSET_GEN|U3|count\(0) & (!\SHIP_OFFSET_GEN|U3|count\(2) & !\SHIP_OFFSET_GEN|U3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(0),
	datac => \SHIP_OFFSET_GEN|U3|count\(2),
	datad => \SHIP_OFFSET_GEN|U3|count\(1),
	combout => \SHIP_OFFSET_GEN|x_enable~1_combout\);

-- Location: LCCOMB_X27_Y13_N2
\SHIP_OFFSET_GEN|x_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_enable~0_combout\ = (\SHIP_OFFSET_GEN|U3|count\(8) & (!\SHIP_OFFSET_GEN|U3|count\(7) & (\SHIP_OFFSET_GEN|U3|count\(6) & \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))) # (!\SHIP_OFFSET_GEN|U3|count\(8) & (\SHIP_OFFSET_GEN|U3|count\(7) & 
-- (!\SHIP_OFFSET_GEN|U3|count\(6) & !\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \SHIP_OFFSET_GEN|U3|count\(7),
	datac => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	combout => \SHIP_OFFSET_GEN|x_enable~0_combout\);

-- Location: LCCOMB_X27_Y13_N6
\SHIP_OFFSET_GEN|x_enable~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_enable~2_combout\ = (!\SHIP_OFFSET_GEN|U3|count\(3) & (!\SHIP_OFFSET_GEN|U3|count\(4) & (\SHIP_OFFSET_GEN|x_enable~1_combout\ & \SHIP_OFFSET_GEN|x_enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(3),
	datab => \SHIP_OFFSET_GEN|U3|count\(4),
	datac => \SHIP_OFFSET_GEN|x_enable~1_combout\,
	datad => \SHIP_OFFSET_GEN|x_enable~0_combout\,
	combout => \SHIP_OFFSET_GEN|x_enable~2_combout\);

-- Location: LCCOMB_X27_Y13_N28
\SHIP_OFFSET_GEN|x_enable~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|x_enable~4_combout\ = (\SHIP_OFFSET_GEN|x_enable~2_combout\) # ((!\SHIP_OFFSET_GEN|Add4~16_combout\ & ((\SHIP_OFFSET_GEN|x_enable~3_combout\) # (!\SHIP_OFFSET_GEN|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|Add4~14_combout\,
	datab => \SHIP_OFFSET_GEN|Add4~16_combout\,
	datac => \SHIP_OFFSET_GEN|x_enable~3_combout\,
	datad => \SHIP_OFFSET_GEN|x_enable~2_combout\,
	combout => \SHIP_OFFSET_GEN|x_enable~4_combout\);

-- Location: FF_X27_Y13_N11
\SHIP_OFFSET_GEN|U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[0]~9_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(0));

-- Location: LCCOMB_X27_Y13_N12
\SHIP_OFFSET_GEN|U3|count[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[1]~11_combout\ = (\SHIP_OFFSET_GEN|U3|count\(1) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[0]~10\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (\SHIP_OFFSET_GEN|U3|count[0]~10\ & VCC)))) # 
-- (!\SHIP_OFFSET_GEN|U3|count\(1) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|U3|count[0]~10\) # (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[0]~10\))))
-- \SHIP_OFFSET_GEN|U3|count[1]~12\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(1) & (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & !\SHIP_OFFSET_GEN|U3|count[0]~10\)) # (!\SHIP_OFFSET_GEN|U3|count\(1) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\) # 
-- (!\SHIP_OFFSET_GEN|U3|count[0]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(1),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[0]~10\,
	combout => \SHIP_OFFSET_GEN|U3|count[1]~11_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[1]~12\);

-- Location: FF_X27_Y13_N13
\SHIP_OFFSET_GEN|U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[1]~11_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(1));

-- Location: LCCOMB_X27_Y13_N14
\SHIP_OFFSET_GEN|U3|count[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[2]~13_combout\ = ((\SHIP_OFFSET_GEN|U3|count\(2) $ (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ $ (\SHIP_OFFSET_GEN|U3|count[1]~12\)))) # (GND)
-- \SHIP_OFFSET_GEN|U3|count[2]~14\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(2) & ((!\SHIP_OFFSET_GEN|U3|count[1]~12\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))) # (!\SHIP_OFFSET_GEN|U3|count\(2) & (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & 
-- !\SHIP_OFFSET_GEN|U3|count[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(2),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[1]~12\,
	combout => \SHIP_OFFSET_GEN|U3|count[2]~13_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[2]~14\);

-- Location: FF_X27_Y13_N15
\SHIP_OFFSET_GEN|U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[2]~13_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(2));

-- Location: LCCOMB_X27_Y13_N16
\SHIP_OFFSET_GEN|U3|count[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[3]~15_combout\ = (\SHIP_OFFSET_GEN|U3|count\(3) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[2]~14\)) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (\SHIP_OFFSET_GEN|U3|count[2]~14\ & VCC)))) # 
-- (!\SHIP_OFFSET_GEN|U3|count\(3) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & ((\SHIP_OFFSET_GEN|U3|count[2]~14\) # (GND))) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & (!\SHIP_OFFSET_GEN|U3|count[2]~14\))))
-- \SHIP_OFFSET_GEN|U3|count[3]~16\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(3) & (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & !\SHIP_OFFSET_GEN|U3|count[2]~14\)) # (!\SHIP_OFFSET_GEN|U3|count\(3) & ((\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\) # 
-- (!\SHIP_OFFSET_GEN|U3|count[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(3),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[2]~14\,
	combout => \SHIP_OFFSET_GEN|U3|count[3]~15_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[3]~16\);

-- Location: FF_X27_Y13_N17
\SHIP_OFFSET_GEN|U3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[3]~15_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(3));

-- Location: LCCOMB_X27_Y13_N18
\SHIP_OFFSET_GEN|U3|count[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_OFFSET_GEN|U3|count[4]~17_combout\ = ((\SHIP_OFFSET_GEN|U3|count\(4) $ (\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ $ (\SHIP_OFFSET_GEN|U3|count[3]~16\)))) # (GND)
-- \SHIP_OFFSET_GEN|U3|count[4]~18\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(4) & ((!\SHIP_OFFSET_GEN|U3|count[3]~16\) # (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\))) # (!\SHIP_OFFSET_GEN|U3|count\(4) & (!\SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\ & 
-- !\SHIP_OFFSET_GEN|U3|count[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(4),
	datab => \SHIP_OFFSET_GEN|U2|U0|memory[1][3]~q\,
	datad => VCC,
	cin => \SHIP_OFFSET_GEN|U3|count[3]~16\,
	combout => \SHIP_OFFSET_GEN|U3|count[4]~17_combout\,
	cout => \SHIP_OFFSET_GEN|U3|count[4]~18\);

-- Location: FF_X27_Y13_N19
\SHIP_OFFSET_GEN|U3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[4]~17_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(4));

-- Location: FF_X27_Y13_N21
\SHIP_OFFSET_GEN|U3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SHIP_OFFSET_GEN|x_counter_clk~clkctrl_outclk\,
	d => \SHIP_OFFSET_GEN|U3|count[5]~19_combout\,
	ena => \SHIP_OFFSET_GEN|x_enable~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIP_OFFSET_GEN|U3|count\(5));

-- Location: LCCOMB_X23_Y12_N30
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\SHIP_OFFSET_GEN|U3|count\(8) & (!\SHIP_OFFSET_GEN|U3|count\(7) & ((!\SHIP_OFFSET_GEN|U3|count\(6)) # (!\SHIP_OFFSET_GEN|U3|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(6),
	datac => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => \SHIP_OFFSET_GEN|U3|count\(7),
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \SHIP_OFFSET_GEN|U3|count\(8) $ (((\SHIP_OFFSET_GEN|U3|count\(7)) # ((\SHIP_OFFSET_GEN|U3|count\(5) & \SHIP_OFFSET_GEN|U3|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(6),
	datac => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => \SHIP_OFFSET_GEN|U3|count\(7),
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \SHIP_OFFSET_GEN|U3|count\(7) $ (((\SHIP_OFFSET_GEN|U3|count\(5) & \SHIP_OFFSET_GEN|U3|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datac => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => \SHIP_OFFSET_GEN|U3|count\(7),
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \SHIP_OFFSET_GEN|U3|count\(5) $ (\SHIP_OFFSET_GEN|U3|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datad => \SHIP_OFFSET_GEN|U3|count\(6),
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X21_Y12_N6
\SHIP_CURR|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~1_cout\ = CARRY((\VGA_CONTROLL|column\(0) & \SHIP_OFFSET_GEN|U3|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(0),
	datab => \SHIP_OFFSET_GEN|U3|count\(0),
	datad => VCC,
	cout => \SHIP_CURR|LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y12_N8
\SHIP_CURR|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~3_cout\ = CARRY((\VGA_CONTROLL|column\(1) & ((!\SHIP_CURR|LessThan0~1_cout\) # (!\SHIP_OFFSET_GEN|U3|count\(1)))) # (!\VGA_CONTROLL|column\(1) & (!\SHIP_OFFSET_GEN|U3|count\(1) & !\SHIP_CURR|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \SHIP_OFFSET_GEN|U3|count\(1),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~1_cout\,
	cout => \SHIP_CURR|LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y12_N10
\SHIP_CURR|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~5_cout\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(2) & ((!\SHIP_CURR|LessThan0~3_cout\) # (!\VGA_CONTROLL|column\(2)))) # (!\SHIP_OFFSET_GEN|U3|count\(2) & (!\VGA_CONTROLL|column\(2) & !\SHIP_CURR|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(2),
	datab => \VGA_CONTROLL|column\(2),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~3_cout\,
	cout => \SHIP_CURR|LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y12_N12
\SHIP_CURR|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~7_cout\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(3) & (\VGA_CONTROLL|column\(3) & !\SHIP_CURR|LessThan0~5_cout\)) # (!\SHIP_OFFSET_GEN|U3|count\(3) & ((\VGA_CONTROLL|column\(3)) # (!\SHIP_CURR|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(3),
	datab => \VGA_CONTROLL|column\(3),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~5_cout\,
	cout => \SHIP_CURR|LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y12_N14
\SHIP_CURR|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~9_cout\ = CARRY((\VGA_CONTROLL|column\(4) & (\SHIP_OFFSET_GEN|U3|count\(4) & !\SHIP_CURR|LessThan0~7_cout\)) # (!\VGA_CONTROLL|column\(4) & ((\SHIP_OFFSET_GEN|U3|count\(4)) # (!\SHIP_CURR|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(4),
	datab => \SHIP_OFFSET_GEN|U3|count\(4),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~7_cout\,
	cout => \SHIP_CURR|LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y12_N16
\SHIP_CURR|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~11_cout\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(5) & ((\VGA_CONTROLL|column\(5)) # (!\SHIP_CURR|LessThan0~9_cout\))) # (!\SHIP_OFFSET_GEN|U3|count\(5) & (\VGA_CONTROLL|column\(5) & !\SHIP_CURR|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \VGA_CONTROLL|column\(5),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~9_cout\,
	cout => \SHIP_CURR|LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y12_N18
\SHIP_CURR|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~13_cout\ = CARRY((\Add0~6_combout\ & ((!\SHIP_CURR|LessThan0~11_cout\) # (!\VGA_CONTROLL|column\(6)))) # (!\Add0~6_combout\ & (!\VGA_CONTROLL|column\(6) & !\SHIP_CURR|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \VGA_CONTROLL|column\(6),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~11_cout\,
	cout => \SHIP_CURR|LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y12_N20
\SHIP_CURR|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~15_cout\ = CARRY((\Add0~5_combout\ & ((\VGA_CONTROLL|column\(7)) # (!\SHIP_CURR|LessThan0~13_cout\))) # (!\Add0~5_combout\ & (\VGA_CONTROLL|column\(7) & !\SHIP_CURR|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \VGA_CONTROLL|column\(7),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~13_cout\,
	cout => \SHIP_CURR|LessThan0~15_cout\);

-- Location: LCCOMB_X21_Y12_N22
\SHIP_CURR|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~17_cout\ = CARRY((\Add0~4_combout\ & ((!\SHIP_CURR|LessThan0~15_cout\) # (!\VGA_CONTROLL|column\(8)))) # (!\Add0~4_combout\ & (!\VGA_CONTROLL|column\(8) & !\SHIP_CURR|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \VGA_CONTROLL|column\(8),
	datad => VCC,
	cin => \SHIP_CURR|LessThan0~15_cout\,
	cout => \SHIP_CURR|LessThan0~17_cout\);

-- Location: LCCOMB_X21_Y12_N24
\SHIP_CURR|LessThan0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan0~18_combout\ = (\VGA_CONTROLL|column\(9) & (\SHIP_CURR|LessThan0~17_cout\ & \Add0~3_combout\)) # (!\VGA_CONTROLL|column\(9) & ((\SHIP_CURR|LessThan0~17_cout\) # (\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_CONTROLL|column\(9),
	datad => \Add0~3_combout\,
	cin => \SHIP_CURR|LessThan0~17_cout\,
	combout => \SHIP_CURR|LessThan0~18_combout\);

-- Location: LCCOMB_X24_Y11_N6
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\SHIP_OFFSET_GEN|U4|count\(4)) # ((\SHIP_OFFSET_GEN|U4|count\(6)) # (\SHIP_OFFSET_GEN|U4|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(6),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X24_Y11_N28
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SHIP_OFFSET_GEN|U4|count\(4)) # (\SHIP_OFFSET_GEN|U4|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datad => \SHIP_OFFSET_GEN|U4|count\(5),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X24_Y11_N10
\SHIP_CURR|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~0_combout\ = (\SHIP_OFFSET_GEN|U4|count\(1) & (\SHIP_OFFSET_GEN|U4|count\(0) $ (VCC))) # (!\SHIP_OFFSET_GEN|U4|count\(1) & (\SHIP_OFFSET_GEN|U4|count\(0) & VCC))
-- \SHIP_CURR|Add3~1\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(1) & \SHIP_OFFSET_GEN|U4|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(1),
	datab => \SHIP_OFFSET_GEN|U4|count\(0),
	datad => VCC,
	combout => \SHIP_CURR|Add3~0_combout\,
	cout => \SHIP_CURR|Add3~1\);

-- Location: LCCOMB_X24_Y11_N12
\SHIP_CURR|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~2_combout\ = (\SHIP_OFFSET_GEN|U4|count\(2) & (!\SHIP_CURR|Add3~1\)) # (!\SHIP_OFFSET_GEN|U4|count\(2) & ((\SHIP_CURR|Add3~1\) # (GND)))
-- \SHIP_CURR|Add3~3\ = CARRY((!\SHIP_CURR|Add3~1\) # (!\SHIP_OFFSET_GEN|U4|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(2),
	datad => VCC,
	cin => \SHIP_CURR|Add3~1\,
	combout => \SHIP_CURR|Add3~2_combout\,
	cout => \SHIP_CURR|Add3~3\);

-- Location: LCCOMB_X24_Y11_N14
\SHIP_CURR|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~4_combout\ = (\SHIP_OFFSET_GEN|U4|count\(3) & ((GND) # (!\SHIP_CURR|Add3~3\))) # (!\SHIP_OFFSET_GEN|U4|count\(3) & (\SHIP_CURR|Add3~3\ $ (GND)))
-- \SHIP_CURR|Add3~5\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(3)) # (!\SHIP_CURR|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U4|count\(3),
	datad => VCC,
	cin => \SHIP_CURR|Add3~3\,
	combout => \SHIP_CURR|Add3~4_combout\,
	cout => \SHIP_CURR|Add3~5\);

-- Location: LCCOMB_X24_Y11_N16
\SHIP_CURR|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~6_combout\ = (\SHIP_OFFSET_GEN|U4|count\(4) & (!\SHIP_CURR|Add3~5\)) # (!\SHIP_OFFSET_GEN|U4|count\(4) & (\SHIP_CURR|Add3~5\ & VCC))
-- \SHIP_CURR|Add3~7\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(4) & !\SHIP_CURR|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datad => VCC,
	cin => \SHIP_CURR|Add3~5\,
	combout => \SHIP_CURR|Add3~6_combout\,
	cout => \SHIP_CURR|Add3~7\);

-- Location: LCCOMB_X24_Y11_N18
\SHIP_CURR|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~8_combout\ = (\SHIP_CURR|Add3~7\ & ((\SHIP_OFFSET_GEN|U4|count\(4) $ (!\SHIP_OFFSET_GEN|U4|count\(5))))) # (!\SHIP_CURR|Add3~7\ & (\SHIP_OFFSET_GEN|U4|count\(4) $ (\SHIP_OFFSET_GEN|U4|count\(5) $ (GND))))
-- \SHIP_CURR|Add3~9\ = CARRY((!\SHIP_CURR|Add3~7\ & (\SHIP_OFFSET_GEN|U4|count\(4) $ (!\SHIP_OFFSET_GEN|U4|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(4),
	datab => \SHIP_OFFSET_GEN|U4|count\(5),
	datad => VCC,
	cin => \SHIP_CURR|Add3~7\,
	combout => \SHIP_CURR|Add3~8_combout\,
	cout => \SHIP_CURR|Add3~9\);

-- Location: LCCOMB_X24_Y11_N20
\SHIP_CURR|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~10_combout\ = (\SHIP_CURR|Add3~9\ & (\Add1~2_combout\ $ ((\SHIP_OFFSET_GEN|U4|count\(6))))) # (!\SHIP_CURR|Add3~9\ & ((\Add1~2_combout\ $ (!\SHIP_OFFSET_GEN|U4|count\(6))) # (GND)))
-- \SHIP_CURR|Add3~11\ = CARRY((\Add1~2_combout\ $ (\SHIP_OFFSET_GEN|U4|count\(6))) # (!\SHIP_CURR|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \SHIP_OFFSET_GEN|U4|count\(6),
	datad => VCC,
	cin => \SHIP_CURR|Add3~9\,
	combout => \SHIP_CURR|Add3~10_combout\,
	cout => \SHIP_CURR|Add3~11\);

-- Location: LCCOMB_X24_Y11_N22
\SHIP_CURR|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~12_combout\ = (\SHIP_CURR|Add3~11\ & ((\SHIP_OFFSET_GEN|U4|count\(7) $ (!\Add1~1_combout\)))) # (!\SHIP_CURR|Add3~11\ & (\SHIP_OFFSET_GEN|U4|count\(7) $ (\Add1~1_combout\ $ (GND))))
-- \SHIP_CURR|Add3~13\ = CARRY((!\SHIP_CURR|Add3~11\ & (\SHIP_OFFSET_GEN|U4|count\(7) $ (!\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(7),
	datab => \Add1~1_combout\,
	datad => VCC,
	cin => \SHIP_CURR|Add3~11\,
	combout => \SHIP_CURR|Add3~12_combout\,
	cout => \SHIP_CURR|Add3~13\);

-- Location: LCCOMB_X24_Y11_N24
\SHIP_CURR|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~14_combout\ = (\SHIP_CURR|Add3~13\ & (\SHIP_OFFSET_GEN|U4|count\(8) $ ((!\Add1~0_combout\)))) # (!\SHIP_CURR|Add3~13\ & ((\SHIP_OFFSET_GEN|U4|count\(8) $ (\Add1~0_combout\)) # (GND)))
-- \SHIP_CURR|Add3~15\ = CARRY((\SHIP_OFFSET_GEN|U4|count\(8) $ (!\Add1~0_combout\)) # (!\SHIP_CURR|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(8),
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \SHIP_CURR|Add3~13\,
	combout => \SHIP_CURR|Add3~14_combout\,
	cout => \SHIP_CURR|Add3~15\);

-- Location: LCCOMB_X23_Y11_N6
\SHIP_CURR|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~1_cout\ = CARRY((!\SHIP_OFFSET_GEN|U4|count\(0) & \VGA_CONTROLL|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U4|count\(0),
	datab => \VGA_CONTROLL|row\(0),
	datad => VCC,
	cout => \SHIP_CURR|LessThan3~1_cout\);

-- Location: LCCOMB_X23_Y11_N8
\SHIP_CURR|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~3_cout\ = CARRY((\VGA_CONTROLL|row\(1) & ((!\SHIP_CURR|LessThan3~1_cout\) # (!\SHIP_CURR|Add3~0_combout\))) # (!\VGA_CONTROLL|row\(1) & (!\SHIP_CURR|Add3~0_combout\ & !\SHIP_CURR|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(1),
	datab => \SHIP_CURR|Add3~0_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~1_cout\,
	cout => \SHIP_CURR|LessThan3~3_cout\);

-- Location: LCCOMB_X23_Y11_N10
\SHIP_CURR|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~5_cout\ = CARRY((\VGA_CONTROLL|row\(2) & (\SHIP_CURR|Add3~2_combout\ & !\SHIP_CURR|LessThan3~3_cout\)) # (!\VGA_CONTROLL|row\(2) & ((\SHIP_CURR|Add3~2_combout\) # (!\SHIP_CURR|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(2),
	datab => \SHIP_CURR|Add3~2_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~3_cout\,
	cout => \SHIP_CURR|LessThan3~5_cout\);

-- Location: LCCOMB_X23_Y11_N12
\SHIP_CURR|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~7_cout\ = CARRY((\VGA_CONTROLL|row\(3) & ((!\SHIP_CURR|LessThan3~5_cout\) # (!\SHIP_CURR|Add3~4_combout\))) # (!\VGA_CONTROLL|row\(3) & (!\SHIP_CURR|Add3~4_combout\ & !\SHIP_CURR|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(3),
	datab => \SHIP_CURR|Add3~4_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~5_cout\,
	cout => \SHIP_CURR|LessThan3~7_cout\);

-- Location: LCCOMB_X23_Y11_N14
\SHIP_CURR|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~9_cout\ = CARRY((\VGA_CONTROLL|row\(4) & (\SHIP_CURR|Add3~6_combout\ & !\SHIP_CURR|LessThan3~7_cout\)) # (!\VGA_CONTROLL|row\(4) & ((\SHIP_CURR|Add3~6_combout\) # (!\SHIP_CURR|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(4),
	datab => \SHIP_CURR|Add3~6_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~7_cout\,
	cout => \SHIP_CURR|LessThan3~9_cout\);

-- Location: LCCOMB_X23_Y11_N16
\SHIP_CURR|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~11_cout\ = CARRY((\VGA_CONTROLL|row\(5) & ((!\SHIP_CURR|LessThan3~9_cout\) # (!\SHIP_CURR|Add3~8_combout\))) # (!\VGA_CONTROLL|row\(5) & (!\SHIP_CURR|Add3~8_combout\ & !\SHIP_CURR|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(5),
	datab => \SHIP_CURR|Add3~8_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~9_cout\,
	cout => \SHIP_CURR|LessThan3~11_cout\);

-- Location: LCCOMB_X23_Y11_N18
\SHIP_CURR|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~13_cout\ = CARRY((\SHIP_CURR|Add3~10_combout\ & ((!\SHIP_CURR|LessThan3~11_cout\) # (!\VGA_CONTROLL|row\(6)))) # (!\SHIP_CURR|Add3~10_combout\ & (!\VGA_CONTROLL|row\(6) & !\SHIP_CURR|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|Add3~10_combout\,
	datab => \VGA_CONTROLL|row\(6),
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~11_cout\,
	cout => \SHIP_CURR|LessThan3~13_cout\);

-- Location: LCCOMB_X23_Y11_N20
\SHIP_CURR|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~15_cout\ = CARRY((\VGA_CONTROLL|row\(7) & ((!\SHIP_CURR|LessThan3~13_cout\) # (!\SHIP_CURR|Add3~12_combout\))) # (!\VGA_CONTROLL|row\(7) & (!\SHIP_CURR|Add3~12_combout\ & !\SHIP_CURR|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(7),
	datab => \SHIP_CURR|Add3~12_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan3~13_cout\,
	cout => \SHIP_CURR|LessThan3~15_cout\);

-- Location: LCCOMB_X23_Y11_N22
\SHIP_CURR|LessThan3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan3~16_combout\ = (\SHIP_CURR|Add3~14_combout\ & ((!\VGA_CONTROLL|row\(8)) # (!\SHIP_CURR|LessThan3~15_cout\))) # (!\SHIP_CURR|Add3~14_combout\ & (!\SHIP_CURR|LessThan3~15_cout\ & !\VGA_CONTROLL|row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|Add3~14_combout\,
	datad => \VGA_CONTROLL|row\(8),
	cin => \SHIP_CURR|LessThan3~15_cout\,
	combout => \SHIP_CURR|LessThan3~16_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SHIP_OFFSET_GEN|U3|count\(8) & ((\SHIP_OFFSET_GEN|U3|count\(7)) # ((\SHIP_OFFSET_GEN|U3|count\(5) & \SHIP_OFFSET_GEN|U3|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(6),
	datac => \SHIP_OFFSET_GEN|U3|count\(8),
	datad => \SHIP_OFFSET_GEN|U3|count\(7),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\SHIP_OFFSET_GEN|U3|count\(7)) # ((\SHIP_OFFSET_GEN|U3|count\(5) & \SHIP_OFFSET_GEN|U3|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datac => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => \SHIP_OFFSET_GEN|U3|count\(7),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SHIP_OFFSET_GEN|U3|count\(6) & \SHIP_OFFSET_GEN|U3|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => \SHIP_OFFSET_GEN|U3|count\(5),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X23_Y12_N6
\SHIP_CURR|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~0_combout\ = (\SHIP_OFFSET_GEN|U3|count\(1) & (\SHIP_OFFSET_GEN|U3|count\(0) $ (VCC))) # (!\SHIP_OFFSET_GEN|U3|count\(1) & (\SHIP_OFFSET_GEN|U3|count\(0) & VCC))
-- \SHIP_CURR|Add2~1\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(1) & \SHIP_OFFSET_GEN|U3|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(1),
	datab => \SHIP_OFFSET_GEN|U3|count\(0),
	datad => VCC,
	combout => \SHIP_CURR|Add2~0_combout\,
	cout => \SHIP_CURR|Add2~1\);

-- Location: LCCOMB_X23_Y12_N8
\SHIP_CURR|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~2_combout\ = (\SHIP_OFFSET_GEN|U3|count\(2) & (!\SHIP_CURR|Add2~1\)) # (!\SHIP_OFFSET_GEN|U3|count\(2) & ((\SHIP_CURR|Add2~1\) # (GND)))
-- \SHIP_CURR|Add2~3\ = CARRY((!\SHIP_CURR|Add2~1\) # (!\SHIP_OFFSET_GEN|U3|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U3|count\(2),
	datad => VCC,
	cin => \SHIP_CURR|Add2~1\,
	combout => \SHIP_CURR|Add2~2_combout\,
	cout => \SHIP_CURR|Add2~3\);

-- Location: LCCOMB_X23_Y12_N10
\SHIP_CURR|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~4_combout\ = (\SHIP_OFFSET_GEN|U3|count\(3) & ((GND) # (!\SHIP_CURR|Add2~3\))) # (!\SHIP_OFFSET_GEN|U3|count\(3) & (\SHIP_CURR|Add2~3\ $ (GND)))
-- \SHIP_CURR|Add2~5\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(3)) # (!\SHIP_CURR|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U3|count\(3),
	datad => VCC,
	cin => \SHIP_CURR|Add2~3\,
	combout => \SHIP_CURR|Add2~4_combout\,
	cout => \SHIP_CURR|Add2~5\);

-- Location: LCCOMB_X23_Y12_N12
\SHIP_CURR|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~6_combout\ = (\SHIP_OFFSET_GEN|U3|count\(4) & (\SHIP_CURR|Add2~5\ & VCC)) # (!\SHIP_OFFSET_GEN|U3|count\(4) & (!\SHIP_CURR|Add2~5\))
-- \SHIP_CURR|Add2~7\ = CARRY((!\SHIP_OFFSET_GEN|U3|count\(4) & !\SHIP_CURR|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_OFFSET_GEN|U3|count\(4),
	datad => VCC,
	cin => \SHIP_CURR|Add2~5\,
	combout => \SHIP_CURR|Add2~6_combout\,
	cout => \SHIP_CURR|Add2~7\);

-- Location: LCCOMB_X23_Y12_N14
\SHIP_CURR|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~8_combout\ = (\SHIP_OFFSET_GEN|U3|count\(5) & (!\SHIP_CURR|Add2~7\ & VCC)) # (!\SHIP_OFFSET_GEN|U3|count\(5) & (\SHIP_CURR|Add2~7\ $ (GND)))
-- \SHIP_CURR|Add2~9\ = CARRY((!\SHIP_OFFSET_GEN|U3|count\(5) & !\SHIP_CURR|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datad => VCC,
	cin => \SHIP_CURR|Add2~7\,
	combout => \SHIP_CURR|Add2~8_combout\,
	cout => \SHIP_CURR|Add2~9\);

-- Location: LCCOMB_X23_Y12_N16
\SHIP_CURR|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~10_combout\ = (\SHIP_CURR|Add2~9\ & (\SHIP_OFFSET_GEN|U3|count\(5) $ ((!\SHIP_OFFSET_GEN|U3|count\(6))))) # (!\SHIP_CURR|Add2~9\ & ((\SHIP_OFFSET_GEN|U3|count\(5) $ (\SHIP_OFFSET_GEN|U3|count\(6))) # (GND)))
-- \SHIP_CURR|Add2~11\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(5) $ (!\SHIP_OFFSET_GEN|U3|count\(6))) # (!\SHIP_CURR|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(5),
	datab => \SHIP_OFFSET_GEN|U3|count\(6),
	datad => VCC,
	cin => \SHIP_CURR|Add2~9\,
	combout => \SHIP_CURR|Add2~10_combout\,
	cout => \SHIP_CURR|Add2~11\);

-- Location: LCCOMB_X23_Y12_N18
\SHIP_CURR|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~12_combout\ = (\SHIP_CURR|Add2~11\ & ((\SHIP_OFFSET_GEN|U3|count\(7) $ (!\Add0~2_combout\)))) # (!\SHIP_CURR|Add2~11\ & (\SHIP_OFFSET_GEN|U3|count\(7) $ (\Add0~2_combout\ $ (GND))))
-- \SHIP_CURR|Add2~13\ = CARRY((!\SHIP_CURR|Add2~11\ & (\SHIP_OFFSET_GEN|U3|count\(7) $ (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(7),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \SHIP_CURR|Add2~11\,
	combout => \SHIP_CURR|Add2~12_combout\,
	cout => \SHIP_CURR|Add2~13\);

-- Location: LCCOMB_X23_Y12_N20
\SHIP_CURR|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~14_combout\ = (\SHIP_CURR|Add2~13\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ ((!\Add0~1_combout\)))) # (!\SHIP_CURR|Add2~13\ & ((\SHIP_OFFSET_GEN|U3|count\(8) $ (\Add0~1_combout\)) # (GND)))
-- \SHIP_CURR|Add2~15\ = CARRY((\SHIP_OFFSET_GEN|U3|count\(8) $ (!\Add0~1_combout\)) # (!\SHIP_CURR|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \SHIP_CURR|Add2~13\,
	combout => \SHIP_CURR|Add2~14_combout\,
	cout => \SHIP_CURR|Add2~15\);

-- Location: LCCOMB_X23_Y12_N22
\SHIP_CURR|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~16_combout\ = (\SHIP_CURR|Add2~15\ & ((\SHIP_OFFSET_GEN|U3|count\(8) $ (\Add0~0_combout\)))) # (!\SHIP_CURR|Add2~15\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ (\Add0~0_combout\ $ (VCC))))
-- \SHIP_CURR|Add2~17\ = CARRY((!\SHIP_CURR|Add2~15\ & (\SHIP_OFFSET_GEN|U3|count\(8) $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(8),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \SHIP_CURR|Add2~15\,
	combout => \SHIP_CURR|Add2~16_combout\,
	cout => \SHIP_CURR|Add2~17\);

-- Location: LCCOMB_X22_Y12_N0
\SHIP_CURR|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~1_cout\ = CARRY((!\SHIP_OFFSET_GEN|U3|count\(0) & \VGA_CONTROLL|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_OFFSET_GEN|U3|count\(0),
	datab => \VGA_CONTROLL|column\(0),
	datad => VCC,
	cout => \SHIP_CURR|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y12_N2
\SHIP_CURR|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~3_cout\ = CARRY((\SHIP_CURR|Add2~0_combout\ & (\VGA_CONTROLL|column\(1) & !\SHIP_CURR|LessThan1~1_cout\)) # (!\SHIP_CURR|Add2~0_combout\ & ((\VGA_CONTROLL|column\(1)) # (!\SHIP_CURR|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|Add2~0_combout\,
	datab => \VGA_CONTROLL|column\(1),
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~1_cout\,
	cout => \SHIP_CURR|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y12_N4
\SHIP_CURR|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~5_cout\ = CARRY((\VGA_CONTROLL|column\(2) & (\SHIP_CURR|Add2~2_combout\ & !\SHIP_CURR|LessThan1~3_cout\)) # (!\VGA_CONTROLL|column\(2) & ((\SHIP_CURR|Add2~2_combout\) # (!\SHIP_CURR|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \SHIP_CURR|Add2~2_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~3_cout\,
	cout => \SHIP_CURR|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y12_N6
\SHIP_CURR|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~7_cout\ = CARRY((\VGA_CONTROLL|column\(3) & ((!\SHIP_CURR|LessThan1~5_cout\) # (!\SHIP_CURR|Add2~4_combout\))) # (!\VGA_CONTROLL|column\(3) & (!\SHIP_CURR|Add2~4_combout\ & !\SHIP_CURR|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(3),
	datab => \SHIP_CURR|Add2~4_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~5_cout\,
	cout => \SHIP_CURR|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y12_N8
\SHIP_CURR|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~9_cout\ = CARRY((\VGA_CONTROLL|column\(4) & (\SHIP_CURR|Add2~6_combout\ & !\SHIP_CURR|LessThan1~7_cout\)) # (!\VGA_CONTROLL|column\(4) & ((\SHIP_CURR|Add2~6_combout\) # (!\SHIP_CURR|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(4),
	datab => \SHIP_CURR|Add2~6_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~7_cout\,
	cout => \SHIP_CURR|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y12_N10
\SHIP_CURR|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~11_cout\ = CARRY((\VGA_CONTROLL|column\(5) & ((!\SHIP_CURR|LessThan1~9_cout\) # (!\SHIP_CURR|Add2~8_combout\))) # (!\VGA_CONTROLL|column\(5) & (!\SHIP_CURR|Add2~8_combout\ & !\SHIP_CURR|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(5),
	datab => \SHIP_CURR|Add2~8_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~9_cout\,
	cout => \SHIP_CURR|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y12_N12
\SHIP_CURR|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~13_cout\ = CARRY((\SHIP_CURR|Add2~10_combout\ & ((!\SHIP_CURR|LessThan1~11_cout\) # (!\VGA_CONTROLL|column\(6)))) # (!\SHIP_CURR|Add2~10_combout\ & (!\VGA_CONTROLL|column\(6) & !\SHIP_CURR|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|Add2~10_combout\,
	datab => \VGA_CONTROLL|column\(6),
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~11_cout\,
	cout => \SHIP_CURR|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y12_N14
\SHIP_CURR|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~15_cout\ = CARRY((\SHIP_CURR|Add2~12_combout\ & (\VGA_CONTROLL|column\(7) & !\SHIP_CURR|LessThan1~13_cout\)) # (!\SHIP_CURR|Add2~12_combout\ & ((\VGA_CONTROLL|column\(7)) # (!\SHIP_CURR|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|Add2~12_combout\,
	datab => \VGA_CONTROLL|column\(7),
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~13_cout\,
	cout => \SHIP_CURR|LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y12_N16
\SHIP_CURR|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~17_cout\ = CARRY((\VGA_CONTROLL|column\(8) & (\SHIP_CURR|Add2~14_combout\ & !\SHIP_CURR|LessThan1~15_cout\)) # (!\VGA_CONTROLL|column\(8) & ((\SHIP_CURR|Add2~14_combout\) # (!\SHIP_CURR|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(8),
	datab => \SHIP_CURR|Add2~14_combout\,
	datad => VCC,
	cin => \SHIP_CURR|LessThan1~15_cout\,
	cout => \SHIP_CURR|LessThan1~17_cout\);

-- Location: LCCOMB_X22_Y12_N18
\SHIP_CURR|LessThan1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|LessThan1~18_combout\ = (\VGA_CONTROLL|column\(9) & (\SHIP_CURR|LessThan1~17_cout\ & \SHIP_CURR|Add2~16_combout\)) # (!\VGA_CONTROLL|column\(9) & ((\SHIP_CURR|LessThan1~17_cout\) # (\SHIP_CURR|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(9),
	datad => \SHIP_CURR|Add2~16_combout\,
	cin => \SHIP_CURR|LessThan1~17_cout\,
	combout => \SHIP_CURR|LessThan1~18_combout\);

-- Location: LCCOMB_X23_Y12_N24
\SHIP_CURR|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add2~18_combout\ = \SHIP_CURR|Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SHIP_CURR|Add2~17\,
	combout => \SHIP_CURR|Add2~18_combout\);

-- Location: LCCOMB_X24_Y11_N26
\SHIP_CURR|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|Add3~16_combout\ = !\SHIP_CURR|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SHIP_CURR|Add3~15\,
	combout => \SHIP_CURR|Add3~16_combout\);

-- Location: LCCOMB_X23_Y11_N28
\SHIP_CURR|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|in_bounds~0_combout\ = (\SHIP_CURR|LessThan3~16_combout\ & ((\SHIP_CURR|LessThan1~18_combout\) # ((\SHIP_CURR|Add2~18_combout\)))) # (!\SHIP_CURR|LessThan3~16_combout\ & (\SHIP_CURR|Add3~16_combout\ & ((\SHIP_CURR|LessThan1~18_combout\) # 
-- (\SHIP_CURR|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|LessThan3~16_combout\,
	datab => \SHIP_CURR|LessThan1~18_combout\,
	datac => \SHIP_CURR|Add2~18_combout\,
	datad => \SHIP_CURR|Add3~16_combout\,
	combout => \SHIP_CURR|in_bounds~0_combout\);

-- Location: LCCOMB_X23_Y11_N2
\SHIP_CURR|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_CURR|in_bounds~1_combout\ = (!\SHIP_CURR|LessThan2~16_combout\ & (!\SHIP_CURR|LessThan0~18_combout\ & \SHIP_CURR|in_bounds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|LessThan2~16_combout\,
	datac => \SHIP_CURR|LessThan0~18_combout\,
	datad => \SHIP_CURR|in_bounds~0_combout\,
	combout => \SHIP_CURR|in_bounds~1_combout\);

-- Location: LCCOMB_X22_Y12_N24
\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\ = (\VGA_CONTROLL|column\(2) & ((\VGA_CONTROLL|column\(1)) # ((!\VGA_CONTROLL|column\(0) & \VGA_CONTROLL|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(2),
	datab => \VGA_CONTROLL|column\(0),
	datac => \VGA_CONTROLL|column\(1),
	datad => \VGA_CONTROLL|column\(3),
	combout => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\ = (\VGA_CONTROLL|column\(4)) # ((\VGA_CONTROLL|column\(5) & (\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\ & \VGA_CONTROLL|column\(3))) # (!\VGA_CONTROLL|column\(5) & 
-- ((\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\) # (\VGA_CONTROLL|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(5),
	datab => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~0_combout\,
	datac => \VGA_CONTROLL|column\(4),
	datad => \VGA_CONTROLL|column\(3),
	combout => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0_combout\ = (((!\VGA_CONTROLL|row\(4)) # (!\VGA_CONTROLL|row\(3))) # (!\VGA_CONTROLL|row\(2))) # (!\VGA_CONTROLL|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|row\(1),
	datab => \VGA_CONTROLL|row\(2),
	datac => \VGA_CONTROLL|row\(3),
	datad => \VGA_CONTROLL|row\(4),
	combout => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\ = (!\VGA_CONTROLL|column\(8) & (\SCORE_1|in_bounds~0_combout\ & (!\VGA_CONTROLL|column\(7) & \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(8),
	datab => \SCORE_1|in_bounds~0_combout\,
	datac => \VGA_CONTROLL|column\(7),
	datad => \SHIP_REM_LIVES:2:SHIP_LIFE|LessThan3~0_combout\,
	combout => \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2_combout\ = ((\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\ & ((\VGA_CONTROLL|column\(6)) # (!\VGA_CONTROLL|column\(5)))) # (!\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\ & ((\VGA_CONTROLL|column\(5)) # 
-- (!\VGA_CONTROLL|column\(6))))) # (!\SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~1_combout\,
	datab => \VGA_CONTROLL|column\(6),
	datac => \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\,
	datad => \VGA_CONTROLL|column\(5),
	combout => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2_combout\);

-- Location: LCCOMB_X21_Y12_N30
\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0_combout\ = (!\VGA_CONTROLL|column\(5) & ((\VGA_CONTROLL|column\(4)) # ((\VGA_CONTROLL|column\(3) & !\SCORE_1|Mux99~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(4),
	datab => \VGA_CONTROLL|column\(3),
	datac => \VGA_CONTROLL|column\(5),
	datad => \SCORE_1|Mux99~10_combout\,
	combout => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1_combout\ = ((!\VGA_CONTROLL|column\(1) & (!\VGA_CONTROLL|column\(2) & \VGA_CONTROLL|column\(0)))) # (!\VGA_CONTROLL|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(1),
	datab => \VGA_CONTROLL|column\(2),
	datac => \VGA_CONTROLL|column\(3),
	datad => \VGA_CONTROLL|column\(0),
	combout => \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\curr_pixel~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~5_combout\ = (\VGA_CONTROLL|column\(4) & (!\VGA_CONTROLL|column\(5))) # (!\VGA_CONTROLL|column\(4) & (\VGA_CONTROLL|column\(5) & \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(4),
	datac => \VGA_CONTROLL|column\(5),
	datad => \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~1_combout\,
	combout => \curr_pixel~5_combout\);

-- Location: LCCOMB_X21_Y12_N26
\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1_combout\ = (\VGA_CONTROLL|column\(5) & (!\VGA_CONTROLL|column\(4) & ((\VGA_CONTROLL|column\(0)) # (!\VGA_CONTROLL|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_CONTROLL|column\(0),
	datab => \VGA_CONTROLL|column\(5),
	datac => \VGA_CONTROLL|column\(4),
	datad => \VGA_CONTROLL|column\(1),
	combout => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1_combout\);

-- Location: LCCOMB_X25_Y12_N4
\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2_combout\ = (\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1_combout\ & (!\VGA_CONTROLL|column\(2) & !\VGA_CONTROLL|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~1_combout\,
	datac => \VGA_CONTROLL|column\(2),
	datad => \VGA_CONTROLL|column\(3),
	combout => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2_combout\);

-- Location: LCCOMB_X21_Y12_N28
\curr_pixel~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~6_combout\ = (\VGA_CONTROLL|column\(6) & (((\curr_pixel~5_combout\)))) # (!\VGA_CONTROLL|column\(6) & ((\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0_combout\) # ((\SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~0_combout\,
	datab => \curr_pixel~5_combout\,
	datac => \VGA_CONTROLL|column\(6),
	datad => \SHIP_REM_LIVES:0:SHIP_LIFE|in_bounds~2_combout\,
	combout => \curr_pixel~6_combout\);

-- Location: LCCOMB_X22_Y12_N30
\curr_pixel~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~7_combout\ = (\SHIP_CURR|in_bounds~1_combout\) # (((\SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\ & \curr_pixel~6_combout\)) # (!\SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIP_CURR|in_bounds~1_combout\,
	datab => \SHIP_REM_LIVES:1:SHIP_LIFE|in_bounds~2_combout\,
	datac => \SHIP_REM_LIVES:2:SHIP_LIFE|in_bounds~0_combout\,
	datad => \curr_pixel~6_combout\,
	combout => \curr_pixel~7_combout\);

-- Location: LCCOMB_X13_Y11_N28
\curr_pixel~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~12_combout\ = (!\SCORE_1|pixel.blue[0]~5_combout\ & (\curr_pixel~11_combout\ & (\curr_pixel~9_combout\ & \curr_pixel~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.blue[0]~5_combout\,
	datab => \curr_pixel~11_combout\,
	datac => \curr_pixel~9_combout\,
	datad => \curr_pixel~7_combout\,
	combout => \curr_pixel~12_combout\);

-- Location: LCCOMB_X15_Y11_N14
\curr_pixel~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~13_combout\ = (\TOP_LINE|in_bounds~3_combout\) # ((\SCORE_1|pixel.green[0]~4_combout\) # ((\curr_pixel~4_combout\ & \curr_pixel~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_pixel~4_combout\,
	datab => \curr_pixel~12_combout\,
	datac => \TOP_LINE|in_bounds~3_combout\,
	datad => \SCORE_1|pixel.green[0]~4_combout\,
	combout => \curr_pixel~13_combout\);

-- Location: LCCOMB_X13_Y11_N30
\curr_pixel~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~14_combout\ = (!\TOP_LINE|in_bounds~3_combout\ & ((!\curr_pixel~4_combout\) # (!\curr_pixel~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \curr_pixel~12_combout\,
	datac => \curr_pixel~4_combout\,
	datad => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~14_combout\);

-- Location: LCCOMB_X13_Y11_N12
\curr_pixel~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~15_combout\ = ((\SCORE_1|Mux102~2_combout\ & \SCORE_1|in_bounds~4_combout\)) # (!\curr_pixel~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_pixel~14_combout\,
	datac => \SCORE_1|Mux102~2_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~15_combout\);

-- Location: LCCOMB_X13_Y11_N10
\curr_pixel~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~16_combout\ = ((\SCORE_1|Mux101~1_combout\ & \SCORE_1|in_bounds~4_combout\)) # (!\curr_pixel~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_pixel~14_combout\,
	datab => \SCORE_1|Mux101~1_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~16_combout\);

-- Location: LCCOMB_X13_Y11_N16
\curr_pixel~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~17_combout\ = ((\SCORE_1|Mux100~3_combout\ & \SCORE_1|in_bounds~4_combout\)) # (!\curr_pixel~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|Mux100~3_combout\,
	datac => \curr_pixel~14_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~17_combout\);

-- Location: LCCOMB_X13_Y11_N18
\curr_pixel~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~18_combout\ = (\SCORE_1|pixel.blue[0]~5_combout\) # ((\TOP_LINE|in_bounds~3_combout\) # ((\curr_pixel~12_combout\ & \curr_pixel~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.blue[0]~5_combout\,
	datab => \curr_pixel~12_combout\,
	datac => \curr_pixel~4_combout\,
	datad => \TOP_LINE|in_bounds~3_combout\,
	combout => \curr_pixel~18_combout\);

-- Location: LCCOMB_X13_Y11_N20
\curr_pixel~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~19_combout\ = ((\SCORE_1|Mux106~1_combout\ & \SCORE_1|in_bounds~4_combout\)) # (!\curr_pixel~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_pixel~14_combout\,
	datac => \SCORE_1|Mux106~1_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~19_combout\);

-- Location: LCCOMB_X13_Y11_N22
\curr_pixel~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~20_combout\ = ((\SCORE_1|Mux105~1_combout\ & \SCORE_1|in_bounds~4_combout\)) # (!\curr_pixel~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCORE_1|Mux105~1_combout\,
	datac => \curr_pixel~14_combout\,
	datad => \SCORE_1|in_bounds~4_combout\,
	combout => \curr_pixel~20_combout\);

-- Location: LCCOMB_X15_Y11_N12
\curr_pixel~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \curr_pixel~21_combout\ = (\SCORE_1|pixel.blue[3]~4_combout\) # ((\TOP_LINE|in_bounds~3_combout\) # ((\curr_pixel~12_combout\ & \curr_pixel~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCORE_1|pixel.blue[3]~4_combout\,
	datab => \curr_pixel~12_combout\,
	datac => \TOP_LINE|in_bounds~3_combout\,
	datad => \curr_pixel~4_combout\,
	combout => \curr_pixel~21_combout\);

-- Location: IOIBUF_X40_Y0_N15
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

-- Location: IOIBUF_X78_Y18_N22
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

-- Location: IOIBUF_X78_Y15_N15
\shoot_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shoot_L,
	o => \shoot_L~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\GSENSOR_SDI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SDI,
	o => \GSENSOR_SDI~input_o\);

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


