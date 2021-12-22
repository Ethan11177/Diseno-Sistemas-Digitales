-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : RegistroRotacionDerecha
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroRotacionDerecha\RegistroRotacionDerecha\compile\RegistroRotacionDerecha.vhd
-- Generated   : Sat Oct  2 15:04:42 2021
-- From        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroRotacionDerecha\RegistroRotacionDerecha\src\RegistroRotacionDerecha.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity puertos is
  port(
       clk : in STD_LOGIC;
       Q3 : inout STD_LOGIC;
       Q1 : inout STD_LOGIC;
       D : inout STD_LOGIC;
       Q2 : inout STD_LOGIC
  );
end puertos;

architecture programa of puertos is

---- Component declarations -----

component Fub1
  port(
       clk : in STD_LOGIC;
       Q : inout STD_LOGIC;
       D : in STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : Fub1
  port map(
       clk => clk,
       Q => Q1,
       D => D
  );

U2 : Fub1
  port map(
       clk => clk,
       Q => Q2,
       D => Q1
  );

U3 : Fub1
  port map(
       clk => clk,
       Q => Q3,
       D => Q2
  );

U4 : Fub1
  port map(
       clk => clk,
       Q => D,
       D => Q3
  );


end programa;
