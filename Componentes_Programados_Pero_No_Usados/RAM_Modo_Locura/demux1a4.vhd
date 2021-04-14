-- Demultipexor de 1 a 4 de 1 bit

LIBRARY ieee;
USE ieee. std_logic_1164 .ALL;

ENTITY DeMux1a4 IS
    PORT (
        e : IN STD_LOGIC; -- Entrada de datos
        sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0); -- Entrada de control
        s0, s1, s2, s3 : OUT STD_LOGIC); -- Salidas
END DeMux1a4;

ARCHITECTURE behavioral OF DeMux1a4 IS
BEGIN -- behavioral

    s0 <= e WHEN sel = "00" ELSE
        '0';
    s1 <= e WHEN sel = "01" ELSE
        '0';
    s2 <= e WHEN sel = "10" ELSE
        '0';
    s3 <= e WHEN sel = "11" ELSE
        '0';

END behavioral;