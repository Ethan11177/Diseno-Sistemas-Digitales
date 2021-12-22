-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : RegistroD
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroDesplazamiento\ResgistroD\RegistroD\src\RecorrimientioD.vhd
-- Generated   : Thu Sep 30 23:24:14 2021
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
		Q1,Q2,Q3 : buffer std_logic;
		clk : in std_logic;
		D : in std_logic;	  
		sel : in std_logic_vector (3 downto 0)
	);	
end puertos;

--}} End of automatically maintained section

architecture programa of puertos is
begin

	process(clk)
		
	begin  	
		
		if (clk'event and clk = '1')  then
			
			if (sel = '000')  then
			
				Q1 <= D;
				Q2 <= Q1;
				Q3 <= Q2;  	
				
			elsif (sel = '001')	then
				
				
			
			end if;
		
		end if;	  
		
	
	end process;	 

end programa;
