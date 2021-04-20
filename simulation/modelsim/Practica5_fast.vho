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

-- DATE "04/20/2021 22:56:11"

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
	d_in : IN std_logic_vector(31 DOWNTO 0);
	acc_type : IN std_logic_vector(1 DOWNTO 0);
	we : IN std_logic;
	l_u : IN std_logic;
	d_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- addr[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_out[0]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[1]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[2]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[4]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[7]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[8]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[9]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[10]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[11]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[12]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[13]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[14]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[15]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[16]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[17]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[18]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[19]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[20]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[21]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[22]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[23]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[24]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[25]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[26]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[27]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[28]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[29]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[30]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[31]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- acc_type[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- acc_type[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- l_u	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- we	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[16]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[24]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[17]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[25]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[9]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[18]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[26]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[10]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[19]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[27]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[11]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[20]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[28]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[12]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[21]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[29]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[13]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[22]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[30]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[14]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[23]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[31]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[15]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_d_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_acc_type : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_l_u : std_logic;
SIGNAL ww_d_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \mem_ram_1~0_combout\ : std_logic;
SIGNAL \mem_ram_0~0_combout\ : std_logic;
SIGNAL \mem_ram_3~0_combout\ : std_logic;
SIGNAL \mem_ram_2~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \mem_ram_3~1_combout\ : std_logic;
SIGNAL \mem_ram_1~1_combout\ : std_logic;
SIGNAL \we~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \d_in_1[0]~0_combout\ : std_logic;
SIGNAL \d_in_1[1]~1_combout\ : std_logic;
SIGNAL \d_in_1[2]~2_combout\ : std_logic;
SIGNAL \d_in_1[3]~3_combout\ : std_logic;
SIGNAL \d_in_1[4]~4_combout\ : std_logic;
SIGNAL \d_in_1[5]~5_combout\ : std_logic;
SIGNAL \d_in_1[6]~6_combout\ : std_logic;
SIGNAL \d_in_1[7]~7_combout\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \d_in_2[0]~0_combout\ : std_logic;
SIGNAL \d_in_2[1]~1_combout\ : std_logic;
SIGNAL \d_in_2[2]~2_combout\ : std_logic;
SIGNAL \d_in_2[3]~3_combout\ : std_logic;
SIGNAL \d_in_2[4]~4_combout\ : std_logic;
SIGNAL \d_in_2[5]~5_combout\ : std_logic;
SIGNAL \d_in_2[6]~6_combout\ : std_logic;
SIGNAL \d_in_2[7]~7_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \d_in_3[0]~0_combout\ : std_logic;
SIGNAL \d_in_3[1]~1_combout\ : std_logic;
SIGNAL \d_in_3[2]~2_combout\ : std_logic;
SIGNAL \d_in_3[3]~3_combout\ : std_logic;
SIGNAL \d_in_3[4]~4_combout\ : std_logic;
SIGNAL \d_in_3[5]~5_combout\ : std_logic;
SIGNAL \d_in_3[6]~6_combout\ : std_logic;
SIGNAL \d_in_3[7]~7_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \ram_0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \l_u~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \we_h[1]~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ram_3_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \ram_1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ram_2_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \d_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \acc_type~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_addr <= addr;
ww_d_in <= d_in;
ww_acc_type <= acc_type;
ww_we <= we;
ww_l_u <= l_u;
d_out <= ww_d_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\d_in~combout\(7) & \d_in~combout\(6) & \d_in~combout\(5) & \d_in~combout\(4) & \d_in~combout\(3) & \d_in~combout\(2) & \d_in~combout\(1) & \d_in~combout\(0));

\ram_0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_0_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_0_rtl_0|auto_generated|ram_block1a1\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_0_rtl_0|auto_generated|ram_block1a2\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_0_rtl_0|auto_generated|ram_block1a3\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_0_rtl_0|auto_generated|ram_block1a4\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_0_rtl_0|auto_generated|ram_block1a5\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_0_rtl_0|auto_generated|ram_block1a6\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_0_rtl_0|auto_generated|ram_block1a7\ <= \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\ram_2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\d_in_2[7]~7_combout\ & \d_in_2[6]~6_combout\ & \d_in_2[5]~5_combout\ & \d_in_2[4]~4_combout\ & \d_in_2[3]~3_combout\ & \d_in_2[2]~2_combout\ & \d_in_2[1]~1_combout\ & \d_in_2[0]~0_combout\);

\ram_2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_2_rtl_0|auto_generated|ram_block1a1\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_2_rtl_0|auto_generated|ram_block1a2\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_2_rtl_0|auto_generated|ram_block1a3\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_2_rtl_0|auto_generated|ram_block1a4\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_2_rtl_0|auto_generated|ram_block1a5\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_2_rtl_0|auto_generated|ram_block1a6\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_2_rtl_0|auto_generated|ram_block1a7\ <= \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\ram_3_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\d_in_3[7]~7_combout\ & \d_in_3[6]~6_combout\ & \d_in_3[5]~5_combout\ & \d_in_3[4]~4_combout\ & \d_in_3[3]~3_combout\ & \d_in_3[2]~2_combout\ & \d_in_3[1]~1_combout\ & \d_in_3[0]~0_combout\);

