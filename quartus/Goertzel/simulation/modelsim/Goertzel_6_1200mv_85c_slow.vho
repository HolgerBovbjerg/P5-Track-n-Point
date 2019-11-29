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

-- DATE "11/29/2019 09:58:13"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE Goertzel_data_type IS

TYPE o_DFT_17_0_type IS ARRAY (17 DOWNTO 0) OF std_logic;
TYPE o_DFT_17_0_1_0_type IS ARRAY (1 DOWNTO 0) OF o_DFT_17_0_type;
SUBTYPE o_DFT_type IS o_DFT_17_0_1_0_type;

END Goertzel_data_type;

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.GOERTZEL_DATA_TYPE.ALL;

ENTITY 	Goertzel IS
    PORT (
	i_CLK : IN std_logic;
	i_ENABLE : IN std_logic;
	i_SIG : IN IEEE.NUMERIC_STD.signed(11 DOWNTO 0);
	i_COEFF : IN IEEE.NUMERIC_STD.signed(17 DOWNTO 0);
	o_DFT : OUT o_DFT_type;
	o_NEW_RESULT : OUT std_logic
	);
END Goertzel;

-- Design Ports Information
-- o_DFT[0][0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][16]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[0][17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][12]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][13]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][14]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][15]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DFT[1][17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[9]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[10]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[12]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[14]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[15]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[16]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[17]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Goertzel IS
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
SIGNAL ww_i_ENABLE : std_logic;
SIGNAL ww_i_SIG : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_COEFF : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_DFT : o_DFT_type;
SIGNAL ww_o_NEW_RESULT : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \o_DFT[0][0]~output_o\ : std_logic;
SIGNAL \o_DFT[0][1]~output_o\ : std_logic;
SIGNAL \o_DFT[0][2]~output_o\ : std_logic;
SIGNAL \o_DFT[0][3]~output_o\ : std_logic;
SIGNAL \o_DFT[0][4]~output_o\ : std_logic;
SIGNAL \o_DFT[0][5]~output_o\ : std_logic;
SIGNAL \o_DFT[0][6]~output_o\ : std_logic;
SIGNAL \o_DFT[0][7]~output_o\ : std_logic;
SIGNAL \o_DFT[0][8]~output_o\ : std_logic;
SIGNAL \o_DFT[0][9]~output_o\ : std_logic;
SIGNAL \o_DFT[0][10]~output_o\ : std_logic;
SIGNAL \o_DFT[0][11]~output_o\ : std_logic;
SIGNAL \o_DFT[0][12]~output_o\ : std_logic;
SIGNAL \o_DFT[0][13]~output_o\ : std_logic;
SIGNAL \o_DFT[0][14]~output_o\ : std_logic;
SIGNAL \o_DFT[0][15]~output_o\ : std_logic;
SIGNAL \o_DFT[0][16]~output_o\ : std_logic;
SIGNAL \o_DFT[0][17]~output_o\ : std_logic;
SIGNAL \o_DFT[1][0]~output_o\ : std_logic;
SIGNAL \o_DFT[1][1]~output_o\ : std_logic;
SIGNAL \o_DFT[1][2]~output_o\ : std_logic;
SIGNAL \o_DFT[1][3]~output_o\ : std_logic;
SIGNAL \o_DFT[1][4]~output_o\ : std_logic;
SIGNAL \o_DFT[1][5]~output_o\ : std_logic;
SIGNAL \o_DFT[1][6]~output_o\ : std_logic;
SIGNAL \o_DFT[1][7]~output_o\ : std_logic;
SIGNAL \o_DFT[1][8]~output_o\ : std_logic;
SIGNAL \o_DFT[1][9]~output_o\ : std_logic;
SIGNAL \o_DFT[1][10]~output_o\ : std_logic;
SIGNAL \o_DFT[1][11]~output_o\ : std_logic;
SIGNAL \o_DFT[1][12]~output_o\ : std_logic;
SIGNAL \o_DFT[1][13]~output_o\ : std_logic;
SIGNAL \o_DFT[1][14]~output_o\ : std_logic;
SIGNAL \o_DFT[1][15]~output_o\ : std_logic;
SIGNAL \o_DFT[1][16]~output_o\ : std_logic;
SIGNAL \o_DFT[1][17]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \var~8_combout\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reg.state.DONE~feeder_combout\ : std_logic;
SIGNAL \reg.state.DONE~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \reg.state.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reg.state.CALCULATE~q\ : std_logic;
SIGNAL \reg.state.STORE~feeder_combout\ : std_logic;
SIGNAL \reg.state.STORE~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \var~7_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \var~6_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \var~5_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \var~9_combout\ : std_logic;
SIGNAL \reg.VA_prev[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[0]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[1]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[3]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[4]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[6]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_SIG[10]~input_o\ : std_logic;
SIGNAL \i_SIG[11]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[17]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_COEFF[0]~input_o\ : std_logic;
SIGNAL \i_COEFF[1]~input_o\ : std_logic;
SIGNAL \i_COEFF[2]~input_o\ : std_logic;
SIGNAL \i_COEFF[3]~input_o\ : std_logic;
SIGNAL \i_COEFF[4]~input_o\ : std_logic;
SIGNAL \i_COEFF[5]~input_o\ : std_logic;
SIGNAL \i_COEFF[6]~input_o\ : std_logic;
SIGNAL \i_COEFF[7]~input_o\ : std_logic;
SIGNAL \i_COEFF[8]~input_o\ : std_logic;
SIGNAL \i_COEFF[9]~input_o\ : std_logic;
SIGNAL \i_COEFF[10]~input_o\ : std_logic;
SIGNAL \i_COEFF[11]~input_o\ : std_logic;
SIGNAL \i_COEFF[12]~input_o\ : std_logic;
SIGNAL \i_COEFF[13]~input_o\ : std_logic;
SIGNAL \i_COEFF[14]~input_o\ : std_logic;
SIGNAL \i_COEFF[15]~input_o\ : std_logic;
SIGNAL \i_COEFF[16]~input_o\ : std_logic;
SIGNAL \i_COEFF[17]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \i_SIG[9]~input_o\ : std_logic;
SIGNAL \i_SIG[8]~input_o\ : std_logic;
SIGNAL \i_SIG[7]~input_o\ : std_logic;
SIGNAL \i_SIG[5]~input_o\ : std_logic;
SIGNAL \i_SIG[2]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \reg.VA_prev[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA_prev[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg.VA[0]~19\ : std_logic;
SIGNAL \reg.VA[1]~21\ : std_logic;
SIGNAL \reg.VA[2]~23\ : std_logic;
SIGNAL \reg.VA[3]~25\ : std_logic;
SIGNAL \reg.VA[4]~27\ : std_logic;
SIGNAL \reg.VA[5]~29\ : std_logic;
SIGNAL \reg.VA[6]~31\ : std_logic;
SIGNAL \reg.VA[7]~33\ : std_logic;
SIGNAL \reg.VA[8]~35\ : std_logic;
SIGNAL \reg.VA[9]~37\ : std_logic;
SIGNAL \reg.VA[10]~39\ : std_logic;
SIGNAL \reg.VA[11]~41\ : std_logic;
SIGNAL \reg.VA[12]~43\ : std_logic;
SIGNAL \reg.VA[13]~45\ : std_logic;
SIGNAL \reg.VA[14]~47\ : std_logic;
SIGNAL \reg.VA[15]~49\ : std_logic;
SIGNAL \reg.VA[16]~51\ : std_logic;
SIGNAL \reg.VA[17]~52_combout\ : std_logic;
SIGNAL \var~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \reg.VA[16]~50_combout\ : std_logic;
SIGNAL \var~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \reg.VA[15]~48_combout\ : std_logic;
SIGNAL \var~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \reg.VA[14]~46_combout\ : std_logic;
SIGNAL \var~23_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \reg.VA[13]~44_combout\ : std_logic;
SIGNAL \var~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \reg.VA[12]~42_combout\ : std_logic;
SIGNAL \var~21_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \reg.VA[11]~40_combout\ : std_logic;
SIGNAL \var~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \reg.VA[10]~38_combout\ : std_logic;
SIGNAL \var~19_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \reg.VA[9]~36_combout\ : std_logic;
SIGNAL \var~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \reg.VA[8]~34_combout\ : std_logic;
SIGNAL \var~17_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \reg.VA[7]~32_combout\ : std_logic;
SIGNAL \var~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \reg.VA[6]~30_combout\ : std_logic;
SIGNAL \var~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \reg.VA[5]~28_combout\ : std_logic;
SIGNAL \var~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \reg.VA[4]~26_combout\ : std_logic;
SIGNAL \var~13_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \reg.VA[3]~24_combout\ : std_logic;
SIGNAL \var~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \reg.VA[2]~22_combout\ : std_logic;
SIGNAL \var~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reg.VA[1]~20_combout\ : std_logic;
SIGNAL \var~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg.VA[0]~18_combout\ : std_logic;
SIGNAL \reg.result[0][0]~q\ : std_logic;
SIGNAL \reg.result[0][1]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][1]~q\ : std_logic;
SIGNAL \reg.result[0][2]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][2]~q\ : std_logic;
SIGNAL \reg.result[0][3]~q\ : std_logic;
SIGNAL \reg.result[0][4]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][4]~q\ : std_logic;
SIGNAL \reg.result[0][5]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][5]~q\ : std_logic;
SIGNAL \reg.result[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][6]~q\ : std_logic;
SIGNAL \reg.result[0][7]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][7]~q\ : std_logic;
SIGNAL \reg.result[0][8]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][8]~q\ : std_logic;
SIGNAL \reg.result[0][9]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][9]~q\ : std_logic;
SIGNAL \reg.result[0][10]~q\ : std_logic;
SIGNAL \reg.result[0][11]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][11]~q\ : std_logic;
SIGNAL \reg.result[0][12]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][12]~q\ : std_logic;
SIGNAL \reg.result[0][13]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][13]~q\ : std_logic;
SIGNAL \reg.result[0][14]~q\ : std_logic;
SIGNAL \reg.result[0][15]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][15]~q\ : std_logic;
SIGNAL \reg.result[0][16]~q\ : std_logic;
SIGNAL \reg.result[0][17]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][17]~q\ : std_logic;
SIGNAL \reg.result[1][0]~q\ : std_logic;
SIGNAL \reg.result[1][1]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][1]~q\ : std_logic;
SIGNAL \reg.result[1][2]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][2]~q\ : std_logic;
SIGNAL \reg.result[1][3]~q\ : std_logic;
SIGNAL \reg.result[1][4]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][4]~q\ : std_logic;
SIGNAL \reg.result[1][5]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][5]~q\ : std_logic;
SIGNAL \reg.result[1][6]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][6]~q\ : std_logic;
SIGNAL \reg.result[1][7]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][7]~q\ : std_logic;
SIGNAL \reg.result[1][8]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][8]~q\ : std_logic;
SIGNAL \reg.result[1][9]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][9]~q\ : std_logic;
SIGNAL \reg.result[1][10]~q\ : std_logic;
SIGNAL \reg.result[1][11]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][11]~q\ : std_logic;
SIGNAL \reg.result[1][12]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][12]~q\ : std_logic;
SIGNAL \reg.result[1][13]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][13]~q\ : std_logic;
SIGNAL \reg.result[1][14]~q\ : std_logic;
SIGNAL \reg.result[1][15]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][15]~q\ : std_logic;
SIGNAL \reg.result[1][16]~q\ : std_logic;
SIGNAL \reg.result[1][17]~feeder_combout\ : std_logic;
SIGNAL \reg.result[1][17]~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \reg.done~q\ : std_logic;
SIGNAL \reg.sample_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \reg.VA\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_SIG <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_SIG);
ww_i_COEFF <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_COEFF);
o_DFT <= ww_o_DFT;
o_NEW_RESULT <= ww_o_NEW_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Mult0|auto_generated|mac_mult1~DATAOUT34\ & \Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\var~26_combout\ & \var~25_combout\ & \var~24_combout\ & \var~23_combout\ & \var~22_combout\ & \var~21_combout\ & \var~20_combout\ & \var~19_combout\ & \var~18_combout\ & \var~17_combout\ & \var~16_combout\
& \var~15_combout\ & \var~14_combout\ & \var~13_combout\ & \var~12_combout\ & \var~11_combout\ & \var~10_combout\ & \var~9_combout\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\i_COEFF[17]~input_o\ & \i_COEFF[16]~input_o\ & \i_COEFF[15]~input_o\ & \i_COEFF[14]~input_o\ & \i_COEFF[13]~input_o\ & \i_COEFF[12]~input_o\ & \i_COEFF[11]~input_o\ & \i_COEFF[10]~input_o\ & 
\i_COEFF[9]~input_o\ & \i_COEFF[8]~input_o\ & \i_COEFF[7]~input_o\ & \i_COEFF[6]~input_o\ & \i_COEFF[5]~input_o\ & \i_COEFF[4]~input_o\ & \i_COEFF[3]~input_o\ & \i_COEFF[2]~input_o\ & \i_COEFF[1]~input_o\ & \i_COEFF[0]~input_o\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_DFT[0][0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][0]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][0]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\o_DFT[0][1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][1]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][1]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_DFT[0][2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][2]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][2]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_DFT[0][3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][3]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][3]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\o_DFT[0][4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][4]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\o_DFT[0][5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][5]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][5]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_DFT[0][6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][6]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][6]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\o_DFT[0][7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][7]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][7]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_DFT[0][8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][8]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][8]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\o_DFT[0][9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][9]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][9]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\o_DFT[0][10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][10]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][10]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\o_DFT[0][11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][11]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][11]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\o_DFT[0][12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][12]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][12]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\o_DFT[0][13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][13]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][13]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_DFT[0][14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][14]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][14]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\o_DFT[0][15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][15]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][15]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\o_DFT[0][16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][16]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][16]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_DFT[0][17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[0][17]~q\,
	devoe => ww_devoe,
	o => \o_DFT[0][17]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_DFT[1][0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][0]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_DFT[1][1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][1]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][1]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\o_DFT[1][2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][2]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_DFT[1][3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][3]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][3]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\o_DFT[1][4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][4]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][4]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\o_DFT[1][5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][5]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][5]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_DFT[1][6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][6]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][6]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\o_DFT[1][7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][7]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][7]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\o_DFT[1][8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][8]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][8]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\o_DFT[1][9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][9]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][9]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\o_DFT[1][10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][10]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][10]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_DFT[1][11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][11]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][11]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_DFT[1][12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][12]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][12]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\o_DFT[1][13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][13]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][13]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\o_DFT[1][14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][14]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][14]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\o_DFT[1][15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][15]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][15]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\o_DFT[1][16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][16]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][16]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_DFT[1][17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.result[1][17]~q\,
	devoe => ww_devoe,
	o => \o_DFT[1][17]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_NEW_RESULT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg.done~q\,
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

-- Location: LCCOMB_X37_Y3_N2
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \reg.sample_count\(0) $ (GND)
-- \Add2~1\ = CARRY(!\reg.sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X36_Y3_N6
\var~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~8_combout\ = (\Equal0~9_combout\) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datad => \Add2~0_combout\,
	combout => \var~8_combout\);

-- Location: IOIBUF_X32_Y0_N22
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: LCCOMB_X32_Y1_N30
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\reg.state.STORE~q\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.state.STORE~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X32_Y1_N28
\reg.state.DONE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.state.DONE~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector3~0_combout\,
	combout => \reg.state.DONE~feeder_combout\);

