library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- HE CAMBIADO DE DONDE SALE EL OPCODE EN LA UNIDAD DE CircuitoControl
entity Practica5 is 
	generic(
		gen_width : integer := 32;
		ram_height : integer := 1024;
		num_reg : integer := 32);
	port(
		clk 			: in std_logic;
		reset_n		: in std_logic);
end Practica5;

architecture structural of Practica5 is
	signal z,lt,ge : std_logic;
	signal shamt : std_logic_vector(4 downto 0);
	signal alu_out : std_logic_vector(gen_width-1 downto 0);
	signal alu_op : std_logic_vector(3 downto 0);
	signal a,b : std_logic_vector(gen_width-1 downto 0);
	
	signal mask_b0 : std_logic;
	signal inm : std_logic_vector(gen_width-1 downto 0);
	signal tipo_inst : std_logic_vector(2 downto 0);
	
	signal en_banco : std_logic;
	signal reg_a,reg_b : std_logic_vector(gen_width-1 downto 0);
	signal d_in : std_logic_vector(gen_width-1 downto 0);
	
	signal en_pc : std_logic;
	signal ir_in : std_logic_vector(gen_width-1 downto 0);
	signal ir_out : std_logic_vector(gen_width-1 downto 0);
	signal pc_ir : std_logic_vector(gen_width-1 downto 0);
	signal pc_in : std_logic_vector(gen_width-1 downto 0);
	signal pc_out : std_logic_vector(gen_width-1 downto 0);
	
	signal m_alu_a : std_logic_vector(1 downto 0);
	signal m_alu_b : std_logic_vector(1 downto 0);
	
	signal m_shamt : std_logic;
	signal m_ram : std_logic;
	signal m_banco : std_logic_vector(1 downto 0);
	signal alur_out : std_logic_vector(gen_width-1 downto 0);
	signal d_ram_alu : std_logic_vector(gen_width-1 downto 0);
	signal en : std_logic;
	
	signal tipo_acc : std_logic_vector(1 downto 0);
	signal l_u : std_logic;
	signal we_ram : std_logic;
	signal d_out : std_logic_vector(gen_width-1 downto 0);
	
	
	signal wr_pc_cond : std_logic;
	signal wr_pc_cond_res : std_logic;
	signal wr_pc : std_logic;
	signal m_pc : std_logic_vector(1 downto 0);
	
	signal nul4 : std_logic_vector(gen_width-5 downto 0);
	signal one : std_logic;
	
begin

nul4 <= (others => '0');
one <= '1';
-- Circuito del contador de programa (PC)
wr_pc_cond_res <= z when ir_out(14 downto 12) = "000" else
		not(z) when ir_out(14 downto 12) = "001" else
		lt when ir_out(14 downto 12) = "010" else
		ge when ir_out(14 downto 12) = "011" else
		'0';
		
en_pc <= wr_pc or (wr_pc_cond and wr_pc_cond_res);

-- Multiplexor de entradas
pc_in <= alu_out when m_pc = "00" else
		alur_out when m_pc = "01" else
		(others => '0') when m_pc = "10" else
		(others => '0');
		
-- Multiplexor del generador de inmediatos
d_in <= d_ram_alu when m_banco = "00" else
		pc_out when m_banco = "01" else					-- PC_OUT_REG QUIEN ES??
		inm when m_banco = "10" else
		(others => '0');
		
-- Multiplexor entrada alu a
a <= reg_a when m_alu_a = "00" else
		pc_out when m_alu_a = "01" else
		pc_ir when m_alu_a = "10" else
		(others => '0');

-- Multiplexor entrada alu b
b <= reg_b when m_alu_b = "00" else
		nul4 & "0100" when m_alu_b = "01" else
		inm when m_alu_b = "10" else
		(others => '0');
		
-- Multiplexor salida CPU
d_ram_alu <= alur_out when m_ram = '0' else
		d_out when m_ram = '1' else
		(others => '0');
		
-- Multiplexor shift
shamt <= reg_b(4 downto 0) when m_shamt = '0' else
		ir_out(24 downto 20) when m_shamt = '1' else
		(others => '0');

REG_PC : entity work.Registro_Gen
	generic map(
		g_data_width => 32)
	port map(
		clk => clk,
		reset_n => reset_n,
		en => en_pc,
		d => pc_in,
		q => pc_out);
		
REG_IR : entity work.Registro_Gen
	generic map(
		g_data_width => 32)
	port map(
		clk => clk,
		reset_n => reset_n,
		en => en,
		d => ir_in,
		q => ir_out);
		
REG_PC_IR : entity work.Registro_Gen
	generic map(
		g_data_width => 32)
	port map(
		clk => clk,
		reset_n => reset_n,
		en => en,
		d => pc_out,
		q => pc_ir);
		
REG_ALU_R : entity work.Registro_Gen
	generic map(
		g_data_width => 32)
	port map(
		clk => clk,
		reset_n => reset_n,
		en => one,
		d => alu_out,
		q => alur_out);

CircuitoControl : entity work.CircuitoControl
	generic map(
		g_data_width => 32)
	port map(
		clk => clk,
		reset_n => reset_n,
		ir_out => ir_out,
		opcode => ir_out(6 downto 0),					-- DUDA EL OPCODE DONDE TOMARLO, IR_IN O IR_OUT
		m_pc => m_pc,
		wr_pc_cond => wr_pc_cond,
		wr_pc => wr_pc,
		tipo_inst => tipo_inst,
		mask_b0 => mask_b0,
		en_ir => en,
		m_banco => m_banco,
		en_banco => en_banco,
		m_alu_b => m_alu_b,
		m_alu_a => m_alu_a,
		alu_op => alu_op,
		m_shamt => m_shamt,
		tipo_acc => tipo_acc,
		l_u => l_u,
		we_ram => we_ram,
		m_ram => m_ram);


-- RAM 
RAM : entity work.RAM
	port map(
		clk => clk,
		addr => alur_out,
		d_in => reg_b,
		tipo_acc => tipo_acc,
		l_u => l_u,
		we_ram => we_ram,
		d_out => d_out);

-- ALU
ALU : entity work.ALU
	generic map(
		gen_width => gen_width)
	port map(
		a => a,
		b => b,
		shamt => shamt,
		sel => alu_op,
		z => z,
		lt => lt,
		ge => ge,
		s => alu_out);	-- Sale a un registro

-- BANCO DE REGISTROS
REG_BANK : entity work.bancoReg
	generic map(
		gen_width => gen_width,
		num_reg => num_reg)
	port map(
		clk => clk,
		reset_n => reset_n,
		d_in => d_in,
		en_w => en_banco,
		addrA => ir_out(19 downto 15),
		addrB => ir_out(24 downto 20),
		addrW => ir_out(11 downto 7),
		regA => reg_a,			-- Sale a un multiplexor
		regB => reg_b);		-- Sale a un multiplexor
		
-- GENERADOR DE INMEDIATOS
GEN_INM : entity work.InmGen
	generic map(
		g_data_width => 32)
	port map(
		ir_out => ir_out,
		tipo_inst => tipo_inst,
		mask_b0 => mask_b0,
		inm => inm);			-- Sale al multiplexor de inmediatos
		
-- ROM
ROM : entity work.rom
	port map(
		clk => clk,
		en_pc => en_pc,		-- Ã‚Â¿enable en la ROM?
		addr => pc_in,			-- Trampa de saltarse un ciclo de reloj
		data => ir_in);		-- Sale a un registro
		
end structural;