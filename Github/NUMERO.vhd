library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity NUMERO is
   port( 	SALIDA: out std_logic_vector(7 DOWNTO 0));
	
end NUMERO;
 
architecture solve of NUMERO is
 begin
	SALIDA <="00000000";
end solve;