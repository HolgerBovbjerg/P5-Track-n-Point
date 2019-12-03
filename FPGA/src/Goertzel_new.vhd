library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records.all;

entity Goertzel_new is
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_ENABLE : in  STD_LOGIC; -- Enable input
				i_SIG : in  SIGNED(INPUT_WIDTH-1 downto 0); -- Signal input
				i_COEFF : in SIGNED(CALC_WIDTH-1 downto 0); -- Coefficient input
				o_Goertzel : out  goertzel_result_type; -- DFT output
				--o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT real part output
				--o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
end Goertzel_new;

architecture Behavioral of Goertzel_new is
	
	signal reg, reg_in : Goertzel_type := (
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
	
	combinational_process : process(i_SIG,reg, reg_in, i_ENABLE, i_COEFF)
		variable var        : goertzel_type;
		variable var_prod : signed(2*CALC_WIDTH-1 downto 0) := (others => '0');
		variable var_prod_sc : signed(CALC_WIDTH-1 downto 0)   := (others => '0');
		variable var_coeff : signed(CALC_WIDTH-1 downto 0); 
	begin
		var := reg;
		var_coeff := i_COEFF;
		
		case reg.state is
			when IDLE =>

			when FETCH => 

			when CALCULATE =>

			when STORE => 

				end case;	
			when DONE => 

			when others =>
				var.state := IDLE;
		end case;
		
		reg_in <= var;
		
	end process combinational_process;
			
	-- Outputs
	o_Goertzel <= reg.result; 
	o_NEW_RESULT  <= reg.done;

end Behavioral;