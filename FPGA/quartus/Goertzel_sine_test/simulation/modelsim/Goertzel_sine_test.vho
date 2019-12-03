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

-- DATE "12/03/2019 16:25:06"

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
	o_Real : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Imag : BUFFER std_logic_vector(17 DOWNTO 0);
	o_NEW_RESULT : BUFFER std_logic
	);
END Goertzel_sine_test;

-- Design Ports Information
-- o_Real[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[8]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[9]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[10]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[13]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[14]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[17]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[12]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[16]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[17]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEW_VALUE	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK_sin	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_o_Real : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Imag : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_NEW_RESULT : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK_sin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~5\ : std_logic;
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
SIGNAL \o_NEW_RESULT~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \uut|Add2~0_combout\ : std_logic;
SIGNAL \uut|reg~7_combout\ : std_logic;
SIGNAL \uut|Add2~1\ : std_logic;
SIGNAL \uut|Add2~2_combout\ : std_logic;
SIGNAL \uut|Add2~3\ : std_logic;
SIGNAL \uut|Add2~4_combout\ : std_logic;
SIGNAL \uut|Add2~5\ : std_logic;
SIGNAL \uut|Add2~6_combout\ : std_logic;
SIGNAL \uut|reg~6_combout\ : std_logic;
SIGNAL \uut|Add2~7\ : std_logic;
SIGNAL \uut|Add2~8_combout\ : std_logic;
SIGNAL \uut|Add2~9\ : std_logic;
SIGNAL \uut|Add2~10_combout\ : std_logic;
SIGNAL \uut|Add2~11\ : std_logic;
SIGNAL \uut|Add2~12_combout\ : std_logic;
SIGNAL \uut|reg~5_combout\ : std_logic;
SIGNAL \uut|Add2~13\ : std_logic;
SIGNAL \uut|Add2~14_combout\ : std_logic;
SIGNAL \uut|reg~8_combout\ : std_logic;
SIGNAL \uut|Add2~15\ : std_logic;
SIGNAL \uut|Add2~16_combout\ : std_logic;
SIGNAL \uut|Add2~17\ : std_logic;
SIGNAL \uut|Add2~18_combout\ : std_logic;
SIGNAL \uut|Add2~19\ : std_logic;
SIGNAL \uut|Add2~20_combout\ : std_logic;
SIGNAL \uut|Add2~21\ : std_logic;
SIGNAL \uut|Add2~22_combout\ : std_logic;
SIGNAL \uut|Add2~23\ : std_logic;
SIGNAL \uut|Add2~24_combout\ : std_logic;
SIGNAL \uut|Add2~25\ : std_logic;
SIGNAL \uut|Add2~26_combout\ : std_logic;
SIGNAL \uut|Add2~27\ : std_logic;
SIGNAL \uut|Add2~28_combout\ : std_logic;
SIGNAL \uut|Equal0~7_combout\ : std_logic;
SIGNAL \uut|Add2~29\ : std_logic;
SIGNAL \uut|Add2~30_combout\ : std_logic;
SIGNAL \uut|Add2~31\ : std_logic;
SIGNAL \uut|Add2~32_combout\ : std_logic;
SIGNAL \uut|Add2~33\ : std_logic;
SIGNAL \uut|Add2~34_combout\ : std_logic;
SIGNAL \uut|Add2~35\ : std_logic;
SIGNAL \uut|Add2~36_combout\ : std_logic;
SIGNAL \uut|Add2~37\ : std_logic;
SIGNAL \uut|Add2~38_combout\ : std_logic;
SIGNAL \uut|Add2~39\ : std_logic;
SIGNAL \uut|Add2~40_combout\ : std_logic;
SIGNAL \uut|Add2~41\ : std_logic;
SIGNAL \uut|Add2~42_combout\ : std_logic;
SIGNAL \uut|Add2~43\ : std_logic;
SIGNAL \uut|Add2~44_combout\ : std_logic;
SIGNAL \uut|Equal0~2_combout\ : std_logic;
SIGNAL \uut|Equal0~3_combout\ : std_logic;
SIGNAL \uut|Add2~45\ : std_logic;
SIGNAL \uut|Add2~46_combout\ : std_logic;
SIGNAL \uut|Add2~47\ : std_logic;
SIGNAL \uut|Add2~48_combout\ : std_logic;
SIGNAL \uut|Add2~49\ : std_logic;
SIGNAL \uut|Add2~50_combout\ : std_logic;
SIGNAL \uut|Add2~51\ : std_logic;
SIGNAL \uut|Add2~52_combout\ : std_logic;
SIGNAL \uut|Equal0~1_combout\ : std_logic;
SIGNAL \uut|Add2~53\ : std_logic;
SIGNAL \uut|Add2~54_combout\ : std_logic;
SIGNAL \uut|Add2~55\ : std_logic;
SIGNAL \uut|Add2~56_combout\ : std_logic;
SIGNAL \uut|Add2~57\ : std_logic;
SIGNAL \uut|Add2~58_combout\ : std_logic;
SIGNAL \uut|Add2~59\ : std_logic;
SIGNAL \uut|Add2~60_combout\ : std_logic;
SIGNAL \uut|Equal0~0_combout\ : std_logic;
SIGNAL \uut|Equal0~4_combout\ : std_logic;
SIGNAL \uut|Equal0~5_combout\ : std_logic;
SIGNAL \uut|Equal0~6_combout\ : std_logic;
SIGNAL \uut|Equal0~8_combout\ : std_logic;
SIGNAL \uut|Equal0~9_combout\ : std_logic;
SIGNAL \i_NEW_VALUE~input_o\ : std_logic;
SIGNAL \uut|Selector2~0_combout\ : std_logic;
SIGNAL \uut|Selector2~1_combout\ : std_logic;
SIGNAL \uut|reg.state.OUTPUT~q\ : std_logic;
SIGNAL \uut|reg.state.DONE~q\ : std_logic;
SIGNAL \uut|Selector0~0_combout\ : std_logic;
SIGNAL \uut|Selector0~1_combout\ : std_logic;
SIGNAL \uut|reg.state.IDLE~q\ : std_logic;
SIGNAL \uut|reg~9_combout\ : std_logic;
SIGNAL \uut|reg.state.CALCULATE~q\ : std_logic;
SIGNAL \uut|reg.state.STORE~feeder_combout\ : std_logic;
SIGNAL \uut|reg.state.STORE~q\ : std_logic;
SIGNAL \i_CLK_sin~input_o\ : std_logic;
SIGNAL \i_CLK_sin~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_addr[2]~input_o\ : std_logic;
SIGNAL \i_addr[1]~input_o\ : std_logic;
SIGNAL \i_addr[6]~input_o\ : std_logic;
SIGNAL \i_addr[7]~input_o\ : std_logic;
SIGNAL \data|Mux10~2_combout\ : std_logic;
SIGNAL \i_addr[5]~input_o\ : std_logic;
SIGNAL \i_addr[4]~input_o\ : std_logic;
SIGNAL \i_addr[3]~input_o\ : std_logic;
SIGNAL \data|Mux10~4_combout\ : std_logic;
SIGNAL \data|Mux10~3_combout\ : std_logic;
SIGNAL \data|Mux10~6_combout\ : std_logic;
SIGNAL \data|Mux10~1_combout\ : std_logic;
SIGNAL \data|Mux10~5_combout\ : std_logic;
SIGNAL \data|Mux10~0_combout\ : std_logic;
SIGNAL \data|Mux10~7_combout\ : std_logic;
SIGNAL \i_addr[0]~input_o\ : std_logic;
SIGNAL \uut|Selector22~1_combout\ : std_logic;
SIGNAL \data|Mux9~3_combout\ : std_logic;
SIGNAL \data|Mux9~2_combout\ : std_logic;
SIGNAL \data|Mux9~4_combout\ : std_logic;
SIGNAL \data|Mux9~5_combout\ : std_logic;
SIGNAL \data|Mux9~7_combout\ : std_logic;
SIGNAL \data|Mux9~8_combout\ : std_logic;
SIGNAL \data|Mux9~6_combout\ : std_logic;
SIGNAL \data|Mux9~0_combout\ : std_logic;
SIGNAL \data|Mux9~1_combout\ : std_logic;
SIGNAL \data|Mux9~9_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector38~0_combout\ : std_logic;
SIGNAL \uut|Selector27~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector37~0_combout\ : std_logic;
SIGNAL \data|Mux2~5_combout\ : std_logic;
SIGNAL \data|Mux2~4_combout\ : std_logic;
SIGNAL \data|Mux2~22_combout\ : std_logic;
SIGNAL \data|Mux2~6_combout\ : std_logic;
SIGNAL \data|Mux2~23_combout\ : std_logic;
SIGNAL \data|Mux2~19_combout\ : std_logic;
SIGNAL \data|Mux2~20_combout\ : std_logic;
SIGNAL \data|Mux2~9_combout\ : std_logic;
SIGNAL \data|Mux2~8_combout\ : std_logic;
SIGNAL \data|Mux2~10_combout\ : std_logic;
SIGNAL \data|Mux2~7_combout\ : std_logic;
SIGNAL \data|Mux2~11_combout\ : std_logic;
SIGNAL \data|Mux2~12_combout\ : std_logic;
SIGNAL \data|Mux2~14_combout\ : std_logic;
SIGNAL \data|Mux2~13_combout\ : std_logic;
SIGNAL \data|Mux2~15_combout\ : std_logic;
SIGNAL \data|Mux2~16_combout\ : std_logic;
SIGNAL \data|Mux2~17_combout\ : std_logic;
SIGNAL \data|Mux2~18_combout\ : std_logic;
SIGNAL \data|Mux2~21_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector36~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector35~0_combout\ : std_logic;
SIGNAL \data|Mux5~5_combout\ : std_logic;
SIGNAL \data|Mux5~4_combout\ : std_logic;
SIGNAL \data|Mux5~6_combout\ : std_logic;
SIGNAL \data|Mux6~8_combout\ : std_logic;
SIGNAL \data|Mux6~6_combout\ : std_logic;
SIGNAL \data|Mux5~3_combout\ : std_logic;
SIGNAL \data|Mux5~7_combout\ : std_logic;
SIGNAL \data|Mux5~1_combout\ : std_logic;
SIGNAL \data|Mux5~0_combout\ : std_logic;
SIGNAL \data|Mux5~2_combout\ : std_logic;
SIGNAL \data|Mux5~8_combout\ : std_logic;
SIGNAL \data|Mux5~9_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector33~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector32~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector29~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector28~0_combout\ : std_logic;
SIGNAL \data|Mux5~10_combout\ : std_logic;
SIGNAL \data|Mux0~5_combout\ : std_logic;
SIGNAL \data|Mux0~6_combout\ : std_logic;
SIGNAL \data|Mux0~11_combout\ : std_logic;
SIGNAL \data|Mux0~8_combout\ : std_logic;
SIGNAL \data|Mux0~7_combout\ : std_logic;
SIGNAL \data|Mux0~12_combout\ : std_logic;
SIGNAL \data|Mux0~9_combout\ : std_logic;
SIGNAL \data|Mux0~4_combout\ : std_logic;
SIGNAL \data|Mux0~10_combout\ : std_logic;
SIGNAL \data|Mux1~7_combout\ : std_logic;
SIGNAL \data|Mux1~8_combout\ : std_logic;
SIGNAL \data|Mux1~9_combout\ : std_logic;
SIGNAL \data|Mux1~3_combout\ : std_logic;
SIGNAL \data|Mux1~5_combout\ : std_logic;
SIGNAL \data|Mux1~2_combout\ : std_logic;
SIGNAL \data|Mux1~4_combout\ : std_logic;
SIGNAL \data|Mux1~6_combout\ : std_logic;
SIGNAL \data|Mux1~10_combout\ : std_logic;
SIGNAL \data|Mux1~0_combout\ : std_logic;
SIGNAL \data|Mux1~1_combout\ : std_logic;
SIGNAL \data|Mux1~11_combout\ : std_logic;
SIGNAL \data|Mux1~12_combout\ : std_logic;
SIGNAL \data|Mux1~13_combout\ : std_logic;
SIGNAL \data|Mux1~14_combout\ : std_logic;
SIGNAL \data|Mux3~17_combout\ : std_logic;
SIGNAL \data|Mux3~18_combout\ : std_logic;
SIGNAL \data|Mux3~5_combout\ : std_logic;
SIGNAL \data|Mux3~7_combout\ : std_logic;
SIGNAL \data|Mux3~6_combout\ : std_logic;
SIGNAL \data|Mux3~8_combout\ : std_logic;
SIGNAL \data|Mux3~9_combout\ : std_logic;
SIGNAL \data|Mux3~10_combout\ : std_logic;
SIGNAL \data|Mux3~11_combout\ : std_logic;
SIGNAL \data|Mux3~12_combout\ : std_logic;
SIGNAL \data|Mux3~13_combout\ : std_logic;
SIGNAL \data|Mux3~14_combout\ : std_logic;
SIGNAL \data|Mux3~15_combout\ : std_logic;
SIGNAL \data|Mux3~16_combout\ : std_logic;
SIGNAL \data|Mux3~1_combout\ : std_logic;
SIGNAL \data|Mux3~0_combout\ : std_logic;
SIGNAL \data|Mux3~2_combout\ : std_logic;
SIGNAL \data|Mux3~3_combout\ : std_logic;
SIGNAL \data|Mux3~4_combout\ : std_logic;
SIGNAL \data|Mux3~19_combout\ : std_logic;
SIGNAL \data|Mux4~17_combout\ : std_logic;
SIGNAL \data|Mux4~18_combout\ : std_logic;
SIGNAL \data|Mux4~19_combout\ : std_logic;
SIGNAL \data|Mux4~10_combout\ : std_logic;
SIGNAL \data|Mux4~9_combout\ : std_logic;
SIGNAL \data|Mux4~13_combout\ : std_logic;
SIGNAL \data|Mux4~12_combout\ : std_logic;
SIGNAL \data|Mux4~11_combout\ : std_logic;
SIGNAL \data|Mux4~14_combout\ : std_logic;
SIGNAL \data|Mux4~15_combout\ : std_logic;
SIGNAL \data|Mux4~8_combout\ : std_logic;
SIGNAL \data|Mux4~16_combout\ : std_logic;
SIGNAL \data|Mux6~16_combout\ : std_logic;
SIGNAL \data|Mux6~17_combout\ : std_logic;
SIGNAL \data|Mux6~1_combout\ : std_logic;
SIGNAL \data|Mux6~0_combout\ : std_logic;
SIGNAL \data|Mux6~2_combout\ : std_logic;
SIGNAL \data|Mux6~3_combout\ : std_logic;
SIGNAL \data|Mux6~4_combout\ : std_logic;
SIGNAL \data|Mux6~11_combout\ : std_logic;
SIGNAL \data|Mux6~10_combout\ : std_logic;
SIGNAL \data|Mux6~12_combout\ : std_logic;
SIGNAL \data|Mux6~13_combout\ : std_logic;
SIGNAL \data|Mux6~14_combout\ : std_logic;
SIGNAL \data|Mux6~5_combout\ : std_logic;
SIGNAL \data|Mux8~9_combout\ : std_logic;
SIGNAL \data|Mux6~7_combout\ : std_logic;
SIGNAL \data|Mux6~9_combout\ : std_logic;
SIGNAL \data|Mux6~15_combout\ : std_logic;
SIGNAL \data|Mux6~18_combout\ : std_logic;
SIGNAL \data|Mux7~3_combout\ : std_logic;
SIGNAL \data|Mux7~2_combout\ : std_logic;
SIGNAL \data|Mux7~4_combout\ : std_logic;
SIGNAL \data|Mux7~13_combout\ : std_logic;
SIGNAL \data|Mux7~5_combout\ : std_logic;
SIGNAL \data|Mux7~6_combout\ : std_logic;
SIGNAL \data|Mux7~7_combout\ : std_logic;
SIGNAL \data|Mux7~8_combout\ : std_logic;
SIGNAL \data|Mux7~10_combout\ : std_logic;
SIGNAL \data|Mux7~11_combout\ : std_logic;
SIGNAL \data|Mux7~9_combout\ : std_logic;
SIGNAL \data|Mux7~12_combout\ : std_logic;
SIGNAL \data|Mux8~1_combout\ : std_logic;
SIGNAL \data|Mux8~2_combout\ : std_logic;
SIGNAL \data|Mux8~3_combout\ : std_logic;
SIGNAL \data|Mux8~0_combout\ : std_logic;
SIGNAL \data|Mux8~4_combout\ : std_logic;
SIGNAL \data|Mux8~5_combout\ : std_logic;
SIGNAL \data|Mux8~6_combout\ : std_logic;
SIGNAL \data|Mux8~7_combout\ : std_logic;
SIGNAL \data|Mux8~8_combout\ : std_logic;
SIGNAL \data|Mux8~10_combout\ : std_logic;
SIGNAL \data|Mux8~13_combout\ : std_logic;
SIGNAL \data|Mux8~12_combout\ : std_logic;
SIGNAL \data|Mux8~14_combout\ : std_logic;
SIGNAL \data|Mux8~15_combout\ : std_logic;
SIGNAL \data|Mux8~11_combout\ : std_logic;
SIGNAL \data|Mux8~16_combout\ : std_logic;
SIGNAL \data|Mux8~17_combout\ : std_logic;
SIGNAL \data|Mux8~18_combout\ : std_logic;
SIGNAL \data|Mux8~19_combout\ : std_logic;
SIGNAL \data|Mux8~20_combout\ : std_logic;
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
SIGNAL \uut|reg.VA_prev[17]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector23~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[16]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector24~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector25~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector26~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector27~1_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector30~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector31~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector34~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|Selector39~0_combout\ : std_logic;
SIGNAL \uut|Selector40~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[0]~19\ : std_logic;
SIGNAL \uut|reg.VA[1]~21\ : std_logic;
SIGNAL \uut|reg.VA[2]~23\ : std_logic;
SIGNAL \uut|reg.VA[3]~25\ : std_logic;
SIGNAL \uut|reg.VA[4]~27\ : std_logic;
SIGNAL \uut|reg.VA[5]~29\ : std_logic;
SIGNAL \uut|reg.VA[6]~31\ : std_logic;
SIGNAL \uut|reg.VA[7]~33\ : std_logic;
SIGNAL \uut|reg.VA[8]~35\ : std_logic;
SIGNAL \uut|reg.VA[9]~37\ : std_logic;
SIGNAL \uut|reg.VA[10]~39\ : std_logic;
SIGNAL \uut|reg.VA[11]~41\ : std_logic;
SIGNAL \uut|reg.VA[12]~43\ : std_logic;
SIGNAL \uut|reg.VA[13]~45\ : std_logic;
SIGNAL \uut|reg.VA[14]~47\ : std_logic;
SIGNAL \uut|reg.VA[15]~49\ : std_logic;
SIGNAL \uut|reg.VA[16]~51\ : std_logic;
SIGNAL \uut|reg.VA[17]~52_combout\ : std_logic;
SIGNAL \uut|Selector5~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
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
SIGNAL \uut|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \uut|Add0~32_combout\ : std_logic;
SIGNAL \uut|reg.VA[16]~50_combout\ : std_logic;
SIGNAL \uut|Selector6~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|Add0~30_combout\ : std_logic;
SIGNAL \uut|reg.VA[15]~48_combout\ : std_logic;
SIGNAL \uut|Selector7~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|Add0~28_combout\ : std_logic;
SIGNAL \uut|reg.VA[14]~46_combout\ : std_logic;
SIGNAL \uut|Selector8~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|Add0~26_combout\ : std_logic;
SIGNAL \uut|reg.VA[13]~44_combout\ : std_logic;
SIGNAL \uut|Selector9~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|Add0~24_combout\ : std_logic;
SIGNAL \uut|reg.VA[12]~42_combout\ : std_logic;
SIGNAL \uut|Selector10~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|Add0~22_combout\ : std_logic;
SIGNAL \uut|reg.VA[11]~40_combout\ : std_logic;
SIGNAL \uut|Selector11~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|Add0~20_combout\ : std_logic;
SIGNAL \uut|reg.VA[10]~38_combout\ : std_logic;
SIGNAL \uut|Selector12~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|Add0~18_combout\ : std_logic;
SIGNAL \uut|reg.VA[9]~36_combout\ : std_logic;
SIGNAL \uut|Selector13~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|Add0~16_combout\ : std_logic;
SIGNAL \uut|reg.VA[8]~34_combout\ : std_logic;
SIGNAL \uut|Selector14~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|Add0~14_combout\ : std_logic;
SIGNAL \uut|reg.VA[7]~32_combout\ : std_logic;
SIGNAL \uut|Selector15~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|Add0~12_combout\ : std_logic;
SIGNAL \uut|reg.VA[6]~30_combout\ : std_logic;
SIGNAL \uut|Selector16~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|Add0~10_combout\ : std_logic;
SIGNAL \uut|reg.VA[5]~28_combout\ : std_logic;
SIGNAL \uut|Selector17~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \uut|Add0~8_combout\ : std_logic;
SIGNAL \uut|reg.VA[4]~26_combout\ : std_logic;
SIGNAL \uut|Selector18~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \uut|Add0~6_combout\ : std_logic;
SIGNAL \uut|reg.VA[3]~24_combout\ : std_logic;
SIGNAL \uut|Selector19~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \uut|Add0~4_combout\ : std_logic;
SIGNAL \uut|reg.VA[2]~22_combout\ : std_logic;
SIGNAL \uut|Selector20~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \uut|Add0~2_combout\ : std_logic;
SIGNAL \uut|reg.VA[1]~20_combout\ : std_logic;
SIGNAL \uut|Selector21~0_combout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \uut|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \uut|Add0~0_combout\ : std_logic;
SIGNAL \uut|reg.VA[0]~18_combout\ : std_logic;
SIGNAL \uut|Selector22~0_combout\ : std_logic;
SIGNAL \uut|reg.VA_prev[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \uut|reg.result[0][0]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][0]~q\ : std_logic;
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
SIGNAL \uut|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \uut|r_Real[0]~18_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \uut|reg.result[0][1]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][1]~q\ : std_logic;
SIGNAL \uut|r_Real[0]~19\ : std_logic;
SIGNAL \uut|r_Real[1]~20_combout\ : std_logic;
SIGNAL \uut|reg.result[0][2]~q\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \uut|r_Real[1]~21\ : std_logic;
SIGNAL \uut|r_Real[2]~22_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \uut|reg.result[0][3]~q\ : std_logic;
SIGNAL \uut|r_Real[2]~23\ : std_logic;
SIGNAL \uut|r_Real[3]~24_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \uut|reg.result[0][4]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][4]~q\ : std_logic;
SIGNAL \uut|r_Real[3]~25\ : std_logic;
SIGNAL \uut|r_Real[4]~26_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|reg.result[0][5]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][5]~q\ : std_logic;
SIGNAL \uut|r_Real[4]~27\ : std_logic;
SIGNAL \uut|r_Real[5]~28_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|reg.result[0][6]~q\ : std_logic;
SIGNAL \uut|r_Real[5]~29\ : std_logic;
SIGNAL \uut|r_Real[6]~30_combout\ : std_logic;
SIGNAL \uut|reg.result[0][7]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][7]~q\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|r_Real[6]~31\ : std_logic;
SIGNAL \uut|r_Real[7]~32_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|reg.result[0][8]~q\ : std_logic;
SIGNAL \uut|r_Real[7]~33\ : std_logic;
SIGNAL \uut|r_Real[8]~34_combout\ : std_logic;
SIGNAL \uut|reg.result[0][9]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][9]~q\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|r_Real[8]~35\ : std_logic;
SIGNAL \uut|r_Real[9]~36_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|reg.result[0][10]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][10]~q\ : std_logic;
SIGNAL \uut|r_Real[9]~37\ : std_logic;
SIGNAL \uut|r_Real[10]~38_combout\ : std_logic;
SIGNAL \uut|reg.result[0][11]~q\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|r_Real[10]~39\ : std_logic;
SIGNAL \uut|r_Real[11]~40_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|reg.result[0][12]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][12]~q\ : std_logic;
SIGNAL \uut|r_Real[11]~41\ : std_logic;
SIGNAL \uut|r_Real[12]~42_combout\ : std_logic;
SIGNAL \uut|reg.result[0][13]~q\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|r_Real[12]~43\ : std_logic;
SIGNAL \uut|r_Real[13]~44_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|reg.result[0][14]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][14]~q\ : std_logic;
SIGNAL \uut|r_Real[13]~45\ : std_logic;
SIGNAL \uut|r_Real[14]~46_combout\ : std_logic;
SIGNAL \uut|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \uut|reg.result[0][15]~q\ : std_logic;
SIGNAL \uut|r_Real[14]~47\ : std_logic;
SIGNAL \uut|r_Real[15]~48_combout\ : std_logic;
SIGNAL \uut|reg.result[0][16]~q\ : std_logic;
SIGNAL \uut|r_Real[15]~49\ : std_logic;
SIGNAL \uut|r_Real[16]~50_combout\ : std_logic;
SIGNAL \uut|reg.result[0][17]~feeder_combout\ : std_logic;
SIGNAL \uut|reg.result[0][17]~q\ : std_logic;
SIGNAL \uut|r_Real[16]~51\ : std_logic;
SIGNAL \uut|r_Real[17]~52_combout\ : std_logic;
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
SIGNAL \uut|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \uut|r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \uut|r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \uut|r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \uut|r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \uut|r_Imag[4]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \uut|r_Imag[5]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \uut|r_Imag[6]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \uut|r_Imag[7]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \uut|r_Imag[8]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \uut|r_Imag[9]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \uut|r_Imag[10]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \uut|r_Imag[11]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \uut|r_Imag[12]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \uut|r_Imag[13]~feeder_combout\ : std_logic;
SIGNAL \uut|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \uut|r_Imag[14]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[15]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[16]~feeder_combout\ : std_logic;
SIGNAL \uut|r_Imag[17]~feeder_combout\ : std_logic;
SIGNAL \uut|Selector4~0_combout\ : std_logic;
SIGNAL \uut|reg.done~q\ : std_logic;
SIGNAL \uut|reg.sample_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \uut|reg.VA_prev2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|reg.VA\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uut|r_Real\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uut|r_Imag\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \data|o_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_i_addr[0]~input_o\ : std_logic;

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

