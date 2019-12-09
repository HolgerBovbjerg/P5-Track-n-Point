-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "12/09/2019 16:07:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Goertzel_sine_test IS
    PORT (
	i_CLK : IN std_logic;
	i_NEW_VALUE : IN std_logic;
	i_addr : IN std_logic_vector(7 DOWNTO 0);
	i_CLK_sin : IN std_logic;
	o_Real : BUFFER std_logic_vector(26 DOWNTO 0);
	o_Imag : BUFFER std_logic_vector(26 DOWNTO 0);
	o_NEW_RESULT : BUFFER std_logic
	);
END Goertzel_sine_test;

-- Design Ports Information
-- o_Real[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[10]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[15]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[16]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[17]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[19]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[20]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[21]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[22]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[23]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[25]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[26]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[3]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[10]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[13]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[16]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[17]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[18]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[19]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[20]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[21]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[22]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[23]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[24]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[26]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEW_VALUE	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK_sin	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Goertzel_sine_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_NEW_VALUE : std_logic;
SIGNAL ww_i_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_CLK_sin : std_logic;
SIGNAL ww_o_Real : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_Imag : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_NEW_RESULT : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK_sin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \o_Real[0]~output_o\ : std_logic;
SIGNAL \o_Real[1]~output_o\ : std_logic;
SIGNAL \o_Real[2]~output_o\ : std_logic;
SIGNAL \o_Real[3]~output_o\ : std_logic;
SIGNAL \o_Real[4]~output_o\ : std_logic;
SIGNAL \o_Real[5]~output_o\ : std_logic;
SIGNAL \o_Real[6]~output_o\ : std_logic;
SIGNAL \o_Real[7]~output_o\ : std_logic;
SIGNAL \o_Real[8]~output_o\ : std_logic;
SIGNAL \o_Real[9]~output_o\ : std_logic;
SIGNAL \o_Real[10]~output_o\ : std_logic;
SIGNAL \o_Real[11]~output_o\ : std_logic;
SIGNAL \o_Real[12]~output_o\ : std_logic;
SIGNAL \o_Real[13]~output_o\ : std_logic;
SIGNAL \o_Real[14]~output_o\ : std_logic;
SIGNAL \o_Real[15]~output_o\ : std_logic;
SIGNAL \o_Real[16]~output_o\ : std_logic;
SIGNAL \o_Real[17]~output_o\ : std_logic;
SIGNAL \o_Real[18]~output_o\ : std_logic;
SIGNAL \o_Real[19]~output_o\ : std_logic;
SIGNAL \o_Real[20]~output_o\ : std_logic;
SIGNAL \o_Real[21]~output_o\ : std_logic;
SIGNAL \o_Real[22]~output_o\ : std_logic;
SIGNAL \o_Real[23]~output_o\ : std_logic;
SIGNAL \o_Real[24]~output_o\ : std_logic;
SIGNAL \o_Real[25]~output_o\ : std_logic;
SIGNAL \o_Real[26]~output_o\ : std_logic;
SIGNAL \o_Imag[0]~output_o\ : std_logic;
SIGNAL \o_Imag[1]~output_o\ : std_logic;
SIGNAL \o_Imag[2]~output_o\ : std_logic;
SIGNAL \o_Imag[3]~output_o\ : std_logic;
SIGNAL \o_Imag[4]~output_o\ : std_logic;
SIGNAL \o_Imag[5]~output_o\ : std_logic;
SIGNAL \o_Imag[6]~output_o\ : std_logic;
SIGNAL \o_Imag[7]~output_o\ : std_logic;
SIGNAL \o_Imag[8]~output_o\ : std_logic;
SIGNAL \o_Imag[9]~output_o\ : std_logic;
SIGNAL \o_Imag[10]~output_o\ : std_logic;
SIGNAL \o_Imag[11]~output_o\ : std_logic;
SIGNAL \o_Imag[12]~output_o\ : std_logic;
SIGNAL \o_Imag[13]~output_o\ : std_logic;
SIGNAL \o_Imag[14]~output_o\ : std_logic;
SIGNAL \o_Imag[15]~output_o\ : std_logic;
SIGNAL \o_Imag[16]~output_o\ : std_logic;
SIGNAL \o_Imag[17]~output_o\ : std_logic;
SIGNAL \o_Imag[18]~output_o\ : std_logic;
SIGNAL \o_Imag[19]~output_o\ : std_logic;
SIGNAL \o_Imag[20]~output_o\ : std_logic;
SIGNAL \o_Imag[21]~output_o\ : std_logic;
SIGNAL \o_Imag[22]~output_o\ : std_logic;
SIGNAL \o_Imag[23]~output_o\ : std_logic;
SIGNAL \o_Imag[24]~output_o\ : std_logic;
SIGNAL \o_Imag[25]~output_o\ : std_logic;
SIGNAL \o_Imag[26]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_NEW_VALUE~input_o\ : std_logic;
SIGNAL \uut|reg.state.STORE~feeder_combout\ : std_logic;
SIGNAL \uut|reg.state.STORE~q\ : std_logic;
SIGNAL \uut|Add4~0_combout\ : std_logic;
SIGNAL \uut|Add4~1\ : std_logic;
SIGNAL \uut|Add4~2_combout\ : std_logic;
SIGNAL \uut|Add4~3\ : std_logic;
SIGNAL \uut|Add4~4_combout\ : std_logic;
SIGNAL \uut|Add4~5\ : std_logic;
SIGNAL \uut|Add4~6_combout\ : std_logic;
SIGNAL \uut|Add4~7\ : std_logic;
SIGNAL \uut|Add4~8_combout\ : std_logic;
SIGNAL \uut|Add4~29\ : std_logic;
SIGNAL \uut|Add4~30_combout\ : std_logic;
SIGNAL \uut|Add4~31\ : std_logic;
SIGNAL \uut|Add4~32_combout\ : std_logic;
SIGNAL \uut|Add4~33\ : std_logic;
SIGNAL \uut|Add4~34_combout\ : std_logic;
SIGNAL \uut|Add4~35\ : std_logic;
SIGNAL \uut|Add4~36_combout\ : std_logic;
SIGNAL \uut|Add4~37\ : std_logic;
SIGNAL \uut|Add4~38_combout\ : std_logic;
SIGNAL \uut|Add4~39\ : std_logic;
SIGNAL \uut|Add4~40_combout\ : std_logic;
SIGNAL \uut|Add4~41\ : std_logic;
SIGNAL \uut|Add4~42_combout\ : std_logic;
SIGNAL \uut|Add4~43\ : std_logic;
SIGNAL \uut|Add4~44_combout\ : std_logic;
SIGNAL \uut|Add4~45\ : std_logic;
SIGNAL \uut|Add4~46_combout\ : std_logic;
SIGNAL \uut|Add4~47\ : std_logic;
SIGNAL \uut|Add4~48_combout\ : std_logic;
SIGNAL \uut|Add4~49\ : std_logic;
SIGNAL \uut|Add4~50_combout\ : std_logic;
SIGNAL \uut|Add4~51\ : std_logic;
SIGNAL \uut|Add4~52_combout\ : std_logic;
SIGNAL \uut|Equal0~1_combout\ : std_logic;
SIGNAL \uut|Add4~53\ : std_logic;
SIGNAL \uut|Add4~54_combout\ : std_logic;
SIGNAL \uut|Add4~55\ : std_logic;
SIGNAL \uut|Add4~56_combout\ : std_logic;
SIGNAL \uut|Add4~57\ : std_logic;
SIGNAL \uut|Add4~58_combout\ : std_logic;
SIGNAL \uut|Add4~59\ : std_logic;
SIGNAL \uut|Add4~60_combout\ : std_logic;
SIGNAL \uut|Equal0~0_combout\ : std_logic;
SIGNAL \uut|Equal0~3_combout\ : std_logic;
SIGNAL \uut|Equal0~2_combout\ : std_logic;
SIGNAL \uut|Equal0~4_combout\ : std_logic;
SIGNAL \uut|reg~10_combout\ : std_logic;
SIGNAL \uut|Add4~9\ : std_logic;
SIGNAL \uut|Add4~10_combout\ : std_logic;
SIGNAL \uut|Add4~11\ : std_logic;
SIGNAL \uut|Add4~12_combout\ : std_logic;
SIGNAL \uut|reg~9_combout\ : std_logic;
SIGNAL \uut|Add4~13\ : std_logic;
SIGNAL \uut|Add4~14_combout\ : std_logic;
SIGNAL \uut|reg~8_combout\ : std_logic;
SIGNAL \uut|Add4~15\ : std_logic;
SIGNAL \uut|Add4~16_combout\ : std_logic;
SIGNAL \uut|reg~7_combout\ : std_logic;
SIGNAL \uut|Add4~17\ : std_logic;
SIGNAL \uut|Add4~18_combout\ : std_logic;
SIGNAL \uut|reg~6_combout\ : std_logic;
SIGNAL \uut|Add4~19\ : std_logic;
SIGNAL \uut|Add4~20_combout\ : std_logic;
SIGNAL \uut|reg~5_combout\ : std_logic;
SIGNAL \uut|Add4~21\ : std_logic;
SIGNAL \uut|Add4~22_combout\ : std_logic;
SIGNAL \uut|Add4~23\ : std_logic;
SIGNAL \uut|Add4~24_combout\ : std_logic;
SIGNAL \uut|Add4~25\ : std_logic;
SIGNAL \uut|Add4~26_combout\ : std_logic;
SIGNAL \uut|Add4~27\ : std_logic;
SIGNAL \uut|Add4~28_combout\ : std_logic;
SIGNAL \uut|Equal0~5_combout\ : std_logic;
SIGNAL \uut|Equal0~6_combout\ : std_logic;
SIGNAL \uut|Equal0~7_combout\ : std_logic;
SIGNAL \uut|reg~11_combout\ : std_logic;
SIGNAL \uut|Equal0~8_combout\ : std_logic;
SIGNAL \uut|Equal0~9_combout\ : std_logic;
SIGNAL \uut|Selector0~0_combout\ : std_logic;
SIGNAL \uut|Selector2~0_combout\ : std_logic;
SIGNAL \uut|reg.state.OUTPUT~q\ : std_logic;
SIGNAL \uut|Selector0~1_combout\ : std_logic;
SIGNAL \uut|reg.state.IDLE~q\ : std_logic;
SIGNAL \uut|reg~4_combout\ : std_logic;
SIGNAL \uut|reg.state.CALCULATE~q\ : std_logic;
SIGNAL \uut|reg.VA_prev[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector57~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector57~1_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|reg~12_combout\ : std_logic;
SIGNAL \uut|Selector110~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector109~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector108~0_combout\ : std_logic;
SIGNAL \i_CLK_sin~input_o\ : std_logic;
SIGNAL \i_CLK_sin~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_addr[2]~input_o\ : std_logic;
SIGNAL \i_addr[4]~input_o\ : std_logic;
SIGNAL \i_addr[3]~input_o\ : std_logic;
SIGNAL \i_addr[5]~input_o\ : std_logic;
SIGNAL \data|Mux8~8_combout\ : std_logic;
SIGNAL \i_addr[1]~input_o\ : std_logic;
SIGNAL \i_addr[0]~input_o\ : std_logic;
SIGNAL \data|Mux8~9_combout\ : std_logic;
SIGNAL \i_addr[6]~input_o\ : std_logic;
SIGNAL \i_addr[7]~input_o\ : std_logic;
SIGNAL \data|Mux8~1_combout\ : std_logic;
SIGNAL \data|Mux8~2_combout\ : std_logic;
SIGNAL \data|Mux8~5_combout\ : std_logic;
SIGNAL \data|Mux8~3_combout\ : std_logic;
SIGNAL \data|Mux8~4_combout\ : std_logic;
SIGNAL \data|Mux8~7_combout\ : std_logic;
SIGNAL \data|Mux8~10_combout\ : std_logic;
SIGNAL \data|Mux8~0_combout\ : std_logic;
SIGNAL \data|Mux8~6_combout\ : std_logic;
SIGNAL \data|Mux8~11_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector107~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector106~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector105~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[18]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector93~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[19]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector92~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector91~0_combout\ : std_logic;
SIGNAL \data|Mux3~3_combout\ : std_logic;
SIGNAL \data|Mux3~7_combout\ : std_logic;
SIGNAL \data|Mux3~9_combout\ : std_logic;
SIGNAL \data|Mux3~5_combout\ : std_logic;
SIGNAL \data|Mux3~10_combout\ : std_logic;
SIGNAL \data|Mux3~1_combout\ : std_logic;
SIGNAL \data|Mux3~0_combout\ : std_logic;
SIGNAL \data|Mux3~2_combout\ : std_logic;
SIGNAL \data|Mux3~4_combout\ : std_logic;
SIGNAL \data|Mux0~0_combout\ : std_logic;
SIGNAL \data|Mux0~1_combout\ : std_logic;
SIGNAL \data|Mux3~6_combout\ : std_logic;
SIGNAL \data|Mux3~8_combout\ : std_logic;
SIGNAL \data|Mux0~2_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[21]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector90~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[22]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector89~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector87~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector86~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector85~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \uut|reg.VA_prev[8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector103~0_combout\ : std_logic;
SIGNAL \data|Mux3~11_combout\ : std_logic;
SIGNAL \data|Mux3~12_combout\ : std_logic;
SIGNAL \data|Mux3~13_combout\ : std_logic;
SIGNAL \data|Mux3~14_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \uut|reg.VA_prev[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector102~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector101~0_combout\ : std_logic;
SIGNAL \data|Mux1~2_combout\ : std_logic;
SIGNAL \data|Mux1~1_combout\ : std_logic;
SIGNAL \data|Mux1~0_combout\ : std_logic;
SIGNAL \data|Mux1~5_combout\ : std_logic;
SIGNAL \data|Mux1~4_combout\ : std_logic;
SIGNAL \data|Mux1~3_combout\ : std_logic;
SIGNAL \data|Mux1~7_combout\ : std_logic;
SIGNAL \data|Mux1~8_combout\ : std_logic;
SIGNAL \data|Mux1~6_combout\ : std_logic;
SIGNAL \data|Mux1~9_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector100~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \uut|reg.VA_prev[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|reg.VA_prev[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector98~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \uut|reg.VA_prev[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \uut|reg.VA_prev[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector94~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \data|Mux2~1_combout\ : std_logic;
SIGNAL \data|Mux2~2_combout\ : std_logic;
SIGNAL \data|Mux2~0_combout\ : std_logic;
SIGNAL \data|Mux2~4_combout\ : std_logic;
SIGNAL \data|Mux2~3_combout\ : std_logic;
SIGNAL \data|Mux2~5_combout\ : std_logic;
SIGNAL \data|Mux2~6_combout\ : std_logic;
SIGNAL \data|Mux2~8_combout\ : std_logic;
SIGNAL \data|Mux2~7_combout\ : std_logic;
SIGNAL \data|Mux2~10_combout\ : std_logic;
SIGNAL \data|Mux2~9_combout\ : std_logic;
SIGNAL \data|Mux2~11_combout\ : std_logic;
SIGNAL \data|Mux10~2_combout\ : std_logic;
SIGNAL \data|Mux10~1_combout\ : std_logic;
SIGNAL \data|Mux10~0_combout\ : std_logic;
SIGNAL \data|Mux10~4_combout\ : std_logic;
SIGNAL \data|Mux10~7_combout\ : std_logic;
SIGNAL \data|Mux10~3_combout\ : std_logic;
SIGNAL \data|Mux4~1_combout\ : std_logic;
SIGNAL \data|Mux4~0_combout\ : std_logic;
SIGNAL \data|Mux4~2_combout\ : std_logic;
SIGNAL \data|Mux4~4_combout\ : std_logic;
SIGNAL \data|Mux4~3_combout\ : std_logic;
SIGNAL \data|Mux4~5_combout\ : std_logic;
SIGNAL \data|Mux5~0_combout\ : std_logic;
SIGNAL \data|Mux5~2_combout\ : std_logic;
SIGNAL \data|Mux5~1_combout\ : std_logic;
SIGNAL \data|Mux5~3_combout\ : std_logic;
SIGNAL \data|Mux5~4_combout\ : std_logic;
SIGNAL \data|Mux5~5_combout\ : std_logic;
SIGNAL \data|Mux5~7_combout\ : std_logic;
SIGNAL \data|Mux5~8_combout\ : std_logic;
SIGNAL \data|Mux5~6_combout\ : std_logic;
SIGNAL \data|Mux5~10_combout\ : std_logic;
SIGNAL \data|Mux5~9_combout\ : std_logic;
SIGNAL \data|Mux5~11_combout\ : std_logic;
SIGNAL \data|Mux6~0_combout\ : std_logic;
SIGNAL \data|Mux6~1_combout\ : std_logic;
SIGNAL \data|Mux6~2_combout\ : std_logic;
SIGNAL \data|Mux6~3_combout\ : std_logic;
SIGNAL \data|Mux6~5_combout\ : std_logic;
SIGNAL \data|Mux6~4_combout\ : std_logic;
SIGNAL \data|Mux6~7_combout\ : std_logic;
SIGNAL \data|Mux6~6_combout\ : std_logic;
SIGNAL \data|Mux6~8_combout\ : std_logic;
SIGNAL \data|Mux7~3_combout\ : std_logic;
SIGNAL \data|Mux7~1_combout\ : std_logic;
SIGNAL \data|Mux7~0_combout\ : std_logic;
SIGNAL \data|Mux7~2_combout\ : std_logic;
SIGNAL \data|Mux7~4_combout\ : std_logic;
SIGNAL \data|Mux9~1_combout\ : std_logic;
SIGNAL \data|Mux9~0_combout\ : std_logic;
SIGNAL \data|Mux9~3_combout\ : std_logic;
SIGNAL \data|Mux9~2_combout\ : std_logic;
SIGNAL \data|Mux9~4_combout\ : std_logic;
SIGNAL \data|Mux9~5_combout\ : std_logic;
SIGNAL \data|Mux9~6_combout\ : std_logic;
SIGNAL \data|Mux9~7_combout\ : std_logic;
SIGNAL \data|o_data[2]~feeder_combout\ : std_logic;
SIGNAL \data|Mux10~6_combout\ : std_logic;
SIGNAL \data|Mux10~5_combout\ : std_logic;
SIGNAL \data|Mux10~8_combout\ : std_logic;
SIGNAL \data|Mux10~9_combout\ : std_logic;
SIGNAL \data|Mux10~10_combout\ : std_logic;
SIGNAL \data|o_data[1]~feeder_combout\ : std_logic;
SIGNAL \data|Mux11~0_combout\ : std_logic;
SIGNAL \data|Mux11~1_combout\ : std_logic;
SIGNAL \data|Mux11~3_combout\ : std_logic;
SIGNAL \data|Mux11~4_combout\ : std_logic;
SIGNAL \data|Mux11~2_combout\ : std_logic;
SIGNAL \data|Mux11~5_combout\ : std_logic;
SIGNAL \data|Mux11~6_combout\ : std_logic;
SIGNAL \uut|Add0~1\ : std_logic;
SIGNAL \uut|Add0~3\ : std_logic;
SIGNAL \uut|Add0~5\ : std_logic;
SIGNAL \uut|Add0~7\ : std_logic;
SIGNAL \uut|Add0~9\ : std_logic;
SIGNAL \uut|Add0~11\ : std_logic;
SIGNAL \uut|Add0~13\ : std_logic;
SIGNAL \uut|Add0~15\ : std_logic;
SIGNAL \uut|Add0~17\ : std_logic;
SIGNAL \uut|Add0~19\ : std_logic;
SIGNAL \uut|Add0~21\ : std_logic;
SIGNAL \uut|Add0~23\ : std_logic;
SIGNAL \uut|Add0~25\ : std_logic;
SIGNAL \uut|Add0~27\ : std_logic;
SIGNAL \uut|Add0~29\ : std_logic;
SIGNAL \uut|Add0~31\ : std_logic;
SIGNAL \uut|Add0~33\ : std_logic;
SIGNAL \uut|Add0~34_combout\ : std_logic;
SIGNAL \uut|Selector95~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector96~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector97~0_combout\ : std_logic;
SIGNAL \uut|Selector99~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector104~0_combout\ : std_logic;
SIGNAL \uut|Selector111~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[0]~28\ : std_logic;
SIGNAL \uut|reg.VA[1]~30\ : std_logic;
SIGNAL \uut|reg.VA[2]~32\ : std_logic;
SIGNAL \uut|reg.VA[3]~34\ : std_logic;
SIGNAL \uut|reg.VA[4]~36\ : std_logic;
SIGNAL \uut|reg.VA[5]~38\ : std_logic;
SIGNAL \uut|reg.VA[6]~40\ : std_logic;
SIGNAL \uut|reg.VA[7]~42\ : std_logic;
SIGNAL \uut|reg.VA[8]~44\ : std_logic;
SIGNAL \uut|reg.VA[9]~46\ : std_logic;
SIGNAL \uut|reg.VA[10]~48\ : std_logic;
SIGNAL \uut|reg.VA[11]~50\ : std_logic;
SIGNAL \uut|reg.VA[12]~52\ : std_logic;
SIGNAL \uut|reg.VA[13]~54\ : std_logic;
SIGNAL \uut|reg.VA[14]~56\ : std_logic;
SIGNAL \uut|reg.VA[15]~58\ : std_logic;
SIGNAL \uut|reg.VA[16]~60\ : std_logic;
SIGNAL \uut|reg.VA[17]~61_combout\ : std_logic;
SIGNAL \uut|reg.VA[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector40~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \uut|Add0~32_combout\ : std_logic;
SIGNAL \uut|reg.VA[16]~59_combout\ : std_logic;
SIGNAL \uut|reg.VA[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector41~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \uut|Add0~30_combout\ : std_logic;
SIGNAL \uut|reg.VA[15]~57_combout\ : std_logic;
SIGNAL \uut|reg.VA[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector42~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \uut|Add0~28_combout\ : std_logic;
SIGNAL \uut|reg.VA[14]~55_combout\ : std_logic;
SIGNAL \uut|reg.VA[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector43~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \uut|Add0~26_combout\ : std_logic;
SIGNAL \uut|reg.VA[13]~53_combout\ : std_logic;
SIGNAL \uut|reg.VA[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector44~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \uut|Add0~24_combout\ : std_logic;
SIGNAL \uut|reg.VA[12]~51_combout\ : std_logic;
SIGNAL \uut|reg.VA[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector45~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \uut|Add0~22_combout\ : std_logic;
SIGNAL \uut|reg.VA[11]~49_combout\ : std_logic;
SIGNAL \uut|reg.VA[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector46~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \uut|Add0~20_combout\ : std_logic;
SIGNAL \uut|reg.VA[10]~47_combout\ : std_logic;
SIGNAL \uut|reg.VA[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector47~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \uut|Add0~18_combout\ : std_logic;
SIGNAL \uut|reg.VA[9]~45_combout\ : std_logic;
SIGNAL \uut|reg.VA[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector48~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \uut|Add0~16_combout\ : std_logic;
SIGNAL \uut|reg.VA[8]~43_combout\ : std_logic;
SIGNAL \uut|reg.VA[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector49~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \uut|Add0~14_combout\ : std_logic;
SIGNAL \uut|reg.VA[7]~41_combout\ : std_logic;
SIGNAL \uut|reg.VA[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector50~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~43\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \uut|Add0~35\ : std_logic;
SIGNAL \uut|Add0~37\ : std_logic;
SIGNAL \uut|Add0~39\ : std_logic;
SIGNAL \uut|Add0~41\ : std_logic;
SIGNAL \uut|Add0~43\ : std_logic;
SIGNAL \uut|Add0~45\ : std_logic;
SIGNAL \uut|Add0~47\ : std_logic;
SIGNAL \uut|Add0~49\ : std_logic;
SIGNAL \uut|Add0~51\ : std_logic;
SIGNAL \uut|Add0~52_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector88~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[17]~62\ : std_logic;
SIGNAL \uut|reg.VA[18]~64\ : std_logic;
SIGNAL \uut|reg.VA[19]~66\ : std_logic;
SIGNAL \uut|reg.VA[20]~68\ : std_logic;
SIGNAL \uut|reg.VA[21]~70\ : std_logic;
SIGNAL \uut|reg.VA[22]~72\ : std_logic;
SIGNAL \uut|reg.VA[23]~74\ : std_logic;
SIGNAL \uut|reg.VA[24]~76\ : std_logic;
SIGNAL \uut|reg.VA[25]~78\ : std_logic;
SIGNAL \uut|reg.VA[26]~79_combout\ : std_logic;
SIGNAL \uut|reg.VA[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector31~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \uut|Add0~50_combout\ : std_logic;
SIGNAL \uut|reg.VA[25]~77_combout\ : std_logic;
SIGNAL \uut|reg.VA[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector32~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \uut|Add0~48_combout\ : std_logic;
SIGNAL \uut|reg.VA[24]~75_combout\ : std_logic;
SIGNAL \uut|reg.VA[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector33~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \uut|Add0~46_combout\ : std_logic;
SIGNAL \uut|reg.VA[23]~73_combout\ : std_logic;
SIGNAL \uut|reg.VA[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector34~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \uut|Add0~44_combout\ : std_logic;
SIGNAL \uut|reg.VA[22]~71_combout\ : std_logic;
SIGNAL \uut|reg.VA[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector35~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \uut|Add0~42_combout\ : std_logic;
SIGNAL \uut|reg.VA[21]~69_combout\ : std_logic;
SIGNAL \uut|reg.VA[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector36~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \uut|Add0~40_combout\ : std_logic;
SIGNAL \uut|reg.VA[20]~67_combout\ : std_logic;
SIGNAL \uut|reg.VA[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector37~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \uut|Add0~38_combout\ : std_logic;
SIGNAL \uut|reg.VA[19]~65_combout\ : std_logic;
SIGNAL \uut|reg.VA[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector38~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \uut|Add0~36_combout\ : std_logic;
SIGNAL \uut|reg.VA[18]~63_combout\ : std_logic;
SIGNAL \uut|reg.VA[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector39~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \uut|Add0~12_combout\ : std_logic;
SIGNAL \uut|reg.VA[6]~39_combout\ : std_logic;
SIGNAL \uut|reg.VA[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector51~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \uut|Add0~10_combout\ : std_logic;
SIGNAL \uut|reg.VA[5]~37_combout\ : std_logic;
SIGNAL \uut|reg.VA[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector52~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \uut|Add0~8_combout\ : std_logic;
SIGNAL \uut|reg.VA[4]~35_combout\ : std_logic;
SIGNAL \uut|reg.VA[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector53~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \uut|Add0~6_combout\ : std_logic;
SIGNAL \uut|reg.VA[3]~33_combout\ : std_logic;
SIGNAL \uut|reg.VA[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector54~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \uut|Add0~4_combout\ : std_logic;
SIGNAL \uut|reg.VA[2]~31_combout\ : std_logic;
SIGNAL \uut|reg.VA[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector55~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \uut|Add0~2_combout\ : std_logic;
SIGNAL \uut|reg.VA[1]~29_combout\ : std_logic;
SIGNAL \uut|reg.VA[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector56~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \uut|Add0~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[0]~27_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Add2~0_combout\ : std_logic;
SIGNAL \uut|reg.result[0][0]~27_combout\ : std_logic;
SIGNAL \uut|reg.result[0][0]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \uut|r_Real[0]~27_combout\ : std_logic;
SIGNAL \uut|Add2~1\ : std_logic;
SIGNAL \uut|Add2~2_combout\ : std_logic;
SIGNAL \uut|reg.result[0][0]~28\ : std_logic;
SIGNAL \uut|reg.result[0][1]~29_combout\ : std_logic;
SIGNAL \uut|reg.result[0][1]~q\ : std_logic;
SIGNAL \uut|r_Real[0]~28\ : std_logic;
SIGNAL \uut|r_Real[1]~29_combout\ : std_logic;
SIGNAL \uut|Add2~3\ : std_logic;
SIGNAL \uut|Add2~4_combout\ : std_logic;
SIGNAL \uut|reg.result[0][1]~30\ : std_logic;
SIGNAL \uut|reg.result[0][2]~31_combout\ : std_logic;
SIGNAL \uut|reg.result[0][2]~q\ : std_logic;
SIGNAL \uut|r_Real[1]~30\ : std_logic;
SIGNAL \uut|r_Real[2]~31_combout\ : std_logic;
SIGNAL \uut|Add2~5\ : std_logic;
SIGNAL \uut|Add2~6_combout\ : std_logic;
SIGNAL \uut|reg.result[0][2]~32\ : std_logic;
SIGNAL \uut|reg.result[0][3]~33_combout\ : std_logic;
SIGNAL \uut|reg.result[0][3]~q\ : std_logic;
SIGNAL \uut|r_Real[2]~32\ : std_logic;
SIGNAL \uut|r_Real[3]~33_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \uut|Add2~7\ : std_logic;
SIGNAL \uut|Add2~8_combout\ : std_logic;
SIGNAL \uut|reg.result[0][3]~34\ : std_logic;
SIGNAL \uut|reg.result[0][4]~35_combout\ : std_logic;
SIGNAL \uut|reg.result[0][4]~q\ : std_logic;
SIGNAL \uut|r_Real[3]~34\ : std_logic;
SIGNAL \uut|r_Real[4]~35_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \uut|Add2~9\ : std_logic;
SIGNAL \uut|Add2~10_combout\ : std_logic;
SIGNAL \uut|reg.result[0][4]~36\ : std_logic;
SIGNAL \uut|reg.result[0][5]~37_combout\ : std_logic;
SIGNAL \uut|reg.result[0][5]~q\ : std_logic;
SIGNAL \uut|r_Real[4]~36\ : std_logic;
SIGNAL \uut|r_Real[5]~37_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \uut|Add2~11\ : std_logic;
SIGNAL \uut|Add2~12_combout\ : std_logic;
SIGNAL \uut|reg.result[0][5]~38\ : std_logic;
SIGNAL \uut|reg.result[0][6]~39_combout\ : std_logic;
SIGNAL \uut|reg.result[0][6]~q\ : std_logic;
SIGNAL \uut|r_Real[5]~38\ : std_logic;
SIGNAL \uut|r_Real[6]~39_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \uut|Add2~13\ : std_logic;
SIGNAL \uut|Add2~14_combout\ : std_logic;
SIGNAL \uut|reg.result[0][6]~40\ : std_logic;
SIGNAL \uut|reg.result[0][7]~41_combout\ : std_logic;
SIGNAL \uut|reg.result[0][7]~q\ : std_logic;
SIGNAL \uut|r_Real[6]~40\ : std_logic;
SIGNAL \uut|r_Real[7]~41_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \uut|Add2~15\ : std_logic;
SIGNAL \uut|Add2~16_combout\ : std_logic;
SIGNAL \uut|reg.result[0][7]~42\ : std_logic;
SIGNAL \uut|reg.result[0][8]~43_combout\ : std_logic;
SIGNAL \uut|reg.result[0][8]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \uut|r_Real[7]~42\ : std_logic;
SIGNAL \uut|r_Real[8]~43_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \uut|Add2~17\ : std_logic;
SIGNAL \uut|Add2~18_combout\ : std_logic;
SIGNAL \uut|reg.result[0][8]~44\ : std_logic;
SIGNAL \uut|reg.result[0][9]~45_combout\ : std_logic;
SIGNAL \uut|reg.result[0][9]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \uut|r_Real[8]~44\ : std_logic;
SIGNAL \uut|r_Real[9]~45_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \uut|Add2~19\ : std_logic;
SIGNAL \uut|Add2~20_combout\ : std_logic;
SIGNAL \uut|reg.result[0][9]~46\ : std_logic;
SIGNAL \uut|reg.result[0][10]~47_combout\ : std_logic;
SIGNAL \uut|reg.result[0][10]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \uut|r_Real[9]~46\ : std_logic;
SIGNAL \uut|r_Real[10]~47_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \uut|Add2~21\ : std_logic;
SIGNAL \uut|Add2~22_combout\ : std_logic;
SIGNAL \uut|reg.result[0][10]~48\ : std_logic;
SIGNAL \uut|reg.result[0][11]~49_combout\ : std_logic;
SIGNAL \uut|reg.result[0][11]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~13\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \uut|r_Real[10]~48\ : std_logic;
SIGNAL \uut|r_Real[11]~49_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~15\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \uut|Add2~23\ : std_logic;
SIGNAL \uut|Add2~24_combout\ : std_logic;
SIGNAL \uut|reg.result[0][11]~50\ : std_logic;
SIGNAL \uut|reg.result[0][12]~51_combout\ : std_logic;
SIGNAL \uut|reg.result[0][12]~q\ : std_logic;
SIGNAL \uut|r_Real[11]~50\ : std_logic;
SIGNAL \uut|r_Real[12]~51_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~17\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \uut|Add2~25\ : std_logic;
SIGNAL \uut|Add2~26_combout\ : std_logic;
SIGNAL \uut|reg.result[0][12]~52\ : std_logic;
SIGNAL \uut|reg.result[0][13]~53_combout\ : std_logic;
SIGNAL \uut|reg.result[0][13]~q\ : std_logic;
SIGNAL \uut|r_Real[12]~52\ : std_logic;
SIGNAL \uut|r_Real[13]~53_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \uut|Add2~27\ : std_logic;
SIGNAL \uut|Add2~28_combout\ : std_logic;
SIGNAL \uut|reg.result[0][13]~54\ : std_logic;
SIGNAL \uut|reg.result[0][14]~55_combout\ : std_logic;
SIGNAL \uut|reg.result[0][14]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~19\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \uut|r_Real[13]~54\ : std_logic;
SIGNAL \uut|r_Real[14]~55_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~21\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \uut|Add2~29\ : std_logic;
SIGNAL \uut|Add2~30_combout\ : std_logic;
SIGNAL \uut|reg.result[0][14]~56\ : std_logic;
SIGNAL \uut|reg.result[0][15]~57_combout\ : std_logic;
SIGNAL \uut|reg.result[0][15]~q\ : std_logic;
SIGNAL \uut|r_Real[14]~56\ : std_logic;
SIGNAL \uut|r_Real[15]~57_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~23\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \uut|Add2~31\ : std_logic;
SIGNAL \uut|Add2~32_combout\ : std_logic;
SIGNAL \uut|reg.result[0][15]~58\ : std_logic;
SIGNAL \uut|reg.result[0][16]~59_combout\ : std_logic;
SIGNAL \uut|reg.result[0][16]~q\ : std_logic;
SIGNAL \uut|r_Real[15]~58\ : std_logic;
SIGNAL \uut|r_Real[16]~59_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \uut|Add2~33\ : std_logic;
SIGNAL \uut|Add2~34_combout\ : std_logic;
SIGNAL \uut|reg.result[0][16]~60\ : std_logic;
SIGNAL \uut|reg.result[0][17]~61_combout\ : std_logic;
SIGNAL \uut|reg.result[0][17]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~25\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \uut|r_Real[16]~60\ : std_logic;
SIGNAL \uut|r_Real[17]~61_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~27\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \uut|Add2~35\ : std_logic;
SIGNAL \uut|Add2~36_combout\ : std_logic;
SIGNAL \uut|reg.result[0][17]~62\ : std_logic;
SIGNAL \uut|reg.result[0][18]~63_combout\ : std_logic;
SIGNAL \uut|reg.result[0][18]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~27\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \uut|r_Real[17]~62\ : std_logic;
SIGNAL \uut|r_Real[18]~63_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~29\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~29\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \uut|Add2~37\ : std_logic;
SIGNAL \uut|Add2~38_combout\ : std_logic;
SIGNAL \uut|reg.result[0][18]~64\ : std_logic;
SIGNAL \uut|reg.result[0][19]~65_combout\ : std_logic;
SIGNAL \uut|reg.result[0][19]~q\ : std_logic;
SIGNAL \uut|r_Real[18]~64\ : std_logic;
SIGNAL \uut|r_Real[19]~65_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~31\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~31\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \uut|Add2~39\ : std_logic;
SIGNAL \uut|Add2~40_combout\ : std_logic;
SIGNAL \uut|reg.result[0][19]~66\ : std_logic;
SIGNAL \uut|reg.result[0][20]~67_combout\ : std_logic;
SIGNAL \uut|reg.result[0][20]~q\ : std_logic;
SIGNAL \uut|r_Real[19]~66\ : std_logic;
SIGNAL \uut|r_Real[20]~67_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~33\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~33\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \uut|Add2~41\ : std_logic;
SIGNAL \uut|Add2~42_combout\ : std_logic;
SIGNAL \uut|reg.result[0][20]~68\ : std_logic;
SIGNAL \uut|reg.result[0][21]~69_combout\ : std_logic;
SIGNAL \uut|reg.result[0][21]~q\ : std_logic;
SIGNAL \uut|r_Real[20]~68\ : std_logic;
SIGNAL \uut|r_Real[21]~69_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~35\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~35\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \uut|Add2~43\ : std_logic;
SIGNAL \uut|Add2~44_combout\ : std_logic;
SIGNAL \uut|reg.result[0][21]~70\ : std_logic;
SIGNAL \uut|reg.result[0][22]~71_combout\ : std_logic;
SIGNAL \uut|reg.result[0][22]~q\ : std_logic;
SIGNAL \uut|r_Real[21]~70\ : std_logic;
SIGNAL \uut|r_Real[22]~71_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~37\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~37\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \uut|Add2~45\ : std_logic;
SIGNAL \uut|Add2~46_combout\ : std_logic;
SIGNAL \uut|reg.result[0][22]~72\ : std_logic;
SIGNAL \uut|reg.result[0][23]~73_combout\ : std_logic;
SIGNAL \uut|reg.result[0][23]~q\ : std_logic;
SIGNAL \uut|r_Real[22]~72\ : std_logic;
SIGNAL \uut|r_Real[23]~73_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~39\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \uut|Add2~47\ : std_logic;
SIGNAL \uut|Add2~48_combout\ : std_logic;
SIGNAL \uut|reg.result[0][23]~74\ : std_logic;
SIGNAL \uut|reg.result[0][24]~75_combout\ : std_logic;
SIGNAL \uut|reg.result[0][24]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~39\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \uut|r_Real[23]~74\ : std_logic;
SIGNAL \uut|r_Real[24]~75_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~41\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \uut|Add2~49\ : std_logic;
SIGNAL \uut|Add2~50_combout\ : std_logic;
SIGNAL \uut|reg.result[0][24]~76\ : std_logic;
SIGNAL \uut|reg.result[0][25]~77_combout\ : std_logic;
SIGNAL \uut|reg.result[0][25]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~13\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~41\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \uut|r_Real[24]~76\ : std_logic;
SIGNAL \uut|r_Real[25]~77_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~13\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~43\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \uut|Add2~51\ : std_logic;
SIGNAL \uut|Add2~52_combout\ : std_logic;
SIGNAL \uut|reg.result[0][25]~78\ : std_logic;
SIGNAL \uut|reg.result[0][26]~79_combout\ : std_logic;
SIGNAL \uut|reg.result[0][26]~q\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~15\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~43\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \uut|r_Real[25]~78\ : std_logic;
SIGNAL \uut|r_Real[26]~79_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \uut|r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \uut|r_Imag[4]~23_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|r_Imag[4]~24\ : std_logic;
SIGNAL \uut|r_Imag[5]~25_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|r_Imag[5]~26\ : std_logic;
SIGNAL \uut|r_Imag[6]~27_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|r_Imag[6]~28\ : std_logic;
SIGNAL \uut|r_Imag[7]~29_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|r_Imag[7]~30\ : std_logic;
SIGNAL \uut|r_Imag[8]~31_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|r_Imag[8]~32\ : std_logic;
SIGNAL \uut|r_Imag[9]~33_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|r_Imag[9]~34\ : std_logic;
SIGNAL \uut|r_Imag[10]~35_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|r_Imag[10]~36\ : std_logic;
SIGNAL \uut|r_Imag[11]~37_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|r_Imag[11]~38\ : std_logic;
SIGNAL \uut|r_Imag[12]~39_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|r_Imag[12]~40\ : std_logic;
SIGNAL \uut|r_Imag[13]~41_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \uut|r_Imag[13]~42\ : std_logic;
SIGNAL \uut|r_Imag[14]~43_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \uut|r_Imag[14]~44\ : std_logic;
SIGNAL \uut|r_Imag[15]~45_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \uut|r_Imag[15]~46\ : std_logic;
SIGNAL \uut|r_Imag[16]~47_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \uut|r_Imag[16]~48\ : std_logic;
SIGNAL \uut|r_Imag[17]~49_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \uut|r_Imag[17]~50\ : std_logic;
SIGNAL \uut|r_Imag[18]~51_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \uut|r_Imag[18]~52\ : std_logic;
SIGNAL \uut|r_Imag[19]~53_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \uut|r_Imag[19]~54\ : std_logic;
SIGNAL \uut|r_Imag[20]~55_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \uut|r_Imag[20]~56\ : std_logic;
SIGNAL \uut|r_Imag[21]~57_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \uut|r_Imag[21]~58\ : std_logic;
SIGNAL \uut|r_Imag[22]~59_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \uut|r_Imag[22]~60\ : std_logic;
SIGNAL \uut|r_Imag[23]~61_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \uut|r_Imag[23]~62\ : std_logic;
SIGNAL \uut|r_Imag[24]~63_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \uut|r_Imag[24]~64\ : std_logic;
SIGNAL \uut|r_Imag[25]~65_combout\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \uut|Mult3|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \uut|r_Imag[25]~66\ : std_logic;
SIGNAL \uut|r_Imag[26]~67_combout\ : std_logic;
SIGNAL \uut|Selector3~0_combout\ : std_logic;
SIGNAL \uut|reg.done~q\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|w257w\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|w251w\ : std_logic_vector(42 DOWNTO 0);
SIGNAL \uut|Mult3|auto_generated|w245w\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|w257w\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \uut|reg.sample_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \uut|reg.VA_prev2\ : std_logic_vector(53 DOWNTO 0);
SIGNAL \uut|r_Real\ : std_logic_vector(53 DOWNTO 0);
SIGNAL \uut|r_Imag\ : std_logic_vector(53 DOWNTO 0);
SIGNAL \data|o_data\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_NEW_VALUE <= i_NEW_VALUE;
ww_i_addr <= i_addr;
ww_i_CLK_sin <= i_CLK_sin;
o_Real <= ww_o_Real;
o_Imag <= ww_o_Imag;
o_NEW_RESULT <= ww_o_NEW_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uut|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult2|auto_generated|mac_mult1~DATAOUT32\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT31\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT30\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT29\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT28\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT25\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT24\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT19\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT10\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT9\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT4\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult2|auto_generated|mac_mult1~dataout\ & \uut|Mult2|auto_generated|mac_mult1~2\ & 
\uut|Mult2|auto_generated|mac_mult1~1\ & \uut|Mult2|auto_generated|mac_mult1~0\);

\uut|Mult2|auto_generated|mac_out2~0\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_out2~1\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_out2~2\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|w251w\(0) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|w251w\(1) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|w251w\(2) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|w251w\(3) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|w251w\(4) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|w251w\(5) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|w251w\(6) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|w251w\(7) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|w251w\(8) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|w251w\(9) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|w251w\(10) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|w251w\(11) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|w251w\(12) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|w251w\(13) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|w251w\(14) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|w251w\(15) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|w251w\(16) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|w251w\(17) <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_out2~DATAOUT30\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_out2~DATAOUT31\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_out2~DATAOUT32\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult2|auto_generated|mac_out4_DATAA_bus\ <= (\uut|Mult2|auto_generated|mac_mult3~DATAOUT23\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT22\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT21\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT20\ & 
\uut|Mult2|auto_generated|mac_mult3~DATAOUT19\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT18\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT17\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT16\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT15\ & 
\uut|Mult2|auto_generated|mac_mult3~DATAOUT14\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT13\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT12\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT11\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT10\ & 
\uut|Mult2|auto_generated|mac_mult3~DATAOUT9\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT8\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT7\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT6\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT5\ & 
\uut|Mult2|auto_generated|mac_mult3~DATAOUT4\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT3\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT2\ & \uut|Mult2|auto_generated|mac_mult3~DATAOUT1\ & \uut|Mult2|auto_generated|mac_mult3~dataout\ & 
\uut|Mult2|auto_generated|mac_mult3~11\ & \uut|Mult2|auto_generated|mac_mult3~10\ & \uut|Mult2|auto_generated|mac_mult3~9\ & \uut|Mult2|auto_generated|mac_mult3~8\ & \uut|Mult2|auto_generated|mac_mult3~7\ & \uut|Mult2|auto_generated|mac_mult3~6\ & 
\uut|Mult2|auto_generated|mac_mult3~5\ & \uut|Mult2|auto_generated|mac_mult3~4\ & \uut|Mult2|auto_generated|mac_mult3~3\ & \uut|Mult2|auto_generated|mac_mult3~2\ & \uut|Mult2|auto_generated|mac_mult3~1\ & \uut|Mult2|auto_generated|mac_mult3~0\);

\uut|Mult2|auto_generated|mac_out4~0\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_out4~1\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_out4~2\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|mac_out4~3\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|mac_out4~4\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|mac_out4~5\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|mac_out4~6\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|mac_out4~7\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|mac_out4~8\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|mac_out4~9\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|mac_out4~10\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|mac_out4~11\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|mac_out4~dataout\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|mac_out4~DATAOUT1\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|mac_out4~DATAOUT2\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|mac_out4~DATAOUT4\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|mac_out4~DATAOUT5\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|mac_out4~DATAOUT6\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|mac_out4~DATAOUT8\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_out4~DATAOUT10\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_out4~DATAOUT11\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_out4~DATAOUT12\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_out4~DATAOUT14\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_out4~DATAOUT15\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_out4~DATAOUT16\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_out4~DATAOUT17\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_out4~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_out4~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_out4~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_out4~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_out4~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_out4~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\(35);

\uut|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult3|auto_generated|mac_mult1~DATAOUT31\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT30\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT29\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT28\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT25\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT24\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT23\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT20\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT18\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT13\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT9\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT8\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT5\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT4\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT3\ & 
\uut|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult3|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult3|auto_generated|mac_mult1~dataout\ & \uut|Mult3|auto_generated|mac_mult1~3\ & \uut|Mult3|auto_generated|mac_mult1~2\ & 
\uut|Mult3|auto_generated|mac_mult1~1\ & \uut|Mult3|auto_generated|mac_mult1~0\);

\uut|Mult3|auto_generated|mac_out2~0\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult3|auto_generated|mac_out2~1\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult3|auto_generated|mac_out2~2\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult3|auto_generated|mac_out2~3\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult3|auto_generated|w245w\(0) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult3|auto_generated|w245w\(1) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult3|auto_generated|w245w\(2) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult3|auto_generated|w245w\(3) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult3|auto_generated|w245w\(4) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult3|auto_generated|w245w\(5) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult3|auto_generated|w245w\(6) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult3|auto_generated|w245w\(7) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult3|auto_generated|w245w\(8) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult3|auto_generated|w245w\(9) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult3|auto_generated|w245w\(10) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult3|auto_generated|w245w\(11) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult3|auto_generated|w245w\(12) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult3|auto_generated|w245w\(13) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult3|auto_generated|w245w\(14) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult3|auto_generated|w245w\(15) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult3|auto_generated|w245w\(16) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult3|auto_generated|w245w\(17) <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult3|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult3|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult3|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult3|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult3|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult3|auto_generated|mac_out2~DATAOUT29\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult3|auto_generated|mac_out2~DATAOUT30\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult3|auto_generated|mac_out2~DATAOUT31\ <= \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult3|auto_generated|mac_out4_DATAA_bus\ <= (\uut|Mult3|auto_generated|mac_mult3~DATAOUT22\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT21\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT20\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT19\ & 
\uut|Mult3|auto_generated|mac_mult3~DATAOUT18\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT17\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT16\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT15\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT14\ & 
\uut|Mult3|auto_generated|mac_mult3~DATAOUT13\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT12\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT11\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT10\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT9\ & 
\uut|Mult3|auto_generated|mac_mult3~DATAOUT8\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT7\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT6\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT5\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT4\ & 
\uut|Mult3|auto_generated|mac_mult3~DATAOUT3\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT2\ & \uut|Mult3|auto_generated|mac_mult3~DATAOUT1\ & \uut|Mult3|auto_generated|mac_mult3~dataout\ & \uut|Mult3|auto_generated|mac_mult3~12\ & 
\uut|Mult3|auto_generated|mac_mult3~11\ & \uut|Mult3|auto_generated|mac_mult3~10\ & \uut|Mult3|auto_generated|mac_mult3~9\ & \uut|Mult3|auto_generated|mac_mult3~8\ & \uut|Mult3|auto_generated|mac_mult3~7\ & \uut|Mult3|auto_generated|mac_mult3~6\ & 
\uut|Mult3|auto_generated|mac_mult3~5\ & \uut|Mult3|auto_generated|mac_mult3~4\ & \uut|Mult3|auto_generated|mac_mult3~3\ & \uut|Mult3|auto_generated|mac_mult3~2\ & \uut|Mult3|auto_generated|mac_mult3~1\ & \uut|Mult3|auto_generated|mac_mult3~0\);

\uut|Mult3|auto_generated|mac_out4~0\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(0);
\uut|Mult3|auto_generated|mac_out4~1\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(1);
\uut|Mult3|auto_generated|mac_out4~2\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(2);
\uut|Mult3|auto_generated|mac_out4~3\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(3);
\uut|Mult3|auto_generated|mac_out4~4\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(4);
\uut|Mult3|auto_generated|mac_out4~5\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(5);
\uut|Mult3|auto_generated|mac_out4~6\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(6);
\uut|Mult3|auto_generated|mac_out4~7\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(7);
\uut|Mult3|auto_generated|mac_out4~8\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(8);
\uut|Mult3|auto_generated|mac_out4~9\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(9);
\uut|Mult3|auto_generated|mac_out4~10\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(10);
\uut|Mult3|auto_generated|mac_out4~11\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(11);
\uut|Mult3|auto_generated|mac_out4~12\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(12);
\uut|Mult3|auto_generated|mac_out4~dataout\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(13);
\uut|Mult3|auto_generated|mac_out4~DATAOUT1\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(14);
\uut|Mult3|auto_generated|mac_out4~DATAOUT2\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(15);
\uut|Mult3|auto_generated|mac_out4~DATAOUT3\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(16);
\uut|Mult3|auto_generated|mac_out4~DATAOUT4\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(17);
\uut|Mult3|auto_generated|mac_out4~DATAOUT5\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(18);
\uut|Mult3|auto_generated|mac_out4~DATAOUT6\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(19);
\uut|Mult3|auto_generated|mac_out4~DATAOUT7\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(20);
\uut|Mult3|auto_generated|mac_out4~DATAOUT8\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(21);
\uut|Mult3|auto_generated|mac_out4~DATAOUT9\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(22);
\uut|Mult3|auto_generated|mac_out4~DATAOUT10\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(23);
\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(24);
\uut|Mult3|auto_generated|mac_out4~DATAOUT12\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(25);
\uut|Mult3|auto_generated|mac_out4~DATAOUT13\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(26);
\uut|Mult3|auto_generated|mac_out4~DATAOUT14\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(27);
\uut|Mult3|auto_generated|mac_out4~DATAOUT15\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(28);
\uut|Mult3|auto_generated|mac_out4~DATAOUT16\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(29);
\uut|Mult3|auto_generated|mac_out4~DATAOUT17\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(30);
\uut|Mult3|auto_generated|mac_out4~DATAOUT18\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(31);
\uut|Mult3|auto_generated|mac_out4~DATAOUT19\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(32);
\uut|Mult3|auto_generated|mac_out4~DATAOUT20\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(33);
\uut|Mult3|auto_generated|mac_out4~DATAOUT21\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(34);
\uut|Mult3|auto_generated|mac_out4~DATAOUT22\ <= \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\(35);

\uut|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|reg.VA[17]~_Duplicate_1_q\ & \uut|reg.VA[16]~_Duplicate_1_q\ & \uut|reg.VA[15]~_Duplicate_1_q\ & \uut|reg.VA[14]~_Duplicate_1_q\ & \uut|reg.VA[13]~_Duplicate_1_q\ & \uut|reg.VA[12]~_Duplicate_1_q\ & 
\uut|reg.VA[11]~_Duplicate_1_q\ & \uut|reg.VA[10]~_Duplicate_1_q\ & \uut|reg.VA[9]~_Duplicate_1_q\ & \uut|reg.VA[8]~_Duplicate_1_q\ & \uut|reg.VA[7]~_Duplicate_1_q\ & \uut|reg.VA[6]~_Duplicate_1_q\ & \uut|reg.VA[5]~_Duplicate_1_q\ & 
\uut|reg.VA[4]~_Duplicate_1_q\ & \uut|reg.VA[3]~_Duplicate_1_q\ & \uut|reg.VA[2]~_Duplicate_1_q\ & \uut|reg.VA[1]~_Duplicate_1_q\ & \uut|reg.VA[0]~_Duplicate_1_q\);

\uut|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult2|auto_generated|mac_mult1~0\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_mult1~1\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_mult1~2\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|mac_mult1~dataout\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT29\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT30\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT31\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT32\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult1|auto_generated|mac_mult1~DATAOUT33\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT32\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT31\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT30\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT29\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT25\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT20\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT5\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult1|auto_generated|mac_mult1~dataout\ & 
\uut|Mult1|auto_generated|mac_mult1~1\ & \uut|Mult1|auto_generated|mac_mult1~0\);

\uut|Mult1|auto_generated|mac_out2~0\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_out2~1\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|w257w\(0) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|w257w\(1) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|w257w\(2) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|w257w\(3) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|w257w\(4) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|w257w\(5) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|w257w\(6) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|w257w\(7) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|w257w\(8) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|w257w\(9) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|w257w\(10) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|w257w\(11) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|w257w\(12) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|w257w\(13) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|w257w\(14) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|w257w\(15) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|w257w\(16) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|w257w\(17) <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_out2~DATAOUT30\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_out2~DATAOUT32\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_out2~DATAOUT33\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult2|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult2|auto_generated|mac_mult3_DATAB_bus\ <= (\uut|reg.VA[26]~_Duplicate_1_q\ & \uut|reg.VA[25]~_Duplicate_1_q\ & \uut|reg.VA[24]~_Duplicate_1_q\ & \uut|reg.VA[23]~_Duplicate_1_q\ & \uut|reg.VA[22]~_Duplicate_1_q\ & \uut|reg.VA[21]~_Duplicate_1_q\ & 
\uut|reg.VA[20]~_Duplicate_1_q\ & \uut|reg.VA[19]~_Duplicate_1_q\ & \uut|reg.VA[18]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult2|auto_generated|mac_mult3~0\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_mult3~1\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_mult3~2\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|mac_mult3~3\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|mac_mult3~4\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|mac_mult3~5\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|mac_mult3~6\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|mac_mult3~7\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|mac_mult3~8\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|mac_mult3~9\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|mac_mult3~10\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|mac_mult3~11\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|mac_mult3~dataout\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT1\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT2\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT3\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT4\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT5\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT6\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT7\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT8\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT9\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT10\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT11\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT12\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT13\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT14\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT15\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT16\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT17\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_mult3~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\(35);

\uut|Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\uut|Mult1|auto_generated|mac_mult3~DATAOUT24\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT23\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT22\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT21\ & 
\uut|Mult1|auto_generated|mac_mult3~DATAOUT20\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT19\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT18\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT17\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT16\ & 
\uut|Mult1|auto_generated|mac_mult3~DATAOUT15\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT14\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT13\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT12\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT11\ & 
\uut|Mult1|auto_generated|mac_mult3~DATAOUT10\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT9\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT8\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT7\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT6\ & 
\uut|Mult1|auto_generated|mac_mult3~DATAOUT5\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT4\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT3\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT2\ & \uut|Mult1|auto_generated|mac_mult3~DATAOUT1\ & 
\uut|Mult1|auto_generated|mac_mult3~dataout\ & \uut|Mult1|auto_generated|mac_mult3~10\ & \uut|Mult1|auto_generated|mac_mult3~9\ & \uut|Mult1|auto_generated|mac_mult3~8\ & \uut|Mult1|auto_generated|mac_mult3~7\ & \uut|Mult1|auto_generated|mac_mult3~6\ & 
\uut|Mult1|auto_generated|mac_mult3~5\ & \uut|Mult1|auto_generated|mac_mult3~4\ & \uut|Mult1|auto_generated|mac_mult3~3\ & \uut|Mult1|auto_generated|mac_mult3~2\ & \uut|Mult1|auto_generated|mac_mult3~1\ & \uut|Mult1|auto_generated|mac_mult3~0\);

\uut|Mult1|auto_generated|mac_out4~0\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_out4~1\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|mac_out4~2\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|mac_out4~3\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|mac_out4~4\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|mac_out4~5\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|mac_out4~6\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|mac_out4~7\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|mac_out4~8\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|mac_out4~9\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|mac_out4~10\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|mac_out4~dataout\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|mac_out4~DATAOUT1\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|mac_out4~DATAOUT2\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|mac_out4~DATAOUT4\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|mac_out4~DATAOUT5\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|mac_out4~DATAOUT6\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|mac_out4~DATAOUT7\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|mac_out4~DATAOUT8\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_out4~DATAOUT10\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_out4~DATAOUT11\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_out4~DATAOUT12\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_out4~DATAOUT13\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_out4~DATAOUT14\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_out4~DATAOUT15\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_out4~DATAOUT16\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_out4~DATAOUT17\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_out4~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_out4~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_out4~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_out4~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_out4~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_out4~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_out4~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\uut|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|reg.VA[17]~_Duplicate_1_q\ & \uut|reg.VA[16]~_Duplicate_1_q\ & \uut|reg.VA[15]~_Duplicate_1_q\ & \uut|reg.VA[14]~_Duplicate_1_q\ & \uut|reg.VA[13]~_Duplicate_1_q\ & \uut|reg.VA[12]~_Duplicate_1_q\ & 
\uut|reg.VA[11]~_Duplicate_1_q\ & \uut|reg.VA[10]~_Duplicate_1_q\ & \uut|reg.VA[9]~_Duplicate_1_q\ & \uut|reg.VA[8]~_Duplicate_1_q\ & \uut|reg.VA[7]~_Duplicate_1_q\ & \uut|reg.VA[6]~_Duplicate_1_q\ & \uut|reg.VA[5]~_Duplicate_1_q\ & 
\uut|reg.VA[4]~_Duplicate_1_q\ & \uut|reg.VA[3]~_Duplicate_1_q\ & \uut|reg.VA[2]~_Duplicate_1_q\ & \uut|reg.VA[1]~_Duplicate_1_q\ & \uut|reg.VA[0]~_Duplicate_1_q\);

\uut|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult3|auto_generated|mac_mult1~0\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult3|auto_generated|mac_mult1~1\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult3|auto_generated|mac_mult1~2\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult3|auto_generated|mac_mult1~3\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult3|auto_generated|mac_mult1~dataout\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT29\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT30\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult3|auto_generated|mac_mult1~DATAOUT31\ <= \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult3|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult3|auto_generated|mac_mult3_DATAB_bus\ <= (\uut|reg.VA[26]~_Duplicate_1_q\ & \uut|reg.VA[25]~_Duplicate_1_q\ & \uut|reg.VA[24]~_Duplicate_1_q\ & \uut|reg.VA[23]~_Duplicate_1_q\ & \uut|reg.VA[22]~_Duplicate_1_q\ & \uut|reg.VA[21]~_Duplicate_1_q\ & 
\uut|reg.VA[20]~_Duplicate_1_q\ & \uut|reg.VA[19]~_Duplicate_1_q\ & \uut|reg.VA[18]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult3|auto_generated|mac_mult3~0\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(0);
\uut|Mult3|auto_generated|mac_mult3~1\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(1);
\uut|Mult3|auto_generated|mac_mult3~2\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(2);
\uut|Mult3|auto_generated|mac_mult3~3\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(3);
\uut|Mult3|auto_generated|mac_mult3~4\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(4);
\uut|Mult3|auto_generated|mac_mult3~5\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(5);
\uut|Mult3|auto_generated|mac_mult3~6\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(6);
\uut|Mult3|auto_generated|mac_mult3~7\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(7);
\uut|Mult3|auto_generated|mac_mult3~8\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(8);
\uut|Mult3|auto_generated|mac_mult3~9\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(9);
\uut|Mult3|auto_generated|mac_mult3~10\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(10);
\uut|Mult3|auto_generated|mac_mult3~11\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(11);
\uut|Mult3|auto_generated|mac_mult3~12\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(12);
\uut|Mult3|auto_generated|mac_mult3~dataout\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(13);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT1\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(14);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT2\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(15);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT3\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(16);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT4\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(17);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT5\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(18);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT6\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(19);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT7\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(20);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT8\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(21);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT9\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(22);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT10\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(23);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT11\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(24);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT12\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(25);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT13\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(26);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT14\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(27);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT15\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(28);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT16\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(29);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT17\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(30);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT18\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(31);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT19\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(32);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT20\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(33);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT21\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(34);
\uut|Mult3|auto_generated|mac_mult3~DATAOUT22\ <= \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\(35);

\uut|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|reg.VA[17]~61_combout\ & \uut|reg.VA[16]~59_combout\ & \uut|reg.VA[15]~57_combout\ & \uut|reg.VA[14]~55_combout\ & \uut|reg.VA[13]~53_combout\ & \uut|reg.VA[12]~51_combout\ & 
\uut|reg.VA[11]~49_combout\ & \uut|reg.VA[10]~47_combout\ & \uut|reg.VA[9]~45_combout\ & \uut|reg.VA[8]~43_combout\ & \uut|reg.VA[7]~41_combout\ & \uut|reg.VA[6]~39_combout\ & \uut|reg.VA[5]~37_combout\ & \uut|reg.VA[4]~35_combout\ & 
\uut|reg.VA[3]~33_combout\ & \uut|reg.VA[2]~31_combout\ & \uut|reg.VA[1]~29_combout\ & \uut|reg.VA[0]~27_combout\);

\uut|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult1|auto_generated|mac_mult1~0\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_mult1~1\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|mac_mult1~dataout\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT32\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT33\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (\uut|reg.VA[26]~79_combout\ & \uut|reg.VA[25]~77_combout\ & \uut|reg.VA[24]~75_combout\ & \uut|reg.VA[23]~73_combout\ & \uut|reg.VA[22]~71_combout\ & \uut|reg.VA[21]~69_combout\ & 
\uut|reg.VA[20]~67_combout\ & \uut|reg.VA[19]~65_combout\ & \uut|reg.VA[18]~63_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult1|auto_generated|mac_mult3~0\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_mult3~1\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|mac_mult3~2\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|mac_mult3~3\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|mac_mult3~4\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|mac_mult3~5\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|mac_mult3~6\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|mac_mult3~7\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|mac_mult3~8\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|mac_mult3~9\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|mac_mult3~10\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|mac_mult3~dataout\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_mult3~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult0|auto_generated|mac_mult1~DATAOUT33\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT32\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT30\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT20\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult0|auto_generated|mac_mult1~dataout\ & 
\uut|Mult0|auto_generated|mac_mult1~1\ & \uut|Mult0|auto_generated|mac_mult1~0\);

\uut|Mult0|auto_generated|mac_out2~0\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_out2~1\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|w257w\(0) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|w257w\(1) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|w257w\(2) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|w257w\(3) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|w257w\(4) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|w257w\(5) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|w257w\(6) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|w257w\(7) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|w257w\(8) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|w257w\(9) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|w257w\(10) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|w257w\(11) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|w257w\(12) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|w257w\(13) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|w257w\(14) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|w257w\(15) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|w257w\(16) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|w257w\(17) <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\uut|Mult0|auto_generated|mac_mult3~DATAOUT24\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT23\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT22\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\uut|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT19\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT18\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT17\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT16\ & 
\uut|Mult0|auto_generated|mac_mult3~DATAOUT15\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT14\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT13\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT12\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT11\ & 
\uut|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT9\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT7\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT6\ & 
\uut|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT3\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT2\ & \uut|Mult0|auto_generated|mac_mult3~DATAOUT1\ & 
\uut|Mult0|auto_generated|mac_mult3~dataout\ & \uut|Mult0|auto_generated|mac_mult3~10\ & \uut|Mult0|auto_generated|mac_mult3~9\ & \uut|Mult0|auto_generated|mac_mult3~8\ & \uut|Mult0|auto_generated|mac_mult3~7\ & \uut|Mult0|auto_generated|mac_mult3~6\ & 
\uut|Mult0|auto_generated|mac_mult3~5\ & \uut|Mult0|auto_generated|mac_mult3~4\ & \uut|Mult0|auto_generated|mac_mult3~3\ & \uut|Mult0|auto_generated|mac_mult3~2\ & \uut|Mult0|auto_generated|mac_mult3~1\ & \uut|Mult0|auto_generated|mac_mult3~0\);

\uut|Mult0|auto_generated|mac_out4~0\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_out4~1\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|mac_out4~2\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|mac_out4~3\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|mac_out4~4\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|mac_out4~5\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|mac_out4~6\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|mac_out4~7\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|mac_out4~8\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|mac_out4~9\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|mac_out4~10\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|mac_out4~dataout\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|Selector40~0_combout\ & \uut|Selector41~0_combout\ & \uut|Selector42~0_combout\ & \uut|Selector43~0_combout\ & \uut|Selector44~0_combout\ & \uut|Selector45~0_combout\ & \uut|Selector46~0_combout\ & 
\uut|Selector47~0_combout\ & \uut|Selector48~0_combout\ & \uut|Selector49~0_combout\ & \uut|Selector50~0_combout\ & \uut|Selector51~0_combout\ & \uut|Selector52~0_combout\ & \uut|Selector53~0_combout\ & \uut|Selector54~0_combout\ & 
\uut|Selector55~0_combout\ & \uut|Selector56~0_combout\ & \uut|Selector57~1_combout\);

\uut|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult0|auto_generated|mac_mult1~0\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_mult1~1\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|mac_mult1~dataout\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\uut|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\uut|Selector31~0_combout\ & \uut|Selector32~0_combout\ & \uut|Selector33~0_combout\ & \uut|Selector34~0_combout\ & \uut|Selector35~0_combout\ & \uut|Selector36~0_combout\ & \uut|Selector37~0_combout\ & 
\uut|Selector38~0_combout\ & \uut|Selector39~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult0|auto_generated|mac_mult3~0\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_mult3~1\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|mac_mult3~2\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|mac_mult3~3\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|mac_mult3~4\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|mac_mult3~5\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|mac_mult3~6\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|mac_mult3~7\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|mac_mult3~8\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|mac_mult3~9\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|mac_mult3~10\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|mac_mult3~dataout\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\i_CLK_sin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK_sin~input_o\);

-- Location: IOOBUF_X23_Y29_N16
\o_Real[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(0),
	devoe => ww_devoe,
	o => \o_Real[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_Real[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(1),
	devoe => ww_devoe,
	o => \o_Real[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\o_Real[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(2),
	devoe => ww_devoe,
	o => \o_Real[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\o_Real[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(3),
	devoe => ww_devoe,
	o => \o_Real[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_Real[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(4),
	devoe => ww_devoe,
	o => \o_Real[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_Real[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(5),
	devoe => ww_devoe,
	o => \o_Real[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_Real[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(6),
	devoe => ww_devoe,
	o => \o_Real[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_Real[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(7),
	devoe => ww_devoe,
	o => \o_Real[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\o_Real[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(8),
	devoe => ww_devoe,
	o => \o_Real[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\o_Real[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(9),
	devoe => ww_devoe,
	o => \o_Real[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\o_Real[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(10),
	devoe => ww_devoe,
	o => \o_Real[10]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_Real[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(11),
	devoe => ww_devoe,
	o => \o_Real[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_Real[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(12),
	devoe => ww_devoe,
	o => \o_Real[12]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\o_Real[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(13),
	devoe => ww_devoe,
	o => \o_Real[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_Real[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(14),
	devoe => ww_devoe,
	o => \o_Real[14]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\o_Real[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(15),
	devoe => ww_devoe,
	o => \o_Real[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\o_Real[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(16),
	devoe => ww_devoe,
	o => \o_Real[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_Real[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(17),
	devoe => ww_devoe,
	o => \o_Real[17]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\o_Real[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(18),
	devoe => ww_devoe,
	o => \o_Real[18]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_Real[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(19),
	devoe => ww_devoe,
	o => \o_Real[19]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\o_Real[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(20),
	devoe => ww_devoe,
	o => \o_Real[20]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_Real[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(21),
	devoe => ww_devoe,
	o => \o_Real[21]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\o_Real[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(22),
	devoe => ww_devoe,
	o => \o_Real[22]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_Real[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(23),
	devoe => ww_devoe,
	o => \o_Real[23]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\o_Real[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(24),
	devoe => ww_devoe,
	o => \o_Real[24]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_Real[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(25),
	devoe => ww_devoe,
	o => \o_Real[25]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\o_Real[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Real\(26),
	devoe => ww_devoe,
	o => \o_Real[26]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_Imag[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(0),
	devoe => ww_devoe,
	o => \o_Imag[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\o_Imag[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(1),
	devoe => ww_devoe,
	o => \o_Imag[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_Imag[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(2),
	devoe => ww_devoe,
	o => \o_Imag[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\o_Imag[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(3),
	devoe => ww_devoe,
	o => \o_Imag[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_Imag[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(4),
	devoe => ww_devoe,
	o => \o_Imag[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_Imag[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(5),
	devoe => ww_devoe,
	o => \o_Imag[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_Imag[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(6),
	devoe => ww_devoe,
	o => \o_Imag[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_Imag[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(7),
	devoe => ww_devoe,
	o => \o_Imag[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_Imag[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(8),
	devoe => ww_devoe,
	o => \o_Imag[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_Imag[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(9),
	devoe => ww_devoe,
	o => \o_Imag[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\o_Imag[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(10),
	devoe => ww_devoe,
	o => \o_Imag[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_Imag[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(11),
	devoe => ww_devoe,
	o => \o_Imag[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\o_Imag[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(12),
	devoe => ww_devoe,
	o => \o_Imag[12]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\o_Imag[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(13),
	devoe => ww_devoe,
	o => \o_Imag[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_Imag[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(14),
	devoe => ww_devoe,
	o => \o_Imag[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_Imag[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(15),
	devoe => ww_devoe,
	o => \o_Imag[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\o_Imag[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(16),
	devoe => ww_devoe,
	o => \o_Imag[16]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_Imag[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(17),
	devoe => ww_devoe,
	o => \o_Imag[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\o_Imag[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(18),
	devoe => ww_devoe,
	o => \o_Imag[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\o_Imag[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(19),
	devoe => ww_devoe,
	o => \o_Imag[19]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_Imag[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(20),
	devoe => ww_devoe,
	o => \o_Imag[20]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_Imag[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(21),
	devoe => ww_devoe,
	o => \o_Imag[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_Imag[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(22),
	devoe => ww_devoe,
	o => \o_Imag[22]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\o_Imag[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(23),
	devoe => ww_devoe,
	o => \o_Imag[23]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_Imag[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(24),
	devoe => ww_devoe,
	o => \o_Imag[24]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_Imag[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(25),
	devoe => ww_devoe,
	o => \o_Imag[25]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\o_Imag[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|r_Imag\(26),
	devoe => ww_devoe,
	o => \o_Imag[26]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_NEW_RESULT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|reg.done~q\,
	devoe => ww_devoe,
	o => \o_NEW_RESULT~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G4
\i_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\i_NEW_VALUE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEW_VALUE,
	o => \i_NEW_VALUE~input_o\);

-- Location: LCCOMB_X16_Y10_N28
\uut|reg.state.STORE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.state.STORE~feeder_combout\ = \uut|reg.state.CALCULATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|reg.state.STORE~feeder_combout\);

-- Location: FF_X16_Y10_N29
\uut|reg.state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.state.STORE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.STORE~q\);

-- Location: LCCOMB_X15_Y12_N2
\uut|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~0_combout\ = \uut|reg.sample_count\(0) $ (VCC)
-- \uut|Add4~1\ = CARRY(\uut|reg.sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(0),
	datad => VCC,
	combout => \uut|Add4~0_combout\,
	cout => \uut|Add4~1\);

-- Location: LCCOMB_X15_Y12_N4
\uut|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~2_combout\ = (\uut|reg.sample_count\(1) & (!\uut|Add4~1\)) # (!\uut|reg.sample_count\(1) & ((\uut|Add4~1\) # (GND)))
-- \uut|Add4~3\ = CARRY((!\uut|Add4~1\) # (!\uut|reg.sample_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(1),
	datad => VCC,
	cin => \uut|Add4~1\,
	combout => \uut|Add4~2_combout\,
	cout => \uut|Add4~3\);

-- Location: FF_X15_Y12_N5
\uut|reg.sample_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~2_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(1));

-- Location: LCCOMB_X15_Y12_N6
\uut|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~4_combout\ = (\uut|reg.sample_count\(2) & (\uut|Add4~3\ $ (GND))) # (!\uut|reg.sample_count\(2) & (!\uut|Add4~3\ & VCC))
-- \uut|Add4~5\ = CARRY((\uut|reg.sample_count\(2) & !\uut|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(2),
	datad => VCC,
	cin => \uut|Add4~3\,
	combout => \uut|Add4~4_combout\,
	cout => \uut|Add4~5\);

-- Location: FF_X15_Y12_N7
\uut|reg.sample_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~4_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(2));

-- Location: LCCOMB_X15_Y12_N8
\uut|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~6_combout\ = (\uut|reg.sample_count\(3) & (!\uut|Add4~5\)) # (!\uut|reg.sample_count\(3) & ((\uut|Add4~5\) # (GND)))
-- \uut|Add4~7\ = CARRY((!\uut|Add4~5\) # (!\uut|reg.sample_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(3),
	datad => VCC,
	cin => \uut|Add4~5\,
	combout => \uut|Add4~6_combout\,
	cout => \uut|Add4~7\);

-- Location: FF_X15_Y12_N9
\uut|reg.sample_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~6_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(3));

-- Location: LCCOMB_X15_Y12_N10
\uut|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~8_combout\ = (\uut|reg.sample_count\(4) & (\uut|Add4~7\ $ (GND))) # (!\uut|reg.sample_count\(4) & (!\uut|Add4~7\ & VCC))
-- \uut|Add4~9\ = CARRY((\uut|reg.sample_count\(4) & !\uut|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(4),
	datad => VCC,
	cin => \uut|Add4~7\,
	combout => \uut|Add4~8_combout\,
	cout => \uut|Add4~9\);

-- Location: LCCOMB_X15_Y12_N30
\uut|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~28_combout\ = (\uut|reg.sample_count\(14) & (\uut|Add4~27\ $ (GND))) # (!\uut|reg.sample_count\(14) & (!\uut|Add4~27\ & VCC))
-- \uut|Add4~29\ = CARRY((\uut|reg.sample_count\(14) & !\uut|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(14),
	datad => VCC,
	cin => \uut|Add4~27\,
	combout => \uut|Add4~28_combout\,
	cout => \uut|Add4~29\);

-- Location: LCCOMB_X15_Y11_N0
\uut|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~30_combout\ = (\uut|reg.sample_count\(15) & (!\uut|Add4~29\)) # (!\uut|reg.sample_count\(15) & ((\uut|Add4~29\) # (GND)))
-- \uut|Add4~31\ = CARRY((!\uut|Add4~29\) # (!\uut|reg.sample_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(15),
	datad => VCC,
	cin => \uut|Add4~29\,
	combout => \uut|Add4~30_combout\,
	cout => \uut|Add4~31\);

-- Location: FF_X15_Y11_N1
\uut|reg.sample_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~30_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(15));

-- Location: LCCOMB_X15_Y11_N2
\uut|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~32_combout\ = (\uut|reg.sample_count\(16) & (\uut|Add4~31\ $ (GND))) # (!\uut|reg.sample_count\(16) & (!\uut|Add4~31\ & VCC))
-- \uut|Add4~33\ = CARRY((\uut|reg.sample_count\(16) & !\uut|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(16),
	datad => VCC,
	cin => \uut|Add4~31\,
	combout => \uut|Add4~32_combout\,
	cout => \uut|Add4~33\);

-- Location: FF_X15_Y11_N3
\uut|reg.sample_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~32_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(16));

-- Location: LCCOMB_X15_Y11_N4
\uut|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~34_combout\ = (\uut|reg.sample_count\(17) & (!\uut|Add4~33\)) # (!\uut|reg.sample_count\(17) & ((\uut|Add4~33\) # (GND)))
-- \uut|Add4~35\ = CARRY((!\uut|Add4~33\) # (!\uut|reg.sample_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(17),
	datad => VCC,
	cin => \uut|Add4~33\,
	combout => \uut|Add4~34_combout\,
	cout => \uut|Add4~35\);

-- Location: FF_X15_Y11_N5
\uut|reg.sample_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~34_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(17));

-- Location: LCCOMB_X15_Y11_N6
\uut|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~36_combout\ = (\uut|reg.sample_count\(18) & (\uut|Add4~35\ $ (GND))) # (!\uut|reg.sample_count\(18) & (!\uut|Add4~35\ & VCC))
-- \uut|Add4~37\ = CARRY((\uut|reg.sample_count\(18) & !\uut|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(18),
	datad => VCC,
	cin => \uut|Add4~35\,
	combout => \uut|Add4~36_combout\,
	cout => \uut|Add4~37\);

-- Location: FF_X15_Y11_N7
\uut|reg.sample_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~36_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(18));

-- Location: LCCOMB_X15_Y11_N8
\uut|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~38_combout\ = (\uut|reg.sample_count\(19) & (!\uut|Add4~37\)) # (!\uut|reg.sample_count\(19) & ((\uut|Add4~37\) # (GND)))
-- \uut|Add4~39\ = CARRY((!\uut|Add4~37\) # (!\uut|reg.sample_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(19),
	datad => VCC,
	cin => \uut|Add4~37\,
	combout => \uut|Add4~38_combout\,
	cout => \uut|Add4~39\);

-- Location: FF_X15_Y11_N9
\uut|reg.sample_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~38_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(19));

-- Location: LCCOMB_X15_Y11_N10
\uut|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~40_combout\ = (\uut|reg.sample_count\(20) & (\uut|Add4~39\ $ (GND))) # (!\uut|reg.sample_count\(20) & (!\uut|Add4~39\ & VCC))
-- \uut|Add4~41\ = CARRY((\uut|reg.sample_count\(20) & !\uut|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(20),
	datad => VCC,
	cin => \uut|Add4~39\,
	combout => \uut|Add4~40_combout\,
	cout => \uut|Add4~41\);

-- Location: FF_X15_Y11_N11
\uut|reg.sample_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~40_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(20));

-- Location: LCCOMB_X15_Y11_N12
\uut|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~42_combout\ = (\uut|reg.sample_count\(21) & (!\uut|Add4~41\)) # (!\uut|reg.sample_count\(21) & ((\uut|Add4~41\) # (GND)))
-- \uut|Add4~43\ = CARRY((!\uut|Add4~41\) # (!\uut|reg.sample_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(21),
	datad => VCC,
	cin => \uut|Add4~41\,
	combout => \uut|Add4~42_combout\,
	cout => \uut|Add4~43\);

-- Location: FF_X15_Y11_N13
\uut|reg.sample_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~42_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(21));

-- Location: LCCOMB_X15_Y11_N14
\uut|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~44_combout\ = (\uut|reg.sample_count\(22) & (\uut|Add4~43\ $ (GND))) # (!\uut|reg.sample_count\(22) & (!\uut|Add4~43\ & VCC))
-- \uut|Add4~45\ = CARRY((\uut|reg.sample_count\(22) & !\uut|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(22),
	datad => VCC,
	cin => \uut|Add4~43\,
	combout => \uut|Add4~44_combout\,
	cout => \uut|Add4~45\);

-- Location: FF_X15_Y11_N15
\uut|reg.sample_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~44_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(22));

-- Location: LCCOMB_X15_Y11_N16
\uut|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~46_combout\ = (\uut|reg.sample_count\(23) & (!\uut|Add4~45\)) # (!\uut|reg.sample_count\(23) & ((\uut|Add4~45\) # (GND)))
-- \uut|Add4~47\ = CARRY((!\uut|Add4~45\) # (!\uut|reg.sample_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(23),
	datad => VCC,
	cin => \uut|Add4~45\,
	combout => \uut|Add4~46_combout\,
	cout => \uut|Add4~47\);

-- Location: FF_X15_Y11_N17
\uut|reg.sample_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~46_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(23));

-- Location: LCCOMB_X15_Y11_N18
\uut|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~48_combout\ = (\uut|reg.sample_count\(24) & (\uut|Add4~47\ $ (GND))) # (!\uut|reg.sample_count\(24) & (!\uut|Add4~47\ & VCC))
-- \uut|Add4~49\ = CARRY((\uut|reg.sample_count\(24) & !\uut|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(24),
	datad => VCC,
	cin => \uut|Add4~47\,
	combout => \uut|Add4~48_combout\,
	cout => \uut|Add4~49\);

-- Location: FF_X15_Y11_N19
\uut|reg.sample_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~48_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(24));

-- Location: LCCOMB_X15_Y11_N20
\uut|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~50_combout\ = (\uut|reg.sample_count\(25) & (!\uut|Add4~49\)) # (!\uut|reg.sample_count\(25) & ((\uut|Add4~49\) # (GND)))
-- \uut|Add4~51\ = CARRY((!\uut|Add4~49\) # (!\uut|reg.sample_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(25),
	datad => VCC,
	cin => \uut|Add4~49\,
	combout => \uut|Add4~50_combout\,
	cout => \uut|Add4~51\);

-- Location: FF_X15_Y11_N21
\uut|reg.sample_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~50_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(25));

-- Location: LCCOMB_X15_Y11_N22
\uut|Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~52_combout\ = (\uut|reg.sample_count\(26) & (\uut|Add4~51\ $ (GND))) # (!\uut|reg.sample_count\(26) & (!\uut|Add4~51\ & VCC))
-- \uut|Add4~53\ = CARRY((\uut|reg.sample_count\(26) & !\uut|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(26),
	datad => VCC,
	cin => \uut|Add4~51\,
	combout => \uut|Add4~52_combout\,
	cout => \uut|Add4~53\);

-- Location: FF_X15_Y11_N23
\uut|reg.sample_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~52_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(26));

-- Location: LCCOMB_X16_Y11_N10
\uut|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~1_combout\ = (!\uut|reg.sample_count\(25) & (!\uut|reg.sample_count\(26) & (!\uut|reg.sample_count\(23) & !\uut|reg.sample_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(25),
	datab => \uut|reg.sample_count\(26),
	datac => \uut|reg.sample_count\(23),
	datad => \uut|reg.sample_count\(24),
	combout => \uut|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y11_N24
\uut|Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~54_combout\ = (\uut|reg.sample_count\(27) & (!\uut|Add4~53\)) # (!\uut|reg.sample_count\(27) & ((\uut|Add4~53\) # (GND)))
-- \uut|Add4~55\ = CARRY((!\uut|Add4~53\) # (!\uut|reg.sample_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(27),
	datad => VCC,
	cin => \uut|Add4~53\,
	combout => \uut|Add4~54_combout\,
	cout => \uut|Add4~55\);

-- Location: FF_X15_Y11_N25
\uut|reg.sample_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~54_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(27));

-- Location: LCCOMB_X15_Y11_N26
\uut|Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~56_combout\ = (\uut|reg.sample_count\(28) & (\uut|Add4~55\ $ (GND))) # (!\uut|reg.sample_count\(28) & (!\uut|Add4~55\ & VCC))
-- \uut|Add4~57\ = CARRY((\uut|reg.sample_count\(28) & !\uut|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(28),
	datad => VCC,
	cin => \uut|Add4~55\,
	combout => \uut|Add4~56_combout\,
	cout => \uut|Add4~57\);

-- Location: FF_X15_Y11_N27
\uut|reg.sample_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~56_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(28));

-- Location: LCCOMB_X15_Y11_N28
\uut|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~58_combout\ = (\uut|reg.sample_count\(29) & (!\uut|Add4~57\)) # (!\uut|reg.sample_count\(29) & ((\uut|Add4~57\) # (GND)))
-- \uut|Add4~59\ = CARRY((!\uut|Add4~57\) # (!\uut|reg.sample_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(29),
	datad => VCC,
	cin => \uut|Add4~57\,
	combout => \uut|Add4~58_combout\,
	cout => \uut|Add4~59\);

-- Location: FF_X15_Y11_N29
\uut|reg.sample_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~58_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(29));

-- Location: LCCOMB_X15_Y11_N30
\uut|Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~60_combout\ = \uut|reg.sample_count\(30) $ (!\uut|Add4~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(30),
	cin => \uut|Add4~59\,
	combout => \uut|Add4~60_combout\);

-- Location: FF_X15_Y11_N31
\uut|reg.sample_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~60_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(30));

-- Location: LCCOMB_X16_Y11_N16
\uut|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~0_combout\ = (!\uut|reg.sample_count\(27) & (!\uut|reg.sample_count\(29) & (!\uut|reg.sample_count\(28) & !\uut|reg.sample_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(27),
	datab => \uut|reg.sample_count\(29),
	datac => \uut|reg.sample_count\(28),
	datad => \uut|reg.sample_count\(30),
	combout => \uut|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y11_N22
\uut|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~3_combout\ = (!\uut|reg.sample_count\(15) & (!\uut|reg.sample_count\(18) & (!\uut|reg.sample_count\(17) & !\uut|reg.sample_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(15),
	datab => \uut|reg.sample_count\(18),
	datac => \uut|reg.sample_count\(17),
	datad => \uut|reg.sample_count\(16),
	combout => \uut|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y11_N12
\uut|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~2_combout\ = (!\uut|reg.sample_count\(19) & (!\uut|reg.sample_count\(21) & (!\uut|reg.sample_count\(20) & !\uut|reg.sample_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(19),
	datab => \uut|reg.sample_count\(21),
	datac => \uut|reg.sample_count\(20),
	datad => \uut|reg.sample_count\(22),
	combout => \uut|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y11_N0
\uut|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~4_combout\ = (\uut|Equal0~1_combout\ & (\uut|Equal0~0_combout\ & (\uut|Equal0~3_combout\ & \uut|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal0~1_combout\,
	datab => \uut|Equal0~0_combout\,
	datac => \uut|Equal0~3_combout\,
	datad => \uut|Equal0~2_combout\,
	combout => \uut|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y12_N10
\uut|reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~10_combout\ = (\uut|Add4~8_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~8_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~10_combout\);

-- Location: FF_X16_Y12_N11
\uut|reg.sample_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~10_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(4));

-- Location: LCCOMB_X15_Y12_N12
\uut|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~10_combout\ = (\uut|reg.sample_count\(5) & (!\uut|Add4~9\)) # (!\uut|reg.sample_count\(5) & ((\uut|Add4~9\) # (GND)))
-- \uut|Add4~11\ = CARRY((!\uut|Add4~9\) # (!\uut|reg.sample_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(5),
	datad => VCC,
	cin => \uut|Add4~9\,
	combout => \uut|Add4~10_combout\,
	cout => \uut|Add4~11\);

-- Location: FF_X15_Y12_N13
\uut|reg.sample_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~10_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(5));

-- Location: LCCOMB_X15_Y12_N14
\uut|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~12_combout\ = (\uut|reg.sample_count\(6) & (\uut|Add4~11\ $ (GND))) # (!\uut|reg.sample_count\(6) & (!\uut|Add4~11\ & VCC))
-- \uut|Add4~13\ = CARRY((\uut|reg.sample_count\(6) & !\uut|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(6),
	datad => VCC,
	cin => \uut|Add4~11\,
	combout => \uut|Add4~12_combout\,
	cout => \uut|Add4~13\);

-- Location: LCCOMB_X16_Y12_N4
\uut|reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~9_combout\ = (\uut|Add4~12_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~12_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~9_combout\);

-- Location: FF_X16_Y12_N5
\uut|reg.sample_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~9_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(6));

-- Location: LCCOMB_X15_Y12_N16
\uut|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~14_combout\ = (\uut|reg.sample_count\(7) & (!\uut|Add4~13\)) # (!\uut|reg.sample_count\(7) & ((\uut|Add4~13\) # (GND)))
-- \uut|Add4~15\ = CARRY((!\uut|Add4~13\) # (!\uut|reg.sample_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(7),
	datad => VCC,
	cin => \uut|Add4~13\,
	combout => \uut|Add4~14_combout\,
	cout => \uut|Add4~15\);

-- Location: LCCOMB_X16_Y12_N18
\uut|reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~8_combout\ = (\uut|Add4~14_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~14_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~8_combout\);

-- Location: FF_X16_Y12_N19
\uut|reg.sample_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~8_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(7));

-- Location: LCCOMB_X15_Y12_N18
\uut|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~16_combout\ = (\uut|reg.sample_count\(8) & (\uut|Add4~15\ $ (GND))) # (!\uut|reg.sample_count\(8) & (!\uut|Add4~15\ & VCC))
-- \uut|Add4~17\ = CARRY((\uut|reg.sample_count\(8) & !\uut|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(8),
	datad => VCC,
	cin => \uut|Add4~15\,
	combout => \uut|Add4~16_combout\,
	cout => \uut|Add4~17\);

-- Location: LCCOMB_X16_Y12_N12
\uut|reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~7_combout\ = (\uut|Add4~16_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~16_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~7_combout\);

-- Location: FF_X16_Y12_N13
\uut|reg.sample_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~7_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(8));

-- Location: LCCOMB_X15_Y12_N20
\uut|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~18_combout\ = (\uut|reg.sample_count\(9) & (!\uut|Add4~17\)) # (!\uut|reg.sample_count\(9) & ((\uut|Add4~17\) # (GND)))
-- \uut|Add4~19\ = CARRY((!\uut|Add4~17\) # (!\uut|reg.sample_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(9),
	datad => VCC,
	cin => \uut|Add4~17\,
	combout => \uut|Add4~18_combout\,
	cout => \uut|Add4~19\);

-- Location: LCCOMB_X16_Y12_N26
\uut|reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~6_combout\ = (\uut|Add4~18_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~18_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~6_combout\);

-- Location: FF_X16_Y12_N27
\uut|reg.sample_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~6_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(9));

-- Location: LCCOMB_X15_Y12_N22
\uut|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~20_combout\ = (\uut|reg.sample_count\(10) & (\uut|Add4~19\ $ (GND))) # (!\uut|reg.sample_count\(10) & (!\uut|Add4~19\ & VCC))
-- \uut|Add4~21\ = CARRY((\uut|reg.sample_count\(10) & !\uut|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(10),
	datad => VCC,
	cin => \uut|Add4~19\,
	combout => \uut|Add4~20_combout\,
	cout => \uut|Add4~21\);

-- Location: LCCOMB_X16_Y12_N8
\uut|reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~5_combout\ = (\uut|Add4~20_combout\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~20_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~5_combout\);

-- Location: FF_X16_Y12_N9
\uut|reg.sample_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~5_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(10));

-- Location: LCCOMB_X15_Y12_N24
\uut|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~22_combout\ = (\uut|reg.sample_count\(11) & (!\uut|Add4~21\)) # (!\uut|reg.sample_count\(11) & ((\uut|Add4~21\) # (GND)))
-- \uut|Add4~23\ = CARRY((!\uut|Add4~21\) # (!\uut|reg.sample_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(11),
	datad => VCC,
	cin => \uut|Add4~21\,
	combout => \uut|Add4~22_combout\,
	cout => \uut|Add4~23\);

-- Location: FF_X15_Y12_N25
\uut|reg.sample_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~22_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(11));

-- Location: LCCOMB_X15_Y12_N26
\uut|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~24_combout\ = (\uut|reg.sample_count\(12) & (\uut|Add4~23\ $ (GND))) # (!\uut|reg.sample_count\(12) & (!\uut|Add4~23\ & VCC))
-- \uut|Add4~25\ = CARRY((\uut|reg.sample_count\(12) & !\uut|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(12),
	datad => VCC,
	cin => \uut|Add4~23\,
	combout => \uut|Add4~24_combout\,
	cout => \uut|Add4~25\);

-- Location: FF_X15_Y12_N27
\uut|reg.sample_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~24_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(12));

-- Location: LCCOMB_X15_Y12_N28
\uut|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add4~26_combout\ = (\uut|reg.sample_count\(13) & (!\uut|Add4~25\)) # (!\uut|reg.sample_count\(13) & ((\uut|Add4~25\) # (GND)))
-- \uut|Add4~27\ = CARRY((!\uut|Add4~25\) # (!\uut|reg.sample_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(13),
	datad => VCC,
	cin => \uut|Add4~25\,
	combout => \uut|Add4~26_combout\,
	cout => \uut|Add4~27\);

-- Location: FF_X15_Y12_N29
\uut|reg.sample_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~26_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(13));

-- Location: FF_X15_Y12_N31
\uut|reg.sample_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add4~28_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(14));

-- Location: LCCOMB_X15_Y12_N0
\uut|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~5_combout\ = (!\uut|reg.sample_count\(14) & (!\uut|reg.sample_count\(13) & (!\uut|reg.sample_count\(12) & !\uut|reg.sample_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(14),
	datab => \uut|reg.sample_count\(13),
	datac => \uut|reg.sample_count\(12),
	datad => \uut|reg.sample_count\(11),
	combout => \uut|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y12_N28
\uut|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~6_combout\ = (\uut|reg.sample_count\(9) & (\uut|reg.sample_count\(7) & (\uut|reg.sample_count\(10) & \uut|reg.sample_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(9),
	datab => \uut|reg.sample_count\(7),
	datac => \uut|reg.sample_count\(10),
	datad => \uut|reg.sample_count\(8),
	combout => \uut|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y12_N2
\uut|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~7_combout\ = (\uut|Equal0~5_combout\ & \uut|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Equal0~5_combout\,
	datad => \uut|Equal0~6_combout\,
	combout => \uut|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y12_N6
\uut|reg~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~11_combout\ = (\uut|Add4~0_combout\) # ((\uut|Equal0~9_combout\ & (\uut|Equal0~7_combout\ & \uut|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add4~0_combout\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|reg~11_combout\);

-- Location: FF_X16_Y12_N7
\uut|reg.sample_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~11_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(0));

-- Location: LCCOMB_X16_Y12_N0
\uut|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~8_combout\ = (!\uut|reg.sample_count\(4) & (!\uut|reg.sample_count\(5) & (\uut|reg.sample_count\(6) & \uut|reg.sample_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(4),
	datab => \uut|reg.sample_count\(5),
	datac => \uut|reg.sample_count\(6),
	datad => \uut|reg.sample_count\(3),
	combout => \uut|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y12_N24
\uut|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~9_combout\ = (\uut|reg.sample_count\(0) & (\uut|reg.sample_count\(1) & (\uut|reg.sample_count\(2) & \uut|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(0),
	datab => \uut|reg.sample_count\(1),
	datac => \uut|reg.sample_count\(2),
	datad => \uut|Equal0~8_combout\,
	combout => \uut|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y12_N16
\uut|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector0~0_combout\ = (\uut|reg.state.STORE~q\ & (((!\uut|Equal0~4_combout\) # (!\uut|Equal0~7_combout\)) # (!\uut|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y12_N30
\uut|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector2~0_combout\ = (\uut|reg.state.STORE~q\ & (\uut|Equal0~9_combout\ & (\uut|Equal0~7_combout\ & \uut|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~4_combout\,
	combout => \uut|Selector2~0_combout\);

-- Location: FF_X17_Y9_N27
\uut|reg.state.OUTPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|Selector2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.OUTPUT~q\);

-- Location: LCCOMB_X17_Y3_N26
\uut|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector0~1_combout\ = (!\uut|Selector0~0_combout\ & (!\uut|reg.state.OUTPUT~q\ & ((\i_NEW_VALUE~input_o\) # (\uut|reg.state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NEW_VALUE~input_o\,
	datab => \uut|Selector0~0_combout\,
	datac => \uut|reg.state.IDLE~q\,
	datad => \uut|reg.state.OUTPUT~q\,
	combout => \uut|Selector0~1_combout\);

-- Location: FF_X17_Y3_N27
\uut|reg.state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.IDLE~q\);

-- Location: LCCOMB_X17_Y3_N28
\uut|reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~4_combout\ = (!\uut|reg.state.IDLE~q\ & \i_NEW_VALUE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datac => \i_NEW_VALUE~input_o\,
	combout => \uut|reg~4_combout\);

-- Location: FF_X17_Y3_N29
\uut|reg.state.CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.CALCULATE~q\);

-- Location: LCCOMB_X16_Y10_N26
\uut|reg.VA_prev[0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[0]~_Duplicate_1feeder_combout\ = \uut|Selector57~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector57~1_combout\,
	combout => \uut|reg.VA_prev[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y10_N27
\uut|reg.VA_prev[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y6_N12
\uut|Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector57~0_combout\ = ((\uut|Selector2~0_combout\) # (\uut|reg.state.CALCULATE~q\)) # (!\uut|reg.state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datab => \uut|Selector2~0_combout\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector57~0_combout\);

-- Location: FF_X19_Y10_N7
\uut|reg.VA[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[0]~27_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N12
\uut|Selector57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector57~1_combout\ = (\uut|reg.VA_prev[0]~_Duplicate_1_q\ & ((\uut|Selector57~0_combout\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[0]~_Duplicate_1_q\)))) # (!\uut|reg.VA_prev[0]~_Duplicate_1_q\ & (((\uut|Selector0~0_combout\ & 
-- \uut|reg.VA[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[0]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA[0]~_Duplicate_1_q\,
	combout => \uut|Selector57~1_combout\);

-- Location: LCCOMB_X16_Y10_N16
\uut|reg.VA_prev[1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\ = \uut|Selector56~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector56~0_combout\,
	combout => \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y10_N17
\uut|reg.VA_prev[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y6_N10
\uut|reg~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~12_combout\ = (\uut|reg.state.STORE~q\) # (!\uut|reg.state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datac => \uut|reg.state.STORE~q\,
	combout => \uut|reg~12_combout\);

-- Location: LCCOMB_X16_Y10_N20
\uut|Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector110~0_combout\ = (\uut|reg.VA_prev[1]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(1))))) # (!\uut|reg.VA_prev[1]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[1]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(1),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector110~0_combout\);

-- Location: FF_X16_Y10_N21
\uut|reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(1));

-- Location: LCCOMB_X16_Y10_N22
\uut|reg.VA_prev[2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[2]~_Duplicate_1feeder_combout\ = \uut|Selector55~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector55~0_combout\,
	combout => \uut|reg.VA_prev[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y10_N23
\uut|reg.VA_prev[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[2]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N30
\uut|Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector109~0_combout\ = (\uut|reg~12_combout\ & ((\uut|reg.VA_prev2\(2)) # ((\uut|reg.VA_prev[2]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)))) # (!\uut|reg~12_combout\ & (\uut|reg.VA_prev[2]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg~12_combout\,
	datab => \uut|reg.VA_prev[2]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(2),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector109~0_combout\);

-- Location: FF_X16_Y10_N31
\uut|reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector109~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(2));

-- Location: LCCOMB_X17_Y10_N28
\uut|reg.VA_prev[3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[3]~_Duplicate_1feeder_combout\ = \uut|Selector54~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector54~0_combout\,
	combout => \uut|reg.VA_prev[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y10_N29
\uut|reg.VA_prev[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[3]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N6
\uut|Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector108~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[3]~_Duplicate_1_q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(3))))) # (!\uut|reg.state.CALCULATE~q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(3),
	datad => \uut|reg.VA_prev[3]~_Duplicate_1_q\,
	combout => \uut|Selector108~0_combout\);

-- Location: FF_X17_Y10_N7
\uut|reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector108~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(3));

-- Location: IOIBUF_X0_Y14_N8
\i_CLK_sin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK_sin,
	o => \i_CLK_sin~input_o\);

-- Location: CLKCTRL_G2
\i_CLK_sin~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK_sin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK_sin~inputclkctrl_outclk\);

-- Location: IOIBUF_X19_Y0_N8
\i_addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(2),
	o => \i_addr[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\i_addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(4),
	o => \i_addr[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\i_addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(3),
	o => \i_addr[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(5),
	o => \i_addr[5]~input_o\);

-- Location: LCCOMB_X19_Y5_N0
\data|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~8_combout\ = (!\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & (!\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~8_combout\);

-- Location: IOIBUF_X19_Y0_N29
\i_addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(1),
	o => \i_addr[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\i_addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(0),
	o => \i_addr[0]~input_o\);

-- Location: LCCOMB_X19_Y3_N22
\data|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~9_combout\ = (\i_addr[1]~input_o\ & ((\data|Mux8~8_combout\) # (!\i_addr[0]~input_o\))) # (!\i_addr[1]~input_o\ & ((\i_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~8_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux8~9_combout\);

-- Location: IOIBUF_X28_Y0_N22
\i_addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(6),
	o => \i_addr[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(7),
	o => \i_addr[7]~input_o\);

-- Location: LCCOMB_X19_Y6_N26
\data|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~1_combout\ = (\i_addr[2]~input_o\ & (((\i_addr[6]~input_o\)) # (!\i_addr[4]~input_o\))) # (!\i_addr[2]~input_o\ & (\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\) # (!\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux8~1_combout\);

-- Location: LCCOMB_X19_Y5_N16
\data|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~2_combout\ = (\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\) # ((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\)))) # (!\i_addr[6]~input_o\ & (!\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux8~2_combout\);

-- Location: LCCOMB_X19_Y5_N26
\data|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~5_combout\ = (\data|Mux8~1_combout\ & ((\data|Mux8~2_combout\) # ((\i_addr[5]~input_o\ & !\i_addr[3]~input_o\)))) # (!\data|Mux8~1_combout\ & (\data|Mux8~2_combout\ & (\i_addr[5]~input_o\ $ (!\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~1_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux8~2_combout\,
	combout => \data|Mux8~5_combout\);

-- Location: LCCOMB_X19_Y5_N22
\data|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~3_combout\ = (\data|Mux8~1_combout\ & (((\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\))) # (!\data|Mux8~1_combout\ & ((\i_addr[5]~input_o\ & (!\i_addr[3]~input_o\ & !\data|Mux8~2_combout\)) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & 
-- \data|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~1_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux8~2_combout\,
	combout => \data|Mux8~3_combout\);

-- Location: LCCOMB_X19_Y5_N20
\data|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~4_combout\ = (\data|Mux8~1_combout\ & (\i_addr[5]~input_o\ $ (\i_addr[3]~input_o\ $ (!\data|Mux8~2_combout\)))) # (!\data|Mux8~1_combout\ & ((\i_addr[5]~input_o\ & (!\i_addr[3]~input_o\ & \data|Mux8~2_combout\)) # (!\i_addr[5]~input_o\ & 
-- (\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~1_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux8~2_combout\,
	combout => \data|Mux8~4_combout\);

-- Location: LCCOMB_X19_Y5_N2
\data|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~7_combout\ = (\data|Mux8~3_combout\ & (\i_addr[7]~input_o\ $ (((!\data|Mux8~4_combout\ & !\data|Mux8~5_combout\))))) # (!\data|Mux8~3_combout\ & (\data|Mux8~4_combout\ & ((\data|Mux8~5_combout\) # (\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~3_combout\,
	datab => \data|Mux8~4_combout\,
	datac => \data|Mux8~5_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux8~7_combout\);

-- Location: LCCOMB_X19_Y5_N10
\data|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~10_combout\ = (\data|Mux8~9_combout\ & ((!\data|Mux8~7_combout\))) # (!\data|Mux8~9_combout\ & (\data|Mux8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|Mux8~9_combout\,
	datac => \data|Mux8~5_combout\,
	datad => \data|Mux8~7_combout\,
	combout => \data|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y3_N4
\data|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~0_combout\ = (\i_addr[1]~input_o\ & \i_addr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y5_N28
\data|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~6_combout\ = (\i_addr[7]~input_o\ & (!\data|Mux8~3_combout\ & ((!\data|Mux8~5_combout\) # (!\data|Mux8~4_combout\)))) # (!\i_addr[7]~input_o\ & (\data|Mux8~4_combout\ $ (((\data|Mux8~3_combout\ & \data|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~3_combout\,
	datab => \data|Mux8~4_combout\,
	datac => \data|Mux8~5_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux8~6_combout\);

-- Location: LCCOMB_X19_Y5_N24
\data|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~11_combout\ = (\data|Mux8~10_combout\ & (\data|Mux8~6_combout\ & ((!\data|Mux8~0_combout\) # (!\data|Mux8~7_combout\)))) # (!\data|Mux8~10_combout\ & (\data|Mux8~7_combout\ $ (((\data|Mux8~6_combout\) # (!\data|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~10_combout\,
	datab => \data|Mux8~7_combout\,
	datac => \data|Mux8~0_combout\,
	datad => \data|Mux8~6_combout\,
	combout => \data|Mux8~11_combout\);

-- Location: FF_X20_Y10_N13
\data|o_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux8~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(3));

-- Location: FF_X17_Y10_N27
\uut|reg.VA_prev[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N20
\uut|Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector107~0_combout\ = (\uut|reg.VA_prev[4]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg.VA_prev2\(4) & \uut|reg~12_combout\)))) # (!\uut|reg.VA_prev[4]~_Duplicate_1_q\ & (((\uut|reg.VA_prev2\(4) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[4]~_Duplicate_1_q\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(4),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector107~0_combout\);

-- Location: FF_X17_Y10_N21
\uut|reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector107~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(4));

-- Location: FF_X17_Y10_N5
\uut|reg.VA_prev[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N22
\uut|Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector106~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[5]~_Duplicate_1_q\) # ((\uut|reg.VA_prev2\(5) & \uut|reg~12_combout\)))) # (!\uut|reg.state.CALCULATE~q\ & (((\uut|reg.VA_prev2\(5) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.VA_prev[5]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(5),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector106~0_combout\);

-- Location: FF_X17_Y10_N23
\uut|reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector106~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(5));

-- Location: FF_X19_Y7_N17
\uut|reg.VA_prev[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N2
\uut|Selector105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector105~0_combout\ = (\uut|reg~12_combout\ & ((\uut|reg.VA_prev2\(6)) # ((\uut|reg.VA_prev[6]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)))) # (!\uut|reg~12_combout\ & (\uut|reg.VA_prev[6]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg~12_combout\,
	datab => \uut|reg.VA_prev[6]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(6),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector105~0_combout\);

-- Location: FF_X19_Y7_N3
\uut|reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector105~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(6));

-- Location: LCCOMB_X16_Y10_N24
\uut|reg.VA_prev[18]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[18]~_Duplicate_1feeder_combout\ = \uut|Selector39~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector39~0_combout\,
	combout => \uut|reg.VA_prev[18]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y10_N25
\uut|reg.VA_prev[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[18]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N4
\uut|Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector93~0_combout\ = (\uut|reg.VA_prev[18]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(18))))) # (!\uut|reg.VA_prev[18]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[18]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(18),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector93~0_combout\);

-- Location: FF_X16_Y10_N5
\uut|reg.VA_prev2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector93~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(18));

-- Location: LCCOMB_X17_Y9_N4
\uut|reg.VA_prev[19]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[19]~_Duplicate_1feeder_combout\ = \uut|Selector38~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector38~0_combout\,
	combout => \uut|reg.VA_prev[19]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y9_N5
\uut|reg.VA_prev[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[19]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y9_N30
\uut|Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector92~0_combout\ = (\uut|reg.VA_prev[19]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(19))))) # (!\uut|reg.VA_prev[19]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[19]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(19),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector92~0_combout\);

-- Location: FF_X19_Y9_N31
\uut|reg.VA_prev2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector92~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(19));

-- Location: FF_X17_Y10_N1
\uut|reg.VA_prev[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y8_N2
\uut|Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector91~0_combout\ = (\uut|reg~12_combout\ & ((\uut|reg.VA_prev2\(20)) # ((\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[20]~_Duplicate_1_q\)))) # (!\uut|reg~12_combout\ & (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[20]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg~12_combout\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(20),
	datad => \uut|reg.VA_prev[20]~_Duplicate_1_q\,
	combout => \uut|Selector91~0_combout\);

-- Location: FF_X19_Y8_N3
\uut|reg.VA_prev2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(20));

-- Location: LCCOMB_X20_Y7_N8
\data|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~3_combout\ = (\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & ((\i_addr[1]~input_o\) # (\i_addr[0]~input_o\)))) # (!\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\) # ((\i_addr[2]~input_o\) # (\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~3_combout\);

-- Location: LCCOMB_X20_Y5_N4
\data|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~7_combout\ = (\i_addr[2]~input_o\ & (((\i_addr[1]~input_o\ & \i_addr[0]~input_o\)) # (!\i_addr[4]~input_o\))) # (!\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & (\i_addr[1]~input_o\ & \i_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~7_combout\);

-- Location: LCCOMB_X20_Y5_N12
\data|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~9_combout\ = (\i_addr[3]~input_o\ & (((!\data|Mux3~7_combout\ & \i_addr[5]~input_o\)))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\ & (\data|Mux3~3_combout\)) # (!\i_addr[5]~input_o\ & ((!\data|Mux3~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~3_combout\,
	datab => \data|Mux3~7_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~9_combout\);

-- Location: LCCOMB_X20_Y5_N16
\data|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~5_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\) # (\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~5_combout\);

-- Location: LCCOMB_X20_Y5_N10
\data|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~10_combout\ = (\data|Mux3~9_combout\) # ((!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & \data|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~9_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux3~5_combout\,
	combout => \data|Mux3~10_combout\);

-- Location: LCCOMB_X20_Y5_N6
\data|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~1_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & (\i_addr[1]~input_o\ & \i_addr[0]~input_o\))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & (!\i_addr[1]~input_o\ & !\i_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y5_N8
\data|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~0_combout\ = (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & ((!\i_addr[0]~input_o\) # (!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y5_N0
\data|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~2_combout\ = (\i_addr[3]~input_o\ & (((\data|Mux3~0_combout\ & \i_addr[5]~input_o\)))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\ & (!\data|Mux3~1_combout\)) # (!\i_addr[5]~input_o\ & ((\data|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~1_combout\,
	datab => \i_addr[3]~input_o\,
	datac => \data|Mux3~0_combout\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~2_combout\);

-- Location: LCCOMB_X20_Y5_N14
\data|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~4_combout\ = (\data|Mux3~2_combout\) # ((\data|Mux3~3_combout\ & (!\i_addr[5]~input_o\ & \i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~3_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux3~2_combout\,
	combout => \data|Mux3~4_combout\);

-- Location: LCCOMB_X20_Y5_N20
\data|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~0_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\ & ((!\data|Mux3~4_combout\))) # (!\i_addr[6]~input_o\ & (!\data|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~10_combout\,
	datab => \data|Mux3~4_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y3_N24
\data|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~1_combout\ = (\data|Mux8~8_combout\ & (!\i_addr[1]~input_o\ & !\i_addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~8_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y5_N30
\data|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~6_combout\ = (\i_addr[5]~input_o\ & (((\i_addr[3]~input_o\ & \data|Mux3~5_combout\)))) # (!\i_addr[5]~input_o\ & ((\i_addr[3]~input_o\ & (!\data|Mux3~1_combout\)) # (!\i_addr[3]~input_o\ & ((\data|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~1_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux3~5_combout\,
	combout => \data|Mux3~6_combout\);

-- Location: LCCOMB_X20_Y5_N2
\data|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~8_combout\ = (\data|Mux3~6_combout\) # ((!\i_addr[3]~input_o\ & (!\data|Mux3~7_combout\ & \i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~6_combout\,
	datab => \i_addr[3]~input_o\,
	datac => \data|Mux3~7_combout\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~8_combout\);

-- Location: LCCOMB_X20_Y5_N22
\data|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~2_combout\ = (\i_addr[7]~input_o\ & ((\data|Mux0~0_combout\ & (\data|Mux0~1_combout\)) # (!\data|Mux0~0_combout\ & ((!\data|Mux3~8_combout\))))) # (!\i_addr[7]~input_o\ & (\data|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \data|Mux0~0_combout\,
	datac => \data|Mux0~1_combout\,
	datad => \data|Mux3~8_combout\,
	combout => \data|Mux0~2_combout\);

-- Location: FF_X20_Y10_N29
\data|o_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(11));

-- Location: LCCOMB_X16_Y10_N18
\uut|reg.VA_prev[21]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[21]~_Duplicate_1feeder_combout\ = \uut|Selector36~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector36~0_combout\,
	combout => \uut|reg.VA_prev[21]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y10_N19
\uut|reg.VA_prev[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[21]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N6
\uut|Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector90~0_combout\ = (\uut|reg.VA_prev[21]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(21))))) # (!\uut|reg.VA_prev[21]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[21]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(21),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector90~0_combout\);

-- Location: FF_X16_Y10_N7
\uut|reg.VA_prev2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector90~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(21));

-- Location: LCCOMB_X17_Y8_N30
\uut|reg.VA_prev[22]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[22]~_Duplicate_1feeder_combout\ = \uut|Selector35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector35~0_combout\,
	combout => \uut|reg.VA_prev[22]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y8_N31
\uut|reg.VA_prev[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[22]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y8_N28
\uut|Selector89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector89~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[22]~_Duplicate_1_q\) # ((\uut|reg.VA_prev2\(22) & \uut|reg~12_combout\)))) # (!\uut|reg.state.CALCULATE~q\ & (((\uut|reg.VA_prev2\(22) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.VA_prev[22]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(22),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector89~0_combout\);

-- Location: FF_X16_Y8_N29
\uut|reg.VA_prev2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector89~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(22));

-- Location: FF_X17_Y10_N3
\uut|reg.VA_prev[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N10
\uut|Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector87~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[24]~_Duplicate_1_q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(24))))) # (!\uut|reg.state.CALCULATE~q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(24),
	datad => \uut|reg.VA_prev[24]~_Duplicate_1_q\,
	combout => \uut|Selector87~0_combout\);

-- Location: FF_X17_Y10_N11
\uut|reg.VA_prev2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(24));

-- Location: FF_X17_Y10_N25
\uut|reg.VA_prev[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N12
\uut|Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector86~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[25]~_Duplicate_1_q\) # ((\uut|reg.VA_prev2\(25) & \uut|reg~12_combout\)))) # (!\uut|reg.state.CALCULATE~q\ & (((\uut|reg.VA_prev2\(25) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.VA_prev[25]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(25),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector86~0_combout\);

-- Location: FF_X17_Y10_N13
\uut|reg.VA_prev2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector86~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(25));

-- Location: FF_X17_Y10_N19
\uut|reg.VA_prev[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N30
\uut|Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector85~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[26]~_Duplicate_1_q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(26))))) # (!\uut|reg.state.CALCULATE~q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(26),
	datad => \uut|reg.VA_prev[26]~_Duplicate_1_q\,
	combout => \uut|Selector85~0_combout\);

-- Location: FF_X17_Y10_N31
\uut|reg.VA_prev2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector85~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(26));

-- Location: DSPMULT_X18_Y8_N0
\uut|Mult0|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \uut|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \uut|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y8_N2
\uut|Mult0|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y8_N0
\uut|Mult0|auto_generated|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~0_combout\ = \uut|Mult0|auto_generated|mac_out4~DATAOUT15\ $ (VCC)
-- \uut|Mult0|auto_generated|op_2~1\ = CARRY(\uut|Mult0|auto_generated|mac_out4~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	combout => \uut|Mult0|auto_generated|op_2~0_combout\,
	cout => \uut|Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X22_Y8_N2
\uut|Mult0|auto_generated|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~2_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT16\ & (!\uut|Mult0|auto_generated|op_2~1\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT16\ & ((\uut|Mult0|auto_generated|op_2~1\) # (GND)))
-- \uut|Mult0|auto_generated|op_2~3\ = CARRY((!\uut|Mult0|auto_generated|op_2~1\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~1\,
	combout => \uut|Mult0|auto_generated|op_2~2_combout\,
	cout => \uut|Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X22_Y8_N4
\uut|Mult0|auto_generated|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~4_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT17\ & (\uut|Mult0|auto_generated|op_2~3\ $ (GND))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\uut|Mult0|auto_generated|op_2~3\ & VCC))
-- \uut|Mult0|auto_generated|op_2~5\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT17\ & !\uut|Mult0|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~3\,
	combout => \uut|Mult0|auto_generated|op_2~4_combout\,
	cout => \uut|Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X22_Y8_N6
\uut|Mult0|auto_generated|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~6_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT18\ & (!\uut|Mult0|auto_generated|op_2~5\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT18\ & ((\uut|Mult0|auto_generated|op_2~5\) # (GND)))
-- \uut|Mult0|auto_generated|op_2~7\ = CARRY((!\uut|Mult0|auto_generated|op_2~5\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~5\,
	combout => \uut|Mult0|auto_generated|op_2~6_combout\,
	cout => \uut|Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X22_Y8_N8
\uut|Mult0|auto_generated|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~8_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT19\ & (\uut|Mult0|auto_generated|op_2~7\ $ (GND))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\uut|Mult0|auto_generated|op_2~7\ & VCC))
-- \uut|Mult0|auto_generated|op_2~9\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT19\ & !\uut|Mult0|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~7\,
	combout => \uut|Mult0|auto_generated|op_2~8_combout\,
	cout => \uut|Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X22_Y8_N10
\uut|Mult0|auto_generated|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~10_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT20\ & (!\uut|Mult0|auto_generated|op_2~9\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT20\ & ((\uut|Mult0|auto_generated|op_2~9\) # (GND)))
-- \uut|Mult0|auto_generated|op_2~11\ = CARRY((!\uut|Mult0|auto_generated|op_2~9\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~9\,
	combout => \uut|Mult0|auto_generated|op_2~10_combout\,
	cout => \uut|Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X22_Y8_N12
\uut|Mult0|auto_generated|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~12_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT21\ & (\uut|Mult0|auto_generated|op_2~11\ $ (GND))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT21\ & (!\uut|Mult0|auto_generated|op_2~11\ & VCC))
-- \uut|Mult0|auto_generated|op_2~13\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT21\ & !\uut|Mult0|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_2~11\,
	combout => \uut|Mult0|auto_generated|op_2~12_combout\,
	cout => \uut|Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X22_Y8_N14
\uut|Mult0|auto_generated|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_2~14_combout\ = \uut|Mult0|auto_generated|op_2~13\ $ (\uut|Mult0|auto_generated|mac_out4~DATAOUT22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult0|auto_generated|mac_out4~DATAOUT22\,
	cin => \uut|Mult0|auto_generated|op_2~13\,
	combout => \uut|Mult0|auto_generated|op_2~14_combout\);

-- Location: LCCOMB_X17_Y9_N8
\uut|reg.VA_prev[8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[8]~_Duplicate_1feeder_combout\ = \uut|Selector49~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector49~0_combout\,
	combout => \uut|reg.VA_prev[8]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y9_N9
\uut|reg.VA_prev[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[8]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y10_N2
\uut|Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector103~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[8]~_Duplicate_1_q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(8))))) # (!\uut|reg.state.CALCULATE~q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(8),
	datad => \uut|reg.VA_prev[8]~_Duplicate_1_q\,
	combout => \uut|Selector103~0_combout\);

-- Location: FF_X19_Y10_N3
\uut|reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector103~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(8));

-- Location: LCCOMB_X20_Y5_N24
\data|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~11_combout\ = (\i_addr[7]~input_o\ & (((\data|Mux3~8_combout\) # (\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & (\data|Mux3~10_combout\ & ((!\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~10_combout\,
	datab => \data|Mux3~8_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux3~11_combout\);

-- Location: LCCOMB_X20_Y5_N26
\data|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~12_combout\ = (!\i_addr[3]~input_o\ & ((\i_addr[2]~input_o\) # ((\i_addr[1]~input_o\) # (\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux3~12_combout\);

-- Location: LCCOMB_X20_Y5_N28
\data|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~13_combout\ = (\data|Mux3~12_combout\ & (!\i_addr[5]~input_o\ & !\i_addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~12_combout\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[4]~input_o\,
	combout => \data|Mux3~13_combout\);

-- Location: LCCOMB_X20_Y5_N18
\data|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~14_combout\ = (\i_addr[6]~input_o\ & ((\data|Mux3~11_combout\ & ((\data|Mux3~13_combout\))) # (!\data|Mux3~11_combout\ & (\data|Mux3~4_combout\)))) # (!\i_addr[6]~input_o\ & (\data|Mux3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[6]~input_o\,
	datab => \data|Mux3~11_combout\,
	datac => \data|Mux3~4_combout\,
	datad => \data|Mux3~13_combout\,
	combout => \data|Mux3~14_combout\);

-- Location: FF_X20_Y10_N23
\data|o_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux3~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(8));

-- Location: FF_X19_Y7_N31
\uut|reg.VA_prev[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N0
\uut|Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector102~0_combout\ = (\uut|reg.VA_prev[9]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(9))))) # (!\uut|reg.VA_prev[9]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[9]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(9),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector102~0_combout\);

-- Location: FF_X19_Y7_N1
\uut|reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector102~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(9));

-- Location: FF_X17_Y9_N7
\uut|reg.VA_prev[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y10_N4
\uut|Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector101~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[10]~_Duplicate_1_q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(10))))) # (!\uut|reg.state.CALCULATE~q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(10),
	datad => \uut|reg.VA_prev[10]~_Duplicate_1_q\,
	combout => \uut|Selector101~0_combout\);

-- Location: FF_X19_Y10_N5
\uut|reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector101~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(10));

-- Location: LCCOMB_X19_Y6_N28
\data|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~2_combout\ = (\i_addr[3]~input_o\ & ((\i_addr[2]~input_o\ & (\i_addr[6]~input_o\)) # (!\i_addr[2]~input_o\ & ((\i_addr[7]~input_o\))))) # (!\i_addr[3]~input_o\ & (\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y6_N6
\data|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~1_combout\ = (\i_addr[6]~input_o\ & ((\i_addr[3]~input_o\ & ((\i_addr[7]~input_o\) # (!\i_addr[2]~input_o\))) # (!\i_addr[3]~input_o\ & (\i_addr[2]~input_o\)))) # (!\i_addr[6]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y6_N4
\data|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~0_combout\ = \i_addr[6]~input_o\ $ (((\i_addr[2]~input_o\ & ((!\i_addr[7]~input_o\) # (!\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y6_N6
\data|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~5_combout\ = (\data|Mux1~2_combout\ & ((\data|Mux1~1_combout\) # ((\i_addr[4]~input_o\) # (\data|Mux1~0_combout\)))) # (!\data|Mux1~2_combout\ & (\data|Mux1~1_combout\ & (!\i_addr[4]~input_o\ & \data|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~2_combout\,
	datab => \data|Mux1~1_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux1~0_combout\,
	combout => \data|Mux1~5_combout\);

-- Location: LCCOMB_X17_Y6_N8
\data|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~4_combout\ = (\data|Mux1~2_combout\ & ((\data|Mux1~1_combout\) # ((\i_addr[4]~input_o\ & \data|Mux1~0_combout\)))) # (!\data|Mux1~2_combout\ & (\data|Mux1~1_combout\ $ (((!\i_addr[4]~input_o\ & \data|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~2_combout\,
	datab => \data|Mux1~1_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux1~0_combout\,
	combout => \data|Mux1~4_combout\);

-- Location: LCCOMB_X17_Y6_N2
\data|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~3_combout\ = (\i_addr[4]~input_o\ & (!\data|Mux1~2_combout\ & (\data|Mux1~1_combout\ $ (!\data|Mux1~0_combout\)))) # (!\i_addr[4]~input_o\ & ((\data|Mux1~1_combout\ & ((!\data|Mux1~0_combout\))) # (!\data|Mux1~1_combout\ & 
-- (\data|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~2_combout\,
	datab => \data|Mux1~1_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux1~0_combout\,
	combout => \data|Mux1~3_combout\);

-- Location: LCCOMB_X17_Y6_N10
\data|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~7_combout\ = (\data|Mux1~4_combout\ & ((\i_addr[5]~input_o\) # ((\data|Mux1~5_combout\ & !\data|Mux1~3_combout\)))) # (!\data|Mux1~4_combout\ & (\data|Mux1~5_combout\ & ((\data|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~5_combout\,
	datab => \data|Mux1~4_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \data|Mux1~3_combout\,
	combout => \data|Mux1~7_combout\);

-- Location: LCCOMB_X17_Y6_N24
\data|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~8_combout\ = (\data|Mux1~7_combout\ & (!\data|Mux1~3_combout\ & (\i_addr[1]~input_o\ $ (\i_addr[0]~input_o\)))) # (!\data|Mux1~7_combout\ & (\data|Mux1~3_combout\ $ (((!\i_addr[1]~input_o\ & !\i_addr[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~7_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \data|Mux1~3_combout\,
	combout => \data|Mux1~8_combout\);

-- Location: LCCOMB_X17_Y6_N0
\data|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~6_combout\ = (\i_addr[5]~input_o\ & ((\data|Mux1~5_combout\) # ((!\data|Mux1~4_combout\ & \data|Mux1~3_combout\)))) # (!\i_addr[5]~input_o\ & (\data|Mux1~4_combout\ & ((!\data|Mux1~3_combout\) # (!\data|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~5_combout\,
	datab => \data|Mux1~4_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \data|Mux1~3_combout\,
	combout => \data|Mux1~6_combout\);

-- Location: LCCOMB_X17_Y6_N14
\data|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~9_combout\ = (\data|Mux1~8_combout\ & ((\i_addr[0]~input_o\ $ (!\i_addr[1]~input_o\)) # (!\data|Mux1~6_combout\))) # (!\data|Mux1~8_combout\ & (!\data|Mux1~6_combout\ & (\i_addr[0]~input_o\ $ (!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux1~8_combout\,
	datac => \data|Mux1~6_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux1~9_combout\);

-- Location: FF_X20_Y10_N27
\data|o_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux1~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(10));

-- Location: LCCOMB_X19_Y7_N24
\uut|reg.VA_prev[11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\ = \uut|Selector46~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector46~0_combout\,
	combout => \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y7_N25
\uut|reg.VA_prev[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N6
\uut|Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector100~0_combout\ = (\uut|reg.VA_prev[11]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(11))))) # (!\uut|reg.VA_prev[11]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[11]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(11),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector100~0_combout\);

-- Location: FF_X19_Y7_N7
\uut|reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(11));

-- Location: LCCOMB_X19_Y7_N10
\uut|reg.VA_prev[12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[12]~_Duplicate_1feeder_combout\ = \uut|Selector45~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector45~0_combout\,
	combout => \uut|reg.VA_prev[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y7_N11
\uut|reg.VA_prev[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[12]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[12]~_Duplicate_1_q\);

-- Location: FF_X17_Y10_N15
\uut|reg.VA_prev[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N8
\uut|Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector98~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[13]~_Duplicate_1_q\) # ((\uut|reg.VA_prev2\(13) & \uut|reg~12_combout\)))) # (!\uut|reg.state.CALCULATE~q\ & (((\uut|reg.VA_prev2\(13) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.VA_prev[13]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(13),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector98~0_combout\);

-- Location: FF_X17_Y10_N9
\uut|reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector98~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(13));

-- Location: FF_X19_Y7_N21
\uut|reg.VA_prev[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[16]~_Duplicate_1_q\);

-- Location: FF_X19_Y7_N23
\uut|reg.VA_prev[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[17]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N4
\uut|Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector94~0_combout\ = (\uut|reg.VA_prev[17]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(17))))) # (!\uut|reg.VA_prev[17]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[17]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(17),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector94~0_combout\);

-- Location: FF_X19_Y7_N5
\uut|reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector94~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(17));

-- Location: DSPMULT_X18_Y10_N0
\uut|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \uut|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y10_N2
\uut|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y10_N10
\uut|Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~0_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\uut|Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\uut|Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \uut|Mult0|auto_generated|op_1~1\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & \uut|Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \uut|Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \uut|Mult0|auto_generated|op_1~0_combout\,
	cout => \uut|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X21_Y10_N12
\uut|Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~2_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ & (\uut|Mult0|auto_generated|op_1~1\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\uut|Mult0|auto_generated|op_1~1\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\uut|Mult0|auto_generated|op_1~1\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((\uut|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~3\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\uut|Mult0|auto_generated|mac_out4~DATAOUT1\ & !\uut|Mult0|auto_generated|op_1~1\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\uut|Mult0|auto_generated|op_1~1\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~1\,
	combout => \uut|Mult0|auto_generated|op_1~2_combout\,
	cout => \uut|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X21_Y10_N14
\uut|Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~4_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\uut|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~5\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\uut|Mult0|auto_generated|op_1~3\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\uut|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~3\,
	combout => \uut|Mult0|auto_generated|op_1~4_combout\,
	cout => \uut|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X21_Y10_N16
\uut|Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~6_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\uut|Mult0|auto_generated|op_1~5\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\uut|Mult0|auto_generated|op_1~5\)))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\uut|Mult0|auto_generated|op_1~5\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\uut|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~7\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\uut|Mult0|auto_generated|op_1~5\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((!\uut|Mult0|auto_generated|op_1~5\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~5\,
	combout => \uut|Mult0|auto_generated|op_1~6_combout\,
	cout => \uut|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X21_Y10_N18
\uut|Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~8_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\uut|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~9\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\uut|Mult0|auto_generated|op_1~7\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\uut|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~7\,
	combout => \uut|Mult0|auto_generated|op_1~8_combout\,
	cout => \uut|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X21_Y10_N20
\uut|Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~10_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ & (\uut|Mult0|auto_generated|op_1~9\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\uut|Mult0|auto_generated|op_1~9\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\uut|Mult0|auto_generated|op_1~9\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\uut|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~11\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\uut|Mult0|auto_generated|mac_out4~DATAOUT5\ & !\uut|Mult0|auto_generated|op_1~9\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\uut|Mult0|auto_generated|op_1~9\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~9\,
	combout => \uut|Mult0|auto_generated|op_1~10_combout\,
	cout => \uut|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X21_Y10_N22
\uut|Mult0|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~12_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (!\uut|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~13\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT6\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT24\) # (!\uut|Mult0|auto_generated|op_1~11\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT6\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\uut|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~11\,
	combout => \uut|Mult0|auto_generated|op_1~12_combout\,
	cout => \uut|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X21_Y10_N24
\uut|Mult0|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~14_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\uut|Mult0|auto_generated|op_1~13\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\uut|Mult0|auto_generated|op_1~13\)))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\uut|Mult0|auto_generated|op_1~13\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\uut|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~15\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\uut|Mult0|auto_generated|op_1~13\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\uut|Mult0|auto_generated|op_1~13\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~13\,
	combout => \uut|Mult0|auto_generated|op_1~14_combout\,
	cout => \uut|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X21_Y10_N26
\uut|Mult0|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~16_combout\ = ((\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\uut|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\uut|Mult0|auto_generated|op_1~15\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~17\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\uut|Mult0|auto_generated|op_1~15\))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- (\uut|Mult0|auto_generated|mac_out4~DATAOUT8\ & !\uut|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~15\,
	combout => \uut|Mult0|auto_generated|op_1~16_combout\,
	cout => \uut|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X21_Y10_N28
\uut|Mult0|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~18_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ & (\uut|Mult0|auto_generated|op_1~17\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\uut|Mult0|auto_generated|op_1~17\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\uut|Mult0|auto_generated|op_1~17\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\uut|Mult0|auto_generated|op_1~17\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~19\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\uut|Mult0|auto_generated|mac_out4~DATAOUT9\ & !\uut|Mult0|auto_generated|op_1~17\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- ((!\uut|Mult0|auto_generated|op_1~17\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~17\,
	combout => \uut|Mult0|auto_generated|op_1~18_combout\,
	cout => \uut|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X21_Y10_N30
\uut|Mult0|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~20_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\uut|Mult0|auto_generated|op_1~19\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~21\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT10\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\uut|Mult0|auto_generated|op_1~19\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT10\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\uut|Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~19\,
	combout => \uut|Mult0|auto_generated|op_1~20_combout\,
	cout => \uut|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X21_Y9_N0
\uut|Mult0|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~22_combout\ = (\uut|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\uut|Mult0|auto_generated|op_1~21\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\uut|Mult0|auto_generated|op_1~21\)))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\uut|Mult0|auto_generated|op_1~21\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\uut|Mult0|auto_generated|op_1~21\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~23\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\uut|Mult0|auto_generated|op_1~21\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\uut|Mult0|auto_generated|op_1~21\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~21\,
	combout => \uut|Mult0|auto_generated|op_1~22_combout\,
	cout => \uut|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X21_Y9_N2
\uut|Mult0|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~24_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT12\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT30\ $ (!\uut|Mult0|auto_generated|op_1~23\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~25\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT12\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT30\) # (!\uut|Mult0|auto_generated|op_1~23\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT12\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT30\ & !\uut|Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~23\,
	combout => \uut|Mult0|auto_generated|op_1~24_combout\,
	cout => \uut|Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X21_Y9_N4
\uut|Mult0|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~26_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ & (\uut|Mult0|auto_generated|op_1~25\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\uut|Mult0|auto_generated|op_1~25\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\uut|Mult0|auto_generated|op_1~25\)) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- ((\uut|Mult0|auto_generated|op_1~25\) # (GND)))))
-- \uut|Mult0|auto_generated|op_1~27\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\uut|Mult0|auto_generated|mac_out4~DATAOUT13\ & !\uut|Mult0|auto_generated|op_1~25\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- ((!\uut|Mult0|auto_generated|op_1~25\) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \uut|Mult0|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~25\,
	combout => \uut|Mult0|auto_generated|op_1~26_combout\,
	cout => \uut|Mult0|auto_generated|op_1~27\);

-- Location: LCCOMB_X19_Y6_N16
\data|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~1_combout\ = (\i_addr[6]~input_o\ & ((\i_addr[3]~input_o\ & ((\i_addr[7]~input_o\) # (!\i_addr[2]~input_o\))) # (!\i_addr[3]~input_o\ & (\i_addr[2]~input_o\)))) # (!\i_addr[6]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y6_N10
\data|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~2_combout\ = (\i_addr[3]~input_o\ & ((\i_addr[2]~input_o\ & (\i_addr[6]~input_o\)) # (!\i_addr[2]~input_o\ & ((\i_addr[7]~input_o\))))) # (!\i_addr[3]~input_o\ & (\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y6_N14
\data|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~0_combout\ = \i_addr[6]~input_o\ $ (((\i_addr[2]~input_o\ & ((!\i_addr[7]~input_o\) # (!\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y6_N26
\data|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~4_combout\ = (\data|Mux2~1_combout\ & ((\data|Mux2~2_combout\) # ((\i_addr[4]~input_o\) # (!\data|Mux2~0_combout\)))) # (!\data|Mux2~1_combout\ & (\data|Mux2~0_combout\ & (\data|Mux2~2_combout\ $ (!\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~1_combout\,
	datab => \data|Mux2~2_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux2~0_combout\,
	combout => \data|Mux2~4_combout\);

-- Location: LCCOMB_X20_Y6_N16
\data|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~3_combout\ = (\i_addr[4]~input_o\ & (!\data|Mux2~2_combout\ & (\data|Mux2~1_combout\ $ (!\data|Mux2~0_combout\)))) # (!\i_addr[4]~input_o\ & ((\data|Mux2~1_combout\ & ((!\data|Mux2~0_combout\))) # (!\data|Mux2~1_combout\ & 
-- (\data|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~1_combout\,
	datab => \data|Mux2~2_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux2~0_combout\,
	combout => \data|Mux2~3_combout\);

-- Location: LCCOMB_X20_Y6_N8
\data|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~5_combout\ = (\data|Mux2~1_combout\ & ((\data|Mux2~2_combout\) # ((!\i_addr[4]~input_o\ & \data|Mux2~0_combout\)))) # (!\data|Mux2~1_combout\ & (\data|Mux2~2_combout\ & ((\i_addr[4]~input_o\) # (\data|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~1_combout\,
	datab => \data|Mux2~2_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux2~0_combout\,
	combout => \data|Mux2~5_combout\);

-- Location: LCCOMB_X20_Y6_N30
\data|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~6_combout\ = (\data|Mux2~3_combout\ & (\data|Mux2~5_combout\ $ (((!\data|Mux2~4_combout\ & \i_addr[0]~input_o\))))) # (!\data|Mux2~3_combout\ & ((\data|Mux2~5_combout\ & (!\data|Mux2~4_combout\)) # (!\data|Mux2~5_combout\ & 
-- ((\i_addr[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~4_combout\,
	datab => \data|Mux2~3_combout\,
	datac => \data|Mux2~5_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux2~6_combout\);

-- Location: LCCOMB_X20_Y6_N14
\data|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~8_combout\ = (\data|Mux2~4_combout\ & ((\data|Mux2~3_combout\ & (!\data|Mux2~5_combout\ & !\i_addr[0]~input_o\)) # (!\data|Mux2~3_combout\ & (\data|Mux2~5_combout\)))) # (!\data|Mux2~4_combout\ & (((\data|Mux2~5_combout\ & 
-- \i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~4_combout\,
	datab => \data|Mux2~3_combout\,
	datac => \data|Mux2~5_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux2~8_combout\);

-- Location: LCCOMB_X20_Y6_N20
\data|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~7_combout\ = (\data|Mux2~4_combout\ & (!\data|Mux2~3_combout\ & ((\data|Mux2~5_combout\) # (\i_addr[0]~input_o\)))) # (!\data|Mux2~4_combout\ & (\data|Mux2~3_combout\ & (\data|Mux2~5_combout\ $ (!\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~4_combout\,
	datab => \data|Mux2~3_combout\,
	datac => \data|Mux2~5_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux2~7_combout\);

-- Location: LCCOMB_X20_Y6_N6
\data|Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~10_combout\ = (\data|Mux2~8_combout\ & (\data|Mux2~6_combout\ $ (((\data|Mux2~7_combout\) # (!\i_addr[1]~input_o\))))) # (!\data|Mux2~8_combout\ & (\data|Mux2~7_combout\ & (\data|Mux2~6_combout\ $ (\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~6_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \data|Mux2~8_combout\,
	datad => \data|Mux2~7_combout\,
	combout => \data|Mux2~10_combout\);

-- Location: LCCOMB_X20_Y6_N28
\data|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~9_combout\ = (\data|Mux2~6_combout\ & (!\data|Mux2~7_combout\ & ((\i_addr[1]~input_o\) # (!\data|Mux2~8_combout\)))) # (!\data|Mux2~6_combout\ & ((\data|Mux2~8_combout\) # ((!\i_addr[1]~input_o\ & \data|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~6_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \data|Mux2~8_combout\,
	datad => \data|Mux2~7_combout\,
	combout => \data|Mux2~9_combout\);

-- Location: LCCOMB_X20_Y6_N0
\data|Mux2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~11_combout\ = \data|Mux2~9_combout\ $ (((\data|Mux2~10_combout\) # (\i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~10_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \data|Mux2~9_combout\,
	combout => \data|Mux2~11_combout\);

-- Location: FF_X20_Y10_N25
\data|o_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux2~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(9));

-- Location: LCCOMB_X19_Y6_N24
\data|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~2_combout\ = (\i_addr[5]~input_o\ & (((\i_addr[6]~input_o\ & \i_addr[7]~input_o\)))) # (!\i_addr[5]~input_o\ & ((\i_addr[2]~input_o\ & (\i_addr[6]~input_o\)) # (!\i_addr[2]~input_o\ & ((\i_addr[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~2_combout\);

-- Location: LCCOMB_X19_Y6_N30
\data|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~1_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\))) # (!\i_addr[6]~input_o\ & ((\i_addr[5]~input_o\) # (!\i_addr[7]~input_o\))))) # (!\i_addr[2]~input_o\ & (\i_addr[6]~input_o\ & ((\i_addr[5]~input_o\) # 
-- (!\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y6_N0
\data|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~0_combout\ = (\i_addr[5]~input_o\ & (!\i_addr[7]~input_o\ & ((!\i_addr[6]~input_o\) # (!\i_addr[2]~input_o\)))) # (!\i_addr[5]~input_o\ & (\i_addr[7]~input_o\ & ((\i_addr[2]~input_o\) # (\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~0_combout\);

-- Location: LCCOMB_X20_Y7_N26
\data|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~4_combout\ = (\data|Mux10~2_combout\ & ((\data|Mux10~1_combout\) # ((\i_addr[3]~input_o\ & \data|Mux10~0_combout\)))) # (!\data|Mux10~2_combout\ & (\data|Mux10~1_combout\ $ (((!\i_addr[3]~input_o\ & \data|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~2_combout\,
	datab => \data|Mux10~1_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~0_combout\,
	combout => \data|Mux10~4_combout\);

-- Location: LCCOMB_X20_Y7_N0
\data|Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~7_combout\ = (\data|Mux10~2_combout\ & ((\data|Mux10~1_combout\) # ((\i_addr[3]~input_o\) # (\data|Mux10~0_combout\)))) # (!\data|Mux10~2_combout\ & (\data|Mux10~1_combout\ & (!\i_addr[3]~input_o\ & \data|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~2_combout\,
	datab => \data|Mux10~1_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~0_combout\,
	combout => \data|Mux10~7_combout\);

-- Location: LCCOMB_X20_Y7_N20
\data|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~3_combout\ = (\i_addr[3]~input_o\ & (!\data|Mux10~2_combout\ & (\data|Mux10~1_combout\ $ (!\data|Mux10~0_combout\)))) # (!\i_addr[3]~input_o\ & (\data|Mux10~2_combout\ $ (((\data|Mux10~1_combout\ & !\data|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~2_combout\,
	datab => \data|Mux10~1_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~0_combout\,
	combout => \data|Mux10~3_combout\);

-- Location: LCCOMB_X20_Y7_N6
\data|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~1_combout\ = (!\data|Mux10~7_combout\ & (\data|Mux10~3_combout\ $ (((\data|Mux10~4_combout\ & \i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \data|Mux10~7_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux4~1_combout\);

-- Location: LCCOMB_X20_Y7_N16
\data|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~0_combout\ = (\data|Mux10~4_combout\ & ((\data|Mux10~7_combout\) # ((!\i_addr[4]~input_o\ & \data|Mux10~3_combout\)))) # (!\data|Mux10~4_combout\ & (\i_addr[4]~input_o\ $ (((\data|Mux10~7_combout\ & !\data|Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \data|Mux10~7_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y7_N12
\data|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~2_combout\ = (\i_addr[4]~input_o\ & (((\data|Mux10~7_combout\)))) # (!\i_addr[4]~input_o\ & ((\data|Mux10~4_combout\ & ((!\data|Mux10~3_combout\))) # (!\data|Mux10~4_combout\ & (\data|Mux10~7_combout\ & \data|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \data|Mux10~7_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux4~2_combout\);

-- Location: LCCOMB_X20_Y7_N4
\data|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~4_combout\ = (\data|Mux4~1_combout\ & ((\data|Mux4~0_combout\) # ((!\data|Mux4~2_combout\ & !\i_addr[0]~input_o\)))) # (!\data|Mux4~1_combout\ & ((\i_addr[0]~input_o\ & ((\data|Mux4~2_combout\))) # (!\i_addr[0]~input_o\ & 
-- (\data|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~1_combout\,
	datab => \data|Mux4~0_combout\,
	datac => \data|Mux4~2_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux4~4_combout\);

-- Location: LCCOMB_X20_Y7_N18
\data|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~3_combout\ = (\data|Mux4~0_combout\ & ((\data|Mux4~2_combout\) # ((\data|Mux4~1_combout\ & \i_addr[0]~input_o\)))) # (!\data|Mux4~0_combout\ & (\data|Mux4~1_combout\ $ (\data|Mux4~2_combout\ $ (\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~1_combout\,
	datab => \data|Mux4~0_combout\,
	datac => \data|Mux4~2_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux4~3_combout\);

-- Location: LCCOMB_X20_Y7_N30
\data|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~5_combout\ = \data|Mux4~4_combout\ $ (((\data|Mux4~3_combout\) # (!\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_addr[1]~input_o\,
	datac => \data|Mux4~4_combout\,
	datad => \data|Mux4~3_combout\,
	combout => \data|Mux4~5_combout\);

-- Location: FF_X20_Y10_N21
\data|o_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(7));

-- Location: LCCOMB_X19_Y6_N20
\data|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~0_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\ & ((\i_addr[6]~input_o\) # (\i_addr[7]~input_o\))) # (!\i_addr[4]~input_o\ & ((!\i_addr[7]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[7]~input_o\) # ((!\i_addr[4]~input_o\ & 
-- \i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y6_N8
\data|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~2_combout\ = (\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\) # ((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y6_N18
\data|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~1_combout\ = (\i_addr[4]~input_o\ & (\i_addr[7]~input_o\ $ (((!\i_addr[2]~input_o\ & !\i_addr[6]~input_o\))))) # (!\i_addr[4]~input_o\ & ((\i_addr[2]~input_o\ & (\i_addr[6]~input_o\)) # (!\i_addr[2]~input_o\ & (!\i_addr[6]~input_o\ & 
-- \i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y6_N28
\data|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~3_combout\ = (\i_addr[3]~input_o\ & (((!\data|Mux5~2_combout\ & !\data|Mux5~1_combout\)))) # (!\i_addr[3]~input_o\ & (\data|Mux5~2_combout\ $ (((\data|Mux5~0_combout\ & \data|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~0_combout\,
	datab => \data|Mux5~2_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux5~1_combout\,
	combout => \data|Mux5~3_combout\);

-- Location: LCCOMB_X17_Y6_N22
\data|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~4_combout\ = (\data|Mux5~1_combout\ & ((\data|Mux5~2_combout\) # ((!\data|Mux5~0_combout\ & \i_addr[3]~input_o\)))) # (!\data|Mux5~1_combout\ & (\data|Mux5~0_combout\ $ (((\data|Mux5~2_combout\ & !\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~0_combout\,
	datab => \data|Mux5~2_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux5~1_combout\,
	combout => \data|Mux5~4_combout\);

-- Location: LCCOMB_X17_Y6_N16
\data|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~5_combout\ = (\data|Mux5~2_combout\ & ((\data|Mux5~0_combout\) # ((\data|Mux5~1_combout\)))) # (!\data|Mux5~2_combout\ & (\data|Mux5~1_combout\ & (\data|Mux5~0_combout\ $ (!\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~0_combout\,
	datab => \data|Mux5~2_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux5~1_combout\,
	combout => \data|Mux5~5_combout\);

-- Location: LCCOMB_X17_Y6_N12
\data|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~7_combout\ = (\data|Mux5~3_combout\ & ((\i_addr[0]~input_o\ & ((!\data|Mux5~5_combout\))) # (!\i_addr[0]~input_o\ & (\data|Mux5~4_combout\ & \data|Mux5~5_combout\)))) # (!\data|Mux5~3_combout\ & (((\data|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux5~3_combout\,
	datac => \data|Mux5~4_combout\,
	datad => \data|Mux5~5_combout\,
	combout => \data|Mux5~7_combout\);

-- Location: LCCOMB_X17_Y6_N18
\data|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~8_combout\ = (\i_addr[0]~input_o\ & (((\data|Mux5~5_combout\)))) # (!\i_addr[0]~input_o\ & ((\data|Mux5~3_combout\ & ((\data|Mux5~4_combout\) # (\data|Mux5~5_combout\))) # (!\data|Mux5~3_combout\ & (\data|Mux5~4_combout\ & 
-- \data|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux5~3_combout\,
	datac => \data|Mux5~4_combout\,
	datad => \data|Mux5~5_combout\,
	combout => \data|Mux5~8_combout\);

-- Location: LCCOMB_X17_Y6_N26
\data|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~6_combout\ = (\data|Mux5~5_combout\ & ((\data|Mux5~3_combout\) # ((!\i_addr[0]~input_o\ & !\data|Mux5~4_combout\)))) # (!\data|Mux5~5_combout\ & ((\i_addr[0]~input_o\ & ((\data|Mux5~4_combout\))) # (!\i_addr[0]~input_o\ & (\data|Mux5~3_combout\ 
-- & !\data|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux5~3_combout\,
	datac => \data|Mux5~4_combout\,
	datad => \data|Mux5~5_combout\,
	combout => \data|Mux5~6_combout\);

-- Location: LCCOMB_X17_Y6_N30
\data|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~10_combout\ = (\data|Mux5~6_combout\ & ((\data|Mux5~7_combout\ $ (\i_addr[1]~input_o\)) # (!\data|Mux5~8_combout\))) # (!\data|Mux5~6_combout\ & ((\i_addr[1]~input_o\ & (\data|Mux5~7_combout\)) # (!\i_addr[1]~input_o\ & 
-- ((\data|Mux5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~7_combout\,
	datab => \data|Mux5~8_combout\,
	datac => \data|Mux5~6_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux5~10_combout\);

-- Location: LCCOMB_X17_Y6_N20
\data|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~9_combout\ = \data|Mux5~8_combout\ $ (((\data|Mux5~7_combout\ & ((!\i_addr[1]~input_o\) # (!\data|Mux5~6_combout\))) # (!\data|Mux5~7_combout\ & ((\i_addr[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~7_combout\,
	datab => \data|Mux5~8_combout\,
	datac => \data|Mux5~6_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux5~9_combout\);

-- Location: LCCOMB_X17_Y6_N4
\data|Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~11_combout\ = \data|Mux5~9_combout\ $ (((!\data|Mux5~10_combout\ & \i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~10_combout\,
	datab => \data|Mux5~9_combout\,
	datac => \i_addr[5]~input_o\,
	combout => \data|Mux5~11_combout\);

-- Location: FF_X20_Y10_N19
\data|o_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux5~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(6));

-- Location: LCCOMB_X17_Y5_N6
\data|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~0_combout\ = (\i_addr[5]~input_o\ & (\i_addr[2]~input_o\ $ (((!\i_addr[4]~input_o\))))) # (!\i_addr[5]~input_o\ & (\i_addr[2]~input_o\ & ((!\i_addr[4]~input_o\) # (!\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[3]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y5_N20
\data|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~1_combout\ = \i_addr[3]~input_o\ $ (((\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[3]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y5_N30
\data|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~2_combout\ = (\i_addr[2]~input_o\ & (\i_addr[5]~input_o\ $ (((!\i_addr[3]~input_o\ & \i_addr[4]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[5]~input_o\ & (\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[3]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y5_N12
\data|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~3_combout\ = (\data|Mux6~0_combout\ & ((\data|Mux6~1_combout\ & ((\i_addr[1]~input_o\))) # (!\data|Mux6~1_combout\ & (!\data|Mux6~2_combout\ & !\i_addr[1]~input_o\)))) # (!\data|Mux6~0_combout\ & (\data|Mux6~1_combout\ $ (\data|Mux6~2_combout\ 
-- $ (\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~0_combout\,
	datab => \data|Mux6~1_combout\,
	datac => \data|Mux6~2_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux6~3_combout\);

-- Location: LCCOMB_X17_Y5_N0
\data|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~5_combout\ = (\data|Mux6~1_combout\ & (\data|Mux6~2_combout\ $ (((\data|Mux6~0_combout\) # (\i_addr[1]~input_o\))))) # (!\data|Mux6~1_combout\ & (\data|Mux6~2_combout\ & (\data|Mux6~0_combout\ $ (!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~0_combout\,
	datab => \data|Mux6~1_combout\,
	datac => \data|Mux6~2_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux6~5_combout\);

-- Location: LCCOMB_X17_Y5_N14
\data|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~4_combout\ = (\data|Mux6~0_combout\ & (!\data|Mux6~1_combout\ & ((\i_addr[1]~input_o\)))) # (!\data|Mux6~0_combout\ & (\data|Mux6~1_combout\ & ((\data|Mux6~2_combout\) # (!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~0_combout\,
	datab => \data|Mux6~1_combout\,
	datac => \data|Mux6~2_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y5_N16
\data|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~7_combout\ = (\data|Mux6~5_combout\ & (!\data|Mux6~3_combout\ & (!\data|Mux6~4_combout\ & !\i_addr[6]~input_o\))) # (!\data|Mux6~5_combout\ & (\data|Mux6~4_combout\ $ (((\data|Mux6~3_combout\ & \i_addr[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~3_combout\,
	datab => \data|Mux6~5_combout\,
	datac => \data|Mux6~4_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux6~7_combout\);

-- Location: LCCOMB_X17_Y5_N18
\data|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~6_combout\ = (\data|Mux6~4_combout\ & ((\data|Mux6~3_combout\ & ((\i_addr[6]~input_o\))) # (!\data|Mux6~3_combout\ & (\data|Mux6~5_combout\)))) # (!\data|Mux6~4_combout\ & (!\data|Mux6~5_combout\ & (\data|Mux6~3_combout\ $ 
-- (\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~3_combout\,
	datab => \data|Mux6~5_combout\,
	datac => \data|Mux6~4_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux6~6_combout\);

-- Location: LCCOMB_X17_Y5_N2
\data|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~8_combout\ = (\data|Mux6~7_combout\ & (\i_addr[7]~input_o\ $ (\data|Mux6~6_combout\))) # (!\data|Mux6~7_combout\ & (!\i_addr[7]~input_o\ & !\data|Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|Mux6~7_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux6~6_combout\,
	combout => \data|Mux6~8_combout\);

-- Location: FF_X20_Y10_N17
\data|o_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux6~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(5));

-- Location: LCCOMB_X19_Y5_N12
\data|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~3_combout\ = (\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ $ (((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\) # ((!\i_addr[2]~input_o\ & \i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y5_N4
\data|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~1_combout\ = (\i_addr[3]~input_o\ & (((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\)) # (!\i_addr[5]~input_o\))) # (!\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ $ (((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y5_N14
\data|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~0_combout\ = (\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ $ (((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\))))) # (!\i_addr[3]~input_o\ & ((\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[2]~input_o\ & 
-- (\i_addr[4]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y5_N30
\data|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~2_combout\ = (!\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\ & (!\data|Mux7~1_combout\)) # (!\i_addr[7]~input_o\ & ((\data|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux7~1_combout\,
	datab => \i_addr[7]~input_o\,
	datac => \data|Mux7~0_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y5_N18
\data|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~4_combout\ = (\data|Mux7~2_combout\) # ((!\data|Mux7~3_combout\ & (!\i_addr[7]~input_o\ & \i_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux7~3_combout\,
	datab => \i_addr[7]~input_o\,
	datac => \data|Mux7~2_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux7~4_combout\);

-- Location: FF_X20_Y10_N15
\data|o_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux7~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(4));

-- Location: LCCOMB_X19_Y6_N12
\data|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~1_combout\ = (\i_addr[2]~input_o\ & (\i_addr[6]~input_o\ $ (((\i_addr[5]~input_o\) # (!\i_addr[7]~input_o\))))) # (!\i_addr[2]~input_o\ & (((\i_addr[6]~input_o\ & !\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux9~1_combout\);

-- Location: LCCOMB_X19_Y6_N22
\data|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~0_combout\ = (\i_addr[7]~input_o\ & (\i_addr[6]~input_o\ $ (((\i_addr[2]~input_o\ & !\i_addr[5]~input_o\))))) # (!\i_addr[7]~input_o\ & (\i_addr[5]~input_o\ & ((!\i_addr[6]~input_o\) # (!\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux9~0_combout\);

-- Location: LCCOMB_X20_Y6_N22
\data|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~3_combout\ = (!\data|Mux10~2_combout\ & (\data|Mux9~1_combout\ $ (((\data|Mux9~0_combout\ & !\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~1_combout\,
	datab => \data|Mux9~0_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~2_combout\,
	combout => \data|Mux9~3_combout\);

-- Location: LCCOMB_X20_Y6_N24
\data|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~2_combout\ = (\data|Mux9~1_combout\ & (\i_addr[3]~input_o\ $ (((!\data|Mux9~0_combout\ & !\data|Mux10~2_combout\))))) # (!\data|Mux9~1_combout\ & (\data|Mux10~2_combout\ $ (((!\data|Mux9~0_combout\ & \i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~1_combout\,
	datab => \data|Mux9~0_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~2_combout\,
	combout => \data|Mux9~2_combout\);

-- Location: LCCOMB_X20_Y6_N12
\data|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~4_combout\ = (\data|Mux9~1_combout\ & ((\data|Mux9~0_combout\ & (!\i_addr[3]~input_o\ & !\data|Mux10~2_combout\)) # (!\data|Mux9~0_combout\ & ((\data|Mux10~2_combout\))))) # (!\data|Mux9~1_combout\ & (\data|Mux10~2_combout\ & 
-- ((\data|Mux9~0_combout\) # (\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~1_combout\,
	datab => \data|Mux9~0_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux10~2_combout\,
	combout => \data|Mux9~4_combout\);

-- Location: LCCOMB_X20_Y6_N10
\data|Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~5_combout\ = (\data|Mux9~4_combout\ & (!\data|Mux9~2_combout\ & (\data|Mux9~3_combout\ $ (!\i_addr[4]~input_o\)))) # (!\data|Mux9~4_combout\ & ((\data|Mux9~3_combout\ & (\data|Mux9~2_combout\ & !\i_addr[4]~input_o\)) # (!\data|Mux9~3_combout\ & 
-- ((\i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~3_combout\,
	datab => \data|Mux9~2_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux9~4_combout\,
	combout => \data|Mux9~5_combout\);

-- Location: LCCOMB_X20_Y6_N4
\data|Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~6_combout\ = (!\data|Mux9~4_combout\ & (\data|Mux9~2_combout\ $ (((\data|Mux9~3_combout\ & \i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~3_combout\,
	datab => \data|Mux9~2_combout\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux9~4_combout\,
	combout => \data|Mux9~6_combout\);

-- Location: LCCOMB_X20_Y6_N18
\data|Mux9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~7_combout\ = (\data|Mux9~5_combout\ & (\i_addr[0]~input_o\ $ (((\i_addr[1]~input_o\) # (\data|Mux9~6_combout\))))) # (!\data|Mux9~5_combout\ & (((\data|Mux9~6_combout\ & \i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~5_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \data|Mux9~6_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux9~7_combout\);

-- Location: LCCOMB_X20_Y10_N4
\data|o_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|o_data[2]~feeder_combout\ = \data|Mux9~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux9~7_combout\,
	combout => \data|o_data[2]~feeder_combout\);

-- Location: FF_X20_Y10_N5
\data|o_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	d => \data|o_data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(2));

-- Location: LCCOMB_X20_Y7_N10
\data|Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~6_combout\ = (\i_addr[1]~input_o\ & ((\data|Mux10~3_combout\ & (\data|Mux10~4_combout\)) # (!\data|Mux10~3_combout\ & ((\i_addr[4]~input_o\))))) # (!\i_addr[1]~input_o\ & ((\data|Mux10~4_combout\) # (\i_addr[4]~input_o\ $ 
-- (\data|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux10~6_combout\);

-- Location: LCCOMB_X20_Y7_N28
\data|Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~5_combout\ = (\data|Mux10~3_combout\ & (\data|Mux10~4_combout\ $ (((\i_addr[4]~input_o\))))) # (!\data|Mux10~3_combout\ & (\i_addr[1]~input_o\ & ((!\i_addr[4]~input_o\) # (!\data|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux10~5_combout\);

-- Location: LCCOMB_X20_Y7_N14
\data|Mux10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~8_combout\ = (\data|Mux10~4_combout\ & (\i_addr[4]~input_o\ $ (((!\data|Mux10~3_combout\) # (!\i_addr[1]~input_o\))))) # (!\data|Mux10~4_combout\ & (\data|Mux10~3_combout\ & ((\i_addr[1]~input_o\) # (\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~4_combout\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \data|Mux10~3_combout\,
	combout => \data|Mux10~8_combout\);

-- Location: LCCOMB_X20_Y7_N22
\data|Mux10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~9_combout\ = (\data|Mux10~7_combout\ & ((\data|Mux10~8_combout\ & (!\data|Mux10~6_combout\ & !\data|Mux10~5_combout\)) # (!\data|Mux10~8_combout\ & ((\data|Mux10~5_combout\))))) # (!\data|Mux10~7_combout\ & ((\data|Mux10~8_combout\ & 
-- ((\data|Mux10~5_combout\))) # (!\data|Mux10~8_combout\ & (\data|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~6_combout\,
	datab => \data|Mux10~7_combout\,
	datac => \data|Mux10~8_combout\,
	datad => \data|Mux10~5_combout\,
	combout => \data|Mux10~9_combout\);

-- Location: LCCOMB_X20_Y7_N24
\data|Mux10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~10_combout\ = (\data|Mux10~9_combout\ & (\i_addr[0]~input_o\ $ (((\data|Mux10~5_combout\) # (!\data|Mux10~6_combout\))))) # (!\data|Mux10~9_combout\ & (\i_addr[0]~input_o\ & (\data|Mux10~6_combout\ $ (!\data|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~6_combout\,
	datab => \data|Mux10~5_combout\,
	datac => \data|Mux10~9_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux10~10_combout\);

-- Location: LCCOMB_X20_Y10_N2
\data|o_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|o_data[1]~feeder_combout\ = \data|Mux10~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux10~10_combout\,
	combout => \data|o_data[1]~feeder_combout\);

-- Location: FF_X20_Y10_N3
\data|o_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	d => \data|o_data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(1));

-- Location: LCCOMB_X17_Y5_N24
\data|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~0_combout\ = (\i_addr[3]~input_o\ & ((\i_addr[6]~input_o\) # (\i_addr[7]~input_o\ $ (!\i_addr[4]~input_o\)))) # (!\i_addr[3]~input_o\ & (\i_addr[7]~input_o\ & (\i_addr[6]~input_o\ $ (!\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y5_N26
\data|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~1_combout\ = (\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\) # ((\i_addr[3]~input_o\ & !\i_addr[4]~input_o\)))) # (!\i_addr[7]~input_o\ & (!\i_addr[6]~input_o\ & (!\i_addr[3]~input_o\ & \i_addr[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y5_N10
\data|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~3_combout\ = (\data|Mux11~0_combout\ & (!\i_addr[5]~input_o\ & ((!\i_addr[1]~input_o\)))) # (!\data|Mux11~0_combout\ & (((\data|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux11~0_combout\,
	datac => \data|Mux11~1_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux11~3_combout\);

-- Location: LCCOMB_X17_Y5_N28
\data|Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~4_combout\ = (\i_addr[6]~input_o\ & (!\i_addr[4]~input_o\ & ((!\i_addr[3]~input_o\) # (!\i_addr[7]~input_o\)))) # (!\i_addr[6]~input_o\ & (\i_addr[4]~input_o\ & ((\i_addr[7]~input_o\) # (\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux11~4_combout\);

-- Location: LCCOMB_X17_Y5_N8
\data|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~2_combout\ = (\i_addr[1]~input_o\ & ((\data|Mux11~1_combout\ & ((\i_addr[5]~input_o\))) # (!\data|Mux11~1_combout\ & (!\data|Mux11~0_combout\ & !\i_addr[5]~input_o\)))) # (!\i_addr[1]~input_o\ & (\data|Mux11~0_combout\ & 
-- ((\data|Mux11~1_combout\) # (\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux11~1_combout\,
	datab => \data|Mux11~0_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux11~2_combout\);

-- Location: LCCOMB_X17_Y5_N4
\data|Mux11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~5_combout\ = (\data|Mux11~3_combout\ & (!\data|Mux11~2_combout\ & ((!\data|Mux11~4_combout\) # (!\i_addr[5]~input_o\)))) # (!\data|Mux11~3_combout\ & (\data|Mux11~2_combout\ $ ((\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux11~3_combout\,
	datab => \data|Mux11~2_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \data|Mux11~4_combout\,
	combout => \data|Mux11~5_combout\);

-- Location: LCCOMB_X17_Y5_N22
\data|Mux11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~6_combout\ = (\data|Mux11~5_combout\ & (\data|Mux11~3_combout\ $ (\data|Mux11~4_combout\ $ (\i_addr[2]~input_o\)))) # (!\data|Mux11~5_combout\ & (!\data|Mux11~3_combout\ & (\data|Mux11~4_combout\ & \i_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux11~3_combout\,
	datab => \data|Mux11~4_combout\,
	datac => \data|Mux11~5_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux11~6_combout\);

-- Location: FF_X20_Y10_N1
\data|o_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux11~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(0));

-- Location: LCCOMB_X20_Y10_N6
\uut|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~0_combout\ = (\uut|Mult0|auto_generated|w257w\(14) & (\data|o_data\(0) $ (VCC))) # (!\uut|Mult0|auto_generated|w257w\(14) & (\data|o_data\(0) & VCC))
-- \uut|Add0~1\ = CARRY((\uut|Mult0|auto_generated|w257w\(14) & \data|o_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|w257w\(14),
	datab => \data|o_data\(0),
	datad => VCC,
	combout => \uut|Add0~0_combout\,
	cout => \uut|Add0~1\);

-- Location: LCCOMB_X20_Y10_N8
\uut|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~2_combout\ = (\uut|Mult0|auto_generated|w257w\(15) & ((\data|o_data\(1) & (\uut|Add0~1\ & VCC)) # (!\data|o_data\(1) & (!\uut|Add0~1\)))) # (!\uut|Mult0|auto_generated|w257w\(15) & ((\data|o_data\(1) & (!\uut|Add0~1\)) # (!\data|o_data\(1) & 
-- ((\uut|Add0~1\) # (GND)))))
-- \uut|Add0~3\ = CARRY((\uut|Mult0|auto_generated|w257w\(15) & (!\data|o_data\(1) & !\uut|Add0~1\)) # (!\uut|Mult0|auto_generated|w257w\(15) & ((!\uut|Add0~1\) # (!\data|o_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|w257w\(15),
	datab => \data|o_data\(1),
	datad => VCC,
	cin => \uut|Add0~1\,
	combout => \uut|Add0~2_combout\,
	cout => \uut|Add0~3\);

-- Location: LCCOMB_X20_Y10_N10
\uut|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~4_combout\ = ((\uut|Mult0|auto_generated|w257w\(16) $ (\data|o_data\(2) $ (!\uut|Add0~3\)))) # (GND)
-- \uut|Add0~5\ = CARRY((\uut|Mult0|auto_generated|w257w\(16) & ((\data|o_data\(2)) # (!\uut|Add0~3\))) # (!\uut|Mult0|auto_generated|w257w\(16) & (\data|o_data\(2) & !\uut|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|w257w\(16),
	datab => \data|o_data\(2),
	datad => VCC,
	cin => \uut|Add0~3\,
	combout => \uut|Add0~4_combout\,
	cout => \uut|Add0~5\);

-- Location: LCCOMB_X20_Y10_N12
\uut|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~6_combout\ = (\data|o_data\(3) & ((\uut|Mult0|auto_generated|w257w\(17) & (\uut|Add0~5\ & VCC)) # (!\uut|Mult0|auto_generated|w257w\(17) & (!\uut|Add0~5\)))) # (!\data|o_data\(3) & ((\uut|Mult0|auto_generated|w257w\(17) & (!\uut|Add0~5\)) # 
-- (!\uut|Mult0|auto_generated|w257w\(17) & ((\uut|Add0~5\) # (GND)))))
-- \uut|Add0~7\ = CARRY((\data|o_data\(3) & (!\uut|Mult0|auto_generated|w257w\(17) & !\uut|Add0~5\)) # (!\data|o_data\(3) & ((!\uut|Add0~5\) # (!\uut|Mult0|auto_generated|w257w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(3),
	datab => \uut|Mult0|auto_generated|w257w\(17),
	datad => VCC,
	cin => \uut|Add0~5\,
	combout => \uut|Add0~6_combout\,
	cout => \uut|Add0~7\);

-- Location: LCCOMB_X20_Y10_N14
\uut|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~8_combout\ = ((\uut|Mult0|auto_generated|op_1~0_combout\ $ (\data|o_data\(4) $ (!\uut|Add0~7\)))) # (GND)
-- \uut|Add0~9\ = CARRY((\uut|Mult0|auto_generated|op_1~0_combout\ & ((\data|o_data\(4)) # (!\uut|Add0~7\))) # (!\uut|Mult0|auto_generated|op_1~0_combout\ & (\data|o_data\(4) & !\uut|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~0_combout\,
	datab => \data|o_data\(4),
	datad => VCC,
	cin => \uut|Add0~7\,
	combout => \uut|Add0~8_combout\,
	cout => \uut|Add0~9\);

-- Location: LCCOMB_X20_Y10_N16
\uut|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~10_combout\ = (\uut|Mult0|auto_generated|op_1~2_combout\ & ((\data|o_data\(5) & (\uut|Add0~9\ & VCC)) # (!\data|o_data\(5) & (!\uut|Add0~9\)))) # (!\uut|Mult0|auto_generated|op_1~2_combout\ & ((\data|o_data\(5) & (!\uut|Add0~9\)) # 
-- (!\data|o_data\(5) & ((\uut|Add0~9\) # (GND)))))
-- \uut|Add0~11\ = CARRY((\uut|Mult0|auto_generated|op_1~2_combout\ & (!\data|o_data\(5) & !\uut|Add0~9\)) # (!\uut|Mult0|auto_generated|op_1~2_combout\ & ((!\uut|Add0~9\) # (!\data|o_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~2_combout\,
	datab => \data|o_data\(5),
	datad => VCC,
	cin => \uut|Add0~9\,
	combout => \uut|Add0~10_combout\,
	cout => \uut|Add0~11\);

-- Location: LCCOMB_X20_Y10_N18
\uut|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~12_combout\ = ((\uut|Mult0|auto_generated|op_1~4_combout\ $ (\data|o_data\(6) $ (!\uut|Add0~11\)))) # (GND)
-- \uut|Add0~13\ = CARRY((\uut|Mult0|auto_generated|op_1~4_combout\ & ((\data|o_data\(6)) # (!\uut|Add0~11\))) # (!\uut|Mult0|auto_generated|op_1~4_combout\ & (\data|o_data\(6) & !\uut|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~4_combout\,
	datab => \data|o_data\(6),
	datad => VCC,
	cin => \uut|Add0~11\,
	combout => \uut|Add0~12_combout\,
	cout => \uut|Add0~13\);

-- Location: LCCOMB_X20_Y10_N20
\uut|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~14_combout\ = (\uut|Mult0|auto_generated|op_1~6_combout\ & ((\data|o_data\(7) & (\uut|Add0~13\ & VCC)) # (!\data|o_data\(7) & (!\uut|Add0~13\)))) # (!\uut|Mult0|auto_generated|op_1~6_combout\ & ((\data|o_data\(7) & (!\uut|Add0~13\)) # 
-- (!\data|o_data\(7) & ((\uut|Add0~13\) # (GND)))))
-- \uut|Add0~15\ = CARRY((\uut|Mult0|auto_generated|op_1~6_combout\ & (!\data|o_data\(7) & !\uut|Add0~13\)) # (!\uut|Mult0|auto_generated|op_1~6_combout\ & ((!\uut|Add0~13\) # (!\data|o_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~6_combout\,
	datab => \data|o_data\(7),
	datad => VCC,
	cin => \uut|Add0~13\,
	combout => \uut|Add0~14_combout\,
	cout => \uut|Add0~15\);

-- Location: LCCOMB_X20_Y10_N22
\uut|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~16_combout\ = ((\data|o_data\(8) $ (\uut|Mult0|auto_generated|op_1~8_combout\ $ (!\uut|Add0~15\)))) # (GND)
-- \uut|Add0~17\ = CARRY((\data|o_data\(8) & ((\uut|Mult0|auto_generated|op_1~8_combout\) # (!\uut|Add0~15\))) # (!\data|o_data\(8) & (\uut|Mult0|auto_generated|op_1~8_combout\ & !\uut|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(8),
	datab => \uut|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \uut|Add0~15\,
	combout => \uut|Add0~16_combout\,
	cout => \uut|Add0~17\);

-- Location: LCCOMB_X20_Y10_N24
\uut|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~18_combout\ = (\uut|Mult0|auto_generated|op_1~10_combout\ & ((\data|o_data\(9) & (\uut|Add0~17\ & VCC)) # (!\data|o_data\(9) & (!\uut|Add0~17\)))) # (!\uut|Mult0|auto_generated|op_1~10_combout\ & ((\data|o_data\(9) & (!\uut|Add0~17\)) # 
-- (!\data|o_data\(9) & ((\uut|Add0~17\) # (GND)))))
-- \uut|Add0~19\ = CARRY((\uut|Mult0|auto_generated|op_1~10_combout\ & (!\data|o_data\(9) & !\uut|Add0~17\)) # (!\uut|Mult0|auto_generated|op_1~10_combout\ & ((!\uut|Add0~17\) # (!\data|o_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~10_combout\,
	datab => \data|o_data\(9),
	datad => VCC,
	cin => \uut|Add0~17\,
	combout => \uut|Add0~18_combout\,
	cout => \uut|Add0~19\);

-- Location: LCCOMB_X20_Y10_N26
\uut|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~20_combout\ = ((\data|o_data\(10) $ (\uut|Mult0|auto_generated|op_1~12_combout\ $ (!\uut|Add0~19\)))) # (GND)
-- \uut|Add0~21\ = CARRY((\data|o_data\(10) & ((\uut|Mult0|auto_generated|op_1~12_combout\) # (!\uut|Add0~19\))) # (!\data|o_data\(10) & (\uut|Mult0|auto_generated|op_1~12_combout\ & !\uut|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(10),
	datab => \uut|Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \uut|Add0~19\,
	combout => \uut|Add0~20_combout\,
	cout => \uut|Add0~21\);

-- Location: LCCOMB_X20_Y10_N28
\uut|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~22_combout\ = (\uut|Mult0|auto_generated|op_1~14_combout\ & ((\data|o_data\(11) & (\uut|Add0~21\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~21\)))) # (!\uut|Mult0|auto_generated|op_1~14_combout\ & ((\data|o_data\(11) & (!\uut|Add0~21\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~21\) # (GND)))))
-- \uut|Add0~23\ = CARRY((\uut|Mult0|auto_generated|op_1~14_combout\ & (!\data|o_data\(11) & !\uut|Add0~21\)) # (!\uut|Mult0|auto_generated|op_1~14_combout\ & ((!\uut|Add0~21\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~14_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~21\,
	combout => \uut|Add0~22_combout\,
	cout => \uut|Add0~23\);

-- Location: LCCOMB_X20_Y10_N30
\uut|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~24_combout\ = ((\uut|Mult0|auto_generated|op_1~16_combout\ $ (\data|o_data\(11) $ (!\uut|Add0~23\)))) # (GND)
-- \uut|Add0~25\ = CARRY((\uut|Mult0|auto_generated|op_1~16_combout\ & ((\data|o_data\(11)) # (!\uut|Add0~23\))) # (!\uut|Mult0|auto_generated|op_1~16_combout\ & (\data|o_data\(11) & !\uut|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~16_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~23\,
	combout => \uut|Add0~24_combout\,
	cout => \uut|Add0~25\);

-- Location: LCCOMB_X20_Y9_N0
\uut|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~26_combout\ = (\uut|Mult0|auto_generated|op_1~18_combout\ & ((\data|o_data\(11) & (\uut|Add0~25\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~25\)))) # (!\uut|Mult0|auto_generated|op_1~18_combout\ & ((\data|o_data\(11) & (!\uut|Add0~25\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~25\) # (GND)))))
-- \uut|Add0~27\ = CARRY((\uut|Mult0|auto_generated|op_1~18_combout\ & (!\data|o_data\(11) & !\uut|Add0~25\)) # (!\uut|Mult0|auto_generated|op_1~18_combout\ & ((!\uut|Add0~25\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~18_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~25\,
	combout => \uut|Add0~26_combout\,
	cout => \uut|Add0~27\);

-- Location: LCCOMB_X20_Y9_N2
\uut|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~28_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|op_1~20_combout\ $ (!\uut|Add0~27\)))) # (GND)
-- \uut|Add0~29\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~20_combout\) # (!\uut|Add0~27\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|op_1~20_combout\ & !\uut|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \uut|Add0~27\,
	combout => \uut|Add0~28_combout\,
	cout => \uut|Add0~29\);

-- Location: LCCOMB_X20_Y9_N4
\uut|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~30_combout\ = (\uut|Mult0|auto_generated|op_1~22_combout\ & ((\data|o_data\(11) & (\uut|Add0~29\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~29\)))) # (!\uut|Mult0|auto_generated|op_1~22_combout\ & ((\data|o_data\(11) & (!\uut|Add0~29\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~29\) # (GND)))))
-- \uut|Add0~31\ = CARRY((\uut|Mult0|auto_generated|op_1~22_combout\ & (!\data|o_data\(11) & !\uut|Add0~29\)) # (!\uut|Mult0|auto_generated|op_1~22_combout\ & ((!\uut|Add0~29\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~22_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~29\,
	combout => \uut|Add0~30_combout\,
	cout => \uut|Add0~31\);

-- Location: LCCOMB_X20_Y9_N6
\uut|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~32_combout\ = ((\uut|Mult0|auto_generated|op_1~24_combout\ $ (\data|o_data\(11) $ (!\uut|Add0~31\)))) # (GND)
-- \uut|Add0~33\ = CARRY((\uut|Mult0|auto_generated|op_1~24_combout\ & ((\data|o_data\(11)) # (!\uut|Add0~31\))) # (!\uut|Mult0|auto_generated|op_1~24_combout\ & (\data|o_data\(11) & !\uut|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~24_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~31\,
	combout => \uut|Add0~32_combout\,
	cout => \uut|Add0~33\);

-- Location: LCCOMB_X20_Y9_N8
\uut|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~34_combout\ = (\uut|Mult0|auto_generated|op_1~26_combout\ & ((\data|o_data\(11) & (\uut|Add0~33\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~33\)))) # (!\uut|Mult0|auto_generated|op_1~26_combout\ & ((\data|o_data\(11) & (!\uut|Add0~33\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~33\) # (GND)))))
-- \uut|Add0~35\ = CARRY((\uut|Mult0|auto_generated|op_1~26_combout\ & (!\data|o_data\(11) & !\uut|Add0~33\)) # (!\uut|Mult0|auto_generated|op_1~26_combout\ & ((!\uut|Add0~33\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~26_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~33\,
	combout => \uut|Add0~34_combout\,
	cout => \uut|Add0~35\);

-- Location: LCCOMB_X19_Y7_N26
\uut|Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector95~0_combout\ = (\uut|reg.VA_prev[16]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg.VA_prev2\(16) & \uut|reg~12_combout\)))) # (!\uut|reg.VA_prev[16]~_Duplicate_1_q\ & (((\uut|reg.VA_prev2\(16) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[16]~_Duplicate_1_q\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(16),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector95~0_combout\);

-- Location: FF_X19_Y7_N27
\uut|reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector95~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(16));

-- Location: LCCOMB_X15_Y8_N28
\uut|reg.VA_prev[15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\ = \uut|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector42~0_combout\,
	combout => \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X15_Y8_N29
\uut|reg.VA_prev[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y9_N28
\uut|Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector96~0_combout\ = (\uut|reg.VA_prev[15]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(15))))) # (!\uut|reg.VA_prev[15]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[15]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(15),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector96~0_combout\);

-- Location: FF_X19_Y9_N29
\uut|reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(15));

-- Location: LCCOMB_X17_Y8_N28
\uut|reg.VA_prev[14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[14]~_Duplicate_1feeder_combout\ = \uut|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector43~0_combout\,
	combout => \uut|reg.VA_prev[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y8_N29
\uut|reg.VA_prev[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[14]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y8_N0
\uut|Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector97~0_combout\ = (\uut|reg~12_combout\ & ((\uut|reg.VA_prev2\(14)) # ((\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[14]~_Duplicate_1_q\)))) # (!\uut|reg~12_combout\ & (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[14]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg~12_combout\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(14),
	datad => \uut|reg.VA_prev[14]~_Duplicate_1_q\,
	combout => \uut|Selector97~0_combout\);

-- Location: FF_X19_Y8_N1
\uut|reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector97~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(14));

-- Location: LCCOMB_X19_Y7_N12
\uut|Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector99~0_combout\ = (\uut|reg.VA_prev[12]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg.VA_prev2\(12) & \uut|reg~12_combout\)))) # (!\uut|reg.VA_prev[12]~_Duplicate_1_q\ & (((\uut|reg.VA_prev2\(12) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[12]~_Duplicate_1_q\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(12),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector99~0_combout\);

-- Location: FF_X19_Y7_N13
\uut|reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector99~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(12));

-- Location: LCCOMB_X15_Y9_N0
\uut|reg.VA_prev[7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[7]~_Duplicate_1feeder_combout\ = \uut|Selector50~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector50~0_combout\,
	combout => \uut|reg.VA_prev[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X15_Y9_N1
\uut|reg.VA_prev[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y10_N0
\uut|Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector104~0_combout\ = (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[7]~_Duplicate_1_q\) # ((\uut|reg.VA_prev2\(7) & \uut|reg~12_combout\)))) # (!\uut|reg.state.CALCULATE~q\ & (((\uut|reg.VA_prev2\(7) & \uut|reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.VA_prev[7]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev2\(7),
	datad => \uut|reg~12_combout\,
	combout => \uut|Selector104~0_combout\);

-- Location: FF_X19_Y10_N1
\uut|reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector104~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(7));

-- Location: LCCOMB_X16_Y10_N10
\uut|Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector111~0_combout\ = (\uut|reg.VA_prev[0]~_Duplicate_1_q\ & ((\uut|reg.state.CALCULATE~q\) # ((\uut|reg~12_combout\ & \uut|reg.VA_prev2\(0))))) # (!\uut|reg.VA_prev[0]~_Duplicate_1_q\ & (\uut|reg~12_combout\ & (\uut|reg.VA_prev2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[0]~_Duplicate_1_q\,
	datab => \uut|reg~12_combout\,
	datac => \uut|reg.VA_prev2\(0),
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector111~0_combout\);

-- Location: FF_X16_Y10_N11
\uut|reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector111~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(0));

-- Location: LCCOMB_X19_Y10_N6
\uut|reg.VA[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[0]~27_combout\ = (\uut|Add0~0_combout\ & ((GND) # (!\uut|reg.VA_prev2\(0)))) # (!\uut|Add0~0_combout\ & (\uut|reg.VA_prev2\(0) $ (GND)))
-- \uut|reg.VA[0]~28\ = CARRY((\uut|Add0~0_combout\) # (!\uut|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~0_combout\,
	datab => \uut|reg.VA_prev2\(0),
	datad => VCC,
	combout => \uut|reg.VA[0]~27_combout\,
	cout => \uut|reg.VA[0]~28\);

-- Location: LCCOMB_X19_Y10_N8
\uut|reg.VA[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[1]~29_combout\ = (\uut|reg.VA_prev2\(1) & ((\uut|Add0~2_combout\ & (!\uut|reg.VA[0]~28\)) # (!\uut|Add0~2_combout\ & ((\uut|reg.VA[0]~28\) # (GND))))) # (!\uut|reg.VA_prev2\(1) & ((\uut|Add0~2_combout\ & (\uut|reg.VA[0]~28\ & VCC)) # 
-- (!\uut|Add0~2_combout\ & (!\uut|reg.VA[0]~28\))))
-- \uut|reg.VA[1]~30\ = CARRY((\uut|reg.VA_prev2\(1) & ((!\uut|reg.VA[0]~28\) # (!\uut|Add0~2_combout\))) # (!\uut|reg.VA_prev2\(1) & (!\uut|Add0~2_combout\ & !\uut|reg.VA[0]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(1),
	datab => \uut|Add0~2_combout\,
	datad => VCC,
	cin => \uut|reg.VA[0]~28\,
	combout => \uut|reg.VA[1]~29_combout\,
	cout => \uut|reg.VA[1]~30\);

-- Location: LCCOMB_X19_Y10_N10
\uut|reg.VA[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[2]~31_combout\ = ((\uut|reg.VA_prev2\(2) $ (\uut|Add0~4_combout\ $ (\uut|reg.VA[1]~30\)))) # (GND)
-- \uut|reg.VA[2]~32\ = CARRY((\uut|reg.VA_prev2\(2) & (\uut|Add0~4_combout\ & !\uut|reg.VA[1]~30\)) # (!\uut|reg.VA_prev2\(2) & ((\uut|Add0~4_combout\) # (!\uut|reg.VA[1]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(2),
	datab => \uut|Add0~4_combout\,
	datad => VCC,
	cin => \uut|reg.VA[1]~30\,
	combout => \uut|reg.VA[2]~31_combout\,
	cout => \uut|reg.VA[2]~32\);

-- Location: LCCOMB_X19_Y10_N12
\uut|reg.VA[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[3]~33_combout\ = (\uut|reg.VA_prev2\(3) & ((\uut|Add0~6_combout\ & (!\uut|reg.VA[2]~32\)) # (!\uut|Add0~6_combout\ & ((\uut|reg.VA[2]~32\) # (GND))))) # (!\uut|reg.VA_prev2\(3) & ((\uut|Add0~6_combout\ & (\uut|reg.VA[2]~32\ & VCC)) # 
-- (!\uut|Add0~6_combout\ & (!\uut|reg.VA[2]~32\))))
-- \uut|reg.VA[3]~34\ = CARRY((\uut|reg.VA_prev2\(3) & ((!\uut|reg.VA[2]~32\) # (!\uut|Add0~6_combout\))) # (!\uut|reg.VA_prev2\(3) & (!\uut|Add0~6_combout\ & !\uut|reg.VA[2]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(3),
	datab => \uut|Add0~6_combout\,
	datad => VCC,
	cin => \uut|reg.VA[2]~32\,
	combout => \uut|reg.VA[3]~33_combout\,
	cout => \uut|reg.VA[3]~34\);

-- Location: LCCOMB_X19_Y10_N14
\uut|reg.VA[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[4]~35_combout\ = ((\uut|reg.VA_prev2\(4) $ (\uut|Add0~8_combout\ $ (\uut|reg.VA[3]~34\)))) # (GND)
-- \uut|reg.VA[4]~36\ = CARRY((\uut|reg.VA_prev2\(4) & (\uut|Add0~8_combout\ & !\uut|reg.VA[3]~34\)) # (!\uut|reg.VA_prev2\(4) & ((\uut|Add0~8_combout\) # (!\uut|reg.VA[3]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(4),
	datab => \uut|Add0~8_combout\,
	datad => VCC,
	cin => \uut|reg.VA[3]~34\,
	combout => \uut|reg.VA[4]~35_combout\,
	cout => \uut|reg.VA[4]~36\);

-- Location: LCCOMB_X19_Y10_N16
\uut|reg.VA[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[5]~37_combout\ = (\uut|reg.VA_prev2\(5) & ((\uut|Add0~10_combout\ & (!\uut|reg.VA[4]~36\)) # (!\uut|Add0~10_combout\ & ((\uut|reg.VA[4]~36\) # (GND))))) # (!\uut|reg.VA_prev2\(5) & ((\uut|Add0~10_combout\ & (\uut|reg.VA[4]~36\ & VCC)) # 
-- (!\uut|Add0~10_combout\ & (!\uut|reg.VA[4]~36\))))
-- \uut|reg.VA[5]~38\ = CARRY((\uut|reg.VA_prev2\(5) & ((!\uut|reg.VA[4]~36\) # (!\uut|Add0~10_combout\))) # (!\uut|reg.VA_prev2\(5) & (!\uut|Add0~10_combout\ & !\uut|reg.VA[4]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(5),
	datab => \uut|Add0~10_combout\,
	datad => VCC,
	cin => \uut|reg.VA[4]~36\,
	combout => \uut|reg.VA[5]~37_combout\,
	cout => \uut|reg.VA[5]~38\);

-- Location: LCCOMB_X19_Y10_N18
\uut|reg.VA[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[6]~39_combout\ = ((\uut|reg.VA_prev2\(6) $ (\uut|Add0~12_combout\ $ (\uut|reg.VA[5]~38\)))) # (GND)
-- \uut|reg.VA[6]~40\ = CARRY((\uut|reg.VA_prev2\(6) & (\uut|Add0~12_combout\ & !\uut|reg.VA[5]~38\)) # (!\uut|reg.VA_prev2\(6) & ((\uut|Add0~12_combout\) # (!\uut|reg.VA[5]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(6),
	datab => \uut|Add0~12_combout\,
	datad => VCC,
	cin => \uut|reg.VA[5]~38\,
	combout => \uut|reg.VA[6]~39_combout\,
	cout => \uut|reg.VA[6]~40\);

-- Location: LCCOMB_X19_Y10_N20
\uut|reg.VA[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[7]~41_combout\ = (\uut|Add0~14_combout\ & ((\uut|reg.VA_prev2\(7) & (!\uut|reg.VA[6]~40\)) # (!\uut|reg.VA_prev2\(7) & (\uut|reg.VA[6]~40\ & VCC)))) # (!\uut|Add0~14_combout\ & ((\uut|reg.VA_prev2\(7) & ((\uut|reg.VA[6]~40\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(7) & (!\uut|reg.VA[6]~40\))))
-- \uut|reg.VA[7]~42\ = CARRY((\uut|Add0~14_combout\ & (\uut|reg.VA_prev2\(7) & !\uut|reg.VA[6]~40\)) # (!\uut|Add0~14_combout\ & ((\uut|reg.VA_prev2\(7)) # (!\uut|reg.VA[6]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~14_combout\,
	datab => \uut|reg.VA_prev2\(7),
	datad => VCC,
	cin => \uut|reg.VA[6]~40\,
	combout => \uut|reg.VA[7]~41_combout\,
	cout => \uut|reg.VA[7]~42\);

-- Location: LCCOMB_X19_Y10_N22
\uut|reg.VA[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[8]~43_combout\ = ((\uut|reg.VA_prev2\(8) $ (\uut|Add0~16_combout\ $ (\uut|reg.VA[7]~42\)))) # (GND)
-- \uut|reg.VA[8]~44\ = CARRY((\uut|reg.VA_prev2\(8) & (\uut|Add0~16_combout\ & !\uut|reg.VA[7]~42\)) # (!\uut|reg.VA_prev2\(8) & ((\uut|Add0~16_combout\) # (!\uut|reg.VA[7]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(8),
	datab => \uut|Add0~16_combout\,
	datad => VCC,
	cin => \uut|reg.VA[7]~42\,
	combout => \uut|reg.VA[8]~43_combout\,
	cout => \uut|reg.VA[8]~44\);

-- Location: LCCOMB_X19_Y10_N24
\uut|reg.VA[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[9]~45_combout\ = (\uut|reg.VA_prev2\(9) & ((\uut|Add0~18_combout\ & (!\uut|reg.VA[8]~44\)) # (!\uut|Add0~18_combout\ & ((\uut|reg.VA[8]~44\) # (GND))))) # (!\uut|reg.VA_prev2\(9) & ((\uut|Add0~18_combout\ & (\uut|reg.VA[8]~44\ & VCC)) # 
-- (!\uut|Add0~18_combout\ & (!\uut|reg.VA[8]~44\))))
-- \uut|reg.VA[9]~46\ = CARRY((\uut|reg.VA_prev2\(9) & ((!\uut|reg.VA[8]~44\) # (!\uut|Add0~18_combout\))) # (!\uut|reg.VA_prev2\(9) & (!\uut|Add0~18_combout\ & !\uut|reg.VA[8]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(9),
	datab => \uut|Add0~18_combout\,
	datad => VCC,
	cin => \uut|reg.VA[8]~44\,
	combout => \uut|reg.VA[9]~45_combout\,
	cout => \uut|reg.VA[9]~46\);

-- Location: LCCOMB_X19_Y10_N26
\uut|reg.VA[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[10]~47_combout\ = ((\uut|reg.VA_prev2\(10) $ (\uut|Add0~20_combout\ $ (\uut|reg.VA[9]~46\)))) # (GND)
-- \uut|reg.VA[10]~48\ = CARRY((\uut|reg.VA_prev2\(10) & (\uut|Add0~20_combout\ & !\uut|reg.VA[9]~46\)) # (!\uut|reg.VA_prev2\(10) & ((\uut|Add0~20_combout\) # (!\uut|reg.VA[9]~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(10),
	datab => \uut|Add0~20_combout\,
	datad => VCC,
	cin => \uut|reg.VA[9]~46\,
	combout => \uut|reg.VA[10]~47_combout\,
	cout => \uut|reg.VA[10]~48\);

-- Location: LCCOMB_X19_Y10_N28
\uut|reg.VA[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[11]~49_combout\ = (\uut|reg.VA_prev2\(11) & ((\uut|Add0~22_combout\ & (!\uut|reg.VA[10]~48\)) # (!\uut|Add0~22_combout\ & ((\uut|reg.VA[10]~48\) # (GND))))) # (!\uut|reg.VA_prev2\(11) & ((\uut|Add0~22_combout\ & (\uut|reg.VA[10]~48\ & VCC)) # 
-- (!\uut|Add0~22_combout\ & (!\uut|reg.VA[10]~48\))))
-- \uut|reg.VA[11]~50\ = CARRY((\uut|reg.VA_prev2\(11) & ((!\uut|reg.VA[10]~48\) # (!\uut|Add0~22_combout\))) # (!\uut|reg.VA_prev2\(11) & (!\uut|Add0~22_combout\ & !\uut|reg.VA[10]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(11),
	datab => \uut|Add0~22_combout\,
	datad => VCC,
	cin => \uut|reg.VA[10]~48\,
	combout => \uut|reg.VA[11]~49_combout\,
	cout => \uut|reg.VA[11]~50\);

-- Location: LCCOMB_X19_Y10_N30
\uut|reg.VA[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[12]~51_combout\ = ((\uut|Add0~24_combout\ $ (\uut|reg.VA_prev2\(12) $ (\uut|reg.VA[11]~50\)))) # (GND)
-- \uut|reg.VA[12]~52\ = CARRY((\uut|Add0~24_combout\ & ((!\uut|reg.VA[11]~50\) # (!\uut|reg.VA_prev2\(12)))) # (!\uut|Add0~24_combout\ & (!\uut|reg.VA_prev2\(12) & !\uut|reg.VA[11]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~24_combout\,
	datab => \uut|reg.VA_prev2\(12),
	datad => VCC,
	cin => \uut|reg.VA[11]~50\,
	combout => \uut|reg.VA[12]~51_combout\,
	cout => \uut|reg.VA[12]~52\);

-- Location: LCCOMB_X19_Y9_N0
\uut|reg.VA[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[13]~53_combout\ = (\uut|reg.VA_prev2\(13) & ((\uut|Add0~26_combout\ & (!\uut|reg.VA[12]~52\)) # (!\uut|Add0~26_combout\ & ((\uut|reg.VA[12]~52\) # (GND))))) # (!\uut|reg.VA_prev2\(13) & ((\uut|Add0~26_combout\ & (\uut|reg.VA[12]~52\ & VCC)) # 
-- (!\uut|Add0~26_combout\ & (!\uut|reg.VA[12]~52\))))
-- \uut|reg.VA[13]~54\ = CARRY((\uut|reg.VA_prev2\(13) & ((!\uut|reg.VA[12]~52\) # (!\uut|Add0~26_combout\))) # (!\uut|reg.VA_prev2\(13) & (!\uut|Add0~26_combout\ & !\uut|reg.VA[12]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(13),
	datab => \uut|Add0~26_combout\,
	datad => VCC,
	cin => \uut|reg.VA[12]~52\,
	combout => \uut|reg.VA[13]~53_combout\,
	cout => \uut|reg.VA[13]~54\);

-- Location: LCCOMB_X19_Y9_N2
\uut|reg.VA[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[14]~55_combout\ = ((\uut|Add0~28_combout\ $ (\uut|reg.VA_prev2\(14) $ (\uut|reg.VA[13]~54\)))) # (GND)
-- \uut|reg.VA[14]~56\ = CARRY((\uut|Add0~28_combout\ & ((!\uut|reg.VA[13]~54\) # (!\uut|reg.VA_prev2\(14)))) # (!\uut|Add0~28_combout\ & (!\uut|reg.VA_prev2\(14) & !\uut|reg.VA[13]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~28_combout\,
	datab => \uut|reg.VA_prev2\(14),
	datad => VCC,
	cin => \uut|reg.VA[13]~54\,
	combout => \uut|reg.VA[14]~55_combout\,
	cout => \uut|reg.VA[14]~56\);

-- Location: LCCOMB_X19_Y9_N4
\uut|reg.VA[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[15]~57_combout\ = (\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15) & (!\uut|reg.VA[14]~56\)) # (!\uut|reg.VA_prev2\(15) & (\uut|reg.VA[14]~56\ & VCC)))) # (!\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15) & ((\uut|reg.VA[14]~56\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(15) & (!\uut|reg.VA[14]~56\))))
-- \uut|reg.VA[15]~58\ = CARRY((\uut|Add0~30_combout\ & (\uut|reg.VA_prev2\(15) & !\uut|reg.VA[14]~56\)) # (!\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15)) # (!\uut|reg.VA[14]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~30_combout\,
	datab => \uut|reg.VA_prev2\(15),
	datad => VCC,
	cin => \uut|reg.VA[14]~56\,
	combout => \uut|reg.VA[15]~57_combout\,
	cout => \uut|reg.VA[15]~58\);

-- Location: LCCOMB_X19_Y9_N6
\uut|reg.VA[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[16]~59_combout\ = ((\uut|Add0~32_combout\ $ (\uut|reg.VA_prev2\(16) $ (\uut|reg.VA[15]~58\)))) # (GND)
-- \uut|reg.VA[16]~60\ = CARRY((\uut|Add0~32_combout\ & ((!\uut|reg.VA[15]~58\) # (!\uut|reg.VA_prev2\(16)))) # (!\uut|Add0~32_combout\ & (!\uut|reg.VA_prev2\(16) & !\uut|reg.VA[15]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~32_combout\,
	datab => \uut|reg.VA_prev2\(16),
	datad => VCC,
	cin => \uut|reg.VA[15]~58\,
	combout => \uut|reg.VA[16]~59_combout\,
	cout => \uut|reg.VA[16]~60\);

-- Location: LCCOMB_X19_Y9_N8
\uut|reg.VA[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[17]~61_combout\ = (\uut|reg.VA_prev2\(17) & ((\uut|Add0~34_combout\ & (!\uut|reg.VA[16]~60\)) # (!\uut|Add0~34_combout\ & ((\uut|reg.VA[16]~60\) # (GND))))) # (!\uut|reg.VA_prev2\(17) & ((\uut|Add0~34_combout\ & (\uut|reg.VA[16]~60\ & VCC)) # 
-- (!\uut|Add0~34_combout\ & (!\uut|reg.VA[16]~60\))))
-- \uut|reg.VA[17]~62\ = CARRY((\uut|reg.VA_prev2\(17) & ((!\uut|reg.VA[16]~60\) # (!\uut|Add0~34_combout\))) # (!\uut|reg.VA_prev2\(17) & (!\uut|Add0~34_combout\ & !\uut|reg.VA[16]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(17),
	datab => \uut|Add0~34_combout\,
	datad => VCC,
	cin => \uut|reg.VA[16]~60\,
	combout => \uut|reg.VA[17]~61_combout\,
	cout => \uut|reg.VA[17]~62\);

-- Location: FF_X19_Y9_N9
\uut|reg.VA[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[17]~61_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[17]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N22
\uut|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector40~0_combout\ = (\uut|Selector0~0_combout\ & ((\uut|reg.VA[17]~_Duplicate_1_q\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[17]~_Duplicate_1_q\)))) # (!\uut|Selector0~0_combout\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[17]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector0~0_combout\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[17]~_Duplicate_1_q\,
	datad => \uut|reg.VA[17]~_Duplicate_1_q\,
	combout => \uut|Selector40~0_combout\);

-- Location: FF_X19_Y9_N7
\uut|reg.VA[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[16]~59_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[16]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N20
\uut|Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector41~0_combout\ = (\uut|Selector0~0_combout\ & ((\uut|reg.VA[16]~_Duplicate_1_q\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[16]~_Duplicate_1_q\)))) # (!\uut|Selector0~0_combout\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[16]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector0~0_combout\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[16]~_Duplicate_1_q\,
	datad => \uut|reg.VA[16]~_Duplicate_1_q\,
	combout => \uut|Selector41~0_combout\);

-- Location: FF_X19_Y9_N5
\uut|reg.VA[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[15]~57_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y8_N30
\uut|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector42~0_combout\ = (\uut|reg.VA[15]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|reg.VA_prev[15]~_Duplicate_1_q\ & \uut|Selector57~0_combout\)))) # (!\uut|reg.VA[15]~_Duplicate_1_q\ & (\uut|reg.VA_prev[15]~_Duplicate_1_q\ & 
-- ((\uut|Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[15]~_Duplicate_1_q\,
	datab => \uut|reg.VA_prev[15]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|Selector57~0_combout\,
	combout => \uut|Selector42~0_combout\);

-- Location: FF_X19_Y9_N3
\uut|reg.VA[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[14]~55_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y8_N24
\uut|Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector43~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[14]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[14]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (\uut|Selector0~0_combout\ & 
-- (\uut|reg.VA[14]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|Selector0~0_combout\,
	datac => \uut|reg.VA[14]~_Duplicate_1_q\,
	datad => \uut|reg.VA_prev[14]~_Duplicate_1_q\,
	combout => \uut|Selector43~0_combout\);

-- Location: FF_X19_Y9_N1
\uut|reg.VA[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[13]~53_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N14
\uut|Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector44~0_combout\ = (\uut|reg.VA[13]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[13]~_Duplicate_1_q\)))) # (!\uut|reg.VA[13]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[13]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[13]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[13]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector44~0_combout\);

-- Location: FF_X19_Y10_N31
\uut|reg.VA[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[12]~51_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N28
\uut|Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector45~0_combout\ = (\uut|reg.VA_prev[12]~_Duplicate_1_q\ & ((\uut|Selector57~0_combout\) # ((\uut|reg.VA[12]~_Duplicate_1_q\ & \uut|Selector0~0_combout\)))) # (!\uut|reg.VA_prev[12]~_Duplicate_1_q\ & (\uut|reg.VA[12]~_Duplicate_1_q\ & 
-- ((\uut|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[12]~_Duplicate_1_q\,
	datab => \uut|reg.VA[12]~_Duplicate_1_q\,
	datac => \uut|Selector57~0_combout\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector45~0_combout\);

-- Location: FF_X19_Y10_N29
\uut|reg.VA[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[11]~49_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N14
\uut|Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector46~0_combout\ = (\uut|Selector0~0_combout\ & ((\uut|reg.VA[11]~_Duplicate_1_q\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[11]~_Duplicate_1_q\)))) # (!\uut|Selector0~0_combout\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[11]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector0~0_combout\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[11]~_Duplicate_1_q\,
	datad => \uut|reg.VA[11]~_Duplicate_1_q\,
	combout => \uut|Selector46~0_combout\);

-- Location: FF_X19_Y10_N27
\uut|reg.VA[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[10]~47_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y9_N6
\uut|Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector47~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[10]~_Duplicate_1_q\) # ((\uut|reg.VA[10]~_Duplicate_1_q\ & \uut|Selector0~0_combout\)))) # (!\uut|Selector57~0_combout\ & (\uut|reg.VA[10]~_Duplicate_1_q\ & 
-- ((\uut|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA[10]~_Duplicate_1_q\,
	datac => \uut|reg.VA_prev[10]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector47~0_combout\);

-- Location: FF_X19_Y10_N25
\uut|reg.VA[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[9]~45_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N30
\uut|Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector48~0_combout\ = (\uut|Selector0~0_combout\ & ((\uut|reg.VA[9]~_Duplicate_1_q\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[9]~_Duplicate_1_q\)))) # (!\uut|Selector0~0_combout\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[9]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector0~0_combout\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[9]~_Duplicate_1_q\,
	datad => \uut|reg.VA[9]~_Duplicate_1_q\,
	combout => \uut|Selector48~0_combout\);

-- Location: FF_X19_Y10_N23
\uut|reg.VA[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[8]~43_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y9_N2
\uut|Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector49~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[8]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[8]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (\uut|Selector0~0_combout\ & 
-- ((\uut|reg.VA[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|Selector0~0_combout\,
	datac => \uut|reg.VA_prev[8]~_Duplicate_1_q\,
	datad => \uut|reg.VA[8]~_Duplicate_1_q\,
	combout => \uut|Selector49~0_combout\);

-- Location: FF_X19_Y10_N21
\uut|reg.VA[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[7]~41_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y9_N2
\uut|Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector50~0_combout\ = (\uut|reg.VA[7]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|reg.VA_prev[7]~_Duplicate_1_q\ & \uut|Selector57~0_combout\)))) # (!\uut|reg.VA[7]~_Duplicate_1_q\ & (\uut|reg.VA_prev[7]~_Duplicate_1_q\ & 
-- ((\uut|Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[7]~_Duplicate_1_q\,
	datab => \uut|reg.VA_prev[7]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|Selector57~0_combout\,
	combout => \uut|Selector50~0_combout\);

-- Location: LCCOMB_X21_Y9_N6
\uut|Mult0|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~28_combout\ = ((\uut|Mult0|auto_generated|mac_out4~DATAOUT14\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\uut|Mult0|auto_generated|op_1~27\)))) # (GND)
-- \uut|Mult0|auto_generated|op_1~29\ = CARRY((\uut|Mult0|auto_generated|mac_out4~DATAOUT14\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT32\) # (!\uut|Mult0|auto_generated|op_1~27\))) # (!\uut|Mult0|auto_generated|mac_out4~DATAOUT14\ & 
-- (\uut|Mult0|auto_generated|mac_out2~DATAOUT32\ & !\uut|Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out4~DATAOUT14\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~27\,
	combout => \uut|Mult0|auto_generated|op_1~28_combout\,
	cout => \uut|Mult0|auto_generated|op_1~29\);

-- Location: LCCOMB_X21_Y9_N8
\uut|Mult0|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~30_combout\ = (\uut|Mult0|auto_generated|op_2~0_combout\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\uut|Mult0|auto_generated|op_1~29\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- (\uut|Mult0|auto_generated|op_1~29\ & VCC)))) # (!\uut|Mult0|auto_generated|op_2~0_combout\ & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\uut|Mult0|auto_generated|op_1~29\) # (GND))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\uut|Mult0|auto_generated|op_1~29\))))
-- \uut|Mult0|auto_generated|op_1~31\ = CARRY((\uut|Mult0|auto_generated|op_2~0_combout\ & (\uut|Mult0|auto_generated|mac_out2~DATAOUT33\ & !\uut|Mult0|auto_generated|op_1~29\)) # (!\uut|Mult0|auto_generated|op_2~0_combout\ & 
-- ((\uut|Mult0|auto_generated|mac_out2~DATAOUT33\) # (!\uut|Mult0|auto_generated|op_1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_2~0_combout\,
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~29\,
	combout => \uut|Mult0|auto_generated|op_1~30_combout\,
	cout => \uut|Mult0|auto_generated|op_1~31\);

-- Location: LCCOMB_X21_Y9_N10
\uut|Mult0|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~32_combout\ = (\uut|Mult0|auto_generated|op_2~2_combout\ & ((GND) # (!\uut|Mult0|auto_generated|op_1~31\))) # (!\uut|Mult0|auto_generated|op_2~2_combout\ & (\uut|Mult0|auto_generated|op_1~31\ $ (GND)))
-- \uut|Mult0|auto_generated|op_1~33\ = CARRY((\uut|Mult0|auto_generated|op_2~2_combout\) # (!\uut|Mult0|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~31\,
	combout => \uut|Mult0|auto_generated|op_1~32_combout\,
	cout => \uut|Mult0|auto_generated|op_1~33\);

-- Location: LCCOMB_X21_Y9_N12
\uut|Mult0|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~34_combout\ = (\uut|Mult0|auto_generated|op_2~4_combout\ & (\uut|Mult0|auto_generated|op_1~33\ & VCC)) # (!\uut|Mult0|auto_generated|op_2~4_combout\ & (!\uut|Mult0|auto_generated|op_1~33\))
-- \uut|Mult0|auto_generated|op_1~35\ = CARRY((!\uut|Mult0|auto_generated|op_2~4_combout\ & !\uut|Mult0|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~33\,
	combout => \uut|Mult0|auto_generated|op_1~34_combout\,
	cout => \uut|Mult0|auto_generated|op_1~35\);

-- Location: LCCOMB_X21_Y9_N14
\uut|Mult0|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~36_combout\ = (\uut|Mult0|auto_generated|op_2~6_combout\ & ((GND) # (!\uut|Mult0|auto_generated|op_1~35\))) # (!\uut|Mult0|auto_generated|op_2~6_combout\ & (\uut|Mult0|auto_generated|op_1~35\ $ (GND)))
-- \uut|Mult0|auto_generated|op_1~37\ = CARRY((\uut|Mult0|auto_generated|op_2~6_combout\) # (!\uut|Mult0|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~35\,
	combout => \uut|Mult0|auto_generated|op_1~36_combout\,
	cout => \uut|Mult0|auto_generated|op_1~37\);

-- Location: LCCOMB_X21_Y9_N16
\uut|Mult0|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~38_combout\ = (\uut|Mult0|auto_generated|op_2~8_combout\ & (\uut|Mult0|auto_generated|op_1~37\ & VCC)) # (!\uut|Mult0|auto_generated|op_2~8_combout\ & (!\uut|Mult0|auto_generated|op_1~37\))
-- \uut|Mult0|auto_generated|op_1~39\ = CARRY((!\uut|Mult0|auto_generated|op_2~8_combout\ & !\uut|Mult0|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~37\,
	combout => \uut|Mult0|auto_generated|op_1~38_combout\,
	cout => \uut|Mult0|auto_generated|op_1~39\);

-- Location: LCCOMB_X21_Y9_N18
\uut|Mult0|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~40_combout\ = (\uut|Mult0|auto_generated|op_2~10_combout\ & ((GND) # (!\uut|Mult0|auto_generated|op_1~39\))) # (!\uut|Mult0|auto_generated|op_2~10_combout\ & (\uut|Mult0|auto_generated|op_1~39\ $ (GND)))
-- \uut|Mult0|auto_generated|op_1~41\ = CARRY((\uut|Mult0|auto_generated|op_2~10_combout\) # (!\uut|Mult0|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~39\,
	combout => \uut|Mult0|auto_generated|op_1~40_combout\,
	cout => \uut|Mult0|auto_generated|op_1~41\);

-- Location: LCCOMB_X21_Y9_N20
\uut|Mult0|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~42_combout\ = (\uut|Mult0|auto_generated|op_2~12_combout\ & (\uut|Mult0|auto_generated|op_1~41\ & VCC)) # (!\uut|Mult0|auto_generated|op_2~12_combout\ & (!\uut|Mult0|auto_generated|op_1~41\))
-- \uut|Mult0|auto_generated|op_1~43\ = CARRY((!\uut|Mult0|auto_generated|op_2~12_combout\ & !\uut|Mult0|auto_generated|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \uut|Mult0|auto_generated|op_1~41\,
	combout => \uut|Mult0|auto_generated|op_1~42_combout\,
	cout => \uut|Mult0|auto_generated|op_1~43\);

-- Location: LCCOMB_X21_Y9_N22
\uut|Mult0|auto_generated|op_1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult0|auto_generated|op_1~44_combout\ = \uut|Mult0|auto_generated|op_1~43\ $ (\uut|Mult0|auto_generated|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult0|auto_generated|op_2~14_combout\,
	cin => \uut|Mult0|auto_generated|op_1~43\,
	combout => \uut|Mult0|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X20_Y9_N10
\uut|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~36_combout\ = ((\uut|Mult0|auto_generated|op_1~28_combout\ $ (\data|o_data\(11) $ (!\uut|Add0~35\)))) # (GND)
-- \uut|Add0~37\ = CARRY((\uut|Mult0|auto_generated|op_1~28_combout\ & ((\data|o_data\(11)) # (!\uut|Add0~35\))) # (!\uut|Mult0|auto_generated|op_1~28_combout\ & (\data|o_data\(11) & !\uut|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~28_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~35\,
	combout => \uut|Add0~36_combout\,
	cout => \uut|Add0~37\);

-- Location: LCCOMB_X20_Y9_N12
\uut|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~38_combout\ = (\uut|Mult0|auto_generated|op_1~30_combout\ & ((\data|o_data\(11) & (\uut|Add0~37\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~37\)))) # (!\uut|Mult0|auto_generated|op_1~30_combout\ & ((\data|o_data\(11) & (!\uut|Add0~37\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~37\) # (GND)))))
-- \uut|Add0~39\ = CARRY((\uut|Mult0|auto_generated|op_1~30_combout\ & (!\data|o_data\(11) & !\uut|Add0~37\)) # (!\uut|Mult0|auto_generated|op_1~30_combout\ & ((!\uut|Add0~37\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|op_1~30_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~37\,
	combout => \uut|Add0~38_combout\,
	cout => \uut|Add0~39\);

-- Location: LCCOMB_X20_Y9_N14
\uut|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~40_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|op_1~32_combout\ $ (!\uut|Add0~39\)))) # (GND)
-- \uut|Add0~41\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~32_combout\) # (!\uut|Add0~39\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|op_1~32_combout\ & !\uut|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \uut|Add0~39\,
	combout => \uut|Add0~40_combout\,
	cout => \uut|Add0~41\);

-- Location: LCCOMB_X20_Y9_N16
\uut|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~42_combout\ = (\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~34_combout\ & (\uut|Add0~41\ & VCC)) # (!\uut|Mult0|auto_generated|op_1~34_combout\ & (!\uut|Add0~41\)))) # (!\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~34_combout\ & 
-- (!\uut|Add0~41\)) # (!\uut|Mult0|auto_generated|op_1~34_combout\ & ((\uut|Add0~41\) # (GND)))))
-- \uut|Add0~43\ = CARRY((\data|o_data\(11) & (!\uut|Mult0|auto_generated|op_1~34_combout\ & !\uut|Add0~41\)) # (!\data|o_data\(11) & ((!\uut|Add0~41\) # (!\uut|Mult0|auto_generated|op_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \uut|Add0~41\,
	combout => \uut|Add0~42_combout\,
	cout => \uut|Add0~43\);

-- Location: LCCOMB_X20_Y9_N18
\uut|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~44_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|op_1~36_combout\ $ (!\uut|Add0~43\)))) # (GND)
-- \uut|Add0~45\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~36_combout\) # (!\uut|Add0~43\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|op_1~36_combout\ & !\uut|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~36_combout\,
	datad => VCC,
	cin => \uut|Add0~43\,
	combout => \uut|Add0~44_combout\,
	cout => \uut|Add0~45\);

-- Location: LCCOMB_X20_Y9_N20
\uut|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~46_combout\ = (\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~38_combout\ & (\uut|Add0~45\ & VCC)) # (!\uut|Mult0|auto_generated|op_1~38_combout\ & (!\uut|Add0~45\)))) # (!\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~38_combout\ & 
-- (!\uut|Add0~45\)) # (!\uut|Mult0|auto_generated|op_1~38_combout\ & ((\uut|Add0~45\) # (GND)))))
-- \uut|Add0~47\ = CARRY((\data|o_data\(11) & (!\uut|Mult0|auto_generated|op_1~38_combout\ & !\uut|Add0~45\)) # (!\data|o_data\(11) & ((!\uut|Add0~45\) # (!\uut|Mult0|auto_generated|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~38_combout\,
	datad => VCC,
	cin => \uut|Add0~45\,
	combout => \uut|Add0~46_combout\,
	cout => \uut|Add0~47\);

-- Location: LCCOMB_X20_Y9_N22
\uut|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~48_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|op_1~40_combout\ $ (!\uut|Add0~47\)))) # (GND)
-- \uut|Add0~49\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~40_combout\) # (!\uut|Add0~47\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|op_1~40_combout\ & !\uut|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~40_combout\,
	datad => VCC,
	cin => \uut|Add0~47\,
	combout => \uut|Add0~48_combout\,
	cout => \uut|Add0~49\);

-- Location: LCCOMB_X20_Y9_N24
\uut|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~50_combout\ = (\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~42_combout\ & (\uut|Add0~49\ & VCC)) # (!\uut|Mult0|auto_generated|op_1~42_combout\ & (!\uut|Add0~49\)))) # (!\data|o_data\(11) & ((\uut|Mult0|auto_generated|op_1~42_combout\ & 
-- (!\uut|Add0~49\)) # (!\uut|Mult0|auto_generated|op_1~42_combout\ & ((\uut|Add0~49\) # (GND)))))
-- \uut|Add0~51\ = CARRY((\data|o_data\(11) & (!\uut|Mult0|auto_generated|op_1~42_combout\ & !\uut|Add0~49\)) # (!\data|o_data\(11) & ((!\uut|Add0~49\) # (!\uut|Mult0|auto_generated|op_1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|op_1~42_combout\,
	datad => VCC,
	cin => \uut|Add0~49\,
	combout => \uut|Add0~50_combout\,
	cout => \uut|Add0~51\);

-- Location: LCCOMB_X20_Y9_N26
\uut|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~52_combout\ = \data|o_data\(11) $ (\uut|Add0~51\ $ (!\uut|Mult0|auto_generated|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data|o_data\(11),
	datad => \uut|Mult0|auto_generated|op_1~44_combout\,
	cin => \uut|Add0~51\,
	combout => \uut|Add0~52_combout\);

-- Location: FF_X19_Y7_N9
\uut|reg.VA_prev[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N18
\uut|Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector88~0_combout\ = (\uut|reg~12_combout\ & ((\uut|reg.VA_prev2\(23)) # ((\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[23]~_Duplicate_1_q\)))) # (!\uut|reg~12_combout\ & (\uut|reg.state.CALCULATE~q\ & ((\uut|reg.VA_prev[23]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg~12_combout\,
	datab => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev2\(23),
	datad => \uut|reg.VA_prev[23]~_Duplicate_1_q\,
	combout => \uut|Selector88~0_combout\);

-- Location: FF_X19_Y7_N19
\uut|reg.VA_prev2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(23));

-- Location: LCCOMB_X19_Y9_N10
\uut|reg.VA[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[18]~63_combout\ = ((\uut|reg.VA_prev2\(18) $ (\uut|Add0~36_combout\ $ (\uut|reg.VA[17]~62\)))) # (GND)
-- \uut|reg.VA[18]~64\ = CARRY((\uut|reg.VA_prev2\(18) & (\uut|Add0~36_combout\ & !\uut|reg.VA[17]~62\)) # (!\uut|reg.VA_prev2\(18) & ((\uut|Add0~36_combout\) # (!\uut|reg.VA[17]~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(18),
	datab => \uut|Add0~36_combout\,
	datad => VCC,
	cin => \uut|reg.VA[17]~62\,
	combout => \uut|reg.VA[18]~63_combout\,
	cout => \uut|reg.VA[18]~64\);

-- Location: LCCOMB_X19_Y9_N12
\uut|reg.VA[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[19]~65_combout\ = (\uut|reg.VA_prev2\(19) & ((\uut|Add0~38_combout\ & (!\uut|reg.VA[18]~64\)) # (!\uut|Add0~38_combout\ & ((\uut|reg.VA[18]~64\) # (GND))))) # (!\uut|reg.VA_prev2\(19) & ((\uut|Add0~38_combout\ & (\uut|reg.VA[18]~64\ & VCC)) # 
-- (!\uut|Add0~38_combout\ & (!\uut|reg.VA[18]~64\))))
-- \uut|reg.VA[19]~66\ = CARRY((\uut|reg.VA_prev2\(19) & ((!\uut|reg.VA[18]~64\) # (!\uut|Add0~38_combout\))) # (!\uut|reg.VA_prev2\(19) & (!\uut|Add0~38_combout\ & !\uut|reg.VA[18]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(19),
	datab => \uut|Add0~38_combout\,
	datad => VCC,
	cin => \uut|reg.VA[18]~64\,
	combout => \uut|reg.VA[19]~65_combout\,
	cout => \uut|reg.VA[19]~66\);

-- Location: LCCOMB_X19_Y9_N14
\uut|reg.VA[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[20]~67_combout\ = ((\uut|reg.VA_prev2\(20) $ (\uut|Add0~40_combout\ $ (\uut|reg.VA[19]~66\)))) # (GND)
-- \uut|reg.VA[20]~68\ = CARRY((\uut|reg.VA_prev2\(20) & (\uut|Add0~40_combout\ & !\uut|reg.VA[19]~66\)) # (!\uut|reg.VA_prev2\(20) & ((\uut|Add0~40_combout\) # (!\uut|reg.VA[19]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(20),
	datab => \uut|Add0~40_combout\,
	datad => VCC,
	cin => \uut|reg.VA[19]~66\,
	combout => \uut|reg.VA[20]~67_combout\,
	cout => \uut|reg.VA[20]~68\);

-- Location: LCCOMB_X19_Y9_N16
\uut|reg.VA[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[21]~69_combout\ = (\uut|reg.VA_prev2\(21) & ((\uut|Add0~42_combout\ & (!\uut|reg.VA[20]~68\)) # (!\uut|Add0~42_combout\ & ((\uut|reg.VA[20]~68\) # (GND))))) # (!\uut|reg.VA_prev2\(21) & ((\uut|Add0~42_combout\ & (\uut|reg.VA[20]~68\ & VCC)) # 
-- (!\uut|Add0~42_combout\ & (!\uut|reg.VA[20]~68\))))
-- \uut|reg.VA[21]~70\ = CARRY((\uut|reg.VA_prev2\(21) & ((!\uut|reg.VA[20]~68\) # (!\uut|Add0~42_combout\))) # (!\uut|reg.VA_prev2\(21) & (!\uut|Add0~42_combout\ & !\uut|reg.VA[20]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(21),
	datab => \uut|Add0~42_combout\,
	datad => VCC,
	cin => \uut|reg.VA[20]~68\,
	combout => \uut|reg.VA[21]~69_combout\,
	cout => \uut|reg.VA[21]~70\);

-- Location: LCCOMB_X19_Y9_N18
\uut|reg.VA[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[22]~71_combout\ = ((\uut|reg.VA_prev2\(22) $ (\uut|Add0~44_combout\ $ (\uut|reg.VA[21]~70\)))) # (GND)
-- \uut|reg.VA[22]~72\ = CARRY((\uut|reg.VA_prev2\(22) & (\uut|Add0~44_combout\ & !\uut|reg.VA[21]~70\)) # (!\uut|reg.VA_prev2\(22) & ((\uut|Add0~44_combout\) # (!\uut|reg.VA[21]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(22),
	datab => \uut|Add0~44_combout\,
	datad => VCC,
	cin => \uut|reg.VA[21]~70\,
	combout => \uut|reg.VA[22]~71_combout\,
	cout => \uut|reg.VA[22]~72\);

-- Location: LCCOMB_X19_Y9_N20
\uut|reg.VA[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[23]~73_combout\ = (\uut|Add0~46_combout\ & ((\uut|reg.VA_prev2\(23) & (!\uut|reg.VA[22]~72\)) # (!\uut|reg.VA_prev2\(23) & (\uut|reg.VA[22]~72\ & VCC)))) # (!\uut|Add0~46_combout\ & ((\uut|reg.VA_prev2\(23) & ((\uut|reg.VA[22]~72\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(23) & (!\uut|reg.VA[22]~72\))))
-- \uut|reg.VA[23]~74\ = CARRY((\uut|Add0~46_combout\ & (\uut|reg.VA_prev2\(23) & !\uut|reg.VA[22]~72\)) # (!\uut|Add0~46_combout\ & ((\uut|reg.VA_prev2\(23)) # (!\uut|reg.VA[22]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~46_combout\,
	datab => \uut|reg.VA_prev2\(23),
	datad => VCC,
	cin => \uut|reg.VA[22]~72\,
	combout => \uut|reg.VA[23]~73_combout\,
	cout => \uut|reg.VA[23]~74\);

-- Location: LCCOMB_X19_Y9_N22
\uut|reg.VA[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[24]~75_combout\ = ((\uut|reg.VA_prev2\(24) $ (\uut|Add0~48_combout\ $ (\uut|reg.VA[23]~74\)))) # (GND)
-- \uut|reg.VA[24]~76\ = CARRY((\uut|reg.VA_prev2\(24) & (\uut|Add0~48_combout\ & !\uut|reg.VA[23]~74\)) # (!\uut|reg.VA_prev2\(24) & ((\uut|Add0~48_combout\) # (!\uut|reg.VA[23]~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(24),
	datab => \uut|Add0~48_combout\,
	datad => VCC,
	cin => \uut|reg.VA[23]~74\,
	combout => \uut|reg.VA[24]~75_combout\,
	cout => \uut|reg.VA[24]~76\);

-- Location: LCCOMB_X19_Y9_N24
\uut|reg.VA[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[25]~77_combout\ = (\uut|reg.VA_prev2\(25) & ((\uut|Add0~50_combout\ & (!\uut|reg.VA[24]~76\)) # (!\uut|Add0~50_combout\ & ((\uut|reg.VA[24]~76\) # (GND))))) # (!\uut|reg.VA_prev2\(25) & ((\uut|Add0~50_combout\ & (\uut|reg.VA[24]~76\ & VCC)) # 
-- (!\uut|Add0~50_combout\ & (!\uut|reg.VA[24]~76\))))
-- \uut|reg.VA[25]~78\ = CARRY((\uut|reg.VA_prev2\(25) & ((!\uut|reg.VA[24]~76\) # (!\uut|Add0~50_combout\))) # (!\uut|reg.VA_prev2\(25) & (!\uut|Add0~50_combout\ & !\uut|reg.VA[24]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(25),
	datab => \uut|Add0~50_combout\,
	datad => VCC,
	cin => \uut|reg.VA[24]~76\,
	combout => \uut|reg.VA[25]~77_combout\,
	cout => \uut|reg.VA[25]~78\);

-- Location: LCCOMB_X19_Y9_N26
\uut|reg.VA[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[26]~79_combout\ = \uut|reg.VA_prev2\(26) $ (\uut|reg.VA[25]~78\ $ (\uut|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.VA_prev2\(26),
	datad => \uut|Add0~52_combout\,
	cin => \uut|reg.VA[25]~78\,
	combout => \uut|reg.VA[26]~79_combout\);

-- Location: FF_X19_Y9_N27
\uut|reg.VA[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[26]~79_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N18
\uut|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector31~0_combout\ = (\uut|reg.VA[26]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[26]~_Duplicate_1_q\)))) # (!\uut|reg.VA[26]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[26]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[26]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[26]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector31~0_combout\);

-- Location: FF_X19_Y9_N25
\uut|reg.VA[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[25]~77_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N24
\uut|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector32~0_combout\ = (\uut|reg.VA[25]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[25]~_Duplicate_1_q\)))) # (!\uut|reg.VA[25]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[25]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[25]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[25]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector32~0_combout\);

-- Location: FF_X19_Y9_N23
\uut|reg.VA[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[24]~75_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N2
\uut|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector33~0_combout\ = (\uut|reg.VA[24]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[24]~_Duplicate_1_q\)))) # (!\uut|reg.VA[24]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[24]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[24]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[24]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector33~0_combout\);

-- Location: FF_X19_Y9_N21
\uut|reg.VA[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[23]~73_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N8
\uut|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector34~0_combout\ = (\uut|reg.VA[23]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[23]~_Duplicate_1_q\)))) # (!\uut|reg.VA[23]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[23]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[23]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[23]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector34~0_combout\);

-- Location: FF_X19_Y9_N19
\uut|reg.VA[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[22]~71_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y8_N26
\uut|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector35~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[22]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[22]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (((\uut|Selector0~0_combout\ & 
-- \uut|reg.VA[22]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA_prev[22]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA[22]~_Duplicate_1_q\,
	combout => \uut|Selector35~0_combout\);

-- Location: FF_X19_Y9_N17
\uut|reg.VA[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[21]~69_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N0
\uut|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector36~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[21]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[21]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (((\uut|Selector0~0_combout\ & 
-- \uut|reg.VA[21]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA_prev[21]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA[21]~_Duplicate_1_q\,
	combout => \uut|Selector36~0_combout\);

-- Location: FF_X19_Y9_N15
\uut|reg.VA[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[20]~67_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N0
\uut|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector37~0_combout\ = (\uut|reg.VA[20]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[20]~_Duplicate_1_q\)))) # (!\uut|reg.VA[20]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[20]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[20]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[20]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector37~0_combout\);

-- Location: FF_X19_Y9_N13
\uut|reg.VA[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[19]~65_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y9_N0
\uut|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector38~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[19]~_Duplicate_1_q\) # ((\uut|reg.VA[19]~_Duplicate_1_q\ & \uut|Selector0~0_combout\)))) # (!\uut|Selector57~0_combout\ & (((\uut|reg.VA[19]~_Duplicate_1_q\ & 
-- \uut|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA_prev[19]~_Duplicate_1_q\,
	datac => \uut|reg.VA[19]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector38~0_combout\);

-- Location: FF_X19_Y9_N11
\uut|reg.VA[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[18]~63_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N14
\uut|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector39~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[18]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[18]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (((\uut|Selector0~0_combout\ & 
-- \uut|reg.VA[18]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA_prev[18]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA[18]~_Duplicate_1_q\,
	combout => \uut|Selector39~0_combout\);

-- Location: FF_X19_Y10_N19
\uut|reg.VA[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[6]~39_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N16
\uut|Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector51~0_combout\ = (\uut|Selector0~0_combout\ & ((\uut|reg.VA[6]~_Duplicate_1_q\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[6]~_Duplicate_1_q\)))) # (!\uut|Selector0~0_combout\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector0~0_combout\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[6]~_Duplicate_1_q\,
	datad => \uut|reg.VA[6]~_Duplicate_1_q\,
	combout => \uut|Selector51~0_combout\);

-- Location: FF_X19_Y10_N17
\uut|reg.VA[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[5]~37_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N4
\uut|Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector52~0_combout\ = (\uut|reg.VA[5]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[5]~_Duplicate_1_q\)))) # (!\uut|reg.VA[5]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[5]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[5]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector52~0_combout\);

-- Location: FF_X19_Y10_N15
\uut|reg.VA[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[4]~35_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N26
\uut|Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector53~0_combout\ = (\uut|reg.VA[4]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[4]~_Duplicate_1_q\)))) # (!\uut|reg.VA[4]~_Duplicate_1_q\ & (\uut|Selector57~0_combout\ & 
-- (\uut|reg.VA_prev[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[4]~_Duplicate_1_q\,
	datab => \uut|Selector57~0_combout\,
	datac => \uut|reg.VA_prev[4]~_Duplicate_1_q\,
	datad => \uut|Selector0~0_combout\,
	combout => \uut|Selector53~0_combout\);

-- Location: FF_X19_Y10_N13
\uut|reg.VA[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[3]~33_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y10_N16
\uut|Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector54~0_combout\ = (\uut|reg.VA[3]~_Duplicate_1_q\ & ((\uut|Selector0~0_combout\) # ((\uut|Selector57~0_combout\ & \uut|reg.VA_prev[3]~_Duplicate_1_q\)))) # (!\uut|reg.VA[3]~_Duplicate_1_q\ & (((\uut|Selector57~0_combout\ & 
-- \uut|reg.VA_prev[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA[3]~_Duplicate_1_q\,
	datab => \uut|Selector0~0_combout\,
	datac => \uut|Selector57~0_combout\,
	datad => \uut|reg.VA_prev[3]~_Duplicate_1_q\,
	combout => \uut|Selector54~0_combout\);

-- Location: FF_X19_Y10_N11
\uut|reg.VA[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[2]~31_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N8
\uut|Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector55~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[2]~_Duplicate_1_q\) # ((\uut|reg.VA[2]~_Duplicate_1_q\ & \uut|Selector0~0_combout\)))) # (!\uut|Selector57~0_combout\ & (\uut|reg.VA[2]~_Duplicate_1_q\ & 
-- (\uut|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA[2]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA_prev[2]~_Duplicate_1_q\,
	combout => \uut|Selector55~0_combout\);

-- Location: FF_X19_Y10_N9
\uut|reg.VA[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[1]~29_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y10_N2
\uut|Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector56~0_combout\ = (\uut|Selector57~0_combout\ & ((\uut|reg.VA_prev[1]~_Duplicate_1_q\) # ((\uut|Selector0~0_combout\ & \uut|reg.VA[1]~_Duplicate_1_q\)))) # (!\uut|Selector57~0_combout\ & (((\uut|Selector0~0_combout\ & 
-- \uut|reg.VA[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector57~0_combout\,
	datab => \uut|reg.VA_prev[1]~_Duplicate_1_q\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.VA[1]~_Duplicate_1_q\,
	combout => \uut|Selector56~0_combout\);

-- Location: DSPMULT_X18_Y7_N0
\uut|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|reg.state.CALCULATE~q\,
	dataa => \uut|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y7_N2
\uut|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X16_Y9_N6
\uut|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~0_combout\ = (\uut|Mult1|auto_generated|w257w\(14) & (\data|o_data\(0) $ (VCC))) # (!\uut|Mult1|auto_generated|w257w\(14) & (\data|o_data\(0) & VCC))
-- \uut|Add2~1\ = CARRY((\uut|Mult1|auto_generated|w257w\(14) & \data|o_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|w257w\(14),
	datab => \data|o_data\(0),
	datad => VCC,
	combout => \uut|Add2~0_combout\,
	cout => \uut|Add2~1\);

-- Location: LCCOMB_X15_Y9_N6
\uut|reg.result[0][0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][0]~27_combout\ = (\uut|Add2~0_combout\ & ((GND) # (!\uut|reg.VA_prev[0]~_Duplicate_1_q\))) # (!\uut|Add2~0_combout\ & (\uut|reg.VA_prev[0]~_Duplicate_1_q\ $ (GND)))
-- \uut|reg.result[0][0]~28\ = CARRY((\uut|Add2~0_combout\) # (!\uut|reg.VA_prev[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~0_combout\,
	datab => \uut|reg.VA_prev[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \uut|reg.result[0][0]~27_combout\,
	cout => \uut|reg.result[0][0]~28\);

-- Location: FF_X15_Y9_N7
\uut|reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][0]~27_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][0]~q\);

-- Location: DSPMULT_X18_Y12_N0
\uut|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~0_combout\,
	dataa => \uut|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y12_N2
\uut|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y12_N6
\uut|r_Real[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[0]~27_combout\ = (\uut|reg.result[0][0]~q\ & ((GND) # (!\uut|Mult2|auto_generated|w251w\(14)))) # (!\uut|reg.result[0][0]~q\ & (\uut|Mult2|auto_generated|w251w\(14) $ (GND)))
-- \uut|r_Real[0]~28\ = CARRY((\uut|reg.result[0][0]~q\) # (!\uut|Mult2|auto_generated|w251w\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][0]~q\,
	datab => \uut|Mult2|auto_generated|w251w\(14),
	datad => VCC,
	combout => \uut|r_Real[0]~27_combout\,
	cout => \uut|r_Real[0]~28\);

-- Location: FF_X20_Y12_N7
\uut|r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[0]~27_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(0));

-- Location: LCCOMB_X16_Y9_N8
\uut|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~2_combout\ = (\uut|Mult1|auto_generated|w257w\(15) & ((\data|o_data\(1) & (\uut|Add2~1\ & VCC)) # (!\data|o_data\(1) & (!\uut|Add2~1\)))) # (!\uut|Mult1|auto_generated|w257w\(15) & ((\data|o_data\(1) & (!\uut|Add2~1\)) # (!\data|o_data\(1) & 
-- ((\uut|Add2~1\) # (GND)))))
-- \uut|Add2~3\ = CARRY((\uut|Mult1|auto_generated|w257w\(15) & (!\data|o_data\(1) & !\uut|Add2~1\)) # (!\uut|Mult1|auto_generated|w257w\(15) & ((!\uut|Add2~1\) # (!\data|o_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|w257w\(15),
	datab => \data|o_data\(1),
	datad => VCC,
	cin => \uut|Add2~1\,
	combout => \uut|Add2~2_combout\,
	cout => \uut|Add2~3\);

-- Location: LCCOMB_X15_Y9_N8
\uut|reg.result[0][1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][1]~29_combout\ = (\uut|reg.VA_prev[1]~_Duplicate_1_q\ & ((\uut|Add2~2_combout\ & (!\uut|reg.result[0][0]~28\)) # (!\uut|Add2~2_combout\ & ((\uut|reg.result[0][0]~28\) # (GND))))) # (!\uut|reg.VA_prev[1]~_Duplicate_1_q\ & 
-- ((\uut|Add2~2_combout\ & (\uut|reg.result[0][0]~28\ & VCC)) # (!\uut|Add2~2_combout\ & (!\uut|reg.result[0][0]~28\))))
-- \uut|reg.result[0][1]~30\ = CARRY((\uut|reg.VA_prev[1]~_Duplicate_1_q\ & ((!\uut|reg.result[0][0]~28\) # (!\uut|Add2~2_combout\))) # (!\uut|reg.VA_prev[1]~_Duplicate_1_q\ & (!\uut|Add2~2_combout\ & !\uut|reg.result[0][0]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[1]~_Duplicate_1_q\,
	datab => \uut|Add2~2_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][0]~28\,
	combout => \uut|reg.result[0][1]~29_combout\,
	cout => \uut|reg.result[0][1]~30\);

-- Location: FF_X15_Y9_N9
\uut|reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][1]~29_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][1]~q\);

-- Location: LCCOMB_X20_Y12_N8
\uut|r_Real[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[1]~29_combout\ = (\uut|Mult2|auto_generated|w251w\(15) & ((\uut|reg.result[0][1]~q\ & (!\uut|r_Real[0]~28\)) # (!\uut|reg.result[0][1]~q\ & ((\uut|r_Real[0]~28\) # (GND))))) # (!\uut|Mult2|auto_generated|w251w\(15) & ((\uut|reg.result[0][1]~q\ 
-- & (\uut|r_Real[0]~28\ & VCC)) # (!\uut|reg.result[0][1]~q\ & (!\uut|r_Real[0]~28\))))
-- \uut|r_Real[1]~30\ = CARRY((\uut|Mult2|auto_generated|w251w\(15) & ((!\uut|r_Real[0]~28\) # (!\uut|reg.result[0][1]~q\))) # (!\uut|Mult2|auto_generated|w251w\(15) & (!\uut|reg.result[0][1]~q\ & !\uut|r_Real[0]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|w251w\(15),
	datab => \uut|reg.result[0][1]~q\,
	datad => VCC,
	cin => \uut|r_Real[0]~28\,
	combout => \uut|r_Real[1]~29_combout\,
	cout => \uut|r_Real[1]~30\);

-- Location: FF_X20_Y12_N9
\uut|r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[1]~29_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(1));

-- Location: LCCOMB_X16_Y9_N10
\uut|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~4_combout\ = ((\data|o_data\(2) $ (\uut|Mult1|auto_generated|w257w\(16) $ (!\uut|Add2~3\)))) # (GND)
-- \uut|Add2~5\ = CARRY((\data|o_data\(2) & ((\uut|Mult1|auto_generated|w257w\(16)) # (!\uut|Add2~3\))) # (!\data|o_data\(2) & (\uut|Mult1|auto_generated|w257w\(16) & !\uut|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(2),
	datab => \uut|Mult1|auto_generated|w257w\(16),
	datad => VCC,
	cin => \uut|Add2~3\,
	combout => \uut|Add2~4_combout\,
	cout => \uut|Add2~5\);

-- Location: LCCOMB_X15_Y9_N10
\uut|reg.result[0][2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][2]~31_combout\ = ((\uut|reg.VA_prev[2]~_Duplicate_1_q\ $ (\uut|Add2~4_combout\ $ (\uut|reg.result[0][1]~30\)))) # (GND)
-- \uut|reg.result[0][2]~32\ = CARRY((\uut|reg.VA_prev[2]~_Duplicate_1_q\ & (\uut|Add2~4_combout\ & !\uut|reg.result[0][1]~30\)) # (!\uut|reg.VA_prev[2]~_Duplicate_1_q\ & ((\uut|Add2~4_combout\) # (!\uut|reg.result[0][1]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[2]~_Duplicate_1_q\,
	datab => \uut|Add2~4_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][1]~30\,
	combout => \uut|reg.result[0][2]~31_combout\,
	cout => \uut|reg.result[0][2]~32\);

-- Location: FF_X15_Y9_N11
\uut|reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][2]~31_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][2]~q\);

-- Location: LCCOMB_X20_Y12_N10
\uut|r_Real[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[2]~31_combout\ = ((\uut|Mult2|auto_generated|w251w\(16) $ (\uut|reg.result[0][2]~q\ $ (\uut|r_Real[1]~30\)))) # (GND)
-- \uut|r_Real[2]~32\ = CARRY((\uut|Mult2|auto_generated|w251w\(16) & (\uut|reg.result[0][2]~q\ & !\uut|r_Real[1]~30\)) # (!\uut|Mult2|auto_generated|w251w\(16) & ((\uut|reg.result[0][2]~q\) # (!\uut|r_Real[1]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|w251w\(16),
	datab => \uut|reg.result[0][2]~q\,
	datad => VCC,
	cin => \uut|r_Real[1]~30\,
	combout => \uut|r_Real[2]~31_combout\,
	cout => \uut|r_Real[2]~32\);

-- Location: FF_X20_Y12_N11
\uut|r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[2]~31_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(2));

-- Location: LCCOMB_X16_Y9_N12
\uut|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~6_combout\ = (\data|o_data\(3) & ((\uut|Mult1|auto_generated|w257w\(17) & (\uut|Add2~5\ & VCC)) # (!\uut|Mult1|auto_generated|w257w\(17) & (!\uut|Add2~5\)))) # (!\data|o_data\(3) & ((\uut|Mult1|auto_generated|w257w\(17) & (!\uut|Add2~5\)) # 
-- (!\uut|Mult1|auto_generated|w257w\(17) & ((\uut|Add2~5\) # (GND)))))
-- \uut|Add2~7\ = CARRY((\data|o_data\(3) & (!\uut|Mult1|auto_generated|w257w\(17) & !\uut|Add2~5\)) # (!\data|o_data\(3) & ((!\uut|Add2~5\) # (!\uut|Mult1|auto_generated|w257w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(3),
	datab => \uut|Mult1|auto_generated|w257w\(17),
	datad => VCC,
	cin => \uut|Add2~5\,
	combout => \uut|Add2~6_combout\,
	cout => \uut|Add2~7\);

-- Location: LCCOMB_X15_Y9_N12
\uut|reg.result[0][3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][3]~33_combout\ = (\uut|reg.VA_prev[3]~_Duplicate_1_q\ & ((\uut|Add2~6_combout\ & (!\uut|reg.result[0][2]~32\)) # (!\uut|Add2~6_combout\ & ((\uut|reg.result[0][2]~32\) # (GND))))) # (!\uut|reg.VA_prev[3]~_Duplicate_1_q\ & 
-- ((\uut|Add2~6_combout\ & (\uut|reg.result[0][2]~32\ & VCC)) # (!\uut|Add2~6_combout\ & (!\uut|reg.result[0][2]~32\))))
-- \uut|reg.result[0][3]~34\ = CARRY((\uut|reg.VA_prev[3]~_Duplicate_1_q\ & ((!\uut|reg.result[0][2]~32\) # (!\uut|Add2~6_combout\))) # (!\uut|reg.VA_prev[3]~_Duplicate_1_q\ & (!\uut|Add2~6_combout\ & !\uut|reg.result[0][2]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[3]~_Duplicate_1_q\,
	datab => \uut|Add2~6_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][2]~32\,
	combout => \uut|reg.result[0][3]~33_combout\,
	cout => \uut|reg.result[0][3]~34\);

-- Location: FF_X15_Y9_N13
\uut|reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][3]~33_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][3]~q\);

-- Location: LCCOMB_X20_Y12_N12
\uut|r_Real[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[3]~33_combout\ = (\uut|Mult2|auto_generated|w251w\(17) & ((\uut|reg.result[0][3]~q\ & (!\uut|r_Real[2]~32\)) # (!\uut|reg.result[0][3]~q\ & ((\uut|r_Real[2]~32\) # (GND))))) # (!\uut|Mult2|auto_generated|w251w\(17) & ((\uut|reg.result[0][3]~q\ 
-- & (\uut|r_Real[2]~32\ & VCC)) # (!\uut|reg.result[0][3]~q\ & (!\uut|r_Real[2]~32\))))
-- \uut|r_Real[3]~34\ = CARRY((\uut|Mult2|auto_generated|w251w\(17) & ((!\uut|r_Real[2]~32\) # (!\uut|reg.result[0][3]~q\))) # (!\uut|Mult2|auto_generated|w251w\(17) & (!\uut|reg.result[0][3]~q\ & !\uut|r_Real[2]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|w251w\(17),
	datab => \uut|reg.result[0][3]~q\,
	datad => VCC,
	cin => \uut|r_Real[2]~32\,
	combout => \uut|r_Real[3]~33_combout\,
	cout => \uut|r_Real[3]~34\);

-- Location: FF_X20_Y12_N13
\uut|r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[3]~33_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(3));

-- Location: DSPMULT_X18_Y11_N0
\uut|Mult2|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~0_combout\,
	dataa => \uut|Mult2|auto_generated|mac_mult3_DATAA_bus\,
	datab => \uut|Mult2|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult2|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y11_N2
\uut|Mult2|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult2|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y12_N10
\uut|Mult2|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~0_combout\ = (\uut|Mult2|auto_generated|mac_out4~dataout\ & (\uut|Mult2|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\uut|Mult2|auto_generated|mac_out4~dataout\ & (\uut|Mult2|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \uut|Mult2|auto_generated|op_1~1\ = CARRY((\uut|Mult2|auto_generated|mac_out4~dataout\ & \uut|Mult2|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~dataout\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \uut|Mult2|auto_generated|op_1~0_combout\,
	cout => \uut|Mult2|auto_generated|op_1~1\);

-- Location: DSPMULT_X18_Y9_N0
\uut|Mult1|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|reg.state.CALCULATE~q\,
	dataa => \uut|Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \uut|Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y9_N2
\uut|Mult1|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y9_N10
\uut|Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~0_combout\ = (\uut|Mult1|auto_generated|mac_out4~dataout\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\uut|Mult1|auto_generated|mac_out4~dataout\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \uut|Mult1|auto_generated|op_1~1\ = CARRY((\uut|Mult1|auto_generated|mac_out4~dataout\ & \uut|Mult1|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~dataout\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \uut|Mult1|auto_generated|op_1~0_combout\,
	cout => \uut|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X16_Y9_N14
\uut|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~8_combout\ = ((\data|o_data\(4) $ (\uut|Mult1|auto_generated|op_1~0_combout\ $ (!\uut|Add2~7\)))) # (GND)
-- \uut|Add2~9\ = CARRY((\data|o_data\(4) & ((\uut|Mult1|auto_generated|op_1~0_combout\) # (!\uut|Add2~7\))) # (!\data|o_data\(4) & (\uut|Mult1|auto_generated|op_1~0_combout\ & !\uut|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(4),
	datab => \uut|Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \uut|Add2~7\,
	combout => \uut|Add2~8_combout\,
	cout => \uut|Add2~9\);

-- Location: LCCOMB_X15_Y9_N14
\uut|reg.result[0][4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][4]~35_combout\ = ((\uut|reg.VA_prev[4]~_Duplicate_1_q\ $ (\uut|Add2~8_combout\ $ (\uut|reg.result[0][3]~34\)))) # (GND)
-- \uut|reg.result[0][4]~36\ = CARRY((\uut|reg.VA_prev[4]~_Duplicate_1_q\ & (\uut|Add2~8_combout\ & !\uut|reg.result[0][3]~34\)) # (!\uut|reg.VA_prev[4]~_Duplicate_1_q\ & ((\uut|Add2~8_combout\) # (!\uut|reg.result[0][3]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[4]~_Duplicate_1_q\,
	datab => \uut|Add2~8_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][3]~34\,
	combout => \uut|reg.result[0][4]~35_combout\,
	cout => \uut|reg.result[0][4]~36\);

-- Location: FF_X15_Y9_N15
\uut|reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][4]~35_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][4]~q\);

-- Location: LCCOMB_X20_Y12_N14
\uut|r_Real[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[4]~35_combout\ = ((\uut|Mult2|auto_generated|op_1~0_combout\ $ (\uut|reg.result[0][4]~q\ $ (\uut|r_Real[3]~34\)))) # (GND)
-- \uut|r_Real[4]~36\ = CARRY((\uut|Mult2|auto_generated|op_1~0_combout\ & (\uut|reg.result[0][4]~q\ & !\uut|r_Real[3]~34\)) # (!\uut|Mult2|auto_generated|op_1~0_combout\ & ((\uut|reg.result[0][4]~q\) # (!\uut|r_Real[3]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~0_combout\,
	datab => \uut|reg.result[0][4]~q\,
	datad => VCC,
	cin => \uut|r_Real[3]~34\,
	combout => \uut|r_Real[4]~35_combout\,
	cout => \uut|r_Real[4]~36\);

-- Location: FF_X20_Y12_N15
\uut|r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[4]~35_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(4));

-- Location: LCCOMB_X19_Y12_N12
\uut|Mult2|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~2_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ & (\uut|Mult2|auto_generated|op_1~1\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\uut|Mult2|auto_generated|op_1~1\)))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\uut|Mult2|auto_generated|op_1~1\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\uut|Mult2|auto_generated|op_1~1\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~3\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT1\ & (!\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ & !\uut|Mult2|auto_generated|op_1~1\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\uut|Mult2|auto_generated|op_1~1\) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT1\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~1\,
	combout => \uut|Mult2|auto_generated|op_1~2_combout\,
	cout => \uut|Mult2|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y9_N12
\uut|Mult1|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~2_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\uut|Mult1|auto_generated|op_1~1\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\uut|Mult1|auto_generated|op_1~1\)))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\uut|Mult1|auto_generated|op_1~1\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\uut|Mult1|auto_generated|op_1~1\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~3\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\uut|Mult1|auto_generated|op_1~1\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\uut|Mult1|auto_generated|op_1~1\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT1\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~1\,
	combout => \uut|Mult1|auto_generated|op_1~2_combout\,
	cout => \uut|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X16_Y9_N16
\uut|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~10_combout\ = (\data|o_data\(5) & ((\uut|Mult1|auto_generated|op_1~2_combout\ & (\uut|Add2~9\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~2_combout\ & (!\uut|Add2~9\)))) # (!\data|o_data\(5) & ((\uut|Mult1|auto_generated|op_1~2_combout\ & 
-- (!\uut|Add2~9\)) # (!\uut|Mult1|auto_generated|op_1~2_combout\ & ((\uut|Add2~9\) # (GND)))))
-- \uut|Add2~11\ = CARRY((\data|o_data\(5) & (!\uut|Mult1|auto_generated|op_1~2_combout\ & !\uut|Add2~9\)) # (!\data|o_data\(5) & ((!\uut|Add2~9\) # (!\uut|Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(5),
	datab => \uut|Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \uut|Add2~9\,
	combout => \uut|Add2~10_combout\,
	cout => \uut|Add2~11\);

-- Location: LCCOMB_X15_Y9_N16
\uut|reg.result[0][5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][5]~37_combout\ = (\uut|reg.VA_prev[5]~_Duplicate_1_q\ & ((\uut|Add2~10_combout\ & (!\uut|reg.result[0][4]~36\)) # (!\uut|Add2~10_combout\ & ((\uut|reg.result[0][4]~36\) # (GND))))) # (!\uut|reg.VA_prev[5]~_Duplicate_1_q\ & 
-- ((\uut|Add2~10_combout\ & (\uut|reg.result[0][4]~36\ & VCC)) # (!\uut|Add2~10_combout\ & (!\uut|reg.result[0][4]~36\))))
-- \uut|reg.result[0][5]~38\ = CARRY((\uut|reg.VA_prev[5]~_Duplicate_1_q\ & ((!\uut|reg.result[0][4]~36\) # (!\uut|Add2~10_combout\))) # (!\uut|reg.VA_prev[5]~_Duplicate_1_q\ & (!\uut|Add2~10_combout\ & !\uut|reg.result[0][4]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[5]~_Duplicate_1_q\,
	datab => \uut|Add2~10_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][4]~36\,
	combout => \uut|reg.result[0][5]~37_combout\,
	cout => \uut|reg.result[0][5]~38\);

-- Location: FF_X15_Y9_N17
\uut|reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][5]~37_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][5]~q\);

-- Location: LCCOMB_X20_Y12_N16
\uut|r_Real[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[5]~37_combout\ = (\uut|Mult2|auto_generated|op_1~2_combout\ & ((\uut|reg.result[0][5]~q\ & (!\uut|r_Real[4]~36\)) # (!\uut|reg.result[0][5]~q\ & ((\uut|r_Real[4]~36\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~2_combout\ & 
-- ((\uut|reg.result[0][5]~q\ & (\uut|r_Real[4]~36\ & VCC)) # (!\uut|reg.result[0][5]~q\ & (!\uut|r_Real[4]~36\))))
-- \uut|r_Real[5]~38\ = CARRY((\uut|Mult2|auto_generated|op_1~2_combout\ & ((!\uut|r_Real[4]~36\) # (!\uut|reg.result[0][5]~q\))) # (!\uut|Mult2|auto_generated|op_1~2_combout\ & (!\uut|reg.result[0][5]~q\ & !\uut|r_Real[4]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~2_combout\,
	datab => \uut|reg.result[0][5]~q\,
	datad => VCC,
	cin => \uut|r_Real[4]~36\,
	combout => \uut|r_Real[5]~37_combout\,
	cout => \uut|r_Real[5]~38\);

-- Location: FF_X20_Y12_N17
\uut|r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[5]~37_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(5));

-- Location: LCCOMB_X19_Y12_N14
\uut|Mult2|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~4_combout\ = ((\uut|Mult2|auto_generated|mac_out2~DATAOUT20\ $ (\uut|Mult2|auto_generated|mac_out4~DATAOUT2\ $ (!\uut|Mult2|auto_generated|op_1~3\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~5\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT2\) # (!\uut|Mult2|auto_generated|op_1~3\))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (\uut|Mult2|auto_generated|mac_out4~DATAOUT2\ & !\uut|Mult2|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT20\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~3\,
	combout => \uut|Mult2|auto_generated|op_1~4_combout\,
	cout => \uut|Mult2|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y9_N14
\uut|Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~4_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\uut|Mult1|auto_generated|mac_out4~DATAOUT2\ $ (!\uut|Mult1|auto_generated|op_1~3\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~5\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT2\) # (!\uut|Mult1|auto_generated|op_1~3\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- (\uut|Mult1|auto_generated|mac_out4~DATAOUT2\ & !\uut|Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~3\,
	combout => \uut|Mult1|auto_generated|op_1~4_combout\,
	cout => \uut|Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X16_Y9_N18
\uut|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~12_combout\ = ((\data|o_data\(6) $ (\uut|Mult1|auto_generated|op_1~4_combout\ $ (!\uut|Add2~11\)))) # (GND)
-- \uut|Add2~13\ = CARRY((\data|o_data\(6) & ((\uut|Mult1|auto_generated|op_1~4_combout\) # (!\uut|Add2~11\))) # (!\data|o_data\(6) & (\uut|Mult1|auto_generated|op_1~4_combout\ & !\uut|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(6),
	datab => \uut|Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \uut|Add2~11\,
	combout => \uut|Add2~12_combout\,
	cout => \uut|Add2~13\);

-- Location: LCCOMB_X15_Y9_N18
\uut|reg.result[0][6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][6]~39_combout\ = ((\uut|reg.VA_prev[6]~_Duplicate_1_q\ $ (\uut|Add2~12_combout\ $ (\uut|reg.result[0][5]~38\)))) # (GND)
-- \uut|reg.result[0][6]~40\ = CARRY((\uut|reg.VA_prev[6]~_Duplicate_1_q\ & (\uut|Add2~12_combout\ & !\uut|reg.result[0][5]~38\)) # (!\uut|reg.VA_prev[6]~_Duplicate_1_q\ & ((\uut|Add2~12_combout\) # (!\uut|reg.result[0][5]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[6]~_Duplicate_1_q\,
	datab => \uut|Add2~12_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][5]~38\,
	combout => \uut|reg.result[0][6]~39_combout\,
	cout => \uut|reg.result[0][6]~40\);

-- Location: FF_X15_Y9_N19
\uut|reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][6]~39_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][6]~q\);

-- Location: LCCOMB_X20_Y12_N18
\uut|r_Real[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[6]~39_combout\ = ((\uut|Mult2|auto_generated|op_1~4_combout\ $ (\uut|reg.result[0][6]~q\ $ (\uut|r_Real[5]~38\)))) # (GND)
-- \uut|r_Real[6]~40\ = CARRY((\uut|Mult2|auto_generated|op_1~4_combout\ & (\uut|reg.result[0][6]~q\ & !\uut|r_Real[5]~38\)) # (!\uut|Mult2|auto_generated|op_1~4_combout\ & ((\uut|reg.result[0][6]~q\) # (!\uut|r_Real[5]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~4_combout\,
	datab => \uut|reg.result[0][6]~q\,
	datad => VCC,
	cin => \uut|r_Real[5]~38\,
	combout => \uut|r_Real[6]~39_combout\,
	cout => \uut|r_Real[6]~40\);

-- Location: FF_X20_Y12_N19
\uut|r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[6]~39_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(6));

-- Location: LCCOMB_X19_Y12_N16
\uut|Mult2|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~6_combout\ = (\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ & (\uut|Mult2|auto_generated|op_1~5\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\uut|Mult2|auto_generated|op_1~5\)))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ & (!\uut|Mult2|auto_generated|op_1~5\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\uut|Mult2|auto_generated|op_1~5\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~7\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\uut|Mult2|auto_generated|mac_out4~DATAOUT3\ & !\uut|Mult2|auto_generated|op_1~5\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\uut|Mult2|auto_generated|op_1~5\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT21\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~5\,
	combout => \uut|Mult2|auto_generated|op_1~6_combout\,
	cout => \uut|Mult2|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y9_N16
\uut|Mult1|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~6_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ & (\uut|Mult1|auto_generated|op_1~5\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\uut|Mult1|auto_generated|op_1~5\)))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\uut|Mult1|auto_generated|op_1~5\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\uut|Mult1|auto_generated|op_1~5\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~7\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\uut|Mult1|auto_generated|mac_out4~DATAOUT3\ & !\uut|Mult1|auto_generated|op_1~5\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\uut|Mult1|auto_generated|op_1~5\) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~5\,
	combout => \uut|Mult1|auto_generated|op_1~6_combout\,
	cout => \uut|Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X16_Y9_N20
\uut|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~14_combout\ = (\uut|Mult1|auto_generated|op_1~6_combout\ & ((\data|o_data\(7) & (\uut|Add2~13\ & VCC)) # (!\data|o_data\(7) & (!\uut|Add2~13\)))) # (!\uut|Mult1|auto_generated|op_1~6_combout\ & ((\data|o_data\(7) & (!\uut|Add2~13\)) # 
-- (!\data|o_data\(7) & ((\uut|Add2~13\) # (GND)))))
-- \uut|Add2~15\ = CARRY((\uut|Mult1|auto_generated|op_1~6_combout\ & (!\data|o_data\(7) & !\uut|Add2~13\)) # (!\uut|Mult1|auto_generated|op_1~6_combout\ & ((!\uut|Add2~13\) # (!\data|o_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~6_combout\,
	datab => \data|o_data\(7),
	datad => VCC,
	cin => \uut|Add2~13\,
	combout => \uut|Add2~14_combout\,
	cout => \uut|Add2~15\);

-- Location: LCCOMB_X15_Y9_N20
\uut|reg.result[0][7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][7]~41_combout\ = (\uut|Add2~14_combout\ & ((\uut|reg.VA_prev[7]~_Duplicate_1_q\ & (!\uut|reg.result[0][6]~40\)) # (!\uut|reg.VA_prev[7]~_Duplicate_1_q\ & (\uut|reg.result[0][6]~40\ & VCC)))) # (!\uut|Add2~14_combout\ & 
-- ((\uut|reg.VA_prev[7]~_Duplicate_1_q\ & ((\uut|reg.result[0][6]~40\) # (GND))) # (!\uut|reg.VA_prev[7]~_Duplicate_1_q\ & (!\uut|reg.result[0][6]~40\))))
-- \uut|reg.result[0][7]~42\ = CARRY((\uut|Add2~14_combout\ & (\uut|reg.VA_prev[7]~_Duplicate_1_q\ & !\uut|reg.result[0][6]~40\)) # (!\uut|Add2~14_combout\ & ((\uut|reg.VA_prev[7]~_Duplicate_1_q\) # (!\uut|reg.result[0][6]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~14_combout\,
	datab => \uut|reg.VA_prev[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][6]~40\,
	combout => \uut|reg.result[0][7]~41_combout\,
	cout => \uut|reg.result[0][7]~42\);

-- Location: FF_X15_Y9_N21
\uut|reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][7]~41_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][7]~q\);

-- Location: LCCOMB_X20_Y12_N20
\uut|r_Real[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[7]~41_combout\ = (\uut|Mult2|auto_generated|op_1~6_combout\ & ((\uut|reg.result[0][7]~q\ & (!\uut|r_Real[6]~40\)) # (!\uut|reg.result[0][7]~q\ & ((\uut|r_Real[6]~40\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~6_combout\ & 
-- ((\uut|reg.result[0][7]~q\ & (\uut|r_Real[6]~40\ & VCC)) # (!\uut|reg.result[0][7]~q\ & (!\uut|r_Real[6]~40\))))
-- \uut|r_Real[7]~42\ = CARRY((\uut|Mult2|auto_generated|op_1~6_combout\ & ((!\uut|r_Real[6]~40\) # (!\uut|reg.result[0][7]~q\))) # (!\uut|Mult2|auto_generated|op_1~6_combout\ & (!\uut|reg.result[0][7]~q\ & !\uut|r_Real[6]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~6_combout\,
	datab => \uut|reg.result[0][7]~q\,
	datad => VCC,
	cin => \uut|r_Real[6]~40\,
	combout => \uut|r_Real[7]~41_combout\,
	cout => \uut|r_Real[7]~42\);

-- Location: FF_X20_Y12_N21
\uut|r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[7]~41_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(7));

-- Location: LCCOMB_X17_Y9_N18
\uut|Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~8_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\uut|Mult1|auto_generated|mac_out4~DATAOUT4\ $ (!\uut|Mult1|auto_generated|op_1~7\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~9\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT4\) # (!\uut|Mult1|auto_generated|op_1~7\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- (\uut|Mult1|auto_generated|mac_out4~DATAOUT4\ & !\uut|Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~7\,
	combout => \uut|Mult1|auto_generated|op_1~8_combout\,
	cout => \uut|Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X16_Y9_N22
\uut|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~16_combout\ = ((\uut|Mult1|auto_generated|op_1~8_combout\ $ (\data|o_data\(8) $ (!\uut|Add2~15\)))) # (GND)
-- \uut|Add2~17\ = CARRY((\uut|Mult1|auto_generated|op_1~8_combout\ & ((\data|o_data\(8)) # (!\uut|Add2~15\))) # (!\uut|Mult1|auto_generated|op_1~8_combout\ & (\data|o_data\(8) & !\uut|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~8_combout\,
	datab => \data|o_data\(8),
	datad => VCC,
	cin => \uut|Add2~15\,
	combout => \uut|Add2~16_combout\,
	cout => \uut|Add2~17\);

-- Location: LCCOMB_X15_Y9_N22
\uut|reg.result[0][8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][8]~43_combout\ = ((\uut|reg.VA_prev[8]~_Duplicate_1_q\ $ (\uut|Add2~16_combout\ $ (\uut|reg.result[0][7]~42\)))) # (GND)
-- \uut|reg.result[0][8]~44\ = CARRY((\uut|reg.VA_prev[8]~_Duplicate_1_q\ & (\uut|Add2~16_combout\ & !\uut|reg.result[0][7]~42\)) # (!\uut|reg.VA_prev[8]~_Duplicate_1_q\ & ((\uut|Add2~16_combout\) # (!\uut|reg.result[0][7]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[8]~_Duplicate_1_q\,
	datab => \uut|Add2~16_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][7]~42\,
	combout => \uut|reg.result[0][8]~43_combout\,
	cout => \uut|reg.result[0][8]~44\);

-- Location: FF_X15_Y9_N23
\uut|reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][8]~43_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][8]~q\);

-- Location: LCCOMB_X19_Y12_N18
\uut|Mult2|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~8_combout\ = ((\uut|Mult2|auto_generated|mac_out2~DATAOUT22\ $ (\uut|Mult2|auto_generated|mac_out4~DATAOUT4\ $ (!\uut|Mult2|auto_generated|op_1~7\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~9\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT4\) # (!\uut|Mult2|auto_generated|op_1~7\))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- (\uut|Mult2|auto_generated|mac_out4~DATAOUT4\ & !\uut|Mult2|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT22\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~7\,
	combout => \uut|Mult2|auto_generated|op_1~8_combout\,
	cout => \uut|Mult2|auto_generated|op_1~9\);

-- Location: LCCOMB_X20_Y12_N22
\uut|r_Real[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[8]~43_combout\ = ((\uut|reg.result[0][8]~q\ $ (\uut|Mult2|auto_generated|op_1~8_combout\ $ (\uut|r_Real[7]~42\)))) # (GND)
-- \uut|r_Real[8]~44\ = CARRY((\uut|reg.result[0][8]~q\ & ((!\uut|r_Real[7]~42\) # (!\uut|Mult2|auto_generated|op_1~8_combout\))) # (!\uut|reg.result[0][8]~q\ & (!\uut|Mult2|auto_generated|op_1~8_combout\ & !\uut|r_Real[7]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][8]~q\,
	datab => \uut|Mult2|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \uut|r_Real[7]~42\,
	combout => \uut|r_Real[8]~43_combout\,
	cout => \uut|r_Real[8]~44\);

-- Location: FF_X20_Y12_N23
\uut|r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[8]~43_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(8));

-- Location: LCCOMB_X17_Y9_N20
\uut|Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~10_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\uut|Mult1|auto_generated|op_1~9\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\uut|Mult1|auto_generated|op_1~9\)))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\uut|Mult1|auto_generated|op_1~9\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\uut|Mult1|auto_generated|op_1~9\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~11\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\uut|Mult1|auto_generated|op_1~9\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- ((!\uut|Mult1|auto_generated|op_1~9\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT5\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~9\,
	combout => \uut|Mult1|auto_generated|op_1~10_combout\,
	cout => \uut|Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X16_Y9_N24
\uut|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~18_combout\ = (\uut|Mult1|auto_generated|op_1~10_combout\ & ((\data|o_data\(9) & (\uut|Add2~17\ & VCC)) # (!\data|o_data\(9) & (!\uut|Add2~17\)))) # (!\uut|Mult1|auto_generated|op_1~10_combout\ & ((\data|o_data\(9) & (!\uut|Add2~17\)) # 
-- (!\data|o_data\(9) & ((\uut|Add2~17\) # (GND)))))
-- \uut|Add2~19\ = CARRY((\uut|Mult1|auto_generated|op_1~10_combout\ & (!\data|o_data\(9) & !\uut|Add2~17\)) # (!\uut|Mult1|auto_generated|op_1~10_combout\ & ((!\uut|Add2~17\) # (!\data|o_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~10_combout\,
	datab => \data|o_data\(9),
	datad => VCC,
	cin => \uut|Add2~17\,
	combout => \uut|Add2~18_combout\,
	cout => \uut|Add2~19\);

-- Location: LCCOMB_X15_Y9_N24
\uut|reg.result[0][9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][9]~45_combout\ = (\uut|reg.VA_prev[9]~_Duplicate_1_q\ & ((\uut|Add2~18_combout\ & (!\uut|reg.result[0][8]~44\)) # (!\uut|Add2~18_combout\ & ((\uut|reg.result[0][8]~44\) # (GND))))) # (!\uut|reg.VA_prev[9]~_Duplicate_1_q\ & 
-- ((\uut|Add2~18_combout\ & (\uut|reg.result[0][8]~44\ & VCC)) # (!\uut|Add2~18_combout\ & (!\uut|reg.result[0][8]~44\))))
-- \uut|reg.result[0][9]~46\ = CARRY((\uut|reg.VA_prev[9]~_Duplicate_1_q\ & ((!\uut|reg.result[0][8]~44\) # (!\uut|Add2~18_combout\))) # (!\uut|reg.VA_prev[9]~_Duplicate_1_q\ & (!\uut|Add2~18_combout\ & !\uut|reg.result[0][8]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[9]~_Duplicate_1_q\,
	datab => \uut|Add2~18_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][8]~44\,
	combout => \uut|reg.result[0][9]~45_combout\,
	cout => \uut|reg.result[0][9]~46\);

-- Location: FF_X15_Y9_N25
\uut|reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][9]~45_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][9]~q\);

-- Location: LCCOMB_X19_Y12_N20
\uut|Mult2|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~10_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ & (\uut|Mult2|auto_generated|op_1~9\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\uut|Mult2|auto_generated|op_1~9\)))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\uut|Mult2|auto_generated|op_1~9\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\uut|Mult2|auto_generated|op_1~9\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~11\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT5\ & (!\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ & !\uut|Mult2|auto_generated|op_1~9\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT5\ & 
-- ((!\uut|Mult2|auto_generated|op_1~9\) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT5\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~9\,
	combout => \uut|Mult2|auto_generated|op_1~10_combout\,
	cout => \uut|Mult2|auto_generated|op_1~11\);

-- Location: LCCOMB_X20_Y12_N24
\uut|r_Real[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[9]~45_combout\ = (\uut|reg.result[0][9]~q\ & ((\uut|Mult2|auto_generated|op_1~10_combout\ & (!\uut|r_Real[8]~44\)) # (!\uut|Mult2|auto_generated|op_1~10_combout\ & (\uut|r_Real[8]~44\ & VCC)))) # (!\uut|reg.result[0][9]~q\ & 
-- ((\uut|Mult2|auto_generated|op_1~10_combout\ & ((\uut|r_Real[8]~44\) # (GND))) # (!\uut|Mult2|auto_generated|op_1~10_combout\ & (!\uut|r_Real[8]~44\))))
-- \uut|r_Real[9]~46\ = CARRY((\uut|reg.result[0][9]~q\ & (\uut|Mult2|auto_generated|op_1~10_combout\ & !\uut|r_Real[8]~44\)) # (!\uut|reg.result[0][9]~q\ & ((\uut|Mult2|auto_generated|op_1~10_combout\) # (!\uut|r_Real[8]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][9]~q\,
	datab => \uut|Mult2|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \uut|r_Real[8]~44\,
	combout => \uut|r_Real[9]~45_combout\,
	cout => \uut|r_Real[9]~46\);

-- Location: FF_X20_Y12_N25
\uut|r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[9]~45_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(9));

-- Location: LCCOMB_X17_Y9_N22
\uut|Mult1|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~12_combout\ = ((\uut|Mult1|auto_generated|mac_out4~DATAOUT6\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ $ (!\uut|Mult1|auto_generated|op_1~11\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~13\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT6\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT24\) # (!\uut|Mult1|auto_generated|op_1~11\))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT6\ & 
-- (\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & !\uut|Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT6\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~11\,
	combout => \uut|Mult1|auto_generated|op_1~12_combout\,
	cout => \uut|Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X16_Y9_N26
\uut|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~20_combout\ = ((\data|o_data\(10) $ (\uut|Mult1|auto_generated|op_1~12_combout\ $ (!\uut|Add2~19\)))) # (GND)
-- \uut|Add2~21\ = CARRY((\data|o_data\(10) & ((\uut|Mult1|auto_generated|op_1~12_combout\) # (!\uut|Add2~19\))) # (!\data|o_data\(10) & (\uut|Mult1|auto_generated|op_1~12_combout\ & !\uut|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(10),
	datab => \uut|Mult1|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \uut|Add2~19\,
	combout => \uut|Add2~20_combout\,
	cout => \uut|Add2~21\);

-- Location: LCCOMB_X15_Y9_N26
\uut|reg.result[0][10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][10]~47_combout\ = ((\uut|Add2~20_combout\ $ (\uut|reg.VA_prev[10]~_Duplicate_1_q\ $ (\uut|reg.result[0][9]~46\)))) # (GND)
-- \uut|reg.result[0][10]~48\ = CARRY((\uut|Add2~20_combout\ & ((!\uut|reg.result[0][9]~46\) # (!\uut|reg.VA_prev[10]~_Duplicate_1_q\))) # (!\uut|Add2~20_combout\ & (!\uut|reg.VA_prev[10]~_Duplicate_1_q\ & !\uut|reg.result[0][9]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~20_combout\,
	datab => \uut|reg.VA_prev[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][9]~46\,
	combout => \uut|reg.result[0][10]~47_combout\,
	cout => \uut|reg.result[0][10]~48\);

-- Location: FF_X15_Y9_N27
\uut|reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][10]~47_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][10]~q\);

-- Location: LCCOMB_X19_Y12_N22
\uut|Mult2|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~12_combout\ = ((\uut|Mult2|auto_generated|mac_out2~DATAOUT24\ $ (\uut|Mult2|auto_generated|mac_out4~DATAOUT6\ $ (!\uut|Mult2|auto_generated|op_1~11\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~13\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT6\) # (!\uut|Mult2|auto_generated|op_1~11\))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (\uut|Mult2|auto_generated|mac_out4~DATAOUT6\ & !\uut|Mult2|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT24\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~11\,
	combout => \uut|Mult2|auto_generated|op_1~12_combout\,
	cout => \uut|Mult2|auto_generated|op_1~13\);

-- Location: LCCOMB_X20_Y12_N26
\uut|r_Real[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[10]~47_combout\ = ((\uut|reg.result[0][10]~q\ $ (\uut|Mult2|auto_generated|op_1~12_combout\ $ (\uut|r_Real[9]~46\)))) # (GND)
-- \uut|r_Real[10]~48\ = CARRY((\uut|reg.result[0][10]~q\ & ((!\uut|r_Real[9]~46\) # (!\uut|Mult2|auto_generated|op_1~12_combout\))) # (!\uut|reg.result[0][10]~q\ & (!\uut|Mult2|auto_generated|op_1~12_combout\ & !\uut|r_Real[9]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][10]~q\,
	datab => \uut|Mult2|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \uut|r_Real[9]~46\,
	combout => \uut|r_Real[10]~47_combout\,
	cout => \uut|r_Real[10]~48\);

-- Location: FF_X20_Y12_N27
\uut|r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[10]~47_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(10));

-- Location: LCCOMB_X17_Y9_N24
\uut|Mult1|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~14_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & (\uut|Mult1|auto_generated|op_1~13\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\uut|Mult1|auto_generated|op_1~13\)))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\uut|Mult1|auto_generated|op_1~13\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\uut|Mult1|auto_generated|op_1~13\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~15\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & !\uut|Mult1|auto_generated|op_1~13\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\uut|Mult1|auto_generated|op_1~13\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT7\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~13\,
	combout => \uut|Mult1|auto_generated|op_1~14_combout\,
	cout => \uut|Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X16_Y9_N28
\uut|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~22_combout\ = (\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~14_combout\ & (\uut|Add2~21\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~14_combout\ & (!\uut|Add2~21\)))) # (!\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~14_combout\ & 
-- (!\uut|Add2~21\)) # (!\uut|Mult1|auto_generated|op_1~14_combout\ & ((\uut|Add2~21\) # (GND)))))
-- \uut|Add2~23\ = CARRY((\data|o_data\(11) & (!\uut|Mult1|auto_generated|op_1~14_combout\ & !\uut|Add2~21\)) # (!\data|o_data\(11) & ((!\uut|Add2~21\) # (!\uut|Mult1|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \uut|Add2~21\,
	combout => \uut|Add2~22_combout\,
	cout => \uut|Add2~23\);

-- Location: LCCOMB_X15_Y9_N28
\uut|reg.result[0][11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][11]~49_combout\ = (\uut|reg.VA_prev[11]~_Duplicate_1_q\ & ((\uut|Add2~22_combout\ & (!\uut|reg.result[0][10]~48\)) # (!\uut|Add2~22_combout\ & ((\uut|reg.result[0][10]~48\) # (GND))))) # (!\uut|reg.VA_prev[11]~_Duplicate_1_q\ & 
-- ((\uut|Add2~22_combout\ & (\uut|reg.result[0][10]~48\ & VCC)) # (!\uut|Add2~22_combout\ & (!\uut|reg.result[0][10]~48\))))
-- \uut|reg.result[0][11]~50\ = CARRY((\uut|reg.VA_prev[11]~_Duplicate_1_q\ & ((!\uut|reg.result[0][10]~48\) # (!\uut|Add2~22_combout\))) # (!\uut|reg.VA_prev[11]~_Duplicate_1_q\ & (!\uut|Add2~22_combout\ & !\uut|reg.result[0][10]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[11]~_Duplicate_1_q\,
	datab => \uut|Add2~22_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][10]~48\,
	combout => \uut|reg.result[0][11]~49_combout\,
	cout => \uut|reg.result[0][11]~50\);

-- Location: FF_X15_Y9_N29
\uut|reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][11]~49_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][11]~q\);

-- Location: LCCOMB_X19_Y12_N24
\uut|Mult2|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~14_combout\ = (\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ & (\uut|Mult2|auto_generated|op_1~13\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ & 
-- (!\uut|Mult2|auto_generated|op_1~13\)))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ & (!\uut|Mult2|auto_generated|op_1~13\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ & 
-- ((\uut|Mult2|auto_generated|op_1~13\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~15\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\uut|Mult2|auto_generated|mac_out4~DATAOUT7\ & !\uut|Mult2|auto_generated|op_1~13\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\uut|Mult2|auto_generated|op_1~13\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT25\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~13\,
	combout => \uut|Mult2|auto_generated|op_1~14_combout\,
	cout => \uut|Mult2|auto_generated|op_1~15\);

-- Location: LCCOMB_X20_Y12_N28
\uut|r_Real[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[11]~49_combout\ = (\uut|reg.result[0][11]~q\ & ((\uut|Mult2|auto_generated|op_1~14_combout\ & (!\uut|r_Real[10]~48\)) # (!\uut|Mult2|auto_generated|op_1~14_combout\ & (\uut|r_Real[10]~48\ & VCC)))) # (!\uut|reg.result[0][11]~q\ & 
-- ((\uut|Mult2|auto_generated|op_1~14_combout\ & ((\uut|r_Real[10]~48\) # (GND))) # (!\uut|Mult2|auto_generated|op_1~14_combout\ & (!\uut|r_Real[10]~48\))))
-- \uut|r_Real[11]~50\ = CARRY((\uut|reg.result[0][11]~q\ & (\uut|Mult2|auto_generated|op_1~14_combout\ & !\uut|r_Real[10]~48\)) # (!\uut|reg.result[0][11]~q\ & ((\uut|Mult2|auto_generated|op_1~14_combout\) # (!\uut|r_Real[10]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][11]~q\,
	datab => \uut|Mult2|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \uut|r_Real[10]~48\,
	combout => \uut|r_Real[11]~49_combout\,
	cout => \uut|r_Real[11]~50\);

-- Location: FF_X20_Y12_N29
\uut|r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[11]~49_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(11));

-- Location: LCCOMB_X19_Y12_N26
\uut|Mult2|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~16_combout\ = ((\uut|Mult2|auto_generated|mac_out2~DATAOUT26\ $ (\uut|Mult2|auto_generated|mac_out4~DATAOUT8\ $ (!\uut|Mult2|auto_generated|op_1~15\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~17\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT8\) # (!\uut|Mult2|auto_generated|op_1~15\))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT26\ & 
-- (\uut|Mult2|auto_generated|mac_out4~DATAOUT8\ & !\uut|Mult2|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~15\,
	combout => \uut|Mult2|auto_generated|op_1~16_combout\,
	cout => \uut|Mult2|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y9_N26
\uut|Mult1|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~16_combout\ = ((\uut|Mult1|auto_generated|mac_out4~DATAOUT8\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ $ (!\uut|Mult1|auto_generated|op_1~15\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~17\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT8\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT26\) # (!\uut|Mult1|auto_generated|op_1~15\))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT8\ & 
-- (\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & !\uut|Mult1|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT8\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~15\,
	combout => \uut|Mult1|auto_generated|op_1~16_combout\,
	cout => \uut|Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X16_Y9_N30
\uut|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~24_combout\ = ((\data|o_data\(11) $ (\uut|Mult1|auto_generated|op_1~16_combout\ $ (!\uut|Add2~23\)))) # (GND)
-- \uut|Add2~25\ = CARRY((\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~16_combout\) # (!\uut|Add2~23\))) # (!\data|o_data\(11) & (\uut|Mult1|auto_generated|op_1~16_combout\ & !\uut|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \uut|Add2~23\,
	combout => \uut|Add2~24_combout\,
	cout => \uut|Add2~25\);

-- Location: LCCOMB_X15_Y9_N30
\uut|reg.result[0][12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][12]~51_combout\ = ((\uut|Add2~24_combout\ $ (\uut|reg.VA_prev[12]~_Duplicate_1_q\ $ (\uut|reg.result[0][11]~50\)))) # (GND)
-- \uut|reg.result[0][12]~52\ = CARRY((\uut|Add2~24_combout\ & ((!\uut|reg.result[0][11]~50\) # (!\uut|reg.VA_prev[12]~_Duplicate_1_q\))) # (!\uut|Add2~24_combout\ & (!\uut|reg.VA_prev[12]~_Duplicate_1_q\ & !\uut|reg.result[0][11]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~24_combout\,
	datab => \uut|reg.VA_prev[12]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][11]~50\,
	combout => \uut|reg.result[0][12]~51_combout\,
	cout => \uut|reg.result[0][12]~52\);

-- Location: FF_X15_Y9_N31
\uut|reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][12]~51_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][12]~q\);

-- Location: LCCOMB_X20_Y12_N30
\uut|r_Real[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[12]~51_combout\ = ((\uut|Mult2|auto_generated|op_1~16_combout\ $ (\uut|reg.result[0][12]~q\ $ (\uut|r_Real[11]~50\)))) # (GND)
-- \uut|r_Real[12]~52\ = CARRY((\uut|Mult2|auto_generated|op_1~16_combout\ & (\uut|reg.result[0][12]~q\ & !\uut|r_Real[11]~50\)) # (!\uut|Mult2|auto_generated|op_1~16_combout\ & ((\uut|reg.result[0][12]~q\) # (!\uut|r_Real[11]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~16_combout\,
	datab => \uut|reg.result[0][12]~q\,
	datad => VCC,
	cin => \uut|r_Real[11]~50\,
	combout => \uut|r_Real[12]~51_combout\,
	cout => \uut|r_Real[12]~52\);

-- Location: FF_X20_Y12_N31
\uut|r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[12]~51_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(12));

-- Location: LCCOMB_X19_Y12_N28
\uut|Mult2|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~18_combout\ = (\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ & (\uut|Mult2|auto_generated|op_1~17\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\uut|Mult2|auto_generated|op_1~17\)))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ & (!\uut|Mult2|auto_generated|op_1~17\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\uut|Mult2|auto_generated|op_1~17\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~19\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\uut|Mult2|auto_generated|mac_out4~DATAOUT9\ & !\uut|Mult2|auto_generated|op_1~17\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ & 
-- ((!\uut|Mult2|auto_generated|op_1~17\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~17\,
	combout => \uut|Mult2|auto_generated|op_1~18_combout\,
	cout => \uut|Mult2|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y9_N28
\uut|Mult1|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~18_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ & (\uut|Mult1|auto_generated|op_1~17\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\uut|Mult1|auto_generated|op_1~17\)))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\uut|Mult1|auto_generated|op_1~17\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\uut|Mult1|auto_generated|op_1~17\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~19\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\uut|Mult1|auto_generated|mac_out4~DATAOUT9\ & !\uut|Mult1|auto_generated|op_1~17\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & 
-- ((!\uut|Mult1|auto_generated|op_1~17\) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~17\,
	combout => \uut|Mult1|auto_generated|op_1~18_combout\,
	cout => \uut|Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X16_Y8_N0
\uut|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~26_combout\ = (\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~18_combout\ & (\uut|Add2~25\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~18_combout\ & (!\uut|Add2~25\)))) # (!\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~18_combout\ & 
-- (!\uut|Add2~25\)) # (!\uut|Mult1|auto_generated|op_1~18_combout\ & ((\uut|Add2~25\) # (GND)))))
-- \uut|Add2~27\ = CARRY((\data|o_data\(11) & (!\uut|Mult1|auto_generated|op_1~18_combout\ & !\uut|Add2~25\)) # (!\data|o_data\(11) & ((!\uut|Add2~25\) # (!\uut|Mult1|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \uut|Add2~25\,
	combout => \uut|Add2~26_combout\,
	cout => \uut|Add2~27\);

-- Location: LCCOMB_X15_Y8_N0
\uut|reg.result[0][13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][13]~53_combout\ = (\uut|reg.VA_prev[13]~_Duplicate_1_q\ & ((\uut|Add2~26_combout\ & (!\uut|reg.result[0][12]~52\)) # (!\uut|Add2~26_combout\ & ((\uut|reg.result[0][12]~52\) # (GND))))) # (!\uut|reg.VA_prev[13]~_Duplicate_1_q\ & 
-- ((\uut|Add2~26_combout\ & (\uut|reg.result[0][12]~52\ & VCC)) # (!\uut|Add2~26_combout\ & (!\uut|reg.result[0][12]~52\))))
-- \uut|reg.result[0][13]~54\ = CARRY((\uut|reg.VA_prev[13]~_Duplicate_1_q\ & ((!\uut|reg.result[0][12]~52\) # (!\uut|Add2~26_combout\))) # (!\uut|reg.VA_prev[13]~_Duplicate_1_q\ & (!\uut|Add2~26_combout\ & !\uut|reg.result[0][12]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[13]~_Duplicate_1_q\,
	datab => \uut|Add2~26_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][12]~52\,
	combout => \uut|reg.result[0][13]~53_combout\,
	cout => \uut|reg.result[0][13]~54\);

-- Location: FF_X15_Y8_N1
\uut|reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][13]~53_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][13]~q\);

-- Location: LCCOMB_X20_Y11_N0
\uut|r_Real[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[13]~53_combout\ = (\uut|Mult2|auto_generated|op_1~18_combout\ & ((\uut|reg.result[0][13]~q\ & (!\uut|r_Real[12]~52\)) # (!\uut|reg.result[0][13]~q\ & ((\uut|r_Real[12]~52\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~18_combout\ & 
-- ((\uut|reg.result[0][13]~q\ & (\uut|r_Real[12]~52\ & VCC)) # (!\uut|reg.result[0][13]~q\ & (!\uut|r_Real[12]~52\))))
-- \uut|r_Real[13]~54\ = CARRY((\uut|Mult2|auto_generated|op_1~18_combout\ & ((!\uut|r_Real[12]~52\) # (!\uut|reg.result[0][13]~q\))) # (!\uut|Mult2|auto_generated|op_1~18_combout\ & (!\uut|reg.result[0][13]~q\ & !\uut|r_Real[12]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~18_combout\,
	datab => \uut|reg.result[0][13]~q\,
	datad => VCC,
	cin => \uut|r_Real[12]~52\,
	combout => \uut|r_Real[13]~53_combout\,
	cout => \uut|r_Real[13]~54\);

-- Location: FF_X20_Y11_N1
\uut|r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[13]~53_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(13));

-- Location: LCCOMB_X17_Y9_N30
\uut|Mult1|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~20_combout\ = ((\uut|Mult1|auto_generated|mac_out4~DATAOUT10\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ $ (!\uut|Mult1|auto_generated|op_1~19\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~21\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT10\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT28\) # (!\uut|Mult1|auto_generated|op_1~19\))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT10\ & 
-- (\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & !\uut|Mult1|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT10\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~19\,
	combout => \uut|Mult1|auto_generated|op_1~20_combout\,
	cout => \uut|Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X16_Y8_N2
\uut|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~28_combout\ = ((\data|o_data\(11) $ (\uut|Mult1|auto_generated|op_1~20_combout\ $ (!\uut|Add2~27\)))) # (GND)
-- \uut|Add2~29\ = CARRY((\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~20_combout\) # (!\uut|Add2~27\))) # (!\data|o_data\(11) & (\uut|Mult1|auto_generated|op_1~20_combout\ & !\uut|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \uut|Add2~27\,
	combout => \uut|Add2~28_combout\,
	cout => \uut|Add2~29\);

-- Location: LCCOMB_X15_Y8_N2
\uut|reg.result[0][14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][14]~55_combout\ = ((\uut|Add2~28_combout\ $ (\uut|reg.VA_prev[14]~_Duplicate_1_q\ $ (\uut|reg.result[0][13]~54\)))) # (GND)
-- \uut|reg.result[0][14]~56\ = CARRY((\uut|Add2~28_combout\ & ((!\uut|reg.result[0][13]~54\) # (!\uut|reg.VA_prev[14]~_Duplicate_1_q\))) # (!\uut|Add2~28_combout\ & (!\uut|reg.VA_prev[14]~_Duplicate_1_q\ & !\uut|reg.result[0][13]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~28_combout\,
	datab => \uut|reg.VA_prev[14]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][13]~54\,
	combout => \uut|reg.result[0][14]~55_combout\,
	cout => \uut|reg.result[0][14]~56\);

-- Location: FF_X15_Y8_N3
\uut|reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][14]~55_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][14]~q\);

-- Location: LCCOMB_X19_Y12_N30
\uut|Mult2|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~20_combout\ = ((\uut|Mult2|auto_generated|mac_out4~DATAOUT10\ $ (\uut|Mult2|auto_generated|mac_out2~DATAOUT28\ $ (!\uut|Mult2|auto_generated|op_1~19\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~21\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT10\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT28\) # (!\uut|Mult2|auto_generated|op_1~19\))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT10\ & 
-- (\uut|Mult2|auto_generated|mac_out2~DATAOUT28\ & !\uut|Mult2|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT10\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~19\,
	combout => \uut|Mult2|auto_generated|op_1~20_combout\,
	cout => \uut|Mult2|auto_generated|op_1~21\);

-- Location: LCCOMB_X20_Y11_N2
\uut|r_Real[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[14]~55_combout\ = ((\uut|reg.result[0][14]~q\ $ (\uut|Mult2|auto_generated|op_1~20_combout\ $ (\uut|r_Real[13]~54\)))) # (GND)
-- \uut|r_Real[14]~56\ = CARRY((\uut|reg.result[0][14]~q\ & ((!\uut|r_Real[13]~54\) # (!\uut|Mult2|auto_generated|op_1~20_combout\))) # (!\uut|reg.result[0][14]~q\ & (!\uut|Mult2|auto_generated|op_1~20_combout\ & !\uut|r_Real[13]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][14]~q\,
	datab => \uut|Mult2|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \uut|r_Real[13]~54\,
	combout => \uut|r_Real[14]~55_combout\,
	cout => \uut|r_Real[14]~56\);

-- Location: FF_X20_Y11_N3
\uut|r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[14]~55_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(14));

-- Location: LCCOMB_X19_Y11_N0
\uut|Mult2|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~22_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ & (\uut|Mult2|auto_generated|op_1~21\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\uut|Mult2|auto_generated|op_1~21\)))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ & (!\uut|Mult2|auto_generated|op_1~21\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\uut|Mult2|auto_generated|op_1~21\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~23\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT11\ & (!\uut|Mult2|auto_generated|mac_out2~DATAOUT29\ & !\uut|Mult2|auto_generated|op_1~21\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\uut|Mult2|auto_generated|op_1~21\) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT11\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~21\,
	combout => \uut|Mult2|auto_generated|op_1~22_combout\,
	cout => \uut|Mult2|auto_generated|op_1~23\);

-- Location: LCCOMB_X17_Y8_N0
\uut|Mult1|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~22_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ & (\uut|Mult1|auto_generated|op_1~21\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\uut|Mult1|auto_generated|op_1~21\)))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\uut|Mult1|auto_generated|op_1~21\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\uut|Mult1|auto_generated|op_1~21\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~23\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT29\ & !\uut|Mult1|auto_generated|op_1~21\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\uut|Mult1|auto_generated|op_1~21\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT11\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~21\,
	combout => \uut|Mult1|auto_generated|op_1~22_combout\,
	cout => \uut|Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X16_Y8_N4
\uut|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~30_combout\ = (\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~22_combout\ & (\uut|Add2~29\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~22_combout\ & (!\uut|Add2~29\)))) # (!\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~22_combout\ & 
-- (!\uut|Add2~29\)) # (!\uut|Mult1|auto_generated|op_1~22_combout\ & ((\uut|Add2~29\) # (GND)))))
-- \uut|Add2~31\ = CARRY((\data|o_data\(11) & (!\uut|Mult1|auto_generated|op_1~22_combout\ & !\uut|Add2~29\)) # (!\data|o_data\(11) & ((!\uut|Add2~29\) # (!\uut|Mult1|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \uut|Add2~29\,
	combout => \uut|Add2~30_combout\,
	cout => \uut|Add2~31\);

-- Location: LCCOMB_X15_Y8_N4
\uut|reg.result[0][15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][15]~57_combout\ = (\uut|Add2~30_combout\ & ((\uut|reg.VA_prev[15]~_Duplicate_1_q\ & (!\uut|reg.result[0][14]~56\)) # (!\uut|reg.VA_prev[15]~_Duplicate_1_q\ & (\uut|reg.result[0][14]~56\ & VCC)))) # (!\uut|Add2~30_combout\ & 
-- ((\uut|reg.VA_prev[15]~_Duplicate_1_q\ & ((\uut|reg.result[0][14]~56\) # (GND))) # (!\uut|reg.VA_prev[15]~_Duplicate_1_q\ & (!\uut|reg.result[0][14]~56\))))
-- \uut|reg.result[0][15]~58\ = CARRY((\uut|Add2~30_combout\ & (\uut|reg.VA_prev[15]~_Duplicate_1_q\ & !\uut|reg.result[0][14]~56\)) # (!\uut|Add2~30_combout\ & ((\uut|reg.VA_prev[15]~_Duplicate_1_q\) # (!\uut|reg.result[0][14]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~30_combout\,
	datab => \uut|reg.VA_prev[15]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][14]~56\,
	combout => \uut|reg.result[0][15]~57_combout\,
	cout => \uut|reg.result[0][15]~58\);

-- Location: FF_X15_Y8_N5
\uut|reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][15]~57_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][15]~q\);

-- Location: LCCOMB_X20_Y11_N4
\uut|r_Real[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[15]~57_combout\ = (\uut|Mult2|auto_generated|op_1~22_combout\ & ((\uut|reg.result[0][15]~q\ & (!\uut|r_Real[14]~56\)) # (!\uut|reg.result[0][15]~q\ & ((\uut|r_Real[14]~56\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~22_combout\ & 
-- ((\uut|reg.result[0][15]~q\ & (\uut|r_Real[14]~56\ & VCC)) # (!\uut|reg.result[0][15]~q\ & (!\uut|r_Real[14]~56\))))
-- \uut|r_Real[15]~58\ = CARRY((\uut|Mult2|auto_generated|op_1~22_combout\ & ((!\uut|r_Real[14]~56\) # (!\uut|reg.result[0][15]~q\))) # (!\uut|Mult2|auto_generated|op_1~22_combout\ & (!\uut|reg.result[0][15]~q\ & !\uut|r_Real[14]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~22_combout\,
	datab => \uut|reg.result[0][15]~q\,
	datad => VCC,
	cin => \uut|r_Real[14]~56\,
	combout => \uut|r_Real[15]~57_combout\,
	cout => \uut|r_Real[15]~58\);

-- Location: FF_X20_Y11_N5
\uut|r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[15]~57_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(15));

-- Location: LCCOMB_X19_Y11_N2
\uut|Mult2|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~24_combout\ = ((\uut|Mult2|auto_generated|mac_out4~DATAOUT12\ $ (\uut|Mult2|auto_generated|mac_out2~DATAOUT30\ $ (!\uut|Mult2|auto_generated|op_1~23\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~25\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT12\ & ((\uut|Mult2|auto_generated|mac_out2~DATAOUT30\) # (!\uut|Mult2|auto_generated|op_1~23\))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT12\ & 
-- (\uut|Mult2|auto_generated|mac_out2~DATAOUT30\ & !\uut|Mult2|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT12\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~23\,
	combout => \uut|Mult2|auto_generated|op_1~24_combout\,
	cout => \uut|Mult2|auto_generated|op_1~25\);

-- Location: LCCOMB_X17_Y8_N2
\uut|Mult1|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~24_combout\ = ((\uut|Mult1|auto_generated|mac_out4~DATAOUT12\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT30\ $ (!\uut|Mult1|auto_generated|op_1~23\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~25\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT12\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT30\) # (!\uut|Mult1|auto_generated|op_1~23\))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT12\ & 
-- (\uut|Mult1|auto_generated|mac_out2~DATAOUT30\ & !\uut|Mult1|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT12\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~23\,
	combout => \uut|Mult1|auto_generated|op_1~24_combout\,
	cout => \uut|Mult1|auto_generated|op_1~25\);

-- Location: LCCOMB_X16_Y8_N6
\uut|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~32_combout\ = ((\uut|Mult1|auto_generated|op_1~24_combout\ $ (\data|o_data\(11) $ (!\uut|Add2~31\)))) # (GND)
-- \uut|Add2~33\ = CARRY((\uut|Mult1|auto_generated|op_1~24_combout\ & ((\data|o_data\(11)) # (!\uut|Add2~31\))) # (!\uut|Mult1|auto_generated|op_1~24_combout\ & (\data|o_data\(11) & !\uut|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~24_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~31\,
	combout => \uut|Add2~32_combout\,
	cout => \uut|Add2~33\);

-- Location: LCCOMB_X15_Y8_N6
\uut|reg.result[0][16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][16]~59_combout\ = ((\uut|Add2~32_combout\ $ (\uut|reg.VA_prev[16]~_Duplicate_1_q\ $ (\uut|reg.result[0][15]~58\)))) # (GND)
-- \uut|reg.result[0][16]~60\ = CARRY((\uut|Add2~32_combout\ & ((!\uut|reg.result[0][15]~58\) # (!\uut|reg.VA_prev[16]~_Duplicate_1_q\))) # (!\uut|Add2~32_combout\ & (!\uut|reg.VA_prev[16]~_Duplicate_1_q\ & !\uut|reg.result[0][15]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~32_combout\,
	datab => \uut|reg.VA_prev[16]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][15]~58\,
	combout => \uut|reg.result[0][16]~59_combout\,
	cout => \uut|reg.result[0][16]~60\);

-- Location: FF_X15_Y8_N7
\uut|reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][16]~59_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][16]~q\);

-- Location: LCCOMB_X20_Y11_N6
\uut|r_Real[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[16]~59_combout\ = ((\uut|Mult2|auto_generated|op_1~24_combout\ $ (\uut|reg.result[0][16]~q\ $ (\uut|r_Real[15]~58\)))) # (GND)
-- \uut|r_Real[16]~60\ = CARRY((\uut|Mult2|auto_generated|op_1~24_combout\ & (\uut|reg.result[0][16]~q\ & !\uut|r_Real[15]~58\)) # (!\uut|Mult2|auto_generated|op_1~24_combout\ & ((\uut|reg.result[0][16]~q\) # (!\uut|r_Real[15]~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~24_combout\,
	datab => \uut|reg.result[0][16]~q\,
	datad => VCC,
	cin => \uut|r_Real[15]~58\,
	combout => \uut|r_Real[16]~59_combout\,
	cout => \uut|r_Real[16]~60\);

-- Location: FF_X20_Y11_N7
\uut|r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[16]~59_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(16));

-- Location: LCCOMB_X17_Y8_N4
\uut|Mult1|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~26_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ & (\uut|Mult1|auto_generated|op_1~25\ & VCC)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\uut|Mult1|auto_generated|op_1~25\)))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\uut|Mult1|auto_generated|op_1~25\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ & 
-- ((\uut|Mult1|auto_generated|op_1~25\) # (GND)))))
-- \uut|Mult1|auto_generated|op_1~27\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT13\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT31\ & !\uut|Mult1|auto_generated|op_1~25\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT13\ & 
-- ((!\uut|Mult1|auto_generated|op_1~25\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT13\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~25\,
	combout => \uut|Mult1|auto_generated|op_1~26_combout\,
	cout => \uut|Mult1|auto_generated|op_1~27\);

-- Location: LCCOMB_X16_Y8_N8
\uut|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~34_combout\ = (\uut|Mult1|auto_generated|op_1~26_combout\ & ((\data|o_data\(11) & (\uut|Add2~33\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add2~33\)))) # (!\uut|Mult1|auto_generated|op_1~26_combout\ & ((\data|o_data\(11) & (!\uut|Add2~33\)) # 
-- (!\data|o_data\(11) & ((\uut|Add2~33\) # (GND)))))
-- \uut|Add2~35\ = CARRY((\uut|Mult1|auto_generated|op_1~26_combout\ & (!\data|o_data\(11) & !\uut|Add2~33\)) # (!\uut|Mult1|auto_generated|op_1~26_combout\ & ((!\uut|Add2~33\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~26_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~33\,
	combout => \uut|Add2~34_combout\,
	cout => \uut|Add2~35\);

-- Location: LCCOMB_X15_Y8_N8
\uut|reg.result[0][17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][17]~61_combout\ = (\uut|reg.VA_prev[17]~_Duplicate_1_q\ & ((\uut|Add2~34_combout\ & (!\uut|reg.result[0][16]~60\)) # (!\uut|Add2~34_combout\ & ((\uut|reg.result[0][16]~60\) # (GND))))) # (!\uut|reg.VA_prev[17]~_Duplicate_1_q\ & 
-- ((\uut|Add2~34_combout\ & (\uut|reg.result[0][16]~60\ & VCC)) # (!\uut|Add2~34_combout\ & (!\uut|reg.result[0][16]~60\))))
-- \uut|reg.result[0][17]~62\ = CARRY((\uut|reg.VA_prev[17]~_Duplicate_1_q\ & ((!\uut|reg.result[0][16]~60\) # (!\uut|Add2~34_combout\))) # (!\uut|reg.VA_prev[17]~_Duplicate_1_q\ & (!\uut|Add2~34_combout\ & !\uut|reg.result[0][16]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[17]~_Duplicate_1_q\,
	datab => \uut|Add2~34_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][16]~60\,
	combout => \uut|reg.result[0][17]~61_combout\,
	cout => \uut|reg.result[0][17]~62\);

-- Location: FF_X15_Y8_N9
\uut|reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][17]~61_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][17]~q\);

-- Location: LCCOMB_X19_Y11_N4
\uut|Mult2|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~26_combout\ = (\uut|Mult2|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ & (\uut|Mult2|auto_generated|op_1~25\ & VCC)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\uut|Mult2|auto_generated|op_1~25\)))) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ & (!\uut|Mult2|auto_generated|op_1~25\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ & 
-- ((\uut|Mult2|auto_generated|op_1~25\) # (GND)))))
-- \uut|Mult2|auto_generated|op_1~27\ = CARRY((\uut|Mult2|auto_generated|mac_out2~DATAOUT31\ & (!\uut|Mult2|auto_generated|mac_out4~DATAOUT13\ & !\uut|Mult2|auto_generated|op_1~25\)) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT31\ & 
-- ((!\uut|Mult2|auto_generated|op_1~25\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out2~DATAOUT31\,
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~25\,
	combout => \uut|Mult2|auto_generated|op_1~26_combout\,
	cout => \uut|Mult2|auto_generated|op_1~27\);

-- Location: LCCOMB_X20_Y11_N8
\uut|r_Real[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[17]~61_combout\ = (\uut|reg.result[0][17]~q\ & ((\uut|Mult2|auto_generated|op_1~26_combout\ & (!\uut|r_Real[16]~60\)) # (!\uut|Mult2|auto_generated|op_1~26_combout\ & (\uut|r_Real[16]~60\ & VCC)))) # (!\uut|reg.result[0][17]~q\ & 
-- ((\uut|Mult2|auto_generated|op_1~26_combout\ & ((\uut|r_Real[16]~60\) # (GND))) # (!\uut|Mult2|auto_generated|op_1~26_combout\ & (!\uut|r_Real[16]~60\))))
-- \uut|r_Real[17]~62\ = CARRY((\uut|reg.result[0][17]~q\ & (\uut|Mult2|auto_generated|op_1~26_combout\ & !\uut|r_Real[16]~60\)) # (!\uut|reg.result[0][17]~q\ & ((\uut|Mult2|auto_generated|op_1~26_combout\) # (!\uut|r_Real[16]~60\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][17]~q\,
	datab => \uut|Mult2|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \uut|r_Real[16]~60\,
	combout => \uut|r_Real[17]~61_combout\,
	cout => \uut|r_Real[17]~62\);

-- Location: FF_X20_Y11_N9
\uut|r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[17]~61_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(17));

-- Location: LCCOMB_X17_Y8_N6
\uut|Mult1|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~28_combout\ = ((\uut|Mult1|auto_generated|mac_out4~DATAOUT14\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT32\ $ (!\uut|Mult1|auto_generated|op_1~27\)))) # (GND)
-- \uut|Mult1|auto_generated|op_1~29\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT14\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT32\) # (!\uut|Mult1|auto_generated|op_1~27\))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT14\ & 
-- (\uut|Mult1|auto_generated|mac_out2~DATAOUT32\ & !\uut|Mult1|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT14\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~27\,
	combout => \uut|Mult1|auto_generated|op_1~28_combout\,
	cout => \uut|Mult1|auto_generated|op_1~29\);

-- Location: LCCOMB_X16_Y8_N10
\uut|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~36_combout\ = ((\uut|Mult1|auto_generated|op_1~28_combout\ $ (\data|o_data\(11) $ (!\uut|Add2~35\)))) # (GND)
-- \uut|Add2~37\ = CARRY((\uut|Mult1|auto_generated|op_1~28_combout\ & ((\data|o_data\(11)) # (!\uut|Add2~35\))) # (!\uut|Mult1|auto_generated|op_1~28_combout\ & (\data|o_data\(11) & !\uut|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~28_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~35\,
	combout => \uut|Add2~36_combout\,
	cout => \uut|Add2~37\);

-- Location: LCCOMB_X15_Y8_N10
\uut|reg.result[0][18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][18]~63_combout\ = ((\uut|reg.VA_prev[18]~_Duplicate_1_q\ $ (\uut|Add2~36_combout\ $ (\uut|reg.result[0][17]~62\)))) # (GND)
-- \uut|reg.result[0][18]~64\ = CARRY((\uut|reg.VA_prev[18]~_Duplicate_1_q\ & (\uut|Add2~36_combout\ & !\uut|reg.result[0][17]~62\)) # (!\uut|reg.VA_prev[18]~_Duplicate_1_q\ & ((\uut|Add2~36_combout\) # (!\uut|reg.result[0][17]~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[18]~_Duplicate_1_q\,
	datab => \uut|Add2~36_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][17]~62\,
	combout => \uut|reg.result[0][18]~63_combout\,
	cout => \uut|reg.result[0][18]~64\);

-- Location: FF_X15_Y8_N11
\uut|reg.result[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][18]~63_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][18]~q\);

-- Location: LCCOMB_X17_Y11_N10
\uut|Mult2|auto_generated|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~0_combout\ = \uut|Mult2|auto_generated|mac_out4~DATAOUT14\ $ (VCC)
-- \uut|Mult2|auto_generated|op_2~1\ = CARRY(\uut|Mult2|auto_generated|mac_out4~DATAOUT14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	combout => \uut|Mult2|auto_generated|op_2~0_combout\,
	cout => \uut|Mult2|auto_generated|op_2~1\);

-- Location: LCCOMB_X19_Y11_N6
\uut|Mult2|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~28_combout\ = ((\uut|Mult2|auto_generated|op_2~0_combout\ $ (\uut|Mult2|auto_generated|mac_out2~DATAOUT32\ $ (\uut|Mult2|auto_generated|op_1~27\)))) # (GND)
-- \uut|Mult2|auto_generated|op_1~29\ = CARRY((\uut|Mult2|auto_generated|op_2~0_combout\ & ((!\uut|Mult2|auto_generated|op_1~27\) # (!\uut|Mult2|auto_generated|mac_out2~DATAOUT32\))) # (!\uut|Mult2|auto_generated|op_2~0_combout\ & 
-- (!\uut|Mult2|auto_generated|mac_out2~DATAOUT32\ & !\uut|Mult2|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_2~0_combout\,
	datab => \uut|Mult2|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~27\,
	combout => \uut|Mult2|auto_generated|op_1~28_combout\,
	cout => \uut|Mult2|auto_generated|op_1~29\);

-- Location: LCCOMB_X20_Y11_N10
\uut|r_Real[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[18]~63_combout\ = ((\uut|reg.result[0][18]~q\ $ (\uut|Mult2|auto_generated|op_1~28_combout\ $ (\uut|r_Real[17]~62\)))) # (GND)
-- \uut|r_Real[18]~64\ = CARRY((\uut|reg.result[0][18]~q\ & ((!\uut|r_Real[17]~62\) # (!\uut|Mult2|auto_generated|op_1~28_combout\))) # (!\uut|reg.result[0][18]~q\ & (!\uut|Mult2|auto_generated|op_1~28_combout\ & !\uut|r_Real[17]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][18]~q\,
	datab => \uut|Mult2|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \uut|r_Real[17]~62\,
	combout => \uut|r_Real[18]~63_combout\,
	cout => \uut|r_Real[18]~64\);

-- Location: FF_X20_Y11_N11
\uut|r_Real[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[18]~63_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(18));

-- Location: LCCOMB_X17_Y11_N12
\uut|Mult2|auto_generated|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~2_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT15\ & (!\uut|Mult2|auto_generated|op_2~1\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT15\ & ((\uut|Mult2|auto_generated|op_2~1\) # (GND)))
-- \uut|Mult2|auto_generated|op_2~3\ = CARRY((!\uut|Mult2|auto_generated|op_2~1\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~1\,
	combout => \uut|Mult2|auto_generated|op_2~2_combout\,
	cout => \uut|Mult2|auto_generated|op_2~3\);

-- Location: LCCOMB_X19_Y11_N8
\uut|Mult2|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~30_combout\ = (\uut|Mult2|auto_generated|op_2~2_combout\ & (\uut|Mult2|auto_generated|op_1~29\ & VCC)) # (!\uut|Mult2|auto_generated|op_2~2_combout\ & (!\uut|Mult2|auto_generated|op_1~29\))
-- \uut|Mult2|auto_generated|op_1~31\ = CARRY((!\uut|Mult2|auto_generated|op_2~2_combout\ & !\uut|Mult2|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~29\,
	combout => \uut|Mult2|auto_generated|op_1~30_combout\,
	cout => \uut|Mult2|auto_generated|op_1~31\);

-- Location: LCCOMB_X19_Y8_N6
\uut|Mult1|auto_generated|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~0_combout\ = \uut|Mult1|auto_generated|mac_out4~DATAOUT15\ $ (VCC)
-- \uut|Mult1|auto_generated|op_2~1\ = CARRY(\uut|Mult1|auto_generated|mac_out4~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	combout => \uut|Mult1|auto_generated|op_2~0_combout\,
	cout => \uut|Mult1|auto_generated|op_2~1\);

-- Location: LCCOMB_X17_Y8_N8
\uut|Mult1|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~30_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT33\ & ((\uut|Mult1|auto_generated|op_2~0_combout\ & (!\uut|Mult1|auto_generated|op_1~29\)) # (!\uut|Mult1|auto_generated|op_2~0_combout\ & 
-- ((\uut|Mult1|auto_generated|op_1~29\) # (GND))))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT33\ & ((\uut|Mult1|auto_generated|op_2~0_combout\ & (\uut|Mult1|auto_generated|op_1~29\ & VCC)) # (!\uut|Mult1|auto_generated|op_2~0_combout\ & 
-- (!\uut|Mult1|auto_generated|op_1~29\))))
-- \uut|Mult1|auto_generated|op_1~31\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT33\ & ((!\uut|Mult1|auto_generated|op_1~29\) # (!\uut|Mult1|auto_generated|op_2~0_combout\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\uut|Mult1|auto_generated|op_2~0_combout\ & !\uut|Mult1|auto_generated|op_1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT33\,
	datab => \uut|Mult1|auto_generated|op_2~0_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~29\,
	combout => \uut|Mult1|auto_generated|op_1~30_combout\,
	cout => \uut|Mult1|auto_generated|op_1~31\);

-- Location: LCCOMB_X16_Y8_N12
\uut|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~38_combout\ = (\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~30_combout\ & (\uut|Add2~37\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~30_combout\ & (!\uut|Add2~37\)))) # (!\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~30_combout\ & 
-- (!\uut|Add2~37\)) # (!\uut|Mult1|auto_generated|op_1~30_combout\ & ((\uut|Add2~37\) # (GND)))))
-- \uut|Add2~39\ = CARRY((\data|o_data\(11) & (!\uut|Mult1|auto_generated|op_1~30_combout\ & !\uut|Add2~37\)) # (!\data|o_data\(11) & ((!\uut|Add2~37\) # (!\uut|Mult1|auto_generated|op_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \uut|Add2~37\,
	combout => \uut|Add2~38_combout\,
	cout => \uut|Add2~39\);

-- Location: LCCOMB_X15_Y8_N12
\uut|reg.result[0][19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][19]~65_combout\ = (\uut|reg.VA_prev[19]~_Duplicate_1_q\ & ((\uut|Add2~38_combout\ & (!\uut|reg.result[0][18]~64\)) # (!\uut|Add2~38_combout\ & ((\uut|reg.result[0][18]~64\) # (GND))))) # (!\uut|reg.VA_prev[19]~_Duplicate_1_q\ & 
-- ((\uut|Add2~38_combout\ & (\uut|reg.result[0][18]~64\ & VCC)) # (!\uut|Add2~38_combout\ & (!\uut|reg.result[0][18]~64\))))
-- \uut|reg.result[0][19]~66\ = CARRY((\uut|reg.VA_prev[19]~_Duplicate_1_q\ & ((!\uut|reg.result[0][18]~64\) # (!\uut|Add2~38_combout\))) # (!\uut|reg.VA_prev[19]~_Duplicate_1_q\ & (!\uut|Add2~38_combout\ & !\uut|reg.result[0][18]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[19]~_Duplicate_1_q\,
	datab => \uut|Add2~38_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][18]~64\,
	combout => \uut|reg.result[0][19]~65_combout\,
	cout => \uut|reg.result[0][19]~66\);

-- Location: FF_X15_Y8_N13
\uut|reg.result[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][19]~65_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][19]~q\);

-- Location: LCCOMB_X20_Y11_N12
\uut|r_Real[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[19]~65_combout\ = (\uut|Mult2|auto_generated|op_1~30_combout\ & ((\uut|reg.result[0][19]~q\ & (!\uut|r_Real[18]~64\)) # (!\uut|reg.result[0][19]~q\ & ((\uut|r_Real[18]~64\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~30_combout\ & 
-- ((\uut|reg.result[0][19]~q\ & (\uut|r_Real[18]~64\ & VCC)) # (!\uut|reg.result[0][19]~q\ & (!\uut|r_Real[18]~64\))))
-- \uut|r_Real[19]~66\ = CARRY((\uut|Mult2|auto_generated|op_1~30_combout\ & ((!\uut|r_Real[18]~64\) # (!\uut|reg.result[0][19]~q\))) # (!\uut|Mult2|auto_generated|op_1~30_combout\ & (!\uut|reg.result[0][19]~q\ & !\uut|r_Real[18]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~30_combout\,
	datab => \uut|reg.result[0][19]~q\,
	datad => VCC,
	cin => \uut|r_Real[18]~64\,
	combout => \uut|r_Real[19]~65_combout\,
	cout => \uut|r_Real[19]~66\);

-- Location: FF_X20_Y11_N13
\uut|r_Real[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[19]~65_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(19));

-- Location: LCCOMB_X17_Y11_N14
\uut|Mult2|auto_generated|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~4_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT16\ & (\uut|Mult2|auto_generated|op_2~3\ $ (GND))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT16\ & (!\uut|Mult2|auto_generated|op_2~3\ & VCC))
-- \uut|Mult2|auto_generated|op_2~5\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT16\ & !\uut|Mult2|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~3\,
	combout => \uut|Mult2|auto_generated|op_2~4_combout\,
	cout => \uut|Mult2|auto_generated|op_2~5\);

-- Location: LCCOMB_X19_Y11_N10
\uut|Mult2|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~32_combout\ = (\uut|Mult2|auto_generated|op_2~4_combout\ & ((GND) # (!\uut|Mult2|auto_generated|op_1~31\))) # (!\uut|Mult2|auto_generated|op_2~4_combout\ & (\uut|Mult2|auto_generated|op_1~31\ $ (GND)))
-- \uut|Mult2|auto_generated|op_1~33\ = CARRY((\uut|Mult2|auto_generated|op_2~4_combout\) # (!\uut|Mult2|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~31\,
	combout => \uut|Mult2|auto_generated|op_1~32_combout\,
	cout => \uut|Mult2|auto_generated|op_1~33\);

-- Location: LCCOMB_X19_Y8_N8
\uut|Mult1|auto_generated|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~2_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT16\ & (!\uut|Mult1|auto_generated|op_2~1\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT16\ & ((\uut|Mult1|auto_generated|op_2~1\) # (GND)))
-- \uut|Mult1|auto_generated|op_2~3\ = CARRY((!\uut|Mult1|auto_generated|op_2~1\) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~1\,
	combout => \uut|Mult1|auto_generated|op_2~2_combout\,
	cout => \uut|Mult1|auto_generated|op_2~3\);

-- Location: LCCOMB_X17_Y8_N10
\uut|Mult1|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~32_combout\ = (\uut|Mult1|auto_generated|op_2~2_combout\ & ((GND) # (!\uut|Mult1|auto_generated|op_1~31\))) # (!\uut|Mult1|auto_generated|op_2~2_combout\ & (\uut|Mult1|auto_generated|op_1~31\ $ (GND)))
-- \uut|Mult1|auto_generated|op_1~33\ = CARRY((\uut|Mult1|auto_generated|op_2~2_combout\) # (!\uut|Mult1|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~31\,
	combout => \uut|Mult1|auto_generated|op_1~32_combout\,
	cout => \uut|Mult1|auto_generated|op_1~33\);

-- Location: LCCOMB_X16_Y8_N14
\uut|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~40_combout\ = ((\data|o_data\(11) $ (\uut|Mult1|auto_generated|op_1~32_combout\ $ (!\uut|Add2~39\)))) # (GND)
-- \uut|Add2~41\ = CARRY((\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~32_combout\) # (!\uut|Add2~39\))) # (!\data|o_data\(11) & (\uut|Mult1|auto_generated|op_1~32_combout\ & !\uut|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \uut|Add2~39\,
	combout => \uut|Add2~40_combout\,
	cout => \uut|Add2~41\);

-- Location: LCCOMB_X15_Y8_N14
\uut|reg.result[0][20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][20]~67_combout\ = ((\uut|reg.VA_prev[20]~_Duplicate_1_q\ $ (\uut|Add2~40_combout\ $ (\uut|reg.result[0][19]~66\)))) # (GND)
-- \uut|reg.result[0][20]~68\ = CARRY((\uut|reg.VA_prev[20]~_Duplicate_1_q\ & (\uut|Add2~40_combout\ & !\uut|reg.result[0][19]~66\)) # (!\uut|reg.VA_prev[20]~_Duplicate_1_q\ & ((\uut|Add2~40_combout\) # (!\uut|reg.result[0][19]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[20]~_Duplicate_1_q\,
	datab => \uut|Add2~40_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][19]~66\,
	combout => \uut|reg.result[0][20]~67_combout\,
	cout => \uut|reg.result[0][20]~68\);

-- Location: FF_X15_Y8_N15
\uut|reg.result[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][20]~67_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][20]~q\);

-- Location: LCCOMB_X20_Y11_N14
\uut|r_Real[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[20]~67_combout\ = ((\uut|Mult2|auto_generated|op_1~32_combout\ $ (\uut|reg.result[0][20]~q\ $ (\uut|r_Real[19]~66\)))) # (GND)
-- \uut|r_Real[20]~68\ = CARRY((\uut|Mult2|auto_generated|op_1~32_combout\ & (\uut|reg.result[0][20]~q\ & !\uut|r_Real[19]~66\)) # (!\uut|Mult2|auto_generated|op_1~32_combout\ & ((\uut|reg.result[0][20]~q\) # (!\uut|r_Real[19]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~32_combout\,
	datab => \uut|reg.result[0][20]~q\,
	datad => VCC,
	cin => \uut|r_Real[19]~66\,
	combout => \uut|r_Real[20]~67_combout\,
	cout => \uut|r_Real[20]~68\);

-- Location: FF_X20_Y11_N15
\uut|r_Real[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[20]~67_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(20));

-- Location: LCCOMB_X17_Y11_N16
\uut|Mult2|auto_generated|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~6_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT17\ & (!\uut|Mult2|auto_generated|op_2~5\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT17\ & ((\uut|Mult2|auto_generated|op_2~5\) # (GND)))
-- \uut|Mult2|auto_generated|op_2~7\ = CARRY((!\uut|Mult2|auto_generated|op_2~5\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~5\,
	combout => \uut|Mult2|auto_generated|op_2~6_combout\,
	cout => \uut|Mult2|auto_generated|op_2~7\);

-- Location: LCCOMB_X19_Y11_N12
\uut|Mult2|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~34_combout\ = (\uut|Mult2|auto_generated|op_2~6_combout\ & (\uut|Mult2|auto_generated|op_1~33\ & VCC)) # (!\uut|Mult2|auto_generated|op_2~6_combout\ & (!\uut|Mult2|auto_generated|op_1~33\))
-- \uut|Mult2|auto_generated|op_1~35\ = CARRY((!\uut|Mult2|auto_generated|op_2~6_combout\ & !\uut|Mult2|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~33\,
	combout => \uut|Mult2|auto_generated|op_1~34_combout\,
	cout => \uut|Mult2|auto_generated|op_1~35\);

-- Location: LCCOMB_X19_Y8_N10
\uut|Mult1|auto_generated|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~4_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT17\ & (\uut|Mult1|auto_generated|op_2~3\ $ (GND))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT17\ & (!\uut|Mult1|auto_generated|op_2~3\ & VCC))
-- \uut|Mult1|auto_generated|op_2~5\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT17\ & !\uut|Mult1|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult1|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~3\,
	combout => \uut|Mult1|auto_generated|op_2~4_combout\,
	cout => \uut|Mult1|auto_generated|op_2~5\);

-- Location: LCCOMB_X17_Y8_N12
\uut|Mult1|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~34_combout\ = (\uut|Mult1|auto_generated|op_2~4_combout\ & (\uut|Mult1|auto_generated|op_1~33\ & VCC)) # (!\uut|Mult1|auto_generated|op_2~4_combout\ & (!\uut|Mult1|auto_generated|op_1~33\))
-- \uut|Mult1|auto_generated|op_1~35\ = CARRY((!\uut|Mult1|auto_generated|op_2~4_combout\ & !\uut|Mult1|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult1|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~33\,
	combout => \uut|Mult1|auto_generated|op_1~34_combout\,
	cout => \uut|Mult1|auto_generated|op_1~35\);

-- Location: LCCOMB_X16_Y8_N16
\uut|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~42_combout\ = (\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~34_combout\ & (\uut|Add2~41\ & VCC)) # (!\uut|Mult1|auto_generated|op_1~34_combout\ & (!\uut|Add2~41\)))) # (!\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~34_combout\ & 
-- (!\uut|Add2~41\)) # (!\uut|Mult1|auto_generated|op_1~34_combout\ & ((\uut|Add2~41\) # (GND)))))
-- \uut|Add2~43\ = CARRY((\data|o_data\(11) & (!\uut|Mult1|auto_generated|op_1~34_combout\ & !\uut|Add2~41\)) # (!\data|o_data\(11) & ((!\uut|Add2~41\) # (!\uut|Mult1|auto_generated|op_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \uut|Add2~41\,
	combout => \uut|Add2~42_combout\,
	cout => \uut|Add2~43\);

-- Location: LCCOMB_X15_Y8_N16
\uut|reg.result[0][21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][21]~69_combout\ = (\uut|reg.VA_prev[21]~_Duplicate_1_q\ & ((\uut|Add2~42_combout\ & (!\uut|reg.result[0][20]~68\)) # (!\uut|Add2~42_combout\ & ((\uut|reg.result[0][20]~68\) # (GND))))) # (!\uut|reg.VA_prev[21]~_Duplicate_1_q\ & 
-- ((\uut|Add2~42_combout\ & (\uut|reg.result[0][20]~68\ & VCC)) # (!\uut|Add2~42_combout\ & (!\uut|reg.result[0][20]~68\))))
-- \uut|reg.result[0][21]~70\ = CARRY((\uut|reg.VA_prev[21]~_Duplicate_1_q\ & ((!\uut|reg.result[0][20]~68\) # (!\uut|Add2~42_combout\))) # (!\uut|reg.VA_prev[21]~_Duplicate_1_q\ & (!\uut|Add2~42_combout\ & !\uut|reg.result[0][20]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[21]~_Duplicate_1_q\,
	datab => \uut|Add2~42_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][20]~68\,
	combout => \uut|reg.result[0][21]~69_combout\,
	cout => \uut|reg.result[0][21]~70\);

-- Location: FF_X15_Y8_N17
\uut|reg.result[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][21]~69_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][21]~q\);

-- Location: LCCOMB_X20_Y11_N16
\uut|r_Real[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[21]~69_combout\ = (\uut|Mult2|auto_generated|op_1~34_combout\ & ((\uut|reg.result[0][21]~q\ & (!\uut|r_Real[20]~68\)) # (!\uut|reg.result[0][21]~q\ & ((\uut|r_Real[20]~68\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~34_combout\ & 
-- ((\uut|reg.result[0][21]~q\ & (\uut|r_Real[20]~68\ & VCC)) # (!\uut|reg.result[0][21]~q\ & (!\uut|r_Real[20]~68\))))
-- \uut|r_Real[21]~70\ = CARRY((\uut|Mult2|auto_generated|op_1~34_combout\ & ((!\uut|r_Real[20]~68\) # (!\uut|reg.result[0][21]~q\))) # (!\uut|Mult2|auto_generated|op_1~34_combout\ & (!\uut|reg.result[0][21]~q\ & !\uut|r_Real[20]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~34_combout\,
	datab => \uut|reg.result[0][21]~q\,
	datad => VCC,
	cin => \uut|r_Real[20]~68\,
	combout => \uut|r_Real[21]~69_combout\,
	cout => \uut|r_Real[21]~70\);

-- Location: FF_X20_Y11_N17
\uut|r_Real[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[21]~69_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(21));

-- Location: LCCOMB_X17_Y11_N18
\uut|Mult2|auto_generated|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~8_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT18\ & (\uut|Mult2|auto_generated|op_2~7\ $ (GND))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT18\ & (!\uut|Mult2|auto_generated|op_2~7\ & VCC))
-- \uut|Mult2|auto_generated|op_2~9\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT18\ & !\uut|Mult2|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~7\,
	combout => \uut|Mult2|auto_generated|op_2~8_combout\,
	cout => \uut|Mult2|auto_generated|op_2~9\);

-- Location: LCCOMB_X19_Y11_N14
\uut|Mult2|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~36_combout\ = (\uut|Mult2|auto_generated|op_2~8_combout\ & ((GND) # (!\uut|Mult2|auto_generated|op_1~35\))) # (!\uut|Mult2|auto_generated|op_2~8_combout\ & (\uut|Mult2|auto_generated|op_1~35\ $ (GND)))
-- \uut|Mult2|auto_generated|op_1~37\ = CARRY((\uut|Mult2|auto_generated|op_2~8_combout\) # (!\uut|Mult2|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~35\,
	combout => \uut|Mult2|auto_generated|op_1~36_combout\,
	cout => \uut|Mult2|auto_generated|op_1~37\);

-- Location: LCCOMB_X19_Y8_N12
\uut|Mult1|auto_generated|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~6_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT18\ & (!\uut|Mult1|auto_generated|op_2~5\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT18\ & ((\uut|Mult1|auto_generated|op_2~5\) # (GND)))
-- \uut|Mult1|auto_generated|op_2~7\ = CARRY((!\uut|Mult1|auto_generated|op_2~5\) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~5\,
	combout => \uut|Mult1|auto_generated|op_2~6_combout\,
	cout => \uut|Mult1|auto_generated|op_2~7\);

-- Location: LCCOMB_X17_Y8_N14
\uut|Mult1|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~36_combout\ = (\uut|Mult1|auto_generated|op_2~6_combout\ & ((GND) # (!\uut|Mult1|auto_generated|op_1~35\))) # (!\uut|Mult1|auto_generated|op_2~6_combout\ & (\uut|Mult1|auto_generated|op_1~35\ $ (GND)))
-- \uut|Mult1|auto_generated|op_1~37\ = CARRY((\uut|Mult1|auto_generated|op_2~6_combout\) # (!\uut|Mult1|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult1|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~35\,
	combout => \uut|Mult1|auto_generated|op_1~36_combout\,
	cout => \uut|Mult1|auto_generated|op_1~37\);

-- Location: LCCOMB_X16_Y8_N18
\uut|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~44_combout\ = ((\data|o_data\(11) $ (\uut|Mult1|auto_generated|op_1~36_combout\ $ (!\uut|Add2~43\)))) # (GND)
-- \uut|Add2~45\ = CARRY((\data|o_data\(11) & ((\uut|Mult1|auto_generated|op_1~36_combout\) # (!\uut|Add2~43\))) # (!\data|o_data\(11) & (\uut|Mult1|auto_generated|op_1~36_combout\ & !\uut|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult1|auto_generated|op_1~36_combout\,
	datad => VCC,
	cin => \uut|Add2~43\,
	combout => \uut|Add2~44_combout\,
	cout => \uut|Add2~45\);

-- Location: LCCOMB_X15_Y8_N18
\uut|reg.result[0][22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][22]~71_combout\ = ((\uut|reg.VA_prev[22]~_Duplicate_1_q\ $ (\uut|Add2~44_combout\ $ (\uut|reg.result[0][21]~70\)))) # (GND)
-- \uut|reg.result[0][22]~72\ = CARRY((\uut|reg.VA_prev[22]~_Duplicate_1_q\ & (\uut|Add2~44_combout\ & !\uut|reg.result[0][21]~70\)) # (!\uut|reg.VA_prev[22]~_Duplicate_1_q\ & ((\uut|Add2~44_combout\) # (!\uut|reg.result[0][21]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[22]~_Duplicate_1_q\,
	datab => \uut|Add2~44_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][21]~70\,
	combout => \uut|reg.result[0][22]~71_combout\,
	cout => \uut|reg.result[0][22]~72\);

-- Location: FF_X15_Y8_N19
\uut|reg.result[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][22]~71_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][22]~q\);

-- Location: LCCOMB_X20_Y11_N18
\uut|r_Real[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[22]~71_combout\ = ((\uut|Mult2|auto_generated|op_1~36_combout\ $ (\uut|reg.result[0][22]~q\ $ (\uut|r_Real[21]~70\)))) # (GND)
-- \uut|r_Real[22]~72\ = CARRY((\uut|Mult2|auto_generated|op_1~36_combout\ & (\uut|reg.result[0][22]~q\ & !\uut|r_Real[21]~70\)) # (!\uut|Mult2|auto_generated|op_1~36_combout\ & ((\uut|reg.result[0][22]~q\) # (!\uut|r_Real[21]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~36_combout\,
	datab => \uut|reg.result[0][22]~q\,
	datad => VCC,
	cin => \uut|r_Real[21]~70\,
	combout => \uut|r_Real[22]~71_combout\,
	cout => \uut|r_Real[22]~72\);

-- Location: FF_X20_Y11_N19
\uut|r_Real[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[22]~71_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(22));

-- Location: LCCOMB_X17_Y11_N20
\uut|Mult2|auto_generated|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~10_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT19\ & (!\uut|Mult2|auto_generated|op_2~9\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT19\ & ((\uut|Mult2|auto_generated|op_2~9\) # (GND)))
-- \uut|Mult2|auto_generated|op_2~11\ = CARRY((!\uut|Mult2|auto_generated|op_2~9\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~9\,
	combout => \uut|Mult2|auto_generated|op_2~10_combout\,
	cout => \uut|Mult2|auto_generated|op_2~11\);

-- Location: LCCOMB_X19_Y11_N16
\uut|Mult2|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~38_combout\ = (\uut|Mult2|auto_generated|op_2~10_combout\ & (\uut|Mult2|auto_generated|op_1~37\ & VCC)) # (!\uut|Mult2|auto_generated|op_2~10_combout\ & (!\uut|Mult2|auto_generated|op_1~37\))
-- \uut|Mult2|auto_generated|op_1~39\ = CARRY((!\uut|Mult2|auto_generated|op_2~10_combout\ & !\uut|Mult2|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~37\,
	combout => \uut|Mult2|auto_generated|op_1~38_combout\,
	cout => \uut|Mult2|auto_generated|op_1~39\);

-- Location: LCCOMB_X19_Y8_N14
\uut|Mult1|auto_generated|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~8_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT19\ & (\uut|Mult1|auto_generated|op_2~7\ $ (GND))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT19\ & (!\uut|Mult1|auto_generated|op_2~7\ & VCC))
-- \uut|Mult1|auto_generated|op_2~9\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT19\ & !\uut|Mult1|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~7\,
	combout => \uut|Mult1|auto_generated|op_2~8_combout\,
	cout => \uut|Mult1|auto_generated|op_2~9\);

-- Location: LCCOMB_X17_Y8_N16
\uut|Mult1|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~38_combout\ = (\uut|Mult1|auto_generated|op_2~8_combout\ & (\uut|Mult1|auto_generated|op_1~37\ & VCC)) # (!\uut|Mult1|auto_generated|op_2~8_combout\ & (!\uut|Mult1|auto_generated|op_1~37\))
-- \uut|Mult1|auto_generated|op_1~39\ = CARRY((!\uut|Mult1|auto_generated|op_2~8_combout\ & !\uut|Mult1|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~37\,
	combout => \uut|Mult1|auto_generated|op_1~38_combout\,
	cout => \uut|Mult1|auto_generated|op_1~39\);

-- Location: LCCOMB_X16_Y8_N20
\uut|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~46_combout\ = (\uut|Mult1|auto_generated|op_1~38_combout\ & ((\data|o_data\(11) & (\uut|Add2~45\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add2~45\)))) # (!\uut|Mult1|auto_generated|op_1~38_combout\ & ((\data|o_data\(11) & (!\uut|Add2~45\)) # 
-- (!\data|o_data\(11) & ((\uut|Add2~45\) # (GND)))))
-- \uut|Add2~47\ = CARRY((\uut|Mult1|auto_generated|op_1~38_combout\ & (!\data|o_data\(11) & !\uut|Add2~45\)) # (!\uut|Mult1|auto_generated|op_1~38_combout\ & ((!\uut|Add2~45\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~38_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~45\,
	combout => \uut|Add2~46_combout\,
	cout => \uut|Add2~47\);

-- Location: LCCOMB_X15_Y8_N20
\uut|reg.result[0][23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][23]~73_combout\ = (\uut|Add2~46_combout\ & ((\uut|reg.VA_prev[23]~_Duplicate_1_q\ & (!\uut|reg.result[0][22]~72\)) # (!\uut|reg.VA_prev[23]~_Duplicate_1_q\ & (\uut|reg.result[0][22]~72\ & VCC)))) # (!\uut|Add2~46_combout\ & 
-- ((\uut|reg.VA_prev[23]~_Duplicate_1_q\ & ((\uut|reg.result[0][22]~72\) # (GND))) # (!\uut|reg.VA_prev[23]~_Duplicate_1_q\ & (!\uut|reg.result[0][22]~72\))))
-- \uut|reg.result[0][23]~74\ = CARRY((\uut|Add2~46_combout\ & (\uut|reg.VA_prev[23]~_Duplicate_1_q\ & !\uut|reg.result[0][22]~72\)) # (!\uut|Add2~46_combout\ & ((\uut|reg.VA_prev[23]~_Duplicate_1_q\) # (!\uut|reg.result[0][22]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~46_combout\,
	datab => \uut|reg.VA_prev[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \uut|reg.result[0][22]~72\,
	combout => \uut|reg.result[0][23]~73_combout\,
	cout => \uut|reg.result[0][23]~74\);

-- Location: FF_X15_Y8_N21
\uut|reg.result[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][23]~73_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][23]~q\);

-- Location: LCCOMB_X20_Y11_N20
\uut|r_Real[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[23]~73_combout\ = (\uut|Mult2|auto_generated|op_1~38_combout\ & ((\uut|reg.result[0][23]~q\ & (!\uut|r_Real[22]~72\)) # (!\uut|reg.result[0][23]~q\ & ((\uut|r_Real[22]~72\) # (GND))))) # (!\uut|Mult2|auto_generated|op_1~38_combout\ & 
-- ((\uut|reg.result[0][23]~q\ & (\uut|r_Real[22]~72\ & VCC)) # (!\uut|reg.result[0][23]~q\ & (!\uut|r_Real[22]~72\))))
-- \uut|r_Real[23]~74\ = CARRY((\uut|Mult2|auto_generated|op_1~38_combout\ & ((!\uut|r_Real[22]~72\) # (!\uut|reg.result[0][23]~q\))) # (!\uut|Mult2|auto_generated|op_1~38_combout\ & (!\uut|reg.result[0][23]~q\ & !\uut|r_Real[22]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_1~38_combout\,
	datab => \uut|reg.result[0][23]~q\,
	datad => VCC,
	cin => \uut|r_Real[22]~72\,
	combout => \uut|r_Real[23]~73_combout\,
	cout => \uut|r_Real[23]~74\);

-- Location: FF_X20_Y11_N21
\uut|r_Real[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[23]~73_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(23));

-- Location: LCCOMB_X19_Y8_N16
\uut|Mult1|auto_generated|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~10_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT20\ & (!\uut|Mult1|auto_generated|op_2~9\)) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT20\ & ((\uut|Mult1|auto_generated|op_2~9\) # (GND)))
-- \uut|Mult1|auto_generated|op_2~11\ = CARRY((!\uut|Mult1|auto_generated|op_2~9\) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~9\,
	combout => \uut|Mult1|auto_generated|op_2~10_combout\,
	cout => \uut|Mult1|auto_generated|op_2~11\);

-- Location: LCCOMB_X17_Y8_N18
\uut|Mult1|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~40_combout\ = (\uut|Mult1|auto_generated|op_2~10_combout\ & ((GND) # (!\uut|Mult1|auto_generated|op_1~39\))) # (!\uut|Mult1|auto_generated|op_2~10_combout\ & (\uut|Mult1|auto_generated|op_1~39\ $ (GND)))
-- \uut|Mult1|auto_generated|op_1~41\ = CARRY((\uut|Mult1|auto_generated|op_2~10_combout\) # (!\uut|Mult1|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~39\,
	combout => \uut|Mult1|auto_generated|op_1~40_combout\,
	cout => \uut|Mult1|auto_generated|op_1~41\);

-- Location: LCCOMB_X16_Y8_N22
\uut|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~48_combout\ = ((\uut|Mult1|auto_generated|op_1~40_combout\ $ (\data|o_data\(11) $ (!\uut|Add2~47\)))) # (GND)
-- \uut|Add2~49\ = CARRY((\uut|Mult1|auto_generated|op_1~40_combout\ & ((\data|o_data\(11)) # (!\uut|Add2~47\))) # (!\uut|Mult1|auto_generated|op_1~40_combout\ & (\data|o_data\(11) & !\uut|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~40_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~47\,
	combout => \uut|Add2~48_combout\,
	cout => \uut|Add2~49\);

-- Location: LCCOMB_X15_Y8_N22
\uut|reg.result[0][24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][24]~75_combout\ = ((\uut|reg.VA_prev[24]~_Duplicate_1_q\ $ (\uut|Add2~48_combout\ $ (\uut|reg.result[0][23]~74\)))) # (GND)
-- \uut|reg.result[0][24]~76\ = CARRY((\uut|reg.VA_prev[24]~_Duplicate_1_q\ & (\uut|Add2~48_combout\ & !\uut|reg.result[0][23]~74\)) # (!\uut|reg.VA_prev[24]~_Duplicate_1_q\ & ((\uut|Add2~48_combout\) # (!\uut|reg.result[0][23]~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[24]~_Duplicate_1_q\,
	datab => \uut|Add2~48_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][23]~74\,
	combout => \uut|reg.result[0][24]~75_combout\,
	cout => \uut|reg.result[0][24]~76\);

-- Location: FF_X15_Y8_N23
\uut|reg.result[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][24]~75_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][24]~q\);

-- Location: LCCOMB_X17_Y11_N22
\uut|Mult2|auto_generated|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~12_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT20\ & (\uut|Mult2|auto_generated|op_2~11\ $ (GND))) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT20\ & (!\uut|Mult2|auto_generated|op_2~11\ & VCC))
-- \uut|Mult2|auto_generated|op_2~13\ = CARRY((\uut|Mult2|auto_generated|mac_out4~DATAOUT20\ & !\uut|Mult2|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~11\,
	combout => \uut|Mult2|auto_generated|op_2~12_combout\,
	cout => \uut|Mult2|auto_generated|op_2~13\);

-- Location: LCCOMB_X19_Y11_N18
\uut|Mult2|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~40_combout\ = (\uut|Mult2|auto_generated|op_2~12_combout\ & ((GND) # (!\uut|Mult2|auto_generated|op_1~39\))) # (!\uut|Mult2|auto_generated|op_2~12_combout\ & (\uut|Mult2|auto_generated|op_1~39\ $ (GND)))
-- \uut|Mult2|auto_generated|op_1~41\ = CARRY((\uut|Mult2|auto_generated|op_2~12_combout\) # (!\uut|Mult2|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult2|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~39\,
	combout => \uut|Mult2|auto_generated|op_1~40_combout\,
	cout => \uut|Mult2|auto_generated|op_1~41\);

-- Location: LCCOMB_X20_Y11_N22
\uut|r_Real[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[24]~75_combout\ = ((\uut|reg.result[0][24]~q\ $ (\uut|Mult2|auto_generated|op_1~40_combout\ $ (\uut|r_Real[23]~74\)))) # (GND)
-- \uut|r_Real[24]~76\ = CARRY((\uut|reg.result[0][24]~q\ & ((!\uut|r_Real[23]~74\) # (!\uut|Mult2|auto_generated|op_1~40_combout\))) # (!\uut|reg.result[0][24]~q\ & (!\uut|Mult2|auto_generated|op_1~40_combout\ & !\uut|r_Real[23]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][24]~q\,
	datab => \uut|Mult2|auto_generated|op_1~40_combout\,
	datad => VCC,
	cin => \uut|r_Real[23]~74\,
	combout => \uut|r_Real[24]~75_combout\,
	cout => \uut|r_Real[24]~76\);

-- Location: FF_X20_Y11_N23
\uut|r_Real[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[24]~75_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(24));

-- Location: LCCOMB_X19_Y8_N18
\uut|Mult1|auto_generated|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~12_combout\ = (\uut|Mult1|auto_generated|mac_out4~DATAOUT21\ & (\uut|Mult1|auto_generated|op_2~11\ $ (GND))) # (!\uut|Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\uut|Mult1|auto_generated|op_2~11\ & VCC))
-- \uut|Mult1|auto_generated|op_2~13\ = CARRY((\uut|Mult1|auto_generated|mac_out4~DATAOUT21\ & !\uut|Mult1|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_2~11\,
	combout => \uut|Mult1|auto_generated|op_2~12_combout\,
	cout => \uut|Mult1|auto_generated|op_2~13\);

-- Location: LCCOMB_X17_Y8_N20
\uut|Mult1|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~42_combout\ = (\uut|Mult1|auto_generated|op_2~12_combout\ & (\uut|Mult1|auto_generated|op_1~41\ & VCC)) # (!\uut|Mult1|auto_generated|op_2~12_combout\ & (!\uut|Mult1|auto_generated|op_1~41\))
-- \uut|Mult1|auto_generated|op_1~43\ = CARRY((!\uut|Mult1|auto_generated|op_2~12_combout\ & !\uut|Mult1|auto_generated|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \uut|Mult1|auto_generated|op_1~41\,
	combout => \uut|Mult1|auto_generated|op_1~42_combout\,
	cout => \uut|Mult1|auto_generated|op_1~43\);

-- Location: LCCOMB_X16_Y8_N24
\uut|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~50_combout\ = (\uut|Mult1|auto_generated|op_1~42_combout\ & ((\data|o_data\(11) & (\uut|Add2~49\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add2~49\)))) # (!\uut|Mult1|auto_generated|op_1~42_combout\ & ((\data|o_data\(11) & (!\uut|Add2~49\)) # 
-- (!\data|o_data\(11) & ((\uut|Add2~49\) # (GND)))))
-- \uut|Add2~51\ = CARRY((\uut|Mult1|auto_generated|op_1~42_combout\ & (!\data|o_data\(11) & !\uut|Add2~49\)) # (!\uut|Mult1|auto_generated|op_1~42_combout\ & ((!\uut|Add2~49\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|op_1~42_combout\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add2~49\,
	combout => \uut|Add2~50_combout\,
	cout => \uut|Add2~51\);

-- Location: LCCOMB_X15_Y8_N24
\uut|reg.result[0][25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][25]~77_combout\ = (\uut|reg.VA_prev[25]~_Duplicate_1_q\ & ((\uut|Add2~50_combout\ & (!\uut|reg.result[0][24]~76\)) # (!\uut|Add2~50_combout\ & ((\uut|reg.result[0][24]~76\) # (GND))))) # (!\uut|reg.VA_prev[25]~_Duplicate_1_q\ & 
-- ((\uut|Add2~50_combout\ & (\uut|reg.result[0][24]~76\ & VCC)) # (!\uut|Add2~50_combout\ & (!\uut|reg.result[0][24]~76\))))
-- \uut|reg.result[0][25]~78\ = CARRY((\uut|reg.VA_prev[25]~_Duplicate_1_q\ & ((!\uut|reg.result[0][24]~76\) # (!\uut|Add2~50_combout\))) # (!\uut|reg.VA_prev[25]~_Duplicate_1_q\ & (!\uut|Add2~50_combout\ & !\uut|reg.result[0][24]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev[25]~_Duplicate_1_q\,
	datab => \uut|Add2~50_combout\,
	datad => VCC,
	cin => \uut|reg.result[0][24]~76\,
	combout => \uut|reg.result[0][25]~77_combout\,
	cout => \uut|reg.result[0][25]~78\);

-- Location: FF_X15_Y8_N25
\uut|reg.result[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][25]~77_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][25]~q\);

-- Location: LCCOMB_X17_Y11_N24
\uut|Mult2|auto_generated|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~14_combout\ = (\uut|Mult2|auto_generated|mac_out4~DATAOUT21\ & (!\uut|Mult2|auto_generated|op_2~13\)) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT21\ & ((\uut|Mult2|auto_generated|op_2~13\) # (GND)))
-- \uut|Mult2|auto_generated|op_2~15\ = CARRY((!\uut|Mult2|auto_generated|op_2~13\) # (!\uut|Mult2|auto_generated|mac_out4~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_2~13\,
	combout => \uut|Mult2|auto_generated|op_2~14_combout\,
	cout => \uut|Mult2|auto_generated|op_2~15\);

-- Location: LCCOMB_X19_Y11_N20
\uut|Mult2|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~42_combout\ = (\uut|Mult2|auto_generated|op_2~14_combout\ & (\uut|Mult2|auto_generated|op_1~41\ & VCC)) # (!\uut|Mult2|auto_generated|op_2~14_combout\ & (!\uut|Mult2|auto_generated|op_1~41\))
-- \uut|Mult2|auto_generated|op_1~43\ = CARRY((!\uut|Mult2|auto_generated|op_2~14_combout\ & !\uut|Mult2|auto_generated|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \uut|Mult2|auto_generated|op_1~41\,
	combout => \uut|Mult2|auto_generated|op_1~42_combout\,
	cout => \uut|Mult2|auto_generated|op_1~43\);

-- Location: LCCOMB_X20_Y11_N24
\uut|r_Real[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[25]~77_combout\ = (\uut|reg.result[0][25]~q\ & ((\uut|Mult2|auto_generated|op_1~42_combout\ & (!\uut|r_Real[24]~76\)) # (!\uut|Mult2|auto_generated|op_1~42_combout\ & (\uut|r_Real[24]~76\ & VCC)))) # (!\uut|reg.result[0][25]~q\ & 
-- ((\uut|Mult2|auto_generated|op_1~42_combout\ & ((\uut|r_Real[24]~76\) # (GND))) # (!\uut|Mult2|auto_generated|op_1~42_combout\ & (!\uut|r_Real[24]~76\))))
-- \uut|r_Real[25]~78\ = CARRY((\uut|reg.result[0][25]~q\ & (\uut|Mult2|auto_generated|op_1~42_combout\ & !\uut|r_Real[24]~76\)) # (!\uut|reg.result[0][25]~q\ & ((\uut|Mult2|auto_generated|op_1~42_combout\) # (!\uut|r_Real[24]~76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][25]~q\,
	datab => \uut|Mult2|auto_generated|op_1~42_combout\,
	datad => VCC,
	cin => \uut|r_Real[24]~76\,
	combout => \uut|r_Real[25]~77_combout\,
	cout => \uut|r_Real[25]~78\);

-- Location: FF_X20_Y11_N25
\uut|r_Real[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[25]~77_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(25));

-- Location: LCCOMB_X19_Y8_N20
\uut|Mult1|auto_generated|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_2~14_combout\ = \uut|Mult1|auto_generated|op_2~13\ $ (\uut|Mult1|auto_generated|mac_out4~DATAOUT22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult1|auto_generated|mac_out4~DATAOUT22\,
	cin => \uut|Mult1|auto_generated|op_2~13\,
	combout => \uut|Mult1|auto_generated|op_2~14_combout\);

-- Location: LCCOMB_X17_Y8_N22
\uut|Mult1|auto_generated|op_1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult1|auto_generated|op_1~44_combout\ = \uut|Mult1|auto_generated|op_1~43\ $ (\uut|Mult1|auto_generated|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult1|auto_generated|op_2~14_combout\,
	cin => \uut|Mult1|auto_generated|op_1~43\,
	combout => \uut|Mult1|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X16_Y8_N26
\uut|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~52_combout\ = \data|o_data\(11) $ (\uut|Add2~51\ $ (!\uut|Mult1|auto_generated|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datad => \uut|Mult1|auto_generated|op_1~44_combout\,
	cin => \uut|Add2~51\,
	combout => \uut|Add2~52_combout\);

-- Location: LCCOMB_X15_Y8_N26
\uut|reg.result[0][26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][26]~79_combout\ = \uut|reg.VA_prev[26]~_Duplicate_1_q\ $ (\uut|reg.result[0][25]~78\ $ (\uut|Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.VA_prev[26]~_Duplicate_1_q\,
	datad => \uut|Add2~52_combout\,
	cin => \uut|reg.result[0][25]~78\,
	combout => \uut|reg.result[0][26]~79_combout\);

-- Location: FF_X15_Y8_N27
\uut|reg.result[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][26]~79_combout\,
	ena => \uut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][26]~q\);

-- Location: LCCOMB_X17_Y11_N26
\uut|Mult2|auto_generated|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_2~16_combout\ = \uut|Mult2|auto_generated|mac_out4~DATAOUT22\ $ (!\uut|Mult2|auto_generated|op_2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult2|auto_generated|mac_out4~DATAOUT22\,
	cin => \uut|Mult2|auto_generated|op_2~15\,
	combout => \uut|Mult2|auto_generated|op_2~16_combout\);

-- Location: LCCOMB_X19_Y11_N22
\uut|Mult2|auto_generated|op_1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult2|auto_generated|op_1~44_combout\ = \uut|Mult2|auto_generated|op_1~43\ $ (\uut|Mult2|auto_generated|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|op_2~16_combout\,
	cin => \uut|Mult2|auto_generated|op_1~43\,
	combout => \uut|Mult2|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X20_Y11_N26
\uut|r_Real[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[26]~79_combout\ = \uut|reg.result[0][26]~q\ $ (\uut|r_Real[25]~78\ $ (\uut|Mult2|auto_generated|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][26]~q\,
	datad => \uut|Mult2|auto_generated|op_1~44_combout\,
	cin => \uut|r_Real[25]~78\,
	combout => \uut|r_Real[26]~79_combout\);

-- Location: FF_X20_Y11_N27
\uut|r_Real[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[26]~79_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(26));

-- Location: DSPMULT_X18_Y4_N0
\uut|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~0_combout\,
	dataa => \uut|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y4_N2
\uut|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y4_N4
\uut|r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[0]~feeder_combout\ = \uut|Mult3|auto_generated|w245w\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult3|auto_generated|w245w\(14),
	combout => \uut|r_Imag[0]~feeder_combout\);

-- Location: FF_X17_Y4_N5
\uut|r_Imag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[0]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(0));

-- Location: LCCOMB_X17_Y4_N6
\uut|r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[1]~feeder_combout\ = \uut|Mult3|auto_generated|w245w\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult3|auto_generated|w245w\(15),
	combout => \uut|r_Imag[1]~feeder_combout\);

-- Location: FF_X17_Y4_N7
\uut|r_Imag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[1]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(1));

-- Location: LCCOMB_X17_Y4_N0
\uut|r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[2]~feeder_combout\ = \uut|Mult3|auto_generated|w245w\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult3|auto_generated|w245w\(16),
	combout => \uut|r_Imag[2]~feeder_combout\);

-- Location: FF_X17_Y4_N1
\uut|r_Imag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[2]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(2));

-- Location: LCCOMB_X17_Y4_N2
\uut|r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[3]~feeder_combout\ = \uut|Mult3|auto_generated|w245w\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult3|auto_generated|w245w\(17),
	combout => \uut|r_Imag[3]~feeder_combout\);

-- Location: FF_X17_Y4_N3
\uut|r_Imag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[3]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(3));

-- Location: DSPMULT_X18_Y3_N0
\uut|Mult3|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~0_combout\,
	dataa => \uut|Mult3|auto_generated|mac_mult3_DATAA_bus\,
	datab => \uut|Mult3|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult3|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y3_N2
\uut|Mult3|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult3|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y4_N10
\uut|r_Imag[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[4]~23_combout\ = (\uut|Mult3|auto_generated|mac_out2~DATAOUT18\ & (\uut|Mult3|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT18\ & (\uut|Mult3|auto_generated|mac_out4~dataout\ & VCC))
-- \uut|r_Imag[4]~24\ = CARRY((\uut|Mult3|auto_generated|mac_out2~DATAOUT18\ & \uut|Mult3|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2~DATAOUT18\,
	datab => \uut|Mult3|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \uut|r_Imag[4]~23_combout\,
	cout => \uut|r_Imag[4]~24\);

-- Location: FF_X17_Y4_N11
\uut|r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[4]~23_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(4));

-- Location: LCCOMB_X17_Y4_N12
\uut|r_Imag[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[5]~25_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ & (\uut|r_Imag[4]~24\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\uut|r_Imag[4]~24\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT1\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\uut|r_Imag[4]~24\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\uut|r_Imag[4]~24\) # (GND)))))
-- \uut|r_Imag[5]~26\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT1\ & (!\uut|Mult3|auto_generated|mac_out2~DATAOUT19\ & !\uut|r_Imag[4]~24\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT1\ & ((!\uut|r_Imag[4]~24\) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT1\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \uut|r_Imag[4]~24\,
	combout => \uut|r_Imag[5]~25_combout\,
	cout => \uut|r_Imag[5]~26\);

-- Location: FF_X17_Y4_N13
\uut|r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[5]~25_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(5));

-- Location: LCCOMB_X17_Y4_N14
\uut|r_Imag[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[6]~27_combout\ = ((\uut|Mult3|auto_generated|mac_out4~DATAOUT2\ $ (\uut|Mult3|auto_generated|mac_out2~DATAOUT20\ $ (!\uut|r_Imag[5]~26\)))) # (GND)
-- \uut|r_Imag[6]~28\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT2\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT20\) # (!\uut|r_Imag[5]~26\))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT2\ & (\uut|Mult3|auto_generated|mac_out2~DATAOUT20\ & 
-- !\uut|r_Imag[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT2\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \uut|r_Imag[5]~26\,
	combout => \uut|r_Imag[6]~27_combout\,
	cout => \uut|r_Imag[6]~28\);

-- Location: FF_X17_Y4_N15
\uut|r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[6]~27_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(6));

-- Location: LCCOMB_X17_Y4_N16
\uut|r_Imag[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[7]~29_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT3\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ & (\uut|r_Imag[6]~28\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\uut|r_Imag[6]~28\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT3\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\uut|r_Imag[6]~28\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ & ((\uut|r_Imag[6]~28\) # (GND)))))
-- \uut|r_Imag[7]~30\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT3\ & (!\uut|Mult3|auto_generated|mac_out2~DATAOUT21\ & !\uut|r_Imag[6]~28\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT3\ & ((!\uut|r_Imag[6]~28\) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT3\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \uut|r_Imag[6]~28\,
	combout => \uut|r_Imag[7]~29_combout\,
	cout => \uut|r_Imag[7]~30\);

-- Location: FF_X17_Y4_N17
\uut|r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[7]~29_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(7));

-- Location: LCCOMB_X17_Y4_N18
\uut|r_Imag[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[8]~31_combout\ = ((\uut|Mult3|auto_generated|mac_out4~DATAOUT4\ $ (\uut|Mult3|auto_generated|mac_out2~DATAOUT22\ $ (!\uut|r_Imag[7]~30\)))) # (GND)
-- \uut|r_Imag[8]~32\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT4\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT22\) # (!\uut|r_Imag[7]~30\))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT4\ & (\uut|Mult3|auto_generated|mac_out2~DATAOUT22\ & 
-- !\uut|r_Imag[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT4\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \uut|r_Imag[7]~30\,
	combout => \uut|r_Imag[8]~31_combout\,
	cout => \uut|r_Imag[8]~32\);

-- Location: FF_X17_Y4_N19
\uut|r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[8]~31_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(8));

-- Location: LCCOMB_X17_Y4_N20
\uut|r_Imag[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[9]~33_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ & (\uut|r_Imag[8]~32\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\uut|r_Imag[8]~32\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT5\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\uut|r_Imag[8]~32\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ & ((\uut|r_Imag[8]~32\) # (GND)))))
-- \uut|r_Imag[9]~34\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT5\ & (!\uut|Mult3|auto_generated|mac_out2~DATAOUT23\ & !\uut|r_Imag[8]~32\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT5\ & ((!\uut|r_Imag[8]~32\) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT5\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \uut|r_Imag[8]~32\,
	combout => \uut|r_Imag[9]~33_combout\,
	cout => \uut|r_Imag[9]~34\);

-- Location: FF_X17_Y4_N21
\uut|r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[9]~33_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(9));

-- Location: LCCOMB_X17_Y4_N22
\uut|r_Imag[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[10]~35_combout\ = ((\uut|Mult3|auto_generated|mac_out4~DATAOUT6\ $ (\uut|Mult3|auto_generated|mac_out2~DATAOUT24\ $ (!\uut|r_Imag[9]~34\)))) # (GND)
-- \uut|r_Imag[10]~36\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT6\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT24\) # (!\uut|r_Imag[9]~34\))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT6\ & (\uut|Mult3|auto_generated|mac_out2~DATAOUT24\ & 
-- !\uut|r_Imag[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT6\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \uut|r_Imag[9]~34\,
	combout => \uut|r_Imag[10]~35_combout\,
	cout => \uut|r_Imag[10]~36\);

-- Location: FF_X17_Y4_N23
\uut|r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[10]~35_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(10));

-- Location: LCCOMB_X17_Y4_N24
\uut|r_Imag[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[11]~37_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ & (\uut|r_Imag[10]~36\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ & (!\uut|r_Imag[10]~36\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT7\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ & (!\uut|r_Imag[10]~36\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ & ((\uut|r_Imag[10]~36\) # (GND)))))
-- \uut|r_Imag[11]~38\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT7\ & (!\uut|Mult3|auto_generated|mac_out2~DATAOUT25\ & !\uut|r_Imag[10]~36\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT7\ & ((!\uut|r_Imag[10]~36\) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT7\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \uut|r_Imag[10]~36\,
	combout => \uut|r_Imag[11]~37_combout\,
	cout => \uut|r_Imag[11]~38\);

-- Location: FF_X17_Y4_N25
\uut|r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[11]~37_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(11));

-- Location: LCCOMB_X17_Y4_N26
\uut|r_Imag[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[12]~39_combout\ = ((\uut|Mult3|auto_generated|mac_out4~DATAOUT8\ $ (\uut|Mult3|auto_generated|mac_out2~DATAOUT26\ $ (!\uut|r_Imag[11]~38\)))) # (GND)
-- \uut|r_Imag[12]~40\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT8\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT26\) # (!\uut|r_Imag[11]~38\))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT8\ & (\uut|Mult3|auto_generated|mac_out2~DATAOUT26\ & 
-- !\uut|r_Imag[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT8\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \uut|r_Imag[11]~38\,
	combout => \uut|r_Imag[12]~39_combout\,
	cout => \uut|r_Imag[12]~40\);

-- Location: FF_X17_Y4_N27
\uut|r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[12]~39_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(12));

-- Location: LCCOMB_X17_Y4_N28
\uut|r_Imag[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[13]~41_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT9\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ & (\uut|r_Imag[12]~40\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ & (!\uut|r_Imag[12]~40\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT9\ & ((\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ & (!\uut|r_Imag[12]~40\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\uut|r_Imag[12]~40\) # (GND)))))
-- \uut|r_Imag[13]~42\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT9\ & (!\uut|Mult3|auto_generated|mac_out2~DATAOUT27\ & !\uut|r_Imag[12]~40\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT9\ & ((!\uut|r_Imag[12]~40\) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT9\,
	datab => \uut|Mult3|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \uut|r_Imag[12]~40\,
	combout => \uut|r_Imag[13]~41_combout\,
	cout => \uut|r_Imag[13]~42\);

-- Location: FF_X17_Y4_N29
\uut|r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[13]~41_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(13));

-- Location: LCCOMB_X17_Y4_N30
\uut|r_Imag[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[14]~43_combout\ = ((\uut|Mult3|auto_generated|mac_out2~DATAOUT28\ $ (\uut|Mult3|auto_generated|mac_out4~DATAOUT10\ $ (!\uut|r_Imag[13]~42\)))) # (GND)
-- \uut|r_Imag[14]~44\ = CARRY((\uut|Mult3|auto_generated|mac_out2~DATAOUT28\ & ((\uut|Mult3|auto_generated|mac_out4~DATAOUT10\) # (!\uut|r_Imag[13]~42\))) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT28\ & (\uut|Mult3|auto_generated|mac_out4~DATAOUT10\ & 
-- !\uut|r_Imag[13]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2~DATAOUT28\,
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \uut|r_Imag[13]~42\,
	combout => \uut|r_Imag[14]~43_combout\,
	cout => \uut|r_Imag[14]~44\);

-- Location: FF_X17_Y4_N31
\uut|r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[14]~43_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(14));

-- Location: LCCOMB_X17_Y3_N0
\uut|r_Imag[15]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[15]~45_combout\ = (\uut|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ & (\uut|r_Imag[14]~44\ & VCC)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ & (!\uut|r_Imag[14]~44\)))) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ & (!\uut|r_Imag[14]~44\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ & ((\uut|r_Imag[14]~44\) # (GND)))))
-- \uut|r_Imag[15]~46\ = CARRY((\uut|Mult3|auto_generated|mac_out2~DATAOUT29\ & (!\uut|Mult3|auto_generated|mac_out4~DATAOUT11\ & !\uut|r_Imag[14]~44\)) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((!\uut|r_Imag[14]~44\) # 
-- (!\uut|Mult3|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2~DATAOUT29\,
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \uut|r_Imag[14]~44\,
	combout => \uut|r_Imag[15]~45_combout\,
	cout => \uut|r_Imag[15]~46\);

-- Location: FF_X17_Y3_N1
\uut|r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[15]~45_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(15));

-- Location: LCCOMB_X17_Y3_N2
\uut|r_Imag[16]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[16]~47_combout\ = ((\uut|Mult3|auto_generated|mac_out2~DATAOUT30\ $ (\uut|Mult3|auto_generated|mac_out4~DATAOUT12\ $ (!\uut|r_Imag[15]~46\)))) # (GND)
-- \uut|r_Imag[16]~48\ = CARRY((\uut|Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\uut|Mult3|auto_generated|mac_out4~DATAOUT12\) # (!\uut|r_Imag[15]~46\))) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT30\ & (\uut|Mult3|auto_generated|mac_out4~DATAOUT12\ & 
-- !\uut|r_Imag[15]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2~DATAOUT30\,
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \uut|r_Imag[15]~46\,
	combout => \uut|r_Imag[16]~47_combout\,
	cout => \uut|r_Imag[16]~48\);

-- Location: FF_X17_Y3_N3
\uut|r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[16]~47_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(16));

-- Location: LCCOMB_X16_Y3_N6
\uut|Mult3|auto_generated|add9_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[0]~0_combout\ = \uut|Mult3|auto_generated|mac_out4~DATAOUT13\ $ (VCC)
-- \uut|Mult3|auto_generated|add9_result[0]~1\ = CARRY(\uut|Mult3|auto_generated|mac_out4~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	combout => \uut|Mult3|auto_generated|add9_result[0]~0_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X17_Y3_N4
\uut|r_Imag[17]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[17]~49_combout\ = (\uut|Mult3|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult3|auto_generated|add9_result[0]~0_combout\ & (!\uut|r_Imag[16]~48\)) # (!\uut|Mult3|auto_generated|add9_result[0]~0_combout\ & ((\uut|r_Imag[16]~48\) # (GND))))) # 
-- (!\uut|Mult3|auto_generated|mac_out2~DATAOUT31\ & ((\uut|Mult3|auto_generated|add9_result[0]~0_combout\ & (\uut|r_Imag[16]~48\ & VCC)) # (!\uut|Mult3|auto_generated|add9_result[0]~0_combout\ & (!\uut|r_Imag[16]~48\))))
-- \uut|r_Imag[17]~50\ = CARRY((\uut|Mult3|auto_generated|mac_out2~DATAOUT31\ & ((!\uut|r_Imag[16]~48\) # (!\uut|Mult3|auto_generated|add9_result[0]~0_combout\))) # (!\uut|Mult3|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\uut|Mult3|auto_generated|add9_result[0]~0_combout\ & !\uut|r_Imag[16]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out2~DATAOUT31\,
	datab => \uut|Mult3|auto_generated|add9_result[0]~0_combout\,
	datad => VCC,
	cin => \uut|r_Imag[16]~48\,
	combout => \uut|r_Imag[17]~49_combout\,
	cout => \uut|r_Imag[17]~50\);

-- Location: FF_X17_Y3_N5
\uut|r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[17]~49_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(17));

-- Location: LCCOMB_X16_Y3_N8
\uut|Mult3|auto_generated|add9_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[1]~2_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT14\ & (!\uut|Mult3|auto_generated|add9_result[0]~1\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT14\ & ((\uut|Mult3|auto_generated|add9_result[0]~1\) # 
-- (GND)))
-- \uut|Mult3|auto_generated|add9_result[1]~3\ = CARRY((!\uut|Mult3|auto_generated|add9_result[0]~1\) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[0]~1\,
	combout => \uut|Mult3|auto_generated|add9_result[1]~2_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X17_Y3_N6
\uut|r_Imag[18]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[18]~51_combout\ = (\uut|Mult3|auto_generated|add9_result[1]~2_combout\ & ((GND) # (!\uut|r_Imag[17]~50\))) # (!\uut|Mult3|auto_generated|add9_result[1]~2_combout\ & (\uut|r_Imag[17]~50\ $ (GND)))
-- \uut|r_Imag[18]~52\ = CARRY((\uut|Mult3|auto_generated|add9_result[1]~2_combout\) # (!\uut|r_Imag[17]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \uut|r_Imag[17]~50\,
	combout => \uut|r_Imag[18]~51_combout\,
	cout => \uut|r_Imag[18]~52\);

-- Location: FF_X17_Y3_N7
\uut|r_Imag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[18]~51_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(18));

-- Location: LCCOMB_X16_Y3_N10
\uut|Mult3|auto_generated|add9_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[2]~4_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT15\ & (\uut|Mult3|auto_generated|add9_result[1]~3\ $ (GND))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT15\ & (!\uut|Mult3|auto_generated|add9_result[1]~3\ 
-- & VCC))
-- \uut|Mult3|auto_generated|add9_result[2]~5\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT15\ & !\uut|Mult3|auto_generated|add9_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[1]~3\,
	combout => \uut|Mult3|auto_generated|add9_result[2]~4_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X17_Y3_N8
\uut|r_Imag[19]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[19]~53_combout\ = (\uut|Mult3|auto_generated|add9_result[2]~4_combout\ & (\uut|r_Imag[18]~52\ & VCC)) # (!\uut|Mult3|auto_generated|add9_result[2]~4_combout\ & (!\uut|r_Imag[18]~52\))
-- \uut|r_Imag[19]~54\ = CARRY((!\uut|Mult3|auto_generated|add9_result[2]~4_combout\ & !\uut|r_Imag[18]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \uut|r_Imag[18]~52\,
	combout => \uut|r_Imag[19]~53_combout\,
	cout => \uut|r_Imag[19]~54\);

-- Location: FF_X17_Y3_N9
\uut|r_Imag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[19]~53_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(19));

-- Location: LCCOMB_X16_Y3_N12
\uut|Mult3|auto_generated|add9_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[3]~6_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT16\ & (!\uut|Mult3|auto_generated|add9_result[2]~5\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT16\ & ((\uut|Mult3|auto_generated|add9_result[2]~5\) # 
-- (GND)))
-- \uut|Mult3|auto_generated|add9_result[3]~7\ = CARRY((!\uut|Mult3|auto_generated|add9_result[2]~5\) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[2]~5\,
	combout => \uut|Mult3|auto_generated|add9_result[3]~6_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X17_Y3_N10
\uut|r_Imag[20]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[20]~55_combout\ = (\uut|Mult3|auto_generated|add9_result[3]~6_combout\ & ((GND) # (!\uut|r_Imag[19]~54\))) # (!\uut|Mult3|auto_generated|add9_result[3]~6_combout\ & (\uut|r_Imag[19]~54\ $ (GND)))
-- \uut|r_Imag[20]~56\ = CARRY((\uut|Mult3|auto_generated|add9_result[3]~6_combout\) # (!\uut|r_Imag[19]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \uut|r_Imag[19]~54\,
	combout => \uut|r_Imag[20]~55_combout\,
	cout => \uut|r_Imag[20]~56\);

-- Location: FF_X17_Y3_N11
\uut|r_Imag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[20]~55_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(20));

-- Location: LCCOMB_X16_Y3_N14
\uut|Mult3|auto_generated|add9_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[4]~8_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT17\ & (\uut|Mult3|auto_generated|add9_result[3]~7\ $ (GND))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT17\ & (!\uut|Mult3|auto_generated|add9_result[3]~7\ 
-- & VCC))
-- \uut|Mult3|auto_generated|add9_result[4]~9\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT17\ & !\uut|Mult3|auto_generated|add9_result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[3]~7\,
	combout => \uut|Mult3|auto_generated|add9_result[4]~8_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X17_Y3_N12
\uut|r_Imag[21]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[21]~57_combout\ = (\uut|Mult3|auto_generated|add9_result[4]~8_combout\ & (\uut|r_Imag[20]~56\ & VCC)) # (!\uut|Mult3|auto_generated|add9_result[4]~8_combout\ & (!\uut|r_Imag[20]~56\))
-- \uut|r_Imag[21]~58\ = CARRY((!\uut|Mult3|auto_generated|add9_result[4]~8_combout\ & !\uut|r_Imag[20]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \uut|r_Imag[20]~56\,
	combout => \uut|r_Imag[21]~57_combout\,
	cout => \uut|r_Imag[21]~58\);

-- Location: FF_X17_Y3_N13
\uut|r_Imag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[21]~57_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(21));

-- Location: LCCOMB_X16_Y3_N16
\uut|Mult3|auto_generated|add9_result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[5]~10_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT18\ & (!\uut|Mult3|auto_generated|add9_result[4]~9\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT18\ & ((\uut|Mult3|auto_generated|add9_result[4]~9\) # 
-- (GND)))
-- \uut|Mult3|auto_generated|add9_result[5]~11\ = CARRY((!\uut|Mult3|auto_generated|add9_result[4]~9\) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[4]~9\,
	combout => \uut|Mult3|auto_generated|add9_result[5]~10_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X17_Y3_N14
\uut|r_Imag[22]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[22]~59_combout\ = (\uut|Mult3|auto_generated|add9_result[5]~10_combout\ & ((GND) # (!\uut|r_Imag[21]~58\))) # (!\uut|Mult3|auto_generated|add9_result[5]~10_combout\ & (\uut|r_Imag[21]~58\ $ (GND)))
-- \uut|r_Imag[22]~60\ = CARRY((\uut|Mult3|auto_generated|add9_result[5]~10_combout\) # (!\uut|r_Imag[21]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \uut|r_Imag[21]~58\,
	combout => \uut|r_Imag[22]~59_combout\,
	cout => \uut|r_Imag[22]~60\);

-- Location: FF_X17_Y3_N15
\uut|r_Imag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[22]~59_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(22));

-- Location: LCCOMB_X16_Y3_N18
\uut|Mult3|auto_generated|add9_result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[6]~12_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT19\ & (\uut|Mult3|auto_generated|add9_result[5]~11\ $ (GND))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT19\ & 
-- (!\uut|Mult3|auto_generated|add9_result[5]~11\ & VCC))
-- \uut|Mult3|auto_generated|add9_result[6]~13\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT19\ & !\uut|Mult3|auto_generated|add9_result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[5]~11\,
	combout => \uut|Mult3|auto_generated|add9_result[6]~12_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X17_Y3_N16
\uut|r_Imag[23]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[23]~61_combout\ = (\uut|Mult3|auto_generated|add9_result[6]~12_combout\ & (\uut|r_Imag[22]~60\ & VCC)) # (!\uut|Mult3|auto_generated|add9_result[6]~12_combout\ & (!\uut|r_Imag[22]~60\))
-- \uut|r_Imag[23]~62\ = CARRY((!\uut|Mult3|auto_generated|add9_result[6]~12_combout\ & !\uut|r_Imag[22]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \uut|r_Imag[22]~60\,
	combout => \uut|r_Imag[23]~61_combout\,
	cout => \uut|r_Imag[23]~62\);

-- Location: FF_X17_Y3_N17
\uut|r_Imag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[23]~61_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(23));

-- Location: LCCOMB_X16_Y3_N20
\uut|Mult3|auto_generated|add9_result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[7]~14_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT20\ & (!\uut|Mult3|auto_generated|add9_result[6]~13\)) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT20\ & ((\uut|Mult3|auto_generated|add9_result[6]~13\) # 
-- (GND)))
-- \uut|Mult3|auto_generated|add9_result[7]~15\ = CARRY((!\uut|Mult3|auto_generated|add9_result[6]~13\) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[6]~13\,
	combout => \uut|Mult3|auto_generated|add9_result[7]~14_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X17_Y3_N18
\uut|r_Imag[24]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[24]~63_combout\ = (\uut|Mult3|auto_generated|add9_result[7]~14_combout\ & ((GND) # (!\uut|r_Imag[23]~62\))) # (!\uut|Mult3|auto_generated|add9_result[7]~14_combout\ & (\uut|r_Imag[23]~62\ $ (GND)))
-- \uut|r_Imag[24]~64\ = CARRY((\uut|Mult3|auto_generated|add9_result[7]~14_combout\) # (!\uut|r_Imag[23]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \uut|r_Imag[23]~62\,
	combout => \uut|r_Imag[24]~63_combout\,
	cout => \uut|r_Imag[24]~64\);

-- Location: FF_X17_Y3_N19
\uut|r_Imag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[24]~63_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(24));

-- Location: LCCOMB_X16_Y3_N22
\uut|Mult3|auto_generated|add9_result[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[8]~16_combout\ = (\uut|Mult3|auto_generated|mac_out4~DATAOUT21\ & (\uut|Mult3|auto_generated|add9_result[7]~15\ $ (GND))) # (!\uut|Mult3|auto_generated|mac_out4~DATAOUT21\ & 
-- (!\uut|Mult3|auto_generated|add9_result[7]~15\ & VCC))
-- \uut|Mult3|auto_generated|add9_result[8]~17\ = CARRY((\uut|Mult3|auto_generated|mac_out4~DATAOUT21\ & !\uut|Mult3|auto_generated|add9_result[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult3|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \uut|Mult3|auto_generated|add9_result[7]~15\,
	combout => \uut|Mult3|auto_generated|add9_result[8]~16_combout\,
	cout => \uut|Mult3|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X17_Y3_N20
\uut|r_Imag[25]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[25]~65_combout\ = (\uut|Mult3|auto_generated|add9_result[8]~16_combout\ & (\uut|r_Imag[24]~64\ & VCC)) # (!\uut|Mult3|auto_generated|add9_result[8]~16_combout\ & (!\uut|r_Imag[24]~64\))
-- \uut|r_Imag[25]~66\ = CARRY((!\uut|Mult3|auto_generated|add9_result[8]~16_combout\ & !\uut|r_Imag[24]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \uut|r_Imag[24]~64\,
	combout => \uut|r_Imag[25]~65_combout\,
	cout => \uut|r_Imag[25]~66\);

-- Location: FF_X17_Y3_N21
\uut|r_Imag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[25]~65_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(25));

-- Location: LCCOMB_X16_Y3_N24
\uut|Mult3|auto_generated|add9_result[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Mult3|auto_generated|add9_result[9]~18_combout\ = \uut|Mult3|auto_generated|add9_result[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uut|Mult3|auto_generated|add9_result[8]~17\,
	combout => \uut|Mult3|auto_generated|add9_result[9]~18_combout\);

-- Location: LCCOMB_X17_Y3_N22
\uut|r_Imag[26]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[26]~67_combout\ = \uut|Mult3|auto_generated|mac_out4~DATAOUT22\ $ (\uut|r_Imag[25]~66\ $ (\uut|Mult3|auto_generated|add9_result[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|Mult3|auto_generated|mac_out4~DATAOUT22\,
	datad => \uut|Mult3|auto_generated|add9_result[9]~18_combout\,
	cin => \uut|r_Imag[25]~66\,
	combout => \uut|r_Imag[26]~67_combout\);

-- Location: FF_X17_Y3_N23
\uut|r_Imag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[26]~67_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(26));

-- Location: LCCOMB_X17_Y4_N8
\uut|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector3~0_combout\ = (\uut|reg.state.OUTPUT~q\) # ((\uut|reg.done~q\ & ((\uut|reg.state.CALCULATE~q\) # (\uut|reg.state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datab => \uut|reg.state.OUTPUT~q\,
	datac => \uut|reg.done~q\,
	datad => \uut|reg.state.STORE~q\,
	combout => \uut|Selector3~0_combout\);

-- Location: FF_X17_Y4_N9
\uut|reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.done~q\);

ww_o_Real(0) <= \o_Real[0]~output_o\;

ww_o_Real(1) <= \o_Real[1]~output_o\;

ww_o_Real(2) <= \o_Real[2]~output_o\;

ww_o_Real(3) <= \o_Real[3]~output_o\;

ww_o_Real(4) <= \o_Real[4]~output_o\;

ww_o_Real(5) <= \o_Real[5]~output_o\;

ww_o_Real(6) <= \o_Real[6]~output_o\;

ww_o_Real(7) <= \o_Real[7]~output_o\;

ww_o_Real(8) <= \o_Real[8]~output_o\;

ww_o_Real(9) <= \o_Real[9]~output_o\;

ww_o_Real(10) <= \o_Real[10]~output_o\;

ww_o_Real(11) <= \o_Real[11]~output_o\;

ww_o_Real(12) <= \o_Real[12]~output_o\;

ww_o_Real(13) <= \o_Real[13]~output_o\;

ww_o_Real(14) <= \o_Real[14]~output_o\;

ww_o_Real(15) <= \o_Real[15]~output_o\;

ww_o_Real(16) <= \o_Real[16]~output_o\;

ww_o_Real(17) <= \o_Real[17]~output_o\;

ww_o_Real(18) <= \o_Real[18]~output_o\;

ww_o_Real(19) <= \o_Real[19]~output_o\;

ww_o_Real(20) <= \o_Real[20]~output_o\;

ww_o_Real(21) <= \o_Real[21]~output_o\;

ww_o_Real(22) <= \o_Real[22]~output_o\;

ww_o_Real(23) <= \o_Real[23]~output_o\;

ww_o_Real(24) <= \o_Real[24]~output_o\;

ww_o_Real(25) <= \o_Real[25]~output_o\;

ww_o_Real(26) <= \o_Real[26]~output_o\;

ww_o_Imag(0) <= \o_Imag[0]~output_o\;

ww_o_Imag(1) <= \o_Imag[1]~output_o\;

ww_o_Imag(2) <= \o_Imag[2]~output_o\;

ww_o_Imag(3) <= \o_Imag[3]~output_o\;

ww_o_Imag(4) <= \o_Imag[4]~output_o\;

ww_o_Imag(5) <= \o_Imag[5]~output_o\;

ww_o_Imag(6) <= \o_Imag[6]~output_o\;

ww_o_Imag(7) <= \o_Imag[7]~output_o\;

ww_o_Imag(8) <= \o_Imag[8]~output_o\;

ww_o_Imag(9) <= \o_Imag[9]~output_o\;

ww_o_Imag(10) <= \o_Imag[10]~output_o\;

ww_o_Imag(11) <= \o_Imag[11]~output_o\;

ww_o_Imag(12) <= \o_Imag[12]~output_o\;

ww_o_Imag(13) <= \o_Imag[13]~output_o\;

ww_o_Imag(14) <= \o_Imag[14]~output_o\;

ww_o_Imag(15) <= \o_Imag[15]~output_o\;

ww_o_Imag(16) <= \o_Imag[16]~output_o\;

ww_o_Imag(17) <= \o_Imag[17]~output_o\;

ww_o_Imag(18) <= \o_Imag[18]~output_o\;

ww_o_Imag(19) <= \o_Imag[19]~output_o\;

ww_o_Imag(20) <= \o_Imag[20]~output_o\;

ww_o_Imag(21) <= \o_Imag[21]~output_o\;

ww_o_Imag(22) <= \o_Imag[22]~output_o\;

ww_o_Imag(23) <= \o_Imag[23]~output_o\;

ww_o_Imag(24) <= \o_Imag[24]~output_o\;

ww_o_Imag(25) <= \o_Imag[25]~output_o\;

ww_o_Imag(26) <= \o_Imag[26]~output_o\;

ww_o_NEW_RESULT <= \o_NEW_RESULT~output_o\;
END structure;


