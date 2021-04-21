LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY BancoReg IS
    GENERIC (
        gen_width : INTEGER := 32;
        num_reg : INTEGER := 32
    );
    PORT (
        clk : IN STD_LOGIC;
        reset_n : IN STD_LOGIC;
        d_in : IN STD_LOGIC_VECTOR(gen_width - 1 DOWNTO 0);
        en_w : IN STD_LOGIC;
        addrA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        addrB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        addrW : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        regA : OUT STD_LOGIC_VECTOR(gen_width - 1 DOWNTO 0);
        regB : OUT STD_LOGIC_VECTOR(gen_width - 1 DOWNTO 0)
    );
END BancoReg;

ARCHITECTURE behavioral OF BancoReg IS

    TYPE reg_array IS ARRAY(0 TO num_reg - 1) OF STD_LOGIC_VECTOR(gen_width - 1 DOWNTO 0);
    SIGNAL pointer : reg_array;

    SIGNAL x0 : STD_LOGIC_VECTOR(gen_width - 1 DOWNTO 0);
    SIGNAL addrNull : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN

    x0 <= (OTHERS => '0');
    addrNull <= (OTHERS => '0');

    reg_act : PROCESS (clk, reset_n, x0, en_w, addrW, addrNull, pointer, addrA, addrB, d_in)
    BEGIN

        IF reset_n = '0' THEN
            pointer(to_integer(unsigned(addrNull))) <= x0;
            FOR i IN 0 TO num_reg - 1 LOOP
                pointer(i) <= x0;
            END LOOP;
        ELSE
            IF rising_edge(clk) THEN
                regA <= pointer(to_integer(unsigned(addrA)));
                regB <= pointer(to_integer(unsigned(addrB)));

                IF (en_w = '1' AND addrW /= addrNull) THEN
                    pointer(to_integer(unsigned(addrW))) <= d_in;
                ELSIF (en_w = '1' AND addrW = addrNull) THEN
                    pointer(to_integer(unsigned(addrNull))) <= x0;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END behavioral; -- behavioral