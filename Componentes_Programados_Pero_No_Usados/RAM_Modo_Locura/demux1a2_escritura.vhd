LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY demux1a2_escritura IS
	PORT (
		e : IN STD_LOGIC;
		sel : IN STD_LOGIC;
		s0, s1 : OUT STD_LOGIC
	);
END demux1a2_escritura;

ARCHITECTURE behavioral OF demux1a2_escritura IS
BEGIN -- behavioral
	s0 <= e WHEN sel = '0' ELSE
		'0';
	s1 <= e WHEN sel = '1' ELSE
		'0';

END behavioral;