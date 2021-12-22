-------------------------------------------------------------------------------
--
-- Title       : Fub2
-- Design      : Anillo
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/eevae/OneDrive/Documentos/Programacion/DSD/Anillo/Anillo/src/Fub2.vhd
-- Generated   : Tue Oct  5 11:23:53 2021
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
--{entity {Fub2} architecture {Fub2}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Fub2 is
	 port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : inout STD_LOGIC
	     );
end Fub2;

--}} End of automatically maintained section

architecture Fub2 of Fub2 is
begin

	process( clk )
		
	begin  	  
		
		if (clk'event and clk = '1') then 
			
			q <= d;
			
		end if;
		
	
	end process;	

end Fub2;
