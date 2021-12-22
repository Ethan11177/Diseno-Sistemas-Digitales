-------------------------------------------------------------------------------
--
-- Title       : puertos
-- Design      : TipoJK
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\TipoJK\TipoJK\src\TipoJK.vhd
-- Generated   : Tue Sep 21 21:41:33 2021
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
		 J : in STD_LOGIC;
		 K : in STD_LOGIC;
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
	variable TMP: std_logic;
	begin
		if(clk='1' and clk'EVENT) then
			if(J='0' and K='0')then
				TMP:=TMP;
			elsif(J='1' and K='1')then
				TMP:= not TMP;
			elsif(J='0' and K='1')then
				TMP:='0';
			else
				TMP:='1';
			end if;
		end if;
Q<=TMP;
Qn <= not TMP;
end process;

end procesador;
