-------------------------------------------------------------------------------
--
-- Title       : Fub1
-- Design      : Anillo
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/eevae/OneDrive/Documentos/Programacion/DSD/Anillo/Anillo/src/Fub1.vhd
-- Generated   : Tue Oct  5 11:15:02 2021
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
--{entity {Fub1} architecture {Fub1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Fub1 is
	 port(
		 d : inout STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : inout STD_LOGIC
	     );
end Fub1;

--}} End of automatically maintained section

architecture Fub1 of Fub1 is
begin

	
	process( clk )
		
	begin  	  
		
		if (clk'event and clk = '1') then 
			
			q <= d;
			
		end if;
		
	
	end process;	

end Fub1;
