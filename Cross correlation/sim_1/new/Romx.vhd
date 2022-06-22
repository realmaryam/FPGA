----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/26/2021 01:17:59 PM
-- Design Name: 
-- Module Name: Romx - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Romx is
  Port (
        clk : in std_logic;
        en : in std_logic;
        addr : in std_logic_vector(5 downto 0);
        data : out std_logic_vector(15 downto 0)
   );
end Romx;

architecture Behavioral of Romx is

    type rom_type is array (0 to 63) of std_logic_vector(15 downto 0);
    signal ROM : rom_type := ( x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"FFFF", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000",
                                 x"3aa5");
    attribute rom_style : string;
    attribute rom_style of ROM : signal is "block";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (en = '1') then
                data <= ROM(to_integer(unsigned(addr)));
            end if;
        end if;
    end process;
end behavioral;