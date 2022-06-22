----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2021 10:03:23 AM
-- Design Name: 
-- Module Name: X_M_tb - Behavioral
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

entity X_M_tb is
--  Port ( );
end X_M_tb;

architecture Behavioral of X_M_tb is

component X_M is
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
end component;

       signal DI1 : STD_LOGIC := '0';
       signal A0 : STD_LOGIC := '0';
       signal A1 : STD_LOGIC := '0';
       signal A2 : STD_LOGIC := '0';
       signal A3 : STD_LOGIC := '0';
       signal A4 : STD_LOGIC := '0';
       signal PI1 : STD_LOGIC := '0';
       signal PI2 : STD_LOGIC := '0';
       signal DO1 :  STD_LOGIC := '0';
       signal R1 :  STD_LOGIC := '0';
       signal DO2 :  STD_LOGIC := '0';
       signal R2 :  STD_LOGIC := '0';
       signal R3 :  STD_LOGIC := '0';
       signal R4 :  STD_LOGIC := '0';
       signal CO1 :  STD_LOGIC := '0';
       signal R0 :  STD_LOGIC := '0';
       signal CO2 :  STD_LOGIC := '0';

begin

    process
    begin
        wait for 10 ns;
        A0 <= '1';
        A1 <= '0';
        A2 <= '1';
        A3 <= '0';
        A4 <= '1';
        DI1 <= '0';
        PI1 <= '1';
        PI2 <= '0';

        wait for 10 ns;
        A0 <= '0';
        A1 <= '1';
        A2 <= '1';
        A3 <= '0';
        A4 <= '0';
        DI1 <= '1';
        PI1 <= '1';
        PI2 <= '1';


        wait for 10 ns;
        A0 <= '1';
        A1 <= '0';
        A2 <= '0';
        A3 <= '1';
        A4 <= '1';
        DI1 <= '0';
        PI1 <= '1';
        PI2 <= '1';

        wait for 10 ns;
        A0 <= '1';
        A1 <= '0';
        A2 <= '0';
        A3 <= '0';
        A4 <= '1';
        DI1 <= '1';
        PI1 <= '0';
        PI2 <= '0';

        wait;
    end process;
-- instantiate
    x_M_inst : X_M
    port map(
        A0 => A0,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        DI1 => DI1,
        PI1 => PI1,
        PI2 => PI2,
        R0 => R0,
        R1 => R1,
        R2 => R2,
        R3 => R3,
        R4 => R4,
        DO1 => DO1,
        DO2 => DO2,
        CO1 => CO1,
        CO2 => CO2);

end Behavioral;
