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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/20/2021 20:34:21"

-- Vhdl Test Bench template for design  :  RAM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM_vhd_tst IS
END RAM_vhd_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_tst IS
  -- constants                  
  constant g_ram_words: integer :=4;
  constant c_clk_semi_period: time:= 10ns;
  constant c_clk_period: time := 2*c_clk_semi_period;
  

  -- signals                                                   
  SIGNAL addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL clk : STD_LOGIC;
  SIGNAL din : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL dout : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL l_u : STD_LOGIC;
  SIGNAL tipo_acc : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL we_ram : STD_LOGIC;
  COMPONENT RAM
    PORT (
      addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      clk : IN STD_LOGIC;
      din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      l_u : IN STD_LOGIC;
      tipo_acc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      we_ram : IN STD_LOGIC
    );
  END COMPONENT;
BEGIN
  i1 : RAM
  PORT MAP(
    -- list connections between master ports and signals
    addr => addr,
    clk => clk,
    din => din,
    dout => dout,
    l_u => l_u,
    tipo_acc => tipo_acc,
    we_ram => we_ram
  );

  --Clock generation 
  clk <= not clk after c_clk_semi_period;

  --Waveform custom <- 
  WaveGen_Proc: process 
  begin 
    --Signal initialization 
    we_ram <= '0';
    din <= (others => '0');
    addr <= (others => '0');
    tipo_acc <= "00";
    l_u <= '0';

    --We wait for a clk cycle 
    wait 


  always : PROCESS
    -- optional sensitivity list                                  
    -- (        )                                                 
    -- variable declarations                                      
  BEGIN
    -- code executes for every event on sensitivity list  
    WAIT;
  END PROCESS always;
END RAM_arch;