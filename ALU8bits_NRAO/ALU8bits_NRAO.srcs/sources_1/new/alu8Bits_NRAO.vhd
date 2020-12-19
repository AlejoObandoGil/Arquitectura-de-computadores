----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2019 19:23:28
-- Design Name: 
-- Module Name: alu8Bits_NRAO - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity alu8Bits_NRAO is
    Port ( --entradas
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           operacion : in STD_LOGIC_VECTOR (2 downto 0);
           --salidas
           resultado : in STD_LOGIC_VECTOR (7 downto 0);
           carry : in STD_LOGIC
           );
end alu8Bits_NRAO;

architecture Behavioral of alu8Bits_NRAO is
    signal s: std_logic_vector(8 downto 0) := (others => '0');

begin
    --'0' = concatenamos un bit mas para el resultado del carry
    whit operacion(2 downto 0) select
        s <=   --aritmeticas
           ('0' & A) + B when "000",
           ('0' & A) - B when "001",
           --logicas
           ('0' & A) and ('0'B when "010",
           ('0' & A) or ('0'B when "011",
           ('0' & A) when "100",
           ('0' & B) when "101",
           not ('0' & A) when "110",
           not ('0' & B) when others,
-- En carry de salida asignamos el bit 9       
carry <= s(8);
-- resultado los bits 1 a 8 
resultado <= s(7 downto 0);

end Behavioral;