\ram_3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_3_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_3_rtl_0|auto_generated|ram_block1a1\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_3_rtl_0|auto_generated|ram_block1a2\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_3_rtl_0|auto_generated|ram_block1a3\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_3_rtl_0|auto_generated|ram_block1a4\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_3_rtl_0|auto_generated|ram_block1a5\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_3_rtl_0|auto_generated|ram_block1a6\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_3_rtl_0|auto_generated|ram_block1a7\ <= \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\ram_1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\d_in_1[7]~7_combout\ & \d_in_1[6]~6_combout\ & \d_in_1[5]~5_combout\ & \d_in_1[4]~4_combout\ & \d_in_1[3]~3_combout\ & \d_in_1[2]~2_combout\ & \d_in_1[1]~1_combout\ & \d_in_1[0]~0_combout\);

\ram_1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2));

\ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_1_rtl_0|auto_generated|ram_block1a1\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_1_rtl_0|auto_generated|ram_block1a2\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_1_rtl_0|auto_generated|ram_block1a3\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_1_rtl_0|auto_generated|ram_block1a4\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_1_rtl_0|auto_generated|ram_block1a5\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_1_rtl_0|auto_generated|ram_block1a6\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_1_rtl_0|auto_generated|ram_block1a7\ <= \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: M4K_X17_Y24
\ram_0_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_0_rtl_0|altsyncram_iog1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \mem_ram_0~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \ram_0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y23_N6
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\ram_2_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\ram_0_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_0_rtl_0|auto_generated|ram_block1a7\,
	datab => \ram_2_rtl_0|auto_generated|ram_block1a7\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X20_Y23_N18
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\addr~combout\(0) & (!\acc_type~combout\(0) & (!\acc_type~combout\(1) & \we~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \acc_type~combout\(0),
	datac => \acc_type~combout\(1),
	datad => \we~combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\mem_ram_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_1~0_combout\ = ((\acc_type~combout\(1) & ((\acc_type~combout\(0)))) # (!\acc_type~combout\(1) & ((\addr~combout\(1)) # (!\acc_type~combout\(0))))) # (!\we~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \we~combout\,
	combout => \mem_ram_1~0_combout\);

-- Location: LCCOMB_X20_Y23_N22
\mem_ram_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_0~0_combout\ = ((!\addr~combout\(1) & \Mux3~0_combout\)) # (!\mem_ram_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \Mux3~0_combout\,
	datac => \mem_ram_1~0_combout\,
	combout => \mem_ram_0~0_combout\);

-- Location: LCCOMB_X20_Y23_N12
\mem_ram_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_3~0_combout\ = ((\acc_type~combout\(1) & ((\acc_type~combout\(0)))) # (!\acc_type~combout\(1) & ((!\acc_type~combout\(0)) # (!\addr~combout\(1))))) # (!\we~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \we~combout\,
	combout => \mem_ram_3~0_combout\);

-- Location: LCCOMB_X20_Y23_N6
\mem_ram_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_2~0_combout\ = ((\addr~combout\(1) & \Mux3~0_combout\)) # (!\mem_ram_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \Mux3~0_combout\,
	datad => \mem_ram_3~0_combout\,
	combout => \mem_ram_2~0_combout\);

-- Location: LCCOMB_X20_Y23_N2
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\addr~combout\(0) & (!\acc_type~combout\(0) & (!\acc_type~combout\(1) & \we~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \acc_type~combout\(0),
	datac => \acc_type~combout\(1),
	datad => \we~combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X20_Y23_N16
\mem_ram_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_3~1_combout\ = ((\addr~combout\(1) & \Mux2~0_combout\)) # (!\mem_ram_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \Mux2~0_combout\,
	datad => \mem_ram_3~0_combout\,
	combout => \mem_ram_3~1_combout\);

-- Location: LCCOMB_X20_Y23_N10
\mem_ram_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_ram_1~1_combout\ = ((!\addr~combout\(1) & \Mux2~0_combout\)) # (!\mem_ram_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \Mux2~0_combout\,
	datac => \mem_ram_1~0_combout\,
	combout => \mem_ram_1~1_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\we~I\ : cycloneii_io
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
	padio => ww_we,
	combout => \we~combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[16]~I\ : cycloneii_io
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
	padio => ww_d_in(16),
	combout => \d_in~combout\(16));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[8]~I\ : cycloneii_io
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
	padio => ww_d_in(8),
	combout => \d_in~combout\(8));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[10]~I\ : cycloneii_io
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
	padio => ww_d_in(10),
	combout => \d_in~combout\(10));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[28]~I\ : cycloneii_io
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
	padio => ww_d_in(28),
	combout => \d_in~combout\(28));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[21]~I\ : cycloneii_io
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
	padio => ww_d_in(21),
	combout => \d_in~combout\(21));

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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\acc_type[1]~I\ : cycloneii_io
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
	padio => ww_acc_type(1),
	combout => \acc_type~combout\(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\acc_type[0]~I\ : cycloneii_io
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
	padio => ww_acc_type(0),
	combout => \acc_type~combout\(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[0]~I\ : cycloneii_io
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
	padio => ww_d_in(0),
	combout => \d_in~combout\(0));

-- Location: LCCOMB_X20_Y23_N26
\d_in_1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[0]~0_combout\ = (\acc_type~combout\(1) & (\d_in~combout\(8))) # (!\acc_type~combout\(1) & ((\acc_type~combout\(0) & (\d_in~combout\(8))) # (!\acc_type~combout\(0) & ((\d_in~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(8),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \d_in~combout\(0),
	combout => \d_in_1[0]~0_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[9]~I\ : cycloneii_io
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
	padio => ww_d_in(9),
	combout => \d_in~combout\(9));

