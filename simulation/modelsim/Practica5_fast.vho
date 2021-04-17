-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/16/2021 17:12:52"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	clk : IN std_logic;
	addr : IN std_logic_vector(31 DOWNTO 0);
	din : IN std_logic_vector(31 DOWNTO 0);
	dout : OUT std_logic_vector(31 DOWNTO 0);
	tipo_acc : IN std_logic_vector(1 DOWNTO 0);
	l_u : IN std_logic;
	we_ram : IN std_logic
	);
END RAM;

-- Design Ports Information
-- addr[12]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[5]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[6]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[8]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[9]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[10]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[11]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[12]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[13]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[14]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[15]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[16]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[17]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[18]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[19]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[20]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[21]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[23]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[24]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[25]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[26]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[27]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[28]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[29]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[30]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[31]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tipo_acc[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tipo_acc[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- l_u	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- we_ram	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[16]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[24]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[17]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[25]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[9]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[18]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[26]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[10]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[19]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[27]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[20]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[28]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[12]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[5]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[21]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[29]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[13]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[22]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[30]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[14]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[23]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[31]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[15]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tipo_acc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_l_u : std_logic;
SIGNAL ww_we_ram : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \we_0~4_combout\ : std_logic;
SIGNAL \we_3~0_combout\ : std_logic;
SIGNAL \we_1~0_combout\ : std_logic;
SIGNAL \we_2~4_combout\ : std_logic;
SIGNAL \we_0~5_combout\ : std_logic;
SIGNAL \we_ram~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \din_3[0]~0_combout\ : std_logic;
SIGNAL \din_3[0]~1_combout\ : std_logic;
SIGNAL \din_3[1]~2_combout\ : std_logic;
SIGNAL \din_3[1]~3_combout\ : std_logic;
SIGNAL \din_3[2]~4_combout\ : std_logic;
SIGNAL \din_3[2]~5_combout\ : std_logic;
SIGNAL \din_3[3]~6_combout\ : std_logic;
SIGNAL \din_3[3]~7_combout\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \din_2[0]~0_combout\ : std_logic;
SIGNAL \din_2[1]~1_combout\ : std_logic;
SIGNAL \din_2[2]~2_combout\ : std_logic;
SIGNAL \din_2[3]~3_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \din_1[0]~0_combout\ : std_logic;
SIGNAL \din_1[1]~1_combout\ : std_logic;
SIGNAL \din_1[2]~2_combout\ : std_logic;
SIGNAL \din_1[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \din_2[4]~4_combout\ : std_logic;
SIGNAL \din_2[5]~5_combout\ : std_logic;
SIGNAL \din_2[6]~6_combout\ : std_logic;
SIGNAL \din_2[7]~7_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \din_1[4]~4_combout\ : std_logic;
SIGNAL \din_1[5]~5_combout\ : std_logic;
SIGNAL \din_1[6]~6_combout\ : std_logic;
SIGNAL \din_1[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \din_3[4]~8_combout\ : std_logic;
SIGNAL \din_3[4]~9_combout\ : std_logic;
SIGNAL \din_3[5]~10_combout\ : std_logic;
SIGNAL \din_3[5]~11_combout\ : std_logic;
SIGNAL \din_3[6]~12_combout\ : std_logic;
SIGNAL \din_3[6]~13_combout\ : std_logic;
SIGNAL \din_3[7]~14_combout\ : std_logic;
SIGNAL \din_3[7]~15_combout\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \l_u~combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \tipo_acc~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \din~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_addr <= addr;
ww_din <= din;
dout <= ww_dout;
ww_tipo_acc <= tipo_acc;
ww_l_u <= l_u;
ww_we_ram <= we_ram;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\din_2[3]~3_combout\ & \din_2[2]~2_combout\ & \din_2[1]~1_combout\ & \din_2[0]~0_combout\);

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\din_3[3]~7_combout\ & \din_3[2]~5_combout\ & \din_3[1]~3_combout\ & \din_3[0]~1_combout\);

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\din_1[3]~3_combout\ & \din_1[2]~2_combout\ & \din_1[1]~1_combout\ & \din_1[0]~0_combout\);

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\din~combout\(3) & \din~combout\(2) & \din~combout\(1) & \din~combout\(0));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\din_2[7]~7_combout\ & \din_2[6]~6_combout\ & \din_2[5]~5_combout\ & \din_2[4]~4_combout\);

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\din_3[7]~15_combout\ & \din_3[6]~13_combout\ & \din_3[5]~11_combout\ & \din_3[4]~9_combout\);

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\din_1[7]~7_combout\ & \din_1[6]~6_combout\ & \din_1[5]~5_combout\ & \din_1[4]~4_combout\);

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\din~combout\(7) & \din~combout\(6) & \din~combout\(5) & \din~combout\(4));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X42_Y22_N12
\Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\addr~combout\(1) & (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\)) # (!\addr~combout\(1) & ((\RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \addr~combout\(1),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X42_Y22_N10
\Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \addr~combout\(1),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X42_Y21_N22
\Mux34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \addr~combout\(1),
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X42_Y23_N18
\we_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_0~4_combout\ = (\we_ram~combout\ & !\tipo_acc~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \we_ram~combout\,
	datad => \tipo_acc~combout\(1),
	combout => \we_0~4_combout\);

