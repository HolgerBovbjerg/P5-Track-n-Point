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
-- 27 is chosen for fixed point precision and due to internal multipliers of CYCLONE III being 9 bits
constant CALC_WIDTH : natural := 27; 

-- Number of samples used to calculate DFT
-- After SAMPLE_SIZE samples new a new DFT value is available. 
constant SAMPLE_SIZE : natural := 2000;

-- Fixed point scaling
-- The fixed point scaling is set such that calculation overflow is prevented
constant fp_scale : natural := CALC_WIDTH - INPUT_WIDTH - 1; -- Fixed point data scale

-- Goertzel constants
-- These have to be changed according to the fixed point scale and frequency of interest
constant c_coeff : integer := 31164; -- 2*cos(2*pi*k/N) = 1.90211303 in Q36,23 format
constant c_coeff_cos : integer := 15582; --0.9510498047 in Q36,23 format
constant c_coeff_sine : integer := 5063; -- 0.3089599609 in Q36,23 format

end constants;

package body constants is
 
end constants;
