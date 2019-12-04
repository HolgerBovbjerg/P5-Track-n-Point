library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Sampling uniot implemented using a FIFO register

library work;
use work.constants.all;
use work.records.all;

entity sampler is
	Port (
		i_clk      : in std_logic; -- CLock input
 
		-- FIFO Write Interface
		i_write_en   : in  std_logic; -- Write enable
		i_write_data : in  std_logic_vector(INPUT_WIDTH-1 downto 0); -- Input data
 
		-- FIFO Read Interface
		o_read_data : out std_logic_vector(INPUT_WIDTH-1 downto 0); -- Output data
		o_NEW_DATA : out std_logic
		);
end sampler;
 
architecture rtl of sampler is
	signal r_DATA : std_logic_vector(INPUT_WIDTH-1 downto 0); -- create sample register
	signal r_NEW_DATA : std_logic; -- create sample register
begin
 
  p_SAMPLE : process (i_clk) is -- Define Sampling process
  begin
    if rising_edge(i_clk) then
        -- Register the input data when there is a write
        if i_write_en = '1' then -- If write enable is asserted
          r_DATA<= i_write_data; -- Write input to current write index
				r_NEW_DATA <= '1';
			else 
				r_NEW_DATA <= '0';
			end if;
    end if;                             -- rising_edge(i_clk)
  end process p_SAMPLE;
   
  o_read_data <= r_DATA; -- Set output to current read index
  o_NEW_DATA <= r_NEW_DATA; -- Set output to current read index
  
end rtl;