-- Location: LCCOMB_X42_Y23_N20
\we_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_3~0_combout\ = (\addr~combout\(1) & (\we_0~4_combout\ & ((\addr~combout\(0)) # (\tipo_acc~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \we_0~4_combout\,
	combout => \we_3~0_combout\);

-- Location: LCCOMB_X42_Y23_N22
\we_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_1~0_combout\ = (!\addr~combout\(1) & (\we_0~4_combout\ & ((\addr~combout\(0)) # (\tipo_acc~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \we_0~4_combout\,
	combout => \we_1~0_combout\);

-- Location: LCCOMB_X42_Y23_N12
\we_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_2~4_combout\ = (\addr~combout\(1) & (\we_0~4_combout\ & ((\tipo_acc~combout\(0)) # (!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \we_0~4_combout\,
	combout => \we_2~4_combout\);

-- Location: LCCOMB_X42_Y23_N2
\we_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_0~5_combout\ = (!\addr~combout\(1) & (\we_0~4_combout\ & ((\tipo_acc~combout\(0)) # (!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \we_0~4_combout\,
	combout => \we_0~5_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\we_ram~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_we_ram,
	combout => \we_ram~combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(8),
	combout => \din~combout\(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(18),
	combout => \din~combout\(18));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(26),
	combout => \din~combout\(26));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(10),
	combout => \din~combout\(10));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(30),
	combout => \din~combout\(30));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(15),
	combout => \din~combout\(15));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tipo_acc[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tipo_acc(0),
	combout => \tipo_acc~combout\(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: LCCOMB_X42_Y23_N0
\Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\tipo_acc~combout\(0)) # (!\addr~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tipo_acc~combout\(0),
	datac => \addr~combout\(0),
	combout => \Mux34~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(24),
	combout => \din~combout\(24));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tipo_acc[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tipo_acc(1),
	combout => \tipo_acc~combout\(1));

-- Location: LCCOMB_X40_Y23_N22
\din_3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[0]~0_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(24)))) # (!\tipo_acc~combout\(1) & (\din~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(0),
	datab => \din~combout\(24),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[0]~0_combout\);

-- Location: LCCOMB_X40_Y23_N0
\din_3[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[0]~1_combout\ = (\din_3[0]~0_combout\) # ((\din~combout\(8) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(8),
	datab => \din_3[0]~0_combout\,
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[0]~1_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(4),
	combout => \addr~combout\(4));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(5),
	combout => \addr~combout\(5));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(6),
	combout => \addr~combout\(6));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(7),
	combout => \addr~combout\(7));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(8),
	combout => \addr~combout\(8));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(9),
	combout => \addr~combout\(9));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(10),
	combout => \addr~combout\(10));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(11),
	combout => \addr~combout\(11));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(25),
	combout => \din~combout\(25));

-- Location: LCCOMB_X40_Y23_N30
\din_3[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[1]~2_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(25)))) # (!\tipo_acc~combout\(1) & (\din~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(1),
	datab => \din~combout\(25),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[1]~2_combout\);

-- Location: LCCOMB_X40_Y23_N16
\din_3[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[1]~3_combout\ = (\din_3[1]~2_combout\) # ((\din~combout\(9) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(9),
	datab => \din_3[1]~2_combout\,
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[1]~3_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(2),
	combout => \din~combout\(2));

