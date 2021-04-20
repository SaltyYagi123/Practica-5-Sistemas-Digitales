-------------------------------------------------------------------------------
-- Title      : Testbench for design "RAM"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : RAM_tb.vhd
-- Author     : José Daniel Muñoz Frías  <daniel@comillas.edu>
-- Company    : 
-- Created    : 2020-09-15
-- Last update: 2020-09-17
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Testbench for the RAM block. The block is instantiated with
-- only four words to speed up the simulation. The simulation consist on a
-- exhaustive write then read of all the possible values of word, half and byte
-- accesses.
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-09-15  1.0      daniel	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- for pow function

-------------------------------------------------------------------------------

entity RAM_vhd_tst is

end entity RAM_vhd_tst;

-------------------------------------------------------------------------------

architecture testbench of RAM_vhd_tst is

  -- component generics
  constant g_ram_words : integer := 4;

  -- constants
  constant c_clk_semi_period : time := 10 ns;
  constant c_clk_period : time := 2*c_clk_semi_period;
  
  -- component ports
  signal clk      : std_logic :='0';
  signal addr     : std_logic_vector(31 downto 0);
  signal d_in     : std_logic_vector(31 downto 0);
  signal acc_type : std_logic_vector(1 downto 0);
  signal we       : std_logic;
  signal l_u      : std_logic;
  signal d_out    : std_logic_vector(31 downto 0);

  -- intermediate signals
  signal d_to_read : std_logic_vector(31 downto 0);
  
begin  -- architecture testbench

  -- component instantiation
  DUT: entity work.RAM
    generic map (
      g_ram_words => g_ram_words)
    port map (
      clk      => clk,
      addr     => addr,
      d_in     => d_in,
      acc_type => acc_type,
      we       => we,
      l_u      => l_u,
      d_out    => d_out);

  -- clock generation
  Clk <= not Clk after c_clk_semi_period;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- signal initialization
    we <= '0';
    d_in <= (others => '0');
    addr <= (others => '0');
    acc_type <= "00";
    l_u <= '0';

    -- wait for a clk cycle
    wait until clk = '1';
    wait until clk = '0';
    wait for 2 ns; -- to avoid metastability in tests
    
    -- firstly we test the word access
    acc_type <= "10"; -- word access
    for i in 0 to 255 loop
      for a in 0 to 3 loop
        -- The data written is composed of 4 bytes, each with a distinct value.
        -- In addition, in each address the value is also different (i+a)
        d_in(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_in(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        d_in(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        d_in(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 2)) & "00";
        we   <= '1';
        wait for c_clk_period;
        we   <= '0';
        d_in <= (others => '0'); -- to verify the we signal
        wait for c_clk_period;  
      end loop;
      -- now we read the values
      we <= '0';
      for a in 0 to 3 loop
        d_in <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 2)) & "00";
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        d_to_read(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        d_to_read(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        wait for c_clk_period;
        assert d_out = d_to_read
          report "Error in RAM word access: data read is not data written."
          severity failure;
      end loop;
    end loop;

    -- secondly we test the half word access
    acc_type <= "01"; -- word access
    for i in 0 to 255 loop
      for a in 0 to 7 loop
        -- The data written is composed of 2 bytes, each with a distinct value.
        -- In addition, in each address the value is also different (i+a)
        d_in(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_in(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        -- In this case, the 16 higher bits are not used. We give then values
        -- to check that they are effectively ignored.
        d_in(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        d_in(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        we   <= '1';
        wait for c_clk_period;
        we   <= '0';
        d_in <= (others => '0'); -- to verify the we signal
        wait for c_clk_period;  
      end loop;
      -- now we read the values as signed
      we  <= '0';
      l_u <= '0';
      for a in 0 to 7 loop
        d_in <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        wait for 1 fs; -- to actualize d_to_read(15)
        d_to_read(31 downto 16) <= (others => d_to_read(15));
        wait for c_clk_period;
        assert d_out = d_to_read
          report "Error in RAM half signed access: data read is not data written."
          severity failure;
      end loop;
      -- And now as unsigned
      l_u <= '1';
      for a in 0 to 7 loop
        d_in <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        d_to_read(31 downto 16) <= (others => '0');
        wait for c_clk_period;
        assert d_out = d_to_read
          report "Error in RAM half unsigned access: data read is not data written."
          severity failure;
      end loop;
    end loop;
    
    -- And finally we test the byte access
    acc_type <= "00"; -- byte access
    for i in 0 to 255 loop
      for a in 0 to 15 loop
        -- The data written is composed of 1 byte.
        -- In addition, in each address the value is also different (i+a)
        d_in(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        -- In this case, the 24 higher bits are not used. We give then values
        -- to check that they are effectively ignored.
        d_in(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        d_in(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        d_in(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        we   <= '1';
        wait for c_clk_period;
        we   <= '0';
        d_in <= (others => '0'); -- to verify the we signal
        wait for c_clk_period;  
      end loop;
      -- now we read the values as signed
      we  <= '0';
      l_u <= '0';
      for a in 0 to 15 loop
        d_in <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        wait for 1 fs; -- to actualize d_to_read(7)
        d_to_read(31 downto 8) <= (others => d_to_read(7));
        wait for c_clk_period;
        assert d_out = d_to_read
          report "Error in RAM byte signed access: data read is not data written."
          severity failure;
      end loop;
      -- And now as unsigned
      l_u <= '1';
      for a in 0 to 15 loop
        d_in <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(31 downto 8) <= (others => '0');
        wait for c_clk_period;
        assert d_out = d_to_read
          report "Error in RAM byte unsigned access: data read is not data written."
          severity failure;
      end loop;
    end loop;

    assert false
      report "Fin de la simulación"
      severity failure;
    
  end process WaveGen_Proc;

end architecture testbench;
