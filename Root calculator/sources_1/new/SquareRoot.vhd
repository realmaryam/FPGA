----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2021 09:17:33 PM
-- Design Name: 
-- Module Name: SquareRoot - Behavioral
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

entity SquareRoot is
    Port ( A : in std_logic_vector(1 to 12);
           q : out std_logic_vector(1 to 6);
           R : out std_logic_vector(5 to 12)
           
    );
end SquareRoot;

architecture Behavioral of SquareRoot is
    signal C : std_logic_vector(20 downto 0);
    signal R_out : std_logic_vector(13 downto 0);
begin

    X_M1 : entity work.X_M(Behavioral)
        PORT MAP (DI1 => '0', A0 => '1', A1 => A(1), A2 => A(2), A3 => A(3), A4 => A(4)
        , PI1 => '1', CO1 => C(0), R0 => open, PI2 => C(0), CO2 => C(1), DO1 => R_out(0)
        , R1 => open, DO2 => R_out(1), R2 => R_out(2), R3 => R_out(3), R4 => R_out(4)
        );
    
    X_M2 : entity work.X_M(Behavioral)
        PORT MAP (DI1 => C(4), A0 => R_out(4), A1 => A(5), A2 => A(6), A3 => A(7), A4 => A(8)
        , PI1 => C(4), CO1 => C(5), R0 => C(6), PI2 => C(7), CO2 => C(8), DO1 => R_out(8)
        , R1 => R_out(9), DO2 => R_out(10), R2 => R_out(11), R3 => R_out(12), R4 => R_out(13)
        );
        
    X_M3 : entity work.X_M(Behavioral)
        PORT MAP (DI1 => C(16), A0 => R_out(13), A1 => A(9), A2 => A(10), A3 => A(11), A4 => A(12)
        , PI1 => C(16), CO1 => C(17), R0 => C(18), PI2 => C(19), CO2 => C(20), DO1 => open
        , R1 => R(9), DO2 => open, R2 => R(10), R3 => R(11), R4 => R(12)
        );
    
    Y_M1 : entity work.Y_M(Behavioral)
        PORT MAP (DI1 => R_out(0), A11 => R_out(2), DI2 => R_out(1), A12 => R_out(3)
        , PI1 =>C(1), CO1 => C(2), S11 => open, PI2 =>C(2), CO2 => C(3), DO1 => R_out(5)
        , S21 => open, DO2 => R_out(6), S22 => R_out(7), PO1 => C(4), CI1 => C(5)
        , A22 => C(6), PO2 => C(7), CI2 => C(8)
        );
    
    Y_M2 : entity work.Y_M(Behavioral)
        PORT MAP (DI1 => R_out(5), A11 => R_out(7), DI2 => R_out(6), A12 => R_out(9)
        , PI1 =>C(3), CO1 => C(9), S11 => open, PI2 =>C(9), CO2 => C(10), DO1 => open
        , S21 => R(5), DO2 => open, S22 => R(6), PO1 => C(11), CI1 => C(12)
        , A22 => C(13), PO2 => C(14), CI2 => C(15)
        );
        
    Y_M3 : entity work.Y_M(Behavioral)
        PORT MAP (DI1 => R_out(8), A11 => R_out(11), DI2 => R_out(10), A12 => R_out(12)
        , PI1 =>C(11), CO1 => C(12), S11 => C(13), PI2 =>C(14), CO2 => C(15), DO1 => open
        , S21 => R(7), DO2 => open, S22 => R(8), PO1 => C(16), CI1 => C(17)
        , A22 => C(18), PO2 => C(19), CI2 => C(20)
        );
    
    
    q(1) <=  C(0);
    q(2) <=  C(1);
    q(3) <=  C(2);
    q(4) <=  C(3);
    q(5) <=  C(9);
    q(6) <=  C(10);


end Behavioral;
