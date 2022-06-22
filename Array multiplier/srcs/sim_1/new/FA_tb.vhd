----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2021 09:57:06 AM
-- Design Name: 
-- Module Name: FA_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_tb is
--  Port ( );
end FA_tb;

architecture Behavioral of FA_tb is
component FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;
--signal declarations
    signal A : STD_LOGIC := '0';  
    signal B : STD_LOGIC := '0'; 
    signal Cin : STD_LOGIC := '0';         
    signal S : STD_LOGIC := '0';           
    signal Cout : STD_LOGIC := '0';    
begin

-- main simulation
process
begin
   ------------------------------------------
   wait for 100 ns;
   
   A <= '1';
   B <= '0';
   Cin <= '1';
 
   ------------------------------------------
   wait for 100 ns;
   
   A <= '0';
   B <= '1';
   Cin <= '0';
   
   wait;    

end process;

    -- main compnent instantiation    
    FA_inst: FA
    Port map(
      A => A, 
      B => B,
      Cin => Cin,
      S => S,
      Cout => Cout
    );

end Behavioral;