-- Location: LCCOMB_X40_Y23_N2
\din_3[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[2]~4_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\din~combout\(26))) # (!\tipo_acc~combout\(1) & ((\din~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(26),
	datab => \din~combout\(2),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[2]~4_combout\);

-- Location: LCCOMB_X40_Y23_N24
\din_3[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[2]~5_combout\ = (\din_3[2]~4_combout\) # ((\din~combout\(10) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(10),
	datab => \din_3[2]~4_combout\,
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[2]~5_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(3),
	combout => \din~combout\(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(27),
	combout => \din~combout\(27));

-- Location: LCCOMB_X40_Y24_N26
\din_3[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[3]~6_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(27)))) # (!\tipo_acc~combout\(1) & (\din~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(3),
	datac => \din~combout\(27),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[3]~6_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(11),
	combout => \din~combout\(11));

-- Location: LCCOMB_X40_Y24_N20
\din_3[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[3]~7_combout\ = (\din_3[3]~6_combout\) # ((!\tipo_acc~combout\(1) & (\din~combout\(11) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din_3[3]~6_combout\,
	datac => \din~combout\(11),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[3]~7_combout\);

-- Location: M4K_X41_Y22
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM3|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_3~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: LCCOMB_X42_Y20_N16
\Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \addr~combout\(1),
	combout => \Mux39~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(16),
	combout => \din~combout\(16));

-- Location: LCCOMB_X40_Y23_N12
\din_2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[0]~0_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(16) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (\din~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(0),
	datab => \din~combout\(16),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_2[0]~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(17),
	combout => \din~combout\(17));

-- Location: LCCOMB_X40_Y23_N8
\din_2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[1]~1_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(17) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (\din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(1),
	datab => \din~combout\(17),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_2[1]~1_combout\);

-- Location: LCCOMB_X40_Y23_N28
\din_2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[2]~2_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(18) & ((!\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (((\din~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(18),
	datab => \din~combout\(2),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_2[2]~2_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(19),
	combout => \din~combout\(19));

-- Location: LCCOMB_X40_Y24_N24
\din_2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[3]~3_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(19) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (\din~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(3),
	datac => \din~combout\(19),
	datad => \tipo_acc~combout\(0),
	combout => \din_2[3]~3_combout\);

-- Location: M4K_X41_Y19
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM2|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_2~4_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N16
\Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\Mux34~0_combout\ & (\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \Mux39~0_combout\,
	datad => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mux39~1_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(0),
	combout => \din~combout\(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(1),
	combout => \din~combout\(1));

-- Location: M4K_X41_Y25
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_0~5_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y23_N10
\Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\tipo_acc~combout\(1)) # ((!\addr~combout\(1) & ((\tipo_acc~combout\(0)) # (!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X42_Y19_N18
\Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux39~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datac => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Mux34~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X42_Y22_N26
\Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\Mux34~0_combout\ & (\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mux34~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X42_Y22_N16
\Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux38~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a1\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \Mux38~1_combout\,
	datac => \Mux34~1_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X40_Y23_N18
\din_1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[0]~0_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(8) & (!\tipo_acc~combout\(0)))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & (\din~combout\(8))) # (!\tipo_acc~combout\(0) & ((\din~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(8),
	datab => \tipo_acc~combout\(1),
	datac => \tipo_acc~combout\(0),
	datad => \din~combout\(0),
	combout => \din_1[0]~0_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(9),
	combout => \din~combout\(9));

-- Location: LCCOMB_X40_Y23_N26
\din_1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[1]~1_combout\ = (\tipo_acc~combout\(1) & (((!\tipo_acc~combout\(0) & \din~combout\(9))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(9)))) # (!\tipo_acc~combout\(0) & (\din~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(1),
	datab => \tipo_acc~combout\(1),
	datac => \tipo_acc~combout\(0),
	datad => \din~combout\(9),
	combout => \din_1[1]~1_combout\);

-- Location: LCCOMB_X40_Y23_N10
\din_1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[2]~2_combout\ = (\tipo_acc~combout\(0) & (\din~combout\(10) & ((!\tipo_acc~combout\(1))))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\din~combout\(10))) # (!\tipo_acc~combout\(1) & ((\din~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(10),
	datab => \din~combout\(2),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_1[2]~2_combout\);

