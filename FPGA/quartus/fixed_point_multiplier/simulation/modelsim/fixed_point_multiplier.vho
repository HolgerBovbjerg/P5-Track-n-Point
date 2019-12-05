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

-- DATE "12/04/2019 23:52:17"

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

ENTITY 	fixed_point_multiplier IS
    PORT (
	i_clk : IN std_logic;
	i_enable : IN std_logic;
	i_A : IN std_logic_vector(11 DOWNTO 0);
	i_B : IN std_logic_vector(26 DOWNTO 0);
	o_result : OUT std_logic_vector(26 DOWNTO 0)
	);
END fixed_point_multiplier;

-- Design Ports Information
-- o_result[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[5]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[8]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[10]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[11]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[13]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[14]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[16]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[17]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[20]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[21]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[23]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[24]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[25]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[26]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[11]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[13]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[18]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[19]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[20]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[21]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[22]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[24]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[25]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[26]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fixed_point_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_enable : std_logic;
SIGNAL ww_i_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_result : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~13\ : std_logic;
SIGNAL \o_result[0]~output_o\ : std_logic;
SIGNAL \o_result[1]~output_o\ : std_logic;
SIGNAL \o_result[2]~output_o\ : std_logic;
SIGNAL \o_result[3]~output_o\ : std_logic;
SIGNAL \o_result[4]~output_o\ : std_logic;
SIGNAL \o_result[5]~output_o\ : std_logic;
SIGNAL \o_result[6]~output_o\ : std_logic;
SIGNAL \o_result[7]~output_o\ : std_logic;
SIGNAL \o_result[8]~output_o\ : std_logic;
SIGNAL \o_result[9]~output_o\ : std_logic;
SIGNAL \o_result[10]~output_o\ : std_logic;
SIGNAL \o_result[11]~output_o\ : std_logic;
SIGNAL \o_result[12]~output_o\ : std_logic;
SIGNAL \o_result[13]~output_o\ : std_logic;
SIGNAL \o_result[14]~output_o\ : std_logic;
SIGNAL \o_result[15]~output_o\ : std_logic;
SIGNAL \o_result[16]~output_o\ : std_logic;
SIGNAL \o_result[17]~output_o\ : std_logic;
SIGNAL \o_result[18]~output_o\ : std_logic;
SIGNAL \o_result[19]~output_o\ : std_logic;
SIGNAL \o_result[20]~output_o\ : std_logic;
SIGNAL \o_result[21]~output_o\ : std_logic;
SIGNAL \o_result[22]~output_o\ : std_logic;
SIGNAL \o_result[23]~output_o\ : std_logic;
SIGNAL \o_result[24]~output_o\ : std_logic;
SIGNAL \o_result[25]~output_o\ : std_logic;
SIGNAL \o_result[26]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \i_B[8]~input_o\ : std_logic;
SIGNAL \i_B[9]~input_o\ : std_logic;
SIGNAL \i_B[10]~input_o\ : std_logic;
SIGNAL \i_B[11]~input_o\ : std_logic;
SIGNAL \i_B[12]~input_o\ : std_logic;
SIGNAL \i_B[13]~input_o\ : std_logic;
SIGNAL \i_B[14]~input_o\ : std_logic;
SIGNAL \i_B[15]~input_o\ : std_logic;
SIGNAL \i_B[16]~input_o\ : std_logic;
SIGNAL \i_B[17]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \i_A[8]~input_o\ : std_logic;
SIGNAL \i_A[9]~input_o\ : std_logic;
SIGNAL \i_A[10]~input_o\ : std_logic;
SIGNAL \i_A[11]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \r_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \r_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \r_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \r_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \i_B[18]~input_o\ : std_logic;
SIGNAL \i_B[19]~input_o\ : std_logic;
SIGNAL \i_B[20]~input_o\ : std_logic;
SIGNAL \i_B[21]~input_o\ : std_logic;
SIGNAL \i_B[22]~input_o\ : std_logic;
SIGNAL \i_B[23]~input_o\ : std_logic;
SIGNAL \i_B[24]~input_o\ : std_logic;
SIGNAL \i_B[25]~input_o\ : std_logic;
SIGNAL \i_B[26]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \r_DATA[25]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|w239w\ : std_logic_vector(40 DOWNTO 0);
SIGNAL r_DATA : std_logic_vector(53 DOWNTO 0);

BEGIN

ww_i_clk <= i_clk;
ww_i_enable <= i_enable;
ww_i_A <= i_A;
ww_i_B <= i_B;
o_result <= ww_o_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & 
\Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|w239w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|w239w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|w239w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|w239w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|w239w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|w239w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w239w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w239w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w239w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w239w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w239w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w239w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w239w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|w239w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|w239w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|w239w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|w239w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|w239w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT21\ & \Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT12\ & \Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~13\ & \Mult0|auto_generated|mac_mult3~12\ & \Mult0|auto_generated|mac_mult3~11\ & 
\Mult0|auto_generated|mac_mult3~10\ & \Mult0|auto_generated|mac_mult3~9\ & \Mult0|auto_generated|mac_mult3~8\ & \Mult0|auto_generated|mac_mult3~7\ & \Mult0|auto_generated|mac_mult3~6\ & \Mult0|auto_generated|mac_mult3~5\ & 
\Mult0|auto_generated|mac_mult3~4\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & \Mult0|auto_generated|mac_mult3~0\);

