
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Practica5_vhd_tst IS
END Practica5_vhd_tst;
ARCHITECTURE Practica5_arch OF Practica5_vhd_tst IS

	SIGNAL clk : STD_LOGIC:='0';
	SIGNAL reset_n : STD_LOGIC;

	COMPONENT Practica5
		PORT (
			clk : IN STD_LOGIC;
			reset_n : IN STD_LOGIC
		);
	END COMPONENT;
BEGIN

	i1 : Practica5
	PORT MAP(
		-- list connections between master ports and signals
		clk => clk,
		reset_n => reset_n
	);

	clk <= NOT clk AFTER 10 ns;

	always : PROCESS

	BEGIN
			--Con el decodificador queremos pasar por cada uno de nuestros registros
			reset_n <= '1';

			WAIT FOR 250 ns;

			reset_n <= '0';
			
			WAIT FOR 250 ns;

		ASSERT false REPORT "Fin de la simulacion" SEVERITY failure;

	END PROCESS always;
END Practica5_arch;