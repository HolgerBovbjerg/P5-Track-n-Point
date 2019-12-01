library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity phase_calculator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_Real : in  STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0); -- Signal 1
				i_Imag : in STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0); -- Signal 2
				o_Phase : out  STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0); -- Angle output
			 );
end phase_calculator;

architecture Behavioral of phase_calculator is

	signal r_PHASE: STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := (others := '0'); -- Angle registry
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			
			o_Phase <= r_ANGLE; -- Set state signal to output state
		end if;
	end process;
	
	

end Behavioral;