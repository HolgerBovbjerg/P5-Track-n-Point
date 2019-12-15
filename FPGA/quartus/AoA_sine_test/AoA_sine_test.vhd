library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity AoA_sine_test is 
		Port ( 	
			i_CLK : in STD_LOGIC;
			i_addr1 : in STD_LOGIC_VECTOR(7 downto 0);
			i_addr2 : in STD_LOGIC_VECTOR(7 downto 0);
			i_addr3 : in STD_LOGIC_VECTOR(7 downto 0);
			i_CLK_sin : in  STD_LOGIC;
			o_Real1 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 1
			o_Real2 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 2
			o_Real3 : out  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 3
			o_Imag1 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
			o_Imag2 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
			o_Imag3 : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
			o_NEW_RESULT : out STD_LOGIC_VECTOR(2 downto 0)
		);
end AoA_sine_test;

architecture Behavioral of AoA_sine_test is
	
	COMPONENT AoA_estimator 
		 Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
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
	end COMPONENT;
	
	
		-- Sine table
	COMPONENT sin_table is
	Port (
	  i_clk          : in  std_logic;
	  i_addr         : in  std_logic_vector(7 downto 0);
	  o_data         : out std_logic_vector(11 downto 0)
	  );
	end COMPONENT;
	
	signal w_sin_data1 : std_logic_vector(11 downto 0);
	signal w_sin_data2 : std_logic_vector(11 downto 0);
	signal w_sin_data3 : std_logic_vector(11 downto 0);
	
	
	begin
		INST_AoA_estimator : AoA_estimator 
		Port map ( 	
			i_CLK => i_CLK,
			i_ADC1 => 	w_sin_data1,
			i_ADC2 => 	w_sin_data2,
			i_ADC3 =>	w_sin_data3,
			o_Real1 =>	o_Real1,
			o_Real2 =>	o_Real2,
			o_Real3 =>	o_Real3,
			o_Imag1 =>	o_Imag1,
			o_Imag2 =>	o_Imag2,
			o_Imag3 =>	o_Imag3,
			o_NEW_RESULT => o_NEW_RESULT
		);
		
		data1 : sin_table PORT MAP(
		  i_clk          => i_CLK_sin,
		  i_addr         => i_addr1,
		  o_data         => w_sin_data1
		);
		
		data2 : sin_table PORT MAP(
		  i_clk          => i_CLK_sin,
		  i_addr         => i_addr2,
		  o_data         => w_sin_data2
		);
		
		data3 : sin_table PORT MAP(
		  i_clk          => i_CLK_sin,
		  i_addr         => i_addr3,
		  o_data         => w_sin_data3
		);
end;