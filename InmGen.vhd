LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

--Todo esto se puede ver mas en detalle en la diapo 70 de las transparencias
ENTITY InmGen IS
    GENERIC (
        g_data_width : INTEGER := 32
    );
    PORT (
        ir_out : IN STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
        mask_b0 : IN STD_LOGIC;
        tipo_inst : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        inm : OUT STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0)
    );
END InmGen;

ARCHITECTURE rtl OF InmGen IS
    --Declaracion de constantes, el cual depende del ir_out 
    SUBTYPE tipo_inst_t IS STD_LOGIC_VECTOR(2 DOWNTO 0);

    CONSTANT TYPE_I : tipo_inst_t := "000";
    CONSTANT TYPE_S : tipo_inst_t := "001";
    CONSTANT TYPE_B : tipo_inst_t := "010";
    CONSTANT TYPE_U : tipo_inst_t := "011";
    CONSTANT TYPE_J : tipo_inst_t := "100";


    SIGNAL inm_i : STD_LOGIC_VECTOR(g_data_width - 1 DOWNTO 0);
    --Hemos decido optar por la version que nos muestra en los apuntes que maneja e involucra a la señal de mask b0, esto nos resulta 
    --Mas util para visualizar el testbench final 
	SIGNAL inm_sin_mask : STD_LOGIC;

    

BEGIN


    --Hemos decidido optar por una manera mucho mas dinamica, donde se 
    --observa que en un unico registro, estamos metiendo la diferentes 
    --posibilidades -> dependiendo de los tipos 
    inm_sin_mask <=
        ir_out(20) WHEN tipo_inst = TYPE_I ELSE
        ir_out(7) WHEN tipo_inst = TYPE_S ELSE
        '0';

    inm_i(0) <= inm_sin_mask AND mask_b0;

    inm_i(4 DOWNTO 1) <=
    ir_out(24 DOWNTO 21) WHEN (tipo_inst = TYPE_I OR tipo_inst = TYPE_J) ELSE
    ir_out(11 DOWNTO 8) WHEN (tipo_inst = TYPE_S OR tipo_inst = TYPE_B) ELSE
    (OTHERS => '0');

    inm_i(10 DOWNTO 5) <=
    (OTHERS => '0') WHEN tipo_inst = TYPE_U ELSE
    ir_out(30 DOWNTO 25);

    inm_i(11) <=
    ir_out(7) WHEN tipo_inst = TYPE_B ELSE
    ir_out(20) WHEN tipo_inst = TYPE_J ELSE
    '0' WHEN tipo_inst = TYPE_U ELSE
    ir_out(31);

    inm_i(19 DOWNTO 12) <=
    ir_out(19 DOWNTO 12) WHEN (tipo_inst = TYPE_U OR tipo_inst = TYPE_J) ELSE
    (OTHERS => ir_out(31));

    inm_i(30 DOWNTO 20) <=
    ir_out(30 DOWNTO 20) WHEN tipo_inst = TYPE_U ELSE
    (OTHERS => ir_out(31));

    inm_i(31) <= ir_out(31);

    inm <= inm_i;
END rtl; -- rtl