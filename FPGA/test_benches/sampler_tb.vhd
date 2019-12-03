library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity sampler_tb is
end sampler_tb;
 
architecture behavioral of sampler_tb is
	constant c_WIDTH : integer := 12;
   
	signal i_CLK   : std_logic := '0';
	signal i_WR_EN   : std_logic := '0';
	signal i_WR_DATA : std_logic_vector(c_WIDTH-1 downto 0);
	signal o_RD_DATA : std_logic_vector(c_WIDTH-1 downto 0);
	
	   -- Clock period definitions
   constant c_clk_period : time := 20 ns;
 
	component sampler is
		generic (
			 g_WIDTH : natural := 12 -- Word width
		 );
		port (
			i_clk      : in std_logic; -- CLock input
		 
			-- FIFO Write Interface
			i_write_en   : in  std_logic; -- Write enable
			i_write_data : in  std_logic_vector(g_WIDTH-1 downto 0); -- Input data
		 
			-- FIFO Read Interface
			o_read_data : out std_logic_vector(g_WIDTH-1 downto 0) -- Output data
		);
	end component sampler;
 
   
begin
	sampler_INST : sampler
		generic map (
			g_WIDTH => c_WIDTH
      )
		port map (
			i_clk      => i_CLK,
			i_write_en    => i_WR_EN,
			i_write_data  => i_WR_DATA,
			o_read_data  => o_RD_DATA
		);
 
 
	-- Clock process definitions
   clk_process :process
   begin
		i_CLK <= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stim_process : process 
	begin
		i_WR_DATA <= X"A5B";
		wait for c_clk_period*5;
		i_WR_EN <= '1';
		wait for c_clk_period*5;
		i_WR_DATA <= X"FF0";
		wait for c_clk_period*5;
		i_WR_EN <= '0';
		wait for c_clk_period*5;
		i_WR_DATA <= X"F0F";
		wait for c_clk_period*5;
		i_WR_EN <= '1';
		wait for c_clk_period*5;
		wait for c_clk_period*5;
		i_WR_EN <= '0';
		wait for c_clk_period*5;
		
		wait;
	end process;
  
  end behavioral;