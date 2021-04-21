LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Registro_Gen IS
    GENERIC (
        g_data_width : INTEGER := 16
    );
    PORT (
        d : IN STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
        clk : IN STD_LOGIC;
        en : IN STD_LOGIC;
        q : OUT STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
		  reset_n: in std_logic
    );
END Registro_Gen;

ARCHITECTURE behavioral OF Registro_Gen IS

    SIGNAL registro : STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);

BEGIN

    PROCESS (clk)
    BEGIN --process
		  IF reset_n = '0' then 
					registro <= (others => '0');
        ELSIF rising_edge(clk) THEN
            IF en = '1' THEN
                registro <= d;
            END IF;
        END IF;
    END PROCESS;

    q <= registro;

END behavioral; -- behavioral