library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2a1_8bits is

port (
     a : in std_logic_vector(7 downto 0);
	  b : in std_logic_vector(7 downto 0);
	  seleccion : in std_logic;
     salida : out std_logic_vector(7 downto 0)
     );
end mux2a1_8bits;

architecture sol of mux2a1_8bits is
begin

process(a,b,seleccion)
begin
case seleccion is
  when '0' => salida <= a;
  when others => salida <= b; 
end case; 
end process;
end sol;