\Mult0|auto_generated|mac_out4~0\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out4~1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out4~2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out4~3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out4~4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out4~5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out4~6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out4~7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out4~8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out4~9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out4~10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out4~11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\i_B[17]~input_o\ & \i_B[16]~input_o\ & \i_B[15]~input_o\ & \i_B[14]~input_o\ & \i_B[13]~input_o\ & \i_B[12]~input_o\ & \i_B[11]~input_o\ & \i_B[10]~input_o\ & \i_B[9]~input_o\ & \i_B[8]~input_o\ & 
\i_B[7]~input_o\ & \i_B[6]~input_o\ & \i_B[5]~input_o\ & \i_B[4]~input_o\ & \i_B[3]~input_o\ & \i_B[2]~input_o\ & \i_B[1]~input_o\ & \i_B[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \i_A[11]~input_o\ & \i_A[10]~input_o\ & \i_A[9]~input_o\ & \i_A[8]~input_o\ & \i_A[7]~input_o\ & \i_A[6]~input_o\ & \i_A[5]~input_o\ & \i_A[4]~input_o\ & \i_A[3]~input_o\ & \i_A[2]~input_o\ & 
\i_A[1]~input_o\ & \i_A[0]~input_o\ & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & \i_A[11]~input_o\ & \i_A[10]~input_o\ & \i_A[9]~input_o\ & \i_A[8]~input_o\ & \i_A[7]~input_o\ & \i_A[6]~input_o\ & \i_A[5]~input_o\ & \i_A[4]~input_o\ & \i_A[3]~input_o\ & \i_A[2]~input_o\ & 
\i_A[1]~input_o\ & \i_A[0]~input_o\ & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\i_B[26]~input_o\ & \i_B[25]~input_o\ & \i_B[24]~input_o\ & \i_B[23]~input_o\ & \i_B[22]~input_o\ & \i_B[21]~input_o\ & \i_B[20]~input_o\ & \i_B[19]~input_o\ & \i_B[18]~input_o\ & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~0\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

-- Location: IOOBUF_X41_Y7_N2
\o_result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(0),
	devoe => ww_devoe,
	o => \o_result[0]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\o_result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(1),
	devoe => ww_devoe,
	o => \o_result[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\o_result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(2),
	devoe => ww_devoe,
	o => \o_result[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\o_result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(3),
	devoe => ww_devoe,
	o => \o_result[3]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\o_result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(4),
	devoe => ww_devoe,
	o => \o_result[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\o_result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(5),
	devoe => ww_devoe,
	o => \o_result[5]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\o_result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(6),
	devoe => ww_devoe,
	o => \o_result[6]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\o_result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(7),
	devoe => ww_devoe,
	o => \o_result[7]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\o_result[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(8),
	devoe => ww_devoe,
	o => \o_result[8]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\o_result[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(9),
	devoe => ww_devoe,
	o => \o_result[9]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\o_result[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(10),
	devoe => ww_devoe,
	o => \o_result[10]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\o_result[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(11),
	devoe => ww_devoe,
	o => \o_result[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_result[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(12),
	devoe => ww_devoe,
	o => \o_result[12]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\o_result[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(13),
	devoe => ww_devoe,
	o => \o_result[13]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\o_result[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(14),
	devoe => ww_devoe,
	o => \o_result[14]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\o_result[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(15),
	devoe => ww_devoe,
	o => \o_result[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_result[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(16),
	devoe => ww_devoe,
	o => \o_result[16]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\o_result[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(17),
	devoe => ww_devoe,
	o => \o_result[17]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_result[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(18),
	devoe => ww_devoe,
	o => \o_result[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_result[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(19),
	devoe => ww_devoe,
	o => \o_result[19]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\o_result[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(20),
	devoe => ww_devoe,
	o => \o_result[20]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\o_result[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(21),
	devoe => ww_devoe,
	o => \o_result[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_result[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(22),
	devoe => ww_devoe,
	o => \o_result[22]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\o_result[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(23),
	devoe => ww_devoe,
	o => \o_result[23]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_result[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(24),
	devoe => ww_devoe,
	o => \o_result[24]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\o_result[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(25),
	devoe => ww_devoe,
	o => \o_result[25]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\o_result[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(26),
	devoe => ww_devoe,
	o => \o_result[26]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y2_N15
\i_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\i_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: IOIBUF_X41_Y2_N8
\i_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(8),
	o => \i_B[8]~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\i_B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(9),
	o => \i_B[9]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\i_B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(10),
	o => \i_B[10]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\i_B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(11),
	o => \i_B[11]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\i_B[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(12),
	o => \i_B[12]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\i_B[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(13),
	o => \i_B[13]~input_o\);

-- Location: IOIBUF_X41_Y4_N1
\i_B[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(14),
	o => \i_B[14]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\i_B[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(15),
	o => \i_B[15]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\i_B[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(16),
	o => \i_B[16]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_B[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(17),
	o => \i_B[17]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\i_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\i_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\i_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\i_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\i_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\i_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\i_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\i_A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(8),
	o => \i_A[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\i_A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(9),
	o => \i_A[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\i_A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(10),
	o => \i_A[10]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\i_A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(11),
	o => \i_A[11]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\i_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\i_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\i_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\i_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\i_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: DSPMULT_X34_Y2_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
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

-- Location: LCCOMB_X35_Y2_N0
\r_DATA[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[0]~feeder_combout\ = \Mult0|auto_generated|w239w\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|w239w\(14),
	combout => \r_DATA[0]~feeder_combout\);

-- Location: IOIBUF_X41_Y15_N8
\i_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: FF_X35_Y2_N1
\r_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_DATA[0]~feeder_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(0));

-- Location: LCCOMB_X35_Y2_N6
\r_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[1]~feeder_combout\ = \Mult0|auto_generated|w239w\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|w239w\(15),
	combout => \r_DATA[1]~feeder_combout\);

-- Location: FF_X35_Y2_N7
\r_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_DATA[1]~feeder_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(1));

-- Location: LCCOMB_X33_Y2_N28
\r_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[2]~feeder_combout\ = \Mult0|auto_generated|w239w\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|w239w\(16),
	combout => \r_DATA[2]~feeder_combout\);

-- Location: FF_X33_Y2_N29
\r_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_DATA[2]~feeder_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(2));

-- Location: LCCOMB_X33_Y2_N30
\r_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[3]~feeder_combout\ = \Mult0|auto_generated|w239w\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|w239w\(17),
	combout => \r_DATA[3]~feeder_combout\);

-- Location: FF_X33_Y2_N31
\r_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_DATA[3]~feeder_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(3));

-- Location: IOIBUF_X23_Y0_N1
\i_B[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(18),
	o => \i_B[18]~input_o\);

-- Location: IOIBUF_X41_Y8_N1
\i_B[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(19),
	o => \i_B[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\i_B[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(20),
	o => \i_B[20]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\i_B[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(21),
	o => \i_B[21]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\i_B[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(22),
	o => \i_B[22]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\i_B[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(23),
	o => \i_B[23]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\i_B[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(24),
	o => \i_B[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\i_B[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(25),
	o => \i_B[25]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\i_B[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(26),
	o => \i_B[26]~input_o\);

-- Location: DSPMULT_X34_Y1_N0
\Mult0|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y1_N2
\Mult0|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y2_N10
\Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & \Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: FF_X35_Y2_N11
\r_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~0_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(4));

-- Location: LCCOMB_X35_Y2_N12
\Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|op_1~1\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult0|auto_generated|op_1~1\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: FF_X35_Y2_N13
\r_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~2_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(5));

-- Location: LCCOMB_X35_Y2_N14
\Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\Mult0|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\Mult0|auto_generated|mac_out4~DATAOUT2\) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & (\Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: FF_X35_Y2_N15
\r_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~4_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(6));

-- Location: LCCOMB_X35_Y2_N16
\Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult0|auto_generated|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: FF_X35_Y2_N17
\r_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~6_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(7));

-- Location: LCCOMB_X35_Y2_N18
\Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: FF_X35_Y2_N19
\r_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~8_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(8));

-- Location: LCCOMB_X35_Y2_N20
\Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: FF_X35_Y2_N21
\r_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~10_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(9));

-- Location: LCCOMB_X35_Y2_N22
\Mult0|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & (\Mult0|auto_generated|mac_out4~DATAOUT6\ 
-- & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: FF_X35_Y2_N23
\r_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~12_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(10));

-- Location: LCCOMB_X35_Y2_N24
\Mult0|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|op_1~13\)))) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult0|auto_generated|op_1~13\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: FF_X35_Y2_N25
\r_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~14_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(11));

-- Location: LCCOMB_X35_Y2_N26
\Mult0|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT8\ $ (\Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\Mult0|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT8\ & ((\Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT8\ & (\Mult0|auto_generated|mac_out2~DATAOUT26\ 
-- & !\Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: FF_X35_Y2_N27
\r_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~16_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(12));

-- Location: LCCOMB_X35_Y2_N28
\Mult0|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|op_1~17\)))) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((!\Mult0|auto_generated|op_1~17\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: FF_X35_Y2_N29
\r_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~18_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(13));

-- Location: LCCOMB_X35_Y2_N30
\Mult0|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT28\ $ (\Mult0|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\Mult0|auto_generated|mac_out4~DATAOUT10\) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT10\ & !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: FF_X35_Y2_N31
\r_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~20_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(14));

-- Location: LCCOMB_X35_Y1_N0
\Mult0|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult0|auto_generated|op_1~21\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|op_1~21\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((!\Mult0|auto_generated|op_1~21\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: FF_X35_Y1_N1
\r_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~22_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(15));

-- Location: LCCOMB_X36_Y1_N8
\Mult0|auto_generated|add9_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[0]~0_combout\ = \Mult0|auto_generated|mac_out4~DATAOUT12\ $ (VCC)
-- \Mult0|auto_generated|add9_result[0]~1\ = CARRY(\Mult0|auto_generated|mac_out4~DATAOUT12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	combout => \Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X35_Y1_N2
\Mult0|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\Mult0|auto_generated|add9_result[0]~0_combout\ $ (\Mult0|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT30\ & (\Mult0|auto_generated|add9_result[0]~0_combout\ & !\Mult0|auto_generated|op_1~23\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & 
-- ((\Mult0|auto_generated|add9_result[0]~0_combout\) # (!\Mult0|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult0|auto_generated|add9_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: FF_X35_Y1_N3
\r_DATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~24_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(16));

-- Location: LCCOMB_X36_Y1_N10
\Mult0|auto_generated|add9_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[1]~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\Mult0|auto_generated|add9_result[0]~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|add9_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add9_result[1]~3\ = CARRY((!\Mult0|auto_generated|add9_result[0]~1\) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[0]~1\,
	combout => \Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X35_Y1_N4
\Mult0|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = (\Mult0|auto_generated|add9_result[1]~2_combout\ & (\Mult0|auto_generated|op_1~25\ & VCC)) # (!\Mult0|auto_generated|add9_result[1]~2_combout\ & (!\Mult0|auto_generated|op_1~25\))
-- \Mult0|auto_generated|op_1~27\ = CARRY((!\Mult0|auto_generated|add9_result[1]~2_combout\ & !\Mult0|auto_generated|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: FF_X35_Y1_N5
\r_DATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~26_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(17));

-- Location: LCCOMB_X36_Y1_N12
\Mult0|auto_generated|add9_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[2]~4_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT14\ & (\Mult0|auto_generated|add9_result[1]~3\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT14\ & (!\Mult0|auto_generated|add9_result[1]~3\ & VCC))
-- \Mult0|auto_generated|add9_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT14\ & !\Mult0|auto_generated|add9_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[1]~3\,
	combout => \Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X35_Y1_N6
\Mult0|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~28_combout\ = (\Mult0|auto_generated|add9_result[2]~4_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|add9_result[2]~4_combout\ & (\Mult0|auto_generated|op_1~27\ $ (GND)))
-- \Mult0|auto_generated|op_1~29\ = CARRY((\Mult0|auto_generated|add9_result[2]~4_combout\) # (!\Mult0|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~27\,
	combout => \Mult0|auto_generated|op_1~28_combout\,
	cout => \Mult0|auto_generated|op_1~29\);

-- Location: FF_X35_Y1_N7
\r_DATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~28_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(18));

-- Location: LCCOMB_X36_Y1_N14
\Mult0|auto_generated|add9_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[3]~6_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT15\ & (!\Mult0|auto_generated|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\Mult0|auto_generated|add9_result[2]~5\) # (GND)))
-- \Mult0|auto_generated|add9_result[3]~7\ = CARRY((!\Mult0|auto_generated|add9_result[2]~5\) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[2]~5\,
	combout => \Mult0|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X35_Y1_N8
\Mult0|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~30_combout\ = (\Mult0|auto_generated|add9_result[3]~6_combout\ & (\Mult0|auto_generated|op_1~29\ & VCC)) # (!\Mult0|auto_generated|add9_result[3]~6_combout\ & (!\Mult0|auto_generated|op_1~29\))
-- \Mult0|auto_generated|op_1~31\ = CARRY((!\Mult0|auto_generated|add9_result[3]~6_combout\ & !\Mult0|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~29\,
	combout => \Mult0|auto_generated|op_1~30_combout\,
	cout => \Mult0|auto_generated|op_1~31\);

-- Location: FF_X35_Y1_N9
\r_DATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~30_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(19));

-- Location: LCCOMB_X36_Y1_N16
\Mult0|auto_generated|add9_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[4]~8_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT16\ & (\Mult0|auto_generated|add9_result[3]~7\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT16\ & (!\Mult0|auto_generated|add9_result[3]~7\ & VCC))
-- \Mult0|auto_generated|add9_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT16\ & !\Mult0|auto_generated|add9_result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[3]~7\,
	combout => \Mult0|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X35_Y1_N10
\Mult0|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~32_combout\ = (\Mult0|auto_generated|add9_result[4]~8_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~31\))) # (!\Mult0|auto_generated|add9_result[4]~8_combout\ & (\Mult0|auto_generated|op_1~31\ $ (GND)))
-- \Mult0|auto_generated|op_1~33\ = CARRY((\Mult0|auto_generated|add9_result[4]~8_combout\) # (!\Mult0|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~31\,
	combout => \Mult0|auto_generated|op_1~32_combout\,
	cout => \Mult0|auto_generated|op_1~33\);

-- Location: FF_X35_Y1_N11
\r_DATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~32_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(20));

-- Location: LCCOMB_X36_Y1_N18
\Mult0|auto_generated|add9_result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[5]~10_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\Mult0|auto_generated|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\Mult0|auto_generated|add9_result[4]~9\) # (GND)))
-- \Mult0|auto_generated|add9_result[5]~11\ = CARRY((!\Mult0|auto_generated|add9_result[4]~9\) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[4]~9\,
	combout => \Mult0|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X35_Y1_N12
\Mult0|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~34_combout\ = (\Mult0|auto_generated|add9_result[5]~10_combout\ & (\Mult0|auto_generated|op_1~33\ & VCC)) # (!\Mult0|auto_generated|add9_result[5]~10_combout\ & (!\Mult0|auto_generated|op_1~33\))
-- \Mult0|auto_generated|op_1~35\ = CARRY((!\Mult0|auto_generated|add9_result[5]~10_combout\ & !\Mult0|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~33\,
	combout => \Mult0|auto_generated|op_1~34_combout\,
	cout => \Mult0|auto_generated|op_1~35\);

-- Location: FF_X35_Y1_N13
\r_DATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~34_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(21));

-- Location: LCCOMB_X36_Y1_N20
\Mult0|auto_generated|add9_result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[6]~12_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT18\ & (\Mult0|auto_generated|add9_result[5]~11\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT18\ & (!\Mult0|auto_generated|add9_result[5]~11\ & VCC))
-- \Mult0|auto_generated|add9_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT18\ & !\Mult0|auto_generated|add9_result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[5]~11\,
	combout => \Mult0|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X35_Y1_N14
\Mult0|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~36_combout\ = (\Mult0|auto_generated|add9_result[6]~12_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~35\))) # (!\Mult0|auto_generated|add9_result[6]~12_combout\ & (\Mult0|auto_generated|op_1~35\ $ (GND)))
-- \Mult0|auto_generated|op_1~37\ = CARRY((\Mult0|auto_generated|add9_result[6]~12_combout\) # (!\Mult0|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~35\,
	combout => \Mult0|auto_generated|op_1~36_combout\,
	cout => \Mult0|auto_generated|op_1~37\);

-- Location: FF_X35_Y1_N15
\r_DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~36_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(22));

-- Location: LCCOMB_X36_Y1_N22
\Mult0|auto_generated|add9_result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[7]~14_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\Mult0|auto_generated|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\Mult0|auto_generated|add9_result[6]~13\) # (GND)))
-- \Mult0|auto_generated|add9_result[7]~15\ = CARRY((!\Mult0|auto_generated|add9_result[6]~13\) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[6]~13\,
	combout => \Mult0|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult0|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X35_Y1_N16
\Mult0|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~38_combout\ = (\Mult0|auto_generated|add9_result[7]~14_combout\ & (\Mult0|auto_generated|op_1~37\ & VCC)) # (!\Mult0|auto_generated|add9_result[7]~14_combout\ & (!\Mult0|auto_generated|op_1~37\))
-- \Mult0|auto_generated|op_1~39\ = CARRY((!\Mult0|auto_generated|add9_result[7]~14_combout\ & !\Mult0|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~37\,
	combout => \Mult0|auto_generated|op_1~38_combout\,
	cout => \Mult0|auto_generated|op_1~39\);

-- Location: FF_X35_Y1_N17
\r_DATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~38_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(23));

-- Location: LCCOMB_X36_Y1_N24
\Mult0|auto_generated|add9_result[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[8]~16_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT20\ & (\Mult0|auto_generated|add9_result[7]~15\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT20\ & (!\Mult0|auto_generated|add9_result[7]~15\ & VCC))
-- \Mult0|auto_generated|add9_result[8]~17\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT20\ & !\Mult0|auto_generated|add9_result[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[7]~15\,
	combout => \Mult0|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult0|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X35_Y1_N18
\Mult0|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~40_combout\ = (\Mult0|auto_generated|add9_result[8]~16_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~39\))) # (!\Mult0|auto_generated|add9_result[8]~16_combout\ & (\Mult0|auto_generated|op_1~39\ $ (GND)))
-- \Mult0|auto_generated|op_1~41\ = CARRY((\Mult0|auto_generated|add9_result[8]~16_combout\) # (!\Mult0|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~39\,
	combout => \Mult0|auto_generated|op_1~40_combout\,
	cout => \Mult0|auto_generated|op_1~41\);

-- Location: FF_X35_Y1_N19
\r_DATA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~40_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(24));

-- Location: LCCOMB_X36_Y1_N26
\Mult0|auto_generated|add9_result[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[9]~18_combout\ = \Mult0|auto_generated|add9_result[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add9_result[8]~17\,
	combout => \Mult0|auto_generated|add9_result[9]~18_combout\);

-- Location: LCCOMB_X35_Y1_N20
\Mult0|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~42_combout\ = \Mult0|auto_generated|mac_out4~DATAOUT21\ $ (\Mult0|auto_generated|op_1~41\ $ (!\Mult0|auto_generated|add9_result[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT21\,
	datad => \Mult0|auto_generated|add9_result[9]~18_combout\,
	cin => \Mult0|auto_generated|op_1~41\,
	combout => \Mult0|auto_generated|op_1~42_combout\);

-- Location: LCCOMB_X35_Y1_N30
\r_DATA[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[25]~feeder_combout\ = \Mult0|auto_generated|op_1~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|op_1~42_combout\,
	combout => \r_DATA[25]~feeder_combout\);

-- Location: FF_X35_Y1_N31
\r_DATA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_DATA[25]~feeder_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(25));

-- Location: FF_X35_Y1_N21
\r_DATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mult0|auto_generated|op_1~42_combout\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(26));

ww_o_result(0) <= \o_result[0]~output_o\;

ww_o_result(1) <= \o_result[1]~output_o\;

ww_o_result(2) <= \o_result[2]~output_o\;

ww_o_result(3) <= \o_result[3]~output_o\;

ww_o_result(4) <= \o_result[4]~output_o\;

ww_o_result(5) <= \o_result[5]~output_o\;

ww_o_result(6) <= \o_result[6]~output_o\;

ww_o_result(7) <= \o_result[7]~output_o\;

ww_o_result(8) <= \o_result[8]~output_o\;

ww_o_result(9) <= \o_result[9]~output_o\;

ww_o_result(10) <= \o_result[10]~output_o\;

ww_o_result(11) <= \o_result[11]~output_o\;

ww_o_result(12) <= \o_result[12]~output_o\;

ww_o_result(13) <= \o_result[13]~output_o\;

ww_o_result(14) <= \o_result[14]~output_o\;

ww_o_result(15) <= \o_result[15]~output_o\;

ww_o_result(16) <= \o_result[16]~output_o\;

ww_o_result(17) <= \o_result[17]~output_o\;

ww_o_result(18) <= \o_result[18]~output_o\;

ww_o_result(19) <= \o_result[19]~output_o\;

ww_o_result(20) <= \o_result[20]~output_o\;

ww_o_result(21) <= \o_result[21]~output_o\;

ww_o_result(22) <= \o_result[22]~output_o\;

ww_o_result(23) <= \o_result[23]~output_o\;

ww_o_result(24) <= \o_result[24]~output_o\;

ww_o_result(25) <= \o_result[25]~output_o\;

ww_o_result(26) <= \o_result[26]~output_o\;
END structure;


