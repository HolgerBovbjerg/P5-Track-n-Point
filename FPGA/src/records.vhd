library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.constants.all;

package records is
	-- State machine type definition
	type goertzel_machine is (IDLE, CALCULATE, STORE, OUTPUT); 
	-- The result of the Goertzel Algorithm is always a pair of two values (Va[n] and Va[n-1])
	type goertzel_result_type is array (1 downto 0) of std_logic_vector(2*CALC_WIDTH-1 downto 0); 
	
	-- Defining goertzel record (similar to structs in C)
	type goertzel_type is record
      state        : goertzel_machine; -- State machine
      done         : std_logic; -- New output flag
      VA       	 : std_logic_vector(2*CALC_WIDTH-1 downto 0); -- Va[n]
      VA_prev      : std_logic_vector(2*CALC_WIDTH-1 downto 0); -- Va[n-1]
      VA_prev2     : std_logic_vector(2*CALC_WIDTH-1 downto 0); -- Va[n-2]
      result       : goertzel_result_type; -- Va[n] and Va[n-1] after SAMPLE_SIZE iterations
      sample_count : natural; -- Sample counter
   end record;
	
end package records;