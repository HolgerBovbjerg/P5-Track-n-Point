library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;

entity AoA_estimator is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_SIG1 : in  STD_LOGIC_VECTOR (11 downto 0); -- Signal 1
				i_SIG2 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 2
				i_SIG3 : in STD_LOGIC_VECTOR (11 downto 0); -- Signal 3
				o_ANGLE_elevation : out  STD_LOGIC_VECTOR (7 downto 0); -- Angle output
				o_ANGLE_azimuth : out  STD_LOGIC_VECTOR (7 downto 0) -- Angle output
			 );
end AoA_estimator;

architecture Behavioral of AoA_estimator is

	signal r_state: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Current state
	signal r_ANGLE: STD_LOGIC_VECTOR(7 downto 0) := "00000001"; -- Angle registry
	
	COMPONENT Goertzel 
	Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_NEW_VALUE : in  STD_LOGIC; -- NEW_VALUE input
				i_SIG : in  SIGNED(INPUT_WIDTH-1 downto 0); -- Signal 1
				i_COEFF : in SIGNED(CALC_WIDTH-1 downto 0); -- Coefficient input
				o_Goertzel : out  goertzel_result_type; -- DFT output
				o_NEW_RESULT : out  STD_LOGIC -- New result flag
			 );
	end COMPONENT Goertzel;
	
	signal w_CLK :  STD_LOGIC; -- Clock input
	signal w_NEW_VALUE : STD_LOGIC; -- NEW_VALUE input
	signal w_SIG : SIGNED(INPUT_WIDTH-1 downto 0); -- Signal 1
	signal w_COEFF : SIGNED(CALC_WIDTH-1 downto 0); -- Coefficient input
	signal w_Goertzel :  goertzel_result_type; -- DFT output
	signal w_NEW_RESULT : STD_LOGIC; -- New result flag
	
	COMPONENT sampler 
	Generic (
			 g_WIDTH : natural := 12 -- Word width
	);
	Port (	i_CLK      : in std_logic; -- CLock input
				-- Write Interface
				i_write_en   : in  std_logic; -- Write enable
				i_write_data : in  std_logic_vector(g_WIDTH-1 downto 0); -- Input data
		 
				-- Read Interface
				o_read_data : out std_logic_vector(g_WIDTH-1 downto 0); -- Output data
				o_NEW_DATA : out std_logic
			);
	end COMPONENT sampler;
	
	constant c_WIDTH : integer := 12;
	signal w_WRITE_EN : STD_LOGIC;
	signal w_WRITE_DATA : std_logic_vector(c_WIDTH-1 downto 0);
	signal w_READ_DATA : std_logic_vector(c_WIDTH-1 downto 0);
	
	
	
begin

	INST_Goertzel : Goertzel
	Port map (
		i_CLK => w_CLK,
		i_NEW_VALUE => w_NEW_VALUE,
		i_SIG => w_SIG,
		i_COEFF => w_COEFF,
		o_GOERTZEL => w_Goertzel,
		o_NEW_RESULT => w_NEW_RESULT
	);
	
	INST_sampler : sampler
	Port map (
		i_CLK => w_CLK,
		i_WRITE_EN => w_WRITE_EN,
		i_WRITE_DATA => w_WRITE_DATA,
		o_READ_DATA => w_READ_DATA,
		o_NEW_DATA => w_NEW_VALUE
	);
	
	
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			
		end if;
	end process;
	
	
	w_CLK <= i_CLK;
	w_WRITE_DATA <= i_SIG1;
	
	o_ANGLE_elevation <= r_ANGLE; -- Set state signal to output state


end Behavioral;