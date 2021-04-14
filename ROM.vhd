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
  TYPE mem_t IS ARRAY (0 TO 19) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL memory : mem_t := (
    0 => X"100402b7",
    1 => X"00028293",
    2 => X"00000313",
    3 => X"06432e13",
    4 => X"000e0c63",
    5 => X"00231393",
    6 => X"00728e33",
    7 => X"000e2023",
    8 => X"00130313",
    9 => X"fe9ff06f",
    10 => X"00000313",
    11 => X"0040006f",
    12 => X"00100513",
    13 => X"0fc10597",
    14 => X"fcc58593",
    15 => X"01200613",
    16 => X"04000893",
    17 => X"00000073",
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