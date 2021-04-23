-- ROM file for the ICAI-RISC-V processor.
-- Generated from the hex file:  ROM.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
  port(
    clk: in std_logic;                         -- Synchronous ROM
    en_pc: in std_logic;                       -- Whith enable
    addr: in  std_logic_vector(31 downto 0);   -- Address bus
    data: out std_logic_vector(31 downto 0) ); -- Data out
end ROM;

architecture Behavioural of ROM is
  -- The internal address is word address, no byte address
  signal internal_addr : std_logic_vector(29 downto 0);

  -- ROM declaration
 type mem_t is array (0 to 16 ) of std_logic_vector(31 downto 0);
  signal memory : mem_t:= (
     0  => X"00000f93",
     1  => X"02c0006f",
     2  => X"00100293",
     3  => X"00f00f13",
     4  => X"00b50663",
     5  => X"01efa023",
     6  => X"0080006f",
     7  => X"005fa023",
     8  => X"004f8f93",
     9  => X"00600e13",
     10  => X"01cfa023",
     11  => X"00008067",
     12  => X"00500593",
     13  => X"00500513",
     14  => X"fd1ff0ef",
     others => X"00000000");
begin

  internal_addr <= addr(31 downto 2);

  mem_rom: process(clk)
  begin
    if clk'event and clk = '1' then
      if en_pc = '1' then
        data <= memory(to_integer(unsigned(internal_addr)));
      end if;
    end if;
  end process mem_rom;
end architecture Behavioural;

