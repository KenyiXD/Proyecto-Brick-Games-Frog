library ieee;
use ieee.std_logic_1164.all;

Entity OR_NIVEL is
	Port(	      
	  entrada: in std_logic_vector (7 downto 0);
	  salida: out std_logic);
end OR_NIVEL;

Architecture SOLUTION of OR_NIVEL is

Begin
	salida<= entrada(7) or entrada(6) or entrada(5) or entrada(4) or entrada(3) or entrada(2) or entrada(1) or entrada(0);
end SOLUTION;