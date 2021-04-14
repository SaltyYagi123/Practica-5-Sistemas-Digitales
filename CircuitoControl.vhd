LIBRARY ieee;
USE ieee. std_logic_1164 .ALL;

ENTITY CircuitoControl IS
	PORT (
		clk : IN STD_LOGIC;
		Reset_n : IN STD_LOGIC;
		opcode : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ir_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		tipo_inst : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
		alu_op : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		m_pc : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		tipo_acc : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		m_banco : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		m_alu_a : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		m_alu_b : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		wr_pc : OUT STD_LOGIC;
		en_ir : OUT STD_LOGIC;
		en_banco : OUT STD_LOGIC;
		wr_pc_cond : OUT STD_LOGIC;
		we_ram : OUT STD_LOGIC;
		l_u : OUT STD_LOGIC;
		m_ram : OUT STD_LOGIC);
END CircuitoControl;
ARCHITECTURE behavioral OF CircuitoControl IS
	TYPE t_estados IS (Reset, Fetch, Decod, Lui3, Lwsw3, Auipc3, Arit3, SalCond, Lw4, Sw4, Arit4, Lw5, jal3, jalr3, Inm3);
	SIGNAL e_actual, e_sig : t_estados;
BEGIN
	VarEstado : PROCESS (clk, reset_n)
	BEGIN
		IF reset_n = '0' THEN
			e_actual <= Reset;
		ELSIF rising_edge(clk) THEN
			e_actual <= e_sig;
		END IF;
	END PROCESS VarEstado;

	TransicionEstados : PROCESS (e_actual, opcode)
	BEGIN
		e_sig <= e_actual;
		CASE e_actual IS
			WHEN Reset =>
				e_sig <= Fetch;
			WHEN Fetch =>
				e_sig <= Decod;
			WHEN Decod =>
				IF opcode = "01101" THEN
					e_sig <= Lui3;
				ELSIF opcode = "01000" OR opcode = "00000" THEN
					e_sig <= Lwsw3;
				ELSIF opcode = "00101" THEN
					e_sig <= Auipc3;
				ELSIF opcode = "01100" THEN
					e_sig <= Arit3;
				ELSIF opcode = "11000" THEN
					e_sig <= SalCond;
				ELSIF opcode = "11011" THEN
					e_sig <= jal3;
				ELSIF opcode = "11001" THEN
					e_sig <= jalr3;
				ELSIF opcode = "00100" THEN
					e_sig <= inm3;
				ELSE
					e_sig <= Fetch;
				END IF;
			WHEN Lui3 =>
				e_sig <= Fetch;
			WHEN SalCond =>
				e_sig <= Fetch;
			WHEN Arit3 =>
				e_sig <= Arit4;
			WHEN Auipc3 =>
				e_sig <= Arit4;
			WHEN Arit4 =>
				e_sig <= Fetch;
			WHEN Lwsw3 =>
				IF opcode = "00000" THEN
					e_sig <= Lw4;
				ELSIF opcode = "01000" THEN
					e_sig <= Sw4;
				ELSE
					e_sig <= Fetch;
				END IF;
			WHEN Sw4 =>
				e_sig <= Fetch;
			WHEN Lw4 =>
				e_sig <= Lw5;
			WHEN Lw5 =>
				e_sig <= Fetch;
		END CASE;
	END PROCESS TransicionEstados;

	Salidas : PROCESS (e_actual)
	BEGIN
		wr_pc <= '0';
		en_ir <= '0';
		en_banco <= '0';
		wr_pc_cond <= '0';
		we_ram <= '0';
		m_ram <= '0';
		l_u <= '0';
		m_banco <= "00";
		tipo_acc <= "00";
		m_pc <= "00";
		m_alu_a <= "00";
		m_alu_b <= "00";
		tipo_inst <= "000";
		alu_op <= "0000";
		CASE e_actual IS
			WHEN Reset =>
				wr_pc <= '1';
				m_pc <= "10"; --m_pc=2
			WHEN Fetch =>
				m_alu_a <= "01"; --1
				m_alu_b <= "01";--1
				alu_op <= "0000";
				m_pc <= "00";--0
				wr_pc <= '1';
				en_ir <= '1';
			WHEN Decod =>
				m_alu_a <= "10";--2
				m_alu_b <= "10";--2
				tipo_inst <= "011";--3
				alu_op <= "0000";
			WHEN Lui3 =>
				tipo_inst <= "100";--4
				m_banco <= "10";--2
				en_banco <= '1';
			WHEN SalCond =>
				m_alu_a <= "00";
				m_alu_b <= "00";
				wr_pc_cond <= '1';
				m_pc <= "01";
				alu_op <= "001-";
			WHEN Arit3 =>
				alu_op <= ir_out(30) & ir_out(14 DOWNTO 12);
				m_alu_a <= "00";--0
				m_alu_b <= "00";--0
			WHEN Auipc3 =>
				tipo_inst <= "100";--4
				alu_op <= "0000";
				m_alu_a <= "10";--2
				m_alu_b <= "10";--2
			WHEN Arit4 =>
				en_banco <= '1';
				m_ram <= '0';
				m_banco <= "00";
			WHEN Lwsw3 =>
				tipo_inst <= "00-";--0 ó 1
				alu_op <= "0000";
				m_alu_a <= "00";--0
				m_alu_b <= "10";--2
			WHEN Sw4 =>
				tipo_acc <= ir_out(13 DOWNTO 12);
				we_ram <= '1';
			WHEN Lw4 =>
				tipo_acc <= ir_out(13 DOWNTO 12);
				l_u <= ir_out(14);
			WHEN Lw5 =>
				m_banco <= "00";
				en_banco <= '1';
				m_ram <= '1';
			WHEN Inm3 =>
				tipo_inst <= "000";
				m_alu_a <= "00";--reg_a
				m_alu_b <= "10";--inm
				alu_op <= ir_out(30) & ir_out(14 DOWNTO 0);
			WHEN jal3 => --jal x1, offset
				tipo_inst <= "100";
				m_alu_a <= "10";--pc_ir
				m_alu_b <= "10";--inm (signo ext)
				alu_op <= "0000";--suma
			WHEN Jalr3 => --jalr x1, rs, 0
				tipo_inst <= "000";
				m_banco <= "10";
				en_banco <= '1';
				m_alu_a <= "00";--reg_a
				m_alu_b <= "10";--inm (12 bits)
				alu_op <= "0000";
			WHEN OTHERS => NULL;

		END CASE;
	END PROCESS;
END behavioral;