LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY ExtendedorSigno_RAM IS
    GENERIC (bits_entrada : INTEGER := 8);
    PORT (
        l_u : IN STD_LOGIC;
        entrada : IN STD_LOGIC_VECTOR(bits_entrada - 1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END ExtendedorSigno_RAM;

ARCHITECTURE behavioral OF ExtendedorSigno_RAM IS

BEGIN

    --Esto es codigo a alto nivel, le estamos asignando a la salida el vector de entrada con 33 bits en vez de 32 cuando se haga la opcion
    --0010 que tiene en cuenta el signo, y si es unsigned, extendemos a 33 bits sin tener en cuenta el signo -> unsigned

    salida <= STD_LOGIC_VECTOR(resize(signed(entrada), salida'length));

END behavioral; -- behavioral

--https://embdev.net/topic/236693 <- Codigo observado de aqui;