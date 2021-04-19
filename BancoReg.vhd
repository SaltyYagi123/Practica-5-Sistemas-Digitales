LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BancoReg IS
	GENERIC (
		n : INTEGER := 32);
	PORT (
		clk : IN STD_LOGIC;
		en_banco : IN STD_LOGIC;
		AddrA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		AddrB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		AddrW : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		D_in : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		RegA : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		RegB : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0));
END BancoReg;

ARCHITECTURE behavioral OF BancoReg IS
	TYPE registros IS ARRAY(31 DOWNTO 0) OF STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
	SIGNAL reg_block : registros;
BEGIN

	registroA : PROCESS (AddrA, reg_block)
		VARIABLE direc : INTEGER RANGE 0 TO 31;
	BEGIN
		direc := to_integer (unsigned(AddrA));
		IF AddrA = "00000" THEN
			RegA <= (OTHERS => '0');
		ELSE
			RegA <= reg_block(direc);
		END IF;
	END PROCESS registroA;

	registroB : PROCESS (AddrB, reg_block)
		VARIABLE direc : INTEGER RANGE 0 TO 31;
	BEGIN
		direc := to_integer (unsigned(AddrB));
		IF AddrB = "00000" THEN
			RegB <= (OTHERS => '0');
		ELSE
			RegB <= reg_block(direc);
		END IF;
	END PROCESS registroB;

	escritura : PROCESS (clk, en_banco, AddrW, D_in)
		VARIABLE direc : INTEGER RANGE 0 TO 31;
	BEGIN
		direc := to_integer(unsigned(AddrW));
		IF clk'event AND clk = '1' THEN
			IF en_banco = '1' THEN
				reg_block(direc) <= D_in;
			END IF;
		END IF;
	END PROCESS escritura;
END behavioral;