LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY SumadorRestador IS
    GENERIC (
        data_width : INTEGER := 32);
    PORT (
        a, b : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        sr : IN STD_LOGIC;
        s : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        c_out : OUT STD_LOGIC
    );
END SumadorRestador;

ARCHITECTURE structural OF SumadorRestador IS
    SIGNAL c : STD_LOGIC_VECTOR(data_width DOWNTO 0);
    SIGNAL b_aux : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
    COMPONENT Sumador1Bit
        PORT (
            a_i, b_i : IN STD_LOGIC;
            c_i : IN STD_LOGIC;
            s_i : OUT STD_LOGIC;
            c_i_mas_1 : OUT STD_LOGIC
        );
    END COMPONENT;
BEGIN
    c(0) <= sr;
    c_out <= c(data_width) XOR c(data_width - 1);
    GenSum : FOR i IN 0 TO data_width - 1 GENERATE
        b_aux(i) <= b(i) XOR sr;
        i_Sumador1Bit : Sumador1Bit
        PORT MAP(
            a_i => a(i),
            b_i => b_aux(i),
            c_i => c(i),
            s_i => s(i),
            c_i_mas_1 => c(i + 1)
        );
    END GENERATE GenSum;
END structural;