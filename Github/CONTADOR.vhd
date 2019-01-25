library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR is
   port(	Enable3: in std_logic;
			Enable5: in std_logic;
			clear: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			Output: out std_logic_vector(7 downto 0));
end CONTADOR;
 
architecture solve of CONTADOR is

   signal temp: std_logic_vector(7 downto 0);
   
begin   

process(CLOck,Reset,temp)
   begin
		if Reset='0' then
         temp <= "00000000";
			Output <= temp;
		elsif clear='1' then
			temp<="00000000";
			Output <= temp;
		elsif(Clock'event and Clock='1') then
			if Enable5='1' then
				if temp="11111111" then
					temp<="00000000";
					Output <= temp;
				else
					temp <= temp + 5;
					Output <= temp;
				end if;
		elsif Enable3='1' then
				if temp="11111111" then
					temp<="00000000";
					Output <= temp;
				else
					temp <= temp + 3;
					Output <= temp;
				end if;
		end if;
	end if;
   end process;
 end solve;