library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity InmGen_vhd_tst is
end InmGen_vhd_tst;

architecture InmGen_arch of InmGen_vhd_tst is
	signal ir_out 		: std_logic_vector(31 downto 0);
	signal tipo_inst	: std_logic_vector(2 downto 0);
	signal mask_b0		: std_logic;
	signal inm 			: std_logic_vector(31 downto 0);
		
	subtype tipo_inst_t is std_logic_vector(2 downto 0);
	constant T_I : tipo_inst_t := "000";
	constant T_S : tipo_inst_t := "001";
	constant T_B : tipo_inst_t := "010";
	constant T_U : tipo_inst_t := "011";
	constant T_J : tipo_inst_t := "100";

	signal inm_i : std_logic_vector(31 downto 0);
	
begin

dut : entity work.InmGen
	generic map(
		g_data_width => 32)
	port map(
		ir_out => ir_out,
		tipo_inst => tipo_inst,
		mask_b0 => mask_b0,
		inm => inm);

always : process
begin
	for i in 399999 to 499999 loop
		mask_b0 <= '0';
		ir_out <= std_logic_vector(to_unsigned(i,32));
		
		wait for 1 ps;
		
		tipo_inst <= T_I;
		

		inm_i(0) <= ir_out(20);
		inm_i(4 downto 1) <= ir_out(24 downto 21);
		inm_i(10 downto 5) <= ir_out(30 downto 25);
		inm_i(31 downto 11) <= (others => ir_out(31));
		
		wait for 1 ps;
		
		assert inm = inm_i
		report "Fallo en la instruccion I mask es 0"
			severity failure;
		
		tipo_inst <= T_S;
		

		inm_i(0) <= ir_out(7);
		inm_i(4 downto 1) <= ir_out(11 downto 8);
		inm_i(10 downto 5) <= ir_out(30 downto 25);
		inm_i(31 downto 11) <= (others => ir_out(31));
		
		wait for 1 ps;
		
		assert inm = inm_i
		report "Fallo en la instruccion S mask es 0"
			severity failure;
			
		tipo_inst <= T_B;
		
		inm_i(0) <= '0';
		inm_i(4 downto 1) <= ir_out(11 downto 8);
		inm_i(10 downto 5) <= ir_out(30 downto 25);
		inm_i(11) <= ir_out(7);
		inm_i(31 downto 12) <= (others => ir_out(31));
		
		wait for 1 ps;
		
		assert inm = inm_i
		report "Fallo en la instruccion B mask es 0"
			severity failure;
		
		tipo_inst <= T_U;
		

		inm_i(12 downto 0) <= (others =>'0');
		inm_i(19 downto 12) <= ir_out(19 downto 12);
		inm_i(30 downto 20) <= ir_out(30 downto 20);
		inm_i(31) <= ir_out(31);
		
		wait for 1 ps;
		
		assert inm = inm_i
		report "Fallo en la instruccion U mask es 0"
			severity failure;
		
		tipo_inst <= T_J;
		

		inm_i(0) <= '0';
		inm_i(4 downto 1) <= ir_out(24 downto 21);
		inm_i(10 downto 5) <= ir_out(30 downto 25);
		inm_i(11) <= ir_out(20);
		inm_i(19 downto 12) <= ir_out(19 downto 12);
		inm_i(31 downto 20) <= (others => ir_out(31));
		
		wait for 1 ps;
		
		assert inm = inm_i
		report "Fallo en la instruccion J mask es 0"
			severity failure;
	
		wait for 1 ps;
		
	end loop;

	assert false
	report "Fin de la simulacion"
		severity failure;
		
end process;

end inmGen_arch;
