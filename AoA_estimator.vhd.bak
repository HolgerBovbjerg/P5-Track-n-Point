library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity control_unit is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_HALT : in  STD_LOGIC; -- Halt input
				i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
				i_MEM_state : in STD_LOGIC_VECTOR (1 downto 0);
				i_MEM_access : in STD_LOGIC; 
				o_STATE : out  STD_LOGIC_VECTOR (6 downto 0); -- State output used for enabling blocks depending on state 
				
				-- Interrupt interface ---------------
				i_INTERRUPT_request : in STD_LOGIC;
				i_INTERRUPT_enable : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC;
				o_INTERRUPT_PC_set : out STD_LOGIC
			 );
end control_unit;

architecture Behavioral of control_unit is

	signal r_state: STD_LOGIC_VECTOR(6 downto 0) := "0000001"; -- Current state
	signal r_INTERRUPT_active: STD_LOGIC := '0'; -- Interrupt active
	signal r_INTERRUPT_ack: STD_LOGIC := '0'; -- Interrupt acknowlegde
	signal r_INTERRUPT_PC_set: STD_LOGIC := '0';
	signal r_INTERRUPT_request: STD_LOGIC := '0';
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			if ((i_INTERRUPT_request = '1') and (i_INTERRUPT_enable = '1')) then 
				r_INTERRUPT_request <= '1';
			end if;
			if (i_RESET = '1') then -- Check for reset 
				r_state <= "0000001"; -- Reset state
				r_INTERRUPT_active <= '0'; -- Interrupt active
				r_INTERRUPT_ack <= '0'; -- Interrupt acknowlegde
				r_INTERRUPT_PC_set <= '0';
				r_INTERRUPT_request <= '0';
			elsif (i_HALT = '1') then
				r_state <= r_state; 
			else
				case r_state is -- Check current state
					when "0000001" => -- Fetch state
						if (i_INTERRUPT_enable = '1') then
							if ((r_INTERRUPT_request = '1') and (r_INTERRUPT_active = '0')) then
								r_INTERRUPT_active <= '1';
								r_INTERRUPT_ack <= '1';
								r_INTERRUPT_PC_set <= '1';
								r_state <= "0100000"; -- PC update state
							else
								r_state <= "0000010"; -- Set state to "decode" state
							end if;
						elsif (r_INTERRUPT_active = '1') then 
								r_INTERRUPT_ack <= '0';
								r_INTERRUPT_request <= '0';
								r_INTERRUPT_PC_set <= '0';
								r_INTERRUPT_active <= '0';
								r_state <= "0000010"; -- Set state to "decode" state
						else
							r_state <= "0000010"; -- Set state to "decode" state
						end if;
					when "0000010" => -- Decode state
						r_state <= "0000100"; -- Set state to "Register read" state
					when "0000100" => -- Register read state
						r_state <= "0001000"; -- Set state to execute state
					when "0001000" => -- Execute State
						if (i_MEM_access = '1') then
							r_state <= "0010000"; --  Set state to "memory" state
						else -- If memory does not have to be accessed 
							r_state <= "0100000"; -- Set state to "writeback" state
						end if;
					when "0010000" => -- Memory state
						case i_MEM_state is 
							when "00" =>
								r_state <= r_state;
							when "01" =>
								r_state <= r_state;
							when "10" => 
								r_state <= "0100000";
							when others =>
								r_state <= "0100000";
						end case;
					when "0100000" => -- Writeback state
						r_state <= "1000000"; --Set state to "Update PC" state
					when "1000000" => -- Update PC state
						r_state <= "0000001"; --Set state to "fetch" state
					when others =>
						r_state <= "0000001"; --Set state to "fetch" state
				end case;
			end if;
		end if;
	end process;
	
	o_STATE <= r_state; -- Set state signal to output state
	o_INTERRUPT_ack <= r_INTERRUPT_ack;
	o_INTERRUPT_PC_set <= r_INTERRUPT_PC_set;


end Behavioral;