-- Location: FF_X32_Y1_N29
\reg.state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.state.DONE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.DONE~q\);

-- Location: LCCOMB_X32_Y1_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\reg.state.DONE~q\ & ((\i_ENABLE~input_o\) # (\reg.state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE~input_o\,
	datac => \reg.state.IDLE~q\,
	datad => \reg.state.DONE~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X32_Y1_N25
\reg.state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.IDLE~q\);

-- Location: LCCOMB_X32_Y1_N22
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\reg.state.STORE~q\ & (((!\reg.state.IDLE~q\ & \i_ENABLE~input_o\)) # (!\Equal0~9_combout\))) # (!\reg.state.STORE~q\ & (!\reg.state.IDLE~q\ & (\i_ENABLE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg.state.IDLE~q\,
	datac => \i_ENABLE~input_o\,
	datad => \Equal0~9_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X32_Y1_N23
\reg.state.CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.CALCULATE~q\);

-- Location: LCCOMB_X32_Y1_N20
\reg.state.STORE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.state.STORE~feeder_combout\ = \reg.state.CALCULATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.state.CALCULATE~q\,
	combout => \reg.state.STORE~feeder_combout\);

-- Location: FF_X32_Y1_N21
\reg.state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.state.STORE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.STORE~q\);

-- Location: FF_X36_Y3_N7
\reg.sample_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~8_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(0));

-- Location: LCCOMB_X37_Y3_N4
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\reg.sample_count\(1) & (!\Add2~1\)) # (!\reg.sample_count\(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\reg.sample_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X37_Y3_N5
\reg.sample_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(1));

-- Location: LCCOMB_X37_Y3_N6
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\reg.sample_count\(2) & (\Add2~3\ $ (GND))) # (!\reg.sample_count\(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\reg.sample_count\(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X37_Y3_N7
\reg.sample_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(2));

