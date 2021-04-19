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

-- DATE "04/19/2021 09:46:18"

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

ENTITY 	BancoReg IS
    PORT (
	clk : IN std_logic;
	en_banco : IN std_logic;
	AddrA : IN std_logic_vector(4 DOWNTO 0);
	AddrB : IN std_logic_vector(4 DOWNTO 0);
	AddrW : IN std_logic_vector(4 DOWNTO 0);
	D_in : IN std_logic_vector(31 DOWNTO 0);
	RegA : OUT std_logic_vector(31 DOWNTO 0);
	RegB : OUT std_logic_vector(31 DOWNTO 0)
	);
END BancoReg;

-- Design Ports Information
-- AddrW[3]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrW[4]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegA[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[4]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[5]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[8]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[9]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[10]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[11]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[12]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[13]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[14]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[15]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[16]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[17]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[18]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[19]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[20]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[21]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[22]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[23]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[24]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[25]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[26]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[27]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[28]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[29]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[30]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegA[31]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[1]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[2]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[4]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[5]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[6]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[7]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[8]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[9]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[10]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[11]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[12]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[13]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[14]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[15]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[16]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[17]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[18]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[19]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[20]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[21]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[22]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[23]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[24]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[25]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[26]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[27]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[28]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[29]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[30]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegB[31]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AddrA[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrA[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrA[2]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrA[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrA[3]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrB[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrB[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrB[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrB[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en_banco	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrW[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrW[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AddrW[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[8]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[9]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[10]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[11]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[12]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[13]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[14]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[15]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[16]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[17]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[18]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[19]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[20]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[21]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[22]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[23]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[24]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[25]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[26]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[27]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[28]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[29]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[30]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D_in[31]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BancoReg IS
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
SIGNAL ww_en_banco : std_logic;
SIGNAL ww_AddrA : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_AddrB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_AddrW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_block~228_regout\ : std_logic;
SIGNAL \reg_block~164_regout\ : std_logic;
SIGNAL \reg_block~294_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \reg_block~296_combout\ : std_logic;
SIGNAL \reg_block~71_regout\ : std_logic;
SIGNAL \reg_block~304_combout\ : std_logic;
SIGNAL \reg_block~306_combout\ : std_logic;
SIGNAL \reg_block~72_regout\ : std_logic;
SIGNAL \reg_block~40_regout\ : std_logic;
SIGNAL \reg_block~308_combout\ : std_logic;
SIGNAL \reg_block~73_regout\ : std_logic;
SIGNAL \reg_block~312_combout\ : std_logic;
SIGNAL \reg_block~316_combout\ : std_logic;
SIGNAL \reg_block~324_combout\ : std_logic;
SIGNAL \reg_block~330_combout\ : std_logic;
SIGNAL \reg_block~78_regout\ : std_logic;
SIGNAL \reg_block~46_regout\ : std_logic;
SIGNAL \reg_block~332_combout\ : std_logic;
SIGNAL \reg_block~334_combout\ : std_logic;
SIGNAL \reg_block~79_regout\ : std_logic;
SIGNAL \reg_block~47_regout\ : std_logic;
SIGNAL \reg_block~336_combout\ : std_logic;
SIGNAL \reg_block~239_regout\ : std_logic;
SIGNAL \reg_block~338_combout\ : std_logic;
SIGNAL \reg_block~242_regout\ : std_logic;
SIGNAL \reg_block~350_combout\ : std_logic;
SIGNAL \reg_block~352_combout\ : std_logic;
SIGNAL \reg_block~243_regout\ : std_logic;
SIGNAL \reg_block~354_combout\ : std_logic;
SIGNAL \reg_block~84_regout\ : std_logic;
SIGNAL \reg_block~356_combout\ : std_logic;
SIGNAL \reg_block~85_regout\ : std_logic;
SIGNAL \reg_block~53_regout\ : std_logic;
SIGNAL \reg_block~360_combout\ : std_logic;
SIGNAL \reg_block~362_combout\ : std_logic;
SIGNAL \reg_block~249_regout\ : std_logic;
SIGNAL \reg_block~185_regout\ : std_logic;
SIGNAL \reg_block~378_combout\ : std_logic;
SIGNAL \reg_block~90_regout\ : std_logic;
SIGNAL \reg_block~58_regout\ : std_logic;
SIGNAL \reg_block~380_combout\ : std_logic;
SIGNAL \reg_block~92_regout\ : std_logic;
SIGNAL \reg_block~388_combout\ : std_logic;
SIGNAL \reg_block~252_regout\ : std_logic;
SIGNAL \reg_block~188_regout\ : std_logic;
SIGNAL \reg_block~390_combout\ : std_logic;
SIGNAL \reg_block~93_regout\ : std_logic;
SIGNAL \reg_block~61_regout\ : std_logic;
SIGNAL \reg_block~392_combout\ : std_logic;
SIGNAL \reg_block~394_combout\ : std_logic;
SIGNAL \reg_block~254_regout\ : std_logic;
SIGNAL \reg_block~190_regout\ : std_logic;
SIGNAL \reg_block~398_combout\ : std_logic;
SIGNAL \reg_block~95_regout\ : std_logic;
SIGNAL \reg_block~400_combout\ : std_logic;
SIGNAL \reg_block~255_regout\ : std_logic;
SIGNAL \reg_block~402_combout\ : std_logic;
SIGNAL \reg_block~98_regout\ : std_logic;
SIGNAL \reg_block~66_regout\ : std_logic;
SIGNAL \reg_block~412_combout\ : std_logic;
SIGNAL \reg_block~194_regout\ : std_logic;
SIGNAL \reg_block~422_combout\ : std_logic;
SIGNAL \reg_block~426_combout\ : std_logic;
SIGNAL \reg_block~428_combout\ : std_logic;
SIGNAL \reg_block~436_combout\ : std_logic;
SIGNAL \reg_block~438_combout\ : std_logic;
SIGNAL \reg_block~446_combout\ : std_logic;
SIGNAL \reg_block~460_combout\ : std_logic;
SIGNAL \reg_block~464_combout\ : std_logic;
SIGNAL \reg_block~474_combout\ : std_logic;
SIGNAL \reg_block~476_combout\ : std_logic;
SIGNAL \reg_block~486_combout\ : std_logic;
SIGNAL \reg_block~488_combout\ : std_logic;
SIGNAL \reg_block~498_combout\ : std_logic;
SIGNAL \reg_block~500_combout\ : std_logic;
SIGNAL \reg_block~502_combout\ : std_logic;
SIGNAL \reg_block~506_combout\ : std_logic;
SIGNAL \reg_block~508_combout\ : std_logic;
SIGNAL \reg_block~512_combout\ : std_logic;
SIGNAL \reg_block~518_combout\ : std_logic;
SIGNAL \reg_block~520_combout\ : std_logic;
SIGNAL \reg_block~526_combout\ : std_logic;
SIGNAL \reg_block~538_combout\ : std_logic;
SIGNAL \reg_block~540_combout\ : std_logic;
SIGNAL \reg_block~542_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \RegA~0_combout\ : std_logic;
SIGNAL \en_banco~combout\ : std_logic;
SIGNAL \reg_block~555_combout\ : std_logic;
SIGNAL \reg_block~260_regout\ : std_logic;
SIGNAL \reg_block~552_combout\ : std_logic;
SIGNAL \reg_block~196_regout\ : std_logic;
SIGNAL \reg_block~295_combout\ : std_logic;
SIGNAL \reg_block~549_combout\ : std_logic;
SIGNAL \reg_block~68_regout\ : std_logic;
SIGNAL \reg_block~292_combout\ : std_logic;
SIGNAL \reg_block~548_combout\ : std_logic;
SIGNAL \reg_block~100_regout\ : std_logic;
SIGNAL \reg_block~551_combout\ : std_logic;
SIGNAL \reg_block~132_regout\ : std_logic;
SIGNAL \reg_block~293_combout\ : std_logic;
SIGNAL \RegA~1_combout\ : std_logic;
SIGNAL \reg_block~133_regout\ : std_logic;
SIGNAL \reg_block~101_regout\ : std_logic;
SIGNAL \reg_block~297_combout\ : std_logic;
SIGNAL \reg_block~261_regout\ : std_logic;
SIGNAL \reg_block~197_regout\ : std_logic;
SIGNAL \reg_block~553_combout\ : std_logic;
SIGNAL \reg_block~229_regout\ : std_logic;
SIGNAL \reg_block~554_combout\ : std_logic;
SIGNAL \reg_block~165_regout\ : std_logic;
SIGNAL \reg_block~298_combout\ : std_logic;
SIGNAL \reg_block~299_combout\ : std_logic;
SIGNAL \RegA~2_combout\ : std_logic;
SIGNAL \reg_block~70_regout\ : std_logic;
SIGNAL \reg_block~550_combout\ : std_logic;
SIGNAL \reg_block~38_regout\ : std_logic;
SIGNAL \reg_block~300_combout\ : std_logic;
SIGNAL \reg_block~102_regout\ : std_logic;
SIGNAL \reg_block~301_combout\ : std_logic;
SIGNAL \reg_block~230_regout\ : std_logic;
SIGNAL \reg_block~166_regout\ : std_logic;
SIGNAL \reg_block~302_combout\ : std_logic;
SIGNAL \reg_block~198_regout\ : std_logic;
SIGNAL \reg_block~303_combout\ : std_logic;
SIGNAL \RegA~3_combout\ : std_logic;
SIGNAL \reg_block~263_regout\ : std_logic;
SIGNAL \reg_block~199_regout\ : std_logic;
SIGNAL \reg_block~307_combout\ : std_logic;
SIGNAL \reg_block~135_regout\ : std_logic;
SIGNAL \reg_block~103_regout\ : std_logic;
SIGNAL \reg_block~305_combout\ : std_logic;
SIGNAL \RegA~4_combout\ : std_logic;
SIGNAL \reg_block~104_regout\ : std_logic;
SIGNAL \reg_block~136_regout\ : std_logic;
SIGNAL \reg_block~309_combout\ : std_logic;
SIGNAL \reg_block~168_regout\ : std_logic;
SIGNAL \reg_block~232_regout\ : std_logic;
SIGNAL \reg_block~310_combout\ : std_logic;
SIGNAL \reg_block~200_regout\ : std_logic;
SIGNAL \reg_block~311_combout\ : std_logic;
SIGNAL \RegA~5_combout\ : std_logic;
SIGNAL \reg_block~137_regout\ : std_logic;
SIGNAL \reg_block~105_regout\ : std_logic;
SIGNAL \reg_block~313_combout\ : std_logic;
SIGNAL \reg_block~169_regout\ : std_logic;
SIGNAL \reg_block~233_regout\ : std_logic;
SIGNAL \reg_block~314_combout\ : std_logic;
SIGNAL \reg_block~201_regout\ : std_logic;
SIGNAL \reg_block~315_combout\ : std_logic;
SIGNAL \RegA~6_combout\ : std_logic;
SIGNAL \reg_block~106_regout\ : std_logic;
SIGNAL \reg_block~138_regout\ : std_logic;
SIGNAL \reg_block~317_combout\ : std_logic;
SIGNAL \reg_block~266_regout\ : std_logic;
SIGNAL \reg_block~202_regout\ : std_logic;
SIGNAL \reg_block~170_regout\ : std_logic;
SIGNAL \reg_block~234_regout\ : std_logic;
SIGNAL \reg_block~318_combout\ : std_logic;
SIGNAL \reg_block~319_combout\ : std_logic;
SIGNAL \RegA~7_combout\ : std_logic;
SIGNAL \reg_block~107_regout\ : std_logic;
SIGNAL \reg_block~75_regout\ : std_logic;
SIGNAL \reg_block~43_regout\ : std_logic;
SIGNAL \reg_block~320_combout\ : std_logic;
SIGNAL \reg_block~321_combout\ : std_logic;
SIGNAL \reg_block~267_regout\ : std_logic;
SIGNAL \reg_block~203_regout\ : std_logic;
SIGNAL \reg_block~171_regout\ : std_logic;
SIGNAL \reg_block~235_regout\ : std_logic;
SIGNAL \reg_block~322_combout\ : std_logic;
SIGNAL \reg_block~323_combout\ : std_logic;
SIGNAL \RegA~8_combout\ : std_logic;
SIGNAL \reg_block~108_regout\ : std_logic;
SIGNAL \reg_block~140_regout\ : std_logic;
SIGNAL \reg_block~325_combout\ : std_logic;
SIGNAL \reg_block~172_regout\ : std_logic;
SIGNAL \reg_block~236_regout\ : std_logic;
SIGNAL \reg_block~326_combout\ : std_logic;
SIGNAL \reg_block~204_regout\ : std_logic;
SIGNAL \reg_block~268_regout\ : std_logic;
SIGNAL \reg_block~327_combout\ : std_logic;
SIGNAL \RegA~9_combout\ : std_logic;
SIGNAL \reg_block~269_regout\ : std_logic;
SIGNAL \reg_block~205_regout\ : std_logic;
SIGNAL \reg_block~331_combout\ : std_logic;
SIGNAL \reg_block~77_regout\ : std_logic;
SIGNAL \reg_block~45_regout\ : std_logic;
SIGNAL \reg_block~328_combout\ : std_logic;
SIGNAL \reg_block~109_regout\ : std_logic;
SIGNAL \reg_block~329_combout\ : std_logic;
SIGNAL \RegA~10_combout\ : std_logic;
SIGNAL \reg_block~270_regout\ : std_logic;
SIGNAL \reg_block~206_regout\ : std_logic;
SIGNAL \reg_block~335_combout\ : std_logic;
SIGNAL \reg_block~142_regout\ : std_logic;
SIGNAL \reg_block~110_regout\ : std_logic;
SIGNAL \reg_block~333_combout\ : std_logic;
SIGNAL \RegA~11_combout\ : std_logic;
SIGNAL \reg_block~271_regout\ : std_logic;
SIGNAL \reg_block~207_regout\ : std_logic;
SIGNAL \reg_block~339_combout\ : std_logic;
SIGNAL \reg_block~111_regout\ : std_logic;
SIGNAL \reg_block~143_regout\ : std_logic;
SIGNAL \reg_block~337_combout\ : std_logic;
SIGNAL \RegA~12_combout\ : std_logic;
SIGNAL \reg_block~112_regout\ : std_logic;
SIGNAL \reg_block~48_regout\ : std_logic;
SIGNAL \reg_block~80_regout\ : std_logic;
SIGNAL \reg_block~340_combout\ : std_logic;
SIGNAL \reg_block~341_combout\ : std_logic;
SIGNAL \reg_block~176_regout\ : std_logic;
SIGNAL \reg_block~240_regout\ : std_logic;
SIGNAL \reg_block~342_combout\ : std_logic;
SIGNAL \reg_block~208_regout\ : std_logic;
SIGNAL \reg_block~343_combout\ : std_logic;
SIGNAL \RegA~13_combout\ : std_logic;
SIGNAL \reg_block~273_regout\ : std_logic;
SIGNAL \reg_block~209_regout\ : std_logic;
SIGNAL \reg_block~177_regout\ : std_logic;
SIGNAL \reg_block~241_regout\ : std_logic;
SIGNAL \reg_block~346_combout\ : std_logic;
SIGNAL \reg_block~347_combout\ : std_logic;
SIGNAL \reg_block~113_regout\ : std_logic;
SIGNAL \reg_block~49_regout\ : std_logic;
SIGNAL \reg_block~81_regout\ : std_logic;
SIGNAL \reg_block~344_combout\ : std_logic;
SIGNAL \reg_block~345_combout\ : std_logic;
SIGNAL \RegA~14_combout\ : std_logic;
SIGNAL \reg_block~274_regout\ : std_logic;
SIGNAL \reg_block~210_regout\ : std_logic;
SIGNAL \reg_block~351_combout\ : std_logic;
SIGNAL \reg_block~114_regout\ : std_logic;
SIGNAL \reg_block~50_regout\ : std_logic;
SIGNAL \reg_block~82_regout\ : std_logic;
SIGNAL \reg_block~348_combout\ : std_logic;
SIGNAL \reg_block~349_combout\ : std_logic;
SIGNAL \RegA~15_combout\ : std_logic;
SIGNAL \reg_block~115_regout\ : std_logic;
SIGNAL \reg_block~147_regout\ : std_logic;
SIGNAL \reg_block~353_combout\ : std_logic;
SIGNAL \reg_block~275_regout\ : std_logic;
SIGNAL \reg_block~211_regout\ : std_logic;
SIGNAL \reg_block~355_combout\ : std_logic;
SIGNAL \RegA~16_combout\ : std_logic;
SIGNAL \reg_block~180_regout\ : std_logic;
SIGNAL \reg_block~244_regout\ : std_logic;
SIGNAL \reg_block~358_combout\ : std_logic;
SIGNAL \reg_block~212_regout\ : std_logic;
SIGNAL \reg_block~276_regout\ : std_logic;
SIGNAL \reg_block~359_combout\ : std_logic;
SIGNAL \reg_block~148_regout\ : std_logic;
SIGNAL \reg_block~116_regout\ : std_logic;
SIGNAL \reg_block~357_combout\ : std_logic;
SIGNAL \RegA~17_combout\ : std_logic;
SIGNAL \reg_block~117_regout\ : std_logic;
SIGNAL \reg_block~149_regout\ : std_logic;
SIGNAL \reg_block~361_combout\ : std_logic;
SIGNAL \reg_block~277_regout\ : std_logic;
SIGNAL \reg_block~213_regout\ : std_logic;
SIGNAL \reg_block~363_combout\ : std_logic;
SIGNAL \RegA~18_combout\ : std_logic;
SIGNAL \reg_block~278_regout\ : std_logic;
SIGNAL \reg_block~214_regout\ : std_logic;
SIGNAL \reg_block~182_regout\ : std_logic;
SIGNAL \reg_block~246_regout\ : std_logic;
SIGNAL \reg_block~366_combout\ : std_logic;
SIGNAL \reg_block~367_combout\ : std_logic;
SIGNAL \reg_block~86_regout\ : std_logic;
SIGNAL \reg_block~54_regout\ : std_logic;
SIGNAL \reg_block~364_combout\ : std_logic;
SIGNAL \reg_block~118_regout\ : std_logic;
SIGNAL \reg_block~365_combout\ : std_logic;
SIGNAL \RegA~19_combout\ : std_logic;
SIGNAL \reg_block~183_regout\ : std_logic;
SIGNAL \reg_block~247_regout\ : std_logic;
SIGNAL \reg_block~370_combout\ : std_logic;
SIGNAL \reg_block~215_regout\ : std_logic;
SIGNAL \reg_block~279_regout\ : std_logic;
SIGNAL \reg_block~371_combout\ : std_logic;
SIGNAL \reg_block~55_regout\ : std_logic;
SIGNAL \reg_block~87_regout\ : std_logic;
SIGNAL \reg_block~368_combout\ : std_logic;
SIGNAL \reg_block~119_regout\ : std_logic;
SIGNAL \reg_block~151_regout\ : std_logic;
SIGNAL \reg_block~369_combout\ : std_logic;
SIGNAL \RegA~20_combout\ : std_logic;
SIGNAL \reg_block~120_regout\ : std_logic;
SIGNAL \reg_block~56_regout\ : std_logic;
SIGNAL \reg_block~88_regout\ : std_logic;
SIGNAL \reg_block~372_combout\ : std_logic;
SIGNAL \reg_block~373_combout\ : std_logic;
SIGNAL \reg_block~184_regout\ : std_logic;
SIGNAL \reg_block~248_regout\ : std_logic;
SIGNAL \reg_block~374_combout\ : std_logic;
SIGNAL \reg_block~216_regout\ : std_logic;
SIGNAL \reg_block~375_combout\ : std_logic;
SIGNAL \RegA~21_combout\ : std_logic;
SIGNAL \reg_block~281_regout\ : std_logic;
SIGNAL \reg_block~217_regout\ : std_logic;
SIGNAL \reg_block~379_combout\ : std_logic;
SIGNAL \reg_block~121_regout\ : std_logic;
SIGNAL \reg_block~89_regout\ : std_logic;
SIGNAL \reg_block~376_combout\ : std_logic;
SIGNAL \reg_block~377_combout\ : std_logic;
SIGNAL \RegA~22_combout\ : std_logic;
SIGNAL \reg_block~186_regout\ : std_logic;
SIGNAL \reg_block~250_regout\ : std_logic;
SIGNAL \reg_block~382_combout\ : std_logic;
SIGNAL \reg_block~218_regout\ : std_logic;
SIGNAL \reg_block~383_combout\ : std_logic;
SIGNAL \reg_block~122_regout\ : std_logic;
SIGNAL \reg_block~154_regout\ : std_logic;
SIGNAL \reg_block~381_combout\ : std_logic;
SIGNAL \RegA~23_combout\ : std_logic;
SIGNAL \reg_block~123_regout\ : std_logic;
SIGNAL \reg_block~59_regout\ : std_logic;
SIGNAL \reg_block~91_regout\ : std_logic;
SIGNAL \reg_block~384_combout\ : std_logic;
SIGNAL \reg_block~385_combout\ : std_logic;
SIGNAL \reg_block~187_regout\ : std_logic;
SIGNAL \reg_block~251_regout\ : std_logic;
SIGNAL \reg_block~386_combout\ : std_logic;
SIGNAL \reg_block~219_regout\ : std_logic;
SIGNAL \reg_block~387_combout\ : std_logic;
SIGNAL \RegA~24_combout\ : std_logic;
SIGNAL \reg_block~124_regout\ : std_logic;
SIGNAL \reg_block~156_regout\ : std_logic;
SIGNAL \reg_block~389_combout\ : std_logic;
SIGNAL \reg_block~284_regout\ : std_logic;
SIGNAL \reg_block~220_regout\ : std_logic;
SIGNAL \reg_block~391_combout\ : std_logic;
SIGNAL \RegA~25_combout\ : std_logic;
SIGNAL \reg_block~125_regout\ : std_logic;
SIGNAL \reg_block~157_regout\ : std_logic;
SIGNAL \reg_block~393_combout\ : std_logic;
SIGNAL \reg_block~285_regout\ : std_logic;
SIGNAL \reg_block~221_regout\ : std_logic;
SIGNAL \reg_block~395_combout\ : std_logic;
SIGNAL \RegA~26_combout\ : std_logic;
SIGNAL \reg_block~126_regout\ : std_logic;
SIGNAL \reg_block~94_regout\ : std_logic;
SIGNAL \reg_block~62_regout\ : std_logic;
SIGNAL \reg_block~396_combout\ : std_logic;
SIGNAL \reg_block~397_combout\ : std_logic;
SIGNAL \reg_block~286_regout\ : std_logic;
SIGNAL \reg_block~222_regout\ : std_logic;
SIGNAL \reg_block~399_combout\ : std_logic;
SIGNAL \RegA~27_combout\ : std_logic;
SIGNAL \reg_block~159_regout\ : std_logic;
SIGNAL \reg_block~127_regout\ : std_logic;
SIGNAL \reg_block~401_combout\ : std_logic;
SIGNAL \reg_block~287_regout\ : std_logic;
SIGNAL \reg_block~223_regout\ : std_logic;
SIGNAL \reg_block~403_combout\ : std_logic;
SIGNAL \RegA~28_combout\ : std_logic;
SIGNAL \reg_block~288_regout\ : std_logic;
SIGNAL \reg_block~224_regout\ : std_logic;
SIGNAL \reg_block~256_regout\ : std_logic;
SIGNAL \reg_block~192_regout\ : std_logic;
SIGNAL \reg_block~406_combout\ : std_logic;
SIGNAL \reg_block~407_combout\ : std_logic;
SIGNAL \reg_block~96_regout\ : std_logic;
SIGNAL \reg_block~64_regout\ : std_logic;
SIGNAL \reg_block~404_combout\ : std_logic;
SIGNAL \reg_block~128_regout\ : std_logic;
SIGNAL \reg_block~405_combout\ : std_logic;
SIGNAL \RegA~29_combout\ : std_logic;
SIGNAL \reg_block~129_regout\ : std_logic;
SIGNAL \reg_block~97_regout\ : std_logic;
SIGNAL \reg_block~65_regout\ : std_logic;
SIGNAL \reg_block~408_combout\ : std_logic;
SIGNAL \reg_block~409_combout\ : std_logic;
SIGNAL \reg_block~289_regout\ : std_logic;
SIGNAL \reg_block~225_regout\ : std_logic;
SIGNAL \reg_block~257_regout\ : std_logic;
SIGNAL \reg_block~193_regout\ : std_logic;
SIGNAL \reg_block~410_combout\ : std_logic;
SIGNAL \reg_block~411_combout\ : std_logic;
SIGNAL \RegA~30_combout\ : std_logic;
SIGNAL \reg_block~162_regout\ : std_logic;
SIGNAL \reg_block~130_regout\ : std_logic;
SIGNAL \reg_block~413_combout\ : std_logic;
SIGNAL \reg_block~258_regout\ : std_logic;
SIGNAL \reg_block~414_combout\ : std_logic;
SIGNAL \reg_block~226_regout\ : std_logic;
SIGNAL \reg_block~415_combout\ : std_logic;
SIGNAL \RegA~31_combout\ : std_logic;
SIGNAL \reg_block~259_regout\ : std_logic;
SIGNAL \reg_block~418_combout\ : std_logic;
SIGNAL \reg_block~227_regout\ : std_logic;
SIGNAL \reg_block~291_regout\ : std_logic;
SIGNAL \reg_block~419_combout\ : std_logic;
SIGNAL \reg_block~99_regout\ : std_logic;
SIGNAL \reg_block~67_regout\ : std_logic;
SIGNAL \reg_block~416_combout\ : std_logic;
SIGNAL \reg_block~131_regout\ : std_logic;
SIGNAL \reg_block~163_regout\ : std_logic;
SIGNAL \reg_block~417_combout\ : std_logic;
SIGNAL \RegA~32_combout\ : std_logic;
SIGNAL \reg_block~36_regout\ : std_logic;
SIGNAL \reg_block~420_combout\ : std_logic;
SIGNAL \reg_block~421_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \RegB~0_combout\ : std_logic;
SIGNAL \reg_block~423_combout\ : std_logic;
SIGNAL \RegB~1_combout\ : std_logic;
SIGNAL \reg_block~427_combout\ : std_logic;
SIGNAL \reg_block~69_regout\ : std_logic;
SIGNAL \reg_block~37_regout\ : std_logic;
SIGNAL \reg_block~424_combout\ : std_logic;
SIGNAL \reg_block~425_combout\ : std_logic;
SIGNAL \RegB~2_combout\ : std_logic;
SIGNAL \reg_block~134_regout\ : std_logic;
SIGNAL \reg_block~429_combout\ : std_logic;
SIGNAL \reg_block~430_combout\ : std_logic;
SIGNAL \reg_block~262_regout\ : std_logic;
SIGNAL \reg_block~431_combout\ : std_logic;
SIGNAL \RegB~3_combout\ : std_logic;
SIGNAL \reg_block~167_regout\ : std_logic;
SIGNAL \reg_block~231_regout\ : std_logic;
SIGNAL \reg_block~434_combout\ : std_logic;
SIGNAL \reg_block~435_combout\ : std_logic;
SIGNAL \reg_block~39_regout\ : std_logic;
SIGNAL \reg_block~432_combout\ : std_logic;
SIGNAL \reg_block~433_combout\ : std_logic;
SIGNAL \RegB~4_combout\ : std_logic;
SIGNAL \reg_block~437_combout\ : std_logic;
SIGNAL \reg_block~264_regout\ : std_logic;
SIGNAL \reg_block~439_combout\ : std_logic;
SIGNAL \RegB~5_combout\ : std_logic;
SIGNAL \reg_block~442_combout\ : std_logic;
SIGNAL \reg_block~265_regout\ : std_logic;
SIGNAL \reg_block~443_combout\ : std_logic;
SIGNAL \reg_block~41_regout\ : std_logic;
SIGNAL \reg_block~440_combout\ : std_logic;
SIGNAL \reg_block~441_combout\ : std_logic;
SIGNAL \RegB~6_combout\ : std_logic;
SIGNAL \reg_block~447_combout\ : std_logic;
SIGNAL \reg_block~74_regout\ : std_logic;
SIGNAL \reg_block~42_regout\ : std_logic;
SIGNAL \reg_block~444_combout\ : std_logic;
SIGNAL \reg_block~445_combout\ : std_logic;
SIGNAL \RegB~7_combout\ : std_logic;
SIGNAL \reg_block~450_combout\ : std_logic;
SIGNAL \reg_block~451_combout\ : std_logic;
SIGNAL \reg_block~448_combout\ : std_logic;
SIGNAL \reg_block~139_regout\ : std_logic;
SIGNAL \reg_block~449_combout\ : std_logic;
SIGNAL \RegB~8_combout\ : std_logic;
SIGNAL \reg_block~76_regout\ : std_logic;
SIGNAL \reg_block~44_regout\ : std_logic;
SIGNAL \reg_block~452_combout\ : std_logic;
SIGNAL \reg_block~453_combout\ : std_logic;
SIGNAL \reg_block~454_combout\ : std_logic;
SIGNAL \reg_block~455_combout\ : std_logic;
SIGNAL \RegB~9_combout\ : std_logic;
SIGNAL \reg_block~173_regout\ : std_logic;
SIGNAL \reg_block~237_regout\ : std_logic;
SIGNAL \reg_block~458_combout\ : std_logic;
SIGNAL \reg_block~459_combout\ : std_logic;
SIGNAL \reg_block~456_combout\ : std_logic;
SIGNAL \reg_block~141_regout\ : std_logic;
SIGNAL \reg_block~457_combout\ : std_logic;
SIGNAL \RegB~10_combout\ : std_logic;
SIGNAL \reg_block~238_regout\ : std_logic;
SIGNAL \reg_block~174_regout\ : std_logic;
SIGNAL \reg_block~462_combout\ : std_logic;
SIGNAL \reg_block~463_combout\ : std_logic;
SIGNAL \reg_block~461_combout\ : std_logic;
SIGNAL \RegB~11_combout\ : std_logic;
SIGNAL \reg_block~465_combout\ : std_logic;
SIGNAL \reg_block~175_regout\ : std_logic;
SIGNAL \reg_block~466_combout\ : std_logic;
SIGNAL \reg_block~467_combout\ : std_logic;
SIGNAL \RegB~12_combout\ : std_logic;
SIGNAL \reg_block~144_regout\ : std_logic;
SIGNAL \reg_block~468_combout\ : std_logic;
SIGNAL \reg_block~469_combout\ : std_logic;
SIGNAL \reg_block~470_combout\ : std_logic;
SIGNAL \reg_block~272_regout\ : std_logic;
SIGNAL \reg_block~471_combout\ : std_logic;
SIGNAL \RegB~13_combout\ : std_logic;
SIGNAL \reg_block~472_combout\ : std_logic;
SIGNAL \reg_block~145_regout\ : std_logic;
SIGNAL \reg_block~473_combout\ : std_logic;
SIGNAL \reg_block~475_combout\ : std_logic;
SIGNAL \RegB~14_combout\ : std_logic;
SIGNAL \reg_block~178_regout\ : std_logic;
SIGNAL \reg_block~478_combout\ : std_logic;
SIGNAL \reg_block~479_combout\ : std_logic;
SIGNAL \reg_block~146_regout\ : std_logic;
SIGNAL \reg_block~477_combout\ : std_logic;
SIGNAL \RegB~15_combout\ : std_logic;
SIGNAL \reg_block~179_regout\ : std_logic;
SIGNAL \reg_block~482_combout\ : std_logic;
SIGNAL \reg_block~483_combout\ : std_logic;
SIGNAL \reg_block~83_regout\ : std_logic;
SIGNAL \reg_block~51_regout\ : std_logic;
SIGNAL \reg_block~480_combout\ : std_logic;
SIGNAL \reg_block~481_combout\ : std_logic;
SIGNAL \RegB~16_combout\ : std_logic;
SIGNAL \reg_block~52_regout\ : std_logic;
SIGNAL \reg_block~484_combout\ : std_logic;
SIGNAL \reg_block~485_combout\ : std_logic;
SIGNAL \reg_block~487_combout\ : std_logic;
SIGNAL \RegB~17_combout\ : std_logic;
SIGNAL \reg_block~181_regout\ : std_logic;
SIGNAL \reg_block~245_regout\ : std_logic;
SIGNAL \reg_block~490_combout\ : std_logic;
SIGNAL \reg_block~491_combout\ : std_logic;
SIGNAL \reg_block~489_combout\ : std_logic;
SIGNAL \RegB~18_combout\ : std_logic;
SIGNAL \reg_block~494_combout\ : std_logic;
SIGNAL \reg_block~495_combout\ : std_logic;
SIGNAL \reg_block~492_combout\ : std_logic;
SIGNAL \reg_block~150_regout\ : std_logic;
SIGNAL \reg_block~493_combout\ : std_logic;
SIGNAL \RegB~19_combout\ : std_logic;
SIGNAL \reg_block~496_combout\ : std_logic;
SIGNAL \reg_block~497_combout\ : std_logic;
SIGNAL \reg_block~499_combout\ : std_logic;
SIGNAL \RegB~20_combout\ : std_logic;
SIGNAL \reg_block~280_regout\ : std_logic;
SIGNAL \reg_block~503_combout\ : std_logic;
SIGNAL \reg_block~152_regout\ : std_logic;
SIGNAL \reg_block~501_combout\ : std_logic;
SIGNAL \RegB~21_combout\ : std_logic;
SIGNAL \reg_block~507_combout\ : std_logic;
SIGNAL \reg_block~57_regout\ : std_logic;
SIGNAL \reg_block~504_combout\ : std_logic;
SIGNAL \reg_block~153_regout\ : std_logic;
SIGNAL \reg_block~505_combout\ : std_logic;
SIGNAL \RegB~22_combout\ : std_logic;
SIGNAL \reg_block~509_combout\ : std_logic;
SIGNAL \reg_block~282_regout\ : std_logic;
SIGNAL \reg_block~510_combout\ : std_logic;
SIGNAL \reg_block~511_combout\ : std_logic;
SIGNAL \RegB~23_combout\ : std_logic;
SIGNAL \reg_block~155_regout\ : std_logic;
SIGNAL \reg_block~513_combout\ : std_logic;
SIGNAL \reg_block~514_combout\ : std_logic;
SIGNAL \reg_block~283_regout\ : std_logic;
SIGNAL \reg_block~515_combout\ : std_logic;
SIGNAL \RegB~24_combout\ : std_logic;
SIGNAL \reg_block~60_regout\ : std_logic;
SIGNAL \reg_block~516_combout\ : std_logic;
SIGNAL \reg_block~517_combout\ : std_logic;
SIGNAL \reg_block~519_combout\ : std_logic;
SIGNAL \RegB~25_combout\ : std_logic;
SIGNAL \reg_block~521_combout\ : std_logic;
SIGNAL \reg_block~253_regout\ : std_logic;
SIGNAL \reg_block~189_regout\ : std_logic;
SIGNAL \reg_block~522_combout\ : std_logic;
SIGNAL \reg_block~523_combout\ : std_logic;
SIGNAL \RegB~26_combout\ : std_logic;
SIGNAL \reg_block~527_combout\ : std_logic;
SIGNAL \reg_block~524_combout\ : std_logic;
SIGNAL \reg_block~158_regout\ : std_logic;
SIGNAL \reg_block~525_combout\ : std_logic;
SIGNAL \RegB~27_combout\ : std_logic;
SIGNAL \reg_block~191_regout\ : std_logic;
SIGNAL \reg_block~530_combout\ : std_logic;
SIGNAL \reg_block~531_combout\ : std_logic;
SIGNAL \reg_block~63_regout\ : std_logic;
SIGNAL \reg_block~528_combout\ : std_logic;
SIGNAL \reg_block~529_combout\ : std_logic;
SIGNAL \RegB~28_combout\ : std_logic;
SIGNAL \reg_block~534_combout\ : std_logic;
SIGNAL \reg_block~535_combout\ : std_logic;
SIGNAL \reg_block~160_regout\ : std_logic;
SIGNAL \reg_block~532_combout\ : std_logic;
SIGNAL \reg_block~533_combout\ : std_logic;
SIGNAL \RegB~29_combout\ : std_logic;
SIGNAL \reg_block~161_regout\ : std_logic;
SIGNAL \reg_block~536_combout\ : std_logic;
SIGNAL \reg_block~537_combout\ : std_logic;
SIGNAL \reg_block~539_combout\ : std_logic;
SIGNAL \RegB~30_combout\ : std_logic;
SIGNAL \reg_block~541_combout\ : std_logic;
SIGNAL \reg_block~290_regout\ : std_logic;
SIGNAL \reg_block~543_combout\ : std_logic;
SIGNAL \RegB~31_combout\ : std_logic;
SIGNAL \reg_block~544_combout\ : std_logic;
SIGNAL \reg_block~545_combout\ : std_logic;
SIGNAL \reg_block~195_regout\ : std_logic;
SIGNAL \reg_block~546_combout\ : std_logic;
SIGNAL \reg_block~547_combout\ : std_logic;
SIGNAL \RegB~32_combout\ : std_logic;
SIGNAL \D_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \AddrW~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \AddrB~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \AddrA~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_en_banco <= en_banco;
ww_AddrA <= AddrA;
ww_AddrB <= AddrB;
ww_AddrW <= AddrW;
ww_D_in <= D_in;
RegA <= ww_RegA;
RegB <= ww_RegB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X34_Y19_N9
\reg_block~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~228_regout\);

-- Location: LCFF_X34_Y19_N3
\reg_block~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~164_regout\);

-- Location: LCCOMB_X34_Y19_N8
\reg_block~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~294_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~228_regout\))) # (!\AddrA~combout\(1) & (\reg_block~164_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~164_regout\,
	datac => \reg_block~228_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~294_combout\);

-- Location: LCCOMB_X33_Y18_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\AddrA~combout\(1) & (!\AddrA~combout\(3) & (!\AddrA~combout\(0) & !\AddrA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \AddrA~combout\(3),
	datac => \AddrA~combout\(0),
	datad => \AddrA~combout\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X33_Y20_N28
\reg_block~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~296_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~69_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~69_regout\,
	datad => \reg_block~37_regout\,
	combout => \reg_block~296_combout\);

-- Location: LCFF_X33_Y20_N21
\reg_block~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~71_regout\);

-- Location: LCCOMB_X33_Y20_N20
\reg_block~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~304_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~71_regout\))) # (!\AddrA~combout\(0) & (\reg_block~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~39_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~71_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~304_combout\);

-- Location: LCCOMB_X34_Y19_N12
\reg_block~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~306_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~231_regout\))) # (!\AddrA~combout\(1) & (\reg_block~167_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~167_regout\,
	datac => \reg_block~231_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~306_combout\);

