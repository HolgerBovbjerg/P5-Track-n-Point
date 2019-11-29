library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.constants.all;

package records is
 
  -- Outputs from Goertzel.
  type t_FROM_Goertzel is record
    wr_full  : std_logic;                -- FIFO Full Flag
    rd_empty : std_logic;                -- FIFO Empty Flag
    rd_dv    : std_logic;
    rd_data  : std_logic_vector(7 downto 0);
  end record t_FROM_Goertzel;  
 
  -- Inputs to Goertzel.
  type t_TO_Goertzel is record
    wr_en    : std_logic;
    wr_data  : std_logic_vector(7 downto 0);
    rd_en    : std_logic;
  end record t_TO_Goertzel;
  
    -- Goertzel registers.
  type Goertzel_reg is record
    wr_en    : std_logic;
    wr_data  : std_logic_vector(7 downto 0);
    rd_en    : std_logic;
  end record Goertzel_reg;
  
  type goertzel_machine is (IDLE, FETCH, CALCULATE, STORE, DONE); -- State machine type
	
	type goertzel_type is record
      state        : goertzel_machine;
      done         : std_logic;
      VA       	 : signed(CALC_WIDTH-1 downto 0);
      VA_prev      : signed(CALC_WIDTH-1 downto 0);
      VA_prev2     : signed(CALC_WIDTH-1 downto 0);
      result       : goertzel_result_type;
      sample_count : natural;
      
   end record;
  
 
  constant c_FROM_Goertzel_INIT : t_FROM_Goertzel := (wr_full => '0',
                                              rd_empty => '1',
                                              rd_dv => '0',
                                              rd_data => (others => '0'));
 
  constant c_TO_Goertzel_INIT : t_TO_Goertzel := (wr_en => '0',
                                          wr_data => (others => '0'),
                                          rd_en => '0');
													
   
   
end package records;