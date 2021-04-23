

library ieee;                                               
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

entity alu_vhd_tst is
end alu_vhd_tst;

architecture alu_arch of alu_vhd_tst is   						
	signal a : STD_LOGIC_VECTOR(7 downto 0);
	signal sel : STD_LOGIC_VECTOR(3 downto 0);
	signal s : STD_LOGIC_VECTOR(7 downto 0);
	signal b : STD_LOGIC_VECTOR(7 downto 0);
	signal ge : STD_LOGIC;
	signal lt : STD_LOGIC;
	signal shamt : STD_LOGIC_VECTOR(4 downto 0);
	signal z : STD_LOGIC;
	signal nul : std_logic_vector (6 downto 0);
	signal suma : std_logic_vector(7 downto 0);
	signal resta : std_logic_vector(7 downto 0);
	signal and_i,or_i,xor_i : std_logic_vector(7 downto 0);

begin
	dut : entity work.Alu
	generic map(
		gen_width => 8)
	port map(
		a => a,
		sel => sel,
		s => s,
		b => b,
		ge => ge,
		lt => lt,
		shamt => shamt,
		z => z);
	
	always : process
	begin
		shamt <= "00000";
		sel <= "1111";
		nul <= (others => '0');
		
		for i in 0 to 254 loop
			a <= std_logic_vector(to_unsigned(i,8));
			for j in 0 to 254 loop
				b <= std_logic_vector(to_unsigned(j,8));
				
				wait for 10 ns;
				--Primero comprobar las comparaciones, z,lt,ge
				
				if a = b then
					assert z = '1'
					report "Error: a igual b pero z no vale 1"
						severity failure;
						
				elsif a < b then
					assert lt = '1'
					report "Error: a menor b pero lt no vale 1"
						severity failure;
						
				elsif a > b then
					assert ge = '1'
					report "Error: a mayor b pero ge no vale 1"
						severity failure;
				end if;
				
				wait for 10 ns;
				--Ahora se comprobarÃƒÂ¡n el modulo sumador/restador. ADD y SUB
				
				sel <= "0000";
				suma <= std_logic_vector(signed(a) + signed(b));
				wait for 5 ns;
				assert s = suma
				report "Error: fallo en la suma"
					severity failure;
				
				wait for 10 ns;
				
				sel <= "1000";
				resta <= std_logic_vector(signed(a) - signed(b));
				wait for 5 ns;
				assert s = resta
				report "Error: fallo en la resta"
					severity failure;
				
				wait for 10 ns;
				--Ahora se comprobarÃƒÂ¡n el modulo de operaciones logicas. AND OR y XOR
				
				for j in 0 to 7 loop
					and_i(j) <= a(j) and b(j);
					or_i(j) <= a(j) or b(j);
					xor_i(j) <= a(j) xor b(j);
				end loop;
				
				sel <= "0111";
				wait for 5 ns;
				assert s = and_i
				report "Error: fallo en el and"
					severity failure;
				
				wait for 10 ns;
				
				sel <= "0110";
				wait for 5 ns;
				assert s = or_i
				report "Error: fallo en el or"
					severity failure;
					
				wait for 10 ns;
				
				sel <= "0100";
				wait for 5 ns;
				assert s = xor_i
				report "Error: fallo en el xor"
					severity failure;
				
				wait for 10 ns;
				--Se comprueban los desplazadores. SLL SRL y SRA
				
				for k in 1 to 29 loop
					shamt <= std_logic_vector(to_unsigned(k,5));
					wait for 10 ns;
					
					sel <= "0001";	
					wait for 5 ns;
					assert s = std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(shamt))))
					report "Error: fallo en el sll"
						severity failure;
					
					wait for 10 ns;
					
					sel <= "0101";
					wait for 5 ns;
					assert s = std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(shamt))))
					report "Error: fallo en el srl"
						severity failure;
						
					wait for 10 ns;
					
					sel <= "1101";
					wait for 5 ns;
					assert s = std_logic_vector(shift_right(signed(a), to_integer(unsigned(shamt))))
					report "Error: fallo en el sra"
						severity failure;
				end loop;
				
				wait for 10 ns;
				--Finalmente se comprueban SLT y SLTU
				
				sel <= "0010";
				wait for 5 ns;
				assert s = nul & lt
				report "Error: fallo en el slt"
					severity failure;
					
				wait for 10 ns;
				
				sel <= "0011";
				wait for 5 ns;
				assert s = nul & lt
				report "Error: fallo en el sltu"
					severity failure;
				
			end loop;
		end loop;
	
	assert false
	report "Fin de la simulacion"
		severity failure;
end process;
	
end alu_arch;