-- Location: LCCOMB_X18_Y22_N6
\d_in_1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[1]~1_combout\ = (\acc_type~combout\(1) & (((\d_in~combout\(9))))) # (!\acc_type~combout\(1) & ((\acc_type~combout\(0) & ((\d_in~combout\(9)))) # (!\acc_type~combout\(0) & (\d_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \d_in~combout\(9),
	combout => \d_in_1[1]~1_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[2]~I\ : cycloneii_io
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
	padio => ww_d_in(2),
	combout => \d_in~combout\(2));

-- Location: LCCOMB_X18_Y22_N30
\d_in_1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[2]~2_combout\ = (\acc_type~combout\(0) & (\d_in~combout\(10))) # (!\acc_type~combout\(0) & ((\acc_type~combout\(1) & (\d_in~combout\(10))) # (!\acc_type~combout\(1) & ((\d_in~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(10),
	datab => \d_in~combout\(2),
	datac => \acc_type~combout\(0),
	datad => \acc_type~combout\(1),
	combout => \d_in_1[2]~2_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[11]~I\ : cycloneii_io
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
	padio => ww_d_in(11),
	combout => \d_in~combout\(11));

-- Location: LCCOMB_X18_Y22_N22
\d_in_1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[3]~3_combout\ = (\acc_type~combout\(1) & (((\d_in~combout\(11))))) # (!\acc_type~combout\(1) & ((\acc_type~combout\(0) & ((\d_in~combout\(11)))) # (!\acc_type~combout\(0) & (\d_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(3),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \d_in~combout\(11),
	combout => \d_in_1[3]~3_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[12]~I\ : cycloneii_io
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
	padio => ww_d_in(12),
	combout => \d_in~combout\(12));

-- Location: LCCOMB_X20_Y23_N30
\d_in_1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[4]~4_combout\ = (\acc_type~combout\(1) & (((\d_in~combout\(12))))) # (!\acc_type~combout\(1) & ((\acc_type~combout\(0) & ((\d_in~combout\(12)))) # (!\acc_type~combout\(0) & (\d_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(4),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \d_in~combout\(12),
	combout => \d_in_1[4]~4_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[13]~I\ : cycloneii_io
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
	padio => ww_d_in(13),
	combout => \d_in~combout\(13));

-- Location: LCCOMB_X18_Y22_N16
\d_in_1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[5]~5_combout\ = (\acc_type~combout\(1) & (((\d_in~combout\(13))))) # (!\acc_type~combout\(1) & ((\acc_type~combout\(0) & ((\d_in~combout\(13)))) # (!\acc_type~combout\(0) & (\d_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(5),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	datad => \d_in~combout\(13),
	combout => \d_in_1[5]~5_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[14]~I\ : cycloneii_io
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
	padio => ww_d_in(14),
	combout => \d_in~combout\(14));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[6]~I\ : cycloneii_io
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
	padio => ww_d_in(6),
	combout => \d_in~combout\(6));

-- Location: LCCOMB_X18_Y22_N14
\d_in_1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[6]~6_combout\ = (\acc_type~combout\(0) & (\d_in~combout\(14))) # (!\acc_type~combout\(0) & ((\acc_type~combout\(1) & (\d_in~combout\(14))) # (!\acc_type~combout\(1) & ((\d_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(0),
	datab => \d_in~combout\(14),
	datac => \d_in~combout\(6),
	datad => \acc_type~combout\(1),
	combout => \d_in_1[6]~6_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[15]~I\ : cycloneii_io
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
	padio => ww_d_in(15),
	combout => \d_in~combout\(15));

