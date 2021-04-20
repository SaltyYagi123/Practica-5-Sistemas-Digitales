LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Practica5 IS
	GENERIC (
		n : INTEGER := 32);
	PORT (
		clk, reset_n : IN STD_LOGIC
	);

END Practica5;

ARCHITECTURE structural OF Practica5 IS

	--Senhales ya definidas en el diagrama 
	SIGNAL ir_out, ir_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL pc_out, pc_ir : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL pc_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL alu_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL alur_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL reg_a, reg_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL d_ram_alu, pc_out_reg, inm : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ram_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL tipo_inst : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL tipo_acc : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL m_pc, m_banco : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL m_alu_a, m_alu_b : STD_LOGIC_VECTOR(1 DOWNTO 0); --!!!!
	SIGNAL wr_pc_cond, wr_pc, mask_b0, m_shamt : STD_LOGIC;
	SIGNAL en_ir, en_pc, en_banco, l_u, we_ram, m_ram : STD_LOGIC;
	SIGNAL z, lt, ge : STD_LOGIC;
	SIGNAL alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0); 

	--Senhales que no vienen y/o dependen de otras puertas logicas 
	SIGNAL d_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL alu_a, alu_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL shamt_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL mux_ir_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL mux_exit : STD_LOGIC;
	
BEGIN

	--Senhal PC_In
	pc_in <= alu_out WHEN m_pc = "00" ELSE
		alur_out WHEN m_pc = "01" ELSE
		STD_LOGIC_VECTOR(to_unsigned(0, 32)) WHEN m_pc = "11";

	--Senhal pc_enable
	mux_exit <= z WHEN mux_ir_out = "00" ELSE
		NOT(z) WHEN mux_ir_out = "01" ELSE
		lt WHEN mux_ir_out = "10" ELSE
		ge WHEN mux_ir_out = "11";
	en_pc <= ((mux_exit AND wr_pc_cond) OR wr_pc);

	--Senhal d_in desde del generador de inmediatos
	d_in <= d_ram_alu WHEN m_banco = "00" ELSE
		pc_out_reg WHEN m_banco = "01" ELSE
		inm WHEN m_banco = "11";

	--Senhal que conecta el Banco de Registros a la ALU 
	alu_a <= reg_a WHEN m_alu_a = "00" ELSE
		pc_out WHEN m_alu_a = "01" ELSE
		pc_ir WHEN m_alu_a = "10";

	alu_b <= reg_b WHEN m_alu_b = "00" ELSE
		STD_LOGIC_VECTOR(to_unsigned(4, 32)) WHEN m_alu_b = "01" ELSE --!!??!!
		inm WHEN m_alu_b = "10";

	shamt_in <= reg_b(4 DOWNTO 0) WHEN m_shamt = '0' ELSE
		ir_out(24 DOWNTO 20) WHEN m_shamt = '1';

	--Senhal de la salida despues de la RAM  
	d_ram_alu <= alur_out WHEN m_ram = '0' ELSE
		ram_out WHEN m_ram = '1';

	--SeÃ±al que construimos nosotros para el mux4a1 de la izquierda
	mux_ir_out <= ir_out(14) & ir_out(12);

	--Instanciamos todos los registros 
	PC : ENTITY work.Registro_Gen
		GENERIC MAP(
			g_data_width => 32
		)
		PORT MAP(
			d => pc_in,
			clk => clk,
			en => en_pc,
			q => pc_out
		);

	IR_PC : ENTITY work.Registro_Gen
		GENERIC MAP(
			g_data_width => 32
		)
		PORT MAP(
			d => pc_out,
			clk => clk,
			en => en_ir,
			q => pc_ir
		);

	IR : ENTITY work.Registro_Gen
		GENERIC MAP(
			g_data_width => 32
		)
		PORT MAP(
			d => ir_in,
			clk => clk,
			en => en_ir,
			q => ir_out
		);

	ALUR : ENTITY work.Registro_Gen
		GENERIC MAP(
			g_data_width => 32
		)
		PORT MAP(
			d => alu_out,
			clk => clk,
			en => '1',
			q => alur_out
		);

	--Instanciamos las memorias 
	RAM : ENTITY work.RAM
		PORT MAP(
			addr => alur_out,
			d_in => reg_b,
			acc_type => tipo_acc,
			l_u => l_u,
			we => we_ram,
			d_out => ram_out, --seÃƒÂ±al producida por nosotros
			clk => clk
		);

	ROM : ENTITY work.ROM
		PORT MAP(
			clk => clk,
			en_pc => en_pc,
			addr => pc_out,
			data => ir_in
		);

	--Instanciamos el Banco de Registros 
	BancoReg : ENTITY work.BancoReg
		GENERIC MAP(
			n => 32
		)
		PORT MAP(
			clk => clk,
			en_banco => en_banco,
			AddrA => ir_out(19 DOWNTO 15),
			AddrB => ir_out(24 DOWNTO 20),
			AddrW => ir_out(11 DOWNTO 7),
			D_in => d_in, --Generada por nosotros
			RegA => reg_a,
			RegB => reg_b
		);

	--Instanciamos la ALU 
	ALU : ENTITY work.ALU
		GENERIC MAP(
			data_width => 32
		)
		PORT MAP(
			sel => alu_op,
			shamt => shamt_in,
			a => alu_a,
			b => alu_b,
			s => alu_out,
			lt => lt,
			ge => ge,
			z => z
		);

	Generador_Inmediatos : ENTITY work.InmGen
		GENERIC MAP(
			g_data_width => 32
		)
		PORT MAP(
			ir_out => ir_out,
			mask_b0 => mask_b0,
			tipo_inst => tipo_inst,
			inm => inm
		);

	Maquina_Estados : ENTITY work.CircuitoControl
		PORT MAP(
			clk => clk,
			reset_n => reset_n,
			opcode =>ir_out(4 downto 0),
			ir_out => ir_out,
			tipo_inst => tipo_inst,
			alu_op => alu_op,
			m_pc => m_pc,
			tipo_acc => tipo_acc,
			m_banco => m_banco,
			m_alu_a => m_alu_a,
			m_alu_b => m_alu_b,
			wr_pc => wr_pc,
			en_ir => en_ir,
			en_banco => en_banco,
			wr_pc_cond => wr_pc_cond,
			we_ram => we_ram,
			l_u => l_u,
			m_ram => m_ram
		);

END structural;