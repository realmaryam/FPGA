----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2021 07:51:07 PM
-- Design Name: 
-- Module Name: crossCorrelation_tb - Behavioral
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

entity crossCorrelation_tb is
--  Port ( );
end crossCorrelation_tb;

architecture Behavioral of crossCorrelation_tb is

component crossCorrelation is
  Port (
        clk, reset     : in std_logic;
        x              : in std_logic_vector(15 downto 0);
        y              : in std_logic_vector(15 downto 0)
    --    Rxy            : out std_logic_vector(31 downto 0);
    --    lag            : out std_logic_vector(4 downto 0)
    );
end component;

-- rom components
component Romx is
    port(
    clk : in std_logic;
    en : in std_logic;
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(15 downto 0)
    );
end component;

component Romy is
    port(
    clk : in std_logic;
    en : in std_logic;
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(15 downto 0)
    );
end component;

--    -- ROM definition
--    type rom_type is array (0 to 63) of std_logic_vector(15 downto 0);
--    constant Romx: rom_type := ( x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"FFFF", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", 
--                                 x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000",
--                                 x"3aa5");
                                 
--    constant Romy: rom_type :=  (x"8f2a", x"3af5", x"2a02", x"43c6", x"02b9", x"4e96", x"933d", 
--                                 x"86b1", x"5588", x"6dd2", x"2299", x"1a8a", x"648c", x"931a", 
--                                 x"4d68", x"858b", x"3fb6", x"51f2", x"5906", x"4d0a", x"0000", 
--                                 x"9ace", x"861f", x"8894", x"4514", x"135e", x"3e86", x"0945", 
--                                 x"3b80", x"942a", x"ffff", x"6e1d", x"2fbc", x"34a4", x"2b99", 
--                                 x"8ff3", x"6121", x"53e7", x"1e75", x"8522", x"290b", x"7f63", 
--                                 x"2e0a", x"4d83", x"5fd1", x"7981", x"3c17", x"6259", x"21d0", 
--                                 x"4023", x"4e1e", x"5800", x"92bf", x"13a9", x"562d", x"bbd0", 
--                                 x"14ed", x"8298", x"0bfa", x"0795", x"54e2", x"515e", x"4589",
--                                 x"3aa5");                                   
                                 
    -- signals of component crossCorrelation
       signal clk            :  std_logic;
       signal x              :  std_logic_vector(15 downto 0);
       signal y              :  std_logic_vector(15 downto 0);
    --   signal Rxy            :  std_logic_vector(31 downto 0);
     --  signal lag            :  std_logic_vector(4 downto 0);
       signal reset          :  std_logic;
       
    -- rom signals
    signal enx : std_logic := '0';
    signal addrx : std_logic_vector(3 downto 0) := (others => '0');
    signal doutx : std_logic_vector(15 downto 0) := (others => '0');
    signal eny : std_logic := '0';
    signal addry : std_logic_vector(3 downto 0) := (others => '0');
    signal douty : std_logic_vector(15 downto 0) := (others => '0');
       
    -- other signals
       signal read_from_rom : std_logic := '0';
       
   -- Clock period definitions
       constant clk_period : time := 10 ns;
begin
    
    -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
   
   -- Stimulus process
   stim_proc: process
   begin		
      reset	<= '1';
      wait for 100 ns;
      read_from_rom <= '1';
      enx <= '1';
      eny <= '1';
--      wait for clk_period;	
	  reset<='0';
      wait;
   end process;
   
   -- read from rom
   rom_re: process(clk)
    begin
    if rising_edge(clk) then
        if read_from_rom = '1' then
            if addrx /= "1111" then
                addrx <= std_logic_vector(unsigned(addrx) + 1);
                addry <= std_logic_vector(unsigned(addry) + 1);
            end if;
        end if;
    end if;
    end process;
    
    -- component instantiation
    main_inst: crossCorrelation
    Port Map( -- inputs
         clk => clk,
         reset => reset,
         x => x,
         y => y
         -- outputs
    --     Rxy => Rxy,
    --     lag => lag
         );


end Behavioral;

