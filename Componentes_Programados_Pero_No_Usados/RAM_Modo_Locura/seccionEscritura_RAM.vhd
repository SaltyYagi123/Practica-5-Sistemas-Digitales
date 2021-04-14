LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
--PREGUNTAR SOBRE EL DECODIFICADOR 2 A 3, Y LA SALIDA 
ENTITY seccionEscritura_RAM IS
    PORT (
        tipo_acc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        we_ram : IN STD_LOGIC;
        addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0); --CAUTION CON EL ADRESS, ASEGURAR EL TAMAÑO APROPIADO PRIMERO 
        we_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        we_h : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        we_w : OUT STD_LOGIC
    );
END seccionEscritura_RAM;

ARCHITECTURE structual OF seccionEscritura_RAM IS

    SIGNAL salida_decode : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

    Decodif2a3_i : ENTITY work.decod2a3
        PORT MAP(
            entrada_in => tipo_acc,
            enable => we_ram,
            salida => salida_decode
        );

    Demultiplexor1a4Lectura : ENTITY work.demux1a4
        PORT MAP(
            e => salida_decode(0),
            sel => addr(1 DOWNTO 0),
            s0 => we_b(0),
            s1 => we_b(1),
            s2 => we_b(2),
            s3 => we_b(3)
        );

    Demultiplexor1a2Lectura : ENTITY work.demux1a2_escritura
        PORT MAP(
            e => salida_decode(1),
            sel => addr(1),
            s0 => we_h(0),
            s1 => we_h(1)
        );

    we_w <= salida_decode(2);

END structual; -- structual