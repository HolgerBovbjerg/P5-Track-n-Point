library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity Goertzel is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_SIG1 : in  STD_LOGIC_VECTOR (11 downto 0); -- Signal 1
				i_SIG2 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 2
				i_SIG3 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 3
				o_DFT1 : out  STD_LOGIC_VECTOR (7 downto 0); -- Angle output
				o_DFT2 : out  STD_LOGIC_VECTOR (7 downto 0); -- Angle output
				o_DFT3 : out  STD_LOGIC_VECTOR (7 downto 0) -- Angle output
			 );
end Goertzel;

architecture Behavioral of Goertzel is

	signal r_state: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Current state
	signal r_ANGLE: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Angle registry
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			o_DFT1 <= r_ANGLE; -- Set state signal to output state
			o_DFT2 <= r_ANGLE; -- Set state signal to output state
			o_DFT3 <= r_ANGLE; -- Set state signal to output state
		end if;
	end process;
	
	

end Behavioral;