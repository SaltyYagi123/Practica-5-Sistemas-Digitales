library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is 
	generic(
		gen_width : integer := 32);
	port(
		a,b			: in std_logic_vector(gen_width-1 downto 0);
		shamt			: in std_logic_vector(4 downto 0);
		sel		: in std_logic_vector(3 downto 0);
		z,lt,ge		: out std_logic;
		s		: out std_logic_vector(gen_width-1 downto 0));
end alu;

architecture behavioral of alu is
	subtype tipo_inst_t is std_logic_vector(3 downto 0);
	
	constant P_ADD : tipo_inst_t := "0000";
	constant P_SUB : tipo_inst_t := "1000";
	constant P_SLT : tipo_inst_t := "0010";
	constant P_SLTU : tipo_inst_t := "0011";
	constant P_SLL : tipo_inst_t := "0001";
	constant P_SRL : tipo_inst_t := "0101";
	constant P_SRA : tipo_inst_t := "1101";
	constant P_XOR : tipo_inst_t := "0100";
	constant P_OR : tipo_inst_t := "0110";
	constant P_AND : tipo_inst_t := "0111";
	
	signal sig : std_logic;
	signal a_ext,b_ext : std_logic_vector(gen_width downto 0);
	signal s_sub,s_add : std_logic_vector(gen_width downto 0);
	signal s_sll,s_srl,s_sra : std_logic_vector(gen_width-1 downto 0);
	signal s_and,s_or,s_xor : std_logic_vector(gen_width-1 downto 0);
	
	signal nul : std_logic_vector(gen_width-2 downto 0);
begin
	nul <= (others => '0');
	a_ext <= (a(gen_width - 1) & a) when sel = P_SLT else '0' & a;
	b_ext <= (b(gen_width - 1) & b) when sel = P_SLT else '0' & b;
	s_sub <= std_logic_vector(signed(a_ext) - signed(b_ext));
	s_add <= std_logic_vector(signed(a_ext) + signed(b_ext));
	sig <= s_sub(gen_width);

	s_sll <= std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(shamt))));
	s_srl <= std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(shamt))));
	s_sra <= std_logic_vector(shift_right(signed(a), to_integer(unsigned(shamt))));

	oplogic	: process(a,b,sel)
	begin
		for j in 0 to gen_width-1 loop
			s_and(j) <= a(j) and b(j);
			s_or(j) <= a(j) or b(j);
			s_xor(j) <= a(j) xor b(j);
		end loop;
	end process;
	
	z <= '1' when a = b else '0';
	lt <= sig;
	ge <= '1' xor sig;
	
	s <= s_add(gen_width-1 downto 0) when sel = P_ADD else
		s_sub(gen_width-1 downto 0) when sel = P_SUB else
		nul & sig when sel = P_SLT else
		nul & sig when sel = P_SLTU else
		s_sll when sel = P_SLL else
		s_srl when sel = P_SRL else
		s_sra when sel = P_SRA else
		s_xor when sel = P_XOR else
		s_or when sel = P_OR else
		s_and when sel = P_AND else
		(others => '0');
		
end behavioral;
		
