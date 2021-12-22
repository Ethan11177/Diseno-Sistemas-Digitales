-------------------------------------------------------------------------------
--
-- Title       : Fub2
-- Design      : RegistroDesplazamientoParaleloFull
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/eevae/OneDrive/Documentos/Programacion/DSD/RegistroDezplazamientoParaleloFull/RegistroDesplazamientoParaleloFull/src/Fub2.vhd
-- Generated   : Sat Oct  2 01:14:34 2021
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
		 Cs : in STD_LOGIC;
		 E : in STD_LOGIC;
		 Q1 : out STD_LOGIC
	     );
end Fub2;

--}} End of automatically maintained section

architecture Fub2 of Fub2 is
begin

	Q1 <= E and Cs;

end Fub2;
