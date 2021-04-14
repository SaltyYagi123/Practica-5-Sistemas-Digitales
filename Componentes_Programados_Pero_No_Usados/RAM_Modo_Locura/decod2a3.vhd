LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decod2a3 IS
  PORT (
    entrada_in : IN STD_LOGIC_VECTOR(1 downto 0);
    enable : IN STD_LOGIC;
    salida : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END decod2a3;

ARCHITECTURE behavioral OF decod2a3 IS

BEGIN

  PROCESS (entrada_in)
  BEGIN
    IF (entrada_in = "00") THEN
      salida <= "001";
    ELSIF (entrada_in = "01") THEN
      salida <= "010";
    ELSIF (entrada_in = "10") THEN
      salida <= "100";
    ELSE 
      salida <= "---";
	 END IF;
  END PROCESS;
END behavioral; -- behavioral