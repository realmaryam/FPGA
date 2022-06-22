----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2021 11:02:58 PM
-- Design Name: 
-- Module Name: multiplier - Behavioral
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
use IEEE.NUMERIC_STD.ALL;



entity multiplier is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           P : out STD_LOGIC_VECTOR (15 downto 0));
end multiplier;

architecture Behavioral of multiplier is

-- component declarations
component HA is
    Port ( A : in STD_LOGIC;            -- input1
           B : in STD_LOGIC;            -- input2
           S : out STD_LOGIC;           -- sum
           C : out STD_LOGIC);          -- carry
end component;
component FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;
-- signal declaration
-- according to adder schematic thease signals are named 
    signal a0x0 :STD_LOGIC := '0';
    signal a1x0 :STD_LOGIC := '0';
    signal a2x0 :STD_LOGIC := '0';
    signal a3x0 :STD_LOGIC := '0';
    signal a4x0 :STD_LOGIC := '0';
    signal a5x0 :STD_LOGIC := '0';
    signal a6x0 :STD_LOGIC := '0';
    signal a7x0 :STD_LOGIC := '0';
    
    signal a0x1 :STD_LOGIC := '0';
    signal a1x1 :STD_LOGIC := '0';
    signal a2x1 :STD_LOGIC := '0';
    signal a3x1 :STD_LOGIC := '0';
    signal a4x1 :STD_LOGIC := '0';
    signal a5x1 :STD_LOGIC := '0';
    signal a6x1 :STD_LOGIC := '0';
    signal a7x1 :STD_LOGIC := '0';
    
    signal a0x2 :STD_LOGIC := '0';
    signal a1x2 :STD_LOGIC := '0';
    signal a2x2 :STD_LOGIC := '0';
    signal a3x2 :STD_LOGIC := '0';
    signal a4x2 :STD_LOGIC := '0';
    signal a5x2 :STD_LOGIC := '0';
    signal a6x2 :STD_LOGIC := '0';
    signal a7x2 :STD_LOGIC := '0';
    
    signal a0x3 :STD_LOGIC := '0';
    signal a1x3 :STD_LOGIC := '0';
    signal a2x3 :STD_LOGIC := '0';
    signal a3x3 :STD_LOGIC := '0';
    signal a4x3 :STD_LOGIC := '0';
    signal a5x3 :STD_LOGIC := '0';
    signal a6x3 :STD_LOGIC := '0';
    signal a7x3 :STD_LOGIC := '0';
    
    signal a0x4 :STD_LOGIC := '0';
    signal a1x4 :STD_LOGIC := '0';
    signal a2x4 :STD_LOGIC := '0';
    signal a3x4 :STD_LOGIC := '0';
    signal a4x4 :STD_LOGIC := '0';
    signal a5x4 :STD_LOGIC := '0';
    signal a6x4 :STD_LOGIC := '0';
    signal a7x4 :STD_LOGIC := '0';
    
    signal a0x5 :STD_LOGIC := '0';
    signal a1x5 :STD_LOGIC := '0';
    signal a2x5 :STD_LOGIC := '0';
    signal a3x5 :STD_LOGIC := '0';
    signal a4x5 :STD_LOGIC := '0';
    signal a5x5 :STD_LOGIC := '0';
    signal a6x5 :STD_LOGIC := '0';
    signal a7x5 :STD_LOGIC := '0';
    
    signal a0x6 :STD_LOGIC := '0';
    signal a1x6 :STD_LOGIC := '0';
    signal a2x6 :STD_LOGIC := '0';
    signal a3x6 :STD_LOGIC := '0';
    signal a4x6 :STD_LOGIC := '0';
    signal a5x6 :STD_LOGIC := '0';
    signal a6x6 :STD_LOGIC := '0';
    signal a7x6 :STD_LOGIC := '0';
    
    signal a0x7 :STD_LOGIC := '0';
    signal a1x7 :STD_LOGIC := '0';
    signal a2x7 :STD_LOGIC := '0';
    signal a3x7 :STD_LOGIC := '0';
    signal a4x7 :STD_LOGIC := '0';
    signal a5x7 :STD_LOGIC := '0';
    signal a6x7 :STD_LOGIC := '0';
    signal a7x7 :STD_LOGIC := '0';
    
    signal carry_out :STD_LOGIC_VECTOR (64 downto 0) := (others => '0') ;
    signal sum :STD_LOGIC_VECTOR (64 downto 0) := (others => '0') ;

