LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ram_core IS
    GENERIC (
        g_data_width : INTEGER := 8; --Ram data width 
        g_addr_width : INTEGER := 10; --Ram addr width 
        g_depth : INTEGER := 1024 --RAM Depth 
    );

    PORT (
        clk : IN STD_LOGIC; --System clk
        din : IN STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0); --Data In 
        addr : IN STD_LOGIC_VECTOR(g_addr_width - 1 DOWNTO 0); --Addr In 
        writer_enable : IN STD_LOGIC; --Writer enable 
        dout : OUT STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0) --Data Out
    );
END ram_core;

ARCHITECTURE rtl OF ram_core IS

    TYPE mem_t IS ARRAY(0 TO g_depth - 1) OF STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
    SIGNAL ram_block : mem_t;

BEGIN
    p_ram : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN

            IF writer_enable = '1' THEN
                ram_block(to_integer(unsigned(addr))) <= din;
            END IF;

            dout <= ram_block(to_integer(unsigned(addr)));
        END IF;
    END PROCESS;

END rtl; -- rtl