-- Location: LCCOMB_X37_Y3_N8
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\reg.sample_count\(3) & (!\Add2~5\)) # (!\reg.sample_count\(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\reg.sample_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X36_Y3_N10
\var~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~7_combout\ = (\Add2~6_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \var~7_combout\);

-- Location: FF_X36_Y3_N11
\reg.sample_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~7_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(3));

-- Location: LCCOMB_X37_Y3_N10
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\reg.sample_count\(4) & (\Add2~7\ $ (GND))) # (!\reg.sample_count\(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\reg.sample_count\(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X37_Y3_N11
\reg.sample_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(4));

-- Location: LCCOMB_X37_Y3_N12
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\reg.sample_count\(5) & (!\Add2~9\)) # (!\reg.sample_count\(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\reg.sample_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X37_Y3_N13
\reg.sample_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(5));

-- Location: LCCOMB_X37_Y3_N14
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\reg.sample_count\(6) & (\Add2~11\ $ (GND))) # (!\reg.sample_count\(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\reg.sample_count\(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X36_Y3_N12
\var~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~6_combout\ = (\Add2~12_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	datad => \Equal0~9_combout\,
	combout => \var~6_combout\);

-- Location: FF_X36_Y3_N13
\reg.sample_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~6_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(6));

-- Location: LCCOMB_X37_Y3_N16
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\reg.sample_count\(7) & (!\Add2~13\)) # (!\reg.sample_count\(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\reg.sample_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X36_Y3_N16
\var~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~5_combout\ = (!\Equal0~9_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datad => \Add2~14_combout\,
	combout => \var~5_combout\);

-- Location: FF_X36_Y3_N17
\reg.sample_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~5_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(7));

-- Location: LCCOMB_X37_Y3_N18
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\reg.sample_count\(8) & (\Add2~15\ $ (GND))) # (!\reg.sample_count\(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\reg.sample_count\(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X37_Y3_N19
\reg.sample_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(8));

-- Location: LCCOMB_X37_Y3_N20
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\reg.sample_count\(9) & (!\Add2~17\)) # (!\reg.sample_count\(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\reg.sample_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X37_Y3_N21
\reg.sample_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(9));

-- Location: LCCOMB_X37_Y3_N22
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\reg.sample_count\(10) & (\Add2~19\ $ (GND))) # (!\reg.sample_count\(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\reg.sample_count\(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X37_Y3_N23
\reg.sample_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(10));

-- Location: LCCOMB_X36_Y3_N22
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\reg.sample_count\(10) & (\reg.sample_count\(7) & (!\reg.sample_count\(9) & !\reg.sample_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(10),
	datab => \reg.sample_count\(7),
	datac => \reg.sample_count\(9),
	datad => \reg.sample_count\(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X36_Y3_N8
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\reg.sample_count\(6) & (!\reg.sample_count\(4) & (!\reg.sample_count\(5) & \reg.sample_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(6),
	datab => \reg.sample_count\(4),
	datac => \reg.sample_count\(5),
	datad => \reg.sample_count\(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X36_Y3_N4
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\reg.sample_count\(0) & (!\reg.sample_count\(2) & (\Equal0~7_combout\ & !\reg.sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(0),
	datab => \reg.sample_count\(2),
	datac => \Equal0~7_combout\,
	datad => \reg.sample_count\(1),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X37_Y3_N24
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\reg.sample_count\(11) & (!\Add2~21\)) # (!\reg.sample_count\(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\reg.sample_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X37_Y3_N25
\reg.sample_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(11));

-- Location: LCCOMB_X37_Y3_N26
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\reg.sample_count\(12) & (\Add2~23\ $ (GND))) # (!\reg.sample_count\(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\reg.sample_count\(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X37_Y3_N27
\reg.sample_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(12));

-- Location: LCCOMB_X37_Y3_N28
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\reg.sample_count\(13) & (!\Add2~25\)) # (!\reg.sample_count\(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\reg.sample_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X37_Y3_N29
\reg.sample_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(13));

-- Location: LCCOMB_X37_Y3_N30
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\reg.sample_count\(14) & (\Add2~27\ $ (GND))) # (!\reg.sample_count\(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\reg.sample_count\(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X37_Y3_N31
\reg.sample_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(14));

-- Location: LCCOMB_X37_Y3_N0
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\reg.sample_count\(12) & (!\reg.sample_count\(13) & (!\reg.sample_count\(14) & !\reg.sample_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(12),
	datab => \reg.sample_count\(13),
	datac => \reg.sample_count\(14),
	datad => \reg.sample_count\(11),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X37_Y2_N0
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\reg.sample_count\(15) & (!\Add2~29\)) # (!\reg.sample_count\(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\reg.sample_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X37_Y2_N1
\reg.sample_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(15));

-- Location: LCCOMB_X37_Y2_N2
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\reg.sample_count\(16) & (\Add2~31\ $ (GND))) # (!\reg.sample_count\(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\reg.sample_count\(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X37_Y2_N3
\reg.sample_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(16));

-- Location: LCCOMB_X37_Y2_N4
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\reg.sample_count\(17) & (!\Add2~33\)) # (!\reg.sample_count\(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\reg.sample_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X37_Y2_N5
\reg.sample_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(17));

-- Location: LCCOMB_X37_Y2_N6
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\reg.sample_count\(18) & (\Add2~35\ $ (GND))) # (!\reg.sample_count\(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\reg.sample_count\(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X37_Y2_N7
\reg.sample_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(18));

-- Location: LCCOMB_X37_Y2_N8
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\reg.sample_count\(19) & (!\Add2~37\)) # (!\reg.sample_count\(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\reg.sample_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X37_Y2_N9
\reg.sample_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(19));

-- Location: LCCOMB_X37_Y2_N10
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\reg.sample_count\(20) & (\Add2~39\ $ (GND))) # (!\reg.sample_count\(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\reg.sample_count\(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X37_Y2_N11
\reg.sample_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(20));

-- Location: LCCOMB_X37_Y2_N12
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\reg.sample_count\(21) & (!\Add2~41\)) # (!\reg.sample_count\(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\reg.sample_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X37_Y2_N13
\reg.sample_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(21));

-- Location: LCCOMB_X37_Y2_N14
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\reg.sample_count\(22) & (\Add2~43\ $ (GND))) # (!\reg.sample_count\(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\reg.sample_count\(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X37_Y2_N15
\reg.sample_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(22));

-- Location: LCCOMB_X36_Y2_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\reg.sample_count\(22) & (!\reg.sample_count\(21) & (!\reg.sample_count\(20) & !\reg.sample_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(22),
	datab => \reg.sample_count\(21),
	datac => \reg.sample_count\(20),
	datad => \reg.sample_count\(19),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X37_Y2_N16
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\reg.sample_count\(23) & (!\Add2~45\)) # (!\reg.sample_count\(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\reg.sample_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X37_Y2_N17
\reg.sample_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(23));

-- Location: LCCOMB_X37_Y2_N18
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\reg.sample_count\(24) & (\Add2~47\ $ (GND))) # (!\reg.sample_count\(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\reg.sample_count\(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X37_Y2_N19
\reg.sample_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(24));

-- Location: LCCOMB_X37_Y2_N20
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\reg.sample_count\(25) & (!\Add2~49\)) # (!\reg.sample_count\(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\reg.sample_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X37_Y2_N21
\reg.sample_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(25));

-- Location: LCCOMB_X37_Y2_N22
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\reg.sample_count\(26) & (\Add2~51\ $ (GND))) # (!\reg.sample_count\(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\reg.sample_count\(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X37_Y2_N23
\reg.sample_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(26));

-- Location: LCCOMB_X36_Y2_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\reg.sample_count\(26) & (!\reg.sample_count\(24) & (!\reg.sample_count\(25) & !\reg.sample_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(26),
	datab => \reg.sample_count\(24),
	datac => \reg.sample_count\(25),
	datad => \reg.sample_count\(23),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X36_Y2_N22
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\reg.sample_count\(17) & (!\reg.sample_count\(18) & (!\reg.sample_count\(15) & !\reg.sample_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(17),
	datab => \reg.sample_count\(18),
	datac => \reg.sample_count\(15),
	datad => \reg.sample_count\(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X37_Y2_N24
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\reg.sample_count\(27) & (!\Add2~53\)) # (!\reg.sample_count\(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\reg.sample_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X37_Y2_N25
\reg.sample_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(27));

-- Location: LCCOMB_X37_Y2_N26
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\reg.sample_count\(28) & (\Add2~55\ $ (GND))) # (!\reg.sample_count\(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\reg.sample_count\(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X37_Y2_N27
\reg.sample_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(28));

-- Location: LCCOMB_X37_Y2_N28
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\reg.sample_count\(29) & (!\Add2~57\)) # (!\reg.sample_count\(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\reg.sample_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X37_Y2_N29
\reg.sample_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(29));

