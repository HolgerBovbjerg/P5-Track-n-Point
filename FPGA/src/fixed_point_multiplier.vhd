library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Sampling uniot implemented using a FIFO register

library work;
use work.constants.all;

entity fixed_point_multiplier is
	Port (
		i_clk      : in std_logic; -- CLock input
 
		-- FIFO Write Interface
		i_enable   : in  std_logic; -- Write enable
		i_A : in  std_logic_vector(INPUT_WIDTH-1 downto 0); -- Input data
		i_B : in  std_logic_vector(CALC_WIDTH-1 downto 0); -- Input data
		-- FIFO Read Interface
		o_result : out std_logic_vector(CALC_WIDTH-1 downto 0) -- Output data
		);
end fixed_point_multiplier;
 
architecture rtl of fixed_point_multiplier is
	signal r_A : std_logic_vector(CALC_WIDTH-1 downto 0) := (others=> '0'); -- create sample register
	signal r_B : std_logic_vector(CALC_WIDTH-1 downto 0) := (others=> '0'); -- create sample register
	signal r_DATA : std_logic_vector(2*CALC_WIDTH-1 downto 0):= (others=> '0'); -- create sample register
begin
 
  p_SAMPLE : process (i_clk) is -- Define Sampling process
  begin
    if rising_edge(i_clk) then
        -- Register the input data when there is a write
		  r_A(INPUT_WIDTH-1 downto 0) <= i_A;
		  r_B <= i_B;
        if i_enable = '1' then -- If write enable is asserted
          r_DATA <= std_logic_vector(shift_right(signed(r_A)*signed(r_B), fp_scale)); -- Write input to current write index
		end if;
    end if;                             -- rising_edge(i_clk)
  end process p_SAMPLE;
   
  o_result <= r_DATA(CALC_WIDTH-1 downto 0); -- Set output to current read index
  
end rtl;