library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

library work;
use work.constants.all;
use work.records.all;
 


ENTITY Goertzel_sine_test_tb IS
END Goertzel_sine_test_tb;


ARCHITECTURE behavior OF Goertzel_sine_test_tb IS 

	COMPONENT Goertzel_sine_test IS
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_addr : in STD_LOGIC_VECTOR(7 downto 0);
				i_CLK_sin : in  STD_LOGIC; 
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				o_NEW_RESULT : out  STD_LOGIC
			);
	END COMPONENT;
	
	constant c_sample_period : time := 100 ns;
	-- Inputs
	signal i_CLK :  STD_LOGIC := '0'; -- Clock input
	signal i_NEW_VALUE :  STD_LOGIC := '0'; -- NEW_VALUE input
	signal i_addr :  STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- Signal 1
	signal i_CLK_sin :  STD_LOGIC := '0'; -- SIN input
	
	
	-- Outputs
	signal o_Real :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal o_Imag :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal o_NEW_RESULT : STD_LOGIC; -- New result flag
	
	-- Clock period definitions
   constant c_clk_period : time := 20 ns;

begin
	
	uut: Goertzel_sine_test PORT MAP( 	
				i_CLK => i_CLK,
				i_NEW_VALUE => i_NEW_VALUE,
				i_CLK_sin => i_CLK_sin,
				i_addr => i_addr, 
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
			i_CLK_sin <= '0';
			wait for c_sample_period/2;
			i_CLK_sin <= '1';
			i_NEW_VALUE <= '1'; 
			wait for c_clk_period;
			i_NEW_VALUE <= '0'; 
			wait for c_sample_period/2 - c_clk_period;
			if unsigned(i_addr) = 199 then
				i_addr <= (others => '0');
			else
				i_addr <= std_logic_vector(signed(i_addr) + 1);
			end if;
		end loop;
		
		wait;
		
   end process;
	
end;