-- Location: LCCOMB_X37_Y2_N30
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \reg.sample_count\(30) $ (!\Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(30),
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: FF_X37_Y2_N31
\reg.sample_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(30));

-- Location: LCCOMB_X36_Y2_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\reg.sample_count\(28) & (!\reg.sample_count\(27) & (!\reg.sample_count\(30) & !\reg.sample_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(28),
	datab => \reg.sample_count\(27),
	datac => \reg.sample_count\(30),
	datad => \reg.sample_count\(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y2_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X36_Y3_N18
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~8_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X32_Y2_N0
\var~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~9_combout\ = (!\Equal0~9_combout\ & \reg.VA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \reg.VA\(0),
	combout => \var~9_combout\);

-- Location: FF_X32_Y2_N1
\reg.VA_prev[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~9_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X41_Y15_N8
\i_SIG[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(0),
	o => \i_SIG[0]~input_o\);

-- Location: FF_X32_Y2_N7
\reg.VA_prev[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~10_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[1]~_Duplicate_1_q\);

-- Location: IOIBUF_X41_Y15_N1
\i_SIG[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(1),
	o => \i_SIG[1]~input_o\);

-- Location: FF_X32_Y2_N5
\reg.VA_prev[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~11_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[2]~_Duplicate_1_q\);

-- Location: IOIBUF_X41_Y2_N22
\i_SIG[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(3),
	o => \i_SIG[3]~input_o\);

-- Location: FF_X32_Y2_N13
\reg.VA_prev[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~13_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[4]~_Duplicate_1_q\);

-- Location: IOIBUF_X28_Y0_N22
\i_SIG[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(4),
	o => \i_SIG[4]~input_o\);

-- Location: LCCOMB_X35_Y2_N8
\reg.VA_prev[5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[5]~_Duplicate_1feeder_combout\ = \var~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \var~14_combout\,
	combout => \reg.VA_prev[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N9
\reg.VA_prev[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[5]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[5]~_Duplicate_1_q\);

-- Location: IOIBUF_X30_Y0_N8
\i_SIG[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(6),
	o => \i_SIG[6]~input_o\);

-- Location: FF_X32_Y2_N9
\reg.VA_prev[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~16_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y1_N10
\reg.VA_prev[9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[9]~_Duplicate_1feeder_combout\ = \var~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \var~18_combout\,
	combout => \reg.VA_prev[9]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y1_N11
\reg.VA_prev[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[9]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[9]~_Duplicate_1_q\);

-- Location: IOIBUF_X32_Y0_N15
\i_SIG[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(10),
	o => \i_SIG[10]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\i_SIG[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(11),
	o => \i_SIG[11]~input_o\);

-- Location: LCCOMB_X35_Y2_N28
\reg.VA_prev[13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[13]~_Duplicate_1feeder_combout\ = \var~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \var~22_combout\,
	combout => \reg.VA_prev[13]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N29
\reg.VA_prev[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[13]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y1_N18
\reg.VA_prev[14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[14]~_Duplicate_1feeder_combout\ = \var~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \var~23_combout\,
	combout => \reg.VA_prev[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y1_N19
\reg.VA_prev[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[14]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N2
\reg.VA_prev[15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[15]~_Duplicate_1feeder_combout\ = \var~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \var~24_combout\,
	combout => \reg.VA_prev[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N3
\reg.VA_prev[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[15]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[15]~_Duplicate_1_q\);

-- Location: FF_X35_Y1_N13
\reg.VA_prev[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~25_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[16]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N4
\reg.VA_prev[17]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[17]~_Duplicate_1feeder_combout\ = \var~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \var~26_combout\,
	combout => \reg.VA_prev[17]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N5
\reg.VA_prev[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[17]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[17]~_Duplicate_1_q\);

-- Location: IOIBUF_X35_Y0_N15
\i_COEFF[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(0),
	o => \i_COEFF[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\i_COEFF[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(1),
	o => \i_COEFF[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\i_COEFF[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(2),
	o => \i_COEFF[2]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\i_COEFF[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(3),
	o => \i_COEFF[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\i_COEFF[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(4),
	o => \i_COEFF[4]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\i_COEFF[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(5),
	o => \i_COEFF[5]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\i_COEFF[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(6),
	o => \i_COEFF[6]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\i_COEFF[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(7),
	o => \i_COEFF[7]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\i_COEFF[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(8),
	o => \i_COEFF[8]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\i_COEFF[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(9),
	o => \i_COEFF[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\i_COEFF[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(10),
	o => \i_COEFF[10]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\i_COEFF[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(11),
	o => \i_COEFF[11]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\i_COEFF[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(12),
	o => \i_COEFF[12]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\i_COEFF[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(13),
	o => \i_COEFF[13]~input_o\);

-- Location: IOIBUF_X41_Y5_N22
\i_COEFF[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(14),
	o => \i_COEFF[14]~input_o\);

-- Location: IOIBUF_X41_Y8_N15
\i_COEFF[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(15),
	o => \i_COEFF[15]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\i_COEFF[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(16),
	o => \i_COEFF[16]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\i_COEFF[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(17),
	o => \i_COEFF[17]~input_o\);

-- Location: DSPMULT_X34_Y2_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \reg.state.STORE~q\,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y2_N2
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X16_Y0_N1
\i_SIG[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(9),
	o => \i_SIG[9]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\i_SIG[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(8),
	o => \i_SIG[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\i_SIG[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(7),
	o => \i_SIG[7]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\i_SIG[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(5),
	o => \i_SIG[5]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\i_SIG[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(2),
	o => \i_SIG[2]~input_o\);

-- Location: LCCOMB_X33_Y2_N14
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\i_SIG[0]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\i_SIG[0]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\ & VCC))
-- \Add0~1\ = CARRY((\i_SIG[0]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[0]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X33_Y2_N16
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i_SIG[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\ & (\Add0~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\Add0~1\)))) # (!\i_SIG[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\Add0~1\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\i_SIG[1]~input_o\ & (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & !\Add0~1\)) # (!\i_SIG[1]~input_o\ & ((!\Add0~1\) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y2_N18
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\i_SIG[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\i_SIG[2]~input_o\) # (!\Add0~3\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & (\i_SIG[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \i_SIG[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X33_Y2_N20
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i_SIG[3]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT16\ & (\Add0~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\Add0~5\)))) # (!\i_SIG[3]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\Add0~5\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\i_SIG[3]~input_o\ & (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & !\Add0~5\)) # (!\i_SIG[3]~input_o\ & ((!\Add0~5\) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[3]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X33_Y2_N22
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\i_SIG[4]~input_o\ $ (\Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\i_SIG[4]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\Add0~7\))) # (!\i_SIG[4]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT17\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[4]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X33_Y2_N24
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\i_SIG[5]~input_o\ & (\Add0~9\ & VCC)) # (!\i_SIG[5]~input_o\ & (!\Add0~9\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\i_SIG[5]~input_o\ & (!\Add0~9\)) # (!\i_SIG[5]~input_o\ & 
-- ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\i_SIG[5]~input_o\ & !\Add0~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\Add0~9\) # (!\i_SIG[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \i_SIG[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X33_Y2_N26
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\i_SIG[6]~input_o\ $ (\Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\i_SIG[6]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\Add0~11\))) # (!\i_SIG[6]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[6]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X33_Y2_N28
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\i_SIG[7]~input_o\ & (\Add0~13\ & VCC)) # (!\i_SIG[7]~input_o\ & (!\Add0~13\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\i_SIG[7]~input_o\ & (!\Add0~13\)) # (!\i_SIG[7]~input_o\ 
-- & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\i_SIG[7]~input_o\ & !\Add0~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\Add0~13\) # (!\i_SIG[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \i_SIG[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X33_Y2_N30
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\i_SIG[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\i_SIG[8]~input_o\) # (!\Add0~15\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\i_SIG[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \i_SIG[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X33_Y1_N0
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\i_SIG[9]~input_o\ & (\Add0~17\ & VCC)) # (!\i_SIG[9]~input_o\ & (!\Add0~17\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\i_SIG[9]~input_o\ & (!\Add0~17\)) # (!\i_SIG[9]~input_o\ 
-- & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\i_SIG[9]~input_o\ & !\Add0~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\Add0~17\) # (!\i_SIG[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \i_SIG[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X33_Y1_N2
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\i_SIG[10]~input_o\ $ (\Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\i_SIG[10]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\Add0~19\))) # (!\i_SIG[10]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT23\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[10]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X33_Y1_N4
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT24\ & (\Add0~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\Add0~21\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\Add0~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & !\Add0~21\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~21\) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X33_Y1_N6
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\i_SIG[11]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\i_SIG[11]~input_o\) # (!\Add0~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & (\i_SIG[11]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X33_Y1_N8
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\i_SIG[11]~input_o\ & (\Add0~25\ & VCC)) # (!\i_SIG[11]~input_o\ & (!\Add0~25\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\i_SIG[11]~input_o\ & (!\Add0~25\)) # 
-- (!\i_SIG[11]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\i_SIG[11]~input_o\ & !\Add0~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\Add0~25\) # (!\i_SIG[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X33_Y1_N10
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\i_SIG[11]~input_o\ $ (\Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\Add0~27\))) # (!\i_SIG[11]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X33_Y1_N12
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT28\ & (\Add0~29\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\Add0~29\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT28\ & 
-- (!\Add0~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & !\Add0~29\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~29\) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X33_Y1_N14
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT29\ $ (\i_SIG[11]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\i_SIG[11]~input_o\) # (!\Add0~31\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & (\i_SIG[11]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X33_Y1_N16
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \i_SIG[11]~input_o\ $ (\Add0~33\ $ (\Mult0|auto_generated|mac_out2~DATAOUT30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_SIG[11]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	cin => \Add0~33\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X35_Y1_N16
\reg.VA_prev[12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[12]~_Duplicate_1feeder_combout\ = \var~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \var~21_combout\,
	combout => \reg.VA_prev[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y1_N17
\reg.VA_prev[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[12]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y1_N2
\reg.VA_prev[11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[11]~_Duplicate_1feeder_combout\ = \var~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \var~20_combout\,
	combout => \reg.VA_prev[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y1_N3
\reg.VA_prev[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[11]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y1_N8
\reg.VA_prev[10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[10]~_Duplicate_1feeder_combout\ = \var~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \var~19_combout\,
	combout => \reg.VA_prev[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y1_N9
\reg.VA_prev[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[10]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N10
\reg.VA_prev[8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[8]~_Duplicate_1feeder_combout\ = \var~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \var~17_combout\,
	combout => \reg.VA_prev[8]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N11
\reg.VA_prev[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[8]~_Duplicate_1feeder_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[8]~_Duplicate_1_q\);

-- Location: FF_X32_Y2_N11
\reg.VA_prev[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~15_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[6]~_Duplicate_1_q\);

-- Location: FF_X32_Y2_N3
\reg.VA_prev[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \var~12_combout\,
	ena => \reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y2_N14
\reg.VA[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[0]~18_combout\ = (\reg.VA_prev[0]~_Duplicate_1_q\ & (\Add0~0_combout\ $ (VCC))) # (!\reg.VA_prev[0]~_Duplicate_1_q\ & ((\Add0~0_combout\) # (GND)))
-- \reg.VA[0]~19\ = CARRY((\Add0~0_combout\) # (!\reg.VA_prev[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[0]~_Duplicate_1_q\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \reg.VA[0]~18_combout\,
	cout => \reg.VA[0]~19\);

-- Location: LCCOMB_X32_Y2_N16
\reg.VA[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[1]~20_combout\ = (\reg.VA_prev[1]~_Duplicate_1_q\ & ((\Add0~2_combout\ & (!\reg.VA[0]~19\)) # (!\Add0~2_combout\ & ((\reg.VA[0]~19\) # (GND))))) # (!\reg.VA_prev[1]~_Duplicate_1_q\ & ((\Add0~2_combout\ & (\reg.VA[0]~19\ & VCC)) # 
-- (!\Add0~2_combout\ & (!\reg.VA[0]~19\))))
-- \reg.VA[1]~21\ = CARRY((\reg.VA_prev[1]~_Duplicate_1_q\ & ((!\reg.VA[0]~19\) # (!\Add0~2_combout\))) # (!\reg.VA_prev[1]~_Duplicate_1_q\ & (!\Add0~2_combout\ & !\reg.VA[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[1]~_Duplicate_1_q\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \reg.VA[0]~19\,
	combout => \reg.VA[1]~20_combout\,
	cout => \reg.VA[1]~21\);

-- Location: LCCOMB_X32_Y2_N18
\reg.VA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[2]~22_combout\ = ((\reg.VA_prev[2]~_Duplicate_1_q\ $ (\Add0~4_combout\ $ (\reg.VA[1]~21\)))) # (GND)
-- \reg.VA[2]~23\ = CARRY((\reg.VA_prev[2]~_Duplicate_1_q\ & (\Add0~4_combout\ & !\reg.VA[1]~21\)) # (!\reg.VA_prev[2]~_Duplicate_1_q\ & ((\Add0~4_combout\) # (!\reg.VA[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[2]~_Duplicate_1_q\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \reg.VA[1]~21\,
	combout => \reg.VA[2]~22_combout\,
	cout => \reg.VA[2]~23\);

-- Location: LCCOMB_X32_Y2_N20
\reg.VA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[3]~24_combout\ = (\Add0~6_combout\ & ((\reg.VA_prev[3]~_Duplicate_1_q\ & (!\reg.VA[2]~23\)) # (!\reg.VA_prev[3]~_Duplicate_1_q\ & (\reg.VA[2]~23\ & VCC)))) # (!\Add0~6_combout\ & ((\reg.VA_prev[3]~_Duplicate_1_q\ & ((\reg.VA[2]~23\) # (GND))) # 
-- (!\reg.VA_prev[3]~_Duplicate_1_q\ & (!\reg.VA[2]~23\))))
-- \reg.VA[3]~25\ = CARRY((\Add0~6_combout\ & (\reg.VA_prev[3]~_Duplicate_1_q\ & !\reg.VA[2]~23\)) # (!\Add0~6_combout\ & ((\reg.VA_prev[3]~_Duplicate_1_q\) # (!\reg.VA[2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \reg.VA_prev[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[2]~23\,
	combout => \reg.VA[3]~24_combout\,
	cout => \reg.VA[3]~25\);

-- Location: LCCOMB_X32_Y2_N22
\reg.VA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[4]~26_combout\ = ((\reg.VA_prev[4]~_Duplicate_1_q\ $ (\Add0~8_combout\ $ (\reg.VA[3]~25\)))) # (GND)
-- \reg.VA[4]~27\ = CARRY((\reg.VA_prev[4]~_Duplicate_1_q\ & (\Add0~8_combout\ & !\reg.VA[3]~25\)) # (!\reg.VA_prev[4]~_Duplicate_1_q\ & ((\Add0~8_combout\) # (!\reg.VA[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[4]~_Duplicate_1_q\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \reg.VA[3]~25\,
	combout => \reg.VA[4]~26_combout\,
	cout => \reg.VA[4]~27\);

-- Location: LCCOMB_X32_Y2_N24
\reg.VA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[5]~28_combout\ = (\reg.VA_prev[5]~_Duplicate_1_q\ & ((\Add0~10_combout\ & (!\reg.VA[4]~27\)) # (!\Add0~10_combout\ & ((\reg.VA[4]~27\) # (GND))))) # (!\reg.VA_prev[5]~_Duplicate_1_q\ & ((\Add0~10_combout\ & (\reg.VA[4]~27\ & VCC)) # 
-- (!\Add0~10_combout\ & (!\reg.VA[4]~27\))))
-- \reg.VA[5]~29\ = CARRY((\reg.VA_prev[5]~_Duplicate_1_q\ & ((!\reg.VA[4]~27\) # (!\Add0~10_combout\))) # (!\reg.VA_prev[5]~_Duplicate_1_q\ & (!\Add0~10_combout\ & !\reg.VA[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[5]~_Duplicate_1_q\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \reg.VA[4]~27\,
	combout => \reg.VA[5]~28_combout\,
	cout => \reg.VA[5]~29\);

-- Location: LCCOMB_X32_Y2_N26
\reg.VA[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[6]~30_combout\ = ((\Add0~12_combout\ $ (\reg.VA_prev[6]~_Duplicate_1_q\ $ (\reg.VA[5]~29\)))) # (GND)
-- \reg.VA[6]~31\ = CARRY((\Add0~12_combout\ & ((!\reg.VA[5]~29\) # (!\reg.VA_prev[6]~_Duplicate_1_q\))) # (!\Add0~12_combout\ & (!\reg.VA_prev[6]~_Duplicate_1_q\ & !\reg.VA[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \reg.VA_prev[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[5]~29\,
	combout => \reg.VA[6]~30_combout\,
	cout => \reg.VA[6]~31\);

-- Location: LCCOMB_X32_Y2_N28
\reg.VA[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[7]~32_combout\ = (\reg.VA_prev[7]~_Duplicate_1_q\ & ((\Add0~14_combout\ & (!\reg.VA[6]~31\)) # (!\Add0~14_combout\ & ((\reg.VA[6]~31\) # (GND))))) # (!\reg.VA_prev[7]~_Duplicate_1_q\ & ((\Add0~14_combout\ & (\reg.VA[6]~31\ & VCC)) # 
-- (!\Add0~14_combout\ & (!\reg.VA[6]~31\))))
-- \reg.VA[7]~33\ = CARRY((\reg.VA_prev[7]~_Duplicate_1_q\ & ((!\reg.VA[6]~31\) # (!\Add0~14_combout\))) # (!\reg.VA_prev[7]~_Duplicate_1_q\ & (!\Add0~14_combout\ & !\reg.VA[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[7]~_Duplicate_1_q\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \reg.VA[6]~31\,
	combout => \reg.VA[7]~32_combout\,
	cout => \reg.VA[7]~33\);

-- Location: LCCOMB_X32_Y2_N30
\reg.VA[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[8]~34_combout\ = ((\Add0~16_combout\ $ (\reg.VA_prev[8]~_Duplicate_1_q\ $ (\reg.VA[7]~33\)))) # (GND)
-- \reg.VA[8]~35\ = CARRY((\Add0~16_combout\ & ((!\reg.VA[7]~33\) # (!\reg.VA_prev[8]~_Duplicate_1_q\))) # (!\Add0~16_combout\ & (!\reg.VA_prev[8]~_Duplicate_1_q\ & !\reg.VA[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \reg.VA_prev[8]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[7]~33\,
	combout => \reg.VA[8]~34_combout\,
	cout => \reg.VA[8]~35\);

-- Location: LCCOMB_X32_Y1_N0
\reg.VA[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[9]~36_combout\ = (\reg.VA_prev[9]~_Duplicate_1_q\ & ((\Add0~18_combout\ & (!\reg.VA[8]~35\)) # (!\Add0~18_combout\ & ((\reg.VA[8]~35\) # (GND))))) # (!\reg.VA_prev[9]~_Duplicate_1_q\ & ((\Add0~18_combout\ & (\reg.VA[8]~35\ & VCC)) # 
-- (!\Add0~18_combout\ & (!\reg.VA[8]~35\))))
-- \reg.VA[9]~37\ = CARRY((\reg.VA_prev[9]~_Duplicate_1_q\ & ((!\reg.VA[8]~35\) # (!\Add0~18_combout\))) # (!\reg.VA_prev[9]~_Duplicate_1_q\ & (!\Add0~18_combout\ & !\reg.VA[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[9]~_Duplicate_1_q\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \reg.VA[8]~35\,
	combout => \reg.VA[9]~36_combout\,
	cout => \reg.VA[9]~37\);

-- Location: LCCOMB_X32_Y1_N2
\reg.VA[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[10]~38_combout\ = ((\Add0~20_combout\ $ (\reg.VA_prev[10]~_Duplicate_1_q\ $ (\reg.VA[9]~37\)))) # (GND)
-- \reg.VA[10]~39\ = CARRY((\Add0~20_combout\ & ((!\reg.VA[9]~37\) # (!\reg.VA_prev[10]~_Duplicate_1_q\))) # (!\Add0~20_combout\ & (!\reg.VA_prev[10]~_Duplicate_1_q\ & !\reg.VA[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \reg.VA_prev[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[9]~37\,
	combout => \reg.VA[10]~38_combout\,
	cout => \reg.VA[10]~39\);

-- Location: LCCOMB_X32_Y1_N4
\reg.VA[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[11]~40_combout\ = (\Add0~22_combout\ & ((\reg.VA_prev[11]~_Duplicate_1_q\ & (!\reg.VA[10]~39\)) # (!\reg.VA_prev[11]~_Duplicate_1_q\ & (\reg.VA[10]~39\ & VCC)))) # (!\Add0~22_combout\ & ((\reg.VA_prev[11]~_Duplicate_1_q\ & ((\reg.VA[10]~39\) # 
-- (GND))) # (!\reg.VA_prev[11]~_Duplicate_1_q\ & (!\reg.VA[10]~39\))))
-- \reg.VA[11]~41\ = CARRY((\Add0~22_combout\ & (\reg.VA_prev[11]~_Duplicate_1_q\ & !\reg.VA[10]~39\)) # (!\Add0~22_combout\ & ((\reg.VA_prev[11]~_Duplicate_1_q\) # (!\reg.VA[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \reg.VA_prev[11]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[10]~39\,
	combout => \reg.VA[11]~40_combout\,
	cout => \reg.VA[11]~41\);

-- Location: LCCOMB_X32_Y1_N6
\reg.VA[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[12]~42_combout\ = ((\Add0~24_combout\ $ (\reg.VA_prev[12]~_Duplicate_1_q\ $ (\reg.VA[11]~41\)))) # (GND)
-- \reg.VA[12]~43\ = CARRY((\Add0~24_combout\ & ((!\reg.VA[11]~41\) # (!\reg.VA_prev[12]~_Duplicate_1_q\))) # (!\Add0~24_combout\ & (!\reg.VA_prev[12]~_Duplicate_1_q\ & !\reg.VA[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \reg.VA_prev[12]~_Duplicate_1_q\,
	datad => VCC,
	cin => \reg.VA[11]~41\,
	combout => \reg.VA[12]~42_combout\,
	cout => \reg.VA[12]~43\);

-- Location: LCCOMB_X32_Y1_N8
\reg.VA[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[13]~44_combout\ = (\reg.VA_prev[13]~_Duplicate_1_q\ & ((\Add0~26_combout\ & (!\reg.VA[12]~43\)) # (!\Add0~26_combout\ & ((\reg.VA[12]~43\) # (GND))))) # (!\reg.VA_prev[13]~_Duplicate_1_q\ & ((\Add0~26_combout\ & (\reg.VA[12]~43\ & VCC)) # 
-- (!\Add0~26_combout\ & (!\reg.VA[12]~43\))))
-- \reg.VA[13]~45\ = CARRY((\reg.VA_prev[13]~_Duplicate_1_q\ & ((!\reg.VA[12]~43\) # (!\Add0~26_combout\))) # (!\reg.VA_prev[13]~_Duplicate_1_q\ & (!\Add0~26_combout\ & !\reg.VA[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[13]~_Duplicate_1_q\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \reg.VA[12]~43\,
	combout => \reg.VA[13]~44_combout\,
	cout => \reg.VA[13]~45\);

-- Location: LCCOMB_X32_Y1_N10
\reg.VA[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[14]~46_combout\ = ((\reg.VA_prev[14]~_Duplicate_1_q\ $ (\Add0~28_combout\ $ (\reg.VA[13]~45\)))) # (GND)
-- \reg.VA[14]~47\ = CARRY((\reg.VA_prev[14]~_Duplicate_1_q\ & (\Add0~28_combout\ & !\reg.VA[13]~45\)) # (!\reg.VA_prev[14]~_Duplicate_1_q\ & ((\Add0~28_combout\) # (!\reg.VA[13]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[14]~_Duplicate_1_q\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \reg.VA[13]~45\,
	combout => \reg.VA[14]~46_combout\,
	cout => \reg.VA[14]~47\);

-- Location: LCCOMB_X32_Y1_N12
\reg.VA[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[15]~48_combout\ = (\reg.VA_prev[15]~_Duplicate_1_q\ & ((\Add0~30_combout\ & (!\reg.VA[14]~47\)) # (!\Add0~30_combout\ & ((\reg.VA[14]~47\) # (GND))))) # (!\reg.VA_prev[15]~_Duplicate_1_q\ & ((\Add0~30_combout\ & (\reg.VA[14]~47\ & VCC)) # 
-- (!\Add0~30_combout\ & (!\reg.VA[14]~47\))))
-- \reg.VA[15]~49\ = CARRY((\reg.VA_prev[15]~_Duplicate_1_q\ & ((!\reg.VA[14]~47\) # (!\Add0~30_combout\))) # (!\reg.VA_prev[15]~_Duplicate_1_q\ & (!\Add0~30_combout\ & !\reg.VA[14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[15]~_Duplicate_1_q\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \reg.VA[14]~47\,
	combout => \reg.VA[15]~48_combout\,
	cout => \reg.VA[15]~49\);

-- Location: LCCOMB_X32_Y1_N14
\reg.VA[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[16]~50_combout\ = ((\reg.VA_prev[16]~_Duplicate_1_q\ $ (\Add0~32_combout\ $ (\reg.VA[15]~49\)))) # (GND)
-- \reg.VA[16]~51\ = CARRY((\reg.VA_prev[16]~_Duplicate_1_q\ & (\Add0~32_combout\ & !\reg.VA[15]~49\)) # (!\reg.VA_prev[16]~_Duplicate_1_q\ & ((\Add0~32_combout\) # (!\reg.VA[15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[16]~_Duplicate_1_q\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \reg.VA[15]~49\,
	combout => \reg.VA[16]~50_combout\,
	cout => \reg.VA[16]~51\);

-- Location: LCCOMB_X32_Y1_N16
\reg.VA[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[17]~52_combout\ = \reg.VA_prev[17]~_Duplicate_1_q\ $ (\reg.VA[16]~51\ $ (!\Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA_prev[17]~_Duplicate_1_q\,
	datad => \Add0~34_combout\,
	cin => \reg.VA[16]~51\,
	combout => \reg.VA[17]~52_combout\);

-- Location: FF_X32_Y1_N17
\reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[17]~52_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(17));

-- Location: LCCOMB_X35_Y2_N22
\var~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~26_combout\ = (!\Equal0~9_combout\ & \reg.VA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \reg.VA\(17),
	combout => \var~26_combout\);

-- Location: FF_X32_Y1_N15
\reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[16]~50_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(16));

-- Location: LCCOMB_X35_Y1_N12
\var~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~25_combout\ = (\reg.VA\(16) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.VA\(16),
	datad => \Equal0~9_combout\,
	combout => \var~25_combout\);

-- Location: FF_X32_Y1_N13
\reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[15]~48_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(15));

-- Location: LCCOMB_X35_Y2_N12
\var~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~24_combout\ = (!\Equal0~9_combout\ & \reg.VA\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \reg.VA\(15),
	combout => \var~24_combout\);

-- Location: FF_X32_Y1_N11
\reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[14]~46_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(14));

-- Location: LCCOMB_X35_Y1_N6
\var~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~23_combout\ = (\reg.VA\(14) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.VA\(14),
	datad => \Equal0~9_combout\,
	combout => \var~23_combout\);

-- Location: FF_X32_Y1_N9
\reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[13]~44_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(13));

-- Location: LCCOMB_X35_Y2_N30
\var~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~22_combout\ = (!\Equal0~9_combout\ & \reg.VA\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \reg.VA\(13),
	combout => \var~22_combout\);

-- Location: FF_X32_Y1_N7
\reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[12]~42_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(12));

-- Location: LCCOMB_X35_Y1_N28
\var~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~21_combout\ = (\reg.VA\(12) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(12),
	datad => \Equal0~9_combout\,
	combout => \var~21_combout\);

-- Location: FF_X32_Y1_N5
\reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[11]~40_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(11));

-- Location: LCCOMB_X35_Y1_N14
\var~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~20_combout\ = (\reg.VA\(11) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.VA\(11),
	datad => \Equal0~9_combout\,
	combout => \var~20_combout\);

-- Location: FF_X32_Y1_N3
\reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[10]~38_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(10));

-- Location: LCCOMB_X35_Y1_N0
\var~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~19_combout\ = (\reg.VA\(10) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.VA\(10),
	datad => \Equal0~9_combout\,
	combout => \var~19_combout\);

-- Location: FF_X32_Y1_N1
\reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[9]~36_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(9));

-- Location: LCCOMB_X35_Y1_N22
\var~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~18_combout\ = (\reg.VA\(9) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.VA\(9),
	datad => \Equal0~9_combout\,
	combout => \var~18_combout\);

-- Location: FF_X32_Y2_N31
\reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[8]~34_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(8));

-- Location: LCCOMB_X35_Y2_N16
\var~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~17_combout\ = (!\Equal0~9_combout\ & \reg.VA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \reg.VA\(8),
	combout => \var~17_combout\);

-- Location: FF_X32_Y2_N29
\reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[7]~32_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(7));

-- Location: LCCOMB_X32_Y2_N8
\var~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~16_combout\ = (\reg.VA\(7) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA\(7),
	datac => \Equal0~9_combout\,
	combout => \var~16_combout\);

-- Location: FF_X32_Y2_N27
\reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[6]~30_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(6));

-- Location: LCCOMB_X32_Y2_N10
\var~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~15_combout\ = (!\Equal0~9_combout\ & \reg.VA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \reg.VA\(6),
	combout => \var~15_combout\);

-- Location: FF_X32_Y2_N25
\reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[5]~28_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(5));

-- Location: LCCOMB_X35_Y2_N14
\var~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~14_combout\ = (!\Equal0~9_combout\ & \reg.VA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \reg.VA\(5),
	combout => \var~14_combout\);

-- Location: FF_X32_Y2_N23
\reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[4]~26_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(4));

-- Location: LCCOMB_X32_Y2_N12
\var~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~13_combout\ = (!\Equal0~9_combout\ & \reg.VA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \reg.VA\(4),
	combout => \var~13_combout\);

-- Location: FF_X32_Y2_N21
\reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[3]~24_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(3));

-- Location: LCCOMB_X32_Y2_N2
\var~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~12_combout\ = (\reg.VA\(3) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA\(3),
	datac => \Equal0~9_combout\,
	combout => \var~12_combout\);

-- Location: FF_X32_Y2_N19
\reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[2]~22_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(2));

-- Location: LCCOMB_X32_Y2_N4
\var~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~11_combout\ = (\reg.VA\(2) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA\(2),
	datac => \Equal0~9_combout\,
	combout => \var~11_combout\);

-- Location: FF_X32_Y2_N17
\reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[1]~20_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(1));

-- Location: LCCOMB_X32_Y2_N6
\var~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \var~10_combout\ = (\reg.VA\(1) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA\(1),
	datac => \Equal0~9_combout\,
	combout => \var~10_combout\);

-- Location: FF_X32_Y2_N15
\reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[0]~18_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(0));

-- Location: FF_X31_Y2_N29
\reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(0),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][0]~q\);

-- Location: LCCOMB_X31_Y2_N30
\reg.result[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][1]~feeder_combout\ = \reg.VA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(1),
	combout => \reg.result[0][1]~feeder_combout\);

-- Location: FF_X31_Y2_N31
\reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][1]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][1]~q\);

-- Location: LCCOMB_X30_Y1_N28
\reg.result[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][2]~feeder_combout\ = \reg.VA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(2),
	combout => \reg.result[0][2]~feeder_combout\);

-- Location: FF_X30_Y1_N29
\reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][2]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][2]~q\);

-- Location: FF_X31_Y2_N17
\reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(3),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][3]~q\);

-- Location: LCCOMB_X31_Y2_N10
\reg.result[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][4]~feeder_combout\ = \reg.VA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(4),
	combout => \reg.result[0][4]~feeder_combout\);

-- Location: FF_X31_Y2_N11
\reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][4]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][4]~q\);

-- Location: LCCOMB_X33_Y2_N12
\reg.result[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][5]~feeder_combout\ = \reg.VA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(5),
	combout => \reg.result[0][5]~feeder_combout\);

-- Location: FF_X33_Y2_N13
\reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][5]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][5]~q\);

-- Location: LCCOMB_X31_Y2_N24
\reg.result[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][6]~feeder_combout\ = \reg.VA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(6),
	combout => \reg.result[0][6]~feeder_combout\);

-- Location: FF_X31_Y2_N25
\reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][6]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][6]~q\);

-- Location: LCCOMB_X31_Y2_N6
\reg.result[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][7]~feeder_combout\ = \reg.VA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(7),
	combout => \reg.result[0][7]~feeder_combout\);

-- Location: FF_X31_Y2_N7
\reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][7]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][7]~q\);

-- Location: LCCOMB_X35_Y2_N20
\reg.result[0][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][8]~feeder_combout\ = \reg.VA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(8),
	combout => \reg.result[0][8]~feeder_combout\);

-- Location: FF_X35_Y2_N21
\reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][8]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][8]~q\);

-- Location: LCCOMB_X33_Y1_N26
\reg.result[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][9]~feeder_combout\ = \reg.VA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(9),
	combout => \reg.result[0][9]~feeder_combout\);

-- Location: FF_X33_Y1_N27
\reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][9]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][9]~q\);

-- Location: FF_X35_Y1_N5
\reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(10),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][10]~q\);

-- Location: LCCOMB_X31_Y2_N12
\reg.result[0][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][11]~feeder_combout\ = \reg.VA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(11),
	combout => \reg.result[0][11]~feeder_combout\);

-- Location: FF_X31_Y2_N13
\reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][11]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][11]~q\);

-- Location: LCCOMB_X30_Y1_N2
\reg.result[0][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][12]~feeder_combout\ = \reg.VA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(12),
	combout => \reg.result[0][12]~feeder_combout\);

-- Location: FF_X30_Y1_N3
\reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][12]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][12]~q\);

-- Location: LCCOMB_X35_Y2_N18
\reg.result[0][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][13]~feeder_combout\ = \reg.VA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(13),
	combout => \reg.result[0][13]~feeder_combout\);

-- Location: FF_X35_Y2_N19
\reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][13]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][13]~q\);

-- Location: FF_X35_Y1_N31
\reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(14),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][14]~q\);

