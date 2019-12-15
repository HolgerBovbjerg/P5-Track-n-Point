library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records.all;

ENTITY AoA_SPI IS
  GENERIC(
    cpol    : STD_LOGIC := '0';  --spi clock polarity mode
    cpha    : STD_LOGIC := '0';  --spi clock phase mode
    d_width : INTEGER := 18);     --data width in bits
  PORT(
    -- FPGA inputs
	 i_SCLK         	: IN     STD_LOGIC;  --spi clk from master
    i_SS         		: IN     STD_LOGIC;  --active low slave select
    i_MOSI         	: IN     STD_LOGIC;  --master out, slave in
	 i_RESET      		: IN     STD_LOGIC;  --active low reset
	 --FPGA output
	 o_MISO         	: OUT    STD_LOGIC := 'Z'; --master in, slave out
	 
	 -- Internal inputs
	 i_CLK			: IN		STD_LOGIC; --FPGA clock
    i_NEW_DATA   	: IN     STD_LOGIC;  --asynchronous load enable
    tx_load_data1 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 tx_load_data2 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 tx_load_data3 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 tx_load_data4 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 tx_load_data5 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 tx_load_data6 : IN     STD_LOGIC_VECTOR(d_width-1 downto 0);  --asynchronous tx data to load
	 
	 -- Internal buffers
    trdy         	: BUFFER STD_LOGIC := '0';  --transmit ready bit
    rrdy         	: BUFFER STD_LOGIC := '0';  --receive ready bit
    roe          	: BUFFER STD_LOGIC := '0';  --receive overrun error bit
	 
	 -- Internal outputs
    o_rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 downto 0) := (others => '0');  --receive register output to logic
    o_busy         : OUT    STD_LOGIC := '0'  --busy signal to logic ('1' during transaction)
    );
END AoA_SPI;

Architecture behavioural of AoA_SPI is
	type SPI_register_type is array (5 downto 0) of std_logic_vector(d_width-1 downto 0); 
	
	SIGNAL r_mode    : STD_LOGIC;  --groups modes by clock polarity relation to data
	SIGNAL r_clk     : STD_LOGIC;  --clock
	SIGNAL r_bit_count 	: STD_LOGIC_VECTOR(d_width+8 downto 0);  --'1' for active transaction bit
	SIGNAL r_write_addr  : STD_LOGIC_VECTOR(3 downto 0);  --address of register to write ('0' = receive, '1' = status)
	SIGNAL r_read_addr  	: STD_LOGIC_VECTOR(3 downto 0);  --address of register to read ('0' = transmit, '1' = status)
	SIGNAL r_rx_buffer  	: STD_LOGIC_VECTOR(d_width-1 downto 0) := (others => '0');  --receiver buffer
	SIGNAL r_tx_buffer  	: STD_LOGIC_VECTOR(d_width-1 downto 0) := (others => '0');  --transmit buffer
	SIGNAL r_tx_data : SPI_register_type := (others => (others =>'0'));
	
	function STD_LOGIC_to_integer( s : std_logic ) return natural is
	begin
	  if s = '1' then
		 return 1;
	  else
		 return 0;
	  end if;
	end function;
	
