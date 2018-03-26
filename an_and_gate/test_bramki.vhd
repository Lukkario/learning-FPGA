--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:07 12/18/2017
-- Design Name:   
-- Module Name:   /home/ashen/Dokumenty/FPGA/an_and_gate/test_bramki.vhd
-- Project Name:  an_and_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bramkaand
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
 
ENTITY test_bramki IS
END test_bramki;
 
ARCHITECTURE behavior OF test_bramki IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bramkaand
    PORT(
         Switch : IN  std_logic_vector(1 downto 0);
         LED : OUT  std_logic_vector(0 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Switch : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal LED : std_logic_vector(0 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bramkaand PORT MAP (
          Switch => Switch,
          LED => LED
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
		wait for 50 ns;
		Switch(0) <= '0';
		Switch(1) <= '0';
		
		wait for period;
		Switch(0) <= '1';
		Switch(1) <= '0';
		
		wait for period;
		Switch(0) <= '0';
		Switch(1) <= '1';
		
		wait for period;
		Switch(0) <= '1';
		Switch(1) <= '1';
		wait;
   end process;

END;
