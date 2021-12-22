-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Anillo
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\Anillo\Anillo\compile\Anillo.vhd
-- Generated   : Tue Oct  5 11:26:42 2021
-- From        : C:\Users\eevae\OneDrive\Documentos\Programacion\DSD\Anillo\Anillo\src\Anillo.bde
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
       d : in STD_LOGIC;
       clk : in STD_LOGIC;
       q : inout STD_LOGIC;
       q1 : inout STD_LOGIC
  );
end puertos;

architecture programa of puertos is

---- Component declarations -----

component Fub2
  port(
       d : in STD_LOGIC;
       clk : in STD_LOGIC;
       q : inout STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET1287 : STD_LOGIC;
signal NET1291 : STD_LOGIC;
signal NET1295 : STD_LOGIC;
signal NET1299 : STD_LOGIC;
signal NET1303 : STD_LOGIC;
signal NET1307 : STD_LOGIC;
signal NET1311 : STD_LOGIC;
signal NET1315 : STD_LOGIC;

begin

----  Component instantiations  ----

U12 : Fub2
  port map(
       d => d,
       clk => clk,
       q => q1
  );

U13 : Fub2
  port map(
       d => q1,
       clk => clk,
       q => NET1287
  );

U14 : Fub2
  port map(
       d => NET1287,
       clk => clk,
       q => NET1291
  );

U15 : Fub2
  port map(
       d => NET1291,
       clk => clk,
       q => NET1295
  );

U16 : Fub2
  port map(
       d => NET1295,
       clk => clk,
       q => NET1299
  );

U17 : Fub2
  port map(
       d => NET1299,
       clk => clk,
       q => NET1303
  );

U18 : Fub2
  port map(
       d => NET1303,
       clk => clk,
       q => NET1307
  );

U19 : Fub2
  port map(
       d => NET1307,
       clk => clk,
       q => NET1311
  );

U20 : Fub2
  port map(
       d => NET1311,
       clk => clk,
       q => NET1315
  );

U21 : Fub2
  port map(
       d => NET1315,
       clk => clk,
       q => q
  );


end programa;
