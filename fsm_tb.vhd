----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2021 09:17:09 PM
-- Design Name: 
-- Module Name: D_Flip_Flop_tb - Behavioral
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

entity fsm_tb is
end fsm_tb;

architecture Behavioral of fsm_tb is
    component fsm
       Port ( X,Y,Z : in STD_LOGIC;
           Clock: in STD_LOGIC;
           P1,P2,P5 : out STD_LOGIC);
     end component;
     
signal Clock1 :std_logic := '0';
signal X1, Y1, Z1: std_logic := '0';
signal P1, P5, P2: std_logic;

begin
    uut: fsm port map(X => X1,Y=> Y1,Z=>Z1,Clock=>Clock1,P1=>P1,P2=>P2,P5=>P5);

clock: process
begin
    Clock1 <= '1'; 
    wait for 0.5ns;
    Clock1 <= '0';
    wait for 0.5ns;
end process;

stim:process
begin

-- 1 Rs, 5 Rs, and 2 Rs in channel    

    wait for 20ns;
    
    Z1 <= '1';
    wait for 2ns;
    Z1 <= '0';
    wait for 20ns;
    
    Z1 <= '1';
    wait for 2ns;
    Y1 <= '1';
    wait for 2ns;
    Y1 <= '0';
    wait for 2ns;
    Z1 <= '0';
    wait for 20ns;
    
    Z1 <= '1';
    wait for 2ns;
    Y1 <= '1';
    wait for 2ns;
    X1 <= '1';
    wait for 2ns;
    X1 <= '0';
    wait for 2ns;
    Y1 <= '0';
    wait for 2ns;
    Z1 <= '0'; 
    wait for 20ns;
    
-- 1 Rs. and 2 Rs. in channel
   
    Z1 <= '1';
    wait for 2ns;
    Z1 <= '0';
    wait for 20ns; 
    
    Z1 <= '1';
    wait for 2ns;
    Y1 <= '1';
    wait for 2ns;
    X1 <= '1';
    wait for 2ns;
    X1 <= '0';
    wait for 2ns;
    Y1 <= '0';
    wait for 2ns;
    Z1 <= '0';
    
    wait;
end process;
end Behavioral;