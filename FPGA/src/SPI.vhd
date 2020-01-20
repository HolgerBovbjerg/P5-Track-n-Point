library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;
use work.records;

entity SPI is
    Port ( 	
				i_CLK : in  STD_LOGIC; -- Clock input
				-- SPI I/O
				i_SCLK : in  STD_LOGIC; -- SPI serial clock
				i_MOSI : in  STD_LOGIC; -- SPI master out slave in
				i_SSEL : in  STD_LOGIC; -- SPI slave select
				o_MISO : out  STD_LOGIC; -- SPI master in slave out
				-- Registers
				i_REG_DATA : in  STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0);
				i_NEW_DATA : in  STD_LOGIC;
				o_RECEIVED_DATA : out STD_LOGIC_VECTOR(7 downto 0);
				-- Status signals
				o_DATA_received_bool : out STD_LOGIC
			 );
end SPI;

architecture Behavioral of SPI is

-- SCLK signals
signal r_SCLK : STD_LOGIC_VECTOR(2 downto 0);
signal w_SCLK_rising : STD_LOGIC;
signal w_SCLK_falling : STD_LOGIC;

-- SSEL signals
signal r_SSEL : STD_LOGIC_VECTOR(2 downto 0);
signal w_SSEL_active : STD_LOGIC;
signal w_SSEL_startmessage : STD_LOGIC;
signal w_SSEL_endmessage : STD_LOGIC;

-- MOSI signals
signal r_MOSI : STD_LOGIC_VECTOR(1 downto 0);
signal w_MOSI_data : STD_LOGIC;

-- Receive signals
signal r_bitcount : STD_LOGIC_VECTOR(2 downto 0); 
signal r_DATA_received : STD_LOGIC_VECTOR(7 downto 0);
signal r_DATA_received_bool : STD_LOGIC;

-- Transmit signals
signal r_count : STD_LOGIC_VECTOR(7 downto 0); 
signal r_DATA_sent : STD_LOGIC_VECTOR(7 downto 0);
signal r_DATA_sent_bool : STD_LOGIC;


begin

	-- Sync SPI signals to system clock
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			r_SCLK <= r_SCLK(1 downto 0) & i_SCLK;
			r_SSEL <= r_SSEL(1 downto 0) & i_SSEL;
			r_MOSI <= r_MOSI(0) & i_MOSI;
		end if;
	end process;
	
	with r_SCLK(2 downto 1) select
		w_SCLK_rising <=	'1' when "01",
								'0' when others;
	with r_SCLK(2 downto 1) select
		w_SCLK_falling <=	'1' when "10",
								'0' when others;
								
	w_SSEL_active <= not r_SSEL(1);
	with r_SSEL(2 downto 1) select
		w_SSEL_startmessage <=	'1' when "10",
								'0' when others;
	with r_SSEL(2 downto 1) select
		w_SSEL_endmessage <=	'1' when "01",
								'0' when others;
								
	w_MOSI_data <= r_MOSI(1);
	
	-- Receiving data
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			if w_SSEL_active = '0' then
				r_bitcount <= "000";
			end if;
			if (w_SCLK_rising = '1') then
				r_bitcount <= std_logic_vector(unsigned(r_bitcount) + 1);
				r_DATA_received <= r_DATA_received(6 downto 0) & w_MOSI_data;
			end if;
			
			if (r_bitcount = "111") then
				r_DATA_received_bool <=	(w_SSEL_active and w_SCLK_rising);
			else 
				r_DATA_received_bool <=	'0';
			end if;
			
			if (r_DATA_received_bool = '1') then
				o_DATA_received_bool <= '1';
			else	
				o_DATA_received_bool <= '0';
			end if;
		end if;
	end process;
	
	-- Transmit data
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			if w_SSEL_startmessage = '1' then
				r_count <= STD_LOGIC_VECTOR(unsigned(r_count) + 1);
				r_DATA_sent <= r_count;
			elsif w_SCLK_falling = '1' then
				if r_bitcount = "000" then
					r_DATA_sent <= x"00";
				else 
					r_DATA_sent <= r_DATA_sent(6 downto 0) & '0';
				end if;
			end if;
		end if;
	end process;
	
	-- SPI -------------------- 
	o_MISO <= r_DATA_sent(7);
	
	o_RECEIVED_DATA <= r_DATA_received;

end Behavioral;