library ieee;
use ieee.std_logic_1164.all;

Entity OR_8bit is
	Port(	      
	  a : in std_logic_vector(7 downto 0);
	  b : in std_logic_vector(7 downto 0);
	  salida: out std_logic);
end OR_8bit;

Architecture SOLUTION of OR_8bit is

Begin
	salida<= ((a(7) and b(7)) or (a(6) and b(6)) or (a(5) and b(5)) or (a(4) and b(4)) or (a(3) and b(3)) or (a(2) and b(2)) or (a(1) and b(1)) or (a(0) and b(0))); 
end SOLUTION;