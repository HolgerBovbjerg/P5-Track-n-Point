library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

library work;
use work.constants.all;
use work.records.all;
 
ENTITY Goertzel_tb IS
END Goertzel_tb;

ARCHITECTURE behavior OF Goertzel_tb IS 
	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT Goertzel is
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_SIG : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
	end COMPONENT;
	
	constant c_signal_period : time := 2 us;
	-- Inputs
	signal i_CLK :  STD_LOGIC := '0'; -- Clock input
	signal i_NEW_VALUE :  STD_LOGIC := '0'; -- NEW_VALUE input
	signal i_SIG :  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0) := (others => '0'); -- Signal 1
	-- Outputs
	signal o_Real :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal o_Imag :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal o_NEW_RESULT : STD_LOGIC; -- New result flag
	
	-- Clock period definitions
   constant c_clk_period : time := 20 ns;
	
	
	
BEGIN
	-- Instantiate the Unit Under Test (UUT)
	uut: Goertzel PORT MAP( 	
				i_CLK => i_CLK,
				i_NEW_VALUE => i_NEW_VALUE,
				i_SIG => i_SIG,
				o_Real => o_Real,
				o_Imag => o_Imag,
				o_NEW_RESULT => o_NEW_RESULT
			 );
			 
	-- Clock process definitions
   i_clk_process :process
   begin
		i_CLK<= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
	   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 255 loop
			i_NEW_VALUE <= '0'; 
			wait for c_signal_period/2;
			i_SIG <= std_logic_vector(signed(i_SIG) + 1);
			i_NEW_VALUE <= '1'; 
			wait for c_signal_period/2;
		end loop;
		
		wait;
		
   end process;
END;