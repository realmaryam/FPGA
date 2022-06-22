----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/22/2021 10:52:37 AM
-- Design Name: 
-- Module Name: crossCorrelation - Behavioral
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

entity crossCorrelation is
  Port (
        clk, reset     : in std_logic;
        x              : in std_logic_vector(15 downto 0);
        y              : in std_logic_vector(15 downto 0)
      --  Rxy            : out std_logic_vector(31 downto 0);
    --    lag            : out std_logic_vector(4 downto 0)
    );
end crossCorrelation;

architecture Behavioral of crossCorrelation is
-- define RAM type
    type mem_type is array (0 to 63) of std_logic_vector(15 downto 0);
        
-- define state
    type state_type is (one, two, three);
    
    signal Ramx, Ramy : mem_type;
    signal RamRxy : mem_type;

    signal state_reg, state_next : state_type;
--    := (others => '0');
    signal addrx : unsigned (5 downto 0) := (others => '0');
    signal addry : unsigned (5 downto 0) := (others => '0');
    signal addrRxy : unsigned (6 downto 0) := (others => '0');
    signal Rxy_sum : unsigned(31 downto 0);
    signal mult : unsigned(31 downto 0);
    signal temp : std_logic_vector(31 downto 0);
 --   signal index : std_logic_vector(63 downto 0);

begin
    -- state register
    process(clk, reset)
    begin
        if (reset = '1') then
            state_reg <= one ;
        
        elsif(clk'event and clk = '1') then
            state_reg <= state_next;
            
        end if;
    end process;
    
    -- next state
    process(state_reg,addry,addrx,addrRxy,Rxy_sum,mult,x,y,Ramx,Ramy )
    begin 
        case state_reg is
            when one =>
                if addry = "111111" then
                    state_next <= two;
                    addrx <=(others => '0');
                else
                    Ramx(to_integer(addrx)) <= x ;
                    addrx <= addrx + 1;
                    Ramy(to_integer(addry)) <= y ;
                    addry <= addry + 1;
                end if;
                
            when two =>
                if(addrRxy = "111111") then
                    state_next <= three;
                else
                    
                    for i in 0 to 63 loop
                        if i >= to_integer(addrRxy) then
                            exit;
                        else
                        mult <= unsigned(Ramy(to_integer(addry) +i - to_integer(addrRxy) )) * unsigned(Ramx(i));
                        Rxy_sum <= Rxy_sum + mult;
                        end if;
                    end loop;

                    RamRxy(to_integer(addrRxy)) <= std_logic_vector(Rxy_sum) ;
                    addrRxy <= addrRxy + 1;
                    Rxy_sum <= (others => '0');
                    addrx <= addrx + 1;
                    addry <= addry - 1;
                end if;
            when three =>
            
        end case;
        
    end process;
    


end Behavioral;
