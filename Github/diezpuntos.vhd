library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity diezpuntos is
   port( 	SALIDA: out std_logic_vector(3 DOWNTO 0));
	
end diezpuntos;
 
architecture solve of diezpuntos is
 begin
	SALIDA <="1010";
end solve;