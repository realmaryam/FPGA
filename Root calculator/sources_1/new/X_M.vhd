----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2021 08:22:48 PM
-- Design Name: 
-- Module Name: X_M - Behavioral
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

entity X_M is
    Port ( DI1 : in STD_LOGIC;
           A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           A4 : in STD_LOGIC;
           PI1 : in STD_LOGIC;
           PI2 : in STD_LOGIC;
           DO1 : out STD_LOGIC;
           R1 : out STD_LOGIC;
           DO2 : out STD_LOGIC;
           R2 : out STD_LOGIC;
           R3 : out STD_LOGIC;
           R4 : out STD_LOGIC;
           CO1 : out STD_LOGIC;
           R0 : out STD_LOGIC;
           CO2 : out STD_LOGIC);
end X_M;

architecture Behavioral of X_M is
    signal C : std_logic_vector(4 downto 0);
    signal Pnot : std_logic_vector(1 downto 0);
    signal R : std_logic_vector(1 downto 0);
     
begin
    Pnot(0) <= not(PI1);
    Pnot(1) <= not(PI2);
    CAS_a : entity work.CAS(Behavioral)
        PORT MAP (P => PI1, D => PI1, X => A0, Cin => C(0), Cout => CO1, R => R0 );
    CAS_b : entity work.CAS(Behavioral)
        PORT MAP (P => PI1, D => Pnot(0), X => A1, Cin => C(1), Cout => C(0), R => R(0) );
    CAS_c : entity work.CAS(Behavioral)
        PORT MAP (P => PI1, D => '1', X => A2, Cin => PI1 , Cout => C(1), R => R(1) );
    CAS_d : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => DI1, X => R(0), Cin => C(2), Cout => CO2, R => R1 );
    CAS_e : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => PI2, X => R(1), Cin => C(3), Cout => C(2), R => R2 );
    CAS_f : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => Pnot(1), X => A3, Cin => C(4), Cout => C(3), R => R3 );
    CAS_g : entity work.CAS(Behavioral)
        PORT MAP (P => PI2, D => '1', X => A4, Cin => PI2, Cout => C(4), R => R4 );
        
    DO1 <= DI1;
    DO2 <= PI2;
            
    

end Behavioral;
