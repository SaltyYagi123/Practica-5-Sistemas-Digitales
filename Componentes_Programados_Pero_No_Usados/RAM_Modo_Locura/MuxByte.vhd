LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY MuxByte IS
    GENERIC(
        n: integer:= 8
    );
    PORT (
        e3, e2, e1, e0 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END MuxByte;

ARCHITECTURE behavioral OF MuxByte IS

BEGIN
    WITH sel SELECT
        s <= e0 WHEN "00",
        e1 WHEN "01",
        e2 WHEN "10",
        e3 WHEN "11",
        "00000000" WHEN OTHERS;

END behavioral; -- behavioral