-- Location: LCCOMB_X35_Y2_N0
\reg.result[0][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][15]~feeder_combout\ = \reg.VA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(15),
	combout => \reg.result[0][15]~feeder_combout\);

-- Location: FF_X35_Y2_N1
\reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][15]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][15]~q\);

-- Location: FF_X35_Y1_N25
\reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(16),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][16]~q\);

-- Location: LCCOMB_X30_Y1_N20
\reg.result[0][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][17]~feeder_combout\ = \reg.VA\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(17),
	combout => \reg.result[0][17]~feeder_combout\);

-- Location: FF_X30_Y1_N21
\reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][17]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][17]~q\);

-- Location: FF_X31_Y2_N19
\reg.result[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(0),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][0]~q\);

-- Location: LCCOMB_X31_Y2_N20
\reg.result[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][1]~feeder_combout\ = \reg.VA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(1),
	combout => \reg.result[1][1]~feeder_combout\);

-- Location: FF_X31_Y2_N21
\reg.result[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][1]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][1]~q\);

-- Location: LCCOMB_X30_Y1_N22
\reg.result[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][2]~feeder_combout\ = \reg.VA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(2),
	combout => \reg.result[1][2]~feeder_combout\);

-- Location: FF_X30_Y1_N23
\reg.result[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][2]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][2]~q\);

