LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY SPI_module_tb IS
END SPI_module_tb;

architecture behavioural of SPI_module_tb is


	COMPONENT SPI_module IS
	  GENERIC(
		 cpol    : STD_LOGIC := '0';  --spi clock polarity mode
		 cpha    : STD_LOGIC := '0';  --spi clock phase mode
		 d_width : INTEGER := 8);     --data width in bits
	  PORT(
		 sclk         : IN     STD_LOGIC;  --spi clk from master
		 reset_n      : IN     STD_LOGIC;  --active low reset
		 ss_n         : IN     STD_LOGIC;  --active low slave select
		 mosi         : IN     STD_LOGIC;  --master out, slave in
		 rx_req       : IN     STD_LOGIC;  --'1' while busy = '0' moves data to the rx_data output
		 st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
		 st_load_trdy : IN     STD_LOGIC;  --asynchronous trdy load input
		 st_load_rrdy : IN     STD_LOGIC;  --asynchronous rrdy load input
		 st_load_roe  : IN     STD_LOGIC;  --asynchronous roe load input
		 tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
		 tx_load_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --asynchronous tx data to load
		 trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
		 rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
		 roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit
		 rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
		 busy         : OUT    STD_LOGIC := '0';  --busy signal to logic ('1' during transaction)
		 miso         : OUT    STD_LOGIC := 'Z' --master in, slave out
		);
	END COMPONENT; 
	
	
	signal i_CLK   : std_logic := '0';
	-- Clock period definitions
   constant c_clk_period : time := 2500 ns;
	
	constant	 cpol    : STD_LOGIC := '0';  --spi clock polarity mode
	constant	 cpha    : STD_LOGIC := '0';  --spi clock phase mode
	constant	 d_width : INTEGER := 16;     --data width in bits
	
	signal 	 i_reset_n      : STD_LOGIC := '1';  --active low reset
	signal	 i_ss_n         : STD_LOGIC := '1';  --active low slave select
	signal	 i_mosi         : STD_LOGIC := 'Z';  --master out, slave in
	signal	 i_rx_req       : STD_LOGIC := '0';  --'1' while busy = '0' moves data to the rx_data output
	signal	 i_st_load_en   : STD_LOGIC := '0';  --asynchronous load enable
	signal	 i_st_load_trdy : STD_LOGIC := '0';  --asynchronous trdy load input
	signal	 i_st_load_rrdy : STD_LOGIC := '0';  --asynchronous rrdy load input
	signal	 i_st_load_roe  : STD_LOGIC := '0';  --asynchronous roe load input
	signal	 i_tx_load_en   : STD_LOGIC := '0';  --asynchronous transmit buffer load enable
	signal	 i_tx_load_data : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (others =>'0');  --asynchronous tx data to load
	signal	 io_trdy         : STD_LOGIC;  --transmit ready bit
	signal	 io_rrdy         : STD_LOGIC;  --receive ready bit
	signal	 io_roe          : STD_LOGIC;  --receive overrun error bit
	signal	 o_rx_data      : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --receive register output to logic
	signal	 o_busy         : STD_LOGIC;  --busy signal to logic ('1' during transaction)
	signal	 o_miso         : STD_LOGIC; --master in, slave out

begin 
	
	INST_SPI_module : SPI_module
	  GENERIC map(
		 cpol    => cpol,  --spi clock polarity mode
		 cpha    => cpha,  --spi clock phase mode
		 d_width => d_width     --data width in bits
		)
	  PORT map(
		 sclk         => i_CLK,
		 reset_n      => i_reset_n,
		 ss_n         => i_ss_n,  
		 mosi         => i_mosi,  
		 rx_req       => i_rx_req,  
		 st_load_en   => i_st_load_en, 
		 st_load_trdy => i_st_load_trdy,
		 st_load_rrdy => i_st_load_rrdy,
		 st_load_roe  => i_st_load_roe,
		 tx_load_en   => i_tx_load_en,
		 tx_load_data => i_tx_load_data,
		 trdy         => io_trdy,
		 rrdy         => io_rrdy,
		 roe          => io_roe,
		 rx_data      => o_rx_data,
		 busy         => o_busy,
		 miso         => o_miso
		);
		
		-- Clock process definitions
--   clk_process :process
--   begin
--		
--   end process;
	
	stim_process :process
   begin
		wait for 10 us;
		i_CLK <= '0';
		i_tx_load_en <= '0';
		i_tx_load_data <= x"fa0b";
		i_tx_load_en <= '1';
		wait for c_clk_period;
		i_tx_load_en <= '0';
		wait for 2*c_clk_period;
		i_ss_n <= '0';
		-- start tx
		-- 0
		i_MOSI <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 1
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 2
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 3
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 4
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 5
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 6
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 7
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 8
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 9
		i_MOSI <= '0';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 10
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 11
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 12
		i_MOSI <= '0';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 13
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 14
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 15
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		
		-- start tx
		-- 0
		i_MOSI <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 1
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 2
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 3
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 4
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 5
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 6
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 7
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 8
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 9
		i_MOSI <= '0';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 10
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 11
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 12
		i_MOSI <= '0';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 13
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 14
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
		-- 15
		i_MOSI <= '1';
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;


		
		-- 16
		i_CLK <= '0';
		i_MOSI <= 'Z';
		wait for c_clk_period;
		i_ss_n <= '1';
		i_rx_req  <= '1';
		wait for c_clk_period;
		i_rx_req  <= '0';
	end process;
		
	
	
	
		
		

end behavioural;