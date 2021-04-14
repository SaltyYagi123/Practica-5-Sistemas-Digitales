LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY bloqueMemoriaNoMux_RAM IS
    PORT (
        d_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        o1, o2, o3 : IN STD_LOGIC;
        salida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        clk : IN STD_LOGIC
    );
END bloqueMemoriaNoMux_RAM;

ARCHITECTURE structural OF bloqueMemoriaNoMux_RAM IS

    SIGNAL or_gate_res : STD_LOGIC;

BEGIN
    or_gate_res <= o1 OR o2 OR o3;

    RamCore : ENTITY work.ram_core
        PORT MAP(
            clk => clk,
            din => d_in,
            addr => address,
            writer_enable => or_gate_res,
            dout => salida
        );

END structural; -- structural