\uut|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT25\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT20\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT5\ & 
\uut|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult1|auto_generated|mac_mult1~dataout\ & 
\uut|Mult1|auto_generated|mac_mult1~6\ & \uut|Mult1|auto_generated|mac_mult1~5\ & \uut|Mult1|auto_generated|mac_mult1~4\ & \uut|Mult1|auto_generated|mac_mult1~3\ & \uut|Mult1|auto_generated|mac_mult1~2\ & \uut|Mult1|auto_generated|mac_mult1~1\ & 
\uut|Mult1|auto_generated|mac_mult1~0\);

\uut|Mult1|auto_generated|mac_out2~0\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_out2~1\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|mac_out2~2\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|mac_out2~3\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|mac_out2~4\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|mac_out2~5\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|mac_out2~6\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|mac_out2~dataout\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT26\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT25\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT24\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT21\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT19\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT10\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT9\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT6\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT4\ & 
\uut|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \uut|Mult2|auto_generated|mac_mult1~dataout\ & \uut|Mult2|auto_generated|mac_mult1~7\ & 
\uut|Mult2|auto_generated|mac_mult1~6\ & \uut|Mult2|auto_generated|mac_mult1~5\ & \uut|Mult2|auto_generated|mac_mult1~4\ & \uut|Mult2|auto_generated|mac_mult1~3\ & \uut|Mult2|auto_generated|mac_mult1~2\ & \uut|Mult2|auto_generated|mac_mult1~1\ & 
\uut|Mult2|auto_generated|mac_mult1~0\);

\uut|Mult2|auto_generated|mac_out2~0\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_out2~1\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_out2~2\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|mac_out2~3\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|mac_out2~4\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|mac_out2~5\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|mac_out2~6\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|mac_out2~7\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|mac_out2~dataout\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|reg.VA_prev2\(17) & \uut|reg.VA_prev2\(16) & \uut|reg.VA_prev2\(15) & \uut|reg.VA_prev2\(14) & \uut|reg.VA_prev2\(13) & \uut|reg.VA_prev2\(12) & \uut|reg.VA_prev2\(11) & 
\uut|reg.VA_prev2\(10) & \uut|reg.VA_prev2\(9) & \uut|reg.VA_prev2\(8) & \uut|reg.VA_prev2\(7) & \uut|reg.VA_prev2\(6) & \uut|reg.VA_prev2\(5) & \uut|reg.VA_prev2\(4) & \uut|reg.VA_prev2\(3) & \uut|reg.VA_prev2\(2) & 
\uut|reg.VA_prev2\(1) & \uut|reg.VA_prev2\(0));

\uut|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult1|auto_generated|mac_mult1~0\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult1|auto_generated|mac_mult1~1\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult1|auto_generated|mac_mult1~2\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult1|auto_generated|mac_mult1~3\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult1|auto_generated|mac_mult1~4\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult1|auto_generated|mac_mult1~5\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult1|auto_generated|mac_mult1~6\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult1|auto_generated|mac_mult1~dataout\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|reg.VA_prev2\(17) & \uut|reg.VA_prev2\(16) & \uut|reg.VA_prev2\(15) & \uut|reg.VA_prev2\(14) & \uut|reg.VA_prev2\(13) & \uut|reg.VA_prev2\(12) & \uut|reg.VA_prev2\(11) & 
\uut|reg.VA_prev2\(10) & \uut|reg.VA_prev2\(9) & \uut|reg.VA_prev2\(8) & \uut|reg.VA_prev2\(7) & \uut|reg.VA_prev2\(6) & \uut|reg.VA_prev2\(5) & \uut|reg.VA_prev2\(4) & \uut|reg.VA_prev2\(3) & \uut|reg.VA_prev2\(2) & 
\uut|reg.VA_prev2\(1) & \uut|reg.VA_prev2\(0));

\uut|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult2|auto_generated|mac_mult1~0\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult2|auto_generated|mac_mult1~1\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult2|auto_generated|mac_mult1~2\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult2|auto_generated|mac_mult1~3\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult2|auto_generated|mac_mult1~4\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult2|auto_generated|mac_mult1~5\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult2|auto_generated|mac_mult1~6\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult2|auto_generated|mac_mult1~7\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult2|auto_generated|mac_mult1~dataout\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\uut|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT26\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\uut|Mult0|auto_generated|mac_mult1~dataout\ & \uut|Mult0|auto_generated|mac_mult1~5\ & \uut|Mult0|auto_generated|mac_mult1~4\ & \uut|Mult0|auto_generated|mac_mult1~3\ & \uut|Mult0|auto_generated|mac_mult1~2\ & \uut|Mult0|auto_generated|mac_mult1~1\ & 
\uut|Mult0|auto_generated|mac_mult1~0\);

\uut|Mult0|auto_generated|mac_out2~0\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_out2~1\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|mac_out2~2\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|mac_out2~3\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|mac_out2~4\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|mac_out2~5\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|mac_out2~dataout\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \uut|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\uut|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\uut|Selector5~0_combout\ & \uut|Selector6~0_combout\ & \uut|Selector7~0_combout\ & \uut|Selector8~0_combout\ & \uut|Selector9~0_combout\ & \uut|Selector10~0_combout\ & \uut|Selector11~0_combout\ & 
\uut|Selector12~0_combout\ & \uut|Selector13~0_combout\ & \uut|Selector14~0_combout\ & \uut|Selector15~0_combout\ & \uut|Selector16~0_combout\ & \uut|Selector17~0_combout\ & \uut|Selector18~0_combout\ & \uut|Selector19~0_combout\ & 
\uut|Selector20~0_combout\ & \uut|Selector21~0_combout\ & \uut|Selector22~0_combout\);

\uut|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\uut|Mult0|auto_generated|mac_mult1~0\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\uut|Mult0|auto_generated|mac_mult1~1\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\uut|Mult0|auto_generated|mac_mult1~2\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\uut|Mult0|auto_generated|mac_mult1~3\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\uut|Mult0|auto_generated|mac_mult1~4\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\uut|Mult0|auto_generated|mac_mult1~5\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\uut|Mult0|auto_generated|mac_mult1~dataout\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\uut|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\i_CLK_sin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK_sin~input_o\);
\ALT_INV_i_addr[0]~input_o\ <= NOT \i_addr[0]~input_o\;

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X14_Y29_N9
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

-- Location: IOOBUF_X21_Y29_N30
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

-- Location: IOOBUF_X14_Y29_N2
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X11_Y29_N16
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

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X28_Y29_N2
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X19_Y29_N30
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

-- Location: IOOBUF_X14_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X23_Y29_N23
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

-- Location: IOOBUF_X16_Y29_N23
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

-- Location: IOOBUF_X14_Y29_N30
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X16_Y29_N9
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

-- Location: IOOBUF_X16_Y29_N2
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

-- Location: IOOBUF_X41_Y17_N9
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X11_Y29_N2
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

-- Location: IOOBUF_X14_Y29_N23
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X16_Y29_N16
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

-- Location: LCCOMB_X16_Y16_N2
\uut|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~0_combout\ = \uut|reg.sample_count\(0) $ (GND)
-- \uut|Add2~1\ = CARRY(!\uut|reg.sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(0),
	datad => VCC,
	combout => \uut|Add2~0_combout\,
	cout => \uut|Add2~1\);

-- Location: LCCOMB_X17_Y16_N4
\uut|reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~7_combout\ = (\uut|Equal0~9_combout\) # (!\uut|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~0_combout\,
	datac => \uut|Equal0~9_combout\,
	combout => \uut|reg~7_combout\);

-- Location: FF_X17_Y16_N5
\uut|reg.sample_count[0]\ : dffeas
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
	q => \uut|reg.sample_count\(0));

-- Location: LCCOMB_X16_Y16_N4
\uut|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~2_combout\ = (\uut|reg.sample_count\(1) & (!\uut|Add2~1\)) # (!\uut|reg.sample_count\(1) & ((\uut|Add2~1\) # (GND)))
-- \uut|Add2~3\ = CARRY((!\uut|Add2~1\) # (!\uut|reg.sample_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(1),
	datad => VCC,
	cin => \uut|Add2~1\,
	combout => \uut|Add2~2_combout\,
	cout => \uut|Add2~3\);

-- Location: FF_X16_Y16_N5
\uut|reg.sample_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~2_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(1));

-- Location: LCCOMB_X16_Y16_N6
\uut|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~4_combout\ = (\uut|reg.sample_count\(2) & (\uut|Add2~3\ $ (GND))) # (!\uut|reg.sample_count\(2) & (!\uut|Add2~3\ & VCC))
-- \uut|Add2~5\ = CARRY((\uut|reg.sample_count\(2) & !\uut|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(2),
	datad => VCC,
	cin => \uut|Add2~3\,
	combout => \uut|Add2~4_combout\,
	cout => \uut|Add2~5\);

-- Location: FF_X16_Y16_N7
\uut|reg.sample_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~4_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(2));

-- Location: LCCOMB_X16_Y16_N8
\uut|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~6_combout\ = (\uut|reg.sample_count\(3) & (!\uut|Add2~5\)) # (!\uut|reg.sample_count\(3) & ((\uut|Add2~5\) # (GND)))
-- \uut|Add2~7\ = CARRY((!\uut|Add2~5\) # (!\uut|reg.sample_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(3),
	datad => VCC,
	cin => \uut|Add2~5\,
	combout => \uut|Add2~6_combout\,
	cout => \uut|Add2~7\);

-- Location: LCCOMB_X17_Y16_N16
\uut|reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~6_combout\ = (!\uut|Equal0~9_combout\ & \uut|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Equal0~9_combout\,
	datad => \uut|Add2~6_combout\,
	combout => \uut|reg~6_combout\);

-- Location: FF_X17_Y16_N17
\uut|reg.sample_count[3]\ : dffeas
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
	q => \uut|reg.sample_count\(3));

-- Location: LCCOMB_X16_Y16_N10
\uut|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~8_combout\ = (\uut|reg.sample_count\(4) & (\uut|Add2~7\ $ (GND))) # (!\uut|reg.sample_count\(4) & (!\uut|Add2~7\ & VCC))
-- \uut|Add2~9\ = CARRY((\uut|reg.sample_count\(4) & !\uut|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(4),
	datad => VCC,
	cin => \uut|Add2~7\,
	combout => \uut|Add2~8_combout\,
	cout => \uut|Add2~9\);

-- Location: FF_X16_Y16_N11
\uut|reg.sample_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~8_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(4));

-- Location: LCCOMB_X16_Y16_N12
\uut|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~10_combout\ = (\uut|reg.sample_count\(5) & (!\uut|Add2~9\)) # (!\uut|reg.sample_count\(5) & ((\uut|Add2~9\) # (GND)))
-- \uut|Add2~11\ = CARRY((!\uut|Add2~9\) # (!\uut|reg.sample_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(5),
	datad => VCC,
	cin => \uut|Add2~9\,
	combout => \uut|Add2~10_combout\,
	cout => \uut|Add2~11\);

-- Location: FF_X16_Y16_N13
\uut|reg.sample_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~10_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(5));

-- Location: LCCOMB_X16_Y16_N14
\uut|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~12_combout\ = (\uut|reg.sample_count\(6) & (\uut|Add2~11\ $ (GND))) # (!\uut|reg.sample_count\(6) & (!\uut|Add2~11\ & VCC))
-- \uut|Add2~13\ = CARRY((\uut|reg.sample_count\(6) & !\uut|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(6),
	datad => VCC,
	cin => \uut|Add2~11\,
	combout => \uut|Add2~12_combout\,
	cout => \uut|Add2~13\);

-- Location: LCCOMB_X17_Y16_N6
\uut|reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~5_combout\ = (!\uut|Equal0~9_combout\ & \uut|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Equal0~9_combout\,
	datad => \uut|Add2~12_combout\,
	combout => \uut|reg~5_combout\);

-- Location: FF_X17_Y16_N7
\uut|reg.sample_count[6]\ : dffeas
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
	q => \uut|reg.sample_count\(6));

-- Location: LCCOMB_X16_Y16_N16
\uut|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~14_combout\ = (\uut|reg.sample_count\(7) & (!\uut|Add2~13\)) # (!\uut|reg.sample_count\(7) & ((\uut|Add2~13\) # (GND)))
-- \uut|Add2~15\ = CARRY((!\uut|Add2~13\) # (!\uut|reg.sample_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(7),
	datad => VCC,
	cin => \uut|Add2~13\,
	combout => \uut|Add2~14_combout\,
	cout => \uut|Add2~15\);

-- Location: LCCOMB_X17_Y16_N20
\uut|reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~8_combout\ = (!\uut|Equal0~9_combout\ & \uut|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Add2~14_combout\,
	combout => \uut|reg~8_combout\);

-- Location: FF_X17_Y16_N21
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

-- Location: LCCOMB_X16_Y16_N18
\uut|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~16_combout\ = (\uut|reg.sample_count\(8) & (\uut|Add2~15\ $ (GND))) # (!\uut|reg.sample_count\(8) & (!\uut|Add2~15\ & VCC))
-- \uut|Add2~17\ = CARRY((\uut|reg.sample_count\(8) & !\uut|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(8),
	datad => VCC,
	cin => \uut|Add2~15\,
	combout => \uut|Add2~16_combout\,
	cout => \uut|Add2~17\);

-- Location: FF_X16_Y16_N19
\uut|reg.sample_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~16_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(8));

-- Location: LCCOMB_X16_Y16_N20
\uut|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~18_combout\ = (\uut|reg.sample_count\(9) & (!\uut|Add2~17\)) # (!\uut|reg.sample_count\(9) & ((\uut|Add2~17\) # (GND)))
-- \uut|Add2~19\ = CARRY((!\uut|Add2~17\) # (!\uut|reg.sample_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(9),
	datad => VCC,
	cin => \uut|Add2~17\,
	combout => \uut|Add2~18_combout\,
	cout => \uut|Add2~19\);

-- Location: FF_X16_Y16_N21
\uut|reg.sample_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~18_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(9));

-- Location: LCCOMB_X16_Y16_N22
\uut|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~20_combout\ = (\uut|reg.sample_count\(10) & (\uut|Add2~19\ $ (GND))) # (!\uut|reg.sample_count\(10) & (!\uut|Add2~19\ & VCC))
-- \uut|Add2~21\ = CARRY((\uut|reg.sample_count\(10) & !\uut|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(10),
	datad => VCC,
	cin => \uut|Add2~19\,
	combout => \uut|Add2~20_combout\,
	cout => \uut|Add2~21\);

-- Location: FF_X16_Y16_N23
\uut|reg.sample_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~20_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(10));

-- Location: LCCOMB_X16_Y16_N24
\uut|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~22_combout\ = (\uut|reg.sample_count\(11) & (!\uut|Add2~21\)) # (!\uut|reg.sample_count\(11) & ((\uut|Add2~21\) # (GND)))
-- \uut|Add2~23\ = CARRY((!\uut|Add2~21\) # (!\uut|reg.sample_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(11),
	datad => VCC,
	cin => \uut|Add2~21\,
	combout => \uut|Add2~22_combout\,
	cout => \uut|Add2~23\);

-- Location: FF_X16_Y16_N25
\uut|reg.sample_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~22_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(11));

-- Location: LCCOMB_X16_Y16_N26
\uut|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~24_combout\ = (\uut|reg.sample_count\(12) & (\uut|Add2~23\ $ (GND))) # (!\uut|reg.sample_count\(12) & (!\uut|Add2~23\ & VCC))
-- \uut|Add2~25\ = CARRY((\uut|reg.sample_count\(12) & !\uut|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(12),
	datad => VCC,
	cin => \uut|Add2~23\,
	combout => \uut|Add2~24_combout\,
	cout => \uut|Add2~25\);

-- Location: FF_X16_Y16_N27
\uut|reg.sample_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~24_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(12));

-- Location: LCCOMB_X16_Y16_N28
\uut|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~26_combout\ = (\uut|reg.sample_count\(13) & (!\uut|Add2~25\)) # (!\uut|reg.sample_count\(13) & ((\uut|Add2~25\) # (GND)))
-- \uut|Add2~27\ = CARRY((!\uut|Add2~25\) # (!\uut|reg.sample_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(13),
	datad => VCC,
	cin => \uut|Add2~25\,
	combout => \uut|Add2~26_combout\,
	cout => \uut|Add2~27\);

-- Location: FF_X16_Y16_N29
\uut|reg.sample_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~26_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(13));

-- Location: LCCOMB_X16_Y16_N30
\uut|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~28_combout\ = (\uut|reg.sample_count\(14) & (\uut|Add2~27\ $ (GND))) # (!\uut|reg.sample_count\(14) & (!\uut|Add2~27\ & VCC))
-- \uut|Add2~29\ = CARRY((\uut|reg.sample_count\(14) & !\uut|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(14),
	datad => VCC,
	cin => \uut|Add2~27\,
	combout => \uut|Add2~28_combout\,
	cout => \uut|Add2~29\);

-- Location: FF_X16_Y16_N31
\uut|reg.sample_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~28_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(14));

