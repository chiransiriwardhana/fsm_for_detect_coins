----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2021 09:14:05 PM
-- Design Name: 
-- Module Name: D_Flip_Flop - Behavioral
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

entity D_Flip_Flop is
    Port ( Q : out STD_LOGIC;
           Clock : in STD_LOGIC;
           D : in STD_LOGIC);
end D_Flip_Flop;

architecture Behavioral of D_Flip_Flop is
begin  
    process(Clock)
        begin 
            if(rising_edge(Clock)) then
                Q <= D; 
            end if;       
    end process; 
end Behavioral;
