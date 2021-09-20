----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/21/2021 11:02:32 PM
-- Design Name: 
-- Module Name: even_detector1 - Behavioral
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

entity fsm is
    Port ( X,Y,Z : in STD_LOGIC;
           Clock: in STD_LOGIC;
           P1,P2,P5 : out STD_LOGIC);
end fsm;

architecture fsm_arch of fsm is

    component D_Flip_Flop
        port (
           Q1: out std_logic;
           Clock1:in std_logic;
           D1: in std_logic);
    end component;
    
    signal a : std_logic;
    signal b : std_logic;
    signal c : std_logic;
    signal d : std_logic;
    signal e : std_logic;
    signal f : std_logic;
    signal g : std_logic;
    signal anext : std_logic;
    signal bnext : std_logic;
    signal cnext : std_logic;
    signal dnext : std_logic;
    signal enext : std_logic;
    signal fnext : std_logic;
    signal gnext : std_logic;
    
   
    begin
        gnext <= f and not(Y);
        fnext <= e and not(X);
        enext <= c and X;
        dnext <= c and not(Y);
        cnext <= b and Y;
        bnext <= a and Z;
        anext <= (b and not(Z)) or (d and not(Z)) or (g and not(Z));
        P1 <= b and not(Z);
        P2 <= g and not(Z);
        P5 <= d and not(Z);

     ffg : D_Flip_Flop
        port map(
            Q1 => g,
            Clock1 => Clock,
            D1 => gnext
        );
        
     fff : D_Flip_Flop
        port map(
            Q1 => f,
            Clock1 => Clock,
            D1 => fnext
        );
     ffe : D_Flip_Flop
        port map(
            Q1 => e,
            Clock1 => Clock,
            D1 => enext
        );
     ffd : D_Flip_Flop
        port map(
            Q1 => d,
            Clock1 => Clock,
            D1 => dnext
        );
     ffc : D_Flip_Flop
        port map(
            Q1 => c,
            Clock1 => Clock,
            D1 => cnext
        );
     ffb : D_Flip_Flop
        port map(
            Q1 => b,
            Clock1 => Clock,
            D1 => bnext
        );
     ffa : D_Flip_Flop
        port map(
            Q1 => a,
            Clock1 => Clock,
            D1 => anext
        );
    P1 <= b and not(Z);
    P2 <= g and not(Z);
    P5 <= d and not(Z);

end fsm_arch;