-- Location: LCCOMB_X16_Y16_N0
\uut|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~7_combout\ = (!\uut|reg.sample_count\(14) & (!\uut|reg.sample_count\(11) & (!\uut|reg.sample_count\(12) & !\uut|reg.sample_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(14),
	datab => \uut|reg.sample_count\(11),
	datac => \uut|reg.sample_count\(12),
	datad => \uut|reg.sample_count\(13),
	combout => \uut|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y15_N0
\uut|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~30_combout\ = (\uut|reg.sample_count\(15) & (!\uut|Add2~29\)) # (!\uut|reg.sample_count\(15) & ((\uut|Add2~29\) # (GND)))
-- \uut|Add2~31\ = CARRY((!\uut|Add2~29\) # (!\uut|reg.sample_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(15),
	datad => VCC,
	cin => \uut|Add2~29\,
	combout => \uut|Add2~30_combout\,
	cout => \uut|Add2~31\);

-- Location: FF_X16_Y15_N1
\uut|reg.sample_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~30_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(15));

-- Location: LCCOMB_X16_Y15_N2
\uut|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~32_combout\ = (\uut|reg.sample_count\(16) & (\uut|Add2~31\ $ (GND))) # (!\uut|reg.sample_count\(16) & (!\uut|Add2~31\ & VCC))
-- \uut|Add2~33\ = CARRY((\uut|reg.sample_count\(16) & !\uut|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(16),
	datad => VCC,
	cin => \uut|Add2~31\,
	combout => \uut|Add2~32_combout\,
	cout => \uut|Add2~33\);

-- Location: FF_X16_Y15_N3
\uut|reg.sample_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~32_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(16));

-- Location: LCCOMB_X16_Y15_N4
\uut|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~34_combout\ = (\uut|reg.sample_count\(17) & (!\uut|Add2~33\)) # (!\uut|reg.sample_count\(17) & ((\uut|Add2~33\) # (GND)))
-- \uut|Add2~35\ = CARRY((!\uut|Add2~33\) # (!\uut|reg.sample_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(17),
	datad => VCC,
	cin => \uut|Add2~33\,
	combout => \uut|Add2~34_combout\,
	cout => \uut|Add2~35\);

-- Location: FF_X16_Y15_N5
\uut|reg.sample_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~34_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(17));

-- Location: LCCOMB_X16_Y15_N6
\uut|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~36_combout\ = (\uut|reg.sample_count\(18) & (\uut|Add2~35\ $ (GND))) # (!\uut|reg.sample_count\(18) & (!\uut|Add2~35\ & VCC))
-- \uut|Add2~37\ = CARRY((\uut|reg.sample_count\(18) & !\uut|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(18),
	datad => VCC,
	cin => \uut|Add2~35\,
	combout => \uut|Add2~36_combout\,
	cout => \uut|Add2~37\);

-- Location: FF_X16_Y15_N7
\uut|reg.sample_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~36_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(18));

-- Location: LCCOMB_X16_Y15_N8
\uut|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~38_combout\ = (\uut|reg.sample_count\(19) & (!\uut|Add2~37\)) # (!\uut|reg.sample_count\(19) & ((\uut|Add2~37\) # (GND)))
-- \uut|Add2~39\ = CARRY((!\uut|Add2~37\) # (!\uut|reg.sample_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(19),
	datad => VCC,
	cin => \uut|Add2~37\,
	combout => \uut|Add2~38_combout\,
	cout => \uut|Add2~39\);

-- Location: FF_X16_Y15_N9
\uut|reg.sample_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~38_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(19));

-- Location: LCCOMB_X16_Y15_N10
\uut|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~40_combout\ = (\uut|reg.sample_count\(20) & (\uut|Add2~39\ $ (GND))) # (!\uut|reg.sample_count\(20) & (!\uut|Add2~39\ & VCC))
-- \uut|Add2~41\ = CARRY((\uut|reg.sample_count\(20) & !\uut|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(20),
	datad => VCC,
	cin => \uut|Add2~39\,
	combout => \uut|Add2~40_combout\,
	cout => \uut|Add2~41\);

-- Location: FF_X16_Y15_N11
\uut|reg.sample_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~40_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(20));

-- Location: LCCOMB_X16_Y15_N12
\uut|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~42_combout\ = (\uut|reg.sample_count\(21) & (!\uut|Add2~41\)) # (!\uut|reg.sample_count\(21) & ((\uut|Add2~41\) # (GND)))
-- \uut|Add2~43\ = CARRY((!\uut|Add2~41\) # (!\uut|reg.sample_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(21),
	datad => VCC,
	cin => \uut|Add2~41\,
	combout => \uut|Add2~42_combout\,
	cout => \uut|Add2~43\);

-- Location: FF_X16_Y15_N13
\uut|reg.sample_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~42_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(21));

-- Location: LCCOMB_X16_Y15_N14
\uut|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~44_combout\ = (\uut|reg.sample_count\(22) & (\uut|Add2~43\ $ (GND))) # (!\uut|reg.sample_count\(22) & (!\uut|Add2~43\ & VCC))
-- \uut|Add2~45\ = CARRY((\uut|reg.sample_count\(22) & !\uut|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(22),
	datad => VCC,
	cin => \uut|Add2~43\,
	combout => \uut|Add2~44_combout\,
	cout => \uut|Add2~45\);

-- Location: FF_X16_Y15_N15
\uut|reg.sample_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~44_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(22));

