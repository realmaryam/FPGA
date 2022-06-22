----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2021 09:56:00 AM
-- Design Name: 
-- Module Name: HA_tb - Behavioral
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


entity HA_tb is
--  Port ( );
end HA_tb;

architecture Behavioral of HA_tb is
-- component declarations
component HA is
    Port ( A : in STD_LOGIC;            -- input1
           B : in STD_LOGIC;            -- input2
           S : out STD_LOGIC;           -- sum
           C : out STD_LOGIC);          -- carry
end component;
--signal declarations
    signal A : STD_LOGIC := '0';  
    signal B : STD_LOGIC := '0';          
    signal S : STD_LOGIC := '0';           
    signal C : STD_LOGIC := '0';          

begin

-- main simulation
process
begin
   ------------------------------------------
   wait for 100 ns;
   
   A <= '1';
   B <= '1';
      ------------------------------------------
   wait for 100 ns;
   
   A <= '1';
   B <= '0';
   
   wait;    

end process;

    -- main compnent instantiation    
    HA_inst: HA
    Port map(
      A => A, 
      B => B,
      S => S,
      C => C
    );

end Behavioral;
