library ieee;
use ieee.std_logic_1164.all;

Entity comparador is
	Port(	w1: in std_logic_vector(3 downto 0);
			w2: in std_logic_vector(3 downto 0);
			igual: out std_logic);
end comparador;

Architecture sol of comparador is

Begin
	igual<='1' when w1=W2 else '0';
end sol;