-- Location: LCCOMB_X17_Y15_N12
\uut|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~2_combout\ = (!\uut|reg.sample_count\(22) & (!\uut|reg.sample_count\(19) & (!\uut|reg.sample_count\(21) & !\uut|reg.sample_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(22),
	datab => \uut|reg.sample_count\(19),
	datac => \uut|reg.sample_count\(21),
	datad => \uut|reg.sample_count\(20),
	combout => \uut|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y15_N2
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

-- Location: LCCOMB_X16_Y15_N16
\uut|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~46_combout\ = (\uut|reg.sample_count\(23) & (!\uut|Add2~45\)) # (!\uut|reg.sample_count\(23) & ((\uut|Add2~45\) # (GND)))
-- \uut|Add2~47\ = CARRY((!\uut|Add2~45\) # (!\uut|reg.sample_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(23),
	datad => VCC,
	cin => \uut|Add2~45\,
	combout => \uut|Add2~46_combout\,
	cout => \uut|Add2~47\);

-- Location: FF_X16_Y15_N17
\uut|reg.sample_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~46_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(23));

-- Location: LCCOMB_X16_Y15_N18
\uut|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~48_combout\ = (\uut|reg.sample_count\(24) & (\uut|Add2~47\ $ (GND))) # (!\uut|reg.sample_count\(24) & (!\uut|Add2~47\ & VCC))
-- \uut|Add2~49\ = CARRY((\uut|reg.sample_count\(24) & !\uut|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(24),
	datad => VCC,
	cin => \uut|Add2~47\,
	combout => \uut|Add2~48_combout\,
	cout => \uut|Add2~49\);

-- Location: FF_X16_Y15_N19
\uut|reg.sample_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~48_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(24));

-- Location: LCCOMB_X16_Y15_N20
\uut|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~50_combout\ = (\uut|reg.sample_count\(25) & (!\uut|Add2~49\)) # (!\uut|reg.sample_count\(25) & ((\uut|Add2~49\) # (GND)))
-- \uut|Add2~51\ = CARRY((!\uut|Add2~49\) # (!\uut|reg.sample_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(25),
	datad => VCC,
	cin => \uut|Add2~49\,
	combout => \uut|Add2~50_combout\,
	cout => \uut|Add2~51\);

-- Location: FF_X16_Y15_N21
\uut|reg.sample_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~50_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(25));

-- Location: LCCOMB_X16_Y15_N22
\uut|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~52_combout\ = (\uut|reg.sample_count\(26) & (\uut|Add2~51\ $ (GND))) # (!\uut|reg.sample_count\(26) & (!\uut|Add2~51\ & VCC))
-- \uut|Add2~53\ = CARRY((\uut|reg.sample_count\(26) & !\uut|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(26),
	datad => VCC,
	cin => \uut|Add2~51\,
	combout => \uut|Add2~52_combout\,
	cout => \uut|Add2~53\);

-- Location: FF_X16_Y15_N23
\uut|reg.sample_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~52_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(26));

-- Location: LCCOMB_X17_Y15_N22
\uut|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~1_combout\ = (!\uut|reg.sample_count\(26) & (!\uut|reg.sample_count\(25) & (!\uut|reg.sample_count\(23) & !\uut|reg.sample_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(26),
	datab => \uut|reg.sample_count\(25),
	datac => \uut|reg.sample_count\(23),
	datad => \uut|reg.sample_count\(24),
	combout => \uut|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y15_N24
\uut|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~54_combout\ = (\uut|reg.sample_count\(27) & (!\uut|Add2~53\)) # (!\uut|reg.sample_count\(27) & ((\uut|Add2~53\) # (GND)))
-- \uut|Add2~55\ = CARRY((!\uut|Add2~53\) # (!\uut|reg.sample_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(27),
	datad => VCC,
	cin => \uut|Add2~53\,
	combout => \uut|Add2~54_combout\,
	cout => \uut|Add2~55\);

-- Location: FF_X16_Y15_N25
\uut|reg.sample_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~54_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(27));

-- Location: LCCOMB_X16_Y15_N26
\uut|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~56_combout\ = (\uut|reg.sample_count\(28) & (\uut|Add2~55\ $ (GND))) # (!\uut|reg.sample_count\(28) & (!\uut|Add2~55\ & VCC))
-- \uut|Add2~57\ = CARRY((\uut|reg.sample_count\(28) & !\uut|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(28),
	datad => VCC,
	cin => \uut|Add2~55\,
	combout => \uut|Add2~56_combout\,
	cout => \uut|Add2~57\);

-- Location: FF_X16_Y15_N27
\uut|reg.sample_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~56_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(28));

-- Location: LCCOMB_X16_Y15_N28
\uut|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~58_combout\ = (\uut|reg.sample_count\(29) & (!\uut|Add2~57\)) # (!\uut|reg.sample_count\(29) & ((\uut|Add2~57\) # (GND)))
-- \uut|Add2~59\ = CARRY((!\uut|Add2~57\) # (!\uut|reg.sample_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.sample_count\(29),
	datad => VCC,
	cin => \uut|Add2~57\,
	combout => \uut|Add2~58_combout\,
	cout => \uut|Add2~59\);

-- Location: FF_X16_Y15_N29
\uut|reg.sample_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~58_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(29));

-- Location: LCCOMB_X16_Y15_N30
\uut|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add2~60_combout\ = \uut|reg.sample_count\(30) $ (!\uut|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(30),
	cin => \uut|Add2~59\,
	combout => \uut|Add2~60_combout\);

-- Location: FF_X16_Y15_N31
\uut|reg.sample_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Add2~60_combout\,
	ena => \uut|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.sample_count\(30));

-- Location: LCCOMB_X17_Y15_N16
\uut|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~0_combout\ = (!\uut|reg.sample_count\(29) & (!\uut|reg.sample_count\(30) & (!\uut|reg.sample_count\(28) & !\uut|reg.sample_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(29),
	datab => \uut|reg.sample_count\(30),
	datac => \uut|reg.sample_count\(28),
	datad => \uut|reg.sample_count\(27),
	combout => \uut|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y15_N0
\uut|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~4_combout\ = (\uut|Equal0~2_combout\ & (\uut|Equal0~3_combout\ & (\uut|Equal0~1_combout\ & \uut|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal0~2_combout\,
	datab => \uut|Equal0~3_combout\,
	datac => \uut|Equal0~1_combout\,
	datad => \uut|Equal0~0_combout\,
	combout => \uut|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y16_N2
\uut|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~5_combout\ = (\uut|reg.sample_count\(6) & (\uut|reg.sample_count\(3) & (!\uut|reg.sample_count\(5) & !\uut|reg.sample_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(6),
	datab => \uut|reg.sample_count\(3),
	datac => \uut|reg.sample_count\(5),
	datad => \uut|reg.sample_count\(4),
	combout => \uut|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y16_N14
\uut|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~6_combout\ = (!\uut|reg.sample_count\(1) & (!\uut|reg.sample_count\(2) & (\uut|reg.sample_count\(0) & \uut|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(1),
	datab => \uut|reg.sample_count\(2),
	datac => \uut|reg.sample_count\(0),
	datad => \uut|Equal0~5_combout\,
	combout => \uut|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y16_N18
\uut|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~8_combout\ = (!\uut|reg.sample_count\(10) & (!\uut|reg.sample_count\(9) & (\uut|reg.sample_count\(7) & !\uut|reg.sample_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.sample_count\(10),
	datab => \uut|reg.sample_count\(9),
	datac => \uut|reg.sample_count\(7),
	datad => \uut|reg.sample_count\(8),
	combout => \uut|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y16_N8
\uut|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Equal0~9_combout\ = (\uut|Equal0~7_combout\ & (\uut|Equal0~4_combout\ & (\uut|Equal0~6_combout\ & \uut|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal0~7_combout\,
	datab => \uut|Equal0~4_combout\,
	datac => \uut|Equal0~6_combout\,
	datad => \uut|Equal0~8_combout\,
	combout => \uut|Equal0~9_combout\);

-- Location: IOIBUF_X11_Y29_N8
\i_NEW_VALUE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEW_VALUE,
	o => \i_NEW_VALUE~input_o\);

-- Location: LCCOMB_X17_Y16_N12
\uut|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector2~0_combout\ = (\uut|Equal0~7_combout\ & \uut|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Equal0~7_combout\,
	datad => \uut|Equal0~8_combout\,
	combout => \uut|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y16_N26
\uut|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector2~1_combout\ = (\uut|Selector2~0_combout\ & (\uut|Equal0~4_combout\ & (\uut|Equal0~6_combout\ & \uut|reg.state.STORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector2~0_combout\,
	datab => \uut|Equal0~4_combout\,
	datac => \uut|Equal0~6_combout\,
	datad => \uut|reg.state.STORE~q\,
	combout => \uut|Selector2~1_combout\);

-- Location: FF_X17_Y16_N27
\uut|reg.state.OUTPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.OUTPUT~q\);

-- Location: FF_X17_Y16_N29
\uut|reg.state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.state.OUTPUT~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.DONE~q\);

-- Location: LCCOMB_X17_Y16_N30
\uut|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector0~0_combout\ = (\uut|reg.state.DONE~q\) # ((!\uut|reg.state.IDLE~q\ & !\i_NEW_VALUE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datac => \i_NEW_VALUE~input_o\,
	datad => \uut|reg.state.DONE~q\,
	combout => \uut|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y16_N22
\uut|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector0~1_combout\ = (!\uut|Selector0~0_combout\ & ((\uut|Equal0~9_combout\) # (!\uut|reg.state.STORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal0~9_combout\,
	datac => \uut|Selector0~0_combout\,
	datad => \uut|reg.state.STORE~q\,
	combout => \uut|Selector0~1_combout\);

-- Location: FF_X17_Y16_N23
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

-- Location: LCCOMB_X17_Y16_N10
\uut|reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg~9_combout\ = (!\uut|reg.state.IDLE~q\ & \i_NEW_VALUE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datac => \i_NEW_VALUE~input_o\,
	combout => \uut|reg~9_combout\);

-- Location: FF_X17_Y16_N11
\uut|reg.state.CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.state.CALCULATE~q\);

-- Location: LCCOMB_X17_Y16_N24
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

-- Location: FF_X17_Y16_N25
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

-- Location: IOIBUF_X21_Y29_N22
\i_addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(2),
	o => \i_addr[2]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\i_addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(1),
	o => \i_addr[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\i_addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(6),
	o => \i_addr[6]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\i_addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(7),
	o => \i_addr[7]~input_o\);

-- Location: LCCOMB_X17_Y21_N22
\data|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~2_combout\ = (\i_addr[6]~input_o\ & ((\i_addr[7]~input_o\) # ((\i_addr[2]~input_o\ & \i_addr[1]~input_o\)))) # (!\i_addr[6]~input_o\ & (!\i_addr[2]~input_o\ & (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~2_combout\);

-- Location: IOIBUF_X21_Y29_N15
\i_addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(5),
	o => \i_addr[5]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\i_addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(4),
	o => \i_addr[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\i_addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(3),
	o => \i_addr[3]~input_o\);

-- Location: LCCOMB_X17_Y21_N14
\data|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~4_combout\ = (\i_addr[5]~input_o\ & (!\i_addr[4]~input_o\ & (!\i_addr[3]~input_o\))) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & ((\i_addr[4]~input_o\) # (\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~4_combout\);

-- Location: LCCOMB_X17_Y21_N24
\data|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~3_combout\ = (\i_addr[1]~input_o\ & ((\i_addr[2]~input_o\) # ((\i_addr[6]~input_o\)))) # (!\i_addr[1]~input_o\ & (((\i_addr[6]~input_o\ & \i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~3_combout\);

-- Location: LCCOMB_X17_Y21_N26
\data|Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~6_combout\ = (\data|Mux10~4_combout\ & (\data|Mux10~2_combout\ & (\data|Mux10~3_combout\ $ (!\i_addr[7]~input_o\)))) # (!\data|Mux10~4_combout\ & (((\data|Mux10~3_combout\ & \i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~2_combout\,
	datab => \data|Mux10~4_combout\,
	datac => \data|Mux10~3_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~6_combout\);

-- Location: LCCOMB_X17_Y21_N16
\data|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~1_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[4]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[5]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\ & ((\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y21_N4
\data|Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~5_combout\ = (\data|Mux10~4_combout\ & (\data|Mux10~2_combout\ & ((\data|Mux10~3_combout\) # (\i_addr[7]~input_o\)))) # (!\data|Mux10~4_combout\ & (\data|Mux10~3_combout\ & (\data|Mux10~2_combout\ $ (!\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~2_combout\,
	datab => \data|Mux10~4_combout\,
	datac => \data|Mux10~3_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux10~5_combout\);

-- Location: LCCOMB_X17_Y21_N2
\data|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~0_combout\ = (\i_addr[5]~input_o\) # ((\i_addr[3]~input_o\) # ((\i_addr[1]~input_o\ & !\i_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\data|Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~7_combout\ = (\data|Mux10~1_combout\ & (((!\data|Mux10~5_combout\)))) # (!\data|Mux10~1_combout\ & (((\data|Mux10~5_combout\ & !\data|Mux10~0_combout\)) # (!\data|Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~6_combout\,
	datab => \data|Mux10~1_combout\,
	datac => \data|Mux10~5_combout\,
	datad => \data|Mux10~0_combout\,
	combout => \data|Mux10~7_combout\);

-- Location: IOIBUF_X16_Y29_N29
\i_addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(0),
	o => \i_addr[0]~input_o\);

-- Location: FF_X17_Y21_N29
\data|o_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	d => \data|Mux10~7_combout\,
	sclr => \ALT_INV_i_addr[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(0));

-- Location: LCCOMB_X17_Y18_N0
\uut|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector22~1_combout\ = (\uut|reg.state.STORE~q\) # (\uut|reg.state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datac => \uut|reg.state.DONE~q\,
	combout => \uut|Selector22~1_combout\);

-- Location: LCCOMB_X17_Y25_N26
\data|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~3_combout\ = (\i_addr[5]~input_o\ & (\i_addr[7]~input_o\ & ((\i_addr[3]~input_o\) # (\i_addr[6]~input_o\)))) # (!\i_addr[5]~input_o\ & ((\i_addr[7]~input_o\) # ((\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux9~3_combout\);

-- Location: LCCOMB_X17_Y25_N24
\data|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~2_combout\ = (\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\) # ((!\i_addr[5]~input_o\ & \i_addr[3]~input_o\)))) # (!\i_addr[7]~input_o\ & (\i_addr[5]~input_o\ & (!\i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux9~2_combout\);

-- Location: LCCOMB_X17_Y25_N12
\data|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~4_combout\ = (\data|Mux9~2_combout\ & (\data|Mux9~3_combout\ $ (((!\i_addr[1]~input_o\ & !\i_addr[2]~input_o\))))) # (!\data|Mux9~2_combout\ & (\i_addr[1]~input_o\ & ((\data|Mux9~3_combout\) # (\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~3_combout\,
	datab => \data|Mux9~2_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux9~4_combout\);

-- Location: LCCOMB_X17_Y25_N22
\data|Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~5_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[1]~input_o\ & (\data|Mux9~3_combout\)) # (!\i_addr[1]~input_o\ & ((\data|Mux9~2_combout\))))) # (!\i_addr[2]~input_o\ & (\data|Mux9~3_combout\ & (\data|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~3_combout\,
	datab => \data|Mux9~2_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux9~5_combout\);

-- Location: LCCOMB_X17_Y25_N2
\data|Mux9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~7_combout\ = (\data|Mux9~4_combout\ & (\data|Mux9~5_combout\ $ (\i_addr[2]~input_o\))) # (!\data|Mux9~4_combout\ & (\data|Mux9~5_combout\ & \i_addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~4_combout\,
	datac => \data|Mux9~5_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux9~7_combout\);

-- Location: LCCOMB_X17_Y25_N28
\data|Mux9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~8_combout\ = (\i_addr[4]~input_o\ & ((\i_addr[6]~input_o\) # (!\data|Mux9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[6]~input_o\,
	datab => \data|Mux9~7_combout\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux9~8_combout\);

-- Location: LCCOMB_X17_Y25_N8
\data|Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~6_combout\ = (\i_addr[2]~input_o\ & (!\data|Mux9~4_combout\)) # (!\i_addr[2]~input_o\ & ((\data|Mux9~5_combout\ & ((!\i_addr[4]~input_o\))) # (!\data|Mux9~5_combout\ & (\data|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux9~4_combout\,
	datab => \i_addr[4]~input_o\,
	datac => \data|Mux9~5_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux9~6_combout\);

-- Location: LCCOMB_X17_Y25_N0
\data|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~0_combout\ = (\i_addr[1]~input_o\ & (\i_addr[2]~input_o\ $ (((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))) # (!\i_addr[1]~input_o\ & (\i_addr[2]~input_o\ & ((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y25_N18
\data|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~1_combout\ = (\i_addr[7]~input_o\ & (\data|Mux10~0_combout\)) # (!\i_addr[7]~input_o\ & ((\data|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux10~0_combout\,
	datab => \data|Mux9~0_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux9~1_combout\);

-- Location: LCCOMB_X17_Y25_N14
\data|Mux9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~9_combout\ = (\i_addr[6]~input_o\ & ((\data|Mux9~8_combout\ & (\data|Mux9~6_combout\)) # (!\data|Mux9~8_combout\ & ((!\data|Mux9~1_combout\))))) # (!\i_addr[6]~input_o\ & (\data|Mux9~8_combout\ $ ((\data|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[6]~input_o\,
	datab => \data|Mux9~8_combout\,
	datac => \data|Mux9~6_combout\,
	datad => \data|Mux9~1_combout\,
	combout => \data|Mux9~9_combout\);

-- Location: FF_X16_Y21_N1
\data|o_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux9~9_combout\,
	sclr => \ALT_INV_i_addr[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(1));

-- Location: FF_X20_Y21_N3
\uut|reg.VA_prev[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector20~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N20
\uut|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector38~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev[2]~_Duplicate_1_q\,
	combout => \uut|Selector38~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\uut|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector27~0_combout\ = (\uut|reg.state.DONE~q\) # (\uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.state.DONE~q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector27~0_combout\);

-- Location: FF_X20_Y18_N21
\uut|reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector38~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(2));

-- Location: FF_X20_Y21_N1
\uut|reg.VA_prev[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector19~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N2
\uut|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector37~0_combout\ = (\uut|reg.VA_prev[3]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA_prev[3]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector37~0_combout\);

-- Location: FF_X20_Y18_N3
\uut|reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector37~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(3));

-- Location: LCCOMB_X22_Y22_N6
\data|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~5_combout\ = (\i_addr[4]~input_o\ & (((!\i_addr[1]~input_o\ & \i_addr[0]~input_o\)) # (!\i_addr[2]~input_o\))) # (!\i_addr[4]~input_o\ & (!\i_addr[1]~input_o\ & (\i_addr[0]~input_o\ $ (\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y22_N16
\data|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~4_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[1]~input_o\ & !\i_addr[2]~input_o\)) # (!\i_addr[4]~input_o\ & ((\i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y22_N28
\data|Mux2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~22_combout\ = (\i_addr[3]~input_o\ & (\data|Mux2~5_combout\ & ((\i_addr[5]~input_o\)))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\ & ((\data|Mux2~4_combout\))) # (!\i_addr[5]~input_o\ & (\data|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~5_combout\,
	datab => \i_addr[3]~input_o\,
	datac => \data|Mux2~4_combout\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~22_combout\);

-- Location: LCCOMB_X22_Y22_N8
\data|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~6_combout\ = (\i_addr[0]~input_o\ & (((!\i_addr[4]~input_o\ & \i_addr[2]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (\i_addr[4]~input_o\ $ (!\i_addr[2]~input_o\))) # (!\i_addr[1]~input_o\ & (\i_addr[4]~input_o\ & 
-- !\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux2~6_combout\);

-- Location: LCCOMB_X22_Y22_N30
\data|Mux2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~23_combout\ = (\data|Mux2~22_combout\) # ((!\i_addr[5]~input_o\ & (\data|Mux2~6_combout\ & \i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux2~22_combout\,
	datac => \data|Mux2~6_combout\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux2~23_combout\);

-- Location: LCCOMB_X19_Y24_N24
\data|Mux2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~19_combout\ = (\i_addr[0]~input_o\) # ((\i_addr[3]~input_o\) # (\i_addr[2]~input_o\ $ (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux2~19_combout\);

-- Location: LCCOMB_X19_Y21_N2
\data|Mux2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~20_combout\ = (\i_addr[5]~input_o\) # ((\data|Mux2~19_combout\) # (\i_addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux2~19_combout\,
	datac => \i_addr[4]~input_o\,
	combout => \data|Mux2~20_combout\);

-- Location: LCCOMB_X19_Y25_N28
\data|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~9_combout\ = (\i_addr[2]~input_o\ & (((!\i_addr[3]~input_o\ & \i_addr[5]~input_o\)) # (!\i_addr[4]~input_o\))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ (((!\i_addr[3]~input_o\ & \i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~9_combout\);

-- Location: LCCOMB_X19_Y25_N6
\data|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~8_combout\ = (\i_addr[3]~input_o\ & (!\i_addr[5]~input_o\ & ((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\)))) # (!\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~8_combout\);

-- Location: LCCOMB_X19_Y25_N26
\data|Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~10_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[1]~input_o\) # (!\data|Mux2~8_combout\)))) # (!\i_addr[0]~input_o\ & (!\data|Mux2~9_combout\ & (!\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux2~9_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux2~8_combout\,
	combout => \data|Mux2~10_combout\);

-- Location: LCCOMB_X19_Y25_N8
\data|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~7_combout\ = (\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ (((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\) # ((\i_addr[3]~input_o\ & !\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~7_combout\);

-- Location: LCCOMB_X20_Y23_N24
\data|Mux2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~11_combout\ = (\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\))))) # (!\i_addr[5]~input_o\ & ((\i_addr[3]~input_o\) # ((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux2~11_combout\);

-- Location: LCCOMB_X19_Y25_N24
\data|Mux2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~12_combout\ = (\data|Mux2~10_combout\ & (((!\data|Mux2~11_combout\) # (!\i_addr[1]~input_o\)))) # (!\data|Mux2~10_combout\ & (!\data|Mux2~7_combout\ & (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~10_combout\,
	datab => \data|Mux2~7_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux2~11_combout\,
	combout => \data|Mux2~12_combout\);

-- Location: LCCOMB_X17_Y21_N10
\data|Mux2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~14_combout\ = (\i_addr[1]~input_o\ & (\i_addr[0]~input_o\ $ (((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))) # (!\i_addr[1]~input_o\ & (\i_addr[3]~input_o\ & ((!\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~14_combout\);

-- Location: LCCOMB_X17_Y21_N20
\data|Mux2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~13_combout\ = (\i_addr[3]~input_o\ & (!\i_addr[5]~input_o\ & ((\i_addr[0]~input_o\) # (\i_addr[1]~input_o\)))) # (!\i_addr[3]~input_o\ & (((!\i_addr[1]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux2~13_combout\);

-- Location: LCCOMB_X17_Y21_N12
\data|Mux2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~15_combout\ = (\data|Mux2~14_combout\ & (\i_addr[0]~input_o\ $ (((!\i_addr[2]~input_o\) # (!\data|Mux2~13_combout\))))) # (!\data|Mux2~14_combout\ & ((\i_addr[0]~input_o\ & ((!\i_addr[2]~input_o\))) # (!\i_addr[0]~input_o\ & 
-- ((\data|Mux2~13_combout\) # (\i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~14_combout\,
	datab => \data|Mux2~13_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux2~15_combout\);

-- Location: LCCOMB_X17_Y21_N30
\data|Mux2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~16_combout\ = (\i_addr[0]~input_o\ & (\data|Mux2~13_combout\ $ (((!\data|Mux2~14_combout\ & \i_addr[2]~input_o\))))) # (!\i_addr[0]~input_o\ & ((\data|Mux2~14_combout\ & ((!\i_addr[2]~input_o\))) # (!\data|Mux2~14_combout\ & 
-- (\data|Mux2~13_combout\ & \i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~14_combout\,
	datab => \data|Mux2~13_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux2~16_combout\);

-- Location: LCCOMB_X17_Y21_N0
\data|Mux2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~17_combout\ = \data|Mux2~16_combout\ $ (((\data|Mux2~15_combout\ & !\i_addr[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~15_combout\,
	datac => \data|Mux2~16_combout\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux2~17_combout\);

-- Location: LCCOMB_X17_Y21_N18
\data|Mux2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~18_combout\ = (\i_addr[6]~input_o\ & ((\data|Mux2~12_combout\) # ((\i_addr[7]~input_o\)))) # (!\i_addr[6]~input_o\ & (((\data|Mux2~17_combout\ & !\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~12_combout\,
	datab => \data|Mux2~17_combout\,
	datac => \i_addr[6]~input_o\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux2~18_combout\);

-- Location: LCCOMB_X19_Y21_N12
\data|Mux2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~21_combout\ = (\data|Mux2~18_combout\ & (((!\i_addr[7]~input_o\) # (!\data|Mux2~20_combout\)))) # (!\data|Mux2~18_combout\ & (\data|Mux2~23_combout\ & ((\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux2~23_combout\,
	datab => \data|Mux2~20_combout\,
	datac => \data|Mux2~18_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux2~21_combout\);

-- Location: FF_X19_Y21_N13
\data|o_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	d => \data|Mux2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(3));

-- Location: LCCOMB_X17_Y18_N22
\uut|reg.VA_prev[4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[4]~_Duplicate_1feeder_combout\ = \uut|Selector18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector18~0_combout\,
	combout => \uut|reg.VA_prev[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y18_N23
\uut|reg.VA_prev[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[4]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N0
\uut|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector36~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[4]~_Duplicate_1_q\,
	combout => \uut|Selector36~0_combout\);

-- Location: FF_X20_Y18_N1
\uut|reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector36~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(4));

-- Location: FF_X20_Y21_N7
\uut|reg.VA_prev[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector17~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N6
\uut|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector35~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[5]~_Duplicate_1_q\,
	combout => \uut|Selector35~0_combout\);

-- Location: FF_X20_Y18_N7
\uut|reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector35~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(5));

-- Location: LCCOMB_X19_Y22_N10
\data|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~5_combout\ = (\i_addr[5]~input_o\ & (((\i_addr[4]~input_o\ & !\i_addr[2]~input_o\)) # (!\i_addr[3]~input_o\))) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[4]~input_o\ & !\i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux5~5_combout\);

-- Location: LCCOMB_X19_Y22_N28
\data|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~4_combout\ = (\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))))) # (!\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & !\i_addr[3]~input_o\)) # (!\i_addr[4]~input_o\ & 
-- (\i_addr[2]~input_o\ & \i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y22_N16
\data|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~6_combout\ = (\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (!\data|Mux5~5_combout\)) # (!\i_addr[1]~input_o\ & ((!\data|Mux5~4_combout\))))) # (!\i_addr[0]~input_o\ & (((\data|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~5_combout\,
	datab => \data|Mux5~4_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y23_N26
\data|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~8_combout\ = (\i_addr[3]~input_o\ & (((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\)) # (!\i_addr[5]~input_o\))) # (!\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ $ (((\i_addr[2]~input_o\ & !\i_addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux6~8_combout\);

-- Location: LCCOMB_X19_Y23_N18
\data|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~6_combout\ = (\i_addr[3]~input_o\ & (!\i_addr[5]~input_o\ & ((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\)))) # (!\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux6~6_combout\);

-- Location: LCCOMB_X19_Y23_N30
\data|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~3_combout\ = (\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (!\data|Mux6~8_combout\)) # (!\i_addr[1]~input_o\ & ((!\data|Mux6~6_combout\))))) # (!\i_addr[0]~input_o\ & (((\data|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~8_combout\,
	datab => \data|Mux6~6_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y22_N26
\data|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~7_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\ & ((\data|Mux5~3_combout\))) # (!\i_addr[6]~input_o\ & (\data|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \data|Mux5~6_combout\,
	datac => \data|Mux5~3_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux5~7_combout\);

-- Location: LCCOMB_X19_Y22_N24
\data|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~1_combout\ = (\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & !\i_addr[3]~input_o\)) # (!\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[3]~input_o\)))) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ 
-- (((!\i_addr[4]~input_o\ & \i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y25_N30
\data|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~0_combout\ = (\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))))) # (!\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\ & (!\i_addr[3]~input_o\ & !\i_addr[2]~input_o\)) # (!\i_addr[4]~input_o\ & 
-- (\i_addr[3]~input_o\ & \i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y22_N2
\data|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~2_combout\ = (\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & ((\data|Mux5~0_combout\))) # (!\i_addr[1]~input_o\ & (!\data|Mux5~1_combout\)))) # (!\i_addr[0]~input_o\ & (\data|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux5~1_combout\,
	datac => \data|Mux5~0_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y22_N8
\data|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~8_combout\ = (!\i_addr[4]~input_o\ & (!\i_addr[5]~input_o\ & (!\i_addr[0]~input_o\ & !\i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[5]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux5~8_combout\);

-- Location: LCCOMB_X19_Y22_N30
\data|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~9_combout\ = (\data|Mux5~7_combout\ & (((\data|Mux5~8_combout\) # (!\i_addr[7]~input_o\)))) # (!\data|Mux5~7_combout\ & (\data|Mux5~2_combout\ & ((\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~7_combout\,
	datab => \data|Mux5~2_combout\,
	datac => \data|Mux5~8_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux5~9_combout\);

-- Location: FF_X19_Y21_N27
\data|o_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux5~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(6));

-- Location: FF_X20_Y21_N11
\uut|reg.VA_prev[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector15~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y19_N8
\uut|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector33~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[7]~_Duplicate_1_q\,
	combout => \uut|Selector33~0_combout\);

-- Location: FF_X20_Y19_N9
\uut|reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector33~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(7));

-- Location: FF_X20_Y21_N9
\uut|reg.VA_prev[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector14~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N18
\uut|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector32~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[8]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[8]~_Duplicate_1_q\,
	combout => \uut|Selector32~0_combout\);

-- Location: FF_X20_Y18_N19
\uut|reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector32~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(8));

-- Location: LCCOMB_X19_Y19_N28
\uut|reg.VA_prev[11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\ = \uut|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector11~0_combout\,
	combout => \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y19_N29
\uut|reg.VA_prev[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[11]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N22
\uut|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector29~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[11]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[11]~_Duplicate_1_q\,
	combout => \uut|Selector29~0_combout\);

-- Location: FF_X20_Y18_N23
\uut|reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector29~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(11));

-- Location: FF_X20_Y20_N23
\uut|reg.VA_prev[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector10~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N4
\uut|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector28~0_combout\ = (\uut|reg.VA_prev[12]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.VA_prev[12]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector28~0_combout\);

-- Location: FF_X20_Y18_N5
\uut|reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector28~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(12));

-- Location: LCCOMB_X19_Y23_N0
\data|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~10_combout\ = (!\i_addr[3]~input_o\ & (!\i_addr[4]~input_o\ & !\i_addr[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux5~10_combout\);

-- Location: LCCOMB_X22_Y22_N10
\data|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~5_combout\ = (\i_addr[5]~input_o\ & (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[3]~input_o\))) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & ((\i_addr[4]~input_o\) # (!\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux0~5_combout\);

-- Location: LCCOMB_X22_Y22_N20
\data|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~6_combout\ = (\i_addr[4]~input_o\ & (\i_addr[1]~input_o\ & (\i_addr[0]~input_o\ & \i_addr[2]~input_o\))) # (!\i_addr[4]~input_o\ & ((\i_addr[2]~input_o\) # ((\i_addr[1]~input_o\ & \i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux0~6_combout\);

-- Location: LCCOMB_X22_Y22_N4
\data|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~11_combout\ = (\data|Mux0~5_combout\) # ((\data|Mux0~6_combout\ & (\i_addr[3]~input_o\ $ (!\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux0~5_combout\,
	datab => \i_addr[3]~input_o\,
	datac => \data|Mux0~6_combout\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux0~11_combout\);

-- Location: LCCOMB_X22_Y22_N12
\data|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~8_combout\ = (\i_addr[4]~input_o\ & !\i_addr[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux0~8_combout\);

-- Location: LCCOMB_X22_Y22_N18
\data|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~7_combout\ = (\i_addr[1]~input_o\ & ((\i_addr[0]~input_o\) # ((!\i_addr[4]~input_o\ & \i_addr[2]~input_o\)))) # (!\i_addr[1]~input_o\ & (((!\i_addr[4]~input_o\ & \i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux0~7_combout\);

-- Location: LCCOMB_X22_Y22_N22
\data|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~12_combout\ = (\data|Mux0~8_combout\ & ((\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\))) # (!\i_addr[3]~input_o\ & ((\data|Mux0~7_combout\) # (!\i_addr[5]~input_o\))))) # (!\data|Mux0~8_combout\ & ((\i_addr[3]~input_o\ & (\data|Mux0~7_combout\ & 
-- !\i_addr[5]~input_o\)) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux0~8_combout\,
	datab => \i_addr[3]~input_o\,
	datac => \data|Mux0~7_combout\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y22_N2
\data|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~9_combout\ = (\i_addr[7]~input_o\ & ((\data|Mux0~11_combout\) # ((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & (((\data|Mux0~12_combout\ & !\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \data|Mux0~11_combout\,
	datac => \data|Mux0~12_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux0~9_combout\);

-- Location: LCCOMB_X19_Y20_N22
\data|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~4_combout\ = (\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (\data|Mux2~11_combout\)) # (!\i_addr[1]~input_o\ & ((\data|Mux2~8_combout\))))) # (!\i_addr[0]~input_o\ & (((\data|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux2~11_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux2~8_combout\,
	combout => \data|Mux0~4_combout\);

-- Location: LCCOMB_X19_Y20_N30
\data|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~10_combout\ = (\data|Mux0~9_combout\ & ((\data|Mux5~10_combout\) # ((!\i_addr[6]~input_o\)))) # (!\data|Mux0~9_combout\ & (((\data|Mux0~4_combout\ & \i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~10_combout\,
	datab => \data|Mux0~9_combout\,
	datac => \data|Mux0~4_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux0~10_combout\);

-- Location: FF_X19_Y20_N31
\data|o_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	d => \data|Mux0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(11));

-- Location: LCCOMB_X20_Y23_N6
\data|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~7_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[2]~input_o\) # (\i_addr[6]~input_o\)) # (!\i_addr[4]~input_o\))) # (!\i_addr[0]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[6]~input_o\)) # (!\i_addr[4]~input_o\ & 
-- ((\i_addr[2]~input_o\) # (\i_addr[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~7_combout\);

-- Location: LCCOMB_X20_Y23_N8
\data|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~8_combout\ = (\i_addr[0]~input_o\ & (\i_addr[4]~input_o\ $ (\i_addr[2]~input_o\ $ (!\i_addr[6]~input_o\)))) # (!\i_addr[0]~input_o\ & (\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & !\i_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~8_combout\);

-- Location: LCCOMB_X20_Y23_N14
\data|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~9_combout\ = (\data|Mux1~7_combout\ & (!\data|Mux1~8_combout\ & (\i_addr[5]~input_o\ $ (!\i_addr[3]~input_o\)))) # (!\data|Mux1~7_combout\ & ((\i_addr[5]~input_o\ & (\data|Mux1~8_combout\ & !\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\ & 
-- ((\i_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~7_combout\,
	datab => \data|Mux1~8_combout\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux1~9_combout\);

-- Location: LCCOMB_X19_Y22_N4
\data|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~3_combout\ = \i_addr[4]~input_o\ $ (\i_addr[2]~input_o\ $ (\i_addr[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y22_N12
\data|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~5_combout\ = (\i_addr[5]~input_o\ & (\data|Mux1~3_combout\ & !\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\ & (!\data|Mux1~3_combout\ & \i_addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_addr[5]~input_o\,
	datac => \data|Mux1~3_combout\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux1~5_combout\);

-- Location: LCCOMB_X19_Y22_N14
\data|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~2_combout\ = (\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & !\i_addr[6]~input_o\)) # (!\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y22_N6
\data|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~4_combout\ = (\i_addr[5]~input_o\ & (!\data|Mux1~3_combout\ & !\i_addr[3]~input_o\)) # (!\i_addr[5]~input_o\ & (\data|Mux1~3_combout\ & \i_addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_addr[5]~input_o\,
	datac => \data|Mux1~3_combout\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux1~4_combout\);

-- Location: LCCOMB_X19_Y22_N18
\data|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~6_combout\ = (\data|Mux1~5_combout\ & ((\i_addr[0]~input_o\) # ((!\data|Mux1~2_combout\ & \data|Mux1~4_combout\)))) # (!\data|Mux1~5_combout\ & ((\data|Mux1~2_combout\ & ((\i_addr[0]~input_o\) # (\data|Mux1~4_combout\))) # 
-- (!\data|Mux1~2_combout\ & ((!\data|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux1~5_combout\,
	datac => \data|Mux1~2_combout\,
	datad => \data|Mux1~4_combout\,
	combout => \data|Mux1~6_combout\);

-- Location: LCCOMB_X19_Y20_N26
\data|Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~10_combout\ = (\i_addr[1]~input_o\ & (((\i_addr[7]~input_o\) # (\data|Mux1~6_combout\)))) # (!\i_addr[1]~input_o\ & (\data|Mux1~9_combout\ & (!\i_addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \data|Mux1~9_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux1~6_combout\,
	combout => \data|Mux1~10_combout\);

-- Location: LCCOMB_X19_Y21_N6
\data|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~0_combout\ = (\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & (\i_addr[5]~input_o\ $ (!\i_addr[3]~input_o\)))) # (!\i_addr[4]~input_o\ & (\i_addr[5]~input_o\ & (!\i_addr[3]~input_o\ & \i_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[3]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\data|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~1_combout\ = (!\i_addr[6]~input_o\ & ((\i_addr[0]~input_o\ & ((\data|Mux1~0_combout\))) # (!\i_addr[0]~input_o\ & (!\data|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux2~11_combout\,
	datac => \data|Mux1~0_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y23_N6
\data|Mux1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~11_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\) # (\i_addr[3]~input_o\ $ (\i_addr[5]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[3]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux1~11_combout\);

-- Location: LCCOMB_X19_Y20_N28
\data|Mux1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~12_combout\ = (\i_addr[6]~input_o\ & (\data|Mux5~10_combout\ & (\i_addr[2]~input_o\))) # (!\i_addr[6]~input_o\ & ((\i_addr[2]~input_o\ $ (\data|Mux1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~10_combout\,
	datab => \i_addr[2]~input_o\,
	datac => \data|Mux1~11_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~12_combout\);

-- Location: LCCOMB_X19_Y20_N18
\data|Mux1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~13_combout\ = (\i_addr[0]~input_o\ & (\data|Mux1~12_combout\ $ (((!\i_addr[6]~input_o\))))) # (!\i_addr[0]~input_o\ & (((\data|Mux5~0_combout\ & !\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux1~12_combout\,
	datac => \data|Mux5~0_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux1~13_combout\);

-- Location: LCCOMB_X19_Y20_N20
\data|Mux1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~14_combout\ = (\data|Mux1~10_combout\ & (((\data|Mux1~13_combout\) # (!\i_addr[7]~input_o\)))) # (!\data|Mux1~10_combout\ & (\data|Mux1~1_combout\ & (\i_addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~10_combout\,
	datab => \data|Mux1~1_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux1~13_combout\,
	combout => \data|Mux1~14_combout\);

-- Location: FF_X19_Y20_N3
\data|o_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux1~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(10));

-- Location: LCCOMB_X19_Y24_N14
\data|Mux3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~17_combout\ = (\i_addr[3]~input_o\) # ((\i_addr[2]~input_o\ & (!\i_addr[1]~input_o\ & !\i_addr[0]~input_o\)) # (!\i_addr[2]~input_o\ & (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux3~17_combout\);

-- Location: LCCOMB_X19_Y21_N10
\data|Mux3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~18_combout\ = (\i_addr[5]~input_o\) # ((\data|Mux3~17_combout\) # (\i_addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux3~17_combout\,
	datac => \i_addr[4]~input_o\,
	combout => \data|Mux3~18_combout\);

-- Location: LCCOMB_X19_Y24_N26
\data|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~5_combout\ = \i_addr[2]~input_o\ $ (((\i_addr[0]~input_o\ & ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))) # (!\i_addr[0]~input_o\ & (\i_addr[3]~input_o\ & !\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~5_combout\);

-- Location: LCCOMB_X19_Y24_N22
\data|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~7_combout\ = (\i_addr[2]~input_o\ & (((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\)) # (!\i_addr[0]~input_o\))) # (!\i_addr[2]~input_o\ & (!\i_addr[0]~input_o\ & (!\i_addr[3]~input_o\ & \i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~7_combout\);

-- Location: LCCOMB_X19_Y24_N20
\data|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~6_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[0]~input_o\) # ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\)))) # (!\i_addr[2]~input_o\ & (((!\i_addr[3]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~6_combout\);

-- Location: LCCOMB_X19_Y24_N4
\data|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~8_combout\ = (\i_addr[1]~input_o\ & (((\i_addr[4]~input_o\)))) # (!\i_addr[1]~input_o\ & ((\i_addr[4]~input_o\ & ((\data|Mux3~6_combout\))) # (!\i_addr[4]~input_o\ & (!\data|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~7_combout\,
	datab => \data|Mux3~6_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux3~8_combout\);

-- Location: LCCOMB_X19_Y24_N6
\data|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~9_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[0]~input_o\ & (!\i_addr[3]~input_o\ & \i_addr[5]~input_o\)) # (!\i_addr[0]~input_o\ & ((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\))))) # (!\i_addr[2]~input_o\ & (\i_addr[0]~input_o\ & 
-- (\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~9_combout\);

-- Location: LCCOMB_X19_Y24_N16
\data|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~10_combout\ = (\data|Mux3~8_combout\ & (((\data|Mux3~9_combout\) # (!\i_addr[1]~input_o\)))) # (!\data|Mux3~8_combout\ & (!\data|Mux3~5_combout\ & (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~5_combout\,
	datab => \data|Mux3~8_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux3~9_combout\,
	combout => \data|Mux3~10_combout\);

-- Location: LCCOMB_X19_Y25_N2
\data|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~11_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & ((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~11_combout\);

-- Location: LCCOMB_X19_Y25_N12
\data|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~12_combout\ = (\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ (((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[4]~input_o\ & 
-- (!\i_addr[3]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~12_combout\);

-- Location: LCCOMB_X19_Y25_N22
\data|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~13_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[1]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (\data|Mux3~11_combout\)) # (!\i_addr[1]~input_o\ & ((\data|Mux3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux3~11_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux3~12_combout\,
	combout => \data|Mux3~13_combout\);

-- Location: LCCOMB_X19_Y25_N16
\data|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~14_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[4]~input_o\ & (!\i_addr[3]~input_o\ & \i_addr[5]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ 
-- (((\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~14_combout\);

-- Location: LCCOMB_X19_Y25_N14
\data|Mux3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~15_combout\ = (\data|Mux3~13_combout\ & ((\data|Mux3~14_combout\) # ((!\i_addr[0]~input_o\)))) # (!\data|Mux3~13_combout\ & (((\i_addr[0]~input_o\ & \data|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~13_combout\,
	datab => \data|Mux3~14_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \data|Mux2~9_combout\,
	combout => \data|Mux3~15_combout\);

-- Location: LCCOMB_X19_Y21_N8
\data|Mux3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~16_combout\ = (\i_addr[6]~input_o\ & ((\data|Mux3~10_combout\) # ((\i_addr[7]~input_o\)))) # (!\i_addr[6]~input_o\ & (((\data|Mux3~15_combout\ & !\i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[6]~input_o\,
	datab => \data|Mux3~10_combout\,
	datac => \data|Mux3~15_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux3~16_combout\);

-- Location: LCCOMB_X19_Y22_N22
\data|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~1_combout\ = (\i_addr[1]~input_o\ & ((\i_addr[0]~input_o\) # ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\)))) # (!\i_addr[1]~input_o\ & (((!\i_addr[5]~input_o\ & \i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y22_N20
\data|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~0_combout\ = (\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))) # (!\i_addr[1]~input_o\ & (!\i_addr[5]~input_o\ & \i_addr[3]~input_o\)))) # (!\i_addr[0]~input_o\ & (\i_addr[1]~input_o\ & 
-- (!\i_addr[5]~input_o\ & \i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[5]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y22_N0
\data|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~2_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\ & ((\data|Mux3~0_combout\))) # (!\i_addr[4]~input_o\ & (!\data|Mux3~1_combout\)))) # (!\i_addr[2]~input_o\ & (((\data|Mux3~0_combout\ & !\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~1_combout\,
	datab => \data|Mux3~0_combout\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y21_N8
\data|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~3_combout\ = (\i_addr[3]~input_o\ & (\i_addr[1]~input_o\ & ((\i_addr[0]~input_o\) # (!\i_addr[5]~input_o\)))) # (!\i_addr[3]~input_o\ & ((\i_addr[0]~input_o\ & (\i_addr[1]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[0]~input_o\ & 
-- (!\i_addr[1]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux3~3_combout\);

-- Location: LCCOMB_X17_Y21_N6
\data|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~4_combout\ = (\data|Mux3~2_combout\) # ((\i_addr[4]~input_o\ & (!\data|Mux3~3_combout\ & !\i_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~2_combout\,
	datab => \i_addr[4]~input_o\,
	datac => \data|Mux3~3_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux3~4_combout\);

-- Location: LCCOMB_X19_Y21_N4
\data|Mux3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~19_combout\ = (\data|Mux3~16_combout\ & (((!\i_addr[7]~input_o\)) # (!\data|Mux3~18_combout\))) # (!\data|Mux3~16_combout\ & (((\data|Mux3~4_combout\ & \i_addr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux3~18_combout\,
	datab => \data|Mux3~16_combout\,
	datac => \data|Mux3~4_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux3~19_combout\);

-- Location: FF_X19_Y21_N31
\data|o_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux3~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(8));

-- Location: LCCOMB_X17_Y24_N30
\data|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~17_combout\ = (\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & (\i_addr[7]~input_o\ $ (\i_addr[6]~input_o\)))) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ $ (((\i_addr[7]~input_o\) # (\i_addr[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux4~17_combout\);

-- Location: LCCOMB_X17_Y24_N24
\data|Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~18_combout\ = (\i_addr[3]~input_o\ & ((\i_addr[7]~input_o\) # ((!\i_addr[5]~input_o\ & !\i_addr[6]~input_o\)))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\ & ((\i_addr[6]~input_o\))) # (!\i_addr[5]~input_o\ & (\i_addr[7]~input_o\ & 
-- !\i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux4~18_combout\);

-- Location: LCCOMB_X17_Y24_N14
\data|Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~19_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[5]~input_o\ & (!\i_addr[3]~input_o\ & !\i_addr[6]~input_o\)) # (!\i_addr[5]~input_o\ & (\i_addr[3]~input_o\ & \i_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[7]~input_o\,
	datac => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux4~19_combout\);

-- Location: LCCOMB_X17_Y24_N12
\data|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~10_combout\ = (\data|Mux4~17_combout\ & ((\data|Mux4~18_combout\ & (!\data|Mux4~19_combout\ & \i_addr[2]~input_o\)) # (!\data|Mux4~18_combout\ & (\data|Mux4~19_combout\)))) # (!\data|Mux4~17_combout\ & (\data|Mux4~19_combout\ & 
-- ((\data|Mux4~18_combout\) # (!\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~17_combout\,
	datab => \data|Mux4~18_combout\,
	datac => \data|Mux4~19_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux4~10_combout\);

-- Location: LCCOMB_X17_Y24_N18
\data|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~9_combout\ = (\data|Mux4~18_combout\ & ((\data|Mux4~19_combout\ & (!\data|Mux4~17_combout\)) # (!\data|Mux4~19_combout\ & ((!\i_addr[2]~input_o\))))) # (!\data|Mux4~18_combout\ & (\i_addr[2]~input_o\ & ((\data|Mux4~17_combout\) # 
-- (\data|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~17_combout\,
	datab => \data|Mux4~18_combout\,
	datac => \data|Mux4~19_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux4~9_combout\);

-- Location: LCCOMB_X17_Y24_N6
\data|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~13_combout\ = (\data|Mux4~9_combout\ & ((\i_addr[0]~input_o\ & ((\i_addr[4]~input_o\))) # (!\i_addr[0]~input_o\ & ((\data|Mux4~10_combout\) # (!\i_addr[4]~input_o\))))) # (!\data|Mux4~9_combout\ & (\data|Mux4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~10_combout\,
	datab => \data|Mux4~9_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux4~13_combout\);

-- Location: LCCOMB_X17_Y24_N4
\data|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~12_combout\ = (\data|Mux4~10_combout\ & ((\data|Mux4~9_combout\) # (\i_addr[0]~input_o\ $ (!\i_addr[4]~input_o\)))) # (!\data|Mux4~10_combout\ & (\i_addr[4]~input_o\ & ((!\i_addr[0]~input_o\) # (!\data|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~10_combout\,
	datab => \data|Mux4~9_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux4~12_combout\);

-- Location: LCCOMB_X17_Y24_N2
\data|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~11_combout\ = (\data|Mux4~9_combout\ & ((\data|Mux4~10_combout\ & (\i_addr[0]~input_o\ & !\i_addr[4]~input_o\)) # (!\data|Mux4~10_combout\ & ((\i_addr[4]~input_o\))))) # (!\data|Mux4~9_combout\ & (((\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~10_combout\,
	datab => \data|Mux4~9_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux4~11_combout\);

-- Location: LCCOMB_X17_Y24_N20
\data|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~14_combout\ = (\data|Mux4~11_combout\ & (\data|Mux4~12_combout\ $ (((\data|Mux4~13_combout\ & !\i_addr[1]~input_o\))))) # (!\data|Mux4~11_combout\ & (!\data|Mux4~12_combout\ & (\data|Mux4~13_combout\ $ (\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~13_combout\,
	datab => \data|Mux4~12_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux4~11_combout\,
	combout => \data|Mux4~14_combout\);

-- Location: LCCOMB_X17_Y24_N26
\data|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~15_combout\ = (\i_addr[1]~input_o\ & ((\data|Mux4~13_combout\) # ((\data|Mux4~11_combout\)))) # (!\i_addr[1]~input_o\ & ((\data|Mux4~12_combout\) # ((\data|Mux4~13_combout\ & !\data|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~13_combout\,
	datab => \data|Mux4~12_combout\,
	datac => \i_addr[1]~input_o\,
	datad => \data|Mux4~11_combout\,
	combout => \data|Mux4~15_combout\);

-- Location: LCCOMB_X17_Y24_N0
\data|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~8_combout\ = (\data|Mux4~18_combout\ & ((\i_addr[2]~input_o\ & ((\data|Mux4~19_combout\))) # (!\i_addr[2]~input_o\ & (!\data|Mux4~17_combout\)))) # (!\data|Mux4~18_combout\ & (\data|Mux4~17_combout\ $ (((\i_addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~17_combout\,
	datab => \data|Mux4~18_combout\,
	datac => \data|Mux4~19_combout\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux4~8_combout\);

-- Location: LCCOMB_X17_Y24_N8
\data|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~16_combout\ = (\data|Mux4~8_combout\ & ((!\data|Mux4~15_combout\))) # (!\data|Mux4~8_combout\ & (\data|Mux4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|Mux4~14_combout\,
	datac => \data|Mux4~15_combout\,
	datad => \data|Mux4~8_combout\,
	combout => \data|Mux4~16_combout\);

-- Location: FF_X19_Y21_N29
\data|o_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux4~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(7));

-- Location: LCCOMB_X19_Y24_N28
\data|Mux6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~16_combout\ = (!\i_addr[0]~input_o\ & (!\i_addr[3]~input_o\ & (\i_addr[2]~input_o\ $ (\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux6~16_combout\);

-- Location: LCCOMB_X19_Y24_N30
\data|Mux6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~17_combout\ = (!\i_addr[5]~input_o\ & (!\i_addr[4]~input_o\ & \data|Mux6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[4]~input_o\,
	datad => \data|Mux6~16_combout\,
	combout => \data|Mux6~17_combout\);

-- Location: LCCOMB_X19_Y24_N0
\data|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~1_combout\ = (\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & \i_addr[1]~input_o\)) # (!\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\) # (\i_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[1]~input_o\,
	combout => \data|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y24_N18
\data|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~0_combout\ = (\i_addr[1]~input_o\ & (\i_addr[0]~input_o\ $ (((!\i_addr[2]~input_o\ & \i_addr[4]~input_o\))))) # (!\i_addr[1]~input_o\ & (\i_addr[2]~input_o\ & ((!\i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[2]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y24_N10
\data|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~2_combout\ = (\i_addr[5]~input_o\ & (\i_addr[0]~input_o\ $ (((\data|Mux6~0_combout\) # (!\data|Mux6~1_combout\))))) # (!\i_addr[5]~input_o\ & ((\data|Mux6~0_combout\) # ((\data|Mux6~1_combout\ & !\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux6~1_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \data|Mux6~0_combout\,
	combout => \data|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y24_N8
\data|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~3_combout\ = (\data|Mux6~0_combout\ & ((\i_addr[5]~input_o\) # (\data|Mux6~1_combout\ $ (!\i_addr[0]~input_o\)))) # (!\data|Mux6~0_combout\ & ((\i_addr[0]~input_o\ & (!\i_addr[5]~input_o\)) # (!\i_addr[0]~input_o\ & ((\data|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux6~1_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \data|Mux6~0_combout\,
	combout => \data|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y24_N2
\data|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~4_combout\ = (\i_addr[3]~input_o\ & ((!\data|Mux6~3_combout\))) # (!\i_addr[3]~input_o\ & (!\data|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~2_combout\,
	datab => \data|Mux6~3_combout\,
	datac => \i_addr[3]~input_o\,
	combout => \data|Mux6~4_combout\);

-- Location: LCCOMB_X20_Y23_N28
\data|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~11_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[1]~input_o\ & (!\i_addr[4]~input_o\ & !\i_addr[0]~input_o\))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\) # (\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux6~11_combout\);

-- Location: LCCOMB_X20_Y23_N30
\data|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~10_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[1]~input_o\)) # (!\i_addr[4]~input_o\ & ((\i_addr[0]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[1]~input_o\) # ((\i_addr[4]~input_o\ & !\i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux6~10_combout\);

-- Location: LCCOMB_X20_Y23_N10
\data|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~12_combout\ = (\i_addr[5]~input_o\ & ((\data|Mux6~11_combout\) # ((!\data|Mux6~10_combout\ & !\i_addr[0]~input_o\)))) # (!\i_addr[5]~input_o\ & ((\data|Mux6~11_combout\ & ((!\i_addr[0]~input_o\))) # (!\data|Mux6~11_combout\ & 
-- (\data|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux6~11_combout\,
	datac => \data|Mux6~10_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux6~12_combout\);

-- Location: LCCOMB_X20_Y23_N4
\data|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~13_combout\ = (\data|Mux6~11_combout\ & (\i_addr[5]~input_o\ & (!\data|Mux6~10_combout\))) # (!\data|Mux6~11_combout\ & ((\i_addr[0]~input_o\ & (!\i_addr[5]~input_o\)) # (!\i_addr[0]~input_o\ & ((\data|Mux6~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \data|Mux6~11_combout\,
	datac => \data|Mux6~10_combout\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux6~13_combout\);

-- Location: LCCOMB_X20_Y23_N26
\data|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~14_combout\ = (\i_addr[3]~input_o\ & (!\data|Mux6~12_combout\)) # (!\i_addr[3]~input_o\ & ((\data|Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~12_combout\,
	datac => \data|Mux6~13_combout\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux6~14_combout\);

-- Location: LCCOMB_X19_Y23_N24
\data|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~5_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[3]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[3]~input_o\ & (!\i_addr[4]~input_o\ & \i_addr[5]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ 
-- (((\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux6~5_combout\);

-- Location: LCCOMB_X19_Y23_N12
\data|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~9_combout\ = (\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ $ (((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))) # (!\i_addr[2]~input_o\ & ((\i_addr[3]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[3]~input_o\ & 
-- (!\i_addr[4]~input_o\ & \i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~9_combout\);

-- Location: LCCOMB_X19_Y23_N4
\data|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~7_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[1]~input_o\) # (!\data|Mux6~6_combout\)))) # (!\i_addr[0]~input_o\ & (\data|Mux8~9_combout\ & ((!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~9_combout\,
	datab => \data|Mux6~6_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux6~7_combout\);

-- Location: LCCOMB_X19_Y23_N28
\data|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~9_combout\ = (\data|Mux6~7_combout\ & (((!\i_addr[1]~input_o\)) # (!\data|Mux6~8_combout\))) # (!\data|Mux6~7_combout\ & (((\data|Mux6~5_combout\ & \i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~8_combout\,
	datab => \data|Mux6~5_combout\,
	datac => \data|Mux6~7_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux6~9_combout\);

-- Location: LCCOMB_X20_Y23_N0
\data|Mux6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~15_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\ & ((\data|Mux6~9_combout\))) # (!\i_addr[6]~input_o\ & (\data|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~14_combout\,
	datab => \data|Mux6~9_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux6~15_combout\);

-- Location: LCCOMB_X19_Y24_N12
\data|Mux6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~18_combout\ = (\i_addr[7]~input_o\ & ((\data|Mux6~15_combout\ & (\data|Mux6~17_combout\)) # (!\data|Mux6~15_combout\ & ((\data|Mux6~4_combout\))))) # (!\i_addr[7]~input_o\ & (((\data|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~17_combout\,
	datab => \data|Mux6~4_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux6~15_combout\,
	combout => \data|Mux6~18_combout\);

-- Location: FF_X19_Y21_N25
\data|o_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux6~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(5));

-- Location: LCCOMB_X20_Y23_N20
\data|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~3_combout\ = (\i_addr[5]~input_o\ & ((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))) # (!\i_addr[5]~input_o\ & (\i_addr[2]~input_o\ & !\i_addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	combout => \data|Mux7~3_combout\);

-- Location: LCCOMB_X20_Y23_N2
\data|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~2_combout\ = (\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[0]~input_o\)) # (!\i_addr[4]~input_o\ & ((\i_addr[2]~input_o\) # (\i_addr[0]~input_o\))))) # (!\i_addr[5]~input_o\ & ((\i_addr[4]~input_o\ & 
-- (!\i_addr[2]~input_o\)) # (!\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[4]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[0]~input_o\,
	combout => \data|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y23_N22
\data|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~4_combout\ = (\data|Mux7~3_combout\ & (((!\i_addr[1]~input_o\ & !\data|Mux7~2_combout\)) # (!\i_addr[7]~input_o\))) # (!\data|Mux7~3_combout\ & ((\i_addr[7]~input_o\) # ((\i_addr[1]~input_o\ & !\data|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \data|Mux7~3_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux7~2_combout\,
	combout => \data|Mux7~4_combout\);

-- Location: LCCOMB_X20_Y23_N16
\data|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~13_combout\ = (!\i_addr[6]~input_o\ & (!\data|Mux7~4_combout\ & (\i_addr[5]~input_o\ $ (\i_addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[6]~input_o\,
	datac => \data|Mux7~4_combout\,
	datad => \i_addr[3]~input_o\,
	combout => \data|Mux7~13_combout\);

-- Location: LCCOMB_X22_Y22_N26
\data|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~5_combout\ = (!\i_addr[6]~input_o\ & (\i_addr[5]~input_o\ $ (!\i_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[5]~input_o\,
	datab => \i_addr[3]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y22_N24
\data|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~6_combout\ = (\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & ((\i_addr[1]~input_o\) # (\i_addr[0]~input_o\)))) # (!\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\) # ((\i_addr[0]~input_o\) # (\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \i_addr[0]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux7~6_combout\);

-- Location: LCCOMB_X22_Y22_N14
\data|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~7_combout\ = (\i_addr[1]~input_o\ & ((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))) # (!\i_addr[1]~input_o\ & (!\i_addr[4]~input_o\ & \i_addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux7~7_combout\);

-- Location: LCCOMB_X22_Y22_N0
\data|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~8_combout\ = (\data|Mux7~5_combout\ & ((\i_addr[7]~input_o\ & ((!\data|Mux7~7_combout\))) # (!\i_addr[7]~input_o\ & (\data|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux7~5_combout\,
	datab => \data|Mux7~6_combout\,
	datac => \data|Mux7~7_combout\,
	datad => \i_addr[7]~input_o\,
	combout => \data|Mux7~8_combout\);

-- Location: LCCOMB_X19_Y23_N8
\data|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~10_combout\ = (\i_addr[3]~input_o\ & (\i_addr[5]~input_o\ $ (((\i_addr[2]~input_o\) # (!\i_addr[4]~input_o\))))) # (!\i_addr[3]~input_o\ & ((\i_addr[5]~input_o\) # ((!\i_addr[2]~input_o\ & \i_addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux7~10_combout\);

-- Location: LCCOMB_X19_Y23_N14
\data|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~11_combout\ = (!\i_addr[1]~input_o\ & ((\i_addr[0]~input_o\ & (\data|Mux2~8_combout\)) # (!\i_addr[0]~input_o\ & ((\data|Mux7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux2~8_combout\,
	datac => \data|Mux7~10_combout\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux7~11_combout\);

-- Location: LCCOMB_X20_Y23_N12
\data|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~9_combout\ = (!\i_addr[7]~input_o\ & (\i_addr[6]~input_o\ & ((!\data|Mux2~11_combout\) # (!\i_addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[1]~input_o\,
	datab => \data|Mux2~11_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux7~9_combout\);

-- Location: LCCOMB_X21_Y23_N16
\data|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~12_combout\ = (\data|Mux7~13_combout\) # ((\data|Mux7~8_combout\) # ((!\data|Mux7~11_combout\ & \data|Mux7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux7~13_combout\,
	datab => \data|Mux7~8_combout\,
	datac => \data|Mux7~11_combout\,
	datad => \data|Mux7~9_combout\,
	combout => \data|Mux7~12_combout\);

-- Location: FF_X19_Y21_N23
\data|o_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux7~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(4));

-- Location: LCCOMB_X17_Y25_N6
\data|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~1_combout\ = (\i_addr[2]~input_o\ & ((\i_addr[3]~input_o\ & (\i_addr[1]~input_o\ & \i_addr[5]~input_o\)) # (!\i_addr[3]~input_o\ & (\i_addr[1]~input_o\ $ (\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y25_N16
\data|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~2_combout\ = (\i_addr[3]~input_o\ & ((\i_addr[2]~input_o\ & (!\i_addr[1]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[2]~input_o\ & (\i_addr[1]~input_o\ & \i_addr[5]~input_o\)))) # (!\i_addr[3]~input_o\ & (!\i_addr[2]~input_o\ & 
-- (\i_addr[1]~input_o\ $ (\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~2_combout\);

-- Location: LCCOMB_X17_Y25_N10
\data|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~3_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[4]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[4]~input_o\ & (!\data|Mux8~1_combout\)) # (!\i_addr[4]~input_o\ & ((!\data|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~1_combout\,
	datab => \i_addr[0]~input_o\,
	datac => \data|Mux8~2_combout\,
	datad => \i_addr[4]~input_o\,
	combout => \data|Mux8~3_combout\);

-- Location: LCCOMB_X17_Y25_N4
\data|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~0_combout\ = (\i_addr[1]~input_o\ & (!\i_addr[2]~input_o\ & ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\)))) # (!\i_addr[1]~input_o\ & (\i_addr[2]~input_o\ $ (((\i_addr[3]~input_o\ & !\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[1]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y25_N20
\data|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~4_combout\ = (\data|Mux8~3_combout\ & (((!\data|Mux9~0_combout\)) # (!\i_addr[0]~input_o\))) # (!\data|Mux8~3_combout\ & (\i_addr[0]~input_o\ & (\data|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~3_combout\,
	datab => \i_addr[0]~input_o\,
	datac => \data|Mux8~0_combout\,
	datad => \data|Mux9~0_combout\,
	combout => \data|Mux8~4_combout\);

-- Location: LCCOMB_X19_Y23_N16
\data|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~5_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & ((\i_addr[5]~input_o\) # (!\i_addr[3]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & ((\i_addr[3]~input_o\) # (!\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~5_combout\);

-- Location: LCCOMB_X19_Y23_N10
\data|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~6_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[4]~input_o\ & (\i_addr[3]~input_o\ $ (!\i_addr[5]~input_o\)))) # (!\i_addr[2]~input_o\ & (\i_addr[3]~input_o\ & (\i_addr[4]~input_o\ & !\i_addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~6_combout\);

-- Location: LCCOMB_X19_Y23_N20
\data|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~7_combout\ = (\i_addr[2]~input_o\ & (!\i_addr[3]~input_o\ & (!\i_addr[4]~input_o\ & \i_addr[5]~input_o\))) # (!\i_addr[2]~input_o\ & (\i_addr[4]~input_o\ & (\i_addr[3]~input_o\ $ (!\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[2]~input_o\,
	datac => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~7_combout\);

-- Location: LCCOMB_X19_Y23_N2
\data|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~8_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[1]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[1]~input_o\ & (!\data|Mux8~6_combout\)) # (!\i_addr[1]~input_o\ & ((!\data|Mux8~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~6_combout\,
	datab => \data|Mux8~7_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[1]~input_o\,
	combout => \data|Mux8~8_combout\);

-- Location: LCCOMB_X19_Y23_N22
\data|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~10_combout\ = (\i_addr[0]~input_o\ & ((\data|Mux8~8_combout\ & (\data|Mux8~9_combout\)) # (!\data|Mux8~8_combout\ & ((!\data|Mux8~5_combout\))))) # (!\i_addr[0]~input_o\ & (((\data|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~9_combout\,
	datab => \data|Mux8~5_combout\,
	datac => \i_addr[0]~input_o\,
	datad => \data|Mux8~8_combout\,
	combout => \data|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y25_N20
\data|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~13_combout\ = (\i_addr[1]~input_o\ & (((\i_addr[2]~input_o\) # (!\i_addr[5]~input_o\)) # (!\i_addr[4]~input_o\))) # (!\i_addr[1]~input_o\ & ((\i_addr[5]~input_o\) # (\i_addr[4]~input_o\ $ (\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~13_combout\);

-- Location: LCCOMB_X19_Y25_N10
\data|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~12_combout\ = (\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ & (\i_addr[1]~input_o\ $ (\i_addr[5]~input_o\)))) # (!\i_addr[4]~input_o\ & (!\i_addr[2]~input_o\ & (\i_addr[1]~input_o\ $ (\i_addr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~12_combout\);

-- Location: LCCOMB_X19_Y25_N18
\data|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~14_combout\ = (\i_addr[0]~input_o\ & (((\i_addr[3]~input_o\)))) # (!\i_addr[0]~input_o\ & ((\i_addr[3]~input_o\ & ((!\data|Mux8~12_combout\))) # (!\i_addr[3]~input_o\ & (\data|Mux8~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux8~13_combout\,
	datac => \i_addr[3]~input_o\,
	datad => \data|Mux8~12_combout\,
	combout => \data|Mux8~14_combout\);

-- Location: LCCOMB_X19_Y25_N4
\data|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~15_combout\ = (\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ $ (((\i_addr[5]~input_o\) # (!\i_addr[1]~input_o\))))) # (!\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\ & (!\i_addr[2]~input_o\ & !\i_addr[5]~input_o\)) # (!\i_addr[1]~input_o\ & 
-- (\i_addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~15_combout\);

-- Location: LCCOMB_X19_Y25_N0
\data|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~11_combout\ = (\i_addr[4]~input_o\ & (\i_addr[2]~input_o\ $ (((\i_addr[1]~input_o\) # (!\i_addr[5]~input_o\))))) # (!\i_addr[4]~input_o\ & ((\i_addr[1]~input_o\ & (\i_addr[2]~input_o\ & \i_addr[5]~input_o\)) # (!\i_addr[1]~input_o\ & 
-- ((\i_addr[2]~input_o\) # (\i_addr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[4]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[2]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~11_combout\);

-- Location: LCCOMB_X19_Y25_N30
\data|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~16_combout\ = (\i_addr[0]~input_o\ & ((\data|Mux8~14_combout\ & (\data|Mux8~15_combout\)) # (!\data|Mux8~14_combout\ & ((\data|Mux8~11_combout\))))) # (!\i_addr[0]~input_o\ & (\data|Mux8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[0]~input_o\,
	datab => \data|Mux8~14_combout\,
	datac => \data|Mux8~15_combout\,
	datad => \data|Mux8~11_combout\,
	combout => \data|Mux8~16_combout\);

-- Location: LCCOMB_X17_Y24_N28
\data|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~17_combout\ = (\i_addr[7]~input_o\ & (((\i_addr[6]~input_o\)))) # (!\i_addr[7]~input_o\ & ((\i_addr[6]~input_o\ & (\data|Mux8~10_combout\)) # (!\i_addr[6]~input_o\ & ((\data|Mux8~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[7]~input_o\,
	datab => \data|Mux8~10_combout\,
	datac => \data|Mux8~16_combout\,
	datad => \i_addr[6]~input_o\,
	combout => \data|Mux8~17_combout\);

-- Location: LCCOMB_X17_Y24_N22
\data|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~18_combout\ = (\i_addr[3]~input_o\) # ((\i_addr[1]~input_o\ & (\i_addr[0]~input_o\ & !\i_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_addr[3]~input_o\,
	datab => \i_addr[1]~input_o\,
	datac => \i_addr[0]~input_o\,
	datad => \i_addr[2]~input_o\,
	combout => \data|Mux8~18_combout\);

-- Location: LCCOMB_X17_Y24_N16
\data|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~19_combout\ = (\data|Mux8~18_combout\) # ((\i_addr[4]~input_o\) # (\i_addr[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~18_combout\,
	datab => \i_addr[4]~input_o\,
	datad => \i_addr[5]~input_o\,
	combout => \data|Mux8~19_combout\);

-- Location: LCCOMB_X17_Y24_N10
\data|Mux8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~20_combout\ = (\data|Mux8~17_combout\ & (((!\data|Mux8~19_combout\) # (!\i_addr[7]~input_o\)))) # (!\data|Mux8~17_combout\ & (\data|Mux8~4_combout\ & (\i_addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux8~4_combout\,
	datab => \data|Mux8~17_combout\,
	datac => \i_addr[7]~input_o\,
	datad => \data|Mux8~19_combout\,
	combout => \data|Mux8~20_combout\);

-- Location: FF_X19_Y21_N19
\data|o_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK_sin~inputclkctrl_outclk\,
	asdata => \data|Mux8~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|o_data\(2));

-- Location: LCCOMB_X19_Y21_N14
\uut|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~0_combout\ = (\data|o_data\(0) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\data|o_data\(0) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT13\ & VCC))
-- \uut|Add0~1\ = CARRY((\data|o_data\(0) & \uut|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(0),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \uut|Add0~0_combout\,
	cout => \uut|Add0~1\);

-- Location: LCCOMB_X19_Y21_N16
\uut|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~2_combout\ = (\data|o_data\(1) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\uut|Add0~1\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\uut|Add0~1\)))) # (!\data|o_data\(1) & 
-- ((\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\uut|Add0~1\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\uut|Add0~1\) # (GND)))))
-- \uut|Add0~3\ = CARRY((\data|o_data\(1) & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\uut|Add0~1\)) # (!\data|o_data\(1) & ((!\uut|Add0~1\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(1),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \uut|Add0~1\,
	combout => \uut|Add0~2_combout\,
	cout => \uut|Add0~3\);

-- Location: LCCOMB_X19_Y21_N18
\uut|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~4_combout\ = ((\uut|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\data|o_data\(2) $ (!\uut|Add0~3\)))) # (GND)
-- \uut|Add0~5\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\data|o_data\(2)) # (!\uut|Add0~3\))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\data|o_data\(2) & !\uut|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \data|o_data\(2),
	datad => VCC,
	cin => \uut|Add0~3\,
	combout => \uut|Add0~4_combout\,
	cout => \uut|Add0~5\);

-- Location: LCCOMB_X19_Y21_N20
\uut|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~6_combout\ = (\data|o_data\(3) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\uut|Add0~5\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\uut|Add0~5\)))) # (!\data|o_data\(3) & 
-- ((\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\uut|Add0~5\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\uut|Add0~5\) # (GND)))))
-- \uut|Add0~7\ = CARRY((\data|o_data\(3) & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\uut|Add0~5\)) # (!\data|o_data\(3) & ((!\uut|Add0~5\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(3),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \uut|Add0~5\,
	combout => \uut|Add0~6_combout\,
	cout => \uut|Add0~7\);

-- Location: LCCOMB_X19_Y21_N22
\uut|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~8_combout\ = ((\uut|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\data|o_data\(4) $ (!\uut|Add0~7\)))) # (GND)
-- \uut|Add0~9\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\data|o_data\(4)) # (!\uut|Add0~7\))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\data|o_data\(4) & !\uut|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \data|o_data\(4),
	datad => VCC,
	cin => \uut|Add0~7\,
	combout => \uut|Add0~8_combout\,
	cout => \uut|Add0~9\);

-- Location: LCCOMB_X19_Y21_N24
\uut|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~10_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\data|o_data\(5) & (\uut|Add0~9\ & VCC)) # (!\data|o_data\(5) & (!\uut|Add0~9\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\data|o_data\(5) & (!\uut|Add0~9\)) # 
-- (!\data|o_data\(5) & ((\uut|Add0~9\) # (GND)))))
-- \uut|Add0~11\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\data|o_data\(5) & !\uut|Add0~9\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\uut|Add0~9\) # (!\data|o_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \data|o_data\(5),
	datad => VCC,
	cin => \uut|Add0~9\,
	combout => \uut|Add0~10_combout\,
	cout => \uut|Add0~11\);

-- Location: LCCOMB_X19_Y21_N26
\uut|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~12_combout\ = ((\data|o_data\(6) $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\uut|Add0~11\)))) # (GND)
-- \uut|Add0~13\ = CARRY((\data|o_data\(6) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\uut|Add0~11\))) # (!\data|o_data\(6) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\uut|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(6),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \uut|Add0~11\,
	combout => \uut|Add0~12_combout\,
	cout => \uut|Add0~13\);

-- Location: LCCOMB_X19_Y21_N28
\uut|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~14_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\data|o_data\(7) & (\uut|Add0~13\ & VCC)) # (!\data|o_data\(7) & (!\uut|Add0~13\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\data|o_data\(7) & (!\uut|Add0~13\)) # 
-- (!\data|o_data\(7) & ((\uut|Add0~13\) # (GND)))))
-- \uut|Add0~15\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\data|o_data\(7) & !\uut|Add0~13\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\uut|Add0~13\) # (!\data|o_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \data|o_data\(7),
	datad => VCC,
	cin => \uut|Add0~13\,
	combout => \uut|Add0~14_combout\,
	cout => \uut|Add0~15\);

-- Location: LCCOMB_X19_Y21_N30
\uut|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~16_combout\ = ((\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\data|o_data\(8) $ (!\uut|Add0~15\)))) # (GND)
-- \uut|Add0~17\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\data|o_data\(8)) # (!\uut|Add0~15\))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\data|o_data\(8) & !\uut|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \data|o_data\(8),
	datad => VCC,
	cin => \uut|Add0~15\,
	combout => \uut|Add0~16_combout\,
	cout => \uut|Add0~17\);

-- Location: LCCOMB_X19_Y20_N0
\uut|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~18_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\data|o_data\(3) & (\uut|Add0~17\ & VCC)) # (!\data|o_data\(3) & (!\uut|Add0~17\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\data|o_data\(3) & (!\uut|Add0~17\)) # 
-- (!\data|o_data\(3) & ((\uut|Add0~17\) # (GND)))))
-- \uut|Add0~19\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\data|o_data\(3) & !\uut|Add0~17\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\uut|Add0~17\) # (!\data|o_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \data|o_data\(3),
	datad => VCC,
	cin => \uut|Add0~17\,
	combout => \uut|Add0~18_combout\,
	cout => \uut|Add0~19\);

-- Location: LCCOMB_X19_Y20_N2
\uut|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~20_combout\ = ((\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\data|o_data\(10) $ (!\uut|Add0~19\)))) # (GND)
-- \uut|Add0~21\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\data|o_data\(10)) # (!\uut|Add0~19\))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\data|o_data\(10) & !\uut|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \data|o_data\(10),
	datad => VCC,
	cin => \uut|Add0~19\,
	combout => \uut|Add0~20_combout\,
	cout => \uut|Add0~21\);

-- Location: LCCOMB_X19_Y20_N4
\uut|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~22_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\data|o_data\(11) & (\uut|Add0~21\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~21\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\data|o_data\(11) & (!\uut|Add0~21\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~21\) # (GND)))))
-- \uut|Add0~23\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\data|o_data\(11) & !\uut|Add0~21\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\uut|Add0~21\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~21\,
	combout => \uut|Add0~22_combout\,
	cout => \uut|Add0~23\);

-- Location: LCCOMB_X19_Y20_N6
\uut|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~24_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\uut|Add0~23\)))) # (GND)
-- \uut|Add0~25\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\uut|Add0~23\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\uut|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \uut|Add0~23\,
	combout => \uut|Add0~24_combout\,
	cout => \uut|Add0~25\);

-- Location: LCCOMB_X19_Y20_N8
\uut|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~26_combout\ = (\data|o_data\(11) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\uut|Add0~25\ & VCC)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\uut|Add0~25\)))) # (!\data|o_data\(11) & 
-- ((\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\uut|Add0~25\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\uut|Add0~25\) # (GND)))))
-- \uut|Add0~27\ = CARRY((\data|o_data\(11) & (!\uut|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\uut|Add0~25\)) # (!\data|o_data\(11) & ((!\uut|Add0~25\) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \uut|Add0~25\,
	combout => \uut|Add0~26_combout\,
	cout => \uut|Add0~27\);

-- Location: LCCOMB_X19_Y20_N10
\uut|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~28_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\uut|Add0~27\)))) # (GND)
-- \uut|Add0~29\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\uut|Add0~27\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\uut|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \uut|Add0~27\,
	combout => \uut|Add0~28_combout\,
	cout => \uut|Add0~29\);

-- Location: LCCOMB_X19_Y20_N12
\uut|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~30_combout\ = (\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\data|o_data\(11) & (\uut|Add0~29\ & VCC)) # (!\data|o_data\(11) & (!\uut|Add0~29\)))) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\data|o_data\(11) & (!\uut|Add0~29\)) # 
-- (!\data|o_data\(11) & ((\uut|Add0~29\) # (GND)))))
-- \uut|Add0~31\ = CARRY((\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\data|o_data\(11) & !\uut|Add0~29\)) # (!\uut|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((!\uut|Add0~29\) # (!\data|o_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \data|o_data\(11),
	datad => VCC,
	cin => \uut|Add0~29\,
	combout => \uut|Add0~30_combout\,
	cout => \uut|Add0~31\);

-- Location: LCCOMB_X19_Y20_N14
\uut|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~32_combout\ = ((\data|o_data\(11) $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (!\uut|Add0~31\)))) # (GND)
-- \uut|Add0~33\ = CARRY((\data|o_data\(11) & ((\uut|Mult0|auto_generated|mac_out2~DATAOUT29\) # (!\uut|Add0~31\))) # (!\data|o_data\(11) & (\uut|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\uut|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datab => \uut|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \uut|Add0~31\,
	combout => \uut|Add0~32_combout\,
	cout => \uut|Add0~33\);

-- Location: LCCOMB_X19_Y20_N16
\uut|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Add0~34_combout\ = \data|o_data\(11) $ (\uut|Add0~33\ $ (\uut|Mult0|auto_generated|mac_out2~DATAOUT29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|o_data\(11),
	datad => \uut|Mult0|auto_generated|mac_out2~DATAOUT29\,
	cin => \uut|Add0~33\,
	combout => \uut|Add0~34_combout\);

-- Location: LCCOMB_X19_Y19_N24
\uut|reg.VA_prev[17]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[17]~_Duplicate_1feeder_combout\ = \uut|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector5~0_combout\,
	combout => \uut|reg.VA_prev[17]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y19_N25
\uut|reg.VA_prev[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[17]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[17]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y19_N2
\uut|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector23~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[17]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[17]~_Duplicate_1_q\,
	combout => \uut|Selector23~0_combout\);

-- Location: FF_X20_Y19_N3
\uut|reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector23~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(17));

-- Location: LCCOMB_X19_Y19_N14
\uut|reg.VA_prev[16]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[16]~_Duplicate_1feeder_combout\ = \uut|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector6~0_combout\,
	combout => \uut|reg.VA_prev[16]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y19_N15
\uut|reg.VA_prev[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[16]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[16]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y19_N0
\uut|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector24~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[16]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[16]~_Duplicate_1_q\,
	combout => \uut|Selector24~0_combout\);

-- Location: FF_X20_Y19_N1
\uut|reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector24~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(16));

-- Location: LCCOMB_X17_Y18_N30
\uut|reg.VA_prev[15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\ = \uut|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Selector7~0_combout\,
	combout => \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y18_N31
\uut|reg.VA_prev[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[15]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N26
\uut|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector25~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[15]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[15]~_Duplicate_1_q\,
	combout => \uut|Selector25~0_combout\);

-- Location: FF_X20_Y18_N27
\uut|reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector25~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(15));

-- Location: FF_X20_Y20_N29
\uut|reg.VA_prev[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector8~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N28
\uut|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector26~0_combout\ = (\uut|reg.VA_prev[14]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA_prev[14]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector26~0_combout\);

-- Location: FF_X20_Y18_N29
\uut|reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector26~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(14));

-- Location: LCCOMB_X17_Y18_N12
\uut|reg.VA_prev[13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[13]~_Duplicate_1feeder_combout\ = \uut|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector9~0_combout\,
	combout => \uut|reg.VA_prev[13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y18_N13
\uut|reg.VA_prev[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[13]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N14
\uut|Selector27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector27~1_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[13]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[13]~_Duplicate_1_q\,
	combout => \uut|Selector27~1_combout\);

-- Location: FF_X20_Y18_N15
\uut|reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector27~1_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(13));

-- Location: FF_X20_Y20_N25
\uut|reg.VA_prev[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector12~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N12
\uut|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector30~0_combout\ = (\uut|reg.VA_prev[10]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA_prev[10]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector30~0_combout\);

-- Location: FF_X20_Y18_N13
\uut|reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector30~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(10));

-- Location: FF_X20_Y20_N31
\uut|reg.VA_prev[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|Selector13~0_combout\,
	sload => VCC,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y19_N14
\uut|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector31~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[9]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datac => \uut|reg.VA_prev[9]~_Duplicate_1_q\,
	combout => \uut|Selector31~0_combout\);

-- Location: FF_X20_Y19_N15
\uut|reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector31~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(9));

-- Location: FF_X20_Y21_N13
\uut|reg.VA_prev[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector16~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N16
\uut|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector34~0_combout\ = (\uut|reg.VA_prev[6]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA_prev[6]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector34~0_combout\);

-- Location: FF_X20_Y18_N17
\uut|reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector34~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(6));

-- Location: LCCOMB_X17_Y18_N16
\uut|reg.VA_prev[1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\ = \uut|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Selector21~0_combout\,
	combout => \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y18_N17
\uut|reg.VA_prev[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA_prev[1]~_Duplicate_1feeder_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y18_N10
\uut|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector39~0_combout\ = (\uut|reg.state.CALCULATE~q\ & \uut|reg.VA_prev[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.CALCULATE~q\,
	datad => \uut|reg.VA_prev[1]~_Duplicate_1_q\,
	combout => \uut|Selector39~0_combout\);

-- Location: FF_X20_Y18_N11
\uut|reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector39~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(1));

-- Location: LCCOMB_X20_Y18_N24
\uut|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector40~0_combout\ = (\uut|reg.VA_prev[0]~_Duplicate_1_q\ & \uut|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA_prev[0]~_Duplicate_1_q\,
	datad => \uut|reg.state.CALCULATE~q\,
	combout => \uut|Selector40~0_combout\);

-- Location: FF_X20_Y18_N25
\uut|reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector40~0_combout\,
	ena => \uut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev2\(0));

-- Location: LCCOMB_X20_Y21_N14
\uut|reg.VA[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[0]~18_combout\ = (\uut|Add0~0_combout\ & ((GND) # (!\uut|reg.VA_prev2\(0)))) # (!\uut|Add0~0_combout\ & (\uut|reg.VA_prev2\(0) $ (GND)))
-- \uut|reg.VA[0]~19\ = CARRY((\uut|Add0~0_combout\) # (!\uut|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~0_combout\,
	datab => \uut|reg.VA_prev2\(0),
	datad => VCC,
	combout => \uut|reg.VA[0]~18_combout\,
	cout => \uut|reg.VA[0]~19\);

-- Location: LCCOMB_X20_Y21_N16
\uut|reg.VA[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[1]~20_combout\ = (\uut|Add0~2_combout\ & ((\uut|reg.VA_prev2\(1) & (!\uut|reg.VA[0]~19\)) # (!\uut|reg.VA_prev2\(1) & (\uut|reg.VA[0]~19\ & VCC)))) # (!\uut|Add0~2_combout\ & ((\uut|reg.VA_prev2\(1) & ((\uut|reg.VA[0]~19\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(1) & (!\uut|reg.VA[0]~19\))))
-- \uut|reg.VA[1]~21\ = CARRY((\uut|Add0~2_combout\ & (\uut|reg.VA_prev2\(1) & !\uut|reg.VA[0]~19\)) # (!\uut|Add0~2_combout\ & ((\uut|reg.VA_prev2\(1)) # (!\uut|reg.VA[0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~2_combout\,
	datab => \uut|reg.VA_prev2\(1),
	datad => VCC,
	cin => \uut|reg.VA[0]~19\,
	combout => \uut|reg.VA[1]~20_combout\,
	cout => \uut|reg.VA[1]~21\);

-- Location: LCCOMB_X20_Y21_N18
\uut|reg.VA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[2]~22_combout\ = ((\uut|reg.VA_prev2\(2) $ (\uut|Add0~4_combout\ $ (\uut|reg.VA[1]~21\)))) # (GND)
-- \uut|reg.VA[2]~23\ = CARRY((\uut|reg.VA_prev2\(2) & (\uut|Add0~4_combout\ & !\uut|reg.VA[1]~21\)) # (!\uut|reg.VA_prev2\(2) & ((\uut|Add0~4_combout\) # (!\uut|reg.VA[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(2),
	datab => \uut|Add0~4_combout\,
	datad => VCC,
	cin => \uut|reg.VA[1]~21\,
	combout => \uut|reg.VA[2]~22_combout\,
	cout => \uut|reg.VA[2]~23\);

-- Location: LCCOMB_X20_Y21_N20
\uut|reg.VA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[3]~24_combout\ = (\uut|reg.VA_prev2\(3) & ((\uut|Add0~6_combout\ & (!\uut|reg.VA[2]~23\)) # (!\uut|Add0~6_combout\ & ((\uut|reg.VA[2]~23\) # (GND))))) # (!\uut|reg.VA_prev2\(3) & ((\uut|Add0~6_combout\ & (\uut|reg.VA[2]~23\ & VCC)) # 
-- (!\uut|Add0~6_combout\ & (!\uut|reg.VA[2]~23\))))
-- \uut|reg.VA[3]~25\ = CARRY((\uut|reg.VA_prev2\(3) & ((!\uut|reg.VA[2]~23\) # (!\uut|Add0~6_combout\))) # (!\uut|reg.VA_prev2\(3) & (!\uut|Add0~6_combout\ & !\uut|reg.VA[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(3),
	datab => \uut|Add0~6_combout\,
	datad => VCC,
	cin => \uut|reg.VA[2]~23\,
	combout => \uut|reg.VA[3]~24_combout\,
	cout => \uut|reg.VA[3]~25\);

-- Location: LCCOMB_X20_Y21_N22
\uut|reg.VA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[4]~26_combout\ = ((\uut|reg.VA_prev2\(4) $ (\uut|Add0~8_combout\ $ (\uut|reg.VA[3]~25\)))) # (GND)
-- \uut|reg.VA[4]~27\ = CARRY((\uut|reg.VA_prev2\(4) & (\uut|Add0~8_combout\ & !\uut|reg.VA[3]~25\)) # (!\uut|reg.VA_prev2\(4) & ((\uut|Add0~8_combout\) # (!\uut|reg.VA[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(4),
	datab => \uut|Add0~8_combout\,
	datad => VCC,
	cin => \uut|reg.VA[3]~25\,
	combout => \uut|reg.VA[4]~26_combout\,
	cout => \uut|reg.VA[4]~27\);

-- Location: LCCOMB_X20_Y21_N24
\uut|reg.VA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[5]~28_combout\ = (\uut|reg.VA_prev2\(5) & ((\uut|Add0~10_combout\ & (!\uut|reg.VA[4]~27\)) # (!\uut|Add0~10_combout\ & ((\uut|reg.VA[4]~27\) # (GND))))) # (!\uut|reg.VA_prev2\(5) & ((\uut|Add0~10_combout\ & (\uut|reg.VA[4]~27\ & VCC)) # 
-- (!\uut|Add0~10_combout\ & (!\uut|reg.VA[4]~27\))))
-- \uut|reg.VA[5]~29\ = CARRY((\uut|reg.VA_prev2\(5) & ((!\uut|reg.VA[4]~27\) # (!\uut|Add0~10_combout\))) # (!\uut|reg.VA_prev2\(5) & (!\uut|Add0~10_combout\ & !\uut|reg.VA[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(5),
	datab => \uut|Add0~10_combout\,
	datad => VCC,
	cin => \uut|reg.VA[4]~27\,
	combout => \uut|reg.VA[5]~28_combout\,
	cout => \uut|reg.VA[5]~29\);

-- Location: LCCOMB_X20_Y21_N26
\uut|reg.VA[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[6]~30_combout\ = ((\uut|Add0~12_combout\ $ (\uut|reg.VA_prev2\(6) $ (\uut|reg.VA[5]~29\)))) # (GND)
-- \uut|reg.VA[6]~31\ = CARRY((\uut|Add0~12_combout\ & ((!\uut|reg.VA[5]~29\) # (!\uut|reg.VA_prev2\(6)))) # (!\uut|Add0~12_combout\ & (!\uut|reg.VA_prev2\(6) & !\uut|reg.VA[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~12_combout\,
	datab => \uut|reg.VA_prev2\(6),
	datad => VCC,
	cin => \uut|reg.VA[5]~29\,
	combout => \uut|reg.VA[6]~30_combout\,
	cout => \uut|reg.VA[6]~31\);

-- Location: LCCOMB_X20_Y21_N28
\uut|reg.VA[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[7]~32_combout\ = (\uut|reg.VA_prev2\(7) & ((\uut|Add0~14_combout\ & (!\uut|reg.VA[6]~31\)) # (!\uut|Add0~14_combout\ & ((\uut|reg.VA[6]~31\) # (GND))))) # (!\uut|reg.VA_prev2\(7) & ((\uut|Add0~14_combout\ & (\uut|reg.VA[6]~31\ & VCC)) # 
-- (!\uut|Add0~14_combout\ & (!\uut|reg.VA[6]~31\))))
-- \uut|reg.VA[7]~33\ = CARRY((\uut|reg.VA_prev2\(7) & ((!\uut|reg.VA[6]~31\) # (!\uut|Add0~14_combout\))) # (!\uut|reg.VA_prev2\(7) & (!\uut|Add0~14_combout\ & !\uut|reg.VA[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(7),
	datab => \uut|Add0~14_combout\,
	datad => VCC,
	cin => \uut|reg.VA[6]~31\,
	combout => \uut|reg.VA[7]~32_combout\,
	cout => \uut|reg.VA[7]~33\);

-- Location: LCCOMB_X20_Y21_N30
\uut|reg.VA[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[8]~34_combout\ = ((\uut|reg.VA_prev2\(8) $ (\uut|Add0~16_combout\ $ (\uut|reg.VA[7]~33\)))) # (GND)
-- \uut|reg.VA[8]~35\ = CARRY((\uut|reg.VA_prev2\(8) & (\uut|Add0~16_combout\ & !\uut|reg.VA[7]~33\)) # (!\uut|reg.VA_prev2\(8) & ((\uut|Add0~16_combout\) # (!\uut|reg.VA[7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(8),
	datab => \uut|Add0~16_combout\,
	datad => VCC,
	cin => \uut|reg.VA[7]~33\,
	combout => \uut|reg.VA[8]~34_combout\,
	cout => \uut|reg.VA[8]~35\);

-- Location: LCCOMB_X20_Y20_N0
\uut|reg.VA[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[9]~36_combout\ = (\uut|Add0~18_combout\ & ((\uut|reg.VA_prev2\(9) & (!\uut|reg.VA[8]~35\)) # (!\uut|reg.VA_prev2\(9) & (\uut|reg.VA[8]~35\ & VCC)))) # (!\uut|Add0~18_combout\ & ((\uut|reg.VA_prev2\(9) & ((\uut|reg.VA[8]~35\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(9) & (!\uut|reg.VA[8]~35\))))
-- \uut|reg.VA[9]~37\ = CARRY((\uut|Add0~18_combout\ & (\uut|reg.VA_prev2\(9) & !\uut|reg.VA[8]~35\)) # (!\uut|Add0~18_combout\ & ((\uut|reg.VA_prev2\(9)) # (!\uut|reg.VA[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~18_combout\,
	datab => \uut|reg.VA_prev2\(9),
	datad => VCC,
	cin => \uut|reg.VA[8]~35\,
	combout => \uut|reg.VA[9]~36_combout\,
	cout => \uut|reg.VA[9]~37\);

-- Location: LCCOMB_X20_Y20_N2
\uut|reg.VA[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[10]~38_combout\ = ((\uut|Add0~20_combout\ $ (\uut|reg.VA_prev2\(10) $ (\uut|reg.VA[9]~37\)))) # (GND)
-- \uut|reg.VA[10]~39\ = CARRY((\uut|Add0~20_combout\ & ((!\uut|reg.VA[9]~37\) # (!\uut|reg.VA_prev2\(10)))) # (!\uut|Add0~20_combout\ & (!\uut|reg.VA_prev2\(10) & !\uut|reg.VA[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~20_combout\,
	datab => \uut|reg.VA_prev2\(10),
	datad => VCC,
	cin => \uut|reg.VA[9]~37\,
	combout => \uut|reg.VA[10]~38_combout\,
	cout => \uut|reg.VA[10]~39\);

-- Location: LCCOMB_X20_Y20_N4
\uut|reg.VA[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[11]~40_combout\ = (\uut|reg.VA_prev2\(11) & ((\uut|Add0~22_combout\ & (!\uut|reg.VA[10]~39\)) # (!\uut|Add0~22_combout\ & ((\uut|reg.VA[10]~39\) # (GND))))) # (!\uut|reg.VA_prev2\(11) & ((\uut|Add0~22_combout\ & (\uut|reg.VA[10]~39\ & VCC)) # 
-- (!\uut|Add0~22_combout\ & (!\uut|reg.VA[10]~39\))))
-- \uut|reg.VA[11]~41\ = CARRY((\uut|reg.VA_prev2\(11) & ((!\uut|reg.VA[10]~39\) # (!\uut|Add0~22_combout\))) # (!\uut|reg.VA_prev2\(11) & (!\uut|Add0~22_combout\ & !\uut|reg.VA[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(11),
	datab => \uut|Add0~22_combout\,
	datad => VCC,
	cin => \uut|reg.VA[10]~39\,
	combout => \uut|reg.VA[11]~40_combout\,
	cout => \uut|reg.VA[11]~41\);

-- Location: LCCOMB_X20_Y20_N6
\uut|reg.VA[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[12]~42_combout\ = ((\uut|reg.VA_prev2\(12) $ (\uut|Add0~24_combout\ $ (\uut|reg.VA[11]~41\)))) # (GND)
-- \uut|reg.VA[12]~43\ = CARRY((\uut|reg.VA_prev2\(12) & (\uut|Add0~24_combout\ & !\uut|reg.VA[11]~41\)) # (!\uut|reg.VA_prev2\(12) & ((\uut|Add0~24_combout\) # (!\uut|reg.VA[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.VA_prev2\(12),
	datab => \uut|Add0~24_combout\,
	datad => VCC,
	cin => \uut|reg.VA[11]~41\,
	combout => \uut|reg.VA[12]~42_combout\,
	cout => \uut|reg.VA[12]~43\);

-- Location: LCCOMB_X20_Y20_N8
\uut|reg.VA[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[13]~44_combout\ = (\uut|Add0~26_combout\ & ((\uut|reg.VA_prev2\(13) & (!\uut|reg.VA[12]~43\)) # (!\uut|reg.VA_prev2\(13) & (\uut|reg.VA[12]~43\ & VCC)))) # (!\uut|Add0~26_combout\ & ((\uut|reg.VA_prev2\(13) & ((\uut|reg.VA[12]~43\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(13) & (!\uut|reg.VA[12]~43\))))
-- \uut|reg.VA[13]~45\ = CARRY((\uut|Add0~26_combout\ & (\uut|reg.VA_prev2\(13) & !\uut|reg.VA[12]~43\)) # (!\uut|Add0~26_combout\ & ((\uut|reg.VA_prev2\(13)) # (!\uut|reg.VA[12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~26_combout\,
	datab => \uut|reg.VA_prev2\(13),
	datad => VCC,
	cin => \uut|reg.VA[12]~43\,
	combout => \uut|reg.VA[13]~44_combout\,
	cout => \uut|reg.VA[13]~45\);

-- Location: LCCOMB_X20_Y20_N10
\uut|reg.VA[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[14]~46_combout\ = ((\uut|Add0~28_combout\ $ (\uut|reg.VA_prev2\(14) $ (\uut|reg.VA[13]~45\)))) # (GND)
-- \uut|reg.VA[14]~47\ = CARRY((\uut|Add0~28_combout\ & ((!\uut|reg.VA[13]~45\) # (!\uut|reg.VA_prev2\(14)))) # (!\uut|Add0~28_combout\ & (!\uut|reg.VA_prev2\(14) & !\uut|reg.VA[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~28_combout\,
	datab => \uut|reg.VA_prev2\(14),
	datad => VCC,
	cin => \uut|reg.VA[13]~45\,
	combout => \uut|reg.VA[14]~46_combout\,
	cout => \uut|reg.VA[14]~47\);

-- Location: LCCOMB_X20_Y20_N12
\uut|reg.VA[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[15]~48_combout\ = (\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15) & (!\uut|reg.VA[14]~47\)) # (!\uut|reg.VA_prev2\(15) & (\uut|reg.VA[14]~47\ & VCC)))) # (!\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15) & ((\uut|reg.VA[14]~47\) # (GND))) # 
-- (!\uut|reg.VA_prev2\(15) & (!\uut|reg.VA[14]~47\))))
-- \uut|reg.VA[15]~49\ = CARRY((\uut|Add0~30_combout\ & (\uut|reg.VA_prev2\(15) & !\uut|reg.VA[14]~47\)) # (!\uut|Add0~30_combout\ & ((\uut|reg.VA_prev2\(15)) # (!\uut|reg.VA[14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~30_combout\,
	datab => \uut|reg.VA_prev2\(15),
	datad => VCC,
	cin => \uut|reg.VA[14]~47\,
	combout => \uut|reg.VA[15]~48_combout\,
	cout => \uut|reg.VA[15]~49\);

-- Location: LCCOMB_X20_Y20_N14
\uut|reg.VA[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[16]~50_combout\ = ((\uut|Add0~32_combout\ $ (\uut|reg.VA_prev2\(16) $ (\uut|reg.VA[15]~49\)))) # (GND)
-- \uut|reg.VA[16]~51\ = CARRY((\uut|Add0~32_combout\ & ((!\uut|reg.VA[15]~49\) # (!\uut|reg.VA_prev2\(16)))) # (!\uut|Add0~32_combout\ & (!\uut|reg.VA_prev2\(16) & !\uut|reg.VA[15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~32_combout\,
	datab => \uut|reg.VA_prev2\(16),
	datad => VCC,
	cin => \uut|reg.VA[15]~49\,
	combout => \uut|reg.VA[16]~50_combout\,
	cout => \uut|reg.VA[16]~51\);

-- Location: LCCOMB_X20_Y20_N16
\uut|reg.VA[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.VA[17]~52_combout\ = \uut|Add0~34_combout\ $ (\uut|reg.VA[16]~51\ $ (!\uut|reg.VA_prev2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~34_combout\,
	datad => \uut|reg.VA_prev2\(17),
	cin => \uut|reg.VA[16]~51\,
	combout => \uut|reg.VA[17]~52_combout\);

-- Location: FF_X20_Y20_N17
\uut|reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[17]~52_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(17));

-- Location: LCCOMB_X20_Y20_N18
\uut|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector5~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(17),
	combout => \uut|Selector5~0_combout\);

-- Location: DSPMULT_X18_Y21_N0
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
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector22~1_combout\,
	dataa => \uut|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y21_N2
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

-- Location: FF_X20_Y20_N15
\uut|reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[16]~50_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(16));

-- Location: LCCOMB_X20_Y20_N20
\uut|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector6~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datac => \uut|reg.VA\(16),
	combout => \uut|Selector6~0_combout\);

-- Location: FF_X20_Y20_N13
\uut|reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[15]~48_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(15));

-- Location: LCCOMB_X17_Y20_N2
\uut|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector7~0_combout\ = (\uut|reg.VA\(15) & \uut|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA\(15),
	datad => \uut|reg.state.STORE~q\,
	combout => \uut|Selector7~0_combout\);

-- Location: FF_X20_Y20_N11
\uut|reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[14]~46_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(14));

-- Location: LCCOMB_X20_Y20_N28
\uut|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector8~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(14),
	combout => \uut|Selector8~0_combout\);

-- Location: FF_X20_Y20_N9
\uut|reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[13]~44_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(13));

-- Location: LCCOMB_X17_Y20_N8
\uut|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector9~0_combout\ = (\uut|reg.VA\(13) & \uut|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.VA\(13),
	datad => \uut|reg.state.STORE~q\,
	combout => \uut|Selector9~0_combout\);

-- Location: FF_X20_Y20_N7
\uut|reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[12]~42_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(12));

-- Location: LCCOMB_X20_Y20_N22
\uut|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector10~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(12),
	combout => \uut|Selector10~0_combout\);

-- Location: FF_X20_Y20_N5
\uut|reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[11]~40_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(11));

-- Location: LCCOMB_X20_Y20_N30
\uut|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector11~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datab => \uut|reg.VA\(11),
	combout => \uut|Selector11~0_combout\);

-- Location: FF_X20_Y20_N3
\uut|reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[10]~38_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(10));

-- Location: LCCOMB_X20_Y20_N24
\uut|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector12~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(10),
	combout => \uut|Selector12~0_combout\);

-- Location: FF_X20_Y20_N1
\uut|reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[9]~36_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(9));

-- Location: LCCOMB_X20_Y20_N26
\uut|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector13~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(9),
	combout => \uut|Selector13~0_combout\);

-- Location: FF_X20_Y21_N31
\uut|reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[8]~34_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(8));

-- Location: LCCOMB_X20_Y21_N8
\uut|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector14~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datac => \uut|reg.VA\(8),
	combout => \uut|Selector14~0_combout\);

-- Location: FF_X20_Y21_N29
\uut|reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[7]~32_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(7));

-- Location: LCCOMB_X20_Y21_N10
\uut|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector15~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(7),
	combout => \uut|Selector15~0_combout\);

-- Location: FF_X20_Y21_N27
\uut|reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[6]~30_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(6));

-- Location: LCCOMB_X20_Y21_N12
\uut|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector16~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datac => \uut|reg.VA\(6),
	combout => \uut|Selector16~0_combout\);

-- Location: FF_X20_Y21_N25
\uut|reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[5]~28_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(5));

-- Location: LCCOMB_X20_Y21_N6
\uut|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector17~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(5),
	combout => \uut|Selector17~0_combout\);

-- Location: FF_X20_Y21_N23
\uut|reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[4]~26_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(4));

-- Location: LCCOMB_X17_Y18_N24
\uut|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector18~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(4),
	combout => \uut|Selector18~0_combout\);

-- Location: FF_X20_Y21_N21
\uut|reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[3]~24_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(3));

-- Location: LCCOMB_X20_Y21_N0
\uut|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector19~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(3),
	combout => \uut|Selector19~0_combout\);

-- Location: FF_X20_Y21_N19
\uut|reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[2]~22_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(2));

-- Location: LCCOMB_X20_Y21_N2
\uut|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector20~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(2),
	combout => \uut|Selector20~0_combout\);

-- Location: FF_X20_Y21_N17
\uut|reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[1]~20_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(1));

-- Location: LCCOMB_X17_Y18_N2
\uut|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector21~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|reg.state.STORE~q\,
	datad => \uut|reg.VA\(1),
	combout => \uut|Selector21~0_combout\);

-- Location: FF_X20_Y21_N15
\uut|reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.VA[0]~18_combout\,
	ena => \uut|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA\(0));

-- Location: LCCOMB_X20_Y21_N4
\uut|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector22~0_combout\ = (\uut|reg.state.STORE~q\ & \uut|reg.VA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.STORE~q\,
	datac => \uut|reg.VA\(0),
	combout => \uut|Selector22~0_combout\);

-- Location: FF_X20_Y21_N5
\uut|reg.VA_prev[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector22~0_combout\,
	ena => \uut|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.VA_prev[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y18_N12
\uut|reg.result[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][0]~feeder_combout\ = \uut|reg.VA_prev[0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[0]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][0]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\uut|reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][0]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][0]~q\);

-- Location: DSPMULT_X18_Y18_N0
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
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~1_combout\,
	dataa => \uut|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y18_N2
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

-- Location: LCCOMB_X19_Y18_N14
\uut|r_Real[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[0]~18_combout\ = (\uut|reg.result[0][0]~q\ & ((GND) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT13\))) # (!\uut|reg.result[0][0]~q\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT13\ $ (GND)))
-- \uut|r_Real[0]~19\ = CARRY((\uut|reg.result[0][0]~q\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][0]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \uut|r_Real[0]~18_combout\,
	cout => \uut|r_Real[0]~19\);

-- Location: FF_X19_Y18_N15
\uut|r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[0]~18_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(0));

-- Location: LCCOMB_X19_Y18_N2
\uut|reg.result[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][1]~feeder_combout\ = \uut|reg.VA_prev[1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[1]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][1]~feeder_combout\);

-- Location: FF_X19_Y18_N3
\uut|reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][1]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][1]~q\);

-- Location: LCCOMB_X19_Y18_N16
\uut|r_Real[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[1]~20_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\uut|reg.result[0][1]~q\ & (!\uut|r_Real[0]~19\)) # (!\uut|reg.result[0][1]~q\ & ((\uut|r_Real[0]~19\) # (GND))))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\uut|reg.result[0][1]~q\ & (\uut|r_Real[0]~19\ & VCC)) # (!\uut|reg.result[0][1]~q\ & (!\uut|r_Real[0]~19\))))
-- \uut|r_Real[1]~21\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((!\uut|r_Real[0]~19\) # (!\uut|reg.result[0][1]~q\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\uut|reg.result[0][1]~q\ & !\uut|r_Real[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \uut|reg.result[0][1]~q\,
	datad => VCC,
	cin => \uut|r_Real[0]~19\,
	combout => \uut|r_Real[1]~20_combout\,
	cout => \uut|r_Real[1]~21\);

-- Location: FF_X19_Y18_N17
\uut|r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[1]~20_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(1));

-- Location: FF_X20_Y18_N9
\uut|reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[2]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][2]~q\);

-- Location: LCCOMB_X19_Y18_N18
\uut|r_Real[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[2]~22_combout\ = ((\uut|reg.result[0][2]~q\ $ (\uut|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\uut|r_Real[1]~21\)))) # (GND)
-- \uut|r_Real[2]~23\ = CARRY((\uut|reg.result[0][2]~q\ & ((!\uut|r_Real[1]~21\) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT15\))) # (!\uut|reg.result[0][2]~q\ & (!\uut|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\uut|r_Real[1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][2]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \uut|r_Real[1]~21\,
	combout => \uut|r_Real[2]~22_combout\,
	cout => \uut|r_Real[2]~23\);

-- Location: FF_X19_Y18_N19
\uut|r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[2]~22_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(2));

-- Location: FF_X20_Y18_N31
\uut|reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[3]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][3]~q\);

-- Location: LCCOMB_X19_Y18_N20
\uut|r_Real[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[3]~24_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\uut|reg.result[0][3]~q\ & (!\uut|r_Real[2]~23\)) # (!\uut|reg.result[0][3]~q\ & ((\uut|r_Real[2]~23\) # (GND))))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\uut|reg.result[0][3]~q\ & (\uut|r_Real[2]~23\ & VCC)) # (!\uut|reg.result[0][3]~q\ & (!\uut|r_Real[2]~23\))))
-- \uut|r_Real[3]~25\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((!\uut|r_Real[2]~23\) # (!\uut|reg.result[0][3]~q\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT16\ & (!\uut|reg.result[0][3]~q\ & !\uut|r_Real[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \uut|reg.result[0][3]~q\,
	datad => VCC,
	cin => \uut|r_Real[2]~23\,
	combout => \uut|r_Real[3]~24_combout\,
	cout => \uut|r_Real[3]~25\);

-- Location: FF_X19_Y18_N21
\uut|r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[3]~24_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(3));

-- Location: LCCOMB_X19_Y18_N4
\uut|reg.result[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][4]~feeder_combout\ = \uut|reg.VA_prev[4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[4]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][4]~feeder_combout\);

-- Location: FF_X19_Y18_N5
\uut|reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][4]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][4]~q\);

-- Location: LCCOMB_X19_Y18_N22
\uut|r_Real[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[4]~26_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\uut|reg.result[0][4]~q\ $ (\uut|r_Real[3]~25\)))) # (GND)
-- \uut|r_Real[4]~27\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT17\ & (\uut|reg.result[0][4]~q\ & !\uut|r_Real[3]~25\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\uut|reg.result[0][4]~q\) # (!\uut|r_Real[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \uut|reg.result[0][4]~q\,
	datad => VCC,
	cin => \uut|r_Real[3]~25\,
	combout => \uut|r_Real[4]~26_combout\,
	cout => \uut|r_Real[4]~27\);

-- Location: FF_X19_Y18_N23
\uut|r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[4]~26_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(4));

-- Location: LCCOMB_X19_Y18_N10
\uut|reg.result[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][5]~feeder_combout\ = \uut|reg.VA_prev[5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[5]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][5]~feeder_combout\);

-- Location: FF_X19_Y18_N11
\uut|reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][5]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][5]~q\);

-- Location: LCCOMB_X19_Y18_N24
\uut|r_Real[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[5]~28_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\uut|reg.result[0][5]~q\ & (!\uut|r_Real[4]~27\)) # (!\uut|reg.result[0][5]~q\ & ((\uut|r_Real[4]~27\) # (GND))))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\uut|reg.result[0][5]~q\ & (\uut|r_Real[4]~27\ & VCC)) # (!\uut|reg.result[0][5]~q\ & (!\uut|r_Real[4]~27\))))
-- \uut|r_Real[5]~29\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((!\uut|r_Real[4]~27\) # (!\uut|reg.result[0][5]~q\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT18\ & (!\uut|reg.result[0][5]~q\ & !\uut|r_Real[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \uut|reg.result[0][5]~q\,
	datad => VCC,
	cin => \uut|r_Real[4]~27\,
	combout => \uut|r_Real[5]~28_combout\,
	cout => \uut|r_Real[5]~29\);

-- Location: FF_X19_Y18_N25
\uut|r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[5]~28_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(5));

-- Location: FF_X19_Y18_N1
\uut|reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[6]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][6]~q\);

-- Location: LCCOMB_X19_Y18_N26
\uut|r_Real[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[6]~30_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\uut|reg.result[0][6]~q\ $ (\uut|r_Real[5]~29\)))) # (GND)
-- \uut|r_Real[6]~31\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\uut|reg.result[0][6]~q\ & !\uut|r_Real[5]~29\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\uut|reg.result[0][6]~q\) # (!\uut|r_Real[5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \uut|reg.result[0][6]~q\,
	datad => VCC,
	cin => \uut|r_Real[5]~29\,
	combout => \uut|r_Real[6]~30_combout\,
	cout => \uut|r_Real[6]~31\);

-- Location: FF_X19_Y18_N27
\uut|r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[6]~30_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(6));

-- Location: LCCOMB_X19_Y18_N6
\uut|reg.result[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][7]~feeder_combout\ = \uut|reg.VA_prev[7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[7]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][7]~feeder_combout\);

-- Location: FF_X19_Y18_N7
\uut|reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][7]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][7]~q\);

-- Location: LCCOMB_X19_Y18_N28
\uut|r_Real[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[7]~32_combout\ = (\uut|reg.result[0][7]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\uut|r_Real[6]~31\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & (\uut|r_Real[6]~31\ & VCC)))) # (!\uut|reg.result[0][7]~q\ & 
-- ((\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\uut|r_Real[6]~31\) # (GND))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\uut|r_Real[6]~31\))))
-- \uut|r_Real[7]~33\ = CARRY((\uut|reg.result[0][7]~q\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\uut|r_Real[6]~31\)) # (!\uut|reg.result[0][7]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\uut|r_Real[6]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][7]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \uut|r_Real[6]~31\,
	combout => \uut|r_Real[7]~32_combout\,
	cout => \uut|r_Real[7]~33\);

-- Location: FF_X19_Y18_N29
\uut|r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[7]~32_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(7));

-- Location: FF_X19_Y18_N9
\uut|reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[8]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][8]~q\);

-- Location: LCCOMB_X19_Y18_N30
\uut|r_Real[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[8]~34_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (\uut|reg.result[0][8]~q\ $ (\uut|r_Real[7]~33\)))) # (GND)
-- \uut|r_Real[8]~35\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & (\uut|reg.result[0][8]~q\ & !\uut|r_Real[7]~33\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\uut|reg.result[0][8]~q\) # (!\uut|r_Real[7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \uut|reg.result[0][8]~q\,
	datad => VCC,
	cin => \uut|r_Real[7]~33\,
	combout => \uut|r_Real[8]~34_combout\,
	cout => \uut|r_Real[8]~35\);

-- Location: FF_X19_Y18_N31
\uut|r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[8]~34_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(8));

-- Location: LCCOMB_X19_Y17_N30
\uut|reg.result[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][9]~feeder_combout\ = \uut|reg.VA_prev[9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[9]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][9]~feeder_combout\);

-- Location: FF_X19_Y17_N31
\uut|reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][9]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][9]~q\);

-- Location: LCCOMB_X19_Y17_N0
\uut|r_Real[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[9]~36_combout\ = (\uut|reg.result[0][9]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\uut|r_Real[8]~35\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & (\uut|r_Real[8]~35\ & VCC)))) # (!\uut|reg.result[0][9]~q\ & 
-- ((\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\uut|r_Real[8]~35\) # (GND))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\uut|r_Real[8]~35\))))
-- \uut|r_Real[9]~37\ = CARRY((\uut|reg.result[0][9]~q\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\uut|r_Real[8]~35\)) # (!\uut|reg.result[0][9]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT22\) # (!\uut|r_Real[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][9]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \uut|r_Real[8]~35\,
	combout => \uut|r_Real[9]~36_combout\,
	cout => \uut|r_Real[9]~37\);

-- Location: FF_X19_Y17_N1
\uut|r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[9]~36_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(9));

-- Location: LCCOMB_X19_Y17_N20
\uut|reg.result[0][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][10]~feeder_combout\ = \uut|reg.VA_prev[10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[10]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][10]~feeder_combout\);

-- Location: FF_X19_Y17_N21
\uut|reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][10]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][10]~q\);

