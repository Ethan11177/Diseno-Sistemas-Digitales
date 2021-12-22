-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : RegistroDesplazamientoParaleloFull
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroDezplazamientoParaleloFull\RegistroDesplazamientoParaleloFull\compile\RegistroDeesplazamientoParaleloFull.vhd
-- Generated   : Sat Oct  2 01:18:17 2021
-- From        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\RegistroDezplazamientoParaleloFull\RegistroDesplazamientoParaleloFull\src\RegistroDeesplazamientoParaleloFull.bde
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
       D1 : in STD_LOGIC;
       clk : in STD_LOGIC;
       D2 : in STD_LOGIC;
       Cs : in STD_LOGIC;
       Q1 : out STD_LOGIC;
       Q2 : out STD_LOGIC
  );
end puertos;

architecture programa of puertos is

---- Component declarations -----

component Fub1
  port(
       D : in STD_LOGIC;
       clk : in STD_LOGIC;
       Q : out STD_LOGIC
  );
end component;
component Fub2
  port(
       Cs : in STD_LOGIC;
       E : in STD_LOGIC;
       Q1 : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET689 : STD_LOGIC;
signal NET726 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : Fub1
  port map(
       D => D1,
       clk => clk,
       Q => NET689
  );

U2 : Fub2
  port map(
       Cs => Cs,
       E => NET689,
       Q1 => Q1
  );

U3 : Fub2
  port map(
       Cs => Cs,
       E => NET726,
       Q1 => Q2
  );

U4 : Fub1
  port map(
       D => D2,
       clk => clk,
       Q => NET726
  );


end programa;
