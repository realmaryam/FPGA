----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2021 11:08:47 PM
-- Design Name: 
-- Module Name: SquareRoot_tb - Behavioral
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

entity SquareRoot_tb is
--  Port ( );
end SquareRoot_tb;

architecture Behavioral of SquareRoot_tb is

component SquareRoot is
    Port ( A : in std_logic_vector(1 to 12);
           q : out std_logic_vector(1 to 6);
           R : out std_logic_vector(5 to 12)
    );
end component;

   signal A :  std_logic_vector(1 to 12);
   signal q :  std_logic_vector(1 to 6);
   signal R :  std_logic_vector(5 to 12);

begin
    process
    begin
    
    ---------------------------------------
    wait for 10 ns;
    A <= "101010101010";
    
    ---------------------------------------
    wait for 10 ns;
    A <= "111111000000";
    
    ---------------------------------------
    wait for 10 ns;
    A <= "000000000001";
    
    ---------------------------------------
    wait for 10 ns;
    A <= "000000000000";
    
    
    ---------------------------------------
    wait for 10 ns;
    A <= "111111111111";
    
    ---------------------------------------
    wait for 10 ns;
    A <= "100000011111";
    
    
    wait;
    end process;

-- instantiation
    SquareRoot_inst : SquareRoot
    port map (
        A => A,
        q => q,
        R => R
    );

end Behavioral;
