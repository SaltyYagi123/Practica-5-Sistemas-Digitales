LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY seccionLectura_RAM IS
    PORT (
        b0, b1, b2, b3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        tipo_acc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0); --CUIDADO CON EL ADRESS QUE NO SE DE CUANTOS BITS ES 
        l_u : IN STD_LOGIC;
        Dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END seccionLectura_RAM;

ARCHITECTURE structual OF seccionLectura_RAM IS

    SIGNAL i1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL i2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL i3, i4 : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

    MuxByte : ENTITY work.MuxByte
        PORT MAP(
            e0 => b0,
            e1 => b1,
            e2 => b2,
            e3 => b3,
            sel => addr(1 DOWNTO 0),
            s => i1
        );

    MuxMedia : ENTITY work.Mux2a1
        GENERIC MAP(
            n => 16
        )
        PORT MAP(
            e0 => b1 & b0,
            e1 => b2 & b3,
            sel => addr(1),
            s => i2
        );

    SigExt1 : ENTITY work.ExtendedorSigno_RAM
        GENERIC MAP(
            bits_entrada => 8
        )
        PORT MAP(
            l_u => l_u,
            entrada => i1,
            salida => i3
        );

    SigExt2 : ENTITY work.ExtendedorSigno_RAM
        GENERIC MAP(
            bits_entrada => 16
        )
        PORT MAP(
            l_u => l_u,
            entrada => i2,
            salida => i4
        );

    MuxSal : ENTITY work.Mux3a1
        GENERIC MAP(
            n => 32
        )
        PORT MAP(
            e0 => i3,
            e1 => i4,
            e2 => b3 & b3 & b1 & b0,
            sel => tipo_acc,
            s => Dout
        );

END structual; -- arch