-- Location: FF_X31_Y2_N27
\reg.result[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(3),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][3]~q\);

-- Location: LCCOMB_X31_Y2_N4
\reg.result[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][4]~feeder_combout\ = \reg.VA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(4),
	combout => \reg.result[1][4]~feeder_combout\);

-- Location: FF_X31_Y2_N5
\reg.result[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][4]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][4]~q\);

-- Location: LCCOMB_X35_Y2_N26
\reg.result[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][5]~feeder_combout\ = \reg.VA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(5),
	combout => \reg.result[1][5]~feeder_combout\);

-- Location: FF_X35_Y2_N27
\reg.result[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][5]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][5]~q\);

-- Location: LCCOMB_X31_Y2_N22
\reg.result[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][6]~feeder_combout\ = \reg.VA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(6),
	combout => \reg.result[1][6]~feeder_combout\);

-- Location: FF_X31_Y2_N23
\reg.result[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][6]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][6]~q\);

-- Location: LCCOMB_X31_Y2_N0
\reg.result[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][7]~feeder_combout\ = \reg.VA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(7),
	combout => \reg.result[1][7]~feeder_combout\);

-- Location: FF_X31_Y2_N1
\reg.result[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][7]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][7]~q\);

-- Location: LCCOMB_X35_Y2_N24
\reg.result[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][8]~feeder_combout\ = \reg.VA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(8),
	combout => \reg.result[1][8]~feeder_combout\);

