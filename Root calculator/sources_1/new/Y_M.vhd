----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2021 08:14:57 PM
-- Design Name: 
-- Module Name: Y_M - Behavioral
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

entity Y_M is
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
end Y_M;

architecture Behavioral of Y_M is
    signal C : std_logic_vector(2 downto 0);
    signal R_0 : std_logic;
begin
    CAS_h : entity work.CAS(Behavioral)
        PORT MAP (P => PI1, D => DI1, X => A11, Cin => C(0), Cout => CO1, R => S11 );
    CAS_i : entity work.CAS(Behavioral)
        PORT MAP (P => PI1, D => DI2, X => A12, Cin => CI1, Cout => C(0), R => R_0 );
    CAS_j : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => DI1, X => R_0, Cin => C(2), Cout => CO2, R => S21 );
    CAS_k : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => DI2, X => A22, Cin => CI2, Cout => C(2), R => S22 );
        
    DO1 <= DI1;
    DO2 <= DI2;
    PO1 <= PI1;
    PO2 <= PI2;


end Behavioral;
