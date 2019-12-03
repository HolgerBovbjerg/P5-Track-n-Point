library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

library work;
use work.constants.all;
use work.records.all;
 
ENTITY Goertzel_sine_test IS
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_addr : in STD_LOGIC_VECTOR(7 downto 0);
				i_CLK_sin : in  STD_LOGIC; 
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				o_NEW_RESULT : out  STD_LOGIC
			);
END Goertzel_sine_test;



ARCHITECTURE behavior OF Goertzel_sine_test IS 

	COMPONENT Goertzel is
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_SIG : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
	end COMPONENT;
		-- Inputs
	signal w_CLK :  STD_LOGIC := '0'; -- Clock input
	signal w_NEW_VALUE :  STD_LOGIC := '0'; -- NEW_VALUE input

	-- Outputs
	signal w_Real :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal w_Imag :  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT output
	signal w_NEW_RESULT : STD_LOGIC; -- New result flag
	
	-- Sine table
	COMPONENT sin_table is
	Port (
	  i_clk          : in  std_logic;
	  i_addr         : in  std_logic_vector(7 downto 0);
	  o_data         : out std_logic_vector(11 downto 0)
	  );
	end COMPONENT;
	
	signal w_sin_data : std_logic_vector(11 downto 0);
	
begin
	
	
	-- Instantiate the Unit Under Test (UUT)
	uut: Goertzel PORT MAP( 	
				i_CLK => i_CLK,
				i_NEW_VALUE => i_NEW_VALUE,
				i_SIG => w_sin_data,
				o_Real => o_Real,
				o_Imag => o_Imag,
				o_NEW_RESULT => o_NEW_RESULT
			 );
	
	data : sin_table PORT MAP(
	  i_clk          => i_CLK_sin,
	  i_addr         => i_addr,
	  o_data         => w_sin_data
	);
	
end;