-- Location: LCCOMB_X40_Y24_N18
\din_1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[3]~3_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(11) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(11)))) # (!\tipo_acc~combout\(0) & (\din~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(3),
	datac => \din~combout\(11),
	datad => \tipo_acc~combout\(0),
	combout => \din_1[3]~3_combout\);

-- Location: M4K_X41_Y23
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM1|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_1~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N4
\Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \addr~combout\(1),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X42_Y19_N30
\Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\)) # (!\Mux34~0_combout\ & ((\Mux37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \Mux34~0_combout\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X42_Y19_N0
\Mux37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux37~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a2\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux37~1_combout\,
	datac => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \Mux34~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X42_Y21_N0
\Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\addr~combout\(1) & (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\addr~combout\(1) & ((\RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \addr~combout\(1),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X42_Y21_N26
\Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\))) # (!\Mux34~0_combout\ & (\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux36~0_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \Mux34~1_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X42_Y21_N12
\Mux36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a3\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux36~1_combout\,
	datac => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \Mux34~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(20),
	combout => \din~combout\(20));

-- Location: LCCOMB_X40_Y23_N20
\din_2[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[4]~4_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(20) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (\din~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => \din~combout\(20),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_2[4]~4_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(21),
	combout => \din~combout\(21));

-- Location: LCCOMB_X40_Y24_N0
\din_2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[5]~5_combout\ = (\tipo_acc~combout\(1) & (((!\tipo_acc~combout\(0) & \din~combout\(21))))) # (!\tipo_acc~combout\(1) & (\din~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(5),
	datab => \tipo_acc~combout\(0),
	datac => \tipo_acc~combout\(1),
	datad => \din~combout\(21),
	combout => \din_2[5]~5_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(22),
	combout => \din~combout\(22));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(6),
	combout => \din~combout\(6));

-- Location: LCCOMB_X40_Y24_N8
\din_2[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[6]~6_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(22) & ((!\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (((\din~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(22),
	datac => \din~combout\(6),
	datad => \tipo_acc~combout\(0),
	combout => \din_2[6]~6_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(7),
	combout => \din~combout\(7));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(23),
	combout => \din~combout\(23));

-- Location: LCCOMB_X40_Y24_N16
\din_2[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_2[7]~7_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(23) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & (\din~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(7),
	datac => \din~combout\(23),
	datad => \tipo_acc~combout\(0),
	combout => \din_2[7]~7_combout\);

-- Location: M4K_X41_Y20
\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM2|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_2~4_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y22_N24
\Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (!\Mux34~0_combout\ & (\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \Mux34~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(4),
	combout => \din~combout\(4));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(5),
	combout => \din~combout\(5));

-- Location: M4K_X41_Y26
\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_0~5_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y22_N18
\Mux35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux35~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datab => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \Mux34~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X42_Y19_N22
\Mux34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\))) # (!\Mux34~0_combout\ & (\Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~2_combout\,
	datab => \Mux34~0_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \Mux34~1_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X42_Y19_N24
\Mux34~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux34~3_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a5\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux34~3_combout\,
	datac => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \Mux34~1_combout\,
	combout => \Mux34~4_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(12),
	combout => \din~combout\(12));

-- Location: LCCOMB_X40_Y23_N6
\din_1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[4]~4_combout\ = (\tipo_acc~combout\(0) & (((\din~combout\(12) & !\tipo_acc~combout\(1))))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(12)))) # (!\tipo_acc~combout\(1) & (\din~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => \din~combout\(12),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_1[4]~4_combout\);

-- Location: LCCOMB_X40_Y24_N2
\din_1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[5]~5_combout\ = (\tipo_acc~combout\(0) & (\din~combout\(13) & (!\tipo_acc~combout\(1)))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\din~combout\(13))) # (!\tipo_acc~combout\(1) & ((\din~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(13),
	datab => \tipo_acc~combout\(0),
	datac => \tipo_acc~combout\(1),
	datad => \din~combout\(5),
	combout => \din_1[5]~5_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(14),
	combout => \din~combout\(14));

-- Location: LCCOMB_X40_Y24_N10
\din_1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[6]~6_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(14) & !\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(14)))) # (!\tipo_acc~combout\(0) & (\din~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(6),
	datac => \din~combout\(14),
	datad => \tipo_acc~combout\(0),
	combout => \din_1[6]~6_combout\);

