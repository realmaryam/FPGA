----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2021 09:43:53 AM
-- Design Name: 
-- Module Name: CAS_tb - Behavioral
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

entity CAS_tb is
--  Port ( );
end CAS_tb;

architecture Behavioral of CAS_tb is

component CAS is
    Port ( D : in std_logic;
           X : in std_logic;
           P : in std_logic;
           Cin : in std_logic;
           R : out std_logic;
           Cout : out std_logic
     );
end component;

   signal D : std_logic := '0';
   signal X : std_logic := '0';
   signal P : std_logic := '0';
   signal Cin : std_logic := '0';
   signal R : std_logic := '0';
   signal Cout : std_logic := '0';

    

begin
-- main simulation
process
begin

    ----------------------
    wait for 100 ns;
    X <= '1';
    D <= '0';
    P <= '0';
    Cin <= '1';
    
    ----------------------
    wait for 100 ns;
    X <= '0';
    D <= '1';
    P <= '0';
    Cin <= '1';
    
    ----------------------
    wait for 100 ns;
    X <= '1';
    D <= '1';
    P <= '1';
    Cin <= '0';
    
    
wait;
end process;


--main component instantiation
    CAS_inst: CAS
    port map(
        D => D,
        X => X,
        P => P,
        Cin => Cin,
        R => R,
        Cout => Cout
    );

end Behavioral;
