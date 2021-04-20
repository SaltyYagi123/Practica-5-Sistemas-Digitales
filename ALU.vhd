LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU IS
    GENERIC (
        data_width : INTEGER := 4);
    PORT (
        sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        a, b : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        s : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        lt, ge, z : OUT STD_LOGIC);
END ALU;

ARCHITECTURE behavioral OF ALU IS
    SIGNAL s_sr : STD_LOGIC_VECTOR(data_width DOWNTO 0);
    SIGNAL sr_sel : STD_LOGIC;
    SIGNAL v_ceros : STD_LOGIC_VECTOR(data_width - 2 DOWNTO 0);
    SIGNAL a_se : STD_LOGIC_VECTOR(data_width DOWNTO 0);
    SIGNAL b_se : STD_LOGIC_VECTOR(data_width DOWNTO 0);
BEGIN

    v_ceros <= (OTHERS => '0');
    sr_sel <= '1' WHEN sel = "1000" OR sel = "0010" OR sel = "0011" ELSE
        '0';
    a_se <= (a(data_width - 1) & a) WHEN (sel = "0000") OR (sel = "1000") OR (sel = "0010") ELSE
        ('0' & a);
    b_se <= (b(data_width - 1) & b) WHEN (sel = "0000") OR (sel = "1000") OR (sel = "0010") ELSE
        ('0' & b);

    SumadorRestador : ENTITY work.SumadorRestador
        GENERIC MAP(
            data_width => data_width + 1)
        PORT MAP(
            a => a_se,
            b => b_se,
            sr => sr_sel,
            s => s_sr
        );
    s <= s_sr(data_width - 1 DOWNTO 0) WHEN sel = "0000" OR sel = "1000" ELSE
        v_ceros & s_sr(data_width) WHEN sel = "0010" OR sel = "0011" ELSE
        STD_LOGIC_VECTOR(shift_left(unsigned(a), to_integer(unsigned(shamt)))) WHEN sel = "0001" ELSE
        STD_LOGIC_VECTOR(shift_right(unsigned(a), to_integer(unsigned(shamt)))) WHEN sel = "0101" ELSE
        STD_LOGIC_VECTOR(shift_right(signed(a), to_integer(unsigned(shamt)))) WHEN sel = "1101" ELSE
        a XOR b WHEN sel = "0100" ELSE
        a OR b WHEN sel = "0110" ELSE
        a AND b WHEN sel = "0111" ELSE
        (OTHERS => '0');

    lt <= s_sr(data_width - 1);
    ge <= NOT s_sr(data_width - 1);
    z <= '1' WHEN a = b ELSE
        '0';
END behavioral;