-- ROM file for the ICAI-RISC-V processor.
-- Generated from the hex file:  ROM.vhd

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ROM IS
  PORT (
    clk : IN STD_LOGIC; -- Synchronous ROM
    en_pc : IN STD_LOGIC; -- Whith enable
    addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Address bus
    data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- Data out
END ROM;

ARCHITECTURE Behavioural OF ROM IS
  -- The internal address is word address, no byte address
  SIGNAL internal_addr : STD_LOGIC_VECTOR(29 DOWNTO 0);

  -- ROM declaration
  TYPE mem_t IS ARRAY (0 TO 16) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL memory : mem_t := (
    0 => X"00000f93",
    1 => X"02c0006f",
    2 => X"00100293",
    3 => X"00f00f13",
    4 => X"00b50663",
    5 => X"01efa023",
    6 => X"0080006f",
    7 => X"005fa023",
    8 => X"004f8f93",
    9 => X"00600e13",
    10 => X"01cfa023",
    11 => X"00008067",
    12 => X"00500593",
    13 => X"00500513",
    14 => X"fd1ff0ef",
    OTHERS => X"00000000");
BEGIN

  internal_addr <= addr(31 DOWNTO 2);

  mem_rom : PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF en_pc = '1' THEN
        data <= memory(to_integer(unsigned(internal_addr)));
      END IF;
    END IF;
  END PROCESS mem_rom;
END ARCHITECTURE Behavioural;