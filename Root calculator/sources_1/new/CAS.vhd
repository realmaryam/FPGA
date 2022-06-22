----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2021 03:44:14 PM
-- Design Name: 
-- Module Name: CAS - Behavioral
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

entity CAS is
    Port ( D : in std_logic;
           X : in std_logic;
           P : in std_logic;
           Cin : in std_logic;
           R : out std_logic;
           Cout : out std_logic
     );
end CAS;

architecture Behavioral of CAS is
    signal xorV : std_logic :='0';
begin
    xorV <= D xor P;
    
    FA: entity work.FA(Behavioral)
        PORT MAP (A => xorV, B => X, Cin => Cin, S => R, Cout => Cout);
    
    
    
end Behavioral;
