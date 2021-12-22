-------------------------------------------------------------------------------
--
-- Title       : variables
-- Design      : Contador
-- Author      : Ethan Vaquera
-- Company     : ESCOM
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\ContadorIrregular\Contador\src\contador.vhd
-- Generated   : Fri Dec  3 20:38:58 2021
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
--{entity {variables} architecture {arquitectura}}

library IEEE;
use IEEE.std_logic_1164.all;

entity variables is
	 port(
		 clk : in STD_LOGIC;
		 cont : out STD_LOGIC_VECTOR(2 downto 0)
	     );
end variables;

--}} End of automatically maintained section

architecture arquitectura of variables is

type estados is (uno, dos, cinco, siete);
signal estado_pr, sig: estados;

begin
	
	process( clk )
		
	begin
		
	if ( clk'event and clk = '1' ) then
		estado_pr <= sig;
	end if;		
	
	end process;
	
	process( estado_pr )
		
	begin  		  
		
		case (estado_pr) is 
			when uno =>
			cont <= "001";
			sig <= dos;
			when dos =>
			cont <= "010";
			sig <= cinco; 
			when cinco =>
			cont <= "101";
			sig <= siete;
			when siete =>
			cont <= "111";
			sig <= uno; 
			end case;
	end process;	

end arquitectura;
