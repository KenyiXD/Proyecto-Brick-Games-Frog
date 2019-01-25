library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MAQUINASS is
   port( 
			---ENTRADAS POR BOTONES
			START: in std_logic;
			CLOCK: in std_logic;
			Reset: in std_logic;
			JUGAR: in std_logic;
			CONSULTAR_PUNTAJES: in std_logic;
			ARRIBA: IN std_logic;
			ABAJO: IN std_logic;
			IZQUIERDA: IN std_logic;
			DERECHA: IN std_logic;
			---ENTRADA PARA SEÑALES
			FIN_NIVEL: IN std_logic;
			TIEMPO4SEG: IN std_logic;
			FIN_JUEGO: IN std_logic;
			FIN_MOSTRAR: IN std_logic;
			SUBE_NIVEL: IN std_logic;
			GUARDADO: IN std_logic;
			----SALIDAS
			EN: OUT std_logic;
			EN2: OUT std_logic;
			ENR: OUT std_logic;
			ENL: OUT std_logic;
			EN_NIVEL: OUT std_logic;
			RESET_NIVEL: OUT std_logic;
			RELOJ: OUT std_logic;
			RESET_RELOJ: OUT std_logic;
			EN_P3: OUT std_logic;
			EN_P5: OUT std_logic;
			RESET_PUNTOS: OUT std_logic;
			EN_DIR: OUT std_logic;
			RESET_DIR: OUT std_logic;
			EN_RAM: OUT std_logic;
			WRITE_EN: OUT std_logic;
			MOSTRAR: OUT std_logic;
			RESET_RANA: OUT std_logic
			);
end MAQUINASS;



architecture COMPORTAMIENTO of MAQUINASS is
TYPE estado IS (Ta,Tb,Tc,Td,Te,Tf,Tg,Th,Ti,Tj,Tk,Tl,Tm,Tn,Tp,Tq,Tr,Ts,Tt,Tu,Tv,Tw,Tx,Ty,Tz,T1,t2);
	SIGNAL y : estado;
begin
 PROCESS (Reset,CLOCK)
 begin
	if Reset='0' then y<=Ta;
	elsif (CLOCK'event and Clock='1') then 
		case y is
			when Ta=> 	if (START='1') then y<=Tb; 
						else y<=Ta;
						end if;
			when Tb=> 	if (START='0') then y<=Tc; 
						else y<=Tb;
						end if;
			when T1=>	y<=Tc;
			when Tc=> 	if (JUGAR='1') then y<=Td; 
						elsif (CONSULTAR_PUNTAJES='1') then y<=Tv; 
						else y<=Tc;
						end if;
			when Td=> 	if (JUGAR='0') then y<=Te; 
						else y<=Td;
						 end if;
			when Te=> 	if (ARRIBA='1') then y<=Tf; 
						elsif (ABAJO='1') then y<=Tp;
						elsif (IZQUIERDA='1') then y<=Tr;
						elsif (DERECHA='1') then y<=Tt;
						elsif (FIN_JUEGO='1') then y<=Tm;
						else y<=Te;
						end if;
			when Tf=> 	if (ARRIBA='0') then y<=Tg; 
						else y<=Tf;
						 end if;
			when Tg=> y<=T2;
			when T2=> y<=Th;
			when Th=> if (FIN_JUEGO='0') then y<=Ti; 
						else y<=Tm;
						 end if;
			when Ti=> if (SUBE_NIVEL='0') then y<=Tk; 
						else y<=Tj;
						 end if;
			when Tj=>  y<=Tk;
			when Tk=> if (FIN_NIVEL='0') then y<=Tl; 
						else y<=Tm;
						 end if;
			when Tl=> y<=Te;
			when Tm=> y<=Tn;
			when Tn=> if (GUARDADO='1') then y<=T1; 
						else y<=Tn;
						 end if;
			when Tp=> if (ABAJO='0') then y<=Tq; 
						else y<=Tp;
						 end if;
			when Tq=> y<=Th;
			when Tr=> if (IZQUIERDA='0') then y<=Ts; 
						else y<=Tr;
						 end if;
			when Ts=> y<=Th;
			when Tt=> if (DERECHA='0') then y<=Tu; 
						else y<=Tt;
						 end if;
			when Tu=> y<=Th;
			when Tv=> if (CONSULTAR_PUNTAJES='0') then y<=Tw; 
						else y<=Tv;
						 end if;
			when Tw=> y<=Tx;
			when Tx=> if (TIEMPO4SEG='1') then y<=Ty; 
						else y<=Tx;
						 end if;
			when Ty=> y<=Tz;
			when Tz=> if (FIN_MOSTRAR='1') then y<=Tc; 
						else y<=Tw;
						 end if;
			
			
			end case;
	end if;
 END PROCESS;

 PROCESS (y)
begin
			EN<='0';
			EN2<='0';
			ENR<='0';
			ENL<='0';
			EN_NIVEL<='0';
			RESET_NIVEL<='0';
			RELOJ<='0';
			RESET_RELOJ<='0';
			EN_P3<='0';
			EN_P5<='0';
			RESET_PUNTOS<='0';
			EN_DIR<='0';
			RESET_DIR<='0';
			EN_RAM<='0';
			WRITE_EN<='0';
			MOSTRAR<='0';
			RESET_RANA<='1';
		case y is
			when Ta=> RESET_NIVEL<='1'; RESET_RELOJ<='1'; RESET_PUNTOS<='1'; RESET_DIR<='1'; RESET_RANA<='0';
			when Tb=> 
			when Tc=> RESET_NIVEL<='1'; RESET_RELOJ<='1'; RESET_PUNTOS<='1'; RESET_DIR<='1'; RESET_RANA<='0';
			when Td=> 
			when Te=> 
			when Tf=> 
			when Tg=> EN_P3<='1';  
			when T2=> EN<='1';	
			when Th=> 
			when Ti=> 
			when Tj=> EN_P5<='1';	EN_NIVEL<='1'; RESET_RANA<='0';
			when Tk=> 
			when Tl=>  
			when Tm=> WRITE_EN<='1'; RESET_RANA<='0';
			when Tn=> 
			when Tp=>  
			when Tq=> EN2<='1';
			when Tr=> 
			when Ts=> ENL<='1';
			when Tt=> 
			when Tu=> ENR<='1';
			when Tv=> 
			when Tw=> EN_RAM<='1';
			when Tx=> MOSTRAR<='1'; RELOJ<='1';
			when Ty=> EN_DIR<='1';
			when Tz=> RESET_RELOJ<='1';
			when T1=> EN_DIR<='1';

		end case;
 END PROCESS;

END COMPORTAMIENTO;


	
	
	
	
	