-- Location: LCFF_X33_Y20_N25
\reg_block~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~72_regout\);

-- Location: LCFF_X33_Y20_N19
\reg_block~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~40_regout\);

-- Location: LCCOMB_X33_Y20_N24
\reg_block~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~308_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~72_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~72_regout\,
	datad => \reg_block~40_regout\,
	combout => \reg_block~308_combout\);

-- Location: LCFF_X33_Y20_N13
\reg_block~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~73_regout\);

-- Location: LCCOMB_X33_Y20_N12
\reg_block~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~312_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~73_regout\))) # (!\AddrA~combout\(0) & (\reg_block~41_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~41_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~73_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~312_combout\);

-- Location: LCCOMB_X33_Y20_N0
\reg_block~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~316_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~74_regout\))) # (!\AddrA~combout\(0) & (\reg_block~42_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~42_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~74_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~316_combout\);

-- Location: LCCOMB_X37_Y21_N8
\reg_block~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~324_combout\ = (\AddrA~combout\(0) & (((\reg_block~76_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~44_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~44_regout\,
	datac => \reg_block~76_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~324_combout\);

-- Location: LCCOMB_X36_Y20_N28
\reg_block~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~330_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~237_regout\))) # (!\AddrA~combout\(1) & (\reg_block~173_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~173_regout\,
	datac => \reg_block~237_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~330_combout\);

-- Location: LCFF_X37_Y21_N1
\reg_block~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~78_regout\);

-- Location: LCFF_X37_Y21_N11
\reg_block~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~46_regout\);

-- Location: LCCOMB_X37_Y21_N0
\reg_block~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~332_combout\ = (\AddrA~combout\(0) & (((\reg_block~78_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~46_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~46_regout\,
	datac => \reg_block~78_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~332_combout\);

-- Location: LCCOMB_X36_Y20_N8
\reg_block~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~334_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~238_regout\))) # (!\AddrA~combout\(1) & (\reg_block~174_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~174_regout\,
	datac => \reg_block~238_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~334_combout\);

-- Location: LCFF_X37_Y21_N21
\reg_block~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~79_regout\);

-- Location: LCFF_X37_Y21_N23
\reg_block~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~47_regout\);

-- Location: LCCOMB_X37_Y21_N20
\reg_block~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~336_combout\ = (\AddrA~combout\(0) & (((\reg_block~79_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~47_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~47_regout\,
	datac => \reg_block~79_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~336_combout\);

-- Location: LCFF_X36_Y20_N13
\reg_block~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~239_regout\);

-- Location: LCCOMB_X36_Y20_N12
\reg_block~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~338_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~239_regout\))) # (!\AddrA~combout\(1) & (\reg_block~175_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~175_regout\,
	datac => \reg_block~239_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~338_combout\);

-- Location: LCFF_X36_Y20_N25
\reg_block~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~242_regout\);

-- Location: LCCOMB_X36_Y20_N24
\reg_block~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~350_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~242_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~178_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~242_regout\,
	datad => \reg_block~178_regout\,
	combout => \reg_block~350_combout\);

-- Location: LCCOMB_X34_Y20_N8
\reg_block~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~352_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~83_regout\))) # (!\AddrA~combout\(0) & (\reg_block~51_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~51_regout\,
	datac => \reg_block~83_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~352_combout\);

-- Location: LCFF_X36_Y20_N21
\reg_block~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~243_regout\);

-- Location: LCCOMB_X36_Y20_N20
\reg_block~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~354_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~243_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~179_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~243_regout\,
	datad => \reg_block~179_regout\,
	combout => \reg_block~354_combout\);

-- Location: LCFF_X34_Y20_N29
\reg_block~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~84_regout\);

-- Location: LCCOMB_X34_Y20_N28
\reg_block~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~356_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~84_regout\))) # (!\AddrA~combout\(0) & (\reg_block~52_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~52_regout\,
	datac => \reg_block~84_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~356_combout\);

-- Location: LCFF_X34_Y20_N1
\reg_block~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~85_regout\);

-- Location: LCFF_X34_Y20_N27
\reg_block~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~53_regout\);

-- Location: LCCOMB_X34_Y20_N0
\reg_block~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~360_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~85_regout\))) # (!\AddrA~combout\(0) & (\reg_block~53_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~53_regout\,
	datac => \reg_block~85_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~360_combout\);

-- Location: LCCOMB_X36_Y19_N12
\reg_block~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~362_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~245_regout\))) # (!\AddrA~combout\(1) & (\reg_block~181_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~181_regout\,
	datac => \reg_block~245_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~362_combout\);

-- Location: LCFF_X36_Y19_N5
\reg_block~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~249_regout\);

-- Location: LCFF_X36_Y19_N7
\reg_block~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~185_regout\);

-- Location: LCCOMB_X36_Y19_N4
\reg_block~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~378_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~249_regout\))) # (!\AddrA~combout\(1) & (\reg_block~185_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~185_regout\,
	datac => \reg_block~249_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~378_combout\);

-- Location: LCFF_X34_Y20_N17
\reg_block~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~90_regout\);

