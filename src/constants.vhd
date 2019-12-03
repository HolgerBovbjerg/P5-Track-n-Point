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

-- Number of samples used to calculate DFT
-- After SAMPLE_SIZE samples new a new DFT value is available. 
constant SAMPLE_SIZE : natural := 200;

-- Goertzel constants
--constant N : INTEGER := 200;
constant omega : INTEGER := 3;
constant k : INTEGER := 10;
constant fp_scale : natural := 13; -- Fixed point data format
constant c_coeff : integer := 1948; -- 2*cos(2*pi*k/N) = 1.90211303 in Q5,13 format
constant c_coeff_cos : integer := 974; -- -- 0.9510498047 in Q5,13 format
constant c_coeff_sine : integer := 316; -- 0.3089599609 in Q5,13 format

end constants;

package body constants is
 
end constants;
