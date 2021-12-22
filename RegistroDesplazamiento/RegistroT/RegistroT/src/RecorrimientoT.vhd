-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : RegistroT
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroDesplazamiento\RegistroT\RegistroT\src\RecorrimientoT.vhd
-- Generated   : Fri Oct  1 00:14:34 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {puertos} architecture {programa}}

library ieee;
use ieee.std_logic_1164.all;

entity puertos is  
	
	port (
	T : in std_logic;
	clk : buffer std_logic;
	Qn1, Qn2, Qn3 : buffer std_logic;
	Q1, Q2, Q3 : buffer std_logic
	);	
	
end puertos;

--}} End of automatically maintained section

architecture programa of puertos is
begin
	
	process(clk)
		
	begin 			
		
		Q1 <= '0';
		
		if (clk'event and clk = '1')  then
			if T = '1' then  
				
				Q1 <= not Q1;	
				
				Q2 <= not Q1;
				
				Q3 <= not Q2;  	
				
			else 
				
				Q2 <= Q1;
				
				Q3 <= Q2;

			end if;		
			
		end if;	  
	
	end process;	

end programa;
