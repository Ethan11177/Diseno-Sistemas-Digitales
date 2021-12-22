-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : TipoS_R
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\TipoS_R\TipoS_R\src\TipoS_R.vhd
-- Generated   : Tue Sep 21 20:52:53 2021
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
		 S : in STD_LOGIC;
		 R : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 Qn : out STD_LOGIC
	     );
end puertos;

--}} End of automatically maintained section

architecture procesador of puertos is
begin

	-- enter your statements here --		  
	process(clk)	  
	variable tmp: std_logic;
	begin	 
		
		if(clk'event and clk='1')
			then		 
		  	if(S='0' and R='0') then
				 tmp := tmp;
			elsif(S='1' and R='1') then	 
				tmp := 'Z';
			elsif(S='0' and R='1') then
				tmp:='0';
			else
				tmp:='1';
			end if;
			
		end if;	   
		
		Q<=tmp;
		Qn<= not(tmp);

	end process;   
	


end procesador;
