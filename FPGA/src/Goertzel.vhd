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
				i_SIG : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal input
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
end Goertzel;

architecture Behavioral of Goertzel is
	
	signal reg : goertzel_type := (
      state        => IDLE, -- state initialised to IDLE
      done         => '0', -- Registers initialised to zeros
      VA       	 => (others => '0'),
      VA_prev      => (others => '0'),
      VA_prev2     => (others => '0'),
      result       => (others => (others => '0') ),
      sample_count => 0
   );
	
	signal r_Real : STD_LOGIC_VECTOR(2*CALC_WIDTH-1 downto 0) := (others => '0'); -- Register storing latest generated real part
	signal r_Imag : STD_LOGIC_VECTOR(2*CALC_WIDTH-1 downto 0) := (others => '0'); -- Register storing latest generated imaginary part

begin

	clk_process : process(i_CLK)
	begin
		if (rising_edge(i_clk)) then -- At every rising edge
			case reg.state is -- Check state
				when IDLE =>
					-- Reset new result flag to zero
					reg.done <= '0';
					if (i_NEW_VALUE = '1') then
						-- Set state to calculate
						reg.state <= CALCULATE;
					end if;
				when CALCULATE =>
						--Calculate Va
						reg.VA <= std_logic_vector( signed(i_SIG) + shift_right(signed(reg.VA_prev(CALC_WIDTH-1 downto 0)) * to_signed(c_coeff,CALC_WIDTH), fp_scale) - signed(reg.VA_prev2) );				
						-- Save Va_prev in Va_prev2 (Put here as Va_prev2 must be updated before Va_prev)
						reg.VA_prev2 <= reg.VA_prev; -- Va[n-2] = Va[n-1]
						-- Goto store state
						reg.state <= STORE;
				when STORE => 
					if reg.sample_count = SAMPLE_SIZE then
						-- Reset counter
						reg.sample_count <= 1;
						-- Store results
						reg.result(0) <= reg.VA; -- Store Va[n]; 
						reg.result(1) <= reg.VA_prev; -- Store Va[n-1]
						-- Goto uotput state
						reg.state <= OUTPUT;
					else
						-- Save Va in Va_prev 
						reg.VA_prev <= reg.VA; -- Va[n-1] = Va[n]
						-- Update counter
						reg.sample_count <= reg.sample_count + 1;
						-- Goto IDLE state
						reg.state <= IDLE;
					end if;
				when OUTPUT =>
					-- Calculate real and imaginary DFT
					-- r_Real = Va[n] - cos(omega)*Va[n-1]
					r_Real <= std_logic_vector( signed(reg.result(0)(CALC_WIDTH-1 downto 0)) - shift_right(to_signed(c_coeff_cos,CALC_WIDTH) * signed(reg.result(1)(CALC_WIDTH-1 downto 0)),fp_scale) );
					-- r_Real = sin(omega)*Va[n-1]
					r_Imag <= std_logic_vector( shift_right(to_signed(c_coeff_sine,CALC_WIDTH)*signed(reg.result(1)(CALC_WIDTH-1 downto 0)),fp_scale) );
					-- Update new result flag
					reg.done <= '1';
					-- Reset Va registers
					reg.VA 			<= (others => '0'); 
					reg.VA_prev 	<= (others => '0'); 
					reg.VA_prev2 	<= (others => '0'); 
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