library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity AoA_sine_test_tb is 

end AoA_sine_test_tb;

architecture Behavioral of AoA_sine_test_tb is

	COMPONENT AoA_sine_test 
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
	end COMPONENT;
	
	-- Clock period definitions
   constant c_clk_period : time := 20 ns;
	constant c_sample_period : time := 100 ns;
	-- Inputs
	signal i_CLK :  STD_LOGIC := '0'; -- Clock input
	signal i_addr1 :  STD_LOGIC_VECTOR(7 downto 0) := std_logic_vector(to_unsigned(0,8));--(others => '0'); -- Signal 1
	signal i_addr2 :  STD_LOGIC_VECTOR(7 downto 0) := std_logic_vector(to_unsigned(5,8));--(others => '0'); -- Signal 1
	signal i_addr3 :  STD_LOGIC_VECTOR(7 downto 0) := std_logic_vector(to_unsigned(10,8));--(others => '0'); -- Signal 1
	signal i_CLK_sin :  STD_LOGIC := '0'; -- SIN input
	
	-- Outputs
	signal o_Real1 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 1
	signal o_Real2 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 2
	signal o_Real3 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Real output 3
	signal o_Imag1 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
	signal o_Imag2 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
	signal o_Imag3 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0); -- Imag output 1
	signal o_NEW_RESULT : STD_LOGIC_VECTOR(2 downto 0);
	
begin
	
		UUT : AoA_sine_test 
		PORT MAP ( 	
			i_CLK => i_CLK,
			i_addr1 => i_addr1,
			i_addr2 => i_addr2,
			i_addr3 => i_addr3,
			i_CLK_sin => i_CLK_sin,
			o_Real1 => o_Real1, 
			o_Real2 => o_Real2,
			o_Real3 => o_Real3,
			o_Imag1 => o_Imag1,
			o_Imag2 => o_Imag2,
			o_Imag3 => o_Imag3,
			o_NEW_RESULT => o_NEW_RESULT
		);
	
	-- Clock process definitions
   i_clk_process : process
   begin
		-- hold reset state for 100 ns.
		i_CLK<= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
			   -- Stimulus process
   stim_proc : process
   begin		
      -- hold reset state for 100 ns.
		for i in 0 to 20*SAMPLE_SIZE loop
			i_CLK_sin <= '0';
			wait for c_sample_period/2;
			i_CLK_sin <= '1';
			wait for c_sample_period/2;
			if unsigned(i_addr1) = 200-1 then
				i_addr1 <= (others => '0');
			else
				i_addr1 <= std_logic_vector(signed(i_addr1) + 1);
			end if;
			if unsigned(i_addr2) = 200-1 then
				i_addr2 <= (others => '0');
			else
				i_addr2 <= std_logic_vector(signed(i_addr2) + 1);
			end if;
			if unsigned(i_addr3) = 200-1 then
				i_addr3 <= (others => '0');
			else
				i_addr3 <= std_logic_vector(signed(i_addr3) + 1);
			end if;
		end loop;
		
		wait;
		
   end process;
	

end Behavioral;
