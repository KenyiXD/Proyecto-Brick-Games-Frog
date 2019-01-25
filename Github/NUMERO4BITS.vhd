library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity NUMERO4bits is
   port( 	SALIDA: out std_logic_vector(3 DOWNTO 0));
	
end NUMERO4bits;
 
architecture solve of NUMERO4bits is
 begin
	SALIDA <="0011";
end solve;