-- Location: LCCOMB_X19_Y17_N2
\uut|r_Real[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[10]~38_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\uut|reg.result[0][10]~q\ $ (\uut|r_Real[9]~37\)))) # (GND)
-- \uut|r_Real[10]~39\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\uut|reg.result[0][10]~q\ & !\uut|r_Real[9]~37\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\uut|reg.result[0][10]~q\) # (!\uut|r_Real[9]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \uut|reg.result[0][10]~q\,
	datad => VCC,
	cin => \uut|r_Real[9]~37\,
	combout => \uut|r_Real[10]~38_combout\,
	cout => \uut|r_Real[10]~39\);

-- Location: FF_X19_Y17_N3
\uut|r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[10]~38_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(10));

-- Location: FF_X19_Y17_N27
\uut|reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[11]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][11]~q\);

-- Location: LCCOMB_X19_Y17_N4
\uut|r_Real[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[11]~40_combout\ = (\uut|reg.result[0][11]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\uut|r_Real[10]~39\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\uut|r_Real[10]~39\ & VCC)))) # (!\uut|reg.result[0][11]~q\ & 
-- ((\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\uut|r_Real[10]~39\) # (GND))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\uut|r_Real[10]~39\))))
-- \uut|r_Real[11]~41\ = CARRY((\uut|reg.result[0][11]~q\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT24\ & !\uut|r_Real[10]~39\)) # (!\uut|reg.result[0][11]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT24\) # (!\uut|r_Real[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][11]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \uut|r_Real[10]~39\,
	combout => \uut|r_Real[11]~40_combout\,
	cout => \uut|r_Real[11]~41\);

