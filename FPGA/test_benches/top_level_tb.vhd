library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity top_level_tb is
end top_level_tb;

architecture Behavioral of top_level_tb is

	COMPONENT top_level 
		 Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
					-- i_RESET : in  STD_LOGIC; -- Reset input
					
					-- ADC inputs
					i_ADC1 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 1
					i_ADC2 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 2
					i_ADC3 : in  STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0); -- Signal 3
					-- SPI I/O
					i_SCLK : in  STD_LOGIC; -- SPI serial clock
					i_MOSI : in  STD_LOGIC; -- SPI master out slave in
					i_SSEL : in  STD_LOGIC; -- SPI slave select
					o_MISO : out  STD_LOGIC; -- SPI master in slave out
					o_DATA_received : OUT STD_LOGIC
				 );
	end COMPONENT top_level;
	
	signal i_ADC1 : STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0) := "010101010101";
	signal i_ADC2 : STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0) := "111111111111";
	signal i_ADC3 : STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0) := "010101010101";
	signal i_SCLK : STD_LOGIC := '0';
	signal i_SSEL : STD_LOGIC := '1';
	signal o_MISO : STD_LOGIC;
	signal i_MOSI : STD_LOGIC := '0';
	signal o_DATA_received : STD_LOGIC;
	
	signal i_CLK : STD_LOGIC := '0';
	-- Clock period definition
   constant c_clk_period : time := 20 ns;



begin
	UUT : top_level 
   Port map ( 	i_CLK => i_CLK,
		i_ADC1 => i_ADC1,
		i_ADC2 => i_ADC2,
		i_ADC3 => i_ADC3,
		i_SCLK => i_SCLK,
		i_MOSI => i_MOSI,
		i_SSEL => i_SSEL,
		o_MISO => o_MISO,
		o_DATA_received => o_DATA_received
	);

	-- Clock process definitions
   i_clk_process :process
   begin
		i_CLK<= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
	stim_process :process
   begin
		-- IDLE ------
		wait for 100 us;
		-- Select slave
		i_SSEL <= '0';
		-- Start SPI
		-- COMMAND ------
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE 1 
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE2
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE3
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE4
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE5
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE6
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '1';
		wait for c_clk_period*10;
		-- SPI SAMPLE7
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		-- SPI PRESENT
		i_MOSI <= '1';
		wait for c_clk_period*10;
		-- SPI SAMPLE8
		i_SCLK <= '1';
		wait for c_clk_period*100;
		-- TRANSMIT ------
		-- SPI PRESENT
		i_SCLK <= '0';
		i_MOSI <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE9
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE10
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE11
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE12
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE13
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE14
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE15
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE16
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE17
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE18
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE19
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE20
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE9
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE9
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE20
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE21
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE22
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE23
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE24
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE25
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE26
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE27
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE28
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE29
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE30
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE31
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE32
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE33
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE34
		i_SCLK <= '1';
		wait for c_clk_period*10;
		i_SCLK <= '0';
		wait for c_clk_period*10;
		-- SPI SAMPLE35
		i_SSEL <= '1';
		wait;
		-- IDLE ------
		
	end process;

end Behavioral;