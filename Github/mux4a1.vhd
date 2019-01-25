library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is

port (
      a : in std_logic;
	  b : in std_logic;
	  c : in std_logic;
	  d : in std_logic;
     sel : in std_logic_vector(3 downto 0);
     bitout : out std_logic
     );
end mux4a1;

architecture sol of mux4a1 is
begin

process(a,b,c,d,sel)
begin
case sel is
  when "0000" => bitout <= d;
  when "0001" => bitout <= c;
  when "0010" => bitout <= b;
  when others => bitout <= a; 
end case; 
end process;

end sol;