begin
    a0x0 <= A(0) and X(0);
    a1x0 <= A(1) and X(0);
    a2x0 <= A(2) and X(0);
    a3x0 <= A(3) and X(0);
    a4x0 <= A(4) and X(0);
    a5x0 <= A(5) and X(0);
    a6x0 <= A(6) and X(0);
    a7x0 <= A(7) and X(0);
    
    a0x1 <= A(0) and X(1);
    a1x1 <= A(1) and X(1);
    a2x1 <= A(2) and X(1);
    a3x1 <= A(3) and X(1);
    a4x1 <= A(4) and X(1);
    a5x1 <= A(5) and X(1);
    a6x1 <= A(6) and X(1);
    a7x1 <= A(7) and X(1);
    
    a0x2 <= A(0) and X(2);
    a1x2 <= A(1) and X(2);
    a2x2 <= A(2) and X(2);
    a3x2 <= A(3) and X(2);
    a4x2 <= A(4) and X(2);
    a5x2 <= A(5) and X(2);
    a6x2 <= A(6) and X(2);
    a7x2 <= A(7) and X(2);
    
    a0x3 <= A(0) and X(3);
    a1x3 <= A(1) and X(3);
    a2x3 <= A(2) and X(3);
    a3x3 <= A(3) and X(3);
    a4x3 <= A(4) and X(3);
    a5x3 <= A(5) and X(3);
    a6x3 <= A(6) and X(3);
    a7x3 <= A(7) and X(3);
    
    a0x4 <= A(0) and X(4);
    a1x4 <= A(1) and X(4);
    a2x4 <= A(2) and X(4);
    a3x4 <= A(3) and X(4);
    a4x4 <= A(4) and X(4);
    a5x4 <= A(5) and X(4);
    a6x4 <= A(6) and X(4);
    a7x4 <= A(7) and X(4);
    
    a0x5 <= A(0) and X(5);
    a1x5 <= A(1) and X(5);
    a2x5 <= A(2) and X(5);
    a3x5 <= A(3) and X(5);
    a4x5 <= A(4) and X(5);
    a5x5 <= A(5) and X(5);
    a6x5 <= A(6) and X(5);
    a7x5 <= A(7) and X(5);
    
    a0x6 <= A(0) and X(6);
    a1x6 <= A(1) and X(6);
    a2x6 <= A(2) and X(6);
    a3x6 <= A(3) and X(6);
    a4x6 <= A(4) and X(6);
    a5x6 <= A(5) and X(6);
    a6x6 <= A(6) and X(6);
    a7x6 <= A(7) and X(6);
    
    a0x7 <= A(0) and X(7);
    a1x7 <= A(1) and X(7);
    a2x7 <= A(2) and X(7);
    a3x7 <= A(3) and X(7);
    a4x7 <= A(4) and X(7);
    a5x7 <= A(5) and X(7);
    a6x7 <= A(6) and X(7);
    a7x7 <= A(7) and X(7);
