library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;

entity SPI_register is
    Port ( 	
				i_CLK : in  STD_LOGIC; -- Clock input
				i_UPDATE_ENABLE : in STD_LOGIC;
				i_DATA1 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA2 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA3 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA4 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA5 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_DATA6 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_NEW_DATA : in  STD_LOGIC;
				i_ADDRESS : in STD_LOGIC_VECTOR(2 downto 0);
				o_DATA : out STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0)
			 );
end SPI_register;

architecture Behavioral of SPI_register is
	
	type DATA_MEM is array (0 to 5) of std_logic_vector(CALC_WIDTH-1 downto 0);
	signal r_SPI_REG : DATA_MEM :=  (others => (others => '0') );
	signal r_OUTDATA : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) :=(others => '0');
	
begin

	-- Update register
	process(i_CLK)
	begin
		if rising_edge(i_CLK)  then
			if (i_NEW_DATA and i_UPDATE_ENABLE) = '1' then
				r_SPI_REG(0) <= i_DATA1;
				r_SPI_REG(1) <= i_DATA2;
				r_SPI_REG(2) <= i_DATA3;
				r_SPI_REG(3) <= i_DATA4;
				r_SPI_REG(4) <= i_DATA5;
				r_SPI_REG(5) <= i_DATA6;
			end if;
			
			case i_ADDRESS is  
				when "001" => r_OUTDATA <= r_SPI_REG(0);
				when "010" => r_OUTDATA <= r_SPI_REG(1);
				when "011" => r_OUTDATA <= r_SPI_REG(2);
				when "100" => r_OUTDATA <= r_SPI_REG(3);
				when "101" => r_OUTDATA <= r_SPI_REG(4);
				when "110" => r_OUTDATA <= r_SPI_REG(5);
				when others => r_OUTDATA <= (others => '1');
			end case;
		end if;
	end process;
	
	o_DATA <= r_OUTDATA; 
	
end Behavioral;