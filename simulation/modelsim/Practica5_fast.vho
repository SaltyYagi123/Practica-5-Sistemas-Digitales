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

-- DATE "04/20/2021 20:23:51"

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

ENTITY 	ALU IS
    PORT (
	sel : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(1 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0);
	lt : OUT std_logic;
	ge : OUT std_logic;
	z : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- s[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lt	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ge	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lt : std_logic;
SIGNAL ww_ge : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \s~11_combout\ : std_logic;
SIGNAL \s~12_combout\ : std_logic;
SIGNAL \s~20_combout\ : std_logic;
SIGNAL \s~23_combout\ : std_logic;
SIGNAL \s~28_combout\ : std_logic;
SIGNAL \s~29_combout\ : std_logic;
SIGNAL \s~30_combout\ : std_logic;
SIGNAL \s~31_combout\ : std_logic;
SIGNAL \s~5_combout\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \s~4_combout\ : std_logic;
SIGNAL \s~6_combout\ : std_logic;
SIGNAL \s~7_combout\ : std_logic;
SIGNAL \s~34_combout\ : std_logic;
SIGNAL \s~35_combout\ : std_logic;
SIGNAL \s~8_combout\ : std_logic;
SIGNAL \s~10_combout\ : std_logic;
SIGNAL \s~13_combout\ : std_logic;
SIGNAL \sr_sel~0_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \s~14_combout\ : std_logic;
SIGNAL \s~9_combout\ : std_logic;
SIGNAL \s~15_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \s~21_combout\ : std_logic;
SIGNAL \s~22_combout\ : std_logic;
SIGNAL \s~16_combout\ : std_logic;
SIGNAL \s~17_combout\ : std_logic;
SIGNAL \s~18_combout\ : std_logic;
SIGNAL \s~19_combout\ : std_logic;
SIGNAL \s~24_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \s~25_combout\ : std_logic;
SIGNAL \s~26_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \s~32_combout\ : std_logic;
SIGNAL \s~27_combout\ : std_logic;
SIGNAL \s~33_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \SumadorRestador|b_aux\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \shamt~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SumadorRestador|GenSum:3:i_Sumador1Bit|ALT_INV_s_i~0_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_shamt <= shamt;
ww_a <= a;
ww_b <= b;
s <= ww_s;
lt <= ww_lt;
ge <= ww_ge;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SumadorRestador|GenSum:3:i_Sumador1Bit|ALT_INV_s_i~0_combout\ <= NOT \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\;

-- Location: LCCOMB_X32_Y26_N14
\s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~3_combout\ = (\sel~combout\(2) & ((\shamt~combout\(0) & (\a~combout\(3))) # (!\shamt~combout\(0) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \sel~combout\(2),
	datac => \a~combout\(3),
	datad => \a~combout\(2),
	combout => \s~3_combout\);

-- Location: LCCOMB_X30_Y26_N8
\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0_combout\ = (\b~combout\(3) & (\sel~combout\(1) & (\sel~combout\(3) & !\a~combout\(3)))) # (!\b~combout\(3) & (\a~combout\(3) & ((!\sel~combout\(3)) # (!\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(3),
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X30_Y26_N10
\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1_combout\ = (\b~combout\(3) & ((\sel~combout\(2)) # ((\sel~combout\(0)) # (\a~combout\(3))))) # (!\b~combout\(3) & (\a~combout\(3) & ((\sel~combout\(2)) # (\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(0),
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1_combout\);

-- Location: LCCOMB_X29_Y26_N28
\SumadorRestador|b_aux[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|b_aux\(1) = \b~combout\(1) $ (\sr_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \sr_sel~0_combout\,
	combout => \SumadorRestador|b_aux\(1));

-- Location: LCCOMB_X30_Y26_N12
\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2_combout\ = (\SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(3) & (!\sr_sel~0_combout\)) # (!\a~combout\(3) & ((\b~combout\(3)))))) # 
-- (!\SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(3) & ((\b~combout\(3)))) # (!\a~combout\(3) & (\sr_sel~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_sel~0_combout\,
	datab => \SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2_combout\);

-- Location: LCCOMB_X30_Y26_N14
\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~combout\ = \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2_combout\ $ (((!\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1_combout\ & (\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0_combout\ $ (\b~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~2_combout\,
	datab => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~0_combout\,
	datac => \b~combout\(3),
	datad => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~1_combout\,
	combout => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X32_Y26_N4
\s~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~11_combout\ = (\sel~combout\(2) & (((\a~combout\(2))))) # (!\sel~combout\(2) & (\a~combout\(0) & (!\sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(3),
	datac => \sel~combout\(2),
	datad => \a~combout\(2),
	combout => \s~11_combout\);

-- Location: LCCOMB_X32_Y26_N22
\s~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~12_combout\ = (\shamt~combout\(0) & ((\s~11_combout\) # ((\a~combout\(1) & \s~1_combout\)))) # (!\shamt~combout\(0) & (((\a~combout\(1) & \s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \s~11_combout\,
	datac => \a~combout\(1),
	datad => \s~1_combout\,
	combout => \s~12_combout\);

-- Location: LCCOMB_X31_Y26_N12
\s~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~20_combout\ = (!\sel~combout\(0) & (!\sel~combout\(2) & !\sel~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	combout => \s~20_combout\);

-- Location: LCCOMB_X31_Y26_N10
\s~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~23_combout\ = (\sel~combout\(0) & (!\sel~combout\(1) & \sel~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \sel~combout\(3),
	combout => \s~23_combout\);

-- Location: LCCOMB_X32_Y26_N10
\s~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~28_combout\ = (!\sel~combout\(2) & ((\shamt~combout\(1) & (\a~combout\(0))) # (!\shamt~combout\(1) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(1),
	datac => \sel~combout\(2),
	datad => \a~combout\(2),
	combout => \s~28_combout\);

-- Location: LCCOMB_X32_Y26_N12
\s~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~29_combout\ = (\shamt~combout\(1) & (((!\sel~combout\(2) & \a~combout\(1))))) # (!\shamt~combout\(1) & (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \sel~combout\(2),
	datac => \a~combout\(1),
	datad => \shamt~combout\(1),
	combout => \s~29_combout\);

-- Location: LCCOMB_X32_Y26_N6
\s~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~30_combout\ = (!\sel~combout\(3) & ((\shamt~combout\(0) & (\s~28_combout\)) # (!\shamt~combout\(0) & ((\s~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~28_combout\,
	datab => \sel~combout\(3),
	datac => \shamt~combout\(0),
	datad => \s~29_combout\,
	combout => \s~30_combout\);

-- Location: LCCOMB_X30_Y26_N26
\s~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~31_combout\ = (\s~30_combout\) # ((\sel~combout\(3) & (\sel~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~30_combout\,
	datab => \sel~combout\(3),
	datac => \sel~combout\(2),
	datad => \a~combout\(3),
	combout => \s~31_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : cycloneii_io
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
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : cycloneii_io
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
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[3]~I\ : cycloneii_io
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
	padio => ww_sel(3),
	combout => \sel~combout\(3));

-- Location: LCCOMB_X31_Y26_N24
\s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~5_combout\ = (\sel~combout\(2) & (!\sel~combout\(3) & (\a~combout\(0) $ (\b~combout\(0))))) # (!\sel~combout\(2) & (\a~combout\(0) $ ((\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(3),
	combout => \s~5_combout\);

-- Location: LCCOMB_X32_Y26_N2
\s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~1_combout\ = (!\shamt~combout\(0) & ((\sel~combout\(2)) # (!\sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(3),
	combout => \s~1_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X32_Y26_N8
\s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = (\shamt~combout\(0) & (\sel~combout\(2) & \a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \sel~combout\(2),
	datac => \a~combout\(1),
	combout => \s~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[1]~I\ : cycloneii_io
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
	padio => ww_shamt(1),
	combout => \shamt~combout\(1));

-- Location: LCCOMB_X32_Y26_N28
\s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~2_combout\ = (!\shamt~combout\(1) & ((\s~0_combout\) # ((\a~combout\(0) & \s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \s~1_combout\,
	datac => \s~0_combout\,
	datad => \shamt~combout\(1),
	combout => \s~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : cycloneii_io
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
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LCCOMB_X32_Y26_N24
\s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~4_combout\ = (\sel~combout\(0) & ((\s~2_combout\) # ((\s~3_combout\ & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~3_combout\,
	datab => \s~2_combout\,
	datac => \sel~combout\(0),
	datad => \shamt~combout\(1),
	combout => \s~4_combout\);

-- Location: LCCOMB_X31_Y26_N2
\s~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~6_combout\ = (!\sel~combout\(1) & ((\s~4_combout\) # ((!\sel~combout\(0) & \s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \s~5_combout\,
	datad => \s~4_combout\,
	combout => \s~6_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X31_Y26_N4
\s~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~7_combout\ = (\sel~combout\(1) & ((\sel~combout\(0) & (\a~combout\(0) & \b~combout\(0))) # (!\sel~combout\(0) & ((\a~combout\(0)) # (\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \s~7_combout\);

-- Location: LCCOMB_X31_Y26_N18
\s~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~34_combout\ = (\sel~combout\(2) & (((\s~7_combout\)))) # (!\sel~combout\(2) & (\SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~combout\ & (\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador|GenSum:4:i_Sumador1Bit|s_i~combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \s~7_combout\,
	combout => \s~34_combout\);

-- Location: LCCOMB_X31_Y26_N20
\s~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~35_combout\ = (\s~6_combout\) # ((\s~34_combout\ & !\sel~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~6_combout\,
	datab => \s~34_combout\,
	datad => \sel~combout\(3),
	combout => \s~35_combout\);

-- Location: LCCOMB_X30_Y26_N0
\s~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~8_combout\ = (\sel~combout\(2) & !\sel~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \sel~combout\(3),
	combout => \s~8_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X32_Y26_N18
\s~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~10_combout\ = (\sel~combout\(2) & (\a~combout\(3) & ((\sel~combout\(3)) # (!\shamt~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \sel~combout\(2),
	datac => \a~combout\(3),
	datad => \sel~combout\(3),
	combout => \s~10_combout\);

-- Location: LCCOMB_X32_Y26_N0
\s~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~13_combout\ = (\sel~combout\(0) & ((\shamt~combout\(1) & ((\s~10_combout\))) # (!\shamt~combout\(1) & (\s~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~12_combout\,
	datab => \s~10_combout\,
	datac => \sel~combout\(0),
	datad => \shamt~combout\(1),
	combout => \s~13_combout\);

-- Location: LCCOMB_X31_Y26_N22
\sr_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sr_sel~0_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((!\sel~combout\(3)))) # (!\sel~combout\(1) & (!\sel~combout\(0) & \sel~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \sel~combout\(3),
	combout => \sr_sel~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\sr_sel~0_combout\ & (\a~combout\(0) $ (!\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \sr_sel~0_combout\,
	combout => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X29_Y26_N2
\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\a~combout\(0) & (\b~combout\(0) $ (\sr_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \sr_sel~0_combout\,
	combout => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X29_Y26_N16
\SumadorRestador|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:1:i_Sumador1Bit|s_i~combout\ = \SumadorRestador|b_aux\(1) $ (\a~combout\(1) $ (((\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador|b_aux\(1),
	datab => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(1),
	datad => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \SumadorRestador|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X30_Y26_N4
\s~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~14_combout\ = (\s~13_combout\) # ((!\sel~combout\(2) & (!\sel~combout\(0) & \SumadorRestador|GenSum:1:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(0),
	datac => \s~13_combout\,
	datad => \SumadorRestador|GenSum:1:i_Sumador1Bit|s_i~combout\,
	combout => \s~14_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X30_Y26_N18
\s~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~9_combout\ = (\a~combout\(1) & ((\b~combout\(1) & (\sel~combout\(1))) # (!\b~combout\(1) & ((!\sel~combout\(0)))))) # (!\a~combout\(1) & (((\b~combout\(1) & !\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \sel~combout\(0),
	combout => \s~9_combout\);

-- Location: LCCOMB_X30_Y26_N22
\s~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~15_combout\ = (\sel~combout\(1) & (\s~8_combout\ & ((\s~9_combout\)))) # (!\sel~combout\(1) & ((\s~14_combout\) # ((\s~8_combout\ & \s~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \s~8_combout\,
	datac => \s~14_combout\,
	datad => \s~9_combout\,
	combout => \s~15_combout\);

-- Location: LCCOMB_X29_Y26_N22
\SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\SumadorRestador|b_aux\(1) & ((\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # ((\a~combout\(1)) # (\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\)))) # 
-- (!\SumadorRestador|b_aux\(1) & (\a~combout\(1) & ((\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador|b_aux\(1),
	datab => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(1),
	datad => \SumadorRestador|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X31_Y26_N14
\s~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~21_combout\ = \b~combout\(2) $ (\a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \s~21_combout\);

-- Location: LCCOMB_X31_Y26_N16
\s~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~22_combout\ = (\s~20_combout\ & (\SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\s~21_combout\ $ (\sr_sel~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~20_combout\,
	datab => \SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \s~21_combout\,
	datad => \sr_sel~0_combout\,
	combout => \s~22_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[0]~I\ : cycloneii_io
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
	padio => ww_shamt(0),
	combout => \shamt~combout\(0));

-- Location: LCCOMB_X32_Y26_N26
\s~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~16_combout\ = (\a~combout\(0) & (!\sel~combout\(2) & (!\shamt~combout\(0) & \shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(2),
	datac => \shamt~combout\(0),
	datad => \shamt~combout\(1),
	combout => \s~16_combout\);

-- Location: LCCOMB_X32_Y26_N20
\s~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~17_combout\ = (!\sel~combout\(2) & ((\shamt~combout\(0) & (\a~combout\(1))) # (!\shamt~combout\(0) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \sel~combout\(2),
	datac => \a~combout\(1),
	datad => \a~combout\(2),
	combout => \s~17_combout\);

-- Location: LCCOMB_X32_Y26_N30
\s~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~18_combout\ = (\s~16_combout\) # ((!\shamt~combout\(1) & ((\s~3_combout\) # (\s~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~3_combout\,
	datab => \s~16_combout\,
	datac => \s~17_combout\,
	datad => \shamt~combout\(1),
	combout => \s~18_combout\);

-- Location: LCCOMB_X31_Y26_N26
\s~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~19_combout\ = (\sel~combout\(0) & (\s~18_combout\ & (!\sel~combout\(1) & !\sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \s~18_combout\,
	datac => \sel~combout\(1),
	datad => \sel~combout\(3),
	combout => \s~19_combout\);

-- Location: LCCOMB_X31_Y26_N28
\s~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~24_combout\ = (\b~combout\(2) & ((\a~combout\(2) & (\sel~combout\(1))) # (!\a~combout\(2) & ((!\sel~combout\(0)))))) # (!\b~combout\(2) & (((!\sel~combout\(0) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \a~combout\(2),
	combout => \s~24_combout\);

-- Location: LCCOMB_X32_Y26_N16
\ShiftRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\shamt~combout\(1) & (\a~combout\(3))) # (!\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(3))) # (!\shamt~combout\(0) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(0),
	datad => \a~combout\(2),
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X31_Y26_N6
\s~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~25_combout\ = (\s~23_combout\ & ((\ShiftRight0~0_combout\) # ((\s~24_combout\ & !\sel~combout\(3))))) # (!\s~23_combout\ & (\s~24_combout\ & ((!\sel~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~23_combout\,
	datab => \s~24_combout\,
	datac => \ShiftRight0~0_combout\,
	datad => \sel~combout\(3),
	combout => \s~25_combout\);

-- Location: LCCOMB_X31_Y26_N0
\s~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~26_combout\ = (\s~22_combout\) # ((\s~19_combout\) # ((\sel~combout\(2) & \s~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~22_combout\,
	datab => \s~19_combout\,
	datac => \sel~combout\(2),
	datad => \s~25_combout\,
	combout => \s~26_combout\);

-- Location: LCCOMB_X31_Y26_N8
\SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2) $ (\sr_sel~0_combout\)))) # (!\SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & 
-- (\a~combout\(2) & (\b~combout\(2) $ (\sr_sel~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \sr_sel~0_combout\,
	datac => \SumadorRestador|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \a~combout\(2),
	combout => \SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X30_Y26_N28
\SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\ = \sr_sel~0_combout\ $ (\SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\b~combout\(3) $ (\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr_sel~0_combout\,
	datab => \SumadorRestador|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X30_Y26_N6
\s~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~32_combout\ = (\sel~combout\(0) & (\s~31_combout\)) # (!\sel~combout\(0) & (((\SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\ & !\sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~31_combout\,
	datab => \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	datac => \sel~combout\(2),
	datad => \sel~combout\(0),
	combout => \s~32_combout\);

-- Location: LCCOMB_X30_Y26_N24
\s~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~27_combout\ = (\b~combout\(3) & ((\a~combout\(3) & (\sel~combout\(1))) # (!\a~combout\(3) & ((!\sel~combout\(0)))))) # (!\b~combout\(3) & (((!\sel~combout\(0) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(0),
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \s~27_combout\);

-- Location: LCCOMB_X30_Y26_N16
\s~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~33_combout\ = (\s~32_combout\ & (((\s~8_combout\ & \s~27_combout\)) # (!\sel~combout\(1)))) # (!\s~32_combout\ & (\s~8_combout\ & (\s~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~32_combout\,
	datab => \s~8_combout\,
	datac => \s~27_combout\,
	datad => \sel~combout\(1),
	combout => \s~33_combout\);

-- Location: LCCOMB_X29_Y26_N18
\Equal19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (\a~combout\(0) & (\b~combout\(0) & (\a~combout\(1) $ (!\b~combout\(1))))) # (!\a~combout\(0) & (!\b~combout\(0) & (\a~combout\(1) $ (!\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X30_Y26_N2
\Equal19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (\Equal19~0_combout\ & (!\s~21_combout\ & (\b~combout\(3) $ (!\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \b~combout\(3),
	datac => \s~21_combout\,
	datad => \a~combout\(3),
	combout => \Equal19~1_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
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
	datain => \s~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
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
	datain => \s~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
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
	datain => \s~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
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
	datain => \s~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lt~I\ : cycloneii_io
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
	datain => \SumadorRestador|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lt);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ge~I\ : cycloneii_io
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
	datain => \SumadorRestador|GenSum:3:i_Sumador1Bit|ALT_INV_s_i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ge);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
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
	datain => \Equal19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);
END structure;


