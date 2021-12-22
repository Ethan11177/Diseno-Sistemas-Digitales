-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : RecorrimientoSerie
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RecorrimientoSerie\RecorrimientoSerie\compile\RegistroSerie.vhd
-- Generated   : Sat Oct  2 13:32:03 2021
-- From        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RecorrimientoSerie\RecorrimientoSerie\src\RegistroSerie.bde
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
       D : in STD_LOGIC;
       clk : in STD_LOGIC;
       Qn1 : out STD_LOGIC;
       Qn2 : out STD_LOGIC;
       Qn3 : out STD_LOGIC;
       Qn4 : out STD_LOGIC;
       Q1 : inout STD_LOGIC;
       Q2 : inout STD_LOGIC;
       Q4 : inout STD_LOGIC;
       Q3 : inout STD_LOGIC
  );
end puertos;

architecture programa of puertos is

---- Component declarations -----

component Fub1
  port(
       D : in STD_LOGIC;
       clk : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qn : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : Fub1
  port map(
       D => D,
       clk => clk,
       Q => Q1,
       Qn => Qn1
  );

U2 : Fub1
  port map(
       D => Q1,
       clk => clk,
       Q => Q2,
       Qn => Qn2
  );

U3 : Fub1
  port map(
       D => Q2,
       clk => clk,
       Q => Q3,
       Qn => Qn3
  );

U4 : Fub1
  port map(
       D => Q3,
       clk => clk,
       Q => Q4,
       Qn => Qn4
  );


end programa;