Begin
	o_busy <= NOT i_SS; -- If slave select is low the module is selkected by a master
	 
	--adjust clock so writes are on rising edge and reads on falling edge
	r_mode <= cpol XOR cpha;  -- '1' for modes that write on rising edge
	WITH r_mode SELECT
		r_clk <= i_SCLK WHEN '1',
		NOT i_SCLK WHEN others;
			  
			  
	 --Keeping track of miso/mosi bit counts for data alignmnet
	PROCESS(i_SS, r_clk, i_RESET)
	BEGIN
		IF(i_SS = '1' OR i_RESET = '0') THEN                         -- If slave is not selected or being reset
			r_bit_count <= (STD_LOGIC_to_integer(NOT cpha) => '1', others => '0'); --reset miso/mosi bit count
		ELSE                                                         -- If slave is selected
			IF(rising_edge(r_clk)) THEN                                 -- If new bit on miso/mosi
				r_bit_count <= r_bit_count(d_width+8-1 downto 0) & '0';         --shift active bit indicator
			END IF;
		END IF;
	END PROCESS;
	
	
	PROCESS(i_SS, r_clk, r_bit_count, r_tx_data, r_write_addr, r_read_addr, i_RESET)
	BEGIN
		--write address register ('0' for receive, '1' for status)
		IF(r_bit_count(1) = '1' AND falling_edge(r_clk)) THEN
			r_write_addr(0) <= i_MOSI;
		ELSIF (r_bit_count(2) = '1' AND falling_edge(r_clk)) THEN
			r_write_addr(1) <= i_MOSI;
		ELSIF(r_bit_count(3) = '1' AND falling_edge(r_clk)) THEN
			r_write_addr(2) <= i_MOSI;
		ELSIF (r_bit_count(4) = '1' AND falling_edge(r_clk)) THEN
			r_write_addr(3) <= i_MOSI;
		END IF;
		
		--read address register ('0' for transmit, '1' for status)
		IF(r_bit_count(4) = '1' AND falling_edge(r_clk)) THEN
			r_read_addr(0) <= i_MOSI;
		ELSIF(r_bit_count(5) = '1' AND falling_edge(r_clk)) THEN
			r_read_addr(1) <= i_MOSI;
		ELSIF(r_bit_count(6) = '1' AND falling_edge(r_clk)) THEN
			r_read_addr(2) <= i_MOSI;
		ELSIF(r_bit_count(7) = '1' AND falling_edge(r_clk)) THEN
			r_read_addr(3) <= i_MOSI;
		END IF;

		--transmit registers
		IF(i_RESET = '0') THEN
			r_tx_buffer <= (OTHERS => '0');
		ELSIF(i_SS = '1') THEN  -- load transmit register from data register
			r_tx_buffer <= r_tx_data(to_integer(unsigned(r_write_addr)));
		ELSIF((r_read_addr = x"0") AND r_bit_count(7 DOWNTO 0) = "00000000" AND r_bit_count(d_width+8) = '0' AND rising_edge(r_clk)) THEN -- If zero message
			r_tx_buffer(d_width-1 DOWNTO 0) <= r_tx_buffer(d_width-2 DOWNTO 0) & r_tx_buffer(d_width-1);  --shift through tx data
		END IF;
		
		    --miso output register
		IF(i_SS = '1' OR i_RESET = '0') THEN           --no transaction occuring or reset
			o_MISO <= 'Z';
		ELSIF(rising_edge(r_clk)) THEN
			IF(r_read_addr = x"1") THEN  --write status register to master
			CASE r_bit_count(10 DOWNTO 8) IS
				WHEN "001" => o_MISO <= trdy;
				WHEN "010" => o_MISO <= rrdy;
				WHEN "100" => o_MISO <= roe;
				WHEN OTHERS => NULL;
			END CASE;
			ELSIF(r_read_addr = x"0" AND r_bit_count(7 DOWNTO 0) = "00000000" AND r_bit_count(d_width+8) = '0') THEN
				o_MISO <= r_tx_buffer(d_width-1);                  --send transmit register data to master
			END IF;
		 END IF;
	END PROCESS;
	
	PROCESS (i_CLK, i_SS, i_NEW_DATA, tx_load_data1, tx_load_data2, tx_load_data3, tx_load_data4, tx_load_data5, tx_load_data6)
	BEGIN
		IF (rising_edge(i_CLK)) THEN
			IF (i_NEW_DATA AND i_SS) = '1' THEN				
				r_tx_data(0) <= tx_load_data1;
				r_tx_data(1) <= tx_load_data2;
				r_tx_data(2) <= tx_load_data3;
				r_tx_data(3) <= tx_load_data4;
				r_tx_data(4) <= tx_load_data5;
				r_tx_data(5) <= tx_load_data6;
			END IF;
		END IF;
	END PROCESS;
	
--	  --fulfill Goertzel request for receive data
--    IF(reset_n = '0') THEN
--      o_rx_data <= (OTHERS => '0');
--    ELSIF(i_SS = '1' AND rx_req = '1') THEN  
--      o_rx_data <= r_rx_buf;
--    END IF;


END behavioural;
	
		
		
