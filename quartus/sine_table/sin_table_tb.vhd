library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sin_table_tb is
end sin_table_tb;


ARCHITECTURE behavior OF sin_table_tb IS 
	COMPONENT sin_table is
	port (
	  i_clk          : in  std_logic;
	  i_addr         : in  std_logic_vector(7 downto 0);
	  o_data         : out std_logic_vector(11 downto 0));
	end COMPONENT;
	
	signal i_CLK :  STD_LOGIC := '0'; 
	signal i_addr : std_logic_vector(7 downto 0) := (others=>'0');
	signal o_data : std_logic_vector(11 downto 0);
	
		-- Clock period definitions
   constant c_clk_period : time := 20 ns;	
	
	constant c_signal_period : time := 2 us;
begin 
	
	
	data : sin_table PORT MAP(
	  i_clk          => i_CLK,
	  i_addr         => i_addr,
	  o_data         => o_data
	);
	   

	-- Clock process definitions
   i_clk_process :process
   begin
		i_CLK<= '0';
		wait for c_clk_period/2;
		i_CLK <= '1';
		wait for c_clk_period/2;
   end process;
	
		   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 4095 loop
			i_addr <= std_logic_vector(signed(i_addr) + 1);
			wait for c_signal_period; 
		end loop;
		
		wait;
		
   end process;
end;