-- Location: FF_X19_Y17_N5
\uut|r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[11]~40_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(11));

-- Location: LCCOMB_X19_Y17_N28
\uut|reg.result[0][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][12]~feeder_combout\ = \uut|reg.VA_prev[12]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[12]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][12]~feeder_combout\);

-- Location: FF_X19_Y17_N29
\uut|reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][12]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][12]~q\);

-- Location: LCCOMB_X19_Y17_N6
\uut|r_Real[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[12]~42_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ $ (\uut|reg.result[0][12]~q\ $ (\uut|r_Real[11]~41\)))) # (GND)
-- \uut|r_Real[12]~43\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & (\uut|reg.result[0][12]~q\ & !\uut|r_Real[11]~41\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\uut|reg.result[0][12]~q\) # (!\uut|r_Real[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datab => \uut|reg.result[0][12]~q\,
	datad => VCC,
	cin => \uut|r_Real[11]~41\,
	combout => \uut|r_Real[12]~42_combout\,
	cout => \uut|r_Real[12]~43\);

-- Location: FF_X19_Y17_N7
\uut|r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[12]~42_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(12));

-- Location: FF_X19_Y17_N23
\uut|reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[13]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][13]~q\);

-- Location: LCCOMB_X19_Y17_N8
\uut|r_Real[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[13]~44_combout\ = (\uut|reg.result[0][13]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\uut|r_Real[12]~43\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\uut|r_Real[12]~43\ & VCC)))) # (!\uut|reg.result[0][13]~q\ & 
-- ((\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\uut|r_Real[12]~43\) # (GND))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\uut|r_Real[12]~43\))))
-- \uut|r_Real[13]~45\ = CARRY((\uut|reg.result[0][13]~q\ & (\uut|Mult1|auto_generated|mac_out2~DATAOUT26\ & !\uut|r_Real[12]~43\)) # (!\uut|reg.result[0][13]~q\ & ((\uut|Mult1|auto_generated|mac_out2~DATAOUT26\) # (!\uut|r_Real[12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.result[0][13]~q\,
	datab => \uut|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \uut|r_Real[12]~43\,
	combout => \uut|r_Real[13]~44_combout\,
	cout => \uut|r_Real[13]~45\);

-- Location: FF_X19_Y17_N9
\uut|r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[13]~44_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(13));

