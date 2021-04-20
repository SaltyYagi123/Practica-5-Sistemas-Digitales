LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM IS
    GENERIC (
        g_data_width : INTEGER := 32;
        g_addr_width : INTEGER := 32;
        g_depth : INTEGER := 1024
    );
    PORT (
        clk : IN STD_LOGIC;
        addr : IN STD_LOGIC_VECTOR(g_addr_width - 1 DOWNTO 0);
        din : IN STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
        tipo_acc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        l_u : IN STD_LOGIC;
        we_ram : IN STD_LOGIC);
END ENTITY;

ARCHITECTURE rtl OF RAM IS

    SIGNAL we_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL we_h : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL we_w : STD_LOGIC;
    SIGNAL we_0, we_1, we_2, we_3 : STD_LOGIC;
    SIGNAL din_0, din_1, din_2, din_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL b_0, b_1, b_2, b_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL h_selected : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL byte_ext : STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
    SIGNAL h_extended : STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
    SIGNAL decod_out : STD_LOGIC_VECTOR(2 DOWNTO 0);

    SIGNAL w_extended : STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);

BEGIN
    -- din
    din_0 <=
        din(7 DOWNTO 0);

    din_1 <=
        din(7 DOWNTO 0) WHEN tipo_acc = "00" ELSE
        din(15 DOWNTO 8) WHEN tipo_acc = "01" ELSE
        din(15 DOWNTO 8) WHEN tipo_acc = "10" ELSE
        (OTHERS => '0');

    din_2 <=
        din(7 DOWNTO 0) WHEN tipo_acc = "00" ELSE
        din(7 DOWNTO 0) WHEN tipo_acc = "01" ELSE
        din(23 DOWNTO 16) WHEN tipo_acc = "10" ELSE
        (OTHERS => '0');

    din_3 <=
        din(7 DOWNTO 0) WHEN tipo_acc = "00" ELSE
        din(15 DOWNTO 8) WHEN tipo_acc = "01" ELSE
        din(31 DOWNTO 24) WHEN tipo_acc = "10" ELSE
        (OTHERS => '0');

    --Write Section 
    --decodificador
    decod_out <= "001" WHEN tipo_acc = "00" AND we_ram = '1' ELSE
        "010" WHEN tipo_acc = "01" AND we_ram = '1' ELSE
        "100" WHEN tipo_acc = "01" AND we_ram = '1' ELSE
        (OTHERS => '0');

    -- write enables

    we_b <= "0001" WHEN decod_out(0) = '1' AND addr(1 DOWNTO 0) = "00" ELSE
        "0010" WHEN decod_out(0) = '1' AND addr(1 DOWNTO 0) = "01" ELSE
        "0100" WHEN decod_out(0) = '1' AND addr(1 DOWNTO 0) = "10" ELSE
        "1000" WHEN decod_out(0) = '1' AND addr(1 DOWNTO 0) = "11" ELSE
        (OTHERS => '0');

    we_h <= "01" WHEN decod_out(1) = '1' AND addr(1) = '0' ELSE
        "10" WHEN decod_out(1) = '1' AND addr(1) = '1' ELSE
        (OTHERS => '0');

    we_w <= decod_out(2);

    --------------------------------------------------

    we_0 <= we_b(0) OR we_h(0) OR we_w;
    we_1 <= we_b(1) OR we_h(0) OR we_w;
    we_2 <= we_b(2) OR we_h(1) OR we_w;
    we_3 <= we_b(3) OR we_h(1) OR we_w;
    --Ram instances
    --Instanciamos los 4 nucleos de la ram 
    RAM0 : ENTITY work.ram_core
        GENERIC MAP(
            g_data_width => (g_data_width/4),
            g_addr_width => 10, --PUEDE DAR ERROR, ASI QUE MEJOR QUE NO LO HAGAMOS A CAPON, PERO WENO
            g_depth => g_depth
        )
        PORT MAP(
            clk => clk,
            din => din_0,
            addr => addr(11 DOWNTO 2),
            writer_enable => we_0,
            dout => b_0
        );
    RAM1 : ENTITY work.ram_core
        GENERIC MAP(
            g_data_width => g_data_width/4,
            g_addr_width => 10,
            g_depth => g_depth
        )
        PORT MAP(
            clk => clk,
            din => din_1,
            addr => addr(11 DOWNTO 2),
            writer_enable => we_1,
            dout => b_1
        );
    RAM2 : ENTITY work.ram_core
        GENERIC MAP(
            g_data_width => g_data_width/4,
            g_addr_width => 10,
            g_depth => g_depth
        )
        PORT MAP(
            clk => clk,
            din => din_2,
            addr => addr(11 DOWNTO 2),
            writer_enable => we_2,
            dout => b_2
        );
    RAM3 : ENTITY work.ram_core
        GENERIC MAP(
            g_data_width => g_data_width/4,
            g_addr_width => 10,
            g_depth => g_depth
        )
        PORT MAP(
            clk => clk,
            din => din_3,
            addr => addr(11 DOWNTO 2),
            writer_enable => we_3,
            dout => b_3
        );

    --salida
    --Read Section 
    --Resumimos los multiplexores como nos habian informado 

    byte <=
        b_0 WHEN addr(1 DOWNTO 0) = "00" ELSE
        b_1 WHEN addr(1 DOWNTO 0) = "01" ELSE
        b_2 WHEN addr(1 DOWNTO 0) = "10" ELSE
        b_3 WHEN addr(1 DOWNTO 0) = "11" ELSE
        (OTHERS => '0');

    -- sign extension, if needed
    byte_ext(31 DOWNTO 8) <= (OTHERS => byte(7)) WHEN l_u = '1' ELSE
    (OTHERS => '0');
    -- byte copy
    byte_ext(7 DOWNTO 0) <= byte;

    -- output muxing of the half-words
    h_selected <=
        b_1 & b_0 WHEN addr(1) = '0' ELSE
        b_3 & b_2 WHEN addr(1) = '1' ELSE
        (OTHERS => '0');

    -- sign extension, if needed
    h_extended(31 DOWNTO 16) <= (OTHERS => h_selected(15)) WHEN l_u = '1' ELSE
    (OTHERS => '0');
    -- half-word copy
    h_extended(15 DOWNTO 0) <= h_selected;

    -- simple byte concatenation to form the word
    w_extended <= b_3 & b_2 & b_1 & b_0;

    -- depending on tipo_acc, select the byte, half-word or word output
    WITH tipo_acc SELECT dout <=
        byte_ext WHEN "00",
        h_extended WHEN "01",
        w_extended WHEN "10",
        (OTHERS => '0') WHEN OTHERS;

END architecture rtl;