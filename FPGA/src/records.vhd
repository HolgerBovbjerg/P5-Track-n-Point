library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.constants.all;

package records is
  
  type goertzel_machine is (IDLE, CALCULATE, STORE, OUTPUT, DONE); -- State machine type
  type goertzel_result_type is array (1 downto 0) of std_logic_vector(2*CALC_WIDTH-1 downto 0); -- The result of the Goertzel Algorithm are always a pair of two values
	
	type goertzel_type is record
      state        : goertzel_machine;
      done         : std_logic;
      VA       	 : std_logic_vector(CALC_WIDTH-1 downto 0);
      VA_prev      : std_logic_vector(CALC_WIDTH-1 downto 0);
      VA_prev2     : std_logic_vector(CALC_WIDTH-1 downto 0);
      result       : goertzel_result_type;
      sample_count : natural;
   end record;
  
   
end package records;