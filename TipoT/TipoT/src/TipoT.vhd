-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : TipoT
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\TipoT\TipoT\src\TipoT.vhd
-- Generated   : Tue Sep 21 21:22:39 2021
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
--{entity {puertos} architecture {procesador}}

library IEEE;
use IEEE.std_logic_1164.all;

entity puertos is
	 port(
		 T : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 Qn : out STD_LOGIC
	     );
end puertos;

--}} End of automatically maintained section

architecture procesador of puertos is
signal tmp: std_logic;
begin	
	
	-- enter your statements here --	 
	process(clk)	  
	begin	 
		
		if(clk'event and clk='1')
			then		 
		  	if(T='0') then
				 tmp <= tmp;
			elsif(T='1') then	 
				tmp <= not (tmp);
				
			end if;
			
		end if;	   
		
		Q<=tmp;

	end process;   

end procesador;
