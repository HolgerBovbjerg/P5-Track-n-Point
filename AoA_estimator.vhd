library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity AoA_estimator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_SIG1 : in  STD_LOGIC_VECTOR (11 downto 0); -- Signal 1
				i_SIG2 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 2
				i_SIG3 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 3
				o_ANGLE : out  STD_LOGIC_VECTOR (7 downto 0) -- Angle output
			 );
end AoA_estimator;

architecture Behavioral of AoA_estimator is

	signal r_state: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Current state
	signal r_ANGLE: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Angle registry
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			
		end if;
	end process;
	
	o_ANGLE <= r_ANGLE; -- Set state signal to output state


end Behavioral;