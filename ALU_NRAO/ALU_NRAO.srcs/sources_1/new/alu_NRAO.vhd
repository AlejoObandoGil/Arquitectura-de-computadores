----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2019 17:31:42
-- Design Name: 
-- Module Name: alu_NRAO - Behavioral
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

entity alu_NRAO is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           operacion : in STD_LOGIC_VECTOR (2 downto 0);
           resultado : out STD_LOGIC_VECTOR (7 downto 0));
end alu_NRAO;

architecture Behavioral of alu_NRAO is

begin

   with operacion select
      resultado <= --aritmeticas
                   A + B when "000",
                   A - B when "001",
                   --logicas
                   A and B when "010",
                   A or B when "011",
                   A when "100",
                   B when "101",
                   not A when "110",
                   not B when others,

end Behavioral;
