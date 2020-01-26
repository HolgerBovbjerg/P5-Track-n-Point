library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library work;
use work.constants.all;

-- Made for SPIMODE0, MSB first
entity SPI is
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
end SPI;

architecture Behavioral of SPI is

	COMPONENT SPI_register
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
	end COMPONENT SPI_register;


	
type SPI_machine is (IDLE, COMMAND, TRANSMIT); 
signal state : SPI_machine := IDLE;
constant TX_LENGTH : integer := 32;

-- SCLK signals
signal r_SCLK : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
signal w_SCLK_rising : STD_LOGIC;
signal w_SCLK_falling : STD_LOGIC;

-- SSEL signals
signal r_SSEL : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
signal w_SSEL_active : STD_LOGIC;
signal w_SSEL_startmessage : STD_LOGIC;
signal w_SSEL_endmessage : STD_LOGIC;

-- MOSI signals
signal r_MOSI : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal w_MOSI_data : STD_LOGIC;

-- Receive signals
signal r_bitcount : integer := 0;
signal r_ADDRESS : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal r_ADDRESS_received : STD_LOGIC := '0';

-- Transmit signals
signal r_TX_data : STD_LOGIC_VECTOR(CALC_WIDTH-1 downto 0) := (others => '0'); 
signal r_MISO : STD_LOGIC := '0';

-- Control signals
signal r_UPDATE_ENABLE : STD_LOGIC := '1';

begin

	INST_SPI_register : SPI_register
   Port map( 	
				i_CLK => i_CLK,
				i_UPDATE_ENABLE => r_UPDATE_ENABLE,
				i_DATA1 => i_DATA1,
				i_DATA2 => i_DATA2,
				i_DATA3 => i_DATA3,
				i_DATA4 => i_DATA4,
				i_DATA5 => i_DATA5,
				i_DATA6 => i_DATA6,
				i_NEW_DATA => i_NEW_DATA,
				i_ADDRESS => r_ADDRESS(2 downto 0),
				o_DATA => r_TX_data
	);
	
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
	
	-- SPI state machine
	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			case state is -- Check state
				when IDLE =>
					r_bitcount <= 0;
					r_MISO <= '0';
					r_ADDRESS <= x"00";
					r_UPDATE_enable <= '1';
					if(w_SSEL_startmessage = '1') then
						r_UPDATE_enable <= '0';
						state <= COMMAND;
					end if;
				when COMMAND =>
					if (w_SSEL_endmessage = '1') then
						state <= IDLE;
					else
						if r_bitcount = 8 then
							state <= TRANSMIT;
							r_ADDRESS_received <= '1';
							r_bitcount <= 0;
						end if;
						if (w_SCLK_rising = '1') then
							r_ADDRESS <= r_ADDRESS(6 downto 0) & w_MOSI_data;
							r_bitcount <= r_bitcount + 1;
						end if;
						if (w_SCLK_falling = '1') then
							r_MISO <= '0';
						end if;
					end if;
				when TRANSMIT =>
					if (w_SSEL_endmessage = '1') then
						state <= IDLE;
						r_ADDRESS_received <= '0';
					else 
						if (w_SCLK_rising = '1') then
							r_bitcount <= r_bitcount + 1;
						end if;
						if (w_SCLK_falling = '1') then
							if r_bitcount = TX_LENGTH then
								state <= COMMAND;
								r_ADDRESS_received <= '0';
								r_bitcount <= 0;
							elsif r_bitcount < 5 then -- Write 0 for first 5 bits
								r_MISO <= '0';
							else -- write data for rest 
								r_MISO <= r_TX_data(5 + CALC_WIDTH-1 - r_bitcount); 
							end if;
						end if;	
					end if;
				when others =>
					state <= IDLE;
					r_ADDRESS_received <= '0';
					r_bitcount <= 0;
					r_MISO <= '0';
					r_ADDRESS <= x"00";
					r_UPDATE_enable <= '1';
			end case;
		end if;
	end process;
			
	o_MISO <= r_MISO;
	
	-- Debug ------------------
	o_ADDRESS_received <= r_ADDRESS_received;
end Behavioral;