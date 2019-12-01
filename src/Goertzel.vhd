library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records.all;
entity Goertzel is
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_SIG : in  SIGNED(INPUT_WIDTH-1 downto 0); -- Signal 1
				i_COEFF : in SIGNED(CALC_WIDTH-1 downto 0); -- Coefficient input
				o_Goertzel : out  goertzel_result_type; -- DFT output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
end Goertzel;

architecture Behavioral of Goertzel is
	
	signal reg, reg_in : goertzel_type := (
      state        => IDLE,
      done         => '0',
      VA       	 => (others => '0'),
      VA_prev      => (others => '0'),
      VA_prev2     => (others => '0'),
      result       => (others => (others => '0') ),
      sample_count => 1
   );
	
begin

	clk_process : process(i_CLK)
	begin
		if (rising_edge(i_clk)) then
			reg <= reg_in; 
		end if;
	end process;
	
	combinational_process : process(i_SIG, reg, reg_in, i_NEW_VALUE, i_COEFF)
		variable var        : goertzel_type;
		variable var_prod : signed(2*CALC_WIDTH-1 downto 0) := (others => '0');
		variable var_prod_sc : signed(CALC_WIDTH-1 downto 0)   := (others => '0');
		variable var_coeff : signed(CALC_WIDTH-1 downto 0); 
	begin
		var := reg;
		var_coeff := i_COEFF;
		
		case reg.state is
			when IDLE =>
				var.done := '0';
				if (i_NEW_VALUE = '1') then
					-- Set state to calculate
					var.state := CALCULATE;
				end if;
			when CALCULATE =>
					-- Calculate product
					var_prod := reg.VA_prev * var_coeff;
					-- Round of calculated product 
					var_prod_sc := var_prod((Q + CALC_width -1 ) downto Q);
					
					--Calculate Va
					var.VA := i_SIG + var_prod_sc - reg.VA_prev2;
					
					-- Save Va_prev in Va_prev2
					var.VA_prev2 := var.VA_prev;
					-- Go to store state
					var.state := STORE;
			when STORE => 
				-- Save previous Va value	
				var.VA_prev := var.VA;
				if reg.sample_count = SAMPLE_SIZE then
					-- Reset counter
					var.sample_count := 0;
					
					-- Store results
					var.result(0) := var.VA_prev; 
					var.result(1) := var.VA_prev2; 
					var.done := '1';
					
					var.state := DONE;
				else
					-- Update counter
					var.sample_count := reg.sample_count + 1;
					var.state := IDLE;
				end if;
			
			when DONE => 
				-- Reset Va registers
				var.VA_prev := (others => '0'); 
				var.VA_prev2 := (others => '0'); 
				-- Wait for new ADC value
				var.state := IDLE;
			when others =>
				var.state := IDLE;
		end case;
		
		reg_in <= var;
		
	end process combinational_process;
	
	-- Outputs
	o_Goertzel <= reg.result; 
	o_NEW_RESULT  <= reg.done;

end Behavioral;