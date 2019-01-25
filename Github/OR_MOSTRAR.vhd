LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY OR_MOSTRAR IS

PORT (	x : IN STD_LOGIC_VECTOR(7 downto 0);
		y : IN STD_LOGIC_VECTOR(7 downto 0);
		f : OUT STD_LOGIC_VECTOR(7 downto 0));
END OR_MOSTRAR;

ARCHITECTURE sol OF OR_MOSTRAR IS

BEGIN

	f(0)<= x(0) or y(0);
	f(1)<= x(1) or y(1);
	f(2)<= x(2) or y(2);
	f(3)<= x(3) or y(3);
	f(4)<= x(4) or y(4);
	f(5)<= x(5) or y(5);
	f(6)<= x(6) or y(6);
	f(7)<= x(7) or y(7);

END sol;