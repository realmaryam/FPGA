----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2021 08:54:41 AM
-- Design Name: 
-- Module Name: multiplier_tb - Behavioral
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



entity multiplier_tb is
--  Port ( );
end multiplier_tb;

architecture Behavioral of multiplier_tb is
-- component declarations
component multiplier is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           P : out STD_LOGIC_VECTOR (15 downto 0));
end component;

--signal declarations
           signal X : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
           signal A : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
           signal P : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
begin
-- main simulation
process
begin
   ------------------------------------------
   wait for 100 ns;
   
   X <= std_logic_vector(to_unsigned(50 ,8));
   A <= std_logic_vector(to_unsigned(60 ,8));
   
   ------------------------------------------
   wait for 100 ns;
   
   X <= std_logic_vector(to_unsigned(75 ,8));
   A <= std_logic_vector(to_unsigned(65 ,8));
   -- answer = 75*65 = 4875
   wait;    

end process;

    -- main compnent instantiation    
    mutiplier_inst: multiplier
    Port map(
      X => X, 
      A => A,
      P => P
    );

end Behavioral;
