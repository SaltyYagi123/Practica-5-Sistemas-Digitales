LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;      
use IEEE.std_logic_unsigned.all;                         

ENTITY ALU_vhd_tst IS
END ALU_vhd_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ge : STD_LOGIC;
SIGNAL lt : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0) :="0000";
SIGNAL shamt : STD_LOGIC_VECTOR(1 DOWNTO 0) :="00";
SIGNAL z : STD_LOGIC;

BEGIN
	i1: entity work.ALU
	generic map(
	data_width => 4)
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	ge => ge,
	lt => lt,
	s => s,
	sel => sel,
	shamt => shamt,
	z => z
	);
                                                        
	process  
	begin
		for i in -8 to 7 loop
			a<= std_LOGIC_VECTOR(to_signed(i,4));
			
			for j in -8 to 7 loop
				b<= std_LOGIC_VECTOR(to_signed(j,4));
			
				wait for 10 ns;
				if (a=b) then
					assert z='1'
					report "no calcula bien la z" 
					severity failure;
				else
					assert z='0'
					report "no calcula bien la z" 
					severity failure;
				end if;
				
				wait for 10 ns;
				
				sel <= "0000";
				wait for 10 ns;
				assert s = (a+b)
				report "no funciona la suma" 
				severity failure;
				
				wait for 10 ns;
				assert lt=s(3)
				report "no funciona lt" 
				severity failure;
				assert ge=not s(3)
				report "no funciona ge" 
				severity failure;
				
				wait for 10 ns;
			
				sel <= "1000";
				wait for 10 ns;
				assert s = (a-b)
				report "no funciona la resta" 
				severity failure;
				
				wait for 10 ns;
				assert lt=s(3)
				report "no funciona lt" 
				severity failure;
				assert ge=not s(3)
				report "no funciona ge" 
				severity failure;
				
				wait for 10 ns;
			
				sel <= "0010";
				if (signed(a)>signed(b)) then
					wait for 10 ns;
					assert s(0) = '0'
					report "no funciona el SLT" 
					severity failure;
				elsif (signed(a)<signed(b)) then
					wait for 10 ns;
					assert s(0) = '1'
					report "no funciona el SLT" 
					severity failure;
				end if;
				
				wait for 10 ns;
					
				sel <= "0011";
				if (unsigned(a)>unsigned(b)) then
					wait for 10 ns;
					assert s(0) = '0'
					report "no funciona el SLTU" 
					severity failure;
				elsif (unsigned(a)<unsigned(b)) then
					wait for 10 ns;
					assert s(0) = '1'
					report "no funciona el SLTU" 
					severity failure;
				end if;
				
				for u in 0 to 4 loop
					shamt<= std_logic_vector(to_unsigned(u,2));
					
					wait for 10 ns;
				
					sel <= "0001";
					wait for 10 ns;
					assert s = std_logic_vector(shift_left(unsigned(a), 
									to_integer(unsigned(shamt))))
					report "no funciona el SLL" 
					severity failure;
					
					wait for 10 ns;
					
					sel <= "0101";
					wait for 10 ns;
					assert s = std_logic_vector(shift_right(unsigned(a),
									to_integer(unsigned(shamt))))
					report "no funciona el SRL" 
					severity failure;
					
					wait for 10 ns;
					
					sel <= "1101";
					wait for 10 ns;
					assert s = std_logic_vector(shift_right(signed(a),
									to_integer(unsigned(shamt))))
					report "no funciona el SRA" 
					severity failure;
				end loop;
				
				wait for 10 ns;
				
				sel <= "0100";
				wait for 10 ns;
				assert s = (a xor b)
				report "no funciona el XOR" 
				severity failure;
				
				wait for 10 ns;
				
				sel <= "0110";
				wait for 10 ns;
				assert s = (a or b)
				report "no funciona el OR" 
				severity failure;
				
				wait for 10 ns;
				
				sel <= "0111";
				wait for 10 ns;
				assert s = (a and b)
				report "no funciona el AND" 
				severity failure;
				
				wait for 10 ns;
		
			end loop;
		end loop;
	wait for 10 ns;
	assert false
	report "fin de la simulación" 
	severity failure;
end process;
                                          
END ALU_arch;
