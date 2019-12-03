library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records.all;
entity Goertzel is
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- New value input
				o_ADDER_enable : in  STD_LOGIC; -- Enable input
				o_SUBTRACT_enable : in  SIGNED(INPUT_WIDTH-1 downto 0); -- Signal 1
				o_VA_enable : in SIGNED(CALC_WIDTH-1 downto 0); -- Coefficient input
				o_VA_prev_enable : out  goertzel_result_type; -- DFT output
				o_INPUT_enable : out  STD_LOGIC -- New result flag
			 );
end Goertzel;

architecture Behavioral of Goertzel is
	
	
	
begin

	clk_process : process(i_CLK)
	begin
		if (rising_edge(i_clk)) then
			case goertzel_state is
				when IDLE =>
					-- if new value = 1, goto fetch
				when FETCH =>
					-- r_sig = i_sig, goto multiply
				when MULTIPLY =>
					-- var1 = VA_prev*coeff, goto add
				when ADD =>
					-- var2 = sig + var1, goto subtract
				when SUBTRACT =>
					-- VA = var2 - VA_prev2
				when save_VA_prev2 =>
					-- VA_prev2 = VA_prev1
				when save_VA_prev =>
					-- VA_prev = VA				

				when DONE =>
					-- Out register(0) = VA
					-- Out register(1) = VA_prev
			end case;
		end if;
	end process;
	
	-- Outputs
	o_DFT <= reg.result; 
	o_NEW_RESULT  <= reg.done;

end Behavioral;