LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Sumador1Bit IS
    PORT (
        a_i : IN STD_LOGIC;
        b_i : IN STD_LOGIC;
        c_i : IN STD_LOGIC;
        s_i : OUT STD_LOGIC;
        c_i_mas_1 : OUT STD_LOGIC);
END Sumador1Bit;

ARCHITECTURE behavioral OF Sumador1Bit IS
BEGIN
    s_i <= c_i XOR(a_i XOR b_i);
    c_i_mas_1 <= (a_i AND b_i) OR ((a_i XOR b_i) AND c_i);
END behavioral;