-- Location: FF_X35_Y2_N25
\reg.result[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][8]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][8]~q\);

-- Location: LCCOMB_X33_Y1_N28
\reg.result[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][9]~feeder_combout\ = \reg.VA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(9),
	combout => \reg.result[1][9]~feeder_combout\);

-- Location: FF_X33_Y1_N29
\reg.result[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][9]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][9]~q\);

-- Location: FF_X30_Y1_N5
\reg.result[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(10),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][10]~q\);

-- Location: LCCOMB_X31_Y2_N14
\reg.result[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][11]~feeder_combout\ = \reg.VA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(11),
	combout => \reg.result[1][11]~feeder_combout\);

-- Location: FF_X31_Y2_N15
\reg.result[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][11]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][11]~q\);

-- Location: LCCOMB_X30_Y1_N14
\reg.result[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][12]~feeder_combout\ = \reg.VA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(12),
	combout => \reg.result[1][12]~feeder_combout\);

-- Location: FF_X30_Y1_N15
\reg.result[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][12]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][12]~q\);

-- Location: LCCOMB_X30_Y1_N24
\reg.result[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][13]~feeder_combout\ = \reg.VA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(13),
	combout => \reg.result[1][13]~feeder_combout\);

-- Location: FF_X30_Y1_N25
\reg.result[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][13]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][13]~q\);

