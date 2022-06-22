----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2021 10:27:18 PM
-- Design Name: 
-- Module Name: Y_M_tb - Behavioral
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

entity Y_M_tb is
--  Port ( );
end Y_M_tb;

architecture Behavioral of Y_M_tb is

component Y_M is
    Port ( DI1 : in STD_LOGIC;
           A11 : in STD_LOGIC;
           DI2 : in STD_LOGIC;
           A12 : in STD_LOGIC;
           PI1 : in STD_LOGIC;
           PI2 : in STD_LOGIC;
           CI1 : in STD_LOGIC;
           A22 : in STD_LOGIC;
           CI2 : in STD_LOGIC;
           DO1 : out STD_LOGIC;
           S21 : out STD_LOGIC;
           DO2 : out STD_LOGIC;
           S22 : out STD_LOGIC;
           CO1 : out STD_LOGIC;
           S11 : out STD_LOGIC;
           CO2 : out STD_LOGIC;
           PO1 : out STD_LOGIC;
           PO2 : out STD_LOGIC);
end component;

           signal DI1 : STD_LOGIC := '0';
           signal A11 :  STD_LOGIC := '0';
           signal DI2 :  STD_LOGIC := '0';
           signal A12 :  STD_LOGIC := '0';
           signal PI1 :  STD_LOGIC := '0';
           signal PI2 :  STD_LOGIC := '0';
           signal CI1 :  STD_LOGIC := '0';
           signal A22 :  STD_LOGIC := '0';
           signal CI2 :  STD_LOGIC := '0';
           signal DO1 :  STD_LOGIC := '0';
           signal S21 :  STD_LOGIC := '0';
           signal DO2 :  STD_LOGIC := '0';
           signal S22 :  STD_LOGIC := '0';
           signal CO1 :  STD_LOGIC := '0';
           signal S11 :  STD_LOGIC := '0';
           signal CO2 :  STD_LOGIC := '0';
           signal PO1 :  STD_LOGIC := '0';
           signal PO2 :  STD_LOGIC := '0';
begin
    process
    begin
    ---------------------------------------
        wait for 10 ns;
        DI1 <= '1';
        A11 <= '1';
        DI2 <= '0';
        A12 <= '1';
        PI1 <= '0';
        PI2 <= '1';
        CI1 <= '0';
        A22 <= '1';
        CI2 <= '1';
        
     ---------------------------------------
        wait for 10 ns;
        DI1 <= '0';
        A11 <= '1';
        DI2 <= '1';
        A12 <= '0';
        PI1 <= '1';
        PI2 <= '1';
        CI1 <= '1';
        A22 <= '0';
        CI2 <= '0';
        
     ---------------------------------------
        wait for 10 ns;
        DI1 <= '0';
        A11 <= '0';
        DI2 <= '0';
        A12 <= '0';
        PI1 <= '1';
        PI2 <= '1';
        CI1 <= '1';
        A22 <= '0';
        CI2 <= '1';
    
    wait;
    end process;
 -- instantiation
     Y_M_inst : Y_M
     port map (
     DI1 => DI1,
     A11 => A11,
     DI2 => DI2,
     A12 => A12,
     PI1 => PI1,
     PI2 => PI2,
     CI1 => CI1,
     A22 => A22,
     CI2 => CI2,
     DO1 => DO1,
     S21 => S21,
     DO2 => DO2,
     S22 => S22,
     CO1 => CO1,
     S11 => S11,
     CO2 => CO2,
     PO1 => PO1,
     PO2 => PO2
     );

end Behavioral;