-- the sequence of adders are from right to left / up to down  
-- 8 lines of adders are needed. each line has 7 adders  
    P(0) <= a0x0;
    HF1: HA port map (A => a1x0 , B => a0x1 ,S => P(1), C => carry_out(0));
    HF2: HA port map (A => a2x0 , B => a1x1 ,S => sum(0), C => carry_out(1));
    HF3: HA port map (A => a3x0 , B => a2x1 ,S => sum(1), C => carry_out(2));
    HF4: HA port map (A => a4x0 , B => a3x1 ,S => sum(2), C => carry_out(3));
    HF5: HA port map (A => a5x0 , B => a4x1 ,S => sum(3), C => carry_out(4));
    HF6: HA port map (A => a6x0 , B => a5x1 ,S => sum(4), C => carry_out(5));
    HF7: HA port map (A => a7x0 , B => a6x1 ,S => sum(5), C => carry_out(6));
    
    FA1: FA port map (A => sum(0) , B => a0x2 ,Cin => carry_out(0), S => P(2), Cout => carry_out(7));
    FA2: FA port map (A => sum(1) , B => a1x2 ,Cin => carry_out(1), S => sum(6), Cout => carry_out(8));
    FA3: FA port map (A => sum(2) , B => a2x2 ,Cin => carry_out(2), S => sum(7), Cout => carry_out(9));       
    FA4: FA port map (A => sum(3) , B => a3x2 ,Cin => carry_out(3), S => sum(8), Cout => carry_out(10));   
    FA5: FA port map (A => sum(4) , B => a4x2 ,Cin => carry_out(4), S => sum(9), Cout => carry_out(11));   
    FA6: FA port map (A => sum(5) , B => a5x2 ,Cin => carry_out(5), S => sum(10), Cout => carry_out(12));   
    FA7: FA port map (A => a7x1 , B => a6x2 ,Cin => carry_out(6), S => sum(11), Cout => carry_out(13)); 
        
    FA8: FA port map (A => sum(6) , B => a0x3 ,Cin => carry_out(7), S => P(3), Cout => carry_out(14));
    FA9: FA port map (A => sum(7) , B => a1x3 ,Cin => carry_out(8), S => sum(12), Cout => carry_out(15));
    FA10: FA port map (A => sum(8) , B => a2x3 ,Cin => carry_out(9), S => sum(13), Cout => carry_out(16));
    FA11: FA port map (A => sum(9) , B => a3x3 ,Cin => carry_out(10), S => sum(14), Cout => carry_out(17));
    FA12: FA port map (A => sum(10) , B => a4x3 ,Cin => carry_out(11), S => sum(15), Cout => carry_out(18));
    FA13: FA port map (A => sum(11) , B => a5x3 ,Cin => carry_out(12), S => sum(16), Cout => carry_out(19));
    FA14: FA port map (A => a7x2 , B => a6x3 ,Cin => carry_out(13), S => sum(17), Cout => carry_out(20));
    
    FA15: FA port map (A => sum(12) , B => a0x4 ,Cin => carry_out(14), S => P(4), Cout => carry_out(21));
    FA16: FA port map (A => sum(13) , B => a1x4 ,Cin => carry_out(15), S => sum(18), Cout => carry_out(22));
    FA17: FA port map (A => sum(14) , B => a2x4 ,Cin => carry_out(16), S => sum(19), Cout => carry_out(23));
    FA18: FA port map (A => sum(15) , B => a3x4 ,Cin => carry_out(17), S => sum(20), Cout => carry_out(24));
    FA19: FA port map (A => sum(16) , B => a4x4 ,Cin => carry_out(18), S => sum(21), Cout => carry_out(25));
    FA20: FA port map (A => sum(17) , B => a5x4 ,Cin => carry_out(19), S => sum(22), Cout => carry_out(26));
    FA21: FA port map (A => a7x3 , B => a6x4 ,Cin => carry_out(20), S => sum(23), Cout => carry_out(27));
    
    FA22: FA port map (A => sum(18) , B => a0x5 ,Cin => carry_out(21), S => P(5), Cout => carry_out(28));
    FA23: FA port map (A => sum(19) , B => a1x5 ,Cin => carry_out(22), S => sum(24), Cout => carry_out(29));
    FA24: FA port map (A => sum(20) , B => a2x5 ,Cin => carry_out(23), S => sum(25), Cout => carry_out(30));
    FA25: FA port map (A => sum(21) , B => a3x5 ,Cin => carry_out(24), S => sum(26), Cout => carry_out(31));
    FA26: FA port map (A => sum(22) , B => a4x5 ,Cin => carry_out(25), S => sum(27), Cout => carry_out(32));
    FA27: FA port map (A => sum(23) , B => a5x5 ,Cin => carry_out(26), S => sum(28), Cout => carry_out(33));
    FA28: FA port map (A => a7x4 , B => a6x5 ,Cin => carry_out(27), S => sum(29), Cout => carry_out(34));
    
    FA29: FA port map (A => sum(24) , B => a0x6 ,Cin => carry_out(28), S => P(6), Cout => carry_out(35));
    FA30: FA port map (A => sum(25) , B => a1x6 ,Cin => carry_out(29), S => sum(30), Cout => carry_out(36));
    FA31: FA port map (A => sum(26) , B => a2x6 ,Cin => carry_out(30), S => sum(31), Cout => carry_out(37));
    FA32: FA port map (A => sum(27) , B => a3x6 ,Cin => carry_out(31), S => sum(32), Cout => carry_out(38));
    FA33: FA port map (A => sum(28) , B => a4x6 ,Cin => carry_out(32), S => sum(33), Cout => carry_out(39));
    FA34: FA port map (A => sum(29) , B => a5x6 ,Cin => carry_out(33), S => sum(34), Cout => carry_out(40));
    FA35: FA port map (A => a7x5 , B => a6x6 ,Cin => carry_out(34), S => sum(35), Cout => carry_out(41));
    
    FA36: FA port map (A => sum(30) , B => a0x7 ,Cin => carry_out(35), S => P(7), Cout => carry_out(42));
    FA37: FA port map (A => sum(31) , B => a1x7 ,Cin => carry_out(36), S => sum(36), Cout => carry_out(43));
    FA38: FA port map (A => sum(32) , B => a2x7 ,Cin => carry_out(37), S => sum(37), Cout => carry_out(44));
    FA39: FA port map (A => sum(33) , B => a3x7 ,Cin => carry_out(38), S => sum(38), Cout => carry_out(45));
    FA40: FA port map (A => sum(34) , B => a4x7 ,Cin => carry_out(39), S => sum(39), Cout => carry_out(46));
    FA41: FA port map (A => sum(35) , B => a5x7 ,Cin => carry_out(40), S => sum(40), Cout => carry_out(47));
    FA42: FA port map (A => a7x6 , B => a6x7 ,Cin => carry_out(41), S => sum(41), Cout => carry_out(48));
    
    HF8: HA port map (A => sum(36) , B => carry_out(42) ,S => P(8), C => carry_out(49));
    FA43: FA port map (A => sum(37) , B => carry_out(43) ,Cin => carry_out(49), S => p(9), Cout => carry_out(50));
    FA44: FA port map (A => sum(38) , B => carry_out(44) ,Cin => carry_out(50), S => p(10), Cout => carry_out(51));
    FA45: FA port map (A => sum(39) , B => carry_out(45) ,Cin => carry_out(51), S => p(11), Cout => carry_out(52));
    FA46: FA port map (A => sum(40) , B => carry_out(46) ,Cin => carry_out(52), S => p(12), Cout => carry_out(53));
    FA47: FA port map (A => sum(41) , B => carry_out(47) ,Cin => carry_out(53), S => p(13), Cout => carry_out(54));
    FA48: FA port map (A => a7x7 , B => carry_out(48) ,Cin => carry_out(54), S => p(14), Cout => p(15));
    
    
        
end Behavioral;
