library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;

entity SPI_tb is
end SPI_tb;

architecture Behavioral of SPI_tb is

	COMPONENT SPI
		Port ( 	
		i_CLK : in  STD_LOGIC; -- Clock input
		-- SPI I/O
		i_SCLK : in  STD_LOGIC; -- SPI serial clock
		i_MOSI : in  STD_LOGIC; -- SPI master out slave in
		i_SSEL : in  STD_LOGIC; -- SPI slave select
		o_MISO : out  STD_LOGIC; -- SPI master in slave out
		-- Registers
		i_DATA1 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_DATA2 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_DATA3 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_DATA4 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_DATA5 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_DATA6 : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
		i_NEW_DATA : in  STD_LOGIC;
		-- Status signals
		o_ADDRESS_received : out STD_LOGIC
	);
	end COMPONENT SPI;
	
	signal i_CLK : STD_LOGIC := '0'; -- Clock input
	-- SPI I/O
	signal i_SCLK : STD_LOGIC := '0'; -- SPI serial clock
	signal i_MOSI : STD_LOGIC := '0'; -- SPI master out slave in
	signal i_SSEL : STD_LOGIC := '1'; -- SPI slave select
	signal o_MISO : STD_LOGIC; -- SPI master in slave out
	-- Registers
	signal i_DATA1 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"ffffff"&"111";
	signal i_DATA2 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"000000"&"111";
	signal i_DATA3 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"f0f0ff"&"111";
	signal i_DATA4 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"0f0f00"&"111";
	signal i_DATA5 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"f0f0ff"&"000";
	signal i_DATA6 : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := x"ff00f0"&"000";
	signal i_NEW_DATA : STD_LOGIC := '1';
	-- Status signals
	signal o_ADDRESS_received : STD_LOGIC;
	signal r_ADDRESS : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
		-- Clock period definition
   constant c_clk_period : time := 20 ns;


begin

	UUT : SPI
   Port map ( 	
		i_CLK => i_CLK,
		i_SCLK => i_SCLK,
		i_MOSI => i_MOSI,
		i_SSEL => i_SSEL,
		o_MISO => o_MISO,
		i_DATA1 => i_DATA1,
		i_DATA2 => i_DATA2,
		i_DATA3 => i_DATA3,
		i_DATA4 => i_DATA4,
		i_DATA5 => i_DATA5,
		i_DATA6 => i_DATA6,
		i_NEW_DATA => i_NEW_DATA,
		o_ADDRESS_received => o_ADDRESS_received
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
		-- Start SPI
		-- Select slave
		i_SSEL <= '0';
		
		wait for c_clk_period*10;
		-- Test register update enable (new values should not be sampled during tx/rx)
		i_DATA1 <= x"000fff" & "000";
		i_DATA2 <= x"000000" & "101";
		i_DATA3 <= x"000000" & "101";
		i_DATA4 <= x"000000" & "101";
		i_DATA5 <= x"000000" & "101";
		i_DATA6 <= x"000000" & "101";
		-- COMMAND ------
		for I in 0 to 7 loop
			i_SCLK <= '0';
			-- SPI PRESENT
			i_MOSI <= r_ADDRESS(7-I);
			wait for c_clk_period*10;
			-- SPI SAMPLE
			i_SCLK <= '1';
			wait for c_clk_period*10;
		end loop;
		
		-- Transmit
		i_MOSI <= '1';
		for I in 0 to 31 loop
			i_SCLK <= '0';
			-- SPI PRESENT
			wait for c_clk_period*10;
			-- SPI SAMPLE
			i_SCLK <= '1';
			wait for c_clk_period*10;
		end loop;
		
		-- End SPI
		i_SSEL <= '1';
		i_SCLK <= '0';
		
		
		-- IDLE ------
		
		r_ADDRESS <= "00000001";
		wait for 100 us;
		-- Start SPI
		-- Select slave
		i_SSEL <= '0';
		-- COMMAND ------
		for I in 0 to 7 loop
			i_SCLK <= '0';
			-- SPI PRESENT
			i_MOSI <= r_ADDRESS(7-I);
			wait for c_clk_period*10;
			-- SPI SAMPLE
			i_SCLK <= '1';
			wait for c_clk_period*10;
		end loop;
		
		-- Transmit
		i_MOSI <= '1';
		for I in 0 to 31 loop
			i_SCLK <= '0';
			-- SPI PRESENT
			wait for c_clk_period*10;
			-- SPI SAMPLE
			i_SCLK <= '1';
			wait for c_clk_period*10;
		end loop;
		
		-- End SPI
		i_SSEL <= '1';
		i_SCLK <= '0';
		wait;
		-- IDLE ------
		
	end process;
			

end Behavioral;