Library ieee;  
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;  
  
Entity N_AND is  
         
generic (n: integer := 4);  
Port ( ent : in std_logic_vector (n-1 downto 0);  
       sal : out std_logic);  
         
end N_AND;  
  
Architecture codigo of N_AND is  
Begin   
Process (ent)  
variable Y: std_logic;  
Begin   
Y := ent(3);  
For I in 2 downto 0 loop  
    Y := (Y AND ent(I));  
end loop;  
sal <= Y;  
end process;  
end codigo;  