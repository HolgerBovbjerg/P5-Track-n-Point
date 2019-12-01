--
--	Package File
--
--	Purpose: This package defines constants for AoA estimator

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package constants is

-- Width of ADC input
constant INPUT_WIDTH : natural := 12;

-- Width of internal calculations
constant CALC_WIDTH : natural := 18;

-- All calculations are based on that type:
subtype goertzel_data_type is signed(CALC_WIDTH-1 downto 0);

-- The result of the Goertzel Algorithm are always a pair of two values
type goertzel_result_type is array (1 downto 0) of goertzel_data_type;

-- One input to the algorithm. 
subtype goertzel_input_type is signed(INPUT_WIDTH-1 downto 0);

-- The input for many different channels
type  goertzel_inputs_type is array (natural range <>) of goertzel_input_type;

-- One goertzel coefficient corresponds to a certain frequency.
subtype goertzel_coef_type is signed(CALC_WIDTH-1 downto 0);
-- The input for different frequencies
type    goertzel_coefs_type is array (natural range <>) of goertzel_coef_type;


-- Number of samples used to calculate DFT
-- After SAMPLES samples new a new DFT value is available. 
constant SAMPLE_SIZE : natural := 200;

-- Goertzel constants
constant N : INTEGER := 200;
constant omega : INTEGER := 3;
constant k : INTEGER := 10;
constant Q : natural := 13; -- Fixed point data format
constant c_coeff : UNSIGNED(CALC_WIDTH-1 downto 0) := "000011110011011110"; -- 2*cos(2*pi*k/N) in Q5,13 format
constant coeff2Real : INTEGER := -1;
-- constant coeff2Imag : INTEGER := -0.031;
constant coeff3Real : INTEGER := 0;
constant coeff3Imag : INTEGER := 1;

-- states
--constant IDLE : STD_LOGIC_VECTOR := "0001";
--constant FETCH : STD_LOGIC_VECTOR := "0010";
--constant CALCULATE : STD_LOGIC_VECTOR := "0100";
--constant DONE : STD_LOGIC_VECTOR := "1000";

end constants;

package body constants is
 
end constants;
