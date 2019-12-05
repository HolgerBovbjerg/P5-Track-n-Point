library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fixed_point_multiplier_tb is
end fixed_point_multiplier_tb;

library work;
use work.constants.all;
 
architecture behavioral of fixed_point_multiplier_tb is
	signal i_CLK   : std_logic := '0';
	signal i_enable   : std_logic := '0';
	signal i_A : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal i_B : std_logic_vector(CALC_WIDTH-1 downto 0);
	signal o_result : std_logic_vector(CALC_WIDTH-1 downto 0);
	
	   -- Clock period definitions
   constant c_clk_period : time := 20 ns;
 
	component fixed_point_multiplier is
		Port (
		i_clk      : in std_logic; -- CLock input
 
		-- FIFO Write Interface
		i_enable   : in  std_logic; -- Write enable
		i_A : in  std_logic_vector(INPUT_WIDTH-1 downto 0); -- Input data
		i_B : in  std_logic_vector(CALC_WIDTH-1 downto 0); -- Input data
		-- FIFO Read Interface
		o_result : out std_logic_vector(CALC_WIDTH-1 downto 0) -- Output data
		);
	end component fixed_point_multiplier;
 
   
begin
	fixed_point_multiplier_INST : fixed_point_multiplier
		port map (
			i_clk      => i_CLK,
			i_enable    => i_enable,
			i_A  => i_A,
			i_B  => i_B,
			o_result  => o_result
		);
 
 
	-- Clock process definitions
   clk_process :process
   begin
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stim_process : process 
	begin
		i_enable <= '1';
		i_A <= std_logic_vector(to_signed(2047, INPUT_WIDTH));
		i_B <= std_logic_vector(to_signed(c_coeff, CALC_WIDTH));
		wait for c_clk_period*5;
		
		
		wait;
	end process;
  
  end behavioral;