-- Location: LCFF_X34_Y20_N11
\reg_block~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~58_regout\);

-- Location: LCCOMB_X34_Y20_N16
\reg_block~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~380_combout\ = (\AddrA~combout\(0) & (((\reg_block~90_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~58_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~58_regout\,
	datab => \AddrA~combout\(0),
	datac => \reg_block~90_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~380_combout\);

-- Location: LCFF_X35_Y21_N1
\reg_block~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~92_regout\);

-- Location: LCCOMB_X35_Y21_N0
\reg_block~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~388_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~92_regout\))) # (!\AddrA~combout\(0) & (\reg_block~60_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~60_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~92_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~388_combout\);

-- Location: LCFF_X36_Y22_N17
\reg_block~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~252_regout\);

-- Location: LCFF_X36_Y22_N19
\reg_block~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~188_regout\);

-- Location: LCCOMB_X36_Y22_N16
\reg_block~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~390_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~252_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~188_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~252_regout\,
	datad => \reg_block~188_regout\,
	combout => \reg_block~390_combout\);

-- Location: LCFF_X35_Y21_N29
\reg_block~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~93_regout\);

-- Location: LCFF_X35_Y21_N7
\reg_block~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~61_regout\);

-- Location: LCCOMB_X35_Y21_N28
\reg_block~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~392_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~93_regout\))) # (!\AddrA~combout\(0) & (\reg_block~61_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~61_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~93_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~392_combout\);

-- Location: LCCOMB_X36_Y22_N4
\reg_block~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~394_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~253_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~189_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~253_regout\,
	datad => \reg_block~189_regout\,
	combout => \reg_block~394_combout\);

-- Location: LCFF_X36_Y22_N1
\reg_block~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~254_regout\);

-- Location: LCFF_X36_Y22_N27
\reg_block~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~190_regout\);

-- Location: LCCOMB_X36_Y22_N0
\reg_block~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~398_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~254_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~190_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~254_regout\,
	datad => \reg_block~190_regout\,
	combout => \reg_block~398_combout\);

-- Location: LCFF_X35_Y21_N21
\reg_block~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~95_regout\);

-- Location: LCCOMB_X35_Y21_N20
\reg_block~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~400_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~95_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~63_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~95_regout\,
	datad => \reg_block~63_regout\,
	combout => \reg_block~400_combout\);

-- Location: LCFF_X36_Y22_N13
\reg_block~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~255_regout\);

-- Location: LCCOMB_X36_Y22_N12
\reg_block~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~402_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~255_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~191_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~255_regout\,
	datad => \reg_block~191_regout\,
	combout => \reg_block~402_combout\);

-- Location: LCFF_X35_Y21_N25
\reg_block~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~98_regout\);

-- Location: LCFF_X35_Y21_N19
\reg_block~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~66_regout\);

-- Location: LCCOMB_X35_Y21_N24
\reg_block~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~412_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~98_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~66_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~98_regout\,
	datad => \reg_block~66_regout\,
	combout => \reg_block~412_combout\);

-- Location: LCFF_X36_Y22_N11
\reg_block~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~194_regout\);

-- Location: LCCOMB_X34_Y19_N2
\reg_block~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~422_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~228_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~164_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~228_regout\,
	datac => \reg_block~164_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~422_combout\);

-- Location: LCCOMB_X34_Y19_N6
\reg_block~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~426_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~229_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~165_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~229_regout\,
	datac => \reg_block~165_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~426_combout\);