-- Location: LCCOMB_X18_Y22_N12
\d_in_1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_1[7]~7_combout\ = (\acc_type~combout\(0) & (((\d_in~combout\(15))))) # (!\acc_type~combout\(0) & ((\acc_type~combout\(1) & ((\d_in~combout\(15)))) # (!\acc_type~combout\(1) & (\d_in~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(7),
	datab => \d_in~combout\(15),
	datac => \acc_type~combout\(0),
	datad => \acc_type~combout\(1),
	combout => \d_in_1[7]~7_combout\);

-- Location: M4K_X17_Y21
\ram_1_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_1_rtl_0|altsyncram_iog1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \mem_ram_1~1_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \ram_1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y21_N24
\Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \addr~combout\(1),
	combout => \Mux43~0_combout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y23_N24
\d_in_2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[0]~0_combout\ = (\acc_type~combout\(1) & (\d_in~combout\(16))) # (!\acc_type~combout\(1) & ((\d_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(16),
	datac => \acc_type~combout\(1),
	datad => \d_in~combout\(0),
	combout => \d_in_2[0]~0_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[17]~I\ : cycloneii_io
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
	padio => ww_d_in(17),
	combout => \d_in~combout\(17));

-- Location: LCCOMB_X18_Y22_N24
\d_in_2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[1]~1_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(17)))) # (!\acc_type~combout\(1) & (\d_in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \d_in~combout\(17),
	combout => \d_in_2[1]~1_combout\);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[18]~I\ : cycloneii_io
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
	padio => ww_d_in(18),
	combout => \d_in~combout\(18));

-- Location: LCCOMB_X15_Y23_N0
\d_in_2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[2]~2_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(18)))) # (!\acc_type~combout\(1) & (\d_in~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in~combout\(2),
	datac => \d_in~combout\(18),
	datad => \acc_type~combout\(1),
	combout => \d_in_2[2]~2_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[3]~I\ : cycloneii_io
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
	padio => ww_d_in(3),
	combout => \d_in~combout\(3));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[19]~I\ : cycloneii_io
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
	padio => ww_d_in(19),
	combout => \d_in~combout\(19));

-- Location: LCCOMB_X15_Y23_N22
\d_in_2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[3]~3_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(19)))) # (!\acc_type~combout\(1) & (\d_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in~combout\(3),
	datac => \d_in~combout\(19),
	datad => \acc_type~combout\(1),
	combout => \d_in_2[3]~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[20]~I\ : cycloneii_io
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
	padio => ww_d_in(20),
	combout => \d_in~combout\(20));

-- Location: LCCOMB_X20_Y23_N28
\d_in_2[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[4]~4_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(20)))) # (!\acc_type~combout\(1) & (\d_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(4),
	datac => \acc_type~combout\(1),
	datad => \d_in~combout\(20),
	combout => \d_in_2[4]~4_combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[5]~I\ : cycloneii_io
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
	padio => ww_d_in(5),
	combout => \d_in~combout\(5));

-- Location: LCCOMB_X18_Y22_N2
\d_in_2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[5]~5_combout\ = (\acc_type~combout\(1) & (\d_in~combout\(21))) # (!\acc_type~combout\(1) & ((\d_in~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(21),
	datac => \d_in~combout\(5),
	datad => \acc_type~combout\(1),
	combout => \d_in_2[5]~5_combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[22]~I\ : cycloneii_io
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
	padio => ww_d_in(22),
	combout => \d_in~combout\(22));

-- Location: LCCOMB_X18_Y22_N28
\d_in_2[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[6]~6_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(22)))) # (!\acc_type~combout\(1) & (\d_in~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acc_type~combout\(1),
	datac => \d_in~combout\(6),
	datad => \d_in~combout\(22),
	combout => \d_in_2[6]~6_combout\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[23]~I\ : cycloneii_io
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
	padio => ww_d_in(23),
	combout => \d_in~combout\(23));

-- Location: LCCOMB_X18_Y22_N10
\d_in_2[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_2[7]~7_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(23)))) # (!\acc_type~combout\(1) & (\d_in~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(7),
	datac => \d_in~combout\(23),
	datad => \acc_type~combout\(1),
	combout => \d_in_2[7]~7_combout\);