-- Location: LCCOMB_X19_Y17_N24
\uut|reg.result[0][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][14]~feeder_combout\ = \uut|reg.VA_prev[14]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[14]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][14]~feeder_combout\);

-- Location: FF_X19_Y17_N25
\uut|reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][14]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][14]~q\);

-- Location: LCCOMB_X19_Y17_N10
\uut|r_Real[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[14]~46_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ $ (\uut|reg.result[0][14]~q\ $ (\uut|r_Real[13]~45\)))) # (GND)
-- \uut|r_Real[14]~47\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & (\uut|reg.result[0][14]~q\ & !\uut|r_Real[13]~45\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\uut|reg.result[0][14]~q\) # (!\uut|r_Real[13]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \uut|reg.result[0][14]~q\,
	datad => VCC,
	cin => \uut|r_Real[13]~45\,
	combout => \uut|r_Real[14]~46_combout\,
	cout => \uut|r_Real[14]~47\);

-- Location: FF_X19_Y17_N11
\uut|r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[14]~46_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(14));

-- Location: FF_X19_Y17_N19
\uut|reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][15]~q\);

-- Location: LCCOMB_X19_Y17_N12
\uut|r_Real[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[15]~48_combout\ = (\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\uut|reg.result[0][15]~q\ & (!\uut|r_Real[14]~47\)) # (!\uut|reg.result[0][15]~q\ & ((\uut|r_Real[14]~47\) # (GND))))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\uut|reg.result[0][15]~q\ & (\uut|r_Real[14]~47\ & VCC)) # (!\uut|reg.result[0][15]~q\ & (!\uut|r_Real[14]~47\))))
-- \uut|r_Real[15]~49\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((!\uut|r_Real[14]~47\) # (!\uut|reg.result[0][15]~q\))) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\uut|reg.result[0][15]~q\ & !\uut|r_Real[14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datab => \uut|reg.result[0][15]~q\,
	datad => VCC,
	cin => \uut|r_Real[14]~47\,
	combout => \uut|r_Real[15]~48_combout\,
	cout => \uut|r_Real[15]~49\);

-- Location: FF_X19_Y17_N13
\uut|r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[15]~48_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(15));

