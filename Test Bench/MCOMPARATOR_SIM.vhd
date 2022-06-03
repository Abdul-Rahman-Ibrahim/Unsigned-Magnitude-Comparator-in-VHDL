--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:18:28 03/24/2022
-- Design Name:   
-- Module Name:   C:/Users/Abdul-Rahman/Desktop/VHDL exercises/MCOMPARATOR/MCOMPARATOR_SIM.vhd
-- Project Name:  MCOMPARATOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MCOMPARATOR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MCOMPARATOR_SIM IS
END MCOMPARATOR_SIM;
 
ARCHITECTURE behavior OF MCOMPARATOR_SIM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MCOMPARATOR
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic;
         G_AB : OUT  std_logic;
         G_BA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic;
   signal G_AB : std_logic;
   signal G_BA : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MCOMPARATOR PORT MAP (
          A => A,
          B => B,
          E => E,
          G_AB => G_AB,
          G_BA => G_BA
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
--		
--		wait for clock_period*10;
--		A <= "0000"; B <= "0000";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0001";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0010";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0011";
--		
--		wait for clock_period*10;
--		A <= "0000"; B <= "0100";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0101";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0110";
--		wait for clock_period*10;
--		A <= "0000"; B <= "0111";
--		
--		wait for clock_period*10;
--		A <= "0000"; B <= "1000";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1001";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1010";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1011";
--		
--		wait for clock_period*10;
--		A <= "0000"; B <= "1100";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1101";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1110";
--		wait for clock_period*10;
--		A <= "0000"; B <= "1111";
--		
--		
--		
--		wait for clock_period*10;
--		A <= "0000"; B <= "0000";
--		wait for clock_period*10;
--		A <= "0010"; B <= "0001";
--		wait for clock_period*10;
--		A <= "0011"; B <= "0010";
--		wait for clock_period*10;
--		A <= "0011"; B <= "0011";
--
--		wait for clock_period*10;
--		A <= "0100"; B <= "0000";
--		wait for clock_period*10;
--		A <= "0110"; B <= "0001";
--		wait for clock_period*10;
--		A <= "0111"; B <= "0010";
--		wait for clock_period*10;
--		A <= "0111"; B <= "0011";
--		
--		wait for clock_period*10;
--		A <= "1000"; B <= "0000";
--		wait for clock_period*10;
--		A <= "1010"; B <= "0001";
--		wait for clock_period*10;
--		A <= "1011"; B <= "0010";
--		wait for clock_period*10;
--		A <= "1011"; B <= "0011";
--		
--		wait for clock_period*10;
--		A <= "1100"; B <= "0000";
--		wait for clock_period*10;
--		A <= "1110"; B <= "0001";
--		wait for clock_period*10;
--		A <= "1111"; B <= "0010";
--		wait for clock_period*10;
--		A <= "1111"; B <= "0011";
		
		
		
		
		
		wait for clock_period*10;
		A(3)<='0';A(2)<='0';A(1)<='0';A(0)<='0'; B(3)<='0'; B(2)<='0'; B(1)<='0';B(0)<='0';
		wait for clock_period*10;
		A(3)<='0';A(2)<='0';A(1)<='0';A(0)<='1'; B(3)<='0'; B(2)<='0'; B(1)<='0';B(0)<='1';
		wait for clock_period*10;
		A(3)<='0';A(2)<='0';A(1)<='1';A(0)<='0'; B(3)<='0'; B(2)<='0'; B(1)<='1';B(0)<='0';
		wait for clock_period*10;
		A(3)<='0';A(2)<='0';A(1)<='1';A(0)<='1'; B(3)<='0'; B(2)<='0'; B(1)<='1';B(0)<='1';
		
				
		wait for clock_period*10;
		A(3)<='0';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='0'; B(2)<='1'; B(1)<='0';B(0)<='0';
		wait for clock_period*10;
		A(3)<='0';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='0'; B(2)<='1'; B(1)<='0';B(0)<='1';
		wait for clock_period*10;
		A(3)<='0';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='0'; B(2)<='1'; B(1)<='1';B(0)<='0';
		wait for clock_period*10;
		A(3)<='0';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='0'; B(2)<='1'; B(1)<='1';B(0)<='1';
		
				
		wait for clock_period*10;
		A(3)<='1';A(2)<='0';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='0'; B(1)<='0';B(0)<='0';
		wait for clock_period*10;
		A(3)<='1';A(2)<='0';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='0'; B(1)<='0';B(0)<='1';
		wait for clock_period*10;
		A(3)<='1';A(2)<='0';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='0'; B(1)<='1';B(0)<='0';
		wait for clock_period*10;
		A(3)<='1';A(2)<='0';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='0'; B(1)<='1';B(0)<='1';
		
		wait for clock_period*10;
		A(3)<='1';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='1'; B(1)<='0';B(0)<='0';
		wait for clock_period*10;
		A(3)<='1';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='1'; B(1)<='0';B(0)<='1';
		wait for clock_period*10;
		A(3)<='1';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='1'; B(1)<='1';B(0)<='0';
		wait for clock_period*10;
		A(3)<='1';A(2)<='1';A(1)<='0';A(0)<='0'; B(3)<='1'; B(2)<='1'; B(1)<='1';B(0)<='1';
      wait;
		
		
   end process;

END;
