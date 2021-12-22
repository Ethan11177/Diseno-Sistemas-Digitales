-------------------------------------------------------------------------------
--
-- Title       : Fub1
-- Design      : RegistroDesplazamientoParaleloFull
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/eevae/OneDrive/Documentos/Programacion/DSD/RegistroDezplazamientoParaleloFull/RegistroDesplazamientoParaleloFull/src/Fub1.vhd
-- Generated   : Sat Oct  2 01:12:57 2021
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
		 D : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 Q : out STD_LOGIC
	     );
end Fub1;

--}} End of automatically maintained section

architecture Fub1 of Fub1 is
begin

	process( clk )
		
	begin 
		
	if ( clk'event and clk = '1' ) then	   
		
		Q<=D;

	end if;		
	
	end process;	 

end Fub1;
