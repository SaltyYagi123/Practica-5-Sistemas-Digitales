LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Mux4a1 IS
	PORT (
		e3, e2, e1, e0 : IN STD_LOGIC;
		sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		s : OUT STD_LOGIC);
END Mux4a1;
ARCHITECTURE behavioral OF Mux4a1 IS
	SIGNAL cero : STD_LOGIC := '0';
BEGIN
	WITH sel SELECT
		s <= e0 WHEN "00",
		e1 WHEN "01",
		e2 WHEN "10",
		e3 WHEN "11",
		cero WHEN OTHERS;
END behavioral;