-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : TipoD
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\TipoD\TipoD\src\TipoD.vhd
-- Generated   : Tue Sep 21 18:23:21 2021
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
		 D : in STD_LOGIC;
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
	begin
		
		if(clk'event and clk = '1')
			then
			
			Q<=D;
			Qn <= not D;
			
		end if;
		
	end process;

end procesador;