-- Location: LCCOMB_X33_Y20_N26
\reg_block~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~428_combout\ = (\AddrB~combout\(0) & ((\reg_block~70_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~38_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~70_regout\,
	datac => \reg_block~38_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~428_combout\);

-- Location: LCCOMB_X33_Y20_N18
\reg_block~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~436_combout\ = (\AddrB~combout\(0) & ((\reg_block~72_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~40_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~72_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~40_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~436_combout\);

-- Location: LCCOMB_X34_Y19_N18
\reg_block~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~438_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~232_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~168_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~232_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~168_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~438_combout\);

-- Location: LCCOMB_X34_Y19_N26
\reg_block~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~446_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~234_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~170_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~234_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~170_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~446_combout\);

-- Location: LCCOMB_X37_Y21_N10
\reg_block~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~460_combout\ = (\AddrB~combout\(1) & (((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & ((\AddrB~combout\(0) & (\reg_block~78_regout\)) # (!\AddrB~combout\(0) & ((\reg_block~46_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~78_regout\,
	datac => \reg_block~46_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~460_combout\);

-- Location: LCCOMB_X37_Y21_N22
\reg_block~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~464_combout\ = (\AddrB~combout\(0) & ((\reg_block~79_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~47_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~79_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~47_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~464_combout\);

-- Location: LCCOMB_X36_Y20_N30
\reg_block~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~474_combout\ = (\AddrB~combout\(1) & ((\reg_block~241_regout\) # ((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & (((\reg_block~177_regout\ & !\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~241_regout\,
	datac => \reg_block~177_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~474_combout\);

-- Location: LCCOMB_X37_Y21_N2
\reg_block~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~476_combout\ = (\AddrB~combout\(0) & ((\reg_block~82_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~50_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~82_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~50_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~476_combout\);

-- Location: LCCOMB_X36_Y19_N26
\reg_block~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~486_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~244_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~180_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~244_regout\,
	datac => \reg_block~180_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~486_combout\);

-- Location: LCCOMB_X34_Y20_N26
\reg_block~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~488_combout\ = (\AddrB~combout\(0) & ((\reg_block~85_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~53_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~85_regout\,
	datac => \reg_block~53_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~488_combout\);

-- Location: LCCOMB_X36_Y19_N30
\reg_block~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~498_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~247_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~183_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~247_regout\,
	datac => \reg_block~183_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~498_combout\);

-- Location: LCCOMB_X34_Y20_N2
\reg_block~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~500_combout\ = (\AddrB~combout\(0) & ((\reg_block~88_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~56_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~88_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~56_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~500_combout\);

-- Location: LCCOMB_X36_Y19_N18
\reg_block~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~502_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~248_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~184_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~248_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~184_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~502_combout\);

-- Location: LCCOMB_X36_Y19_N6
\reg_block~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~506_combout\ = (\AddrB~combout\(0) & (\AddrB~combout\(1))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & ((\reg_block~249_regout\))) # (!\AddrB~combout\(1) & (\reg_block~185_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \AddrB~combout\(1),
	datac => \reg_block~185_regout\,
	datad => \reg_block~249_regout\,
	combout => \reg_block~506_combout\);

-- Location: LCCOMB_X34_Y20_N10
\reg_block~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~508_combout\ = (\AddrB~combout\(0) & ((\reg_block~90_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~58_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~90_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~58_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~508_combout\);

-- Location: LCCOMB_X34_Y20_N14
\reg_block~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~512_combout\ = (\AddrB~combout\(0) & ((\reg_block~91_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~59_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~91_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~59_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~512_combout\);

-- Location: LCCOMB_X36_Y22_N18
\reg_block~518\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~518_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~252_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~188_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~252_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~188_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~518_combout\);

-- Location: LCCOMB_X35_Y21_N6
\reg_block~520\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~520_combout\ = (\AddrB~combout\(1) & (\AddrB~combout\(0))) # (!\AddrB~combout\(1) & ((\AddrB~combout\(0) & ((\reg_block~93_regout\))) # (!\AddrB~combout\(0) & (\reg_block~61_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \AddrB~combout\(0),
	datac => \reg_block~61_regout\,
	datad => \reg_block~93_regout\,
	combout => \reg_block~520_combout\);

-- Location: LCCOMB_X36_Y22_N26
\reg_block~526\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~526_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~254_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~190_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~254_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~190_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~526_combout\);

-- Location: LCCOMB_X36_Y22_N14
\reg_block~538\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~538_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~257_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~193_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~257_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~193_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~538_combout\);

-- Location: LCCOMB_X35_Y21_N18
\reg_block~540\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~540_combout\ = (\AddrB~combout\(0) & ((\reg_block~98_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~66_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~98_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~66_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~540_combout\);

-- Location: LCCOMB_X36_Y22_N10
\reg_block~542\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~542_combout\ = (\AddrB~combout\(1) & ((\AddrB~combout\(0)) # ((\reg_block~258_regout\)))) # (!\AddrB~combout\(1) & (!\AddrB~combout\(0) & (\reg_block~194_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \AddrB~combout\(0),
	datac => \reg_block~194_regout\,
	datad => \reg_block~258_regout\,
	combout => \reg_block~542_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrA[3]~I\ : cycloneii_io
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
	padio => ww_AddrA(3),
	combout => \AddrA~combout\(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrB[4]~I\ : cycloneii_io
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
	padio => ww_AddrB(4),
	combout => \AddrB~combout\(4));

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

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrW[2]~I\ : cycloneii_io
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
	padio => ww_AddrW(2),
	combout => \AddrW~combout\(2));

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

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrA[4]~I\ : cycloneii_io
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
	padio => ww_AddrA(4),
	combout => \AddrA~combout\(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrA[2]~I\ : cycloneii_io
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
	padio => ww_AddrA(2),
	combout => \AddrA~combout\(2));

-- Location: LCCOMB_X33_Y18_N2
\RegA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~0_combout\ = (!\AddrA~combout\(2) & ((\AddrA~combout\(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \AddrA~combout\(4),
	datad => \AddrA~combout\(2),
	combout => \RegA~0_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[0]~I\ : cycloneii_io
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
	padio => ww_D_in(0),
	combout => \D_in~combout\(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrW[0]~I\ : cycloneii_io
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
	padio => ww_AddrW(0),
	combout => \AddrW~combout\(0));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrW[1]~I\ : cycloneii_io
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
	padio => ww_AddrW(1),
	combout => \AddrW~combout\(1));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en_banco~I\ : cycloneii_io
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
	padio => ww_en_banco,
	combout => \en_banco~combout\);

-- Location: LCCOMB_X36_Y21_N22
\reg_block~555\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~555_combout\ = (\AddrW~combout\(2) & (\AddrW~combout\(0) & (\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~555_combout\);

-- Location: LCFF_X33_Y19_N19
\reg_block~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~260_regout\);

-- Location: LCCOMB_X36_Y21_N16
\reg_block~552\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~552_combout\ = (\AddrW~combout\(2) & (\AddrW~combout\(0) & (!\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~552_combout\);

-- Location: LCFF_X33_Y19_N9
\reg_block~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~196_regout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrA[0]~I\ : cycloneii_io
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
	padio => ww_AddrA(0),
	combout => \AddrA~combout\(0));

-- Location: LCCOMB_X33_Y19_N8
\reg_block~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~295_combout\ = (\reg_block~294_combout\ & ((\reg_block~260_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~294_combout\ & (((\reg_block~196_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~294_combout\,
	datab => \reg_block~260_regout\,
	datac => \reg_block~196_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~295_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrA[1]~I\ : cycloneii_io
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
	padio => ww_AddrA(1),
	combout => \AddrA~combout\(1));

-- Location: LCCOMB_X36_Y21_N10
\reg_block~549\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~549_combout\ = (!\AddrW~combout\(2) & (\AddrW~combout\(0) & (!\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~549_combout\);

-- Location: LCFF_X33_Y20_N17
\reg_block~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~68_regout\);

-- Location: LCCOMB_X33_Y20_N16
\reg_block~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~292_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~68_regout\))) # (!\AddrA~combout\(0) & (\reg_block~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~36_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~68_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~292_combout\);

-- Location: LCCOMB_X36_Y21_N24
\reg_block~548\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~548_combout\ = (!\AddrW~combout\(2) & (!\AddrW~combout\(0) & (\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~548_combout\);

-- Location: LCFF_X34_Y21_N25
\reg_block~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~100_regout\);

-- Location: LCCOMB_X36_Y21_N30
\reg_block~551\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~551_combout\ = (!\AddrW~combout\(2) & (\AddrW~combout\(0) & (\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~551_combout\);

-- Location: LCFF_X34_Y21_N11
\reg_block~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~132_regout\);

-- Location: LCCOMB_X34_Y21_N24
\reg_block~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~293_combout\ = (\AddrA~combout\(1) & ((\reg_block~292_combout\ & ((\reg_block~132_regout\))) # (!\reg_block~292_combout\ & (\reg_block~100_regout\)))) # (!\AddrA~combout\(1) & (\reg_block~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~292_combout\,
	datac => \reg_block~100_regout\,
	datad => \reg_block~132_regout\,
	combout => \reg_block~293_combout\);

-- Location: LCCOMB_X34_Y21_N4
\RegA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~1_combout\ = (\RegA~0_combout\ & ((\reg_block~293_combout\) # ((\reg_block~295_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (\reg_block~295_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~295_combout\,
	datac => \reg_block~293_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~1_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[1]~I\ : cycloneii_io
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
	padio => ww_D_in(1),
	combout => \D_in~combout\(1));

-- Location: LCFF_X32_Y20_N19
\reg_block~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~133_regout\);

-- Location: LCFF_X32_Y20_N17
\reg_block~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~101_regout\);

-- Location: LCCOMB_X32_Y20_N16
\reg_block~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~297_combout\ = (\reg_block~296_combout\ & ((\reg_block~133_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~296_combout\ & (((\reg_block~101_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~296_combout\,
	datab => \reg_block~133_regout\,
	datac => \reg_block~101_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~297_combout\);

-- Location: LCFF_X33_Y19_N23
\reg_block~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~261_regout\);

-- Location: LCFF_X33_Y19_N29
\reg_block~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~197_regout\);

-- Location: LCCOMB_X36_Y21_N26
\reg_block~553\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~553_combout\ = (\AddrW~combout\(2) & (!\AddrW~combout\(0) & (\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~553_combout\);

-- Location: LCFF_X34_Y19_N29
\reg_block~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~229_regout\);

-- Location: LCCOMB_X36_Y21_N12
\reg_block~554\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~554_combout\ = (\AddrW~combout\(2) & (!\AddrW~combout\(0) & (!\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~554_combout\);

-- Location: LCFF_X34_Y19_N7
\reg_block~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~165_regout\);

-- Location: LCCOMB_X34_Y19_N28
\reg_block~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~298_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~229_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~165_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~229_regout\,
	datad => \reg_block~165_regout\,
	combout => \reg_block~298_combout\);

-- Location: LCCOMB_X33_Y19_N28
\reg_block~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~299_combout\ = (\AddrA~combout\(0) & ((\reg_block~298_combout\ & (\reg_block~261_regout\)) # (!\reg_block~298_combout\ & ((\reg_block~197_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~261_regout\,
	datac => \reg_block~197_regout\,
	datad => \reg_block~298_combout\,
	combout => \reg_block~299_combout\);

-- Location: LCCOMB_X32_Y20_N20
\RegA~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~2_combout\ = (\RegA~0_combout\ & ((\reg_block~297_combout\) # ((\reg_block~299_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (((\reg_block~299_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~297_combout\,
	datac => \reg_block~299_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~2_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[2]~I\ : cycloneii_io
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
	padio => ww_D_in(2),
	combout => \D_in~combout\(2));

-- Location: LCFF_X33_Y20_N9
\reg_block~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~70_regout\);

-- Location: LCCOMB_X36_Y21_N20
\reg_block~550\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~550_combout\ = (!\AddrW~combout\(2) & (!\AddrW~combout\(0) & (!\AddrW~combout\(1) & \en_banco~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrW~combout\(2),
	datab => \AddrW~combout\(0),
	datac => \AddrW~combout\(1),
	datad => \en_banco~combout\,
	combout => \reg_block~550_combout\);

-- Location: LCFF_X33_Y20_N27
\reg_block~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~38_regout\);

-- Location: LCCOMB_X33_Y20_N8
\reg_block~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~300_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~70_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~70_regout\,
	datad => \reg_block~38_regout\,
	combout => \reg_block~300_combout\);

-- Location: LCFF_X32_Y20_N31
\reg_block~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~102_regout\);

-- Location: LCCOMB_X32_Y20_N30
\reg_block~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~301_combout\ = (\reg_block~300_combout\ & ((\reg_block~134_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~300_combout\ & (((\reg_block~102_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~134_regout\,
	datab => \reg_block~300_combout\,
	datac => \reg_block~102_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~301_combout\);

-- Location: LCFF_X34_Y19_N1
\reg_block~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~230_regout\);

-- Location: LCFF_X34_Y19_N11
\reg_block~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~166_regout\);

-- Location: LCCOMB_X34_Y19_N0
\reg_block~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~302_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~230_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~166_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~230_regout\,
	datad => \reg_block~166_regout\,
	combout => \reg_block~302_combout\);

-- Location: LCFF_X33_Y19_N1
\reg_block~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~198_regout\);

-- Location: LCCOMB_X33_Y19_N0
\reg_block~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~303_combout\ = (\reg_block~302_combout\ & ((\reg_block~262_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~302_combout\ & (((\reg_block~198_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~262_regout\,
	datab => \reg_block~302_combout\,
	datac => \reg_block~198_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~303_combout\);

-- Location: LCCOMB_X32_Y20_N10
\RegA~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~3_combout\ = (\RegA~0_combout\ & ((\reg_block~301_combout\) # ((\reg_block~303_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (((\reg_block~303_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~301_combout\,
	datac => \reg_block~303_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~3_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[3]~I\ : cycloneii_io
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
	padio => ww_D_in(3),
	combout => \D_in~combout\(3));

-- Location: LCFF_X37_Y19_N3
\reg_block~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~263_regout\);

-- Location: LCFF_X37_Y19_N17
\reg_block~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~199_regout\);

-- Location: LCCOMB_X37_Y19_N16
\reg_block~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~307_combout\ = (\reg_block~306_combout\ & ((\reg_block~263_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~306_combout\ & (((\reg_block~199_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~306_combout\,
	datab => \reg_block~263_regout\,
	datac => \reg_block~199_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~307_combout\);

-- Location: LCFF_X38_Y20_N27
\reg_block~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~135_regout\);

-- Location: LCFF_X38_Y20_N25
\reg_block~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~103_regout\);

-- Location: LCCOMB_X38_Y20_N24
\reg_block~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~305_combout\ = (\reg_block~304_combout\ & ((\reg_block~135_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~304_combout\ & (((\reg_block~103_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~304_combout\,
	datab => \reg_block~135_regout\,
	datac => \reg_block~103_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~305_combout\);

-- Location: LCCOMB_X37_Y19_N20
\RegA~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~4_combout\ = (\reg_block~307_combout\ & ((\AddrA~combout\(2)) # ((\RegA~0_combout\ & \reg_block~305_combout\)))) # (!\reg_block~307_combout\ & (((\RegA~0_combout\ & \reg_block~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~307_combout\,
	datab => \AddrA~combout\(2),
	datac => \RegA~0_combout\,
	datad => \reg_block~305_combout\,
	combout => \RegA~4_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[4]~I\ : cycloneii_io
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
	padio => ww_D_in(4),
	combout => \D_in~combout\(4));

-- Location: LCFF_X38_Y20_N29
\reg_block~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~104_regout\);

-- Location: LCFF_X38_Y20_N23
\reg_block~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~136_regout\);

-- Location: LCCOMB_X38_Y20_N28
\reg_block~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~309_combout\ = (\reg_block~308_combout\ & (((\reg_block~136_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~308_combout\ & (\AddrA~combout\(1) & (\reg_block~104_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~308_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~104_regout\,
	datad => \reg_block~136_regout\,
	combout => \reg_block~309_combout\);

-- Location: LCFF_X34_Y19_N19
\reg_block~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~168_regout\);

-- Location: LCFF_X34_Y19_N17
\reg_block~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~232_regout\);

-- Location: LCCOMB_X34_Y19_N16
\reg_block~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~310_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~232_regout\))) # (!\AddrA~combout\(1) & (\reg_block~168_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~168_regout\,
	datac => \reg_block~232_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~310_combout\);

-- Location: LCFF_X37_Y19_N23
\reg_block~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~200_regout\);

-- Location: LCCOMB_X37_Y19_N22
\reg_block~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~311_combout\ = (\reg_block~310_combout\ & ((\reg_block~264_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~310_combout\ & (((\reg_block~200_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~264_regout\,
	datab => \reg_block~310_combout\,
	datac => \reg_block~200_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~311_combout\);

-- Location: LCCOMB_X37_Y19_N26
\RegA~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~5_combout\ = (\reg_block~309_combout\ & ((\RegA~0_combout\) # ((\reg_block~311_combout\ & \AddrA~combout\(2))))) # (!\reg_block~309_combout\ & (\reg_block~311_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~309_combout\,
	datab => \reg_block~311_combout\,
	datac => \RegA~0_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~5_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[5]~I\ : cycloneii_io
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
	padio => ww_D_in(5),
	combout => \D_in~combout\(5));

-- Location: LCFF_X33_Y18_N31
\reg_block~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~137_regout\);

-- Location: LCFF_X33_Y18_N13
\reg_block~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~105_regout\);

-- Location: LCCOMB_X33_Y18_N12
\reg_block~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~313_combout\ = (\reg_block~312_combout\ & ((\reg_block~137_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~312_combout\ & (((\reg_block~105_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~312_combout\,
	datab => \reg_block~137_regout\,
	datac => \reg_block~105_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~313_combout\);

-- Location: LCFF_X34_Y19_N15
\reg_block~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~169_regout\);

-- Location: LCFF_X34_Y19_N5
\reg_block~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~233_regout\);

-- Location: LCCOMB_X34_Y19_N4
\reg_block~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~314_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~233_regout\))) # (!\AddrA~combout\(1) & (\reg_block~169_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~169_regout\,
	datac => \reg_block~233_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~314_combout\);

-- Location: LCFF_X33_Y19_N21
\reg_block~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~201_regout\);

-- Location: LCCOMB_X33_Y19_N20
\reg_block~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~315_combout\ = (\reg_block~314_combout\ & ((\reg_block~265_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~314_combout\ & (((\reg_block~201_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~265_regout\,
	datab => \reg_block~314_combout\,
	datac => \reg_block~201_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~315_combout\);

-- Location: LCCOMB_X33_Y18_N8
\RegA~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~6_combout\ = (\reg_block~313_combout\ & ((\RegA~0_combout\) # ((\AddrA~combout\(2) & \reg_block~315_combout\)))) # (!\reg_block~313_combout\ & (\AddrA~combout\(2) & (\reg_block~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~313_combout\,
	datab => \AddrA~combout\(2),
	datac => \reg_block~315_combout\,
	datad => \RegA~0_combout\,
	combout => \RegA~6_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[6]~I\ : cycloneii_io
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
	padio => ww_D_in(6),
	combout => \D_in~combout\(6));

-- Location: LCFF_X33_Y21_N25
\reg_block~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~106_regout\);

-- Location: LCFF_X33_Y21_N27
\reg_block~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~138_regout\);

-- Location: LCCOMB_X33_Y21_N24
\reg_block~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~317_combout\ = (\reg_block~316_combout\ & (((\reg_block~138_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~316_combout\ & (\AddrA~combout\(1) & (\reg_block~106_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~316_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~106_regout\,
	datad => \reg_block~138_regout\,
	combout => \reg_block~317_combout\);

-- Location: LCFF_X33_Y19_N3
\reg_block~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~266_regout\);

-- Location: LCFF_X33_Y19_N17
\reg_block~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~202_regout\);

-- Location: LCFF_X34_Y19_N27
\reg_block~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~170_regout\);

-- Location: LCFF_X34_Y19_N25
\reg_block~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~234_regout\);

-- Location: LCCOMB_X34_Y19_N24
\reg_block~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~318_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~234_regout\))) # (!\AddrA~combout\(1) & (\reg_block~170_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~170_regout\,
	datac => \reg_block~234_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~318_combout\);

-- Location: LCCOMB_X33_Y19_N16
\reg_block~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~319_combout\ = (\AddrA~combout\(0) & ((\reg_block~318_combout\ & (\reg_block~266_regout\)) # (!\reg_block~318_combout\ & ((\reg_block~202_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~266_regout\,
	datac => \reg_block~202_regout\,
	datad => \reg_block~318_combout\,
	combout => \reg_block~319_combout\);

-- Location: LCCOMB_X33_Y21_N20
\RegA~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~7_combout\ = (\AddrA~combout\(2) & ((\reg_block~319_combout\) # ((\reg_block~317_combout\ & \RegA~0_combout\)))) # (!\AddrA~combout\(2) & (\reg_block~317_combout\ & ((\RegA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \reg_block~317_combout\,
	datac => \reg_block~319_combout\,
	datad => \RegA~0_combout\,
	combout => \RegA~7_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[7]~I\ : cycloneii_io
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
	padio => ww_D_in(7),
	combout => \D_in~combout\(7));

-- Location: LCFF_X33_Y21_N15
\reg_block~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~107_regout\);

-- Location: LCFF_X33_Y20_N5
\reg_block~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~75_regout\);

-- Location: LCFF_X33_Y20_N23
\reg_block~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~43_regout\);

-- Location: LCCOMB_X33_Y20_N4
\reg_block~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~320_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~75_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~43_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~75_regout\,
	datad => \reg_block~43_regout\,
	combout => \reg_block~320_combout\);

-- Location: LCCOMB_X33_Y21_N14
\reg_block~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~321_combout\ = (\AddrA~combout\(1) & ((\reg_block~320_combout\ & (\reg_block~139_regout\)) # (!\reg_block~320_combout\ & ((\reg_block~107_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~139_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~107_regout\,
	datad => \reg_block~320_combout\,
	combout => \reg_block~321_combout\);

-- Location: LCFF_X33_Y19_N15
\reg_block~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~267_regout\);

-- Location: LCFF_X33_Y19_N13
\reg_block~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~203_regout\);

-- Location: LCFF_X34_Y19_N31
\reg_block~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~171_regout\);

-- Location: LCFF_X34_Y19_N21
\reg_block~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~235_regout\);

-- Location: LCCOMB_X34_Y19_N20
\reg_block~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~322_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~235_regout\))) # (!\AddrA~combout\(1) & (\reg_block~171_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~171_regout\,
	datac => \reg_block~235_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~322_combout\);

-- Location: LCCOMB_X33_Y19_N12
\reg_block~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~323_combout\ = (\AddrA~combout\(0) & ((\reg_block~322_combout\ & (\reg_block~267_regout\)) # (!\reg_block~322_combout\ & ((\reg_block~203_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~267_regout\,
	datac => \reg_block~203_regout\,
	datad => \reg_block~322_combout\,
	combout => \reg_block~323_combout\);

-- Location: LCCOMB_X33_Y21_N18
\RegA~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~8_combout\ = (\AddrA~combout\(2) & ((\reg_block~323_combout\) # ((\reg_block~321_combout\ & \RegA~0_combout\)))) # (!\AddrA~combout\(2) & (\reg_block~321_combout\ & ((\RegA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \reg_block~321_combout\,
	datac => \reg_block~323_combout\,
	datad => \RegA~0_combout\,
	combout => \RegA~8_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[8]~I\ : cycloneii_io
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
	padio => ww_D_in(8),
	combout => \D_in~combout\(8));

-- Location: LCFF_X37_Y18_N1
\reg_block~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~108_regout\);

-- Location: LCFF_X37_Y18_N11
\reg_block~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~140_regout\);

-- Location: LCCOMB_X37_Y18_N0
\reg_block~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~325_combout\ = (\reg_block~324_combout\ & (((\reg_block~140_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~324_combout\ & (\AddrA~combout\(1) & (\reg_block~108_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~324_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~108_regout\,
	datad => \reg_block~140_regout\,
	combout => \reg_block~325_combout\);

-- Location: LCFF_X36_Y20_N27
\reg_block~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~172_regout\);

-- Location: LCFF_X36_Y20_N1
\reg_block~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~236_regout\);

-- Location: LCCOMB_X36_Y20_N0
\reg_block~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~326_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~236_regout\))) # (!\AddrA~combout\(1) & (\reg_block~172_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~172_regout\,
	datac => \reg_block~236_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~326_combout\);

-- Location: LCFF_X33_Y19_N25
\reg_block~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~204_regout\);

-- Location: LCFF_X33_Y19_N27
\reg_block~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~268_regout\);

-- Location: LCCOMB_X33_Y19_N24
\reg_block~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~327_combout\ = (\AddrA~combout\(0) & ((\reg_block~326_combout\ & ((\reg_block~268_regout\))) # (!\reg_block~326_combout\ & (\reg_block~204_regout\)))) # (!\AddrA~combout\(0) & (\reg_block~326_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~326_combout\,
	datac => \reg_block~204_regout\,
	datad => \reg_block~268_regout\,
	combout => \reg_block~327_combout\);

-- Location: LCCOMB_X37_Y18_N28
\RegA~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~9_combout\ = (\RegA~0_combout\ & ((\reg_block~325_combout\) # ((\reg_block~327_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (((\reg_block~327_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~325_combout\,
	datac => \reg_block~327_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~9_combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[9]~I\ : cycloneii_io
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
	padio => ww_D_in(9),
	combout => \D_in~combout\(9));

-- Location: LCFF_X37_Y20_N19
\reg_block~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~269_regout\);

-- Location: LCFF_X37_Y20_N1
\reg_block~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~205_regout\);

-- Location: LCCOMB_X37_Y20_N0
\reg_block~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~331_combout\ = (\reg_block~330_combout\ & ((\reg_block~269_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~330_combout\ & (((\reg_block~205_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~330_combout\,
	datab => \reg_block~269_regout\,
	datac => \reg_block~205_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~331_combout\);

-- Location: LCFF_X37_Y21_N13
\reg_block~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~77_regout\);

-- Location: LCFF_X37_Y21_N7
\reg_block~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~45_regout\);

-- Location: LCCOMB_X37_Y21_N12
\reg_block~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~328_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~77_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~45_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~77_regout\,
	datad => \reg_block~45_regout\,
	combout => \reg_block~328_combout\);

-- Location: LCFF_X38_Y20_N1
\reg_block~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~109_regout\);

-- Location: LCCOMB_X38_Y20_N0
\reg_block~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~329_combout\ = (\reg_block~328_combout\ & ((\reg_block~141_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~328_combout\ & (((\reg_block~109_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~141_regout\,
	datab => \reg_block~328_combout\,
	datac => \reg_block~109_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~329_combout\);

-- Location: LCCOMB_X38_Y20_N12
\RegA~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~10_combout\ = (\AddrA~combout\(2) & ((\reg_block~331_combout\) # ((\RegA~0_combout\ & \reg_block~329_combout\)))) # (!\AddrA~combout\(2) & (\RegA~0_combout\ & ((\reg_block~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \RegA~0_combout\,
	datac => \reg_block~331_combout\,
	datad => \reg_block~329_combout\,
	combout => \RegA~10_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[10]~I\ : cycloneii_io
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
	padio => ww_D_in(10),
	combout => \D_in~combout\(10));

-- Location: LCFF_X37_Y20_N15
\reg_block~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~270_regout\);

-- Location: LCFF_X37_Y20_N29
\reg_block~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~206_regout\);

-- Location: LCCOMB_X37_Y20_N28
\reg_block~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~335_combout\ = (\reg_block~334_combout\ & ((\reg_block~270_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~334_combout\ & (((\reg_block~206_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~334_combout\,
	datab => \reg_block~270_regout\,
	datac => \reg_block~206_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~335_combout\);

-- Location: LCFF_X38_Y20_N17
\reg_block~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~142_regout\);

-- Location: LCFF_X38_Y20_N15
\reg_block~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~110_regout\);

-- Location: LCCOMB_X38_Y20_N14
\reg_block~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~333_combout\ = (\reg_block~332_combout\ & ((\reg_block~142_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~332_combout\ & (((\reg_block~110_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~332_combout\,
	datab => \reg_block~142_regout\,
	datac => \reg_block~110_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~333_combout\);

-- Location: LCCOMB_X38_Y20_N18
\RegA~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~11_combout\ = (\reg_block~335_combout\ & ((\AddrA~combout\(2)) # ((\RegA~0_combout\ & \reg_block~333_combout\)))) # (!\reg_block~335_combout\ & (\RegA~0_combout\ & (\reg_block~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~335_combout\,
	datab => \RegA~0_combout\,
	datac => \reg_block~333_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~11_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[11]~I\ : cycloneii_io
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
	padio => ww_D_in(11),
	combout => \D_in~combout\(11));

-- Location: LCFF_X37_Y20_N27
\reg_block~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~271_regout\);

-- Location: LCFF_X37_Y20_N17
\reg_block~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~207_regout\);

-- Location: LCCOMB_X37_Y20_N16
\reg_block~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~339_combout\ = (\reg_block~338_combout\ & ((\reg_block~271_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~338_combout\ & (((\reg_block~207_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~338_combout\,
	datab => \reg_block~271_regout\,
	datac => \reg_block~207_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~339_combout\);

-- Location: LCFF_X35_Y20_N9
\reg_block~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~111_regout\);

-- Location: LCFF_X35_Y20_N27
\reg_block~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~143_regout\);

-- Location: LCCOMB_X35_Y20_N8
\reg_block~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~337_combout\ = (\reg_block~336_combout\ & (((\reg_block~143_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~336_combout\ & (\AddrA~combout\(1) & (\reg_block~111_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~336_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~111_regout\,
	datad => \reg_block~143_regout\,
	combout => \reg_block~337_combout\);

-- Location: LCCOMB_X37_Y20_N4
\RegA~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~12_combout\ = (\reg_block~339_combout\ & ((\AddrA~combout\(2)) # ((\reg_block~337_combout\ & \RegA~0_combout\)))) # (!\reg_block~339_combout\ & (\reg_block~337_combout\ & ((\RegA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~339_combout\,
	datab => \reg_block~337_combout\,
	datac => \AddrA~combout\(2),
	datad => \RegA~0_combout\,
	combout => \RegA~12_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[12]~I\ : cycloneii_io
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
	padio => ww_D_in(12),
	combout => \D_in~combout\(12));

-- Location: LCFF_X35_Y20_N13
\reg_block~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~112_regout\);

-- Location: LCFF_X37_Y21_N19
\reg_block~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~48_regout\);

-- Location: LCFF_X37_Y21_N25
\reg_block~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~80_regout\);

-- Location: LCCOMB_X37_Y21_N24
\reg_block~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~340_combout\ = (\AddrA~combout\(0) & (((\reg_block~80_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~48_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~48_regout\,
	datac => \reg_block~80_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~340_combout\);

-- Location: LCCOMB_X35_Y20_N12
\reg_block~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~341_combout\ = (\AddrA~combout\(1) & ((\reg_block~340_combout\ & (\reg_block~144_regout\)) # (!\reg_block~340_combout\ & ((\reg_block~112_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~144_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~112_regout\,
	datad => \reg_block~340_combout\,
	combout => \reg_block~341_combout\);

-- Location: LCFF_X36_Y20_N19
\reg_block~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~176_regout\);

-- Location: LCFF_X36_Y20_N17
\reg_block~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~240_regout\);

-- Location: LCCOMB_X36_Y20_N16
\reg_block~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~342_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~240_regout\))) # (!\AddrA~combout\(1) & (\reg_block~176_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~176_regout\,
	datac => \reg_block~240_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~342_combout\);

-- Location: LCFF_X37_Y20_N31
\reg_block~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~208_regout\);

-- Location: LCCOMB_X37_Y20_N30
\reg_block~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~343_combout\ = (\reg_block~342_combout\ & ((\reg_block~272_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~342_combout\ & (((\reg_block~208_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~272_regout\,
	datab => \reg_block~342_combout\,
	datac => \reg_block~208_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~343_combout\);

-- Location: LCCOMB_X37_Y20_N10
\RegA~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~13_combout\ = (\RegA~0_combout\ & ((\reg_block~341_combout\) # ((\AddrA~combout\(2) & \reg_block~343_combout\)))) # (!\RegA~0_combout\ & (((\AddrA~combout\(2) & \reg_block~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~341_combout\,
	datac => \AddrA~combout\(2),
	datad => \reg_block~343_combout\,
	combout => \RegA~13_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[13]~I\ : cycloneii_io
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
	padio => ww_D_in(13),
	combout => \D_in~combout\(13));

-- Location: LCFF_X35_Y19_N3
\reg_block~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~273_regout\);

-- Location: LCFF_X35_Y19_N9
\reg_block~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~209_regout\);

-- Location: LCFF_X36_Y20_N31
\reg_block~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~177_regout\);

-- Location: LCFF_X36_Y20_N5
\reg_block~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~241_regout\);

-- Location: LCCOMB_X36_Y20_N4
\reg_block~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~346_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~241_regout\))) # (!\AddrA~combout\(1) & (\reg_block~177_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~177_regout\,
	datac => \reg_block~241_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~346_combout\);

-- Location: LCCOMB_X35_Y19_N8
\reg_block~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~347_combout\ = (\AddrA~combout\(0) & ((\reg_block~346_combout\ & (\reg_block~273_regout\)) # (!\reg_block~346_combout\ & ((\reg_block~209_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~273_regout\,
	datac => \reg_block~209_regout\,
	datad => \reg_block~346_combout\,
	combout => \reg_block~347_combout\);

-- Location: LCFF_X35_Y23_N1
\reg_block~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~113_regout\);

-- Location: LCFF_X37_Y21_N31
\reg_block~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~49_regout\);

-- Location: LCFF_X37_Y21_N29
\reg_block~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~81_regout\);

-- Location: LCCOMB_X37_Y21_N28
\reg_block~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~344_combout\ = (\AddrA~combout\(0) & (((\reg_block~81_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~49_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~49_regout\,
	datac => \reg_block~81_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~344_combout\);

-- Location: LCCOMB_X35_Y23_N0
\reg_block~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~345_combout\ = (\AddrA~combout\(1) & ((\reg_block~344_combout\ & (\reg_block~145_regout\)) # (!\reg_block~344_combout\ & ((\reg_block~113_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~145_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~113_regout\,
	datad => \reg_block~344_combout\,
	combout => \reg_block~345_combout\);

-- Location: LCCOMB_X35_Y23_N28
\RegA~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~14_combout\ = (\reg_block~347_combout\ & ((\AddrA~combout\(2)) # ((\reg_block~345_combout\ & \RegA~0_combout\)))) # (!\reg_block~347_combout\ & (\reg_block~345_combout\ & (\RegA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~347_combout\,
	datab => \reg_block~345_combout\,
	datac => \RegA~0_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~14_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[14]~I\ : cycloneii_io
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
	padio => ww_D_in(14),
	combout => \D_in~combout\(14));

-- Location: LCFF_X35_Y19_N31
\reg_block~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~274_regout\);

-- Location: LCFF_X35_Y19_N13
\reg_block~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~210_regout\);

-- Location: LCCOMB_X35_Y19_N12
\reg_block~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~351_combout\ = (\reg_block~350_combout\ & ((\reg_block~274_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~350_combout\ & (((\reg_block~210_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~350_combout\,
	datab => \reg_block~274_regout\,
	datac => \reg_block~210_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~351_combout\);

-- Location: LCFF_X35_Y23_N15
\reg_block~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~114_regout\);

-- Location: LCFF_X37_Y21_N3
\reg_block~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~50_regout\);

-- Location: LCFF_X37_Y21_N17
\reg_block~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~82_regout\);

-- Location: LCCOMB_X37_Y21_N16
\reg_block~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~348_combout\ = (\AddrA~combout\(0) & (((\reg_block~82_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~50_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~50_regout\,
	datac => \reg_block~82_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~348_combout\);

-- Location: LCCOMB_X35_Y23_N14
\reg_block~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~349_combout\ = (\AddrA~combout\(1) & ((\reg_block~348_combout\ & (\reg_block~146_regout\)) # (!\reg_block~348_combout\ & ((\reg_block~114_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~146_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~114_regout\,
	datad => \reg_block~348_combout\,
	combout => \reg_block~349_combout\);

-- Location: LCCOMB_X35_Y23_N2
\RegA~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~15_combout\ = (\reg_block~351_combout\ & ((\AddrA~combout\(2)) # ((\RegA~0_combout\ & \reg_block~349_combout\)))) # (!\reg_block~351_combout\ & (\RegA~0_combout\ & (\reg_block~349_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~351_combout\,
	datab => \RegA~0_combout\,
	datac => \reg_block~349_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~15_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[15]~I\ : cycloneii_io
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
	padio => ww_D_in(15),
	combout => \D_in~combout\(15));

-- Location: LCFF_X35_Y20_N17
\reg_block~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~115_regout\);

-- Location: LCFF_X35_Y20_N19
\reg_block~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~147_regout\);

-- Location: LCCOMB_X35_Y20_N16
\reg_block~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~353_combout\ = (\reg_block~352_combout\ & (((\reg_block~147_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~352_combout\ & (\AddrA~combout\(1) & (\reg_block~115_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~352_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~115_regout\,
	datad => \reg_block~147_regout\,
	combout => \reg_block~353_combout\);

-- Location: LCFF_X35_Y19_N19
\reg_block~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~275_regout\);

-- Location: LCFF_X35_Y19_N17
\reg_block~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~211_regout\);

-- Location: LCCOMB_X35_Y19_N16
\reg_block~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~355_combout\ = (\reg_block~354_combout\ & ((\reg_block~275_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~354_combout\ & (((\reg_block~211_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~354_combout\,
	datab => \reg_block~275_regout\,
	datac => \reg_block~211_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~355_combout\);

-- Location: LCCOMB_X35_Y19_N20
\RegA~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~16_combout\ = (\AddrA~combout\(2) & ((\reg_block~355_combout\) # ((\RegA~0_combout\ & \reg_block~353_combout\)))) # (!\AddrA~combout\(2) & (\RegA~0_combout\ & (\reg_block~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \RegA~0_combout\,
	datac => \reg_block~353_combout\,
	datad => \reg_block~355_combout\,
	combout => \RegA~16_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[16]~I\ : cycloneii_io
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
	padio => ww_D_in(16),
	combout => \D_in~combout\(16));

-- Location: LCFF_X36_Y19_N27
\reg_block~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~180_regout\);

-- Location: LCFF_X36_Y19_N1
\reg_block~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~244_regout\);

-- Location: LCCOMB_X36_Y19_N0
\reg_block~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~358_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~244_regout\))) # (!\AddrA~combout\(1) & (\reg_block~180_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~180_regout\,
	datac => \reg_block~244_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~358_combout\);

-- Location: LCFF_X35_Y19_N15
\reg_block~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~212_regout\);

-- Location: LCFF_X35_Y19_N1
\reg_block~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~276_regout\);

-- Location: LCCOMB_X35_Y19_N14
\reg_block~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~359_combout\ = (\AddrA~combout\(0) & ((\reg_block~358_combout\ & ((\reg_block~276_regout\))) # (!\reg_block~358_combout\ & (\reg_block~212_regout\)))) # (!\AddrA~combout\(0) & (\reg_block~358_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~358_combout\,
	datac => \reg_block~212_regout\,
	datad => \reg_block~276_regout\,
	combout => \reg_block~359_combout\);

-- Location: LCFF_X33_Y18_N29
\reg_block~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~148_regout\);

-- Location: LCFF_X33_Y18_N19
\reg_block~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~116_regout\);

-- Location: LCCOMB_X33_Y18_N18
\reg_block~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~357_combout\ = (\reg_block~356_combout\ & ((\reg_block~148_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~356_combout\ & (((\reg_block~116_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~356_combout\,
	datab => \reg_block~148_regout\,
	datac => \reg_block~116_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~357_combout\);

-- Location: LCCOMB_X35_Y19_N26
\RegA~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~17_combout\ = (\AddrA~combout\(2) & ((\reg_block~359_combout\) # ((\RegA~0_combout\ & \reg_block~357_combout\)))) # (!\AddrA~combout\(2) & (\RegA~0_combout\ & ((\reg_block~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \RegA~0_combout\,
	datac => \reg_block~359_combout\,
	datad => \reg_block~357_combout\,
	combout => \RegA~17_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[17]~I\ : cycloneii_io
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
	padio => ww_D_in(17),
	combout => \D_in~combout\(17));

-- Location: LCFF_X37_Y18_N23
\reg_block~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~117_regout\);

-- Location: LCFF_X37_Y18_N25
\reg_block~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~149_regout\);

-- Location: LCCOMB_X37_Y18_N22
\reg_block~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~361_combout\ = (\reg_block~360_combout\ & (((\reg_block~149_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~360_combout\ & (\AddrA~combout\(1) & (\reg_block~117_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~360_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~117_regout\,
	datad => \reg_block~149_regout\,
	combout => \reg_block~361_combout\);

-- Location: LCFF_X36_Y18_N19
\reg_block~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~277_regout\);

-- Location: LCFF_X36_Y18_N1
\reg_block~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~213_regout\);

-- Location: LCCOMB_X36_Y18_N0
\reg_block~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~363_combout\ = (\reg_block~362_combout\ & ((\reg_block~277_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~362_combout\ & (((\reg_block~213_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~362_combout\,
	datab => \reg_block~277_regout\,
	datac => \reg_block~213_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~363_combout\);

-- Location: LCCOMB_X37_Y18_N26
\RegA~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~18_combout\ = (\RegA~0_combout\ & ((\reg_block~361_combout\) # ((\reg_block~363_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (((\reg_block~363_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~361_combout\,
	datac => \reg_block~363_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~18_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[18]~I\ : cycloneii_io
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
	padio => ww_D_in(18),
	combout => \D_in~combout\(18));

-- Location: LCFF_X33_Y19_N31
\reg_block~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~278_regout\);

-- Location: LCFF_X33_Y19_N5
\reg_block~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~214_regout\);

-- Location: LCFF_X36_Y19_N11
\reg_block~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~182_regout\);

-- Location: LCFF_X36_Y19_N17
\reg_block~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~246_regout\);

-- Location: LCCOMB_X36_Y19_N16
\reg_block~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~366_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~246_regout\))) # (!\AddrA~combout\(1) & (\reg_block~182_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~182_regout\,
	datac => \reg_block~246_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~366_combout\);

-- Location: LCCOMB_X33_Y19_N4
\reg_block~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~367_combout\ = (\AddrA~combout\(0) & ((\reg_block~366_combout\ & (\reg_block~278_regout\)) # (!\reg_block~366_combout\ & ((\reg_block~214_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~278_regout\,
	datac => \reg_block~214_regout\,
	datad => \reg_block~366_combout\,
	combout => \reg_block~367_combout\);

-- Location: LCFF_X34_Y20_N5
\reg_block~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~86_regout\);

-- Location: LCFF_X34_Y20_N7
\reg_block~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~54_regout\);

-- Location: LCCOMB_X34_Y20_N4
\reg_block~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~364_combout\ = (\AddrA~combout\(1) & (\AddrA~combout\(0))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & (\reg_block~86_regout\)) # (!\AddrA~combout\(0) & ((\reg_block~54_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \AddrA~combout\(0),
	datac => \reg_block~86_regout\,
	datad => \reg_block~54_regout\,
	combout => \reg_block~364_combout\);

-- Location: LCFF_X33_Y18_N15
\reg_block~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~118_regout\);

-- Location: LCCOMB_X33_Y18_N14
\reg_block~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~365_combout\ = (\reg_block~364_combout\ & ((\reg_block~150_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~364_combout\ & (((\reg_block~118_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~150_regout\,
	datab => \reg_block~364_combout\,
	datac => \reg_block~118_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~365_combout\);

-- Location: LCCOMB_X33_Y18_N26
\RegA~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~19_combout\ = (\RegA~0_combout\ & ((\reg_block~365_combout\) # ((\reg_block~367_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (\reg_block~367_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~367_combout\,
	datac => \reg_block~365_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~19_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[19]~I\ : cycloneii_io
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
	padio => ww_D_in(19),
	combout => \D_in~combout\(19));

-- Location: LCFF_X36_Y19_N31
\reg_block~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~183_regout\);

-- Location: LCFF_X36_Y19_N29
\reg_block~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~247_regout\);

-- Location: LCCOMB_X36_Y19_N28
\reg_block~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~370_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~247_regout\))) # (!\AddrA~combout\(1) & (\reg_block~183_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~183_regout\,
	datac => \reg_block~247_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~370_combout\);

-- Location: LCFF_X37_Y19_N13
\reg_block~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~215_regout\);

-- Location: LCFF_X37_Y19_N31
\reg_block~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~279_regout\);

-- Location: LCCOMB_X37_Y19_N12
\reg_block~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~371_combout\ = (\AddrA~combout\(0) & ((\reg_block~370_combout\ & ((\reg_block~279_regout\))) # (!\reg_block~370_combout\ & (\reg_block~215_regout\)))) # (!\AddrA~combout\(0) & (\reg_block~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~370_combout\,
	datac => \reg_block~215_regout\,
	datad => \reg_block~279_regout\,
	combout => \reg_block~371_combout\);

-- Location: LCFF_X37_Y21_N15
\reg_block~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~55_regout\);

-- Location: LCFF_X37_Y21_N5
\reg_block~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~87_regout\);

-- Location: LCCOMB_X37_Y21_N4
\reg_block~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~368_combout\ = (\AddrA~combout\(0) & (((\reg_block~87_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~55_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~55_regout\,
	datac => \reg_block~87_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~368_combout\);

-- Location: LCFF_X38_Y20_N21
\reg_block~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~119_regout\);

-- Location: LCFF_X38_Y20_N31
\reg_block~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(19),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~151_regout\);

-- Location: LCCOMB_X38_Y20_N20
\reg_block~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~369_combout\ = (\AddrA~combout\(1) & ((\reg_block~368_combout\ & ((\reg_block~151_regout\))) # (!\reg_block~368_combout\ & (\reg_block~119_regout\)))) # (!\AddrA~combout\(1) & (\reg_block~368_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~368_combout\,
	datac => \reg_block~119_regout\,
	datad => \reg_block~151_regout\,
	combout => \reg_block~369_combout\);

-- Location: LCCOMB_X37_Y19_N0
\RegA~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~20_combout\ = (\reg_block~371_combout\ & ((\AddrA~combout\(2)) # ((\reg_block~369_combout\ & \RegA~0_combout\)))) # (!\reg_block~371_combout\ & (\reg_block~369_combout\ & (\RegA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~371_combout\,
	datab => \reg_block~369_combout\,
	datac => \RegA~0_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~20_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[20]~I\ : cycloneii_io
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
	padio => ww_D_in(20),
	combout => \D_in~combout\(20));

-- Location: LCFF_X35_Y23_N13
\reg_block~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~120_regout\);

-- Location: LCFF_X34_Y20_N3
\reg_block~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~56_regout\);

-- Location: LCFF_X34_Y20_N25
\reg_block~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~88_regout\);

-- Location: LCCOMB_X34_Y20_N24
\reg_block~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~372_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~88_regout\))) # (!\AddrA~combout\(0) & (\reg_block~56_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~56_regout\,
	datac => \reg_block~88_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~372_combout\);

-- Location: LCCOMB_X35_Y23_N12
\reg_block~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~373_combout\ = (\AddrA~combout\(1) & ((\reg_block~372_combout\ & (\reg_block~152_regout\)) # (!\reg_block~372_combout\ & ((\reg_block~120_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~152_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~120_regout\,
	datad => \reg_block~372_combout\,
	combout => \reg_block~373_combout\);

-- Location: LCFF_X36_Y19_N19
\reg_block~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~184_regout\);

-- Location: LCFF_X36_Y19_N25
\reg_block~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~248_regout\);

-- Location: LCCOMB_X36_Y19_N24
\reg_block~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~374_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~248_regout\))) # (!\AddrA~combout\(1) & (\reg_block~184_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~184_regout\,
	datac => \reg_block~248_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~374_combout\);

-- Location: LCFF_X35_Y19_N29
\reg_block~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~216_regout\);

-- Location: LCCOMB_X35_Y19_N28
\reg_block~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~375_combout\ = (\reg_block~374_combout\ & ((\reg_block~280_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~374_combout\ & (((\reg_block~216_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~280_regout\,
	datab => \reg_block~374_combout\,
	datac => \reg_block~216_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~375_combout\);

-- Location: LCCOMB_X35_Y23_N24
\RegA~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~21_combout\ = (\reg_block~373_combout\ & ((\RegA~0_combout\) # ((\reg_block~375_combout\ & \AddrA~combout\(2))))) # (!\reg_block~373_combout\ & (((\reg_block~375_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~373_combout\,
	datab => \RegA~0_combout\,
	datac => \reg_block~375_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~21_combout\);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[21]~I\ : cycloneii_io
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
	padio => ww_D_in(21),
	combout => \D_in~combout\(21));

-- Location: LCFF_X36_Y18_N31
\reg_block~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~281_regout\);

-- Location: LCFF_X36_Y18_N29
\reg_block~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~217_regout\);

-- Location: LCCOMB_X36_Y18_N28
\reg_block~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~379_combout\ = (\reg_block~378_combout\ & ((\reg_block~281_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~378_combout\ & (((\reg_block~217_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~378_combout\,
	datab => \reg_block~281_regout\,
	datac => \reg_block~217_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~379_combout\);

-- Location: LCFF_X37_Y18_N5
\reg_block~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~121_regout\);

-- Location: LCFF_X34_Y20_N21
\reg_block~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~89_regout\);

-- Location: LCCOMB_X34_Y20_N20
\reg_block~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~376_combout\ = (\AddrA~combout\(0) & (((\reg_block~89_regout\) # (\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & (\reg_block~57_regout\ & ((!\AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~57_regout\,
	datab => \AddrA~combout\(0),
	datac => \reg_block~89_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~376_combout\);

-- Location: LCCOMB_X37_Y18_N4
\reg_block~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~377_combout\ = (\AddrA~combout\(1) & ((\reg_block~376_combout\ & (\reg_block~153_regout\)) # (!\reg_block~376_combout\ & ((\reg_block~121_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~153_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~121_regout\,
	datad => \reg_block~376_combout\,
	combout => \reg_block~377_combout\);

-- Location: LCCOMB_X37_Y18_N16
\RegA~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~22_combout\ = (\RegA~0_combout\ & ((\reg_block~377_combout\) # ((\reg_block~379_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (\reg_block~379_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~379_combout\,
	datac => \reg_block~377_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~22_combout\);

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[22]~I\ : cycloneii_io
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
	padio => ww_D_in(22),
	combout => \D_in~combout\(22));

-- Location: LCFF_X36_Y19_N3
\reg_block~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~186_regout\);

-- Location: LCFF_X36_Y19_N9
\reg_block~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~250_regout\);

-- Location: LCCOMB_X36_Y19_N8
\reg_block~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~382_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~250_regout\))) # (!\AddrA~combout\(1) & (\reg_block~186_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~186_regout\,
	datac => \reg_block~250_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~382_combout\);

-- Location: LCFF_X36_Y18_N25
\reg_block~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~218_regout\);

-- Location: LCCOMB_X36_Y18_N24
\reg_block~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~383_combout\ = (\reg_block~382_combout\ & ((\reg_block~282_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~382_combout\ & (((\reg_block~218_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~282_regout\,
	datab => \reg_block~382_combout\,
	datac => \reg_block~218_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~383_combout\);

-- Location: LCFF_X35_Y20_N5
\reg_block~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~122_regout\);

-- Location: LCFF_X35_Y20_N23
\reg_block~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~154_regout\);

-- Location: LCCOMB_X35_Y20_N4
\reg_block~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~381_combout\ = (\reg_block~380_combout\ & (((\reg_block~154_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~380_combout\ & (\AddrA~combout\(1) & (\reg_block~122_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~380_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~122_regout\,
	datad => \reg_block~154_regout\,
	combout => \reg_block~381_combout\);

-- Location: LCCOMB_X36_Y18_N20
\RegA~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~23_combout\ = (\reg_block~383_combout\ & ((\AddrA~combout\(2)) # ((\RegA~0_combout\ & \reg_block~381_combout\)))) # (!\reg_block~383_combout\ & (\RegA~0_combout\ & ((\reg_block~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~383_combout\,
	datab => \RegA~0_combout\,
	datac => \AddrA~combout\(2),
	datad => \reg_block~381_combout\,
	combout => \RegA~23_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[23]~I\ : cycloneii_io
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
	padio => ww_D_in(23),
	combout => \D_in~combout\(23));

-- Location: LCFF_X35_Y20_N25
\reg_block~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~123_regout\);

-- Location: LCFF_X34_Y20_N15
\reg_block~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~59_regout\);

-- Location: LCFF_X34_Y20_N13
\reg_block~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~91_regout\);

-- Location: LCCOMB_X34_Y20_N12
\reg_block~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~384_combout\ = (\AddrA~combout\(1) & (((\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & ((\AddrA~combout\(0) & ((\reg_block~91_regout\))) # (!\AddrA~combout\(0) & (\reg_block~59_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~59_regout\,
	datac => \reg_block~91_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~384_combout\);

-- Location: LCCOMB_X35_Y20_N24
\reg_block~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~385_combout\ = (\AddrA~combout\(1) & ((\reg_block~384_combout\ & (\reg_block~155_regout\)) # (!\reg_block~384_combout\ & ((\reg_block~123_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~155_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~123_regout\,
	datad => \reg_block~384_combout\,
	combout => \reg_block~385_combout\);

-- Location: LCFF_X36_Y19_N23
\reg_block~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~187_regout\);

-- Location: LCFF_X36_Y19_N21
\reg_block~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~251_regout\);

-- Location: LCCOMB_X36_Y19_N20
\reg_block~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~386_combout\ = (\AddrA~combout\(0) & (((\AddrA~combout\(1))))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & ((\reg_block~251_regout\))) # (!\AddrA~combout\(1) & (\reg_block~187_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~187_regout\,
	datac => \reg_block~251_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~386_combout\);

-- Location: LCFF_X36_Y18_N23
\reg_block~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~219_regout\);

-- Location: LCCOMB_X36_Y18_N22
\reg_block~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~387_combout\ = (\reg_block~386_combout\ & ((\reg_block~283_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~386_combout\ & (((\reg_block~219_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~283_regout\,
	datab => \reg_block~386_combout\,
	datac => \reg_block~219_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~387_combout\);

-- Location: LCCOMB_X36_Y18_N10
\RegA~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~24_combout\ = (\reg_block~385_combout\ & ((\RegA~0_combout\) # ((\AddrA~combout\(2) & \reg_block~387_combout\)))) # (!\reg_block~385_combout\ & (((\AddrA~combout\(2) & \reg_block~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~385_combout\,
	datab => \RegA~0_combout\,
	datac => \AddrA~combout\(2),
	datad => \reg_block~387_combout\,
	combout => \RegA~24_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[24]~I\ : cycloneii_io
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
	padio => ww_D_in(24),
	combout => \D_in~combout\(24));

-- Location: LCFF_X35_Y20_N21
\reg_block~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~124_regout\);

-- Location: LCFF_X35_Y20_N31
\reg_block~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~156_regout\);

-- Location: LCCOMB_X35_Y20_N20
\reg_block~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~389_combout\ = (\reg_block~388_combout\ & (((\reg_block~156_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~388_combout\ & (\AddrA~combout\(1) & (\reg_block~124_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~388_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~124_regout\,
	datad => \reg_block~156_regout\,
	combout => \reg_block~389_combout\);

-- Location: LCFF_X36_Y21_N19
\reg_block~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~284_regout\);

-- Location: LCFF_X36_Y21_N1
\reg_block~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~220_regout\);

-- Location: LCCOMB_X36_Y21_N0
\reg_block~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~391_combout\ = (\reg_block~390_combout\ & ((\reg_block~284_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~390_combout\ & (((\reg_block~220_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~390_combout\,
	datab => \reg_block~284_regout\,
	datac => \reg_block~220_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~391_combout\);

-- Location: LCCOMB_X36_Y18_N12
\RegA~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~25_combout\ = (\AddrA~combout\(2) & ((\reg_block~391_combout\) # ((\RegA~0_combout\ & \reg_block~389_combout\)))) # (!\AddrA~combout\(2) & (\RegA~0_combout\ & (\reg_block~389_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \RegA~0_combout\,
	datac => \reg_block~389_combout\,
	datad => \reg_block~391_combout\,
	combout => \RegA~25_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[25]~I\ : cycloneii_io
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
	padio => ww_D_in(25),
	combout => \D_in~combout\(25));

-- Location: LCFF_X35_Y20_N1
\reg_block~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~125_regout\);

-- Location: LCFF_X35_Y20_N3
\reg_block~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~157_regout\);

-- Location: LCCOMB_X35_Y20_N0
\reg_block~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~393_combout\ = (\reg_block~392_combout\ & (((\reg_block~157_regout\)) # (!\AddrA~combout\(1)))) # (!\reg_block~392_combout\ & (\AddrA~combout\(1) & (\reg_block~125_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~392_combout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~125_regout\,
	datad => \reg_block~157_regout\,
	combout => \reg_block~393_combout\);

-- Location: LCFF_X36_Y21_N15
\reg_block~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~285_regout\);

-- Location: LCFF_X36_Y21_N29
\reg_block~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~221_regout\);

-- Location: LCCOMB_X36_Y21_N28
\reg_block~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~395_combout\ = (\reg_block~394_combout\ & ((\reg_block~285_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~394_combout\ & (((\reg_block~221_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~394_combout\,
	datab => \reg_block~285_regout\,
	datac => \reg_block~221_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~395_combout\);

-- Location: LCCOMB_X36_Y21_N8
\RegA~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~26_combout\ = (\AddrA~combout\(2) & ((\reg_block~395_combout\) # ((\reg_block~393_combout\ & \RegA~0_combout\)))) # (!\AddrA~combout\(2) & (\reg_block~393_combout\ & (\RegA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \reg_block~393_combout\,
	datac => \RegA~0_combout\,
	datad => \reg_block~395_combout\,
	combout => \RegA~26_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[26]~I\ : cycloneii_io
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
	padio => ww_D_in(26),
	combout => \D_in~combout\(26));

-- Location: LCFF_X33_Y21_N29
\reg_block~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~126_regout\);

-- Location: LCFF_X35_Y21_N17
\reg_block~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~94_regout\);

-- Location: LCFF_X35_Y21_N27
\reg_block~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~62_regout\);

-- Location: LCCOMB_X35_Y21_N16
\reg_block~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~396_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~94_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~94_regout\,
	datad => \reg_block~62_regout\,
	combout => \reg_block~396_combout\);

-- Location: LCCOMB_X33_Y21_N28
\reg_block~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~397_combout\ = (\AddrA~combout\(1) & ((\reg_block~396_combout\ & (\reg_block~158_regout\)) # (!\reg_block~396_combout\ & ((\reg_block~126_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~158_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~126_regout\,
	datad => \reg_block~396_combout\,
	combout => \reg_block~397_combout\);

-- Location: LCFF_X36_Y21_N5
\reg_block~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~286_regout\);

-- Location: LCFF_X36_Y21_N3
\reg_block~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~222_regout\);

-- Location: LCCOMB_X36_Y21_N2
\reg_block~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~399_combout\ = (\reg_block~398_combout\ & ((\reg_block~286_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~398_combout\ & (((\reg_block~222_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~398_combout\,
	datab => \reg_block~286_regout\,
	datac => \reg_block~222_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~399_combout\);

-- Location: LCCOMB_X33_Y21_N16
\RegA~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~27_combout\ = (\AddrA~combout\(2) & ((\reg_block~399_combout\) # ((\reg_block~397_combout\ & \RegA~0_combout\)))) # (!\AddrA~combout\(2) & (\reg_block~397_combout\ & ((\RegA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(2),
	datab => \reg_block~397_combout\,
	datac => \reg_block~399_combout\,
	datad => \RegA~0_combout\,
	combout => \RegA~27_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[27]~I\ : cycloneii_io
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
	padio => ww_D_in(27),
	combout => \D_in~combout\(27));

-- Location: LCFF_X32_Y20_N15
\reg_block~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~159_regout\);

-- Location: LCFF_X32_Y20_N13
\reg_block~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~127_regout\);

-- Location: LCCOMB_X32_Y20_N12
\reg_block~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~401_combout\ = (\reg_block~400_combout\ & ((\reg_block~159_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~400_combout\ & (((\reg_block~127_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~400_combout\,
	datab => \reg_block~159_regout\,
	datac => \reg_block~127_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~401_combout\);

-- Location: LCFF_X35_Y22_N27
\reg_block~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~287_regout\);

-- Location: LCFF_X35_Y22_N17
\reg_block~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~223_regout\);

-- Location: LCCOMB_X35_Y22_N16
\reg_block~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~403_combout\ = (\reg_block~402_combout\ & ((\reg_block~287_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~402_combout\ & (((\reg_block~223_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~402_combout\,
	datab => \reg_block~287_regout\,
	datac => \reg_block~223_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~403_combout\);

-- Location: LCCOMB_X32_Y20_N24
\RegA~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~28_combout\ = (\RegA~0_combout\ & ((\reg_block~401_combout\) # ((\reg_block~403_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (((\reg_block~403_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~401_combout\,
	datac => \reg_block~403_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~28_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[28]~I\ : cycloneii_io
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
	padio => ww_D_in(28),
	combout => \D_in~combout\(28));

-- Location: LCFF_X35_Y22_N23
\reg_block~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~288_regout\);

-- Location: LCFF_X35_Y22_N21
\reg_block~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~224_regout\);

-- Location: LCFF_X36_Y22_N25
\reg_block~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~256_regout\);

-- Location: LCFF_X36_Y22_N3
\reg_block~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~192_regout\);

-- Location: LCCOMB_X36_Y22_N24
\reg_block~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~406_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~256_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~192_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~256_regout\,
	datad => \reg_block~192_regout\,
	combout => \reg_block~406_combout\);

-- Location: LCCOMB_X35_Y22_N20
\reg_block~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~407_combout\ = (\AddrA~combout\(0) & ((\reg_block~406_combout\ & (\reg_block~288_regout\)) # (!\reg_block~406_combout\ & ((\reg_block~224_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~288_regout\,
	datac => \reg_block~224_regout\,
	datad => \reg_block~406_combout\,
	combout => \reg_block~407_combout\);

-- Location: LCFF_X35_Y21_N9
\reg_block~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~96_regout\);

-- Location: LCFF_X35_Y21_N3
\reg_block~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~64_regout\);

-- Location: LCCOMB_X35_Y21_N8
\reg_block~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~404_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~96_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~64_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~96_regout\,
	datad => \reg_block~64_regout\,
	combout => \reg_block~404_combout\);

-- Location: LCFF_X34_Y21_N31
\reg_block~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~128_regout\);

-- Location: LCCOMB_X34_Y21_N30
\reg_block~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~405_combout\ = (\reg_block~404_combout\ & ((\reg_block~160_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~404_combout\ & (((\reg_block~128_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~160_regout\,
	datab => \reg_block~404_combout\,
	datac => \reg_block~128_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~405_combout\);

-- Location: LCCOMB_X34_Y21_N26
\RegA~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~29_combout\ = (\RegA~0_combout\ & ((\reg_block~405_combout\) # ((\reg_block~407_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (\reg_block~407_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~407_combout\,
	datac => \reg_block~405_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~29_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[29]~I\ : cycloneii_io
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
	padio => ww_D_in(29),
	combout => \D_in~combout\(29));

-- Location: LCFF_X35_Y23_N11
\reg_block~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~129_regout\);

-- Location: LCFF_X35_Y21_N13
\reg_block~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~97_regout\);

-- Location: LCFF_X35_Y21_N31
\reg_block~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~65_regout\);

-- Location: LCCOMB_X35_Y21_N12
\reg_block~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~408_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~97_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~65_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~97_regout\,
	datad => \reg_block~65_regout\,
	combout => \reg_block~408_combout\);

-- Location: LCCOMB_X35_Y23_N10
\reg_block~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~409_combout\ = (\AddrA~combout\(1) & ((\reg_block~408_combout\ & (\reg_block~161_regout\)) # (!\reg_block~408_combout\ & ((\reg_block~129_regout\))))) # (!\AddrA~combout\(1) & (((\reg_block~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~161_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~129_regout\,
	datad => \reg_block~408_combout\,
	combout => \reg_block~409_combout\);

-- Location: LCFF_X35_Y22_N11
\reg_block~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~289_regout\);

-- Location: LCFF_X35_Y22_N9
\reg_block~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~225_regout\);

-- Location: LCFF_X36_Y22_N21
\reg_block~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~257_regout\);

-- Location: LCFF_X36_Y22_N15
\reg_block~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~193_regout\);

-- Location: LCCOMB_X36_Y22_N20
\reg_block~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~410_combout\ = (\AddrA~combout\(0) & (\AddrA~combout\(1))) # (!\AddrA~combout\(0) & ((\AddrA~combout\(1) & (\reg_block~257_regout\)) # (!\AddrA~combout\(1) & ((\reg_block~193_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~257_regout\,
	datad => \reg_block~193_regout\,
	combout => \reg_block~410_combout\);

-- Location: LCCOMB_X35_Y22_N8
\reg_block~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~411_combout\ = (\AddrA~combout\(0) & ((\reg_block~410_combout\ & (\reg_block~289_regout\)) # (!\reg_block~410_combout\ & ((\reg_block~225_regout\))))) # (!\AddrA~combout\(0) & (((\reg_block~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~289_regout\,
	datac => \reg_block~225_regout\,
	datad => \reg_block~410_combout\,
	combout => \reg_block~411_combout\);

-- Location: LCCOMB_X35_Y22_N12
\RegA~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~30_combout\ = (\reg_block~409_combout\ & ((\RegA~0_combout\) # ((\reg_block~411_combout\ & \AddrA~combout\(2))))) # (!\reg_block~409_combout\ & (((\reg_block~411_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~409_combout\,
	datab => \RegA~0_combout\,
	datac => \reg_block~411_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~30_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[30]~I\ : cycloneii_io
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
	padio => ww_D_in(30),
	combout => \D_in~combout\(30));

-- Location: LCFF_X35_Y23_N9
\reg_block~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~162_regout\);

-- Location: LCFF_X35_Y23_N31
\reg_block~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~130_regout\);

-- Location: LCCOMB_X35_Y23_N30
\reg_block~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~413_combout\ = (\reg_block~412_combout\ & ((\reg_block~162_regout\) # ((!\AddrA~combout\(1))))) # (!\reg_block~412_combout\ & (((\reg_block~130_regout\ & \AddrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~412_combout\,
	datab => \reg_block~162_regout\,
	datac => \reg_block~130_regout\,
	datad => \AddrA~combout\(1),
	combout => \reg_block~413_combout\);

-- Location: LCFF_X36_Y22_N9
\reg_block~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~258_regout\);

-- Location: LCCOMB_X36_Y22_N8
\reg_block~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~414_combout\ = (\AddrA~combout\(1) & (((\reg_block~258_regout\) # (\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & (\reg_block~194_regout\ & ((!\AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~194_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~258_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~414_combout\);

-- Location: LCFF_X35_Y22_N31
\reg_block~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~226_regout\);

-- Location: LCCOMB_X35_Y22_N30
\reg_block~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~415_combout\ = (\reg_block~414_combout\ & ((\reg_block~290_regout\) # ((!\AddrA~combout\(0))))) # (!\reg_block~414_combout\ & (((\reg_block~226_regout\ & \AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~290_regout\,
	datab => \reg_block~414_combout\,
	datac => \reg_block~226_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~415_combout\);

-- Location: LCCOMB_X35_Y23_N26
\RegA~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~31_combout\ = (\reg_block~413_combout\ & ((\RegA~0_combout\) # ((\reg_block~415_combout\ & \AddrA~combout\(2))))) # (!\reg_block~413_combout\ & (((\reg_block~415_combout\ & \AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~413_combout\,
	datab => \RegA~0_combout\,
	datac => \reg_block~415_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~31_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_in[31]~I\ : cycloneii_io
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
	padio => ww_D_in(31),
	combout => \D_in~combout\(31));

-- Location: LCFF_X36_Y22_N29
\reg_block~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~259_regout\);

-- Location: LCCOMB_X36_Y22_N28
\reg_block~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~418_combout\ = (\AddrA~combout\(1) & (((\reg_block~259_regout\) # (\AddrA~combout\(0))))) # (!\AddrA~combout\(1) & (\reg_block~195_regout\ & ((!\AddrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~195_regout\,
	datab => \AddrA~combout\(1),
	datac => \reg_block~259_regout\,
	datad => \AddrA~combout\(0),
	combout => \reg_block~418_combout\);

-- Location: LCFF_X35_Y22_N19
\reg_block~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~227_regout\);

-- Location: LCFF_X35_Y22_N29
\reg_block~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~291_regout\);

-- Location: LCCOMB_X35_Y22_N18
\reg_block~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~419_combout\ = (\AddrA~combout\(0) & ((\reg_block~418_combout\ & ((\reg_block~291_regout\))) # (!\reg_block~418_combout\ & (\reg_block~227_regout\)))) # (!\AddrA~combout\(0) & (\reg_block~418_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \reg_block~418_combout\,
	datac => \reg_block~227_regout\,
	datad => \reg_block~291_regout\,
	combout => \reg_block~419_combout\);

-- Location: LCFF_X35_Y21_N5
\reg_block~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~99_regout\);

-- Location: LCFF_X35_Y21_N15
\reg_block~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~67_regout\);

-- Location: LCCOMB_X35_Y21_N4
\reg_block~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~416_combout\ = (\AddrA~combout\(0) & ((\AddrA~combout\(1)) # ((\reg_block~99_regout\)))) # (!\AddrA~combout\(0) & (!\AddrA~combout\(1) & ((\reg_block~67_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(0),
	datab => \AddrA~combout\(1),
	datac => \reg_block~99_regout\,
	datad => \reg_block~67_regout\,
	combout => \reg_block~416_combout\);

-- Location: LCFF_X34_Y21_N29
\reg_block~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~131_regout\);

-- Location: LCFF_X34_Y21_N23
\reg_block~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~163_regout\);

-- Location: LCCOMB_X34_Y21_N28
\reg_block~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~417_combout\ = (\AddrA~combout\(1) & ((\reg_block~416_combout\ & ((\reg_block~163_regout\))) # (!\reg_block~416_combout\ & (\reg_block~131_regout\)))) # (!\AddrA~combout\(1) & (\reg_block~416_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrA~combout\(1),
	datab => \reg_block~416_combout\,
	datac => \reg_block~131_regout\,
	datad => \reg_block~163_regout\,
	combout => \reg_block~417_combout\);

-- Location: LCCOMB_X34_Y21_N8
\RegA~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegA~32_combout\ = (\RegA~0_combout\ & ((\reg_block~417_combout\) # ((\reg_block~419_combout\ & \AddrA~combout\(2))))) # (!\RegA~0_combout\ & (\reg_block~419_combout\ & ((\AddrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA~0_combout\,
	datab => \reg_block~419_combout\,
	datac => \reg_block~417_combout\,
	datad => \AddrA~combout\(2),
	combout => \RegA~32_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrB[1]~I\ : cycloneii_io
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
	padio => ww_AddrB(1),
	combout => \AddrB~combout\(1));

-- Location: LCFF_X33_Y20_N11
\reg_block~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(0),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~36_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrB[0]~I\ : cycloneii_io
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
	padio => ww_AddrB(0),
	combout => \AddrB~combout\(0));

-- Location: LCCOMB_X33_Y20_N10
\reg_block~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~420_combout\ = (\AddrB~combout\(1) & (((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & ((\AddrB~combout\(0) & (\reg_block~68_regout\)) # (!\AddrB~combout\(0) & ((\reg_block~36_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~68_regout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~36_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~420_combout\);

-- Location: LCCOMB_X34_Y21_N10
\reg_block~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~421_combout\ = (\AddrB~combout\(1) & ((\reg_block~420_combout\ & ((\reg_block~132_regout\))) # (!\reg_block~420_combout\ & (\reg_block~100_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~100_regout\,
	datac => \reg_block~132_regout\,
	datad => \reg_block~420_combout\,
	combout => \reg_block~421_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrB[3]~I\ : cycloneii_io
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
	padio => ww_AddrB(3),
	combout => \AddrB~combout\(3));

-- Location: LCCOMB_X32_Y23_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\AddrB~combout\(2) & (!\AddrB~combout\(0) & (!\AddrB~combout\(3) & !\AddrB~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \AddrB~combout\(0),
	datac => \AddrB~combout\(3),
	datad => \AddrB~combout\(1),
	combout => \Equal1~0_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrB[2]~I\ : cycloneii_io
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
	padio => ww_AddrB(2),
	combout => \AddrB~combout\(2));

-- Location: LCCOMB_X32_Y23_N18
\RegB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~0_combout\ = (!\AddrB~combout\(2) & ((\AddrB~combout\(4)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(4),
	datab => \Equal1~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~0_combout\);

-- Location: LCCOMB_X33_Y19_N18
\reg_block~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~423_combout\ = (\reg_block~422_combout\ & (((\reg_block~260_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~422_combout\ & (\reg_block~196_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~422_combout\,
	datab => \reg_block~196_regout\,
	datac => \reg_block~260_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~423_combout\);

-- Location: LCCOMB_X34_Y21_N2
\RegB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~1_combout\ = (\reg_block~421_combout\ & ((\RegB~0_combout\) # ((\reg_block~423_combout\ & \AddrB~combout\(2))))) # (!\reg_block~421_combout\ & (((\reg_block~423_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~421_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~423_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~1_combout\);

-- Location: LCCOMB_X33_Y19_N22
\reg_block~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~427_combout\ = (\reg_block~426_combout\ & (((\reg_block~261_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~426_combout\ & (\AddrB~combout\(0) & ((\reg_block~197_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~426_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~261_regout\,
	datad => \reg_block~197_regout\,
	combout => \reg_block~427_combout\);

-- Location: LCFF_X33_Y20_N29
\reg_block~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~69_regout\);

-- Location: LCFF_X33_Y20_N31
\reg_block~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(1),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~37_regout\);

-- Location: LCCOMB_X33_Y20_N30
\reg_block~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~424_combout\ = (\AddrB~combout\(0) & ((\reg_block~69_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~37_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~69_regout\,
	datac => \reg_block~37_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~424_combout\);

-- Location: LCCOMB_X32_Y20_N18
\reg_block~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~425_combout\ = (\reg_block~424_combout\ & (((\reg_block~133_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~424_combout\ & (\reg_block~101_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~101_regout\,
	datab => \reg_block~424_combout\,
	datac => \reg_block~133_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~425_combout\);

-- Location: LCCOMB_X32_Y20_N26
\RegB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~2_combout\ = (\reg_block~427_combout\ & ((\AddrB~combout\(2)) # ((\RegB~0_combout\ & \reg_block~425_combout\)))) # (!\reg_block~427_combout\ & (\RegB~0_combout\ & (\reg_block~425_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~427_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~425_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~2_combout\);

-- Location: LCFF_X32_Y20_N9
\reg_block~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~134_regout\);

-- Location: LCCOMB_X32_Y20_N8
\reg_block~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~429_combout\ = (\reg_block~428_combout\ & (((\reg_block~134_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~428_combout\ & (\reg_block~102_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~428_combout\,
	datab => \reg_block~102_regout\,
	datac => \reg_block~134_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~429_combout\);

-- Location: LCCOMB_X34_Y19_N10
\reg_block~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~430_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~230_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~166_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~230_regout\,
	datac => \reg_block~166_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~430_combout\);

-- Location: LCFF_X33_Y19_N11
\reg_block~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(2),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~262_regout\);

-- Location: LCCOMB_X33_Y19_N10
\reg_block~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~431_combout\ = (\AddrB~combout\(0) & ((\reg_block~430_combout\ & (\reg_block~262_regout\)) # (!\reg_block~430_combout\ & ((\reg_block~198_regout\))))) # (!\AddrB~combout\(0) & (\reg_block~430_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~430_combout\,
	datac => \reg_block~262_regout\,
	datad => \reg_block~198_regout\,
	combout => \reg_block~431_combout\);

-- Location: LCCOMB_X32_Y20_N28
\RegB~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~3_combout\ = (\RegB~0_combout\ & ((\reg_block~429_combout\) # ((\reg_block~431_combout\ & \AddrB~combout\(2))))) # (!\RegB~0_combout\ & (((\reg_block~431_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~429_combout\,
	datac => \reg_block~431_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~3_combout\);

-- Location: LCFF_X34_Y19_N23
\reg_block~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~167_regout\);

-- Location: LCFF_X34_Y19_N13
\reg_block~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~231_regout\);

-- Location: LCCOMB_X34_Y19_N22
\reg_block~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~434_combout\ = (\AddrB~combout\(0) & (\AddrB~combout\(1))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & ((\reg_block~231_regout\))) # (!\AddrB~combout\(1) & (\reg_block~167_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \AddrB~combout\(1),
	datac => \reg_block~167_regout\,
	datad => \reg_block~231_regout\,
	combout => \reg_block~434_combout\);

-- Location: LCCOMB_X37_Y19_N2
\reg_block~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~435_combout\ = (\reg_block~434_combout\ & (((\reg_block~263_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~434_combout\ & (\reg_block~199_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~199_regout\,
	datab => \reg_block~434_combout\,
	datac => \reg_block~263_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~435_combout\);

-- Location: LCFF_X33_Y20_N7
\reg_block~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(3),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~39_regout\);

-- Location: LCCOMB_X33_Y20_N6
\reg_block~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~432_combout\ = (\AddrB~combout\(0) & ((\reg_block~71_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~39_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~71_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~39_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~432_combout\);

-- Location: LCCOMB_X38_Y20_N26
\reg_block~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~433_combout\ = (\AddrB~combout\(1) & ((\reg_block~432_combout\ & ((\reg_block~135_regout\))) # (!\reg_block~432_combout\ & (\reg_block~103_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~103_regout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~135_regout\,
	datad => \reg_block~432_combout\,
	combout => \reg_block~433_combout\);

-- Location: LCCOMB_X37_Y19_N18
\RegB~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~4_combout\ = (\AddrB~combout\(2) & ((\reg_block~435_combout\) # ((\reg_block~433_combout\ & \RegB~0_combout\)))) # (!\AddrB~combout\(2) & (((\reg_block~433_combout\ & \RegB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \reg_block~435_combout\,
	datac => \reg_block~433_combout\,
	datad => \RegB~0_combout\,
	combout => \RegB~4_combout\);

-- Location: LCCOMB_X38_Y20_N22
\reg_block~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~437_combout\ = (\reg_block~436_combout\ & (((\reg_block~136_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~436_combout\ & (\reg_block~104_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~436_combout\,
	datab => \reg_block~104_regout\,
	datac => \reg_block~136_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~437_combout\);

-- Location: LCFF_X37_Y19_N25
\reg_block~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(4),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~264_regout\);

-- Location: LCCOMB_X37_Y19_N24
\reg_block~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~439_combout\ = (\reg_block~438_combout\ & (((\reg_block~264_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~438_combout\ & (\reg_block~200_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~438_combout\,
	datab => \reg_block~200_regout\,
	datac => \reg_block~264_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~439_combout\);

-- Location: LCCOMB_X37_Y19_N28
\RegB~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~5_combout\ = (\reg_block~437_combout\ & ((\RegB~0_combout\) # ((\reg_block~439_combout\ & \AddrB~combout\(2))))) # (!\reg_block~437_combout\ & (((\reg_block~439_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~437_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~439_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~5_combout\);

-- Location: LCCOMB_X34_Y19_N14
\reg_block~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~442_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~233_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~169_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~233_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~169_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~442_combout\);

-- Location: LCFF_X33_Y19_N7
\reg_block~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~265_regout\);

-- Location: LCCOMB_X33_Y19_N6
\reg_block~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~443_combout\ = (\reg_block~442_combout\ & (((\reg_block~265_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~442_combout\ & (\reg_block~201_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~201_regout\,
	datab => \reg_block~442_combout\,
	datac => \reg_block~265_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~443_combout\);

-- Location: LCFF_X33_Y20_N15
\reg_block~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(5),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~41_regout\);

-- Location: LCCOMB_X33_Y20_N14
\reg_block~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~440_combout\ = (\AddrB~combout\(1) & (((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & ((\AddrB~combout\(0) & (\reg_block~73_regout\)) # (!\AddrB~combout\(0) & ((\reg_block~41_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~73_regout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~41_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~440_combout\);

-- Location: LCCOMB_X33_Y18_N30
\reg_block~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~441_combout\ = (\AddrB~combout\(1) & ((\reg_block~440_combout\ & ((\reg_block~137_regout\))) # (!\reg_block~440_combout\ & (\reg_block~105_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~440_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~105_regout\,
	datac => \reg_block~137_regout\,
	datad => \reg_block~440_combout\,
	combout => \reg_block~441_combout\);

-- Location: LCCOMB_X33_Y18_N20
\RegB~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~6_combout\ = (\reg_block~443_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~441_combout\ & \RegB~0_combout\)))) # (!\reg_block~443_combout\ & (\reg_block~441_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~443_combout\,
	datab => \reg_block~441_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~6_combout\);

-- Location: LCCOMB_X33_Y19_N2
\reg_block~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~447_combout\ = (\reg_block~446_combout\ & (((\reg_block~266_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~446_combout\ & (\AddrB~combout\(0) & ((\reg_block~202_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~446_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~266_regout\,
	datad => \reg_block~202_regout\,
	combout => \reg_block~447_combout\);

-- Location: LCFF_X33_Y20_N1
\reg_block~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~74_regout\);

-- Location: LCFF_X33_Y20_N3
\reg_block~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(6),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~42_regout\);

-- Location: LCCOMB_X33_Y20_N2
\reg_block~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~444_combout\ = (\AddrB~combout\(0) & ((\reg_block~74_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~42_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~74_regout\,
	datac => \reg_block~42_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~444_combout\);

-- Location: LCCOMB_X33_Y21_N26
\reg_block~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~445_combout\ = (\reg_block~444_combout\ & (((\reg_block~138_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~444_combout\ & (\reg_block~106_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~106_regout\,
	datab => \reg_block~444_combout\,
	datac => \reg_block~138_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~445_combout\);

-- Location: LCCOMB_X33_Y21_N10
\RegB~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~7_combout\ = (\reg_block~447_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~445_combout\ & \RegB~0_combout\)))) # (!\reg_block~447_combout\ & (\reg_block~445_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~447_combout\,
	datab => \reg_block~445_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~7_combout\);

-- Location: LCCOMB_X34_Y19_N30
\reg_block~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~450_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~235_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~171_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~235_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~171_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~450_combout\);

-- Location: LCCOMB_X33_Y19_N14
\reg_block~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~451_combout\ = (\AddrB~combout\(0) & ((\reg_block~450_combout\ & ((\reg_block~267_regout\))) # (!\reg_block~450_combout\ & (\reg_block~203_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~450_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~203_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~267_regout\,
	datad => \reg_block~450_combout\,
	combout => \reg_block~451_combout\);

-- Location: LCCOMB_X33_Y20_N22
\reg_block~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~448_combout\ = (\AddrB~combout\(0) & ((\reg_block~75_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~43_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~75_regout\,
	datac => \reg_block~43_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~448_combout\);

-- Location: LCFF_X33_Y21_N9
\reg_block~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(7),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~139_regout\);

-- Location: LCCOMB_X33_Y21_N8
\reg_block~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~449_combout\ = (\reg_block~448_combout\ & (((\reg_block~139_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~448_combout\ & (\reg_block~107_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~107_regout\,
	datab => \reg_block~448_combout\,
	datac => \reg_block~139_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~449_combout\);

-- Location: LCCOMB_X33_Y21_N12
\RegB~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~8_combout\ = (\reg_block~451_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~449_combout\ & \RegB~0_combout\)))) # (!\reg_block~451_combout\ & (\reg_block~449_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~451_combout\,
	datab => \reg_block~449_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~8_combout\);

-- Location: LCFF_X37_Y21_N9
\reg_block~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~76_regout\);

-- Location: LCFF_X37_Y21_N27
\reg_block~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(8),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~44_regout\);

-- Location: LCCOMB_X37_Y21_N26
\reg_block~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~452_combout\ = (\AddrB~combout\(0) & ((\reg_block~76_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~44_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~76_regout\,
	datac => \reg_block~44_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~452_combout\);

-- Location: LCCOMB_X37_Y18_N10
\reg_block~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~453_combout\ = (\AddrB~combout\(1) & ((\reg_block~452_combout\ & ((\reg_block~140_regout\))) # (!\reg_block~452_combout\ & (\reg_block~108_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~108_regout\,
	datac => \reg_block~140_regout\,
	datad => \reg_block~452_combout\,
	combout => \reg_block~453_combout\);

-- Location: LCCOMB_X36_Y20_N26
\reg_block~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~454_combout\ = (\AddrB~combout\(1) & ((\reg_block~236_regout\) # ((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & (((\reg_block~172_regout\ & !\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~236_regout\,
	datac => \reg_block~172_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~454_combout\);

-- Location: LCCOMB_X33_Y19_N26
\reg_block~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~455_combout\ = (\AddrB~combout\(0) & ((\reg_block~454_combout\ & ((\reg_block~268_regout\))) # (!\reg_block~454_combout\ & (\reg_block~204_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~204_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~268_regout\,
	datad => \reg_block~454_combout\,
	combout => \reg_block~455_combout\);

-- Location: LCCOMB_X37_Y18_N18
\RegB~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~9_combout\ = (\reg_block~453_combout\ & ((\RegB~0_combout\) # ((\AddrB~combout\(2) & \reg_block~455_combout\)))) # (!\reg_block~453_combout\ & (((\AddrB~combout\(2) & \reg_block~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~453_combout\,
	datab => \RegB~0_combout\,
	datac => \AddrB~combout\(2),
	datad => \reg_block~455_combout\,
	combout => \RegB~9_combout\);

-- Location: LCFF_X36_Y20_N15
\reg_block~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~173_regout\);

-- Location: LCFF_X36_Y20_N29
\reg_block~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~237_regout\);

-- Location: LCCOMB_X36_Y20_N14
\reg_block~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~458_combout\ = (\AddrB~combout\(1) & ((\AddrB~combout\(0)) # ((\reg_block~237_regout\)))) # (!\AddrB~combout\(1) & (!\AddrB~combout\(0) & (\reg_block~173_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \AddrB~combout\(0),
	datac => \reg_block~173_regout\,
	datad => \reg_block~237_regout\,
	combout => \reg_block~458_combout\);

-- Location: LCCOMB_X37_Y20_N18
\reg_block~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~459_combout\ = (\AddrB~combout\(0) & ((\reg_block~458_combout\ & ((\reg_block~269_regout\))) # (!\reg_block~458_combout\ & (\reg_block~205_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~205_regout\,
	datac => \reg_block~269_regout\,
	datad => \reg_block~458_combout\,
	combout => \reg_block~459_combout\);

-- Location: LCCOMB_X37_Y21_N6
\reg_block~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~456_combout\ = (\AddrB~combout\(0) & ((\reg_block~77_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~45_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~77_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~45_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~456_combout\);

-- Location: LCFF_X38_Y20_N11
\reg_block~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(9),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~141_regout\);

-- Location: LCCOMB_X38_Y20_N10
\reg_block~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~457_combout\ = (\reg_block~456_combout\ & (((\reg_block~141_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~456_combout\ & (\reg_block~109_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~109_regout\,
	datab => \reg_block~456_combout\,
	datac => \reg_block~141_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~457_combout\);

-- Location: LCCOMB_X38_Y20_N8
\RegB~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~10_combout\ = (\AddrB~combout\(2) & ((\reg_block~459_combout\) # ((\RegB~0_combout\ & \reg_block~457_combout\)))) # (!\AddrB~combout\(2) & (((\RegB~0_combout\ & \reg_block~457_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \reg_block~459_combout\,
	datac => \RegB~0_combout\,
	datad => \reg_block~457_combout\,
	combout => \RegB~10_combout\);

-- Location: LCFF_X36_Y20_N9
\reg_block~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~238_regout\);

-- Location: LCFF_X36_Y20_N3
\reg_block~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(10),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~174_regout\);

-- Location: LCCOMB_X36_Y20_N2
\reg_block~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~462_combout\ = (\AddrB~combout\(1) & ((\reg_block~238_regout\) # ((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & (((\reg_block~174_regout\ & !\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~238_regout\,
	datac => \reg_block~174_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~462_combout\);

-- Location: LCCOMB_X37_Y20_N14
\reg_block~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~463_combout\ = (\AddrB~combout\(0) & ((\reg_block~462_combout\ & ((\reg_block~270_regout\))) # (!\reg_block~462_combout\ & (\reg_block~206_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~206_regout\,
	datac => \reg_block~270_regout\,
	datad => \reg_block~462_combout\,
	combout => \reg_block~463_combout\);

-- Location: LCCOMB_X38_Y20_N16
\reg_block~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~461_combout\ = (\reg_block~460_combout\ & (((\reg_block~142_regout\)) # (!\AddrB~combout\(1)))) # (!\reg_block~460_combout\ & (\AddrB~combout\(1) & ((\reg_block~110_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~460_combout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~142_regout\,
	datad => \reg_block~110_regout\,
	combout => \reg_block~461_combout\);

-- Location: LCCOMB_X37_Y20_N20
\RegB~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~11_combout\ = (\reg_block~463_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~461_combout\ & \RegB~0_combout\)))) # (!\reg_block~463_combout\ & (((\reg_block~461_combout\ & \RegB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~463_combout\,
	datab => \AddrB~combout\(2),
	datac => \reg_block~461_combout\,
	datad => \RegB~0_combout\,
	combout => \RegB~11_combout\);

-- Location: LCCOMB_X35_Y20_N26
\reg_block~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~465_combout\ = (\reg_block~464_combout\ & (((\reg_block~143_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~464_combout\ & (\reg_block~111_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~464_combout\,
	datab => \reg_block~111_regout\,
	datac => \reg_block~143_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~465_combout\);

-- Location: LCFF_X36_Y20_N23
\reg_block~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(11),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~175_regout\);

-- Location: LCCOMB_X36_Y20_N22
\reg_block~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~466_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~239_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~175_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~239_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~175_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~466_combout\);

-- Location: LCCOMB_X37_Y20_N26
\reg_block~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~467_combout\ = (\reg_block~466_combout\ & (((\reg_block~271_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~466_combout\ & (\reg_block~207_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~207_regout\,
	datab => \reg_block~466_combout\,
	datac => \reg_block~271_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~467_combout\);

-- Location: LCCOMB_X37_Y20_N22
\RegB~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~12_combout\ = (\RegB~0_combout\ & ((\reg_block~465_combout\) # ((\AddrB~combout\(2) & \reg_block~467_combout\)))) # (!\RegB~0_combout\ & (((\AddrB~combout\(2) & \reg_block~467_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~465_combout\,
	datac => \AddrB~combout\(2),
	datad => \reg_block~467_combout\,
	combout => \RegB~12_combout\);

-- Location: LCFF_X35_Y20_N7
\reg_block~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~144_regout\);

-- Location: LCCOMB_X37_Y21_N18
\reg_block~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~468_combout\ = (\AddrB~combout\(0) & ((\reg_block~80_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~48_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~80_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~48_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~468_combout\);

-- Location: LCCOMB_X35_Y20_N6
\reg_block~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~469_combout\ = (\AddrB~combout\(1) & ((\reg_block~468_combout\ & ((\reg_block~144_regout\))) # (!\reg_block~468_combout\ & (\reg_block~112_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~468_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~112_regout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~144_regout\,
	datad => \reg_block~468_combout\,
	combout => \reg_block~469_combout\);

-- Location: LCCOMB_X36_Y20_N18
\reg_block~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~470_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~240_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~176_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~240_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~176_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~470_combout\);

-- Location: LCFF_X37_Y20_N25
\reg_block~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(12),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~272_regout\);

-- Location: LCCOMB_X37_Y20_N24
\reg_block~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~471_combout\ = (\AddrB~combout\(0) & ((\reg_block~470_combout\ & (\reg_block~272_regout\)) # (!\reg_block~470_combout\ & ((\reg_block~208_regout\))))) # (!\AddrB~combout\(0) & (\reg_block~470_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~470_combout\,
	datac => \reg_block~272_regout\,
	datad => \reg_block~208_regout\,
	combout => \reg_block~471_combout\);

-- Location: LCCOMB_X37_Y20_N8
\RegB~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~13_combout\ = (\reg_block~469_combout\ & ((\RegB~0_combout\) # ((\reg_block~471_combout\ & \AddrB~combout\(2))))) # (!\reg_block~469_combout\ & (\reg_block~471_combout\ & (\AddrB~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~469_combout\,
	datab => \reg_block~471_combout\,
	datac => \AddrB~combout\(2),
	datad => \RegB~0_combout\,
	combout => \RegB~13_combout\);

-- Location: LCCOMB_X37_Y21_N30
\reg_block~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~472_combout\ = (\AddrB~combout\(0) & ((\reg_block~81_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~49_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~81_regout\,
	datac => \reg_block~49_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~472_combout\);

-- Location: LCFF_X35_Y23_N19
\reg_block~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(13),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~145_regout\);

-- Location: LCCOMB_X35_Y23_N18
\reg_block~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~473_combout\ = (\reg_block~472_combout\ & (((\reg_block~145_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~472_combout\ & (\reg_block~113_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~113_regout\,
	datab => \reg_block~472_combout\,
	datac => \reg_block~145_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~473_combout\);

-- Location: LCCOMB_X35_Y19_N2
\reg_block~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~475_combout\ = (\reg_block~474_combout\ & (((\reg_block~273_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~474_combout\ & (\reg_block~209_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~474_combout\,
	datab => \reg_block~209_regout\,
	datac => \reg_block~273_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~475_combout\);

-- Location: LCCOMB_X36_Y23_N8
\RegB~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~14_combout\ = (\reg_block~473_combout\ & ((\RegB~0_combout\) # ((\reg_block~475_combout\ & \AddrB~combout\(2))))) # (!\reg_block~473_combout\ & (((\reg_block~475_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~473_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~475_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~14_combout\);

-- Location: LCFF_X36_Y20_N11
\reg_block~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~178_regout\);

-- Location: LCCOMB_X36_Y20_N10
\reg_block~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~478_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~242_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~178_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~242_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~178_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~478_combout\);

-- Location: LCCOMB_X35_Y19_N30
\reg_block~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~479_combout\ = (\AddrB~combout\(0) & ((\reg_block~478_combout\ & ((\reg_block~274_regout\))) # (!\reg_block~478_combout\ & (\reg_block~210_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~478_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~210_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~274_regout\,
	datad => \reg_block~478_combout\,
	combout => \reg_block~479_combout\);

-- Location: LCFF_X35_Y23_N17
\reg_block~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(14),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~146_regout\);

-- Location: LCCOMB_X35_Y23_N16
\reg_block~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~477_combout\ = (\reg_block~476_combout\ & (((\reg_block~146_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~476_combout\ & (\reg_block~114_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~476_combout\,
	datab => \reg_block~114_regout\,
	datac => \reg_block~146_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~477_combout\);

-- Location: LCCOMB_X36_Y23_N18
\RegB~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~15_combout\ = (\AddrB~combout\(2) & ((\reg_block~479_combout\) # ((\RegB~0_combout\ & \reg_block~477_combout\)))) # (!\AddrB~combout\(2) & (\RegB~0_combout\ & ((\reg_block~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \RegB~0_combout\,
	datac => \reg_block~479_combout\,
	datad => \reg_block~477_combout\,
	combout => \RegB~15_combout\);

-- Location: LCFF_X36_Y20_N7
\reg_block~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~179_regout\);

-- Location: LCCOMB_X36_Y20_N6
\reg_block~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~482_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~243_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~179_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~243_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~179_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~482_combout\);

-- Location: LCCOMB_X35_Y19_N18
\reg_block~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~483_combout\ = (\AddrB~combout\(0) & ((\reg_block~482_combout\ & ((\reg_block~275_regout\))) # (!\reg_block~482_combout\ & (\reg_block~211_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~211_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~275_regout\,
	datad => \reg_block~482_combout\,
	combout => \reg_block~483_combout\);

-- Location: LCFF_X34_Y20_N9
\reg_block~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~83_regout\);

-- Location: LCFF_X34_Y20_N19
\reg_block~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(15),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~51_regout\);

-- Location: LCCOMB_X34_Y20_N18
\reg_block~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~480_combout\ = (\AddrB~combout\(0) & ((\reg_block~83_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~51_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~83_regout\,
	datac => \reg_block~51_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~480_combout\);

-- Location: LCCOMB_X35_Y20_N18
\reg_block~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~481_combout\ = (\reg_block~480_combout\ & (((\reg_block~147_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~480_combout\ & (\reg_block~115_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~115_regout\,
	datab => \reg_block~480_combout\,
	datac => \reg_block~147_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~481_combout\);

-- Location: LCCOMB_X35_Y19_N24
\RegB~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~16_combout\ = (\RegB~0_combout\ & ((\reg_block~481_combout\) # ((\reg_block~483_combout\ & \AddrB~combout\(2))))) # (!\RegB~0_combout\ & (\reg_block~483_combout\ & ((\AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~483_combout\,
	datac => \reg_block~481_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~16_combout\);

-- Location: LCFF_X34_Y20_N23
\reg_block~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(16),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~52_regout\);

-- Location: LCCOMB_X34_Y20_N22
\reg_block~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~484_combout\ = (\AddrB~combout\(0) & ((\reg_block~84_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~52_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~84_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~52_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~484_combout\);

-- Location: LCCOMB_X33_Y18_N28
\reg_block~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~485_combout\ = (\AddrB~combout\(1) & ((\reg_block~484_combout\ & ((\reg_block~148_regout\))) # (!\reg_block~484_combout\ & (\reg_block~116_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~484_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~116_regout\,
	datac => \reg_block~148_regout\,
	datad => \reg_block~484_combout\,
	combout => \reg_block~485_combout\);

-- Location: LCCOMB_X35_Y19_N0
\reg_block~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~487_combout\ = (\reg_block~486_combout\ & (((\reg_block~276_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~486_combout\ & (\reg_block~212_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~486_combout\,
	datab => \reg_block~212_regout\,
	datac => \reg_block~276_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~487_combout\);

-- Location: LCCOMB_X33_Y18_N22
\RegB~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~17_combout\ = (\RegB~0_combout\ & ((\reg_block~485_combout\) # ((\reg_block~487_combout\ & \AddrB~combout\(2))))) # (!\RegB~0_combout\ & (((\reg_block~487_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~485_combout\,
	datac => \reg_block~487_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~17_combout\);

-- Location: LCFF_X36_Y19_N15
\reg_block~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~181_regout\);

-- Location: LCFF_X36_Y19_N13
\reg_block~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(17),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~245_regout\);

-- Location: LCCOMB_X36_Y19_N14
\reg_block~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~490_combout\ = (\AddrB~combout\(0) & (\AddrB~combout\(1))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & ((\reg_block~245_regout\))) # (!\AddrB~combout\(1) & (\reg_block~181_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \AddrB~combout\(1),
	datac => \reg_block~181_regout\,
	datad => \reg_block~245_regout\,
	combout => \reg_block~490_combout\);

-- Location: LCCOMB_X36_Y18_N18
\reg_block~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~491_combout\ = (\AddrB~combout\(0) & ((\reg_block~490_combout\ & ((\reg_block~277_regout\))) # (!\reg_block~490_combout\ & (\reg_block~213_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~490_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~213_regout\,
	datac => \reg_block~277_regout\,
	datad => \reg_block~490_combout\,
	combout => \reg_block~491_combout\);

-- Location: LCCOMB_X37_Y18_N24
\reg_block~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~489_combout\ = (\reg_block~488_combout\ & (((\reg_block~149_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~488_combout\ & (\reg_block~117_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~488_combout\,
	datab => \reg_block~117_regout\,
	datac => \reg_block~149_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~489_combout\);

-- Location: LCCOMB_X37_Y18_N20
\RegB~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~18_combout\ = (\AddrB~combout\(2) & ((\reg_block~491_combout\) # ((\reg_block~489_combout\ & \RegB~0_combout\)))) # (!\AddrB~combout\(2) & (((\reg_block~489_combout\ & \RegB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \reg_block~491_combout\,
	datac => \reg_block~489_combout\,
	datad => \RegB~0_combout\,
	combout => \RegB~18_combout\);

-- Location: LCCOMB_X36_Y19_N10
\reg_block~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~494_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~246_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~182_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~246_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~182_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~494_combout\);

-- Location: LCCOMB_X33_Y19_N30
\reg_block~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~495_combout\ = (\AddrB~combout\(0) & ((\reg_block~494_combout\ & ((\reg_block~278_regout\))) # (!\reg_block~494_combout\ & (\reg_block~214_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~214_regout\,
	datac => \reg_block~278_regout\,
	datad => \reg_block~494_combout\,
	combout => \reg_block~495_combout\);

-- Location: LCCOMB_X34_Y20_N6
\reg_block~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~492_combout\ = (\AddrB~combout\(0) & ((\reg_block~86_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~54_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~86_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~54_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~492_combout\);

-- Location: LCFF_X33_Y18_N1
\reg_block~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(18),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~150_regout\);

-- Location: LCCOMB_X33_Y18_N0
\reg_block~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~493_combout\ = (\AddrB~combout\(1) & ((\reg_block~492_combout\ & (\reg_block~150_regout\)) # (!\reg_block~492_combout\ & ((\reg_block~118_regout\))))) # (!\AddrB~combout\(1) & (\reg_block~492_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~492_combout\,
	datac => \reg_block~150_regout\,
	datad => \reg_block~118_regout\,
	combout => \reg_block~493_combout\);

-- Location: LCCOMB_X33_Y18_N16
\RegB~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~19_combout\ = (\reg_block~495_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~493_combout\ & \RegB~0_combout\)))) # (!\reg_block~495_combout\ & (\reg_block~493_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~495_combout\,
	datab => \reg_block~493_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~19_combout\);

-- Location: LCCOMB_X37_Y21_N14
\reg_block~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~496_combout\ = (\AddrB~combout\(0) & ((\reg_block~87_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~55_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~87_regout\,
	datac => \reg_block~55_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~496_combout\);

-- Location: LCCOMB_X38_Y20_N30
\reg_block~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~497_combout\ = (\reg_block~496_combout\ & (((\reg_block~151_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~496_combout\ & (\reg_block~119_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~119_regout\,
	datab => \reg_block~496_combout\,
	datac => \reg_block~151_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~497_combout\);

-- Location: LCCOMB_X37_Y19_N30
\reg_block~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~499_combout\ = (\reg_block~498_combout\ & (((\reg_block~279_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~498_combout\ & (\reg_block~215_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~498_combout\,
	datab => \reg_block~215_regout\,
	datac => \reg_block~279_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~499_combout\);

-- Location: LCCOMB_X37_Y19_N14
\RegB~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~20_combout\ = (\AddrB~combout\(2) & ((\reg_block~499_combout\) # ((\RegB~0_combout\ & \reg_block~497_combout\)))) # (!\AddrB~combout\(2) & (\RegB~0_combout\ & (\reg_block~497_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \RegB~0_combout\,
	datac => \reg_block~497_combout\,
	datad => \reg_block~499_combout\,
	combout => \RegB~20_combout\);

-- Location: LCFF_X35_Y19_N23
\reg_block~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~280_regout\);

-- Location: LCCOMB_X35_Y19_N22
\reg_block~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~503_combout\ = (\reg_block~502_combout\ & (((\reg_block~280_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~502_combout\ & (\AddrB~combout\(0) & ((\reg_block~216_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~502_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~280_regout\,
	datad => \reg_block~216_regout\,
	combout => \reg_block~503_combout\);

-- Location: LCFF_X35_Y23_N7
\reg_block~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(20),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~152_regout\);

-- Location: LCCOMB_X35_Y23_N6
\reg_block~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~501_combout\ = (\reg_block~500_combout\ & (((\reg_block~152_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~500_combout\ & (\reg_block~120_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~500_combout\,
	datab => \reg_block~120_regout\,
	datac => \reg_block~152_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~501_combout\);

-- Location: LCCOMB_X36_Y23_N20
\RegB~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~21_combout\ = (\reg_block~503_combout\ & ((\AddrB~combout\(2)) # ((\RegB~0_combout\ & \reg_block~501_combout\)))) # (!\reg_block~503_combout\ & (\RegB~0_combout\ & (\reg_block~501_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~503_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~501_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~21_combout\);

-- Location: LCCOMB_X36_Y18_N30
\reg_block~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~507_combout\ = (\reg_block~506_combout\ & (((\reg_block~281_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~506_combout\ & (\reg_block~217_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~506_combout\,
	datab => \reg_block~217_regout\,
	datac => \reg_block~281_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~507_combout\);

-- Location: LCFF_X34_Y20_N31
\reg_block~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~57_regout\);

-- Location: LCCOMB_X34_Y20_N30
\reg_block~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~504_combout\ = (\AddrB~combout\(0) & ((\reg_block~89_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~57_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~89_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~57_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~504_combout\);

-- Location: LCFF_X37_Y18_N31
\reg_block~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(21),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~153_regout\);

-- Location: LCCOMB_X37_Y18_N30
\reg_block~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~505_combout\ = (\reg_block~504_combout\ & (((\reg_block~153_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~504_combout\ & (\reg_block~121_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~121_regout\,
	datab => \reg_block~504_combout\,
	datac => \reg_block~153_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~505_combout\);

-- Location: LCCOMB_X37_Y18_N6
\RegB~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~22_combout\ = (\reg_block~507_combout\ & ((\AddrB~combout\(2)) # ((\RegB~0_combout\ & \reg_block~505_combout\)))) # (!\reg_block~507_combout\ & (\RegB~0_combout\ & ((\reg_block~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~507_combout\,
	datab => \RegB~0_combout\,
	datac => \AddrB~combout\(2),
	datad => \reg_block~505_combout\,
	combout => \RegB~22_combout\);

-- Location: LCCOMB_X35_Y20_N22
\reg_block~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~509_combout\ = (\reg_block~508_combout\ & (((\reg_block~154_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~508_combout\ & (\reg_block~122_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~508_combout\,
	datab => \reg_block~122_regout\,
	datac => \reg_block~154_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~509_combout\);

-- Location: LCFF_X36_Y18_N27
\reg_block~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(22),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~282_regout\);

-- Location: LCCOMB_X36_Y19_N2
\reg_block~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~510_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~250_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~186_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~250_regout\,
	datac => \reg_block~186_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~510_combout\);

-- Location: LCCOMB_X36_Y18_N26
\reg_block~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~511_combout\ = (\AddrB~combout\(0) & ((\reg_block~510_combout\ & ((\reg_block~282_regout\))) # (!\reg_block~510_combout\ & (\reg_block~218_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~218_regout\,
	datac => \reg_block~282_regout\,
	datad => \reg_block~510_combout\,
	combout => \reg_block~511_combout\);

-- Location: LCCOMB_X36_Y18_N6
\RegB~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~23_combout\ = (\reg_block~509_combout\ & ((\RegB~0_combout\) # ((\reg_block~511_combout\ & \AddrB~combout\(2))))) # (!\reg_block~509_combout\ & (\reg_block~511_combout\ & ((\AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~509_combout\,
	datab => \reg_block~511_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~23_combout\);

-- Location: LCFF_X35_Y20_N11
\reg_block~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~155_regout\);

-- Location: LCCOMB_X35_Y20_N10
\reg_block~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~513_combout\ = (\reg_block~512_combout\ & (((\reg_block~155_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~512_combout\ & (\reg_block~123_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~512_combout\,
	datab => \reg_block~123_regout\,
	datac => \reg_block~155_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~513_combout\);

-- Location: LCCOMB_X36_Y19_N22
\reg_block~514\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~514_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~251_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~187_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~251_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~187_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~514_combout\);

-- Location: LCFF_X36_Y18_N9
\reg_block~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(23),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~283_regout\);

-- Location: LCCOMB_X36_Y18_N8
\reg_block~515\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~515_combout\ = (\AddrB~combout\(0) & ((\reg_block~514_combout\ & (\reg_block~283_regout\)) # (!\reg_block~514_combout\ & ((\reg_block~219_regout\))))) # (!\AddrB~combout\(0) & (\reg_block~514_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~514_combout\,
	datac => \reg_block~283_regout\,
	datad => \reg_block~219_regout\,
	combout => \reg_block~515_combout\);

-- Location: LCCOMB_X36_Y18_N16
\RegB~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~24_combout\ = (\reg_block~513_combout\ & ((\RegB~0_combout\) # ((\reg_block~515_combout\ & \AddrB~combout\(2))))) # (!\reg_block~513_combout\ & (((\reg_block~515_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~513_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~515_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~24_combout\);

-- Location: LCFF_X35_Y21_N11
\reg_block~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(24),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~60_regout\);

-- Location: LCCOMB_X35_Y21_N10
\reg_block~516\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~516_combout\ = (\AddrB~combout\(0) & ((\reg_block~92_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~60_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~92_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~60_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~516_combout\);

-- Location: LCCOMB_X35_Y20_N30
\reg_block~517\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~517_combout\ = (\reg_block~516_combout\ & (((\reg_block~156_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~516_combout\ & (\reg_block~124_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~124_regout\,
	datab => \reg_block~516_combout\,
	datac => \reg_block~156_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~517_combout\);

-- Location: LCCOMB_X36_Y21_N18
\reg_block~519\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~519_combout\ = (\reg_block~518_combout\ & (((\reg_block~284_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~518_combout\ & (\AddrB~combout\(0) & ((\reg_block~220_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~518_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~284_regout\,
	datad => \reg_block~220_regout\,
	combout => \reg_block~519_combout\);

-- Location: LCCOMB_X35_Y20_N28
\RegB~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~25_combout\ = (\AddrB~combout\(2) & ((\reg_block~519_combout\) # ((\reg_block~517_combout\ & \RegB~0_combout\)))) # (!\AddrB~combout\(2) & (\reg_block~517_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(2),
	datab => \reg_block~517_combout\,
	datac => \RegB~0_combout\,
	datad => \reg_block~519_combout\,
	combout => \RegB~25_combout\);

-- Location: LCCOMB_X35_Y20_N2
\reg_block~521\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~521_combout\ = (\reg_block~520_combout\ & (((\reg_block~157_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~520_combout\ & (\reg_block~125_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~520_combout\,
	datab => \reg_block~125_regout\,
	datac => \reg_block~157_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~521_combout\);

-- Location: LCFF_X36_Y22_N5
\reg_block~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~253_regout\);

-- Location: LCFF_X36_Y22_N23
\reg_block~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(25),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~189_regout\);

-- Location: LCCOMB_X36_Y22_N22
\reg_block~522\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~522_combout\ = (\AddrB~combout\(1) & ((\reg_block~253_regout\) # ((\AddrB~combout\(0))))) # (!\AddrB~combout\(1) & (((\reg_block~189_regout\ & !\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~253_regout\,
	datac => \reg_block~189_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~522_combout\);

-- Location: LCCOMB_X36_Y21_N14
\reg_block~523\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~523_combout\ = (\AddrB~combout\(0) & ((\reg_block~522_combout\ & ((\reg_block~285_regout\))) # (!\reg_block~522_combout\ & (\reg_block~221_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~522_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~221_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~285_regout\,
	datad => \reg_block~522_combout\,
	combout => \reg_block~523_combout\);

-- Location: LCCOMB_X36_Y21_N6
\RegB~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~26_combout\ = (\reg_block~521_combout\ & ((\RegB~0_combout\) # ((\reg_block~523_combout\ & \AddrB~combout\(2))))) # (!\reg_block~521_combout\ & (((\reg_block~523_combout\ & \AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~521_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~523_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~26_combout\);

-- Location: LCCOMB_X36_Y21_N4
\reg_block~527\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~527_combout\ = (\reg_block~526_combout\ & (((\reg_block~286_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~526_combout\ & (\AddrB~combout\(0) & ((\reg_block~222_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~526_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~286_regout\,
	datad => \reg_block~222_regout\,
	combout => \reg_block~527_combout\);

-- Location: LCCOMB_X35_Y21_N26
\reg_block~524\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~524_combout\ = (\AddrB~combout\(0) & ((\reg_block~94_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~62_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~94_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~62_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~524_combout\);

-- Location: LCFF_X33_Y21_N31
\reg_block~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(26),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~158_regout\);

-- Location: LCCOMB_X33_Y21_N30
\reg_block~525\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~525_combout\ = (\reg_block~524_combout\ & (((\reg_block~158_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~524_combout\ & (\reg_block~126_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~126_regout\,
	datab => \reg_block~524_combout\,
	datac => \reg_block~158_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~525_combout\);

-- Location: LCCOMB_X33_Y21_N22
\RegB~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~27_combout\ = (\reg_block~527_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~525_combout\ & \RegB~0_combout\)))) # (!\reg_block~527_combout\ & (\reg_block~525_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~527_combout\,
	datab => \reg_block~525_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~27_combout\);

-- Location: LCFF_X36_Y22_N31
\reg_block~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~191_regout\);

-- Location: LCCOMB_X36_Y22_N30
\reg_block~530\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~530_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~255_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~191_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~255_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~191_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~530_combout\);

-- Location: LCCOMB_X35_Y22_N26
\reg_block~531\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~531_combout\ = (\AddrB~combout\(0) & ((\reg_block~530_combout\ & ((\reg_block~287_regout\))) # (!\reg_block~530_combout\ & (\reg_block~223_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~530_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~223_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~287_regout\,
	datad => \reg_block~530_combout\,
	combout => \reg_block~531_combout\);

-- Location: LCFF_X35_Y21_N23
\reg_block~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(27),
	sload => VCC,
	ena => \reg_block~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~63_regout\);

-- Location: LCCOMB_X35_Y21_N22
\reg_block~528\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~528_combout\ = (\AddrB~combout\(0) & ((\reg_block~95_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~63_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~95_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~63_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~528_combout\);

-- Location: LCCOMB_X32_Y20_N14
\reg_block~529\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~529_combout\ = (\reg_block~528_combout\ & (((\reg_block~159_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~528_combout\ & (\reg_block~127_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~127_regout\,
	datab => \reg_block~528_combout\,
	datac => \reg_block~159_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~529_combout\);

-- Location: LCCOMB_X32_Y20_N22
\RegB~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~28_combout\ = (\reg_block~531_combout\ & ((\AddrB~combout\(2)) # ((\RegB~0_combout\ & \reg_block~529_combout\)))) # (!\reg_block~531_combout\ & (\RegB~0_combout\ & (\reg_block~529_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~531_combout\,
	datab => \RegB~0_combout\,
	datac => \reg_block~529_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~28_combout\);

-- Location: LCCOMB_X36_Y22_N2
\reg_block~534\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~534_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~256_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~192_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~256_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~192_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~534_combout\);

-- Location: LCCOMB_X35_Y22_N22
\reg_block~535\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~535_combout\ = (\AddrB~combout\(0) & ((\reg_block~534_combout\ & ((\reg_block~288_regout\))) # (!\reg_block~534_combout\ & (\reg_block~224_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~224_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~288_regout\,
	datad => \reg_block~534_combout\,
	combout => \reg_block~535_combout\);

-- Location: LCFF_X34_Y21_N17
\reg_block~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(28),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~160_regout\);

-- Location: LCCOMB_X35_Y21_N2
\reg_block~532\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~532_combout\ = (\AddrB~combout\(0) & ((\reg_block~96_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~64_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~96_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~64_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~532_combout\);

-- Location: LCCOMB_X34_Y21_N16
\reg_block~533\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~533_combout\ = (\AddrB~combout\(1) & ((\reg_block~532_combout\ & ((\reg_block~160_regout\))) # (!\reg_block~532_combout\ & (\reg_block~128_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~128_regout\,
	datac => \reg_block~160_regout\,
	datad => \reg_block~532_combout\,
	combout => \reg_block~533_combout\);

-- Location: LCCOMB_X34_Y21_N20
\RegB~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~29_combout\ = (\reg_block~535_combout\ & ((\AddrB~combout\(2)) # ((\reg_block~533_combout\ & \RegB~0_combout\)))) # (!\reg_block~535_combout\ & (\reg_block~533_combout\ & (\RegB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~535_combout\,
	datab => \reg_block~533_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~29_combout\);

-- Location: LCFF_X35_Y23_N21
\reg_block~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(29),
	sload => VCC,
	ena => \reg_block~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~161_regout\);

-- Location: LCCOMB_X35_Y21_N30
\reg_block~536\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~536_combout\ = (\AddrB~combout\(0) & ((\reg_block~97_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~65_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~97_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~65_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~536_combout\);

-- Location: LCCOMB_X35_Y23_N20
\reg_block~537\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~537_combout\ = (\AddrB~combout\(1) & ((\reg_block~536_combout\ & ((\reg_block~161_regout\))) # (!\reg_block~536_combout\ & (\reg_block~129_regout\)))) # (!\AddrB~combout\(1) & (((\reg_block~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~129_regout\,
	datab => \AddrB~combout\(1),
	datac => \reg_block~161_regout\,
	datad => \reg_block~536_combout\,
	combout => \reg_block~537_combout\);

-- Location: LCCOMB_X35_Y22_N10
\reg_block~539\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~539_combout\ = (\reg_block~538_combout\ & (((\reg_block~289_regout\) # (!\AddrB~combout\(0))))) # (!\reg_block~538_combout\ & (\reg_block~225_regout\ & ((\AddrB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~538_combout\,
	datab => \reg_block~225_regout\,
	datac => \reg_block~289_regout\,
	datad => \AddrB~combout\(0),
	combout => \reg_block~539_combout\);

-- Location: LCCOMB_X35_Y22_N6
\RegB~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~30_combout\ = (\RegB~0_combout\ & ((\reg_block~537_combout\) # ((\AddrB~combout\(2) & \reg_block~539_combout\)))) # (!\RegB~0_combout\ & (((\AddrB~combout\(2) & \reg_block~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~537_combout\,
	datac => \AddrB~combout\(2),
	datad => \reg_block~539_combout\,
	combout => \RegB~30_combout\);

-- Location: LCCOMB_X35_Y23_N8
\reg_block~541\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~541_combout\ = (\reg_block~540_combout\ & (((\reg_block~162_regout\) # (!\AddrB~combout\(1))))) # (!\reg_block~540_combout\ & (\reg_block~130_regout\ & ((\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~540_combout\,
	datab => \reg_block~130_regout\,
	datac => \reg_block~162_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~541_combout\);

-- Location: LCFF_X35_Y22_N25
\reg_block~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(30),
	sload => VCC,
	ena => \reg_block~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~290_regout\);

-- Location: LCCOMB_X35_Y22_N24
\reg_block~543\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~543_combout\ = (\reg_block~542_combout\ & (((\reg_block~290_regout\)) # (!\AddrB~combout\(0)))) # (!\reg_block~542_combout\ & (\AddrB~combout\(0) & ((\reg_block~226_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~542_combout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~290_regout\,
	datad => \reg_block~226_regout\,
	combout => \reg_block~543_combout\);

-- Location: LCCOMB_X35_Y22_N0
\RegB~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~31_combout\ = (\RegB~0_combout\ & ((\reg_block~541_combout\) # ((\AddrB~combout\(2) & \reg_block~543_combout\)))) # (!\RegB~0_combout\ & (((\AddrB~combout\(2) & \reg_block~543_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB~0_combout\,
	datab => \reg_block~541_combout\,
	datac => \AddrB~combout\(2),
	datad => \reg_block~543_combout\,
	combout => \RegB~31_combout\);

-- Location: LCCOMB_X35_Y21_N14
\reg_block~544\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~544_combout\ = (\AddrB~combout\(0) & ((\reg_block~99_regout\) # ((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & (((\reg_block~67_regout\ & !\AddrB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~99_regout\,
	datab => \AddrB~combout\(0),
	datac => \reg_block~67_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~544_combout\);

-- Location: LCCOMB_X34_Y21_N22
\reg_block~545\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~545_combout\ = (\AddrB~combout\(1) & ((\reg_block~544_combout\ & (\reg_block~163_regout\)) # (!\reg_block~544_combout\ & ((\reg_block~131_regout\))))) # (!\AddrB~combout\(1) & (\reg_block~544_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(1),
	datab => \reg_block~544_combout\,
	datac => \reg_block~163_regout\,
	datad => \reg_block~131_regout\,
	combout => \reg_block~545_combout\);

-- Location: LCFF_X36_Y22_N7
\reg_block~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \D_in~combout\(31),
	sload => VCC,
	ena => \reg_block~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_block~195_regout\);

-- Location: LCCOMB_X36_Y22_N6
\reg_block~546\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~546_combout\ = (\AddrB~combout\(0) & (((\AddrB~combout\(1))))) # (!\AddrB~combout\(0) & ((\AddrB~combout\(1) & (\reg_block~259_regout\)) # (!\AddrB~combout\(1) & ((\reg_block~195_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~259_regout\,
	datac => \reg_block~195_regout\,
	datad => \AddrB~combout\(1),
	combout => \reg_block~546_combout\);

-- Location: LCCOMB_X35_Y22_N28
\reg_block~547\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_block~547_combout\ = (\AddrB~combout\(0) & ((\reg_block~546_combout\ & ((\reg_block~291_regout\))) # (!\reg_block~546_combout\ & (\reg_block~227_regout\)))) # (!\AddrB~combout\(0) & (((\reg_block~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddrB~combout\(0),
	datab => \reg_block~227_regout\,
	datac => \reg_block~291_regout\,
	datad => \reg_block~546_combout\,
	combout => \reg_block~547_combout\);

-- Location: LCCOMB_X34_Y21_N6
\RegB~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB~32_combout\ = (\reg_block~545_combout\ & ((\RegB~0_combout\) # ((\reg_block~547_combout\ & \AddrB~combout\(2))))) # (!\reg_block~545_combout\ & (\reg_block~547_combout\ & ((\AddrB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_block~545_combout\,
	datab => \reg_block~547_combout\,
	datac => \RegB~0_combout\,
	datad => \AddrB~combout\(2),
	combout => \RegB~32_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrW[3]~I\ : cycloneii_io
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
	padio => ww_AddrW(3));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AddrW[4]~I\ : cycloneii_io
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
	padio => ww_AddrW(4));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[0]~I\ : cycloneii_io
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
	datain => \RegA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(0));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[1]~I\ : cycloneii_io
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
	datain => \RegA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[2]~I\ : cycloneii_io
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
	datain => \RegA~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[3]~I\ : cycloneii_io
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
	datain => \RegA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(3));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[4]~I\ : cycloneii_io
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
	datain => \RegA~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(4));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[5]~I\ : cycloneii_io
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
	datain => \RegA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[6]~I\ : cycloneii_io
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
	datain => \RegA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(6));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[7]~I\ : cycloneii_io
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
	datain => \RegA~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(7));

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[8]~I\ : cycloneii_io
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
	datain => \RegA~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(8));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[9]~I\ : cycloneii_io
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
	datain => \RegA~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(9));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[10]~I\ : cycloneii_io
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
	datain => \RegA~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(10));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[11]~I\ : cycloneii_io
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
	datain => \RegA~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(11));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[12]~I\ : cycloneii_io
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
	datain => \RegA~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(12));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[13]~I\ : cycloneii_io
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
	datain => \RegA~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(13));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[14]~I\ : cycloneii_io
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
	datain => \RegA~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(14));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[15]~I\ : cycloneii_io
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
	datain => \RegA~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(15));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[16]~I\ : cycloneii_io
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
	datain => \RegA~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(16));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[17]~I\ : cycloneii_io
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
	datain => \RegA~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(17));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[18]~I\ : cycloneii_io
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
	datain => \RegA~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(18));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[19]~I\ : cycloneii_io
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
	datain => \RegA~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(19));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[20]~I\ : cycloneii_io
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
	datain => \RegA~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(20));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[21]~I\ : cycloneii_io
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
	datain => \RegA~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(21));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[22]~I\ : cycloneii_io
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
	datain => \RegA~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(22));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[23]~I\ : cycloneii_io
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
	datain => \RegA~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(23));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[24]~I\ : cycloneii_io
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
	datain => \RegA~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(24));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[25]~I\ : cycloneii_io
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
	datain => \RegA~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(25));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[26]~I\ : cycloneii_io
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
	datain => \RegA~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(26));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[27]~I\ : cycloneii_io
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
	datain => \RegA~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(27));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[28]~I\ : cycloneii_io
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
	datain => \RegA~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(28));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[29]~I\ : cycloneii_io
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
	datain => \RegA~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(29));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[30]~I\ : cycloneii_io
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
	datain => \RegA~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(30));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegA[31]~I\ : cycloneii_io
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
	datain => \RegA~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegA(31));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[0]~I\ : cycloneii_io
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
	datain => \RegB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(0));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[1]~I\ : cycloneii_io
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
	datain => \RegB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[2]~I\ : cycloneii_io
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
	datain => \RegB~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(2));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[3]~I\ : cycloneii_io
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
	datain => \RegB~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(3));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[4]~I\ : cycloneii_io
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
	datain => \RegB~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(4));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[5]~I\ : cycloneii_io
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
	datain => \RegB~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(5));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[6]~I\ : cycloneii_io
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
	datain => \RegB~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(6));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[7]~I\ : cycloneii_io
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
	datain => \RegB~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(7));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[8]~I\ : cycloneii_io
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
	datain => \RegB~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(8));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[9]~I\ : cycloneii_io
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
	datain => \RegB~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(9));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[10]~I\ : cycloneii_io
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
	datain => \RegB~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(10));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[11]~I\ : cycloneii_io
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
	datain => \RegB~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(11));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[12]~I\ : cycloneii_io
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
	datain => \RegB~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(12));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[13]~I\ : cycloneii_io
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
	datain => \RegB~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(13));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[14]~I\ : cycloneii_io
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
	datain => \RegB~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(14));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[15]~I\ : cycloneii_io
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
	datain => \RegB~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(15));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[16]~I\ : cycloneii_io
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
	datain => \RegB~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(16));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[17]~I\ : cycloneii_io
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
	datain => \RegB~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(17));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[18]~I\ : cycloneii_io
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
	datain => \RegB~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(18));

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[19]~I\ : cycloneii_io
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
	datain => \RegB~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(19));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[20]~I\ : cycloneii_io
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
	datain => \RegB~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(20));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[21]~I\ : cycloneii_io
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
	datain => \RegB~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(21));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[22]~I\ : cycloneii_io
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
	datain => \RegB~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(22));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[23]~I\ : cycloneii_io
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
	datain => \RegB~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(23));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[24]~I\ : cycloneii_io
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
	datain => \RegB~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(24));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[25]~I\ : cycloneii_io
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
	datain => \RegB~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(25));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[26]~I\ : cycloneii_io
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
	datain => \RegB~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(26));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[27]~I\ : cycloneii_io
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
	datain => \RegB~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(27));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[28]~I\ : cycloneii_io
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
	datain => \RegB~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(28));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[29]~I\ : cycloneii_io
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
	datain => \RegB~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(29));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[30]~I\ : cycloneii_io
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
	datain => \RegB~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(30));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegB[31]~I\ : cycloneii_io
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
	datain => \RegB~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegB(31));
END structure;


