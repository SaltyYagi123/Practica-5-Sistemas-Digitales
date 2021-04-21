LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BancoReg_vhd_tst IS
END BancoReg_vhd_tst;

ARCHITECTURE BancoReg_arch OF BancoReg_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL addrA : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL addrB : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL addrW : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL d_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL en_w : STD_LOGIC := '0';
	SIGNAL regA : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL regB : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL reset_n : STD_LOGIC:= '1';

	COMPONENT BancoReg
		PORT (
			addrA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			addrB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			addrW : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			clk : IN STD_LOGIC;
			d_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			en_w : IN STD_LOGIC;
			regA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			regB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			reset_n : IN STD_LOGIC
		);
	END COMPONENT;

	BEGIN
	i1 : BancoReg
	PORT MAP(
		-- list connections between master ports and signals
		addrA => addrA,
		addrB => addrB,
		addrW => addrW,
		clk => clk,
		d_in => d_in,
		en_w => en_w,
		regA => regA,
		regB => regB, 
		reset_n => reset_n
	);
	--Todo bien hasta aquí

	clk <= NOT clk AFTER 10 ns;

	always : PROCESS
	BEGIN
		--Queremos observar si se puede cargar la direccion 555
		d_in <= STD_LOGIC_VECTOR(to_unsigned(555, 32));
		--Queremos cargar esta direccion en los registros 
		WAIT FOR 1 ps;

		FOR i IN 0 TO 31 LOOP
			--Con el decodificador queremos pasar por cada uno de nuestros registros
			addrW <= STD_LOGIC_VECTOR(to_unsigned(i, 5));
			WAIT FOR 1 ns;
			addrA <= STD_LOGIC_VECTOR(to_unsigned(i, 5));
			WAIT FOR 1 ns;
			addrB <= STD_LOGIC_VECTOR(to_unsigned(i, 5));
			WAIT FOR 40 ns;
			en_w <= '1';
			WAIT FOR 40 ns;
			en_w <= '0';
			WAIT FOR 40 ns;

		END LOOP;

		WAIT FOR 10 ns;

		ASSERT regA <= STD_LOGIC_VECTOR(to_unsigned(555, 32));
		REPORT "No se copia bien"
			SEVERITY failure;
		ASSERT false REPORT "Fin de la simulacion" SEVERITY failure;
		WAIT;
	END PROCESS always;
END BancoReg_arch;