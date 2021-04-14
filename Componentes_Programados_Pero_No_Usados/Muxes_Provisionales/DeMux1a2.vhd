LIBRARY ieee;
USE ieee. std_logic_1164 .ALL;

ENTITY DeMux1a2 IS
	PORT (
		e : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		sel : IN STD_LOGIC; --m_shamt
		s0, s1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)); -- e0=rcg_b y e1=ir_out
END DeMux1a2;

ARCHITECTURE behavioral OF DeMux1a2 IS
BEGIN -- behavioral
	s0 <= e WHEN sel = '0' ELSE
		(OTHERS => '0');
	s1 <= e WHEN sel = '1' ELSE
		(OTHERS => '0');
END behavioral;