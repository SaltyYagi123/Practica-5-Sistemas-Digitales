library ieee;
use ieee.std_logic_1164.all;

entity Mux3a1 is
generic(
			n:integer:=32);
port (
	e2 , e1 , e0 : in std_logic_vector(n-1 downto 0) ;
	sel : in std_logic_vector (1 downto 0);
	s : out std_logic_vector(n-1 downto 0));
end Mux3a1;

architecture behavioral of Mux3a1 is
	signal cero:std_logic_vector(n-1 downto 0):=(others=>'0');
begin
with sel select
s <= e0 when "00",
e1 when "01",
e2 when "10",
cero when others;
end behavioral ;