-- Location: FF_X35_Y1_N27
\reg.result[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(14),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][14]~q\);

-- Location: LCCOMB_X35_Y2_N6
\reg.result[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][15]~feeder_combout\ = \reg.VA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(15),
	combout => \reg.result[1][15]~feeder_combout\);

-- Location: FF_X35_Y2_N7
\reg.result[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][15]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][15]~q\);

-- Location: FF_X35_Y1_N21
\reg.result[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(16),
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][16]~q\);

-- Location: LCCOMB_X30_Y1_N26
\reg.result[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[1][17]~feeder_combout\ = \reg.VA\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(17),
	combout => \reg.result[1][17]~feeder_combout\);

-- Location: FF_X30_Y1_N27
\reg.result[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[1][17]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[1][17]~q\);

-- Location: LCCOMB_X32_Y1_N26
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\reg.state.STORE~q\ & (((\reg.done~q\) # (\Equal0~9_combout\)))) # (!\reg.state.STORE~q\ & (\reg.state.IDLE~q\ & (\reg.done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg.state.IDLE~q\,
	datac => \reg.done~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X32_Y1_N27
\reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.done~q\);

ww_o_DFT(0)(0) <= \o_DFT[0][0]~output_o\;

ww_o_DFT(0)(1) <= \o_DFT[0][1]~output_o\;

ww_o_DFT(0)(2) <= \o_DFT[0][2]~output_o\;

ww_o_DFT(0)(3) <= \o_DFT[0][3]~output_o\;

ww_o_DFT(0)(4) <= \o_DFT[0][4]~output_o\;

ww_o_DFT(0)(5) <= \o_DFT[0][5]~output_o\;

ww_o_DFT(0)(6) <= \o_DFT[0][6]~output_o\;

ww_o_DFT(0)(7) <= \o_DFT[0][7]~output_o\;

ww_o_DFT(0)(8) <= \o_DFT[0][8]~output_o\;

ww_o_DFT(0)(9) <= \o_DFT[0][9]~output_o\;

ww_o_DFT(0)(10) <= \o_DFT[0][10]~output_o\;

ww_o_DFT(0)(11) <= \o_DFT[0][11]~output_o\;

ww_o_DFT(0)(12) <= \o_DFT[0][12]~output_o\;

ww_o_DFT(0)(13) <= \o_DFT[0][13]~output_o\;

ww_o_DFT(0)(14) <= \o_DFT[0][14]~output_o\;

ww_o_DFT(0)(15) <= \o_DFT[0][15]~output_o\;

ww_o_DFT(0)(16) <= \o_DFT[0][16]~output_o\;

ww_o_DFT(0)(17) <= \o_DFT[0][17]~output_o\;

ww_o_DFT(1)(0) <= \o_DFT[1][0]~output_o\;

ww_o_DFT(1)(1) <= \o_DFT[1][1]~output_o\;

ww_o_DFT(1)(2) <= \o_DFT[1][2]~output_o\;

ww_o_DFT(1)(3) <= \o_DFT[1][3]~output_o\;

ww_o_DFT(1)(4) <= \o_DFT[1][4]~output_o\;

ww_o_DFT(1)(5) <= \o_DFT[1][5]~output_o\;

ww_o_DFT(1)(6) <= \o_DFT[1][6]~output_o\;

ww_o_DFT(1)(7) <= \o_DFT[1][7]~output_o\;

ww_o_DFT(1)(8) <= \o_DFT[1][8]~output_o\;

ww_o_DFT(1)(9) <= \o_DFT[1][9]~output_o\;

ww_o_DFT(1)(10) <= \o_DFT[1][10]~output_o\;

ww_o_DFT(1)(11) <= \o_DFT[1][11]~output_o\;

ww_o_DFT(1)(12) <= \o_DFT[1][12]~output_o\;

ww_o_DFT(1)(13) <= \o_DFT[1][13]~output_o\;

ww_o_DFT(1)(14) <= \o_DFT[1][14]~output_o\;

ww_o_DFT(1)(15) <= \o_DFT[1][15]~output_o\;

ww_o_DFT(1)(16) <= \o_DFT[1][16]~output_o\;

ww_o_DFT(1)(17) <= \o_DFT[1][17]~output_o\;

ww_o_NEW_RESULT <= \o_NEW_RESULT~output_o\;
END structure;


