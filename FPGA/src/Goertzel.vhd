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
				i_SIG : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
end Goertzel;

architecture Behavioral of Goertzel is
	
	signal reg : goertzel_type := (
      state        => IDLE,
      done         => '0',
      VA       	 => (others => '0'),
      VA_prev      => (others => '0'),
      VA_prev2     => (others => '0'),
      result       => (others => (others => '0') ),
      sample_count => 1
   );
	
	signal r_Real : STD_LOGIC_VECTOR(2*CALC_WIDTH-1 downto 0) := (others => '0');
	signal r_Imag : STD_LOGIC_VECTOR(2*CALC_WIDTH-1 downto 0) := (others => '0');

begin

	clk_process : process(i_CLK)
		variable var_prod : signed(2*CALC_WIDTH-1 downto 0) := (others => '0');
		variable var_prod_scaled : signed(2*CALC_WIDTH-1 downto 0)   := (others => '0');
	begin
		if (rising_edge(i_clk)) then
			case reg.state is
				when IDLE =>
					-- Reset new result flag to zero
					reg.done <= '0';
					if (i_NEW_VALUE = '1') then
						-- Set state to calculate
						reg.state <= CALCULATE;
					end if;
				when CALCULATE =>
						-- Calculate product
						var_prod := signed(reg.VA_prev) * to_signed(c_coeff,18);
						-- Round of calculated product 
						var_prod_scaled := shift_right(var_prod, fp_scale);
						--Calculate Va
						reg.VA <= std_logic_vector( signed(i_SIG) + var_prod_scaled(CALC_WIDTH-1 downto 0) - signed(reg.VA_prev2) );				
						-- Save Va_prev in Va_prev2
						reg.VA_prev2 <= reg.VA_prev;
						-- Go to store state
						reg.state <= STORE;
				when STORE => 
					-- Save Va in Va_prev	
					reg.VA_prev <= reg.VA;
					if reg.sample_count = SAMPLE_SIZE then
						-- Reset counter
						reg.sample_count <= 0;
						-- Store results
						reg.result(0) <= reg.VA_prev; 
						reg.result(1) <= reg.VA_prev2; 
						-- Goto uotput state
						reg.state <= OUTPUT;
					else
						-- Update counter
						reg.sample_count <= reg.sample_count + 1;
						reg.state <= IDLE;
					end if;
				when OUTPUT =>
					-- Calculate real and imaginary DFT
					r_Real <= std_logic_vector( signed(reg.result(0)) - shift_right(to_signed(c_coeff_cos,18) * signed(reg.result(1)),fp_scale) );
					r_Imag <= std_logic_vector( shift_right(to_signed(c_coeff_sine,18)*signed(reg.result(1)),fp_scale) );
					reg.state <= DONE;
				when DONE => 
					-- Update new result flag
					reg.done <= '1';
					-- Reset Va registers
					reg.VA_prev <= (others => '0'); 
					reg.VA_prev2 <= (others => '0'); 
					-- Goto idle and wait for new ADC value
					reg.state <= IDLE;
				when others =>
					reg.state <= IDLE;
			end case;
		end if;
	end process;
	
	-- Outputs
	o_Real <= r_Real(CALC_width-1 downto 0);
	o_Imag <= r_Imag(CALC_width-1 downto 0);
	o_NEW_RESULT  <= reg.done;

end Behavioral;