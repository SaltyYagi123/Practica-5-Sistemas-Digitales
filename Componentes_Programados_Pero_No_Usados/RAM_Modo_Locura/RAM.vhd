LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RAM IS
    PORT (
        addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        tipo_acc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        l_u : IN STD_LOGIC;
        we_ram : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        clk : IN STD_LOGIC
    );
END RAM;

ARCHITECTURE structural OF RAM IS

    SIGNAL we_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL we_h : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL we_w: std_LOGIC;
    SIGNAL b0, b1, b2, b3 : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    BloqueMem0 : ENTITY work.bloqueMemoriaNoMux_RAM
        PORT MAP(
            d_in => din(7 DOWNTO 0),
            address => addr(11 DOWNTO 2),
            o1 => we_b(0),
            o2 => we_h(0),
            o3 => we_w,
            salida => b0,
            clk => clk
        );

    BloqueMem1 : ENTITY work.bloqueMemoriaMux_RAM
        PORT MAP(
            tipo_acc => tipo_acc,
            e0 => din(7 DOWNTO 0),
            e1 => din(15 DOWNTO 8), --Comprobar lo de 15 ->8 por los 8 elementos, preguntar?
            e2 => din(15 DOWNTO 8),
            address => addr(11 DOWNTO 2),
            o1 => we_b(1),
            o2 => we_h(0),
            o3 => we_w,
            salida => b1,
            clk => clk
        );

    BloqueMem2 : ENTITY work.bloqueMemoriaMux_RAM
        PORT MAP(
            tipo_acc => tipo_acc,
            e0 => din(7 DOWNTO 0),
            e1 => din(7 DOWNTO 0),
            e2 => din(23 DOWNTO 16),
            address => addr(11 DOWNTO 2),
            o1 => we_b(2),
            o2 => we_h(1),
            o3 => we_w,
            salida => b2,
            clk => clk
        );

    BloqueMem3 : ENTITY work.bloqueMemoriaMux_RAM
        PORT MAP(
            tipo_acc => tipo_acc,
            e0 => din(7 DOWNTO 0),
            e1 => din(15 DOWNTO 8),
            e2 => din(31 DOWNTO 24),
            address => addr(11 DOWNTO 2),
            o1 => we_b(3),
            o2 => we_h(1),
            o3 => we_w,
            salida => b3,
            clk => clk
        );

    seccionLectura: entity work.seccionLectura_RAM
        port map(
            b0 => b0,
            b1 => b1, 
            b2 => b2,
            b3 => b3,
            addr => addr(1 downto 0), 
            l_u => l_u, 
            Dout => Dout, 
            tipo_acc => tipo_acc
        );

    seccionEscritura: entity work.seccionEscritura_RAM 
        port map(
            tipo_acc => tipo_acc, 
            we_ram =>we_ram, 
            addr => addr(1 downto 0), 
            we_b => we_b(3 downto 0), 
            we_h => we_h(1 downto 0), 
            we_w => we_w
        );
END structural; -- structura