-- Location: LCCOMB_X40_Y24_N6
\din_1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_1[7]~7_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(15) & ((!\tipo_acc~combout\(0))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & (\din~combout\(15))) # (!\tipo_acc~combout\(0) & ((\din~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(15),
	datab => \din~combout\(7),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \din_1[7]~7_combout\);

-- Location: M4K_X41_Y24
\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM1|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_1~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(28),
	combout => \din~combout\(28));

-- Location: LCCOMB_X40_Y23_N14
\din_3[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[4]~8_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(28)))) # (!\tipo_acc~combout\(1) & (\din~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => \din~combout\(28),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[4]~8_combout\);

-- Location: LCCOMB_X40_Y23_N4
\din_3[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[4]~9_combout\ = (\din_3[4]~8_combout\) # ((\din~combout\(12) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(12),
	datab => \din_3[4]~8_combout\,
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \din_3[4]~9_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(29),
	combout => \din~combout\(29));

-- Location: LCCOMB_X40_Y24_N30
\din_3[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[5]~10_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(29)))) # (!\tipo_acc~combout\(1) & (\din~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(5),
	datab => \din~combout\(29),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[5]~10_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(13),
	combout => \din~combout\(13));

-- Location: LCCOMB_X40_Y24_N4
\din_3[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[5]~11_combout\ = (\din_3[5]~10_combout\) # ((!\tipo_acc~combout\(1) & (\din~combout\(13) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din_3[5]~10_combout\,
	datac => \din~combout\(13),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[5]~11_combout\);

-- Location: LCCOMB_X40_Y24_N22
\din_3[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[6]~12_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\din~combout\(30))) # (!\tipo_acc~combout\(1) & ((\din~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(30),
	datab => \din~combout\(6),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[6]~12_combout\);

-- Location: LCCOMB_X40_Y24_N12
\din_3[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[6]~13_combout\ = (\din_3[6]~12_combout\) # ((!\tipo_acc~combout\(1) & (\din~combout\(14) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din_3[6]~12_combout\,
	datac => \din~combout\(14),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[6]~13_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_din(31),
	combout => \din~combout\(31));

-- Location: LCCOMB_X40_Y24_N14
\din_3[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[7]~14_combout\ = (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(31)))) # (!\tipo_acc~combout\(1) & (\din~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(7),
	datac => \din~combout\(31),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[7]~14_combout\);

-- Location: LCCOMB_X40_Y24_N28
\din_3[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_3[7]~15_combout\ = (\din_3[7]~14_combout\) # ((\din~combout\(15) & (!\tipo_acc~combout\(1) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(15),
	datab => \din_3[7]~14_combout\,
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \din_3[7]~15_combout\);

