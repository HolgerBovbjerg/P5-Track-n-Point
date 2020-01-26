library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity top_level is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				-- i_RESET : in  STD_LOGIC; -- Reset input
				
				-- ADC inputs
				i_ADC1 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				i_ADC2 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 2
				i_ADC3 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 3
				-- SPI I/O
				i_SCLK : in  STD_LOGIC; -- SPI serial clock
				i_MOSI : in  STD_LOGIC; -- SPI master out slave in
				i_SSEL : in  STD_LOGIC; -- SPI slave select
				o_MISO : out  STD_LOGIC; -- SPI master in slave out
				o_DATA_received : OUT STD_LOGIC
			 );
end top_level;

architecture Behavioral of top_level is

COMPONENT AoA_estimator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				-- i_RESET : in  STD_LOGIC; -- Reset input
				i_ADC1 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
				i_ADC2 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 2
				i_ADC3 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 3
				o_Real1 : out  STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Real output 1
				o_Real2 : out  STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Real output 2
				o_Real3 : out  STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Real output 3
				o_Imag1 : out STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Imag output 1
				o_Imag2 : out STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Imag output 1
				o_Imag3 : out STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0); -- Imag output 1
				o_NEW_RESULT : out STD_LOGIC
			 );
end COMPONENT AoA_estimator;

signal w_REAL1 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);
signal w_REAL2 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);
signal w_REAL3 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);
signal w_IMAG1 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);
signal w_IMAG2 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);
signal w_IMAG3 : STD_LOGIC_VECTOR(OUT_WIDTH-1 downto 0);

signal w_NEW_RESULT : STD_LOGIC;



COMPONENT SPI 
    Port ( 	
				i_CLK : in  STD_LOGIC; -- Clock input
				-- SPI I/O
				i_SCLK : in  STD_LOGIC; -- SPI serial clock
				i_MOSI : in  STD_LOGIC; -- SPI master out slave in
				i_SSEL : in  STD_LOGIC; -- SPI slave select
				o_MISO : out  STD_LOGIC; -- SPI master in slave out
				
				-- Registers
				i_DATA1 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA2 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA3 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA4 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA5 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA6 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_NEW_DATA : in  STD_LOGIC;
				
				-- Status signals
				o_DATA_received : out STD_LOGIC
			 );
end COMPONENT SPI;


begin
	INST_AoA_estimator : AoA_estimator
   Port map ( 	i_CLK => i_CLK,
				i_ADC1 => i_ADC1,
				i_ADC2 => i_ADC2,
				i_ADC3 => i_ADC3,
				o_Real1 => w_REAL1,
				o_Real2 => w_REAL2,
				o_Real3 => w_REAL3,
				o_Imag1 => w_IMAG1,
				o_Imag2 => w_IMAG2,
				o_Imag3 => w_IMAG3,
				o_NEW_RESULT => w_NEW_RESULT
	);
	
	INST_SPI : SPI 
   Port map ( 	
				i_CLK => i_CLK,
				i_SCLK => i_SCLK,
				i_MOSI => i_MOSI,
				i_SSEL => i_SSEL,
				o_MISO => o_MISO,
				i_DATA1 => w_REAL1,
				i_DATA2 => w_REAL2,
				i_DATA3 => w_REAL3,
				i_DATA4 => w_IMAG1,
				i_DATA5 => w_IMAG2,
				i_DATA6 => w_IMAG3,
				i_NEW_DATA => w_NEW_RESULT,
				o_DATA_received => o_DATA_received
	);



end Behavioral;