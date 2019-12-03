library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity phase_calculator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_Real : in  STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0); -- Signal 1
				i_Imag : in STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0); -- Signal 2
				o_Phase : out  STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0) -- Angle output
			 );
end phase_calculator;

architecture Behavioral of phase_calculator is

	COMPONENT divider 
	PORT
		(
			denom		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			numer		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			quotient		: OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
			remain		: OUT STD_LOGIC_VECTOR (17 DOWNTO 0)
		);
	END COMPONENT;

	signal r_PHASE: STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := (others => '0'); -- Angle registry
	signal w_Real : STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0);
	signal w_Imag : STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0);
	signal w_quotient_sig : STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0);
	signal w_remain_sig: STD_LOGIC_VECTOR (CALC_WIDTH-1 downto 0);
	
begin

	divider_inst : divider PORT MAP (
		denom	 => w_Real,
		numer	 => w_Imag,
		quotient	 => w_quotient_sig,
		remain	 => w_remain_sig
	);
	
--	process(i_CLK)
--	begin
--		if rising_edge(i_CLK) then
--			 -- Set state signal to output state
--		end if;
--	end process;
	o_Phase <= w_quotient_sig;
	w_Real <= i_Real;
	w_Imag <= i_Imag;
	

end Behavioral;