-- Location: M4K_X41_Y21
\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:RAM3|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \we_3~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y21_N8
\Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \addr~combout\(1),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X42_Y19_N26
\Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\Mux34~0_combout\ & ((\Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux33~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \Mux34~1_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X42_Y19_N8
\Mux33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux33~1_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a6\ & \Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux33~1_combout\,
	datac => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \Mux34~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X42_Y20_N22
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\addr~combout\(1) & (\tipo_acc~combout\(0) & (\RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\ & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \tipo_acc~combout\(0),
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X42_Y20_N28
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \addr~combout\(0),
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \addr~combout\(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X42_Y20_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \addr~combout\(1),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X42_Y20_N4
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\tipo_acc~combout\(1) & (!\tipo_acc~combout\(0) & ((\Mux0~0_combout\) # (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \tipo_acc~combout\(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X42_Y20_N30
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\tipo_acc~combout\(1)) # ((!\addr~combout\(1) & \tipo_acc~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X42_Y20_N0
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\) # ((\Mux23~0_combout\) # ((\RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\ & \Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \Mux32~0_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X42_Y20_N8
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\addr~combout\(1) & (\tipo_acc~combout\(0) & (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \tipo_acc~combout\(0),
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X42_Y23_N16
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\tipo_acc~combout\(1) & !\tipo_acc~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tipo_acc~combout\(1),
	datac => \tipo_acc~combout\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X42_Y20_N2
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\l_u~combout\ & (\Equal2~0_combout\ & ((\Mux0~0_combout\) # (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_u~combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X42_Y20_N10
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux31~1_combout\) # ((\Mux24~0_combout\) # ((\RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X42_Y22_N0
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\ & (\addr~combout\(1) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \addr~combout\(1),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X42_Y22_N30
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux24~0_combout\) # ((\Mux30~0_combout\) # ((\Mux31~0_combout\ & \RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X42_Y22_N8
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\ & (\addr~combout\(1) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \addr~combout\(1),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X42_Y22_N14
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux24~0_combout\) # ((\Mux29~0_combout\) # ((\Mux31~0_combout\ & \RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux29~0_combout\,
	datad => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X42_Y21_N6
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\addr~combout\(1) & (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\ & (!\tipo_acc~combout\(1) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X42_Y21_N20
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux24~0_combout\) # ((\Mux28~0_combout\) # ((\Mux31~0_combout\ & \RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X42_Y22_N20
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ & (\addr~combout\(1) & (\tipo_acc~combout\(0) & !\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datab => \addr~combout\(1),
	datac => \tipo_acc~combout\(0),
	datad => \tipo_acc~combout\(1),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X42_Y22_N22
\Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\) # ((\Mux24~0_combout\) # ((\RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ & \Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datab => \Mux31~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X42_Y21_N30
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\tipo_acc~combout\(1) & (\addr~combout\(1) & (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\ & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \addr~combout\(1),
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \tipo_acc~combout\(0),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X42_Y21_N4
\Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux24~0_combout\) # ((\Mux26~0_combout\) # ((\RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\ & \Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \Mux31~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X42_Y21_N2
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\ & (\addr~combout\(1) & (!\tipo_acc~combout\(1) & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \addr~combout\(1),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X42_Y21_N16
\Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux24~0_combout\) # ((\Mux25~0_combout\) # ((\Mux31~0_combout\ & \RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X42_Y20_N20
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\addr~combout\(1) & ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \addr~combout\(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X42_Y20_N6
\Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\tipo_acc~combout\(1) & (\RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\tipo_acc~combout\(1) & (((\Mux0~2_combout\ & \tipo_acc~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \RAM1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \Mux0~2_combout\,
	datad => \tipo_acc~combout\(0),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X42_Y19_N2
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux24~1_combout\) # (\Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~1_combout\,
	datac => \Mux24~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\l_u~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_l_u,
	combout => \l_u~combout\);

-- Location: LCCOMB_X42_Y20_N24
\Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\tipo_acc~combout\(1) & (\l_u~combout\ & (\Mux0~2_combout\ & \tipo_acc~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \l_u~combout\,
	datac => \Mux0~2_combout\,
	datad => \tipo_acc~combout\(0),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X42_Y19_N12
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\tipo_acc~combout\(1) & \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \Mux23~1_combout\,
	datac => \Mux24~0_combout\,
	datad => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X42_Y22_N28
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X42_Y19_N10
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X42_Y21_N18
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X42_Y22_N6
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X42_Y19_N28
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X42_Y19_N6
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux23~1_combout\,
	datac => \Mux24~0_combout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X42_Y20_N26
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~0_combout\,
	datac => \RAM2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X42_Y20_N12
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~0_combout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X42_Y22_N4
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \tipo_acc~combout\(1),
	datac => \Mux23~1_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X42_Y19_N20
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \Mux23~1_combout\,
	datac => \Mux24~0_combout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X42_Y21_N28
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\tipo_acc~combout\(1) & \RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \tipo_acc~combout\(1),
	datad => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X42_Y22_N2
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X42_Y21_N14
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux24~0_combout\) # ((\Mux23~1_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X42_Y21_N24
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux23~1_combout\,
	datac => \tipo_acc~combout\(1),
	datad => \Mux24~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X42_Y20_N18
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux23~1_combout\) # ((\Mux24~0_combout\) # ((\RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\ & \tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~0_combout\,
	datac => \RAM3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \tipo_acc~combout\(1),
	combout => \Mux8~0_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(12));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(13));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(14));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(15));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(16));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(17));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(18));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(19));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(20));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(21));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(22));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(23));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(24));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(25));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(26));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(27));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(28));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(29));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(30));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(31));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux39~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux36~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux34~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(10));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(11));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(12));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(13));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(14));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(15));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(16));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(17));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(18));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(19));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(20));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(22));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(23));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(24));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(25));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(26));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(27));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(28));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(29));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(30));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(31));
END structure;


