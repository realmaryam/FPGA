----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2021 10:49:30 PM
-- Design Name: 
-- Module Name: HA - Behavioral
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


use IEEE.NUMERIC_STD.ALL;


-------- HALF ADDER
entity HA is
    Port ( A : in STD_LOGIC;            -- input1
           B : in STD_LOGIC;            -- input2
           S : out STD_LOGIC;           -- sum
           C : out STD_LOGIC);          -- carry
end HA;

architecture Behavioral of HA is

begin
    S <= A xor B;
    C <= A and B;

end Behavioral;
