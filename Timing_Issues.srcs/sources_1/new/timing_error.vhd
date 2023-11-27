----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2023 21:16:13
-- Design Name: 
-- Module Name: timing_error - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timing_error is
    Port (
        i_Clk: in std_logic;
        i_Data: in Unsigned(7 downto 0);
        i_Data_1: in Unsigned(7 downto 0);
        o_Data: out Unsigned(63 downto 0)

    );
end timing_error;

architecture Behavioral of timing_error is
    signal r0_Data  : Unsigned(7 downto 0);
    signal r1_Data  : Unsigned(7 downto 0);
    signal r2_Data  : Unsigned(63 downto 0);
begin
    process(i_Clk) is
    begin
        if rising_edge(i_Clk) then
            r0_Data <= i_Data;
            r1_Data <= i_Data_1;
            r2_Data <= r1_Data*9*7*4;
            o_Data <= r2_data - (((((r0_Data/3)+1)*5)/((4+5)*95))*(8*r0_Data/5+4));
        end if;
    end process;
end Behavioral;
