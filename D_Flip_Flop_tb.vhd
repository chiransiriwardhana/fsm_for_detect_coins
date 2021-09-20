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

entity D_Flip_Flop_tb is
end D_Flip_Flop_tb;

architecture Behavioral of D_Flip_Flop_tb is
    component D_Flip_Flop
     Port ( Q : out STD_LOGIC;
           Clock : in STD_LOGIC;
           D : in STD_LOGIC);
     end component;
signal Q1,Clock1, D1: std_logic;
begin
     uut:D_Flip_Flop port map(
      Q => Q1, 
     Clock => Clock1, 
     D => D1);
     
     clock:process
        begin 
            Clock1 <='0';
            wait for 10ns;
            Clock1 <='1';
            wait for 10ns;
      end process;
      
      stim : process
      
      begin

        D1 <= '0';
        wait for 40 ns;
        D1<= '1';
        wait for 40 ns;

end process;
end Behavioral;