-- Location: FF_X19_Y19_N21
\uut|reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \uut|reg.VA_prev[16]~_Duplicate_1_q\,
	sload => VCC,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][16]~q\);

-- Location: LCCOMB_X19_Y17_N14
\uut|r_Real[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[16]~50_combout\ = ((\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ $ (\uut|reg.result[0][16]~q\ $ (\uut|r_Real[15]~49\)))) # (GND)
-- \uut|r_Real[16]~51\ = CARRY((\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & (\uut|reg.result[0][16]~q\ & !\uut|r_Real[15]~49\)) # (!\uut|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\uut|reg.result[0][16]~q\) # (!\uut|r_Real[15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datab => \uut|reg.result[0][16]~q\,
	datad => VCC,
	cin => \uut|r_Real[15]~49\,
	combout => \uut|r_Real[16]~50_combout\,
	cout => \uut|r_Real[16]~51\);

-- Location: FF_X19_Y17_N15
\uut|r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[16]~50_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(16));

-- Location: LCCOMB_X19_Y19_N18
\uut|reg.result[0][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|reg.result[0][17]~feeder_combout\ = \uut|reg.VA_prev[17]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|reg.VA_prev[17]~_Duplicate_1_q\,
	combout => \uut|reg.result[0][17]~feeder_combout\);

-- Location: FF_X19_Y19_N19
\uut|reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|reg.result[0][17]~feeder_combout\,
	ena => \uut|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|reg.result[0][17]~q\);

-- Location: LCCOMB_X19_Y17_N16
\uut|r_Real[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Real[17]~52_combout\ = \uut|reg.result[0][17]~q\ $ (\uut|r_Real[16]~51\ $ (!\uut|Mult1|auto_generated|mac_out2~DATAOUT28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|reg.result[0][17]~q\,
	datad => \uut|Mult1|auto_generated|mac_out2~DATAOUT28\,
	cin => \uut|r_Real[16]~51\,
	combout => \uut|r_Real[17]~52_combout\);

-- Location: FF_X19_Y17_N17
\uut|r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Real[17]~52_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Real\(17));

-- Location: DSPMULT_X18_Y17_N0
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
	signa => VCC,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => \uut|Selector2~1_combout\,
	dataa => \uut|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \uut|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \uut|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y17_N2
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

-- Location: LCCOMB_X15_Y17_N0
\uut|r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[0]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT13\,
	combout => \uut|r_Imag[0]~feeder_combout\);

-- Location: FF_X15_Y17_N1
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

-- Location: LCCOMB_X17_Y17_N0
\uut|r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[1]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT14\,
	combout => \uut|r_Imag[1]~feeder_combout\);

-- Location: FF_X17_Y17_N1
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

-- Location: LCCOMB_X17_Y17_N26
\uut|r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[2]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT15\,
	combout => \uut|r_Imag[2]~feeder_combout\);

-- Location: FF_X17_Y17_N27
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

-- Location: LCCOMB_X17_Y17_N4
\uut|r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[3]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT16\,
	combout => \uut|r_Imag[3]~feeder_combout\);

-- Location: FF_X17_Y17_N5
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

-- Location: LCCOMB_X17_Y17_N2
\uut|r_Imag[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[4]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT17\,
	combout => \uut|r_Imag[4]~feeder_combout\);

-- Location: FF_X17_Y17_N3
\uut|r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[4]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(4));

-- Location: LCCOMB_X17_Y17_N24
\uut|r_Imag[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[5]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT18\,
	combout => \uut|r_Imag[5]~feeder_combout\);

-- Location: FF_X17_Y17_N25
\uut|r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[5]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(5));

-- Location: LCCOMB_X17_Y17_N18
\uut|r_Imag[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[6]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT19\,
	combout => \uut|r_Imag[6]~feeder_combout\);

-- Location: FF_X17_Y17_N19
\uut|r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[6]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(6));

-- Location: LCCOMB_X17_Y17_N20
\uut|r_Imag[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[7]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT20\,
	combout => \uut|r_Imag[7]~feeder_combout\);

-- Location: FF_X17_Y17_N21
\uut|r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[7]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(7));

-- Location: LCCOMB_X17_Y17_N14
\uut|r_Imag[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[8]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT21\,
	combout => \uut|r_Imag[8]~feeder_combout\);

-- Location: FF_X17_Y17_N15
\uut|r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[8]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(8));

-- Location: LCCOMB_X17_Y17_N12
\uut|r_Imag[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[9]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT22\,
	combout => \uut|r_Imag[9]~feeder_combout\);

-- Location: FF_X17_Y17_N13
\uut|r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[9]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(9));

-- Location: LCCOMB_X17_Y17_N6
\uut|r_Imag[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[10]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT23\,
	combout => \uut|r_Imag[10]~feeder_combout\);

-- Location: FF_X17_Y17_N7
\uut|r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[10]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(10));

-- Location: LCCOMB_X15_Y17_N18
\uut|r_Imag[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[11]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT24\,
	combout => \uut|r_Imag[11]~feeder_combout\);

-- Location: FF_X15_Y17_N19
\uut|r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[11]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(11));

-- Location: LCCOMB_X17_Y17_N28
\uut|r_Imag[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[12]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT25\,
	combout => \uut|r_Imag[12]~feeder_combout\);

-- Location: FF_X17_Y17_N29
\uut|r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[12]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(12));

-- Location: LCCOMB_X17_Y17_N22
\uut|r_Imag[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[13]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Mult2|auto_generated|mac_out2~DATAOUT26\,
	combout => \uut|r_Imag[13]~feeder_combout\);

-- Location: FF_X17_Y17_N23
\uut|r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[13]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(13));

-- Location: LCCOMB_X15_Y17_N12
\uut|r_Imag[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[14]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT27\,
	combout => \uut|r_Imag[14]~feeder_combout\);

-- Location: FF_X15_Y17_N13
\uut|r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[14]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(14));

-- Location: LCCOMB_X15_Y17_N26
\uut|r_Imag[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[15]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT27\,
	combout => \uut|r_Imag[15]~feeder_combout\);

-- Location: FF_X15_Y17_N27
\uut|r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[15]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(15));

-- Location: LCCOMB_X15_Y17_N24
\uut|r_Imag[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[16]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT27\,
	combout => \uut|r_Imag[16]~feeder_combout\);

-- Location: FF_X15_Y17_N25
\uut|r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[16]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(16));

-- Location: LCCOMB_X15_Y17_N22
\uut|r_Imag[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|r_Imag[17]~feeder_combout\ = \uut|Mult2|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|Mult2|auto_generated|mac_out2~DATAOUT27\,
	combout => \uut|r_Imag[17]~feeder_combout\);

-- Location: FF_X15_Y17_N23
\uut|r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|r_Imag[17]~feeder_combout\,
	ena => \uut|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|r_Imag\(17));

-- Location: LCCOMB_X17_Y16_N0
\uut|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uut|Selector4~0_combout\ = (\uut|reg.state.DONE~q\) # ((\uut|reg.state.IDLE~q\ & \uut|reg.done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|reg.state.IDLE~q\,
	datac => \uut|reg.done~q\,
	datad => \uut|reg.state.DONE~q\,
	combout => \uut|Selector4~0_combout\);

-- Location: FF_X17_Y16_N1
\uut|reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \uut|Selector4~0_combout\,
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

ww_o_NEW_RESULT <= \o_NEW_RESULT~output_o\;
END structure;


