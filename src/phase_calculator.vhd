library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity phase_calculator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_DFT1 : in  STD_LOGIC_VECTOR (7 downto 0); -- Signal 1
				i_DFT2 : in STD_LOGIC_VECTOR (7 downto 0); -- Signal 2
				i_DFT3 : in STD_LOGIC_VECTOR (7 downto 0); -- Signal 3
				o_Phase1 : out  STD_LOGIC_VECTOR (7 downto 0); -- Angle output
				o_Phase2 : out  STD_LOGIC_VECTOR (7 downto 0); -- Angle output
				o_Phase3 : out  STD_LOGIC_VECTOR (7 downto 0) -- Angle output
			 );
end phase_calculator;

architecture Behavioral of phase_calculator is

	signal r_state: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Current state
	signal r_ANGLE: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Angle registry
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			o_Phase1 <= r_ANGLE; -- Set state signal to output state
			o_Phase2 <= r_ANGLE; -- Set state signal to output state
			o_Phase3 <= r_ANGLE; -- Set state signal to output state
		end if;
	end process;
	
	

end Behavioral;