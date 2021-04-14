library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


ENTITY Mux2a1 IS
	GENERIC (
		n : INTEGER := 32);
	PORT (
		e1, e0 : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);--e0=alu_out y e1=Dout
		sel : IN STD_LOGIC;--m_ram
		s : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0));--d_ram_out
END Mux2a1;

ARCHITECTURE behavioral OF Mux2a1 IS
	SIGNAL cero : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
	WITH sel SELECT
		s <= e0 WHEN '0',
		e1 WHEN '1',
		cero WHEN OTHERS;
END behavioral;