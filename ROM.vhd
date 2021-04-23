-- ROM file for the ICAI-RISC-V processor.
-- Generated from the hex file:  ROM.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
  port(
    clk: in std_logic;                         -- Synchronous ROM
    en_pc: in std_logic;                       -- Whith enable
    addr: in  std_logic_vector(31 downto 0);   -- Address bus
    data: out std_logic_vector(31 downto 0) ); -- Data out
end rom;

architecture Behavioural of rom is
  -- The internal address is word address, no byte address
  signal internal_addr : std_logic_vector(29 downto 0);

  -- ROM declaration
 type mem_t is array (0 to 40 ) of std_logic_vector(31 downto 0);
  signal memory : mem_t:= (
     0  => X"00000293",
     1  => X"00100313",
     2  => X"00000393",
     3  => X"00300413",
     4  => X"00600493",
     5  => X"00800913",
     6  => X"00500513",
     7  => X"00430593",
     8  => X"05c000ef",
     9  => X"00900513",
     10  => X"008485b3",
     11  => X"050000ef",
     12  => X"00300513",
     13  => X"408485b3",
     14  => X"044000ef",
     15  => X"00100593",
     16  => X"0062e533",
     17  => X"038000ef",
     18  => X"00000593",
     19  => X"0062f533",
     20  => X"02c000ef",
     21  => X"00000593",
     22  => X"00634533",
     23  => X"020000ef",
     24  => X"00241593",
     25  => X"00c00513",
     26  => X"014000ef",
     27  => X"00295593",
     28  => X"00200513",
     29  => X"008000ef",
     30  => X"0200006f",
     31  => X"00b50863",
     32  => X"0053a023",
     33  => X"00438393",
     34  => X"00008067",
     35  => X"0063a023",
     36  => X"00438393",
     37  => X"00008067",
     38  => X"00000013",
     others => X"00000000");
begin

  internal_addr <= addr(31 downto 2);

  mem_rom: process(clk)
  begin
    if rising_edge(clk) then
      if en_pc = '1' then
        data <= memory(to_integer(unsigned(internal_addr)));
      end if;
    end if;
  end process mem_rom;
end architecture Behavioural;
