library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram is 
	generic(
		gen_width : integer := 32;
		ram_height : integer := 1024);
	port(
		clk 			: in std_logic;
		addr			: in std_logic_vector(gen_width-1 downto 0);						-- 11 downto 2 addr memoria, 1 addr hw, 1 downto 0 addr byte
		d_in			: in std_logic_vector(gen_width-1 downto 0);
		tipo_acc		: in std_logic_vector(1 downto 0);									-- 00 byte, 01 halfword, 10 word
		l_u			: in std_logic;															-- acceso lhu lbu, eliminar signo
		we_ram		: in std_logic;															-- 1 escritura y lectura, 0 solo lectura
		d_out			: out std_logic_vector(gen_width-1 downto 0));
end ram;

architecture behavioral of ram is
	signal ram_in_1,ram_in_2,ram_in_3 	: std_logic_vector(7 downto 0);
	signal b0,b1,b2,b3 						: std_logic_vector(7 downto 0);
	signal we_w_i 								: std_logic;
	signal we_b_i 								: std_logic_vector(3 downto 0);
	signal we_h_i 								: std_logic_vector(1 downto 0);
	signal we_0,we_1,we_2,we_3 			: std_logic;
begin

ram_in_1 <= d_in(7 downto 0) when tipo_acc = "00" else
	d_in(15 downto 8) when (tipo_acc = "01" or tipo_acc = "10") else
	(others => '0');
	
ram_in_2 <=  d_in(7 downto 0) when (tipo_acc = "00" or tipo_acc = "01") else
	d_in(23 downto 16) when tipo_acc = "10" else
	(others => '0');
	
ram_in_3 <= d_in(7 downto 0) when tipo_acc = "00" else
	d_in(15 downto 8) when tipo_acc = "01" else
	d_in(31 downto 24) when tipo_acc = "10" else
	(others => '0');

we_0 <= we_b_i(0) or we_h_i(0) or we_w_i;
we_1 <= we_b_i(1) or we_h_i(0) or we_w_i;
we_2 <= we_b_i(2) or we_h_i(1) or we_w_i;
we_3 <= we_b_i(3) or we_h_i(1) or we_w_i;

ramM0 : entity work.ramModule
	generic map(
		ram_height => ram_height)
	port map(
		clk => clk,
		addr => addr(11 downto 2),
		d_in => d_in(7 downto 0),
		we => we_0,
		d_out => b0);
		
ramM1 : entity work.ramModule
	generic map(
		ram_height => ram_height)
	port map(
		clk => clk,
		addr => addr(11 downto 2),
		d_in => ram_in_1,
		we => we_1,
		d_out => b1);
		
ramM2 : entity work.ramModule
	generic map(
		ram_height => ram_height)
	port map(
		clk => clk,
		addr => addr(11 downto 2),
		d_in => ram_in_2,
		we => we_2,
		d_out => b2);
		
ramM3 : entity work.ramModule
	generic map(
		ram_height => ram_height)
	port map(
		clk => clk,
		addr => addr(11 downto 2),
		d_in => ram_in_3,
		we => we_3,
		d_out => b3);

ramW : entity work.ramWrite
	port map(
		addr => addr(1 downto 0),
		we_ram => we_ram,
		tipo_acc => tipo_acc,
		we_b => we_b_i,
		we_h => we_h_i,
		we_w => we_w_i);

ramR : entity work.ramRead
	generic map(
		gen_width => gen_width)
	port map(
		addr => addr(1 downto 0),
		l_u => l_u,
		tipo_acc => tipo_acc,
		b0 => b0,
		b1 => b1,
		b2 => b2,
		b3 => b3,
		d_out => d_out);
		
end behavioral;
	
		