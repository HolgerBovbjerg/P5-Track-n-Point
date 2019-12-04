library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity AoA_estimator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_ADC1 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				i_ADC2 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 2
				i_ADC3 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 3
				o_Real1 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 1
				o_Real2 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 2
				o_Real3 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 3
				o_Imag1 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
				o_Imag2 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
				o_Imag3 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
				o_NEW_RESULT : out STD_LOGIC_VECTOR(2 downto 0)
			 );
end AoA_estimator;

architecture Behavioral of AoA_estimator is

	type ADC_input_type is array (2 downto 0) of std_logic_vector(INPUT_WIDTH-1 downto 0);
	type real_result_type is array (2 downto 0) of std_logic_vector(CALC_WIDTH-1 downto 0);
	type imag_result_type is array (2 downto 0) of std_logic_vector(CALC_WIDTH-1 downto 0);

	signal r_ANGLE: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Angle registry
	
	COMPONENT Goertzel 
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_SIG : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				o_Real : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Real part output
				o_Imag : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- DFT Imaginary part output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
	end COMPONENT Goertzel;
	
	signal w_CLK :  STD_LOGIC; -- Clock input
	signal w_NEW_VALUE : STD_LOGIC_VECTOR(2 downto 0); -- NEW_VALUE input
	signal w_SIG : ADC_input_type; -- Signal 1
	signal w_Real :  real_result_type; -- DFT output
	signal w_Imag :  imag_result_type; -- DFT output
	signal w_NEW_RESULT : STD_LOGIC_VECTOR(2 downto 0); -- New result flag
	
	COMPONENT sampler 
	Port (	i_CLK      : in std_logic; -- CLock input
				-- Write Interface
				i_write_en   : in  std_logic; -- Write enable
				i_write_data : in  std_logic_vector(INPUT_WIDTH-1 downto 0); -- Input data
		 
				-- Read Interface
				o_read_data : out std_logic_vector(INPUT_WIDTH-1 downto 0); -- Output data
				o_NEW_DATA : out std_logic
			);
	end COMPONENT sampler;
	
	signal w_WRITE_EN : STD_LOGIC_VECTOR(2 downto 0);
	signal w_WRITE_DATA : ADC_input_type;
	signal w_READ_DATA : ADC_input_type;
	
begin

	INST1_Goertzel : Goertzel
	Port map (
		i_CLK => w_CLK,
		i_NEW_VALUE => w_NEW_VALUE(0),
		i_SIG => w_SIG(0),
		o_Real => w_Real(0),
		o_Imag => w_Imag(0),
		o_NEW_RESULT => w_NEW_RESULT(0)
	);
	
	INST2_Goertzel : Goertzel
	Port map (
		i_CLK => w_CLK,
		i_NEW_VALUE => w_NEW_VALUE(1),
		i_SIG => w_SIG(1),
		o_Real => w_Real(1),
		o_Imag => w_Imag(1),
		o_NEW_RESULT => w_NEW_RESULT(1)
	);
	
	INST3_Goertzel : Goertzel
	Port map (
		i_CLK => w_CLK,
		i_NEW_VALUE => w_NEW_VALUE(2),
		i_SIG => w_SIG(2),
		o_Real => w_Real(2),
		o_Imag => w_Imag(2),
		o_NEW_RESULT => w_NEW_RESULT(2)
	);
	
	INST1_sampler : sampler
	Port map (
		i_CLK => w_CLK,
		i_WRITE_EN => w_WRITE_EN(0),
		i_WRITE_DATA => w_WRITE_DATA(0),
		o_READ_DATA => w_SIG(0),
		o_NEW_DATA => w_NEW_VALUE(0)
	);
	
	INST2_sampler : sampler
	Port map (
		i_CLK => w_CLK,
		i_WRITE_EN => w_WRITE_EN(1),
		i_WRITE_DATA => w_WRITE_DATA(1),
		o_READ_DATA => w_SIG(1),
		o_NEW_DATA => w_NEW_VALUE(1)
	);
	
	INST3_sampler : sampler
	Port map (
		i_CLK => w_CLK,
		i_WRITE_EN => w_WRITE_EN(2),
		i_WRITE_DATA => w_WRITE_DATA(2),
		o_READ_DATA => w_SIG(2),
		o_NEW_DATA => w_NEW_VALUE(2)
	);
	
	
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			
		end if;
	end process;
	
	-- Inputs 
	w_WRITE_EN(2 downto 0) <= (others => i_RESET);
	w_CLK <= i_CLK;
	w_WRITE_DATA(0) <= i_ADC1;
	w_WRITE_DATA(1) <= i_ADC2;
	w_WRITE_DATA(2) <= i_ADC3;
	
	
	-- Outputs
	o_Real1 <= w_Real(0); 
	o_Real2 <= w_Real(1);
	o_Real3 <= w_Real(2);
	o_Imag1 <= w_imag(0);
	o_Imag2 <= w_imag(1);
	o_Imag3 <= w_imag(2);
	o_NEW_RESULT <=w_NEW_RESULT; 

end Behavioral;