-- Location: M4K_X17_Y23
\ram_2_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_2_rtl_0|altsyncram_iog1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \mem_ram_2~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \ram_2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X18_Y23_N28
\Mux43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\acc_type~combout\(0) & (((\ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\acc_type~combout\(0) & ((\addr~combout\(0) & (\Mux43~0_combout\)) # (!\addr~combout\(0) & 
-- ((\ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(0),
	datab => \Mux43~0_combout\,
	datac => \addr~combout\(0),
	datad => \ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mux43~1_combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[1]~I\ : cycloneii_io
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
	padio => ww_d_in(1),
	combout => \d_in~combout\(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[4]~I\ : cycloneii_io
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
	padio => ww_d_in(4),
	combout => \d_in~combout\(4));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[7]~I\ : cycloneii_io
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
	padio => ww_d_in(7),
	combout => \d_in~combout\(7));

-- Location: LCCOMB_X18_Y23_N10
\Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\acc_type~combout\(1)) # ((!\addr~combout\(1) & ((\acc_type~combout\(0)) # (!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \addr~combout\(0),
	datad => \acc_type~combout\(0),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X18_Y23_N24
\Mux43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux41~0_combout\ & ((\ram_0_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\Mux41~0_combout\ & (\Mux43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux43~1_combout\,
	datac => \ram_0_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Mux41~0_combout\,
	combout => \Mux43~2_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[24]~I\ : cycloneii_io
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
	padio => ww_d_in(24),
	combout => \d_in~combout\(24));

-- Location: LCCOMB_X20_Y23_N20
\d_in_3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[0]~0_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(24)))) # (!\acc_type~combout\(1) & (\d_in_1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in_1[0]~0_combout\,
	datac => \acc_type~combout\(1),
	datad => \d_in~combout\(24),
	combout => \d_in_3[0]~0_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[25]~I\ : cycloneii_io
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
	padio => ww_d_in(25),
	combout => \d_in~combout\(25));

-- Location: LCCOMB_X18_Y22_N0
\d_in_3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[1]~1_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(25)))) # (!\acc_type~combout\(1) & (\d_in_1[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in_1[1]~1_combout\,
	datab => \acc_type~combout\(1),
	datad => \d_in~combout\(25),
	combout => \d_in_3[1]~1_combout\);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[26]~I\ : cycloneii_io
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
	padio => ww_d_in(26),
	combout => \d_in~combout\(26));

-- Location: LCCOMB_X18_Y22_N4
\d_in_3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[2]~2_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(26)))) # (!\acc_type~combout\(1) & (\d_in_1[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in_1[2]~2_combout\,
	datac => \d_in~combout\(26),
	datad => \acc_type~combout\(1),
	combout => \d_in_3[2]~2_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[27]~I\ : cycloneii_io
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
	padio => ww_d_in(27),
	combout => \d_in~combout\(27));

-- Location: LCCOMB_X18_Y22_N8
\d_in_3[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[3]~3_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(27)))) # (!\acc_type~combout\(1) & (\d_in_1[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in_1[3]~3_combout\,
	datac => \d_in~combout\(27),
	datad => \acc_type~combout\(1),
	combout => \d_in_3[3]~3_combout\);

-- Location: LCCOMB_X20_Y23_N8
\d_in_3[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[4]~4_combout\ = (\acc_type~combout\(1) & (\d_in~combout\(28))) # (!\acc_type~combout\(1) & ((\d_in_1[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in~combout\(28),
	datab => \d_in_1[4]~4_combout\,
	datac => \acc_type~combout\(1),
	combout => \d_in_3[4]~4_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[29]~I\ : cycloneii_io
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
	padio => ww_d_in(29),
	combout => \d_in~combout\(29));

-- Location: LCCOMB_X18_Y22_N26
\d_in_3[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[5]~5_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(29)))) # (!\acc_type~combout\(1) & (\d_in_1[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in_1[5]~5_combout\,
	datac => \d_in~combout\(29),
	datad => \acc_type~combout\(1),
	combout => \d_in_3[5]~5_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[30]~I\ : cycloneii_io
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
	padio => ww_d_in(30),
	combout => \d_in~combout\(30));

-- Location: LCCOMB_X18_Y22_N20
\d_in_3[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[6]~6_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(30)))) # (!\acc_type~combout\(1) & (\d_in_1[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in_1[6]~6_combout\,
	datac => \d_in~combout\(30),
	datad => \acc_type~combout\(1),
	combout => \d_in_3[6]~6_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[31]~I\ : cycloneii_io
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
	padio => ww_d_in(31),
	combout => \d_in~combout\(31));

-- Location: LCCOMB_X18_Y22_N18
\d_in_3[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d_in_3[7]~7_combout\ = (\acc_type~combout\(1) & ((\d_in~combout\(31)))) # (!\acc_type~combout\(1) & (\d_in_1[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in_1[7]~7_combout\,
	datab => \acc_type~combout\(1),
	datad => \d_in~combout\(31),
	combout => \d_in_3[7]~7_combout\);

-- Location: M4K_X17_Y22
\ram_3_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_3_rtl_0|altsyncram_iog1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \mem_ram_3~1_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \ram_3_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_3_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y21_N22
\Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\addr~combout\(1) & ((\ram_3_rtl_0|auto_generated|ram_block1a1\))) # (!\addr~combout\(1) & (\ram_1_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \ram_1_rtl_0|auto_generated|ram_block1a1\,
	datad => \ram_3_rtl_0|auto_generated|ram_block1a1\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X18_Y23_N30
\Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\addr~combout\(0) & ((\acc_type~combout\(0) & ((\ram_2_rtl_0|auto_generated|ram_block1a1\))) # (!\acc_type~combout\(0) & (\Mux42~0_combout\)))) # (!\addr~combout\(0) & (((\ram_2_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \Mux42~0_combout\,
	datac => \ram_2_rtl_0|auto_generated|ram_block1a1\,
	datad => \acc_type~combout\(0),
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X18_Y23_N8
\Mux42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux41~0_combout\ & (\ram_0_rtl_0|auto_generated|ram_block1a1\)) # (!\Mux41~0_combout\ & ((\Mux42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \ram_0_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mux42~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X16_Y21_N12
\Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a2\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_3_rtl_0|auto_generated|ram_block1a2\,
	datac => \ram_1_rtl_0|auto_generated|ram_block1a2\,
	datad => \addr~combout\(1),
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X18_Y23_N22
\Mux41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\addr~combout\(0) & ((\acc_type~combout\(0) & ((\ram_2_rtl_0|auto_generated|ram_block1a2\))) # (!\acc_type~combout\(0) & (\Mux41~1_combout\)))) # (!\addr~combout\(0) & (((\ram_2_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \Mux41~1_combout\,
	datac => \ram_2_rtl_0|auto_generated|ram_block1a2\,
	datad => \acc_type~combout\(0),
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X18_Y23_N12
\Mux41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux41~0_combout\ & (\ram_0_rtl_0|auto_generated|ram_block1a2\)) # (!\Mux41~0_combout\ & ((\Mux41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \ram_0_rtl_0|auto_generated|ram_block1a2\,
	datad => \Mux41~2_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X16_Y21_N10
\Mux40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a3\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_3_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram_1_rtl_0|auto_generated|ram_block1a3\,
	datad => \addr~combout\(1),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X18_Y23_N26
\Mux40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\addr~combout\(0) & ((\acc_type~combout\(0) & ((\ram_2_rtl_0|auto_generated|ram_block1a3\))) # (!\acc_type~combout\(0) & (\Mux40~0_combout\)))) # (!\addr~combout\(0) & (((\ram_2_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \Mux40~0_combout\,
	datac => \ram_2_rtl_0|auto_generated|ram_block1a3\,
	datad => \acc_type~combout\(0),
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X18_Y23_N16
\Mux40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux41~0_combout\ & ((\ram_0_rtl_0|auto_generated|ram_block1a3\))) # (!\Mux41~0_combout\ & (\Mux40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux40~1_combout\,
	datac => \ram_0_rtl_0|auto_generated|ram_block1a3\,
	datad => \Mux41~0_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X19_Y23_N28
\Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a4\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_3_rtl_0|auto_generated|ram_block1a4\,
	datac => \ram_1_rtl_0|auto_generated|ram_block1a4\,
	datad => \addr~combout\(1),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X18_Y23_N6
\Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\acc_type~combout\(0) & (((\ram_2_rtl_0|auto_generated|ram_block1a4\)))) # (!\acc_type~combout\(0) & ((\addr~combout\(0) & (\Mux39~0_combout\)) # (!\addr~combout\(0) & ((\ram_2_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(0),
	datab => \Mux39~0_combout\,
	datac => \addr~combout\(0),
	datad => \ram_2_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X18_Y23_N4
\Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux41~0_combout\ & ((\ram_0_rtl_0|auto_generated|ram_block1a4\))) # (!\Mux41~0_combout\ & (\Mux39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datac => \ram_0_rtl_0|auto_generated|ram_block1a4\,
	datad => \Mux41~0_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X19_Y23_N30
\Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a5\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_3_rtl_0|auto_generated|ram_block1a5\,
	datac => \ram_1_rtl_0|auto_generated|ram_block1a5\,
	datad => \addr~combout\(1),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X18_Y23_N18
\Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\addr~combout\(0) & ((\acc_type~combout\(0) & (\ram_2_rtl_0|auto_generated|ram_block1a5\)) # (!\acc_type~combout\(0) & ((\Mux38~0_combout\))))) # (!\addr~combout\(0) & (\ram_2_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_2_rtl_0|auto_generated|ram_block1a5\,
	datab => \Mux38~0_combout\,
	datac => \addr~combout\(0),
	datad => \acc_type~combout\(0),
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X18_Y23_N20
\Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux41~0_combout\ & ((\ram_0_rtl_0|auto_generated|ram_block1a5\))) # (!\Mux41~0_combout\ & (\Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux38~1_combout\,
	datac => \ram_0_rtl_0|auto_generated|ram_block1a5\,
	datad => \Mux41~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\addr~combout\(1) & (\ram_3_rtl_0|auto_generated|ram_block1a6\)) # (!\addr~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_3_rtl_0|auto_generated|ram_block1a6\,
	datac => \ram_1_rtl_0|auto_generated|ram_block1a6\,
	datad => \addr~combout\(1),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X18_Y23_N2
\Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\addr~combout\(0) & ((\acc_type~combout\(0) & (\ram_2_rtl_0|auto_generated|ram_block1a6\)) # (!\acc_type~combout\(0) & ((\Mux37~0_combout\))))) # (!\addr~combout\(0) & (\ram_2_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_2_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux37~0_combout\,
	datac => \addr~combout\(0),
	datad => \acc_type~combout\(0),
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X18_Y23_N0
\Mux37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux41~0_combout\ & (\ram_0_rtl_0|auto_generated|ram_block1a6\)) # (!\Mux41~0_combout\ & ((\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_0_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux37~1_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X16_Y23_N16
\Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\acc_type~combout\(0) & ((\addr~combout\(1) & ((\ram_2_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\ram_0_rtl_0|auto_generated|ram_block1a7\)))) # (!\acc_type~combout\(0) & 
-- (\ram_0_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_0_rtl_0|auto_generated|ram_block1a7\,
	datab => \ram_2_rtl_0|auto_generated|ram_block1a7\,
	datac => \acc_type~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X16_Y23_N4
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\ram_3_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\ram_1_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_1_rtl_0|auto_generated|ram_block1a7\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a7\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X16_Y23_N30
\Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux4~0_combout\) # (\Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \Mux4~1_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X16_Y23_N12
\Mux36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\acc_type~combout\(0) & (\Mux36~0_combout\)) # (!\acc_type~combout\(0) & ((\acc_type~combout\(1) & (\Mux36~0_combout\)) # (!\acc_type~combout\(1) & ((\Mux36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Mux36~1_combout\,
	datac => \acc_type~combout\(0),
	datad => \acc_type~combout\(1),
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X16_Y21_N0
\Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\acc_type~combout\(1)) # ((!\addr~combout\(1) & \acc_type~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \ram_1_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \acc_type~combout\(0),
	datad => \acc_type~combout\(1),
	combout => \Mux35~0_combout\);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y23_N22
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\l_u~combout\ & !\acc_type~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l_u~combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X16_Y23_N20
\Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\acc_type~combout\(0) & (\Mux27~0_combout\ & ((\Mux4~0_combout\) # (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \acc_type~combout\(0),
	datac => \Mux4~1_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X20_Y23_N0
\we_h[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_h[1]~0_combout\ = (\addr~combout\(1) & (!\acc_type~combout\(1) & \acc_type~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \acc_type~combout\(1),
	datac => \acc_type~combout\(0),
	combout => \we_h[1]~0_combout\);

-- Location: LCCOMB_X16_Y21_N26
\Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\) # ((\Mux27~1_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Mux35~0_combout\,
	datac => \Mux27~1_combout\,
	datad => \we_h[1]~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X16_Y21_N16
\Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a1\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \acc_type~combout\(0),
	datac => \ram_1_rtl_0|auto_generated|ram_block1a1\,
	datad => \addr~combout\(1),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X16_Y21_N30
\Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux27~1_combout\) # ((\Mux34~0_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a1\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a1\,
	datac => \Mux34~0_combout\,
	datad => \we_h[1]~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X16_Y21_N8
\Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a2\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \acc_type~combout\(0),
	datac => \ram_1_rtl_0|auto_generated|ram_block1a2\,
	datad => \addr~combout\(1),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X16_Y21_N14
\Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux27~1_combout\) # ((\Mux33~0_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a2\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a2\,
	datac => \Mux33~0_combout\,
	datad => \we_h[1]~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X16_Y21_N4
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a3\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \acc_type~combout\(0),
	datac => \ram_1_rtl_0|auto_generated|ram_block1a3\,
	datad => \addr~combout\(1),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X16_Y21_N18
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux27~1_combout\) # ((\Mux32~0_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a3\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a3\,
	datac => \Mux32~0_combout\,
	datad => \we_h[1]~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X19_Y23_N6
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a4\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \ram_1_rtl_0|auto_generated|ram_block1a4\,
	datac => \acc_type~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X19_Y23_N16
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux27~1_combout\) # ((\Mux31~0_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a4\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a4\,
	datac => \we_h[1]~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X19_Y23_N26
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a5\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \ram_1_rtl_0|auto_generated|ram_block1a5\,
	datac => \acc_type~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X19_Y23_N24
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux27~1_combout\) # ((\Mux30~0_combout\) # ((\we_h[1]~0_combout\ & \ram_3_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux30~0_combout\,
	datac => \we_h[1]~0_combout\,
	datad => \ram_3_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X19_Y23_N22
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\ram_1_rtl_0|auto_generated|ram_block1a6\ & ((\acc_type~combout\(1)) # ((\acc_type~combout\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_type~combout\(1),
	datab => \ram_1_rtl_0|auto_generated|ram_block1a6\,
	datac => \acc_type~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X19_Y23_N12
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # ((\Mux27~1_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a6\ & \we_h[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_3_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux29~0_combout\,
	datac => \we_h[1]~0_combout\,
	datad => \Mux27~1_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X16_Y23_N14
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\acc_type~combout\(0) & ((\addr~combout\(1) & ((\ram_3_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\ram_1_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_1_rtl_0|auto_generated|ram_block1a7\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a7\,
	datac => \acc_type~combout\(0),
	datad => \addr~combout\(1),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X16_Y23_N8
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux27~1_combout\) # ((\acc_type~combout\(1) & ((\ram_1_rtl_0|auto_generated|ram_block1a7\))) # (!\acc_type~combout\(1) & (\Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \acc_type~combout\(1),
	datac => \Mux28~0_combout\,
	datad => \ram_1_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X16_Y23_N18
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux28~0_combout\ & (!\l_u~combout\ & !\acc_type~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~0_combout\,
	datac => \l_u~combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X16_Y23_N24
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_2_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Mux27~2_combout\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X16_Y23_N10
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a1\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_2_rtl_0|auto_generated|ram_block1a1\,
	datab => \Mux27~2_combout\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X19_Y23_N10
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a2\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_2_rtl_0|auto_generated|ram_block1a2\,
	datab => \Mux27~2_combout\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X19_Y23_N20
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a3\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~2_combout\,
	datac => \ram_2_rtl_0|auto_generated|ram_block1a3\,
	datad => \acc_type~combout\(1),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a4\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~2_combout\,
	datac => \ram_2_rtl_0|auto_generated|ram_block1a4\,
	datad => \acc_type~combout\(1),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a5\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_2_rtl_0|auto_generated|ram_block1a5\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X19_Y23_N4
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a6\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_2_rtl_0|auto_generated|ram_block1a6\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X16_Y23_N26
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_2_rtl_0|auto_generated|ram_block1a7\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \ram_2_rtl_0|auto_generated|ram_block1a7\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X16_Y21_N20
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_3_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Mux27~2_combout\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a1\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a1\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a2\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a2\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a3\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a3\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X19_Y23_N18
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a4\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a4\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a5\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a5\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X19_Y23_N14
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux27~1_combout\) # ((\Mux27~2_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a6\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a6\,
	datac => \Mux27~2_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux27~2_combout\) # ((\Mux27~1_combout\) # ((\ram_3_rtl_0|auto_generated|ram_block1a7\ & \acc_type~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \ram_3_rtl_0|auto_generated|ram_block1a7\,
	datac => \Mux27~1_combout\,
	datad => \acc_type~combout\(1),
	combout => \Mux12~0_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_addr(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_addr(10));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_addr(11));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[0]~I\ : cycloneii_io
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
	datain => \Mux43~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(0));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[1]~I\ : cycloneii_io
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
	datain => \Mux42~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(1));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[2]~I\ : cycloneii_io
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
	datain => \Mux41~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(2));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[3]~I\ : cycloneii_io
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
	datain => \Mux40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[4]~I\ : cycloneii_io
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
	padio => ww_d_out(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[5]~I\ : cycloneii_io
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
	padio => ww_d_out(5));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[6]~I\ : cycloneii_io
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
	padio => ww_d_out(6));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[7]~I\ : cycloneii_io
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
	padio => ww_d_out(7));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[8]~I\ : cycloneii_io
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
	datain => \Mux35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(8));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[9]~I\ : cycloneii_io
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
	datain => \Mux34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(9));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[10]~I\ : cycloneii_io
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
	datain => \Mux33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(10));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[11]~I\ : cycloneii_io
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
	padio => ww_d_out(11));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[12]~I\ : cycloneii_io
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
	datain => \Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(12));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[13]~I\ : cycloneii_io
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
	padio => ww_d_out(13));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[14]~I\ : cycloneii_io
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
	padio => ww_d_out(14));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[15]~I\ : cycloneii_io
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
	padio => ww_d_out(15));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[16]~I\ : cycloneii_io
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
	datain => \Mux27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(16));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[17]~I\ : cycloneii_io
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
	datain => \Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(17));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[18]~I\ : cycloneii_io
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
	datain => \Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(18));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[19]~I\ : cycloneii_io
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
	datain => \Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(19));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[20]~I\ : cycloneii_io
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
	datain => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(20));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[21]~I\ : cycloneii_io
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
	padio => ww_d_out(21));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[22]~I\ : cycloneii_io
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
	padio => ww_d_out(22));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[23]~I\ : cycloneii_io
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
	padio => ww_d_out(23));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[24]~I\ : cycloneii_io
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
	padio => ww_d_out(24));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[25]~I\ : cycloneii_io
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
	padio => ww_d_out(25));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[26]~I\ : cycloneii_io
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
	padio => ww_d_out(26));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[27]~I\ : cycloneii_io
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
	padio => ww_d_out(27));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[28]~I\ : cycloneii_io
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
	padio => ww_d_out(28));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[29]~I\ : cycloneii_io
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
	padio => ww_d_out(29));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[30]~I\ : cycloneii_io
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
	padio => ww_d_out(30));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[31]~I\ : cycloneii_io
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
	padio => ww_d_out(31));
END structure;


