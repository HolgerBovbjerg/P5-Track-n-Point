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

-- DATE "01/20/2020 09:55:54"

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

ENTITY 	Goertzel IS
    PORT (
	i_CLK : IN std_logic;
	i_NEW_VALUE : IN std_logic;
	i_SIG : IN std_logic_vector(11 DOWNTO 0);
	o_Real : OUT std_logic_vector(26 DOWNTO 0);
	o_Imag : OUT std_logic_vector(26 DOWNTO 0);
	o_Abs : OUT std_logic_vector(26 DOWNTO 0);
	o_NEW_RESULT : OUT std_logic
	);
END Goertzel;

-- Design Ports Information
-- o_Real[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[5]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[7]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[14]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[16]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[18]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[19]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[21]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[22]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[23]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[24]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[25]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real[26]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[2]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[8]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[10]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[14]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[16]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[18]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[19]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[20]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[21]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[22]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[23]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[25]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag[26]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[9]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[10]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[14]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[15]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[16]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[17]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[18]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[19]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[21]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[22]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[24]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[25]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Abs[26]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEW_VALUE	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_NEW_VALUE : std_logic;
SIGNAL ww_i_SIG : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_Real : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_Imag : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_Abs : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_o_NEW_RESULT : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
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
SIGNAL \o_Abs[0]~output_o\ : std_logic;
SIGNAL \o_Abs[1]~output_o\ : std_logic;
SIGNAL \o_Abs[2]~output_o\ : std_logic;
SIGNAL \o_Abs[3]~output_o\ : std_logic;
SIGNAL \o_Abs[4]~output_o\ : std_logic;
SIGNAL \o_Abs[5]~output_o\ : std_logic;
SIGNAL \o_Abs[6]~output_o\ : std_logic;
SIGNAL \o_Abs[7]~output_o\ : std_logic;
SIGNAL \o_Abs[8]~output_o\ : std_logic;
SIGNAL \o_Abs[9]~output_o\ : std_logic;
SIGNAL \o_Abs[10]~output_o\ : std_logic;
SIGNAL \o_Abs[11]~output_o\ : std_logic;
SIGNAL \o_Abs[12]~output_o\ : std_logic;
SIGNAL \o_Abs[13]~output_o\ : std_logic;
SIGNAL \o_Abs[14]~output_o\ : std_logic;
SIGNAL \o_Abs[15]~output_o\ : std_logic;
SIGNAL \o_Abs[16]~output_o\ : std_logic;
SIGNAL \o_Abs[17]~output_o\ : std_logic;
SIGNAL \o_Abs[18]~output_o\ : std_logic;
SIGNAL \o_Abs[19]~output_o\ : std_logic;
SIGNAL \o_Abs[20]~output_o\ : std_logic;
SIGNAL \o_Abs[21]~output_o\ : std_logic;
SIGNAL \o_Abs[22]~output_o\ : std_logic;
SIGNAL \o_Abs[23]~output_o\ : std_logic;
SIGNAL \o_Abs[24]~output_o\ : std_logic;
SIGNAL \o_Abs[25]~output_o\ : std_logic;
SIGNAL \o_Abs[26]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg~5_combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \reg.state.OUTPUT~feeder_combout\ : std_logic;
SIGNAL \reg.state.OUTPUT~q\ : std_logic;
SIGNAL \i_NEW_VALUE~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \reg.state.IDLE~q\ : std_logic;
SIGNAL \reg~4_combout\ : std_logic;
SIGNAL \reg.state.CALCULATE~q\ : std_logic;
SIGNAL \reg.state.STORE~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \reg~6_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \i_SIG[2]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \i_SIG[4]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \i_SIG[5]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \i_SIG[11]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[21]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[22]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[26]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \reg.VA_prev[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \i_SIG[6]~input_o\ : std_logic;
SIGNAL \i_SIG[7]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \i_SIG[8]~input_o\ : std_logic;
SIGNAL \reg.VA_prev[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \i_SIG[10]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \reg.VA_prev[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \reg.VA_prev[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \reg.VA_prev[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \reg.VA_prev[17]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg.VA_prev[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \i_SIG[9]~input_o\ : std_logic;
SIGNAL \i_SIG[3]~input_o\ : std_logic;
SIGNAL \i_SIG[1]~input_o\ : std_logic;
SIGNAL \i_SIG[0]~input_o\ : std_logic;
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
SIGNAL \reg.VA_prev[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \reg.VA[0]~28\ : std_logic;
SIGNAL \reg.VA[1]~30\ : std_logic;
SIGNAL \reg.VA[2]~32\ : std_logic;
SIGNAL \reg.VA[3]~34\ : std_logic;
SIGNAL \reg.VA[4]~36\ : std_logic;
SIGNAL \reg.VA[5]~38\ : std_logic;
SIGNAL \reg.VA[6]~40\ : std_logic;
SIGNAL \reg.VA[7]~42\ : std_logic;
SIGNAL \reg.VA[8]~44\ : std_logic;
SIGNAL \reg.VA[9]~46\ : std_logic;
SIGNAL \reg.VA[10]~48\ : std_logic;
SIGNAL \reg.VA[11]~50\ : std_logic;
SIGNAL \reg.VA[12]~52\ : std_logic;
SIGNAL \reg.VA[13]~54\ : std_logic;
SIGNAL \reg.VA[14]~56\ : std_logic;
SIGNAL \reg.VA[15]~58\ : std_logic;
SIGNAL \reg.VA[16]~60\ : std_logic;
SIGNAL \reg.VA[17]~61_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \reg.VA[16]~59_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \reg.VA[15]~57_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \reg.VA[14]~55_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \reg.VA[13]~53_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \reg.VA[12]~51_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \reg.VA[11]~49_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \reg.VA[10]~47_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \reg.VA[9]~45_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \reg.VA[8]~43_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \reg.VA[7]~41_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \reg.VA[6]~39_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \reg.VA_prev[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \reg.VA[17]~62\ : std_logic;
SIGNAL \reg.VA[18]~64\ : std_logic;
SIGNAL \reg.VA[19]~66\ : std_logic;
SIGNAL \reg.VA[20]~68\ : std_logic;
SIGNAL \reg.VA[21]~70\ : std_logic;
SIGNAL \reg.VA[22]~72\ : std_logic;
SIGNAL \reg.VA[23]~74\ : std_logic;
SIGNAL \reg.VA[24]~76\ : std_logic;
SIGNAL \reg.VA[25]~78\ : std_logic;
SIGNAL \reg.VA[26]~79_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \reg.VA[25]~77_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \reg.VA[24]~75_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \reg.VA[23]~73_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \reg.VA[22]~71_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \reg.VA[21]~69_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \reg.VA[20]~67_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \reg.VA[19]~65_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \reg.VA[18]~63_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \reg.VA[5]~37_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \reg.VA[4]~35_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \reg.VA[2]~31_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reg.VA[1]~29_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg.VA[0]~27_combout\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \reg.VA[3]~33_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \reg.VA_prev[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \reg.result[0][0]~q\ : std_logic;
SIGNAL \r_Real[0]~27_combout\ : std_logic;
SIGNAL \reg.result[0][1]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][1]~q\ : std_logic;
SIGNAL \r_Real[0]~28\ : std_logic;
SIGNAL \r_Real[1]~29_combout\ : std_logic;
SIGNAL \reg.result[0][2]~q\ : std_logic;
SIGNAL \r_Real[1]~30\ : std_logic;
SIGNAL \r_Real[2]~31_combout\ : std_logic;
SIGNAL \reg.result[0][3]~q\ : std_logic;
SIGNAL \r_Real[2]~32\ : std_logic;
SIGNAL \r_Real[3]~33_combout\ : std_logic;
SIGNAL \reg.result[0][4]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][4]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \r_Real[3]~34\ : std_logic;
SIGNAL \r_Real[4]~35_combout\ : std_logic;
SIGNAL \reg.result[0][5]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][5]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \r_Real[4]~36\ : std_logic;
SIGNAL \r_Real[5]~37_combout\ : std_logic;
SIGNAL \reg.result[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][6]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \r_Real[5]~38\ : std_logic;
SIGNAL \r_Real[6]~39_combout\ : std_logic;
SIGNAL \reg.result[0][7]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][7]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \r_Real[6]~40\ : std_logic;
SIGNAL \r_Real[7]~41_combout\ : std_logic;
SIGNAL \reg.result[0][8]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \r_Real[7]~42\ : std_logic;
SIGNAL \r_Real[8]~43_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \reg.result[0][9]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][9]~q\ : std_logic;
SIGNAL \r_Real[8]~44\ : std_logic;
SIGNAL \r_Real[9]~45_combout\ : std_logic;
SIGNAL \reg.result[0][10]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][10]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \r_Real[9]~46\ : std_logic;
SIGNAL \r_Real[10]~47_combout\ : std_logic;
SIGNAL \reg.result[0][11]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \r_Real[10]~48\ : std_logic;
SIGNAL \r_Real[11]~49_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \reg.result[0][12]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][12]~q\ : std_logic;
SIGNAL \r_Real[11]~50\ : std_logic;
SIGNAL \r_Real[12]~51_combout\ : std_logic;
SIGNAL \reg.result[0][13]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \r_Real[12]~52\ : std_logic;
SIGNAL \r_Real[13]~53_combout\ : std_logic;
SIGNAL \reg.result[0][14]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \r_Real[13]~54\ : std_logic;
SIGNAL \r_Real[14]~55_combout\ : std_logic;
SIGNAL \reg.result[0][15]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \r_Real[14]~56\ : std_logic;
SIGNAL \r_Real[15]~57_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \reg.result[0][16]~q\ : std_logic;
SIGNAL \r_Real[15]~58\ : std_logic;
SIGNAL \r_Real[16]~59_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \reg.result[0][17]~q\ : std_logic;
SIGNAL \r_Real[16]~60\ : std_logic;
SIGNAL \r_Real[17]~61_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \reg.result[0][18]~q\ : std_logic;
SIGNAL \r_Real[17]~62\ : std_logic;
SIGNAL \r_Real[18]~63_combout\ : std_logic;
SIGNAL \reg.result[0][19]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][19]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \r_Real[18]~64\ : std_logic;
SIGNAL \r_Real[19]~65_combout\ : std_logic;
SIGNAL \reg.result[0][20]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][20]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \r_Real[19]~66\ : std_logic;
SIGNAL \r_Real[20]~67_combout\ : std_logic;
SIGNAL \reg.result[0][21]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][21]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \r_Real[20]~68\ : std_logic;
SIGNAL \r_Real[21]~69_combout\ : std_logic;
SIGNAL \reg.result[0][22]~feeder_combout\ : std_logic;
SIGNAL \reg.result[0][22]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \r_Real[21]~70\ : std_logic;
SIGNAL \r_Real[22]~71_combout\ : std_logic;
SIGNAL \reg.result[0][23]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \r_Real[22]~72\ : std_logic;
SIGNAL \r_Real[23]~73_combout\ : std_logic;
SIGNAL \reg.result[0][24]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \r_Real[23]~74\ : std_logic;
SIGNAL \r_Real[24]~75_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \reg.result[0][25]~q\ : std_logic;
SIGNAL \r_Real[24]~76\ : std_logic;
SIGNAL \r_Real[25]~77_combout\ : std_logic;
SIGNAL \reg.result[0][26]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \r_Real[25]~78\ : std_logic;
SIGNAL \r_Real[26]~79_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \r_Imag[4]~23_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \r_Imag[4]~24\ : std_logic;
SIGNAL \r_Imag[5]~25_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \r_Imag[5]~26\ : std_logic;
SIGNAL \r_Imag[6]~27_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \r_Imag[6]~28\ : std_logic;
SIGNAL \r_Imag[7]~29_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \r_Imag[7]~30\ : std_logic;
SIGNAL \r_Imag[8]~31_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \r_Imag[8]~32\ : std_logic;
SIGNAL \r_Imag[9]~33_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \r_Imag[9]~34\ : std_logic;
SIGNAL \r_Imag[10]~35_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \r_Imag[10]~36\ : std_logic;
SIGNAL \r_Imag[11]~37_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \r_Imag[11]~38\ : std_logic;
SIGNAL \r_Imag[12]~39_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \r_Imag[12]~40\ : std_logic;
SIGNAL \r_Imag[13]~41_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \r_Imag[13]~42\ : std_logic;
SIGNAL \r_Imag[14]~43_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \r_Imag[14]~44\ : std_logic;
SIGNAL \r_Imag[15]~45_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \r_Imag[15]~46\ : std_logic;
SIGNAL \r_Imag[16]~47_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \r_Imag[16]~48\ : std_logic;
SIGNAL \r_Imag[17]~49_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \r_Imag[17]~50\ : std_logic;
SIGNAL \r_Imag[18]~51_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \r_Imag[18]~52\ : std_logic;
SIGNAL \r_Imag[19]~53_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \r_Imag[19]~54\ : std_logic;
SIGNAL \r_Imag[20]~55_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \r_Imag[20]~56\ : std_logic;
SIGNAL \r_Imag[21]~57_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \r_Imag[21]~58\ : std_logic;
SIGNAL \r_Imag[22]~59_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \r_Imag[22]~60\ : std_logic;
SIGNAL \r_Imag[23]~61_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \r_Imag[23]~62\ : std_logic;
SIGNAL \r_Imag[24]~63_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \r_Imag[24]~64\ : std_logic;
SIGNAL \r_Imag[25]~65_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult2|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \r_Imag[25]~66\ : std_logic;
SIGNAL \r_Imag[26]~67_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reg.done~q\ : std_logic;
SIGNAL \reg.sample_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \reg.VA_prev2\ : std_logic_vector(53 DOWNTO 0);
SIGNAL \reg.VA\ : std_logic_vector(53 DOWNTO 0);
SIGNAL r_Real : std_logic_vector(53 DOWNTO 0);
SIGNAL r_Imag : std_logic_vector(53 DOWNTO 0);
SIGNAL \Mult1|auto_generated|w251w\ : std_logic_vector(42 DOWNTO 0);
SIGNAL \Mult2|auto_generated|w245w\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \Mult0|auto_generated|w257w\ : std_logic_vector(43 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_NEW_VALUE <= i_NEW_VALUE;
ww_i_SIG <= i_SIG;
o_Real <= ww_o_Real;
o_Imag <= ww_o_Imag;
o_Abs <= ww_o_Abs;
o_NEW_RESULT <= ww_o_NEW_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT32\ & \Mult1|auto_generated|mac_mult1~DATAOUT31\ & \Mult1|auto_generated|mac_mult1~DATAOUT30\ & \Mult1|auto_generated|mac_mult1~DATAOUT29\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT28\ & \Mult1|auto_generated|mac_mult1~DATAOUT27\ & \Mult1|auto_generated|mac_mult1~DATAOUT26\ & \Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & \Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~2\ & \Mult1|auto_generated|mac_mult1~1\ & 
\Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|w251w\(0) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|w251w\(1) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|w251w\(2) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|w251w\(3) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|w251w\(4) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|w251w\(5) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|w251w\(6) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|w251w\(7) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|w251w\(8) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|w251w\(9) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|w251w\(10) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|w251w\(11) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|w251w\(12) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|w251w\(13) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|w251w\(14) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|w251w\(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|w251w\(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|w251w\(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out2~DATAOUT25\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT26\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT27\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT28\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT29\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT30\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT31\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT32\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult3~DATAOUT23\ & \Mult1|auto_generated|mac_mult3~DATAOUT22\ & \Mult1|auto_generated|mac_mult3~DATAOUT21\ & \Mult1|auto_generated|mac_mult3~DATAOUT20\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT19\ & \Mult1|auto_generated|mac_mult3~DATAOUT18\ & \Mult1|auto_generated|mac_mult3~DATAOUT17\ & \Mult1|auto_generated|mac_mult3~DATAOUT16\ & \Mult1|auto_generated|mac_mult3~DATAOUT15\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT14\ & \Mult1|auto_generated|mac_mult3~DATAOUT13\ & \Mult1|auto_generated|mac_mult3~DATAOUT12\ & \Mult1|auto_generated|mac_mult3~DATAOUT11\ & \Mult1|auto_generated|mac_mult3~DATAOUT10\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT9\ & \Mult1|auto_generated|mac_mult3~DATAOUT8\ & \Mult1|auto_generated|mac_mult3~DATAOUT7\ & \Mult1|auto_generated|mac_mult3~DATAOUT6\ & \Mult1|auto_generated|mac_mult3~DATAOUT5\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT4\ & \Mult1|auto_generated|mac_mult3~DATAOUT3\ & \Mult1|auto_generated|mac_mult3~DATAOUT2\ & \Mult1|auto_generated|mac_mult3~DATAOUT1\ & \Mult1|auto_generated|mac_mult3~dataout\ & \Mult1|auto_generated|mac_mult3~11\
& \Mult1|auto_generated|mac_mult3~10\ & \Mult1|auto_generated|mac_mult3~9\ & \Mult1|auto_generated|mac_mult3~8\ & \Mult1|auto_generated|mac_mult3~7\ & \Mult1|auto_generated|mac_mult3~6\ & \Mult1|auto_generated|mac_mult3~5\ & 
\Mult1|auto_generated|mac_mult3~4\ & \Mult1|auto_generated|mac_mult3~3\ & \Mult1|auto_generated|mac_mult3~2\ & \Mult1|auto_generated|mac_mult3~1\ & \Mult1|auto_generated|mac_mult3~0\);

\Mult1|auto_generated|mac_out4~0\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out4~1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out4~2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out4~3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out4~4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out4~5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out4~6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out4~7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out4~8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out4~9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out4~10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out4~11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out4~dataout\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out4~DATAOUT1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out4~DATAOUT2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out4~DATAOUT3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out4~DATAOUT4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out4~DATAOUT5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out4~DATAOUT6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out4~DATAOUT7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out4~DATAOUT8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out4~DATAOUT9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out4~DATAOUT10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out4~DATAOUT11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out4~DATAOUT12\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out4~DATAOUT13\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out4~DATAOUT14\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out4~DATAOUT15\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out4~DATAOUT16\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out4~DATAOUT17\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out4~DATAOUT18\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out4~DATAOUT19\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out4~DATAOUT20\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out4~DATAOUT21\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out4~DATAOUT22\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out4~DATAOUT23\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT31\ & \Mult2|auto_generated|mac_mult1~DATAOUT30\ & \Mult2|auto_generated|mac_mult1~DATAOUT29\ & \Mult2|auto_generated|mac_mult1~DATAOUT28\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT27\ & \Mult2|auto_generated|mac_mult1~DATAOUT26\ & \Mult2|auto_generated|mac_mult1~DATAOUT25\ & \Mult2|auto_generated|mac_mult1~DATAOUT24\ & \Mult2|auto_generated|mac_mult1~DATAOUT23\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT22\ & \Mult2|auto_generated|mac_mult1~DATAOUT21\ & \Mult2|auto_generated|mac_mult1~DATAOUT20\ & \Mult2|auto_generated|mac_mult1~DATAOUT19\ & \Mult2|auto_generated|mac_mult1~DATAOUT18\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT17\ & \Mult2|auto_generated|mac_mult1~DATAOUT16\ & \Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT12\ & \Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT7\ & \Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT2\ & \Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~3\ & \Mult2|auto_generated|mac_mult1~2\ & \Mult2|auto_generated|mac_mult1~1\ & 
\Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out2~2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out2~3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|w245w\(0) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|w245w\(1) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|w245w\(2) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|w245w\(3) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|w245w\(4) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|w245w\(5) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|w245w\(6) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|w245w\(7) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|w245w\(8) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|w245w\(9) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|w245w\(10) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|w245w\(11) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|w245w\(12) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|w245w\(13) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult2|auto_generated|w245w\(14) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult2|auto_generated|w245w\(15) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult2|auto_generated|w245w\(16) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult2|auto_generated|w245w\(17) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out2~DATAOUT18\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out2~DATAOUT19\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out2~DATAOUT20\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out2~DATAOUT21\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out2~DATAOUT22\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out2~DATAOUT23\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out2~DATAOUT24\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out2~DATAOUT25\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out2~DATAOUT26\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out2~DATAOUT27\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out2~DATAOUT28\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out2~DATAOUT29\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out2~DATAOUT30\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out2~DATAOUT31\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out4_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult3~DATAOUT22\ & \Mult2|auto_generated|mac_mult3~DATAOUT21\ & \Mult2|auto_generated|mac_mult3~DATAOUT20\ & \Mult2|auto_generated|mac_mult3~DATAOUT19\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT18\ & \Mult2|auto_generated|mac_mult3~DATAOUT17\ & \Mult2|auto_generated|mac_mult3~DATAOUT16\ & \Mult2|auto_generated|mac_mult3~DATAOUT15\ & \Mult2|auto_generated|mac_mult3~DATAOUT14\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT13\ & \Mult2|auto_generated|mac_mult3~DATAOUT12\ & \Mult2|auto_generated|mac_mult3~DATAOUT11\ & \Mult2|auto_generated|mac_mult3~DATAOUT10\ & \Mult2|auto_generated|mac_mult3~DATAOUT9\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT8\ & \Mult2|auto_generated|mac_mult3~DATAOUT7\ & \Mult2|auto_generated|mac_mult3~DATAOUT6\ & \Mult2|auto_generated|mac_mult3~DATAOUT5\ & \Mult2|auto_generated|mac_mult3~DATAOUT4\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT3\ & \Mult2|auto_generated|mac_mult3~DATAOUT2\ & \Mult2|auto_generated|mac_mult3~DATAOUT1\ & \Mult2|auto_generated|mac_mult3~dataout\ & \Mult2|auto_generated|mac_mult3~12\ & \Mult2|auto_generated|mac_mult3~11\ & 
\Mult2|auto_generated|mac_mult3~10\ & \Mult2|auto_generated|mac_mult3~9\ & \Mult2|auto_generated|mac_mult3~8\ & \Mult2|auto_generated|mac_mult3~7\ & \Mult2|auto_generated|mac_mult3~6\ & \Mult2|auto_generated|mac_mult3~5\ & 
\Mult2|auto_generated|mac_mult3~4\ & \Mult2|auto_generated|mac_mult3~3\ & \Mult2|auto_generated|mac_mult3~2\ & \Mult2|auto_generated|mac_mult3~1\ & \Mult2|auto_generated|mac_mult3~0\);

\Mult2|auto_generated|mac_out4~0\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out4~1\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out4~2\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out4~3\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out4~4\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out4~5\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out4~6\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out4~7\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out4~8\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out4~9\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out4~10\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out4~11\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out4~12\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out4~dataout\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out4~DATAOUT1\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out4~DATAOUT2\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out4~DATAOUT3\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out4~DATAOUT4\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_out4~DATAOUT5\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_out4~DATAOUT6\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_out4~DATAOUT7\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_out4~DATAOUT8\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out4~DATAOUT9\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out4~DATAOUT10\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out4~DATAOUT11\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out4~DATAOUT12\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out4~DATAOUT13\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out4~DATAOUT14\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out4~DATAOUT15\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out4~DATAOUT16\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out4~DATAOUT17\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out4~DATAOUT18\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out4~DATAOUT19\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out4~DATAOUT20\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out4~DATAOUT21\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out4~DATAOUT22\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\reg.VA_prev[17]~_Duplicate_1_q\ & \reg.VA_prev[16]~_Duplicate_1_q\ & \reg.VA_prev[15]~_Duplicate_1_q\ & \reg.VA_prev[14]~_Duplicate_1_q\ & \reg.VA_prev[13]~_Duplicate_1_q\ & \reg.VA_prev[12]~_Duplicate_1_q\
& \reg.VA_prev[11]~_Duplicate_1_q\ & \reg.VA_prev[10]~_Duplicate_1_q\ & \reg.VA_prev[9]~_Duplicate_1_q\ & \reg.VA_prev[8]~_Duplicate_1_q\ & \reg.VA_prev[7]~_Duplicate_1_q\ & \reg.VA_prev[6]~_Duplicate_1_q\ & \reg.VA_prev[5]~_Duplicate_1_q\ & 
\reg.VA_prev[4]~_Duplicate_1_q\ & \reg.VA_prev[3]~_Duplicate_1_q\ & \reg.VA_prev[2]~_Duplicate_1_q\ & \reg.VA_prev[1]~_Duplicate_1_q\ & \reg.VA_prev[0]~_Duplicate_1_q\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT32\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (\reg.VA_prev[26]~_Duplicate_1_q\ & \reg.VA_prev[25]~_Duplicate_1_q\ & \reg.VA_prev[24]~_Duplicate_1_q\ & \reg.VA_prev[23]~_Duplicate_1_q\ & \reg.VA_prev[22]~_Duplicate_1_q\ & \reg.VA_prev[21]~_Duplicate_1_q\
& \reg.VA_prev[20]~_Duplicate_1_q\ & \reg.VA_prev[19]~_Duplicate_1_q\ & \reg.VA_prev[18]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3~0\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult3~1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult3~2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult3~3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult3~4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult3~5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult3~6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult3~7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult3~8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult3~9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult3~10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult3~11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult3~dataout\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult3~DATAOUT21\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult3~DATAOUT22\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult3~DATAOUT23\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\reg.VA_prev[17]~_Duplicate_1_q\ & \reg.VA_prev[16]~_Duplicate_1_q\ & \reg.VA_prev[15]~_Duplicate_1_q\ & \reg.VA_prev[14]~_Duplicate_1_q\ & \reg.VA_prev[13]~_Duplicate_1_q\ & \reg.VA_prev[12]~_Duplicate_1_q\
& \reg.VA_prev[11]~_Duplicate_1_q\ & \reg.VA_prev[10]~_Duplicate_1_q\ & \reg.VA_prev[9]~_Duplicate_1_q\ & \reg.VA_prev[8]~_Duplicate_1_q\ & \reg.VA_prev[7]~_Duplicate_1_q\ & \reg.VA_prev[6]~_Duplicate_1_q\ & \reg.VA_prev[5]~_Duplicate_1_q\ & 
\reg.VA_prev[4]~_Duplicate_1_q\ & \reg.VA_prev[3]~_Duplicate_1_q\ & \reg.VA_prev[2]~_Duplicate_1_q\ & \reg.VA_prev[1]~_Duplicate_1_q\ & \reg.VA_prev[0]~_Duplicate_1_q\);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult1~0\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult1~DATAOUT29\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult1~DATAOUT30\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult1~DATAOUT31\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult3_DATAB_bus\ <= (\reg.VA_prev[26]~_Duplicate_1_q\ & \reg.VA_prev[25]~_Duplicate_1_q\ & \reg.VA_prev[24]~_Duplicate_1_q\ & \reg.VA_prev[23]~_Duplicate_1_q\ & \reg.VA_prev[22]~_Duplicate_1_q\ & \reg.VA_prev[21]~_Duplicate_1_q\
& \reg.VA_prev[20]~_Duplicate_1_q\ & \reg.VA_prev[19]~_Duplicate_1_q\ & \reg.VA_prev[18]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult3~0\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult3~1\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult3~2\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult3~3\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult3~4\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult3~5\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult3~6\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult3~7\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult3~8\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult3~9\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult3~10\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult3~11\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult3~12\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult3~dataout\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult3~DATAOUT1\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult3~DATAOUT2\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult3~DATAOUT3\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult3~DATAOUT4\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult3~DATAOUT5\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult3~DATAOUT6\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult3~DATAOUT7\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult3~DATAOUT8\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult3~DATAOUT9\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult3~DATAOUT10\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult3~DATAOUT11\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult3~DATAOUT12\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult3~DATAOUT13\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult3~DATAOUT14\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult3~DATAOUT15\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult3~DATAOUT16\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult3~DATAOUT17\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult3~DATAOUT18\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult3~DATAOUT19\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult3~DATAOUT20\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult3~DATAOUT21\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult3~DATAOUT22\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & \Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\
& \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|w257w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|w257w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|w257w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|w257w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|w257w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|w257w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|w257w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|w257w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|w257w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w257w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w257w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w257w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w257w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w257w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w257w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w257w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|w257w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|w257w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT24\ & \Mult0|auto_generated|mac_mult3~DATAOUT23\ & \Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & \Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Mult0|auto_generated|mac_mult3~DATAOUT16\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & \Mult0|auto_generated|mac_mult3~DATAOUT12\ & \Mult0|auto_generated|mac_mult3~DATAOUT11\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & \Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Mult0|auto_generated|mac_mult3~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & \Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Mult0|auto_generated|mac_mult3~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~10\ & \Mult0|auto_generated|mac_mult3~9\ & \Mult0|auto_generated|mac_mult3~8\ & \Mult0|auto_generated|mac_mult3~7\ & \Mult0|auto_generated|mac_mult3~6\ & 
\Mult0|auto_generated|mac_mult3~5\ & \Mult0|auto_generated|mac_mult3~4\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & \Mult0|auto_generated|mac_mult3~0\);

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
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Selector40~0_combout\ & \Selector41~0_combout\ & \Selector42~0_combout\ & \Selector43~0_combout\ & \Selector44~0_combout\ & \Selector45~0_combout\ & \Selector46~0_combout\ & \Selector47~0_combout\ & 
\Selector48~0_combout\ & \Selector49~0_combout\ & \Selector50~0_combout\ & \Selector51~0_combout\ & \Selector52~0_combout\ & \Selector53~0_combout\ & \Selector54~0_combout\ & \Selector55~0_combout\ & \Selector56~0_combout\ & \Selector57~1_combout\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\Selector31~0_combout\ & \Selector32~0_combout\ & \Selector33~0_combout\ & \Selector34~0_combout\ & \Selector35~0_combout\ & \Selector36~0_combout\ & \Selector37~0_combout\ & \Selector38~0_combout\ & 
\Selector39~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

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
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X41_Y13_N23
\o_Real[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(0),
	devoe => ww_devoe,
	o => \o_Real[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\o_Real[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(1),
	devoe => ww_devoe,
	o => \o_Real[1]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\o_Real[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(2),
	devoe => ww_devoe,
	o => \o_Real[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\o_Real[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(3),
	devoe => ww_devoe,
	o => \o_Real[3]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\o_Real[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(4),
	devoe => ww_devoe,
	o => \o_Real[4]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\o_Real[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(5),
	devoe => ww_devoe,
	o => \o_Real[5]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\o_Real[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(6),
	devoe => ww_devoe,
	o => \o_Real[6]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\o_Real[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(7),
	devoe => ww_devoe,
	o => \o_Real[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\o_Real[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(8),
	devoe => ww_devoe,
	o => \o_Real[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_Real[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(9),
	devoe => ww_devoe,
	o => \o_Real[9]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\o_Real[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(10),
	devoe => ww_devoe,
	o => \o_Real[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_Real[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(11),
	devoe => ww_devoe,
	o => \o_Real[11]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\o_Real[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(12),
	devoe => ww_devoe,
	o => \o_Real[12]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\o_Real[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(13),
	devoe => ww_devoe,
	o => \o_Real[13]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\o_Real[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(14),
	devoe => ww_devoe,
	o => \o_Real[14]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\o_Real[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(15),
	devoe => ww_devoe,
	o => \o_Real[15]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\o_Real[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(16),
	devoe => ww_devoe,
	o => \o_Real[16]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_Real[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(17),
	devoe => ww_devoe,
	o => \o_Real[17]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\o_Real[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(18),
	devoe => ww_devoe,
	o => \o_Real[18]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\o_Real[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(19),
	devoe => ww_devoe,
	o => \o_Real[19]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\o_Real[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(20),
	devoe => ww_devoe,
	o => \o_Real[20]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\o_Real[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(21),
	devoe => ww_devoe,
	o => \o_Real[21]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\o_Real[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(22),
	devoe => ww_devoe,
	o => \o_Real[22]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\o_Real[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(23),
	devoe => ww_devoe,
	o => \o_Real[23]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\o_Real[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(24),
	devoe => ww_devoe,
	o => \o_Real[24]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\o_Real[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(25),
	devoe => ww_devoe,
	o => \o_Real[25]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\o_Real[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Real(26),
	devoe => ww_devoe,
	o => \o_Real[26]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\o_Imag[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(0),
	devoe => ww_devoe,
	o => \o_Imag[0]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\o_Imag[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(1),
	devoe => ww_devoe,
	o => \o_Imag[1]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\o_Imag[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(2),
	devoe => ww_devoe,
	o => \o_Imag[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\o_Imag[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(3),
	devoe => ww_devoe,
	o => \o_Imag[3]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\o_Imag[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(4),
	devoe => ww_devoe,
	o => \o_Imag[4]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\o_Imag[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(5),
	devoe => ww_devoe,
	o => \o_Imag[5]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\o_Imag[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(6),
	devoe => ww_devoe,
	o => \o_Imag[6]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\o_Imag[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(7),
	devoe => ww_devoe,
	o => \o_Imag[7]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\o_Imag[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(8),
	devoe => ww_devoe,
	o => \o_Imag[8]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\o_Imag[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(9),
	devoe => ww_devoe,
	o => \o_Imag[9]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\o_Imag[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(10),
	devoe => ww_devoe,
	o => \o_Imag[10]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\o_Imag[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(11),
	devoe => ww_devoe,
	o => \o_Imag[11]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_Imag[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(12),
	devoe => ww_devoe,
	o => \o_Imag[12]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\o_Imag[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(13),
	devoe => ww_devoe,
	o => \o_Imag[13]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\o_Imag[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(14),
	devoe => ww_devoe,
	o => \o_Imag[14]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\o_Imag[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(15),
	devoe => ww_devoe,
	o => \o_Imag[15]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\o_Imag[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(16),
	devoe => ww_devoe,
	o => \o_Imag[16]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\o_Imag[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(17),
	devoe => ww_devoe,
	o => \o_Imag[17]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\o_Imag[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(18),
	devoe => ww_devoe,
	o => \o_Imag[18]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\o_Imag[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(19),
	devoe => ww_devoe,
	o => \o_Imag[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\o_Imag[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(20),
	devoe => ww_devoe,
	o => \o_Imag[20]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\o_Imag[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(21),
	devoe => ww_devoe,
	o => \o_Imag[21]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\o_Imag[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(22),
	devoe => ww_devoe,
	o => \o_Imag[22]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_Imag[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(23),
	devoe => ww_devoe,
	o => \o_Imag[23]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\o_Imag[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(24),
	devoe => ww_devoe,
	o => \o_Imag[24]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\o_Imag[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(25),
	devoe => ww_devoe,
	o => \o_Imag[25]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\o_Imag[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_Imag(26),
	devoe => ww_devoe,
	o => \o_Imag[26]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\o_Abs[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[0]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_Abs[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_Abs[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_Abs[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\o_Abs[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\o_Abs[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_Abs[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_Abs[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_Abs[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_Abs[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_Abs[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[10]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\o_Abs[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[11]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\o_Abs[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_Abs[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_Abs[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\o_Abs[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[15]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\o_Abs[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\o_Abs[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[17]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\o_Abs[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\o_Abs[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[19]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_Abs[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[20]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_Abs[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[21]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\o_Abs[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[22]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\o_Abs[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[23]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\o_Abs[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[24]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\o_Abs[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[25]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\o_Abs[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Abs[26]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOIBUF_X41_Y15_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X27_Y7_N22
\reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~5_combout\ = (\reg.state.CALCULATE~q\) # (!\reg.state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.state.CALCULATE~q\,
	datad => \reg.state.IDLE~q\,
	combout => \reg~5_combout\);

-- Location: LCCOMB_X27_Y7_N10
\Selector142~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\reg.sample_count\(0)) # ((\reg.state.IDLE~q\ & !\reg.state.CALCULATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.state.IDLE~q\,
	datac => \reg.state.CALCULATE~q\,
	datad => \reg.sample_count\(0),
	combout => \Selector142~0_combout\);

-- Location: LCCOMB_X29_Y7_N26
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\reg.sample_count\(8) & (!\reg.sample_count\(10) & (!\reg.sample_count\(9) & \reg.sample_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(8),
	datab => \reg.sample_count\(10),
	datac => \reg.sample_count\(9),
	datad => \reg.sample_count\(7),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X29_Y7_N16
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\reg.sample_count\(13) & (!\reg.sample_count\(12) & (!\reg.sample_count\(14) & !\reg.sample_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(13),
	datab => \reg.sample_count\(12),
	datac => \reg.sample_count\(14),
	datad => \reg.sample_count\(11),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y7_N24
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\reg.sample_count\(4) & (!\reg.sample_count\(5) & (\reg.sample_count\(6) & \reg.sample_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(4),
	datab => \reg.sample_count\(5),
	datac => \reg.sample_count\(6),
	datad => \reg.sample_count\(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X27_Y7_N20
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\reg.sample_count\(0) & (!\reg.sample_count\(2) & (!\reg.sample_count\(1) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(0),
	datab => \reg.sample_count\(2),
	datac => \reg.sample_count\(1),
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X27_Y7_N2
\Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~6_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X28_Y7_N2
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \reg.sample_count\(0) $ (VCC)
-- \Add2~1\ = CARRY(\reg.sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X27_Y7_N6
\Selector142~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = (\Selector142~0_combout\ & (((!\Equal0~11_combout\ & \Add2~0_combout\)) # (!\reg.state.STORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector142~0_combout\,
	datab => \Equal0~11_combout\,
	datac => \reg.state.STORE~q\,
	datad => \Add2~0_combout\,
	combout => \Selector142~1_combout\);

-- Location: FF_X27_Y7_N7
\reg.sample_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector142~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(0));

-- Location: LCCOMB_X28_Y7_N4
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

-- Location: LCCOMB_X28_Y7_N0
\Selector141~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(1)) # ((\Add2~2_combout\ & \reg.state.STORE~q\)))) # (!\reg~5_combout\ & (\Add2~2_combout\ & ((\reg.state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \Add2~2_combout\,
	datac => \reg.sample_count\(1),
	datad => \reg.state.STORE~q\,
	combout => \Selector141~0_combout\);

-- Location: FF_X28_Y7_N1
\reg.sample_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector141~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(1));

-- Location: LCCOMB_X28_Y7_N6
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

-- Location: LCCOMB_X27_Y7_N0
\Selector140~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(2)) # ((\reg.state.STORE~q\ & \Add2~4_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(2),
	datad => \Add2~4_combout\,
	combout => \Selector140~0_combout\);

-- Location: FF_X27_Y7_N1
\reg.sample_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector140~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(2));

-- Location: LCCOMB_X28_Y7_N8
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

-- Location: LCCOMB_X29_Y7_N6
\Selector139~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\Add2~6_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(3) & \reg~5_combout\)))) # (!\Add2~6_combout\ & (((\reg.sample_count\(3) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(3),
	datad => \reg~5_combout\,
	combout => \Selector139~0_combout\);

-- Location: FF_X29_Y7_N7
\reg.sample_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector139~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(3));

-- Location: LCCOMB_X28_Y7_N10
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\reg.sample_count\(4) & (\Add2~7\ $ (GND))) # (!\reg.sample_count\(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\reg.sample_count\(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X29_Y7_N22
\Selector138~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (\Add2~8_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(4) & \reg~5_combout\)))) # (!\Add2~8_combout\ & (((\reg.sample_count\(4) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(4),
	datad => \reg~5_combout\,
	combout => \Selector138~0_combout\);

-- Location: FF_X29_Y7_N23
\reg.sample_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector138~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(4));

-- Location: LCCOMB_X28_Y7_N12
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

-- Location: LCCOMB_X29_Y7_N20
\Selector137~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\Add2~10_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(5) & \reg~5_combout\)))) # (!\Add2~10_combout\ & (((\reg.sample_count\(5) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(5),
	datad => \reg~5_combout\,
	combout => \Selector137~0_combout\);

-- Location: FF_X29_Y7_N21
\reg.sample_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(5));

-- Location: LCCOMB_X28_Y7_N14
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

-- Location: LCCOMB_X29_Y7_N4
\Selector136~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\Add2~12_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(6) & \reg~5_combout\)))) # (!\Add2~12_combout\ & (((\reg.sample_count\(6) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(6),
	datad => \reg~5_combout\,
	combout => \Selector136~0_combout\);

-- Location: FF_X29_Y7_N5
\reg.sample_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector136~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(6));

-- Location: LCCOMB_X28_Y7_N16
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\reg.sample_count\(7) & (!\Add2~13\)) # (!\reg.sample_count\(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\reg.sample_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X29_Y7_N18
\Selector135~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\Add2~14_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(7) & \reg~5_combout\)))) # (!\Add2~14_combout\ & (((\reg.sample_count\(7) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(7),
	datad => \reg~5_combout\,
	combout => \Selector135~0_combout\);

-- Location: FF_X29_Y7_N19
\reg.sample_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector135~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(7));

-- Location: LCCOMB_X28_Y7_N18
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

-- Location: LCCOMB_X29_Y7_N12
\Selector134~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(8)) # ((\reg.state.STORE~q\ & \Add2~16_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(8),
	datad => \Add2~16_combout\,
	combout => \Selector134~0_combout\);

-- Location: FF_X29_Y7_N13
\reg.sample_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector134~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(8));

-- Location: LCCOMB_X28_Y7_N20
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\reg.sample_count\(9) & (!\Add2~17\)) # (!\reg.sample_count\(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\reg.sample_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X29_Y7_N30
\Selector133~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(9)) # ((\reg.state.STORE~q\ & \Add2~18_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(9),
	datad => \Add2~18_combout\,
	combout => \Selector133~0_combout\);

-- Location: FF_X29_Y7_N31
\reg.sample_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector133~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(9));

-- Location: LCCOMB_X28_Y7_N22
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\reg.sample_count\(10) & (\Add2~19\ $ (GND))) # (!\reg.sample_count\(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\reg.sample_count\(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X29_Y7_N28
\Selector132~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(10)) # ((\reg.state.STORE~q\ & \Add2~20_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(10),
	datad => \Add2~20_combout\,
	combout => \Selector132~0_combout\);

-- Location: FF_X29_Y7_N29
\reg.sample_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(10));

-- Location: LCCOMB_X28_Y7_N24
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\reg.sample_count\(11) & (!\Add2~21\)) # (!\reg.sample_count\(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\reg.sample_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X29_Y7_N2
\Selector131~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(11)) # ((\reg.state.STORE~q\ & \Add2~22_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(11),
	datad => \Add2~22_combout\,
	combout => \Selector131~0_combout\);

-- Location: FF_X29_Y7_N3
\reg.sample_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector131~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(11));

-- Location: LCCOMB_X28_Y7_N26
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\reg.sample_count\(12) & (\Add2~23\ $ (GND))) # (!\reg.sample_count\(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\reg.sample_count\(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X29_Y7_N0
\Selector130~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\Add2~24_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(12) & \reg~5_combout\)))) # (!\Add2~24_combout\ & (((\reg.sample_count\(12) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(12),
	datad => \reg~5_combout\,
	combout => \Selector130~0_combout\);

-- Location: FF_X29_Y7_N1
\reg.sample_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector130~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(12));

-- Location: LCCOMB_X28_Y7_N28
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

-- Location: LCCOMB_X29_Y7_N10
\Selector129~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(13)) # ((\reg.state.STORE~q\ & \Add2~26_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(13),
	datad => \Add2~26_combout\,
	combout => \Selector129~0_combout\);

-- Location: FF_X29_Y7_N11
\reg.sample_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector129~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(13));

-- Location: LCCOMB_X28_Y7_N30
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\reg.sample_count\(14) & (\Add2~27\ $ (GND))) # (!\reg.sample_count\(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\reg.sample_count\(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X29_Y7_N8
\Selector128~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(14)) # ((\reg.state.STORE~q\ & \Add2~28_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(14),
	datad => \Add2~28_combout\,
	combout => \Selector128~0_combout\);

-- Location: FF_X29_Y7_N9
\reg.sample_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector128~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(14));

-- Location: LCCOMB_X28_Y6_N0
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\reg.sample_count\(15) & (!\Add2~29\)) # (!\reg.sample_count\(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\reg.sample_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X29_Y6_N6
\Selector127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\Add2~30_combout\ & ((\reg.state.STORE~q\) # ((\reg.sample_count\(15) & \reg~5_combout\)))) # (!\Add2~30_combout\ & (((\reg.sample_count\(15) & \reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(15),
	datad => \reg~5_combout\,
	combout => \Selector127~0_combout\);

-- Location: FF_X29_Y6_N7
\reg.sample_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector127~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(15));

-- Location: LCCOMB_X28_Y6_N2
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

-- Location: LCCOMB_X29_Y6_N16
\Selector126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(16)) # ((\reg.state.STORE~q\ & \Add2~32_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(16),
	datad => \Add2~32_combout\,
	combout => \Selector126~0_combout\);

-- Location: FF_X29_Y6_N17
\reg.sample_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(16));

-- Location: LCCOMB_X28_Y6_N4
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

-- Location: LCCOMB_X29_Y6_N14
\Selector125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(17)) # ((\reg.state.STORE~q\ & \Add2~34_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(17),
	datad => \Add2~34_combout\,
	combout => \Selector125~0_combout\);

-- Location: FF_X29_Y6_N15
\reg.sample_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector125~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(17));

-- Location: LCCOMB_X28_Y6_N6
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

-- Location: LCCOMB_X29_Y6_N4
\Selector124~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(18)) # ((\reg.state.STORE~q\ & \Add2~36_combout\)))) # (!\reg~5_combout\ & (\reg.state.STORE~q\ & ((\Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \reg.sample_count\(18),
	datad => \Add2~36_combout\,
	combout => \Selector124~0_combout\);

-- Location: FF_X29_Y6_N5
\reg.sample_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector124~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(18));

-- Location: LCCOMB_X28_Y6_N8
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

-- Location: LCCOMB_X27_Y6_N18
\Selector123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~38_combout\) # ((\reg~5_combout\ & \reg.sample_count\(19))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(19),
	datad => \Add2~38_combout\,
	combout => \Selector123~0_combout\);

-- Location: FF_X27_Y6_N19
\reg.sample_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector123~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(19));

-- Location: LCCOMB_X28_Y6_N10
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

-- Location: LCCOMB_X27_Y6_N16
\Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\Add2~40_combout\ & ((\reg.state.STORE~q\) # ((\reg~5_combout\ & \reg.sample_count\(20))))) # (!\Add2~40_combout\ & (\reg~5_combout\ & (\reg.sample_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(20),
	datad => \reg.state.STORE~q\,
	combout => \Selector122~0_combout\);

-- Location: FF_X27_Y6_N17
\reg.sample_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector122~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(20));

-- Location: LCCOMB_X28_Y6_N12
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\reg.sample_count\(21) & (!\Add2~41\)) # (!\reg.sample_count\(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\reg.sample_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X27_Y6_N30
\Selector121~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\Add2~42_combout\ & ((\reg.state.STORE~q\) # ((\reg~5_combout\ & \reg.sample_count\(21))))) # (!\Add2~42_combout\ & (\reg~5_combout\ & (\reg.sample_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(21),
	datad => \reg.state.STORE~q\,
	combout => \Selector121~0_combout\);

-- Location: FF_X27_Y6_N31
\reg.sample_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector121~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(21));

-- Location: LCCOMB_X28_Y6_N14
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\reg.sample_count\(22) & (\Add2~43\ $ (GND))) # (!\reg.sample_count\(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\reg.sample_count\(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X27_Y6_N8
\Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\reg~5_combout\ & ((\reg.sample_count\(22)) # ((\Add2~44_combout\ & \reg.state.STORE~q\)))) # (!\reg~5_combout\ & (\Add2~44_combout\ & ((\reg.state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \Add2~44_combout\,
	datac => \reg.sample_count\(22),
	datad => \reg.state.STORE~q\,
	combout => \Selector120~0_combout\);

-- Location: FF_X27_Y6_N9
\reg.sample_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector120~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(22));

-- Location: LCCOMB_X28_Y6_N16
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

-- Location: LCCOMB_X27_Y6_N28
\Selector119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~46_combout\) # ((\reg~5_combout\ & \reg.sample_count\(23))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(23),
	datad => \Add2~46_combout\,
	combout => \Selector119~0_combout\);

-- Location: FF_X27_Y6_N29
\reg.sample_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector119~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(23));

-- Location: LCCOMB_X28_Y6_N18
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\reg.sample_count\(24) & (\Add2~47\ $ (GND))) # (!\reg.sample_count\(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\reg.sample_count\(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X27_Y6_N26
\Selector118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~48_combout\) # ((\reg~5_combout\ & \reg.sample_count\(24))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(24),
	datad => \Add2~48_combout\,
	combout => \Selector118~0_combout\);

-- Location: FF_X27_Y6_N27
\reg.sample_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector118~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(24));

-- Location: LCCOMB_X28_Y6_N20
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

-- Location: LCCOMB_X27_Y6_N20
\Selector117~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\Add2~50_combout\ & ((\reg.state.STORE~q\) # ((\reg~5_combout\ & \reg.sample_count\(25))))) # (!\Add2~50_combout\ & (\reg~5_combout\ & (\reg.sample_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(25),
	datad => \reg.state.STORE~q\,
	combout => \Selector117~0_combout\);

-- Location: FF_X27_Y6_N21
\reg.sample_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector117~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(25));

-- Location: LCCOMB_X28_Y6_N22
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\reg.sample_count\(26) & (\Add2~51\ $ (GND))) # (!\reg.sample_count\(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\reg.sample_count\(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.sample_count\(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X27_Y6_N6
\Selector116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~52_combout\) # ((\reg~5_combout\ & \reg.sample_count\(26))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(26),
	datad => \Add2~52_combout\,
	combout => \Selector116~0_combout\);

-- Location: FF_X27_Y6_N7
\reg.sample_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector116~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(26));

-- Location: LCCOMB_X27_Y6_N10
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\reg.sample_count\(26) & (!\reg.sample_count\(25) & (!\reg.sample_count\(24) & !\reg.sample_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(26),
	datab => \reg.sample_count\(25),
	datac => \reg.sample_count\(24),
	datad => \reg.sample_count\(23),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y6_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\reg.sample_count\(21) & (!\reg.sample_count\(20) & (!\reg.sample_count\(22) & !\reg.sample_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(21),
	datab => \reg.sample_count\(20),
	datac => \reg.sample_count\(22),
	datad => \reg.sample_count\(19),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y6_N24
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\reg.sample_count\(27) & (!\Add2~53\)) # (!\reg.sample_count\(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\reg.sample_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X27_Y6_N2
\Selector115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~54_combout\) # ((\reg~5_combout\ & \reg.sample_count\(27))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(27),
	datad => \Add2~54_combout\,
	combout => \Selector115~0_combout\);

-- Location: FF_X27_Y6_N3
\reg.sample_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(27));

-- Location: LCCOMB_X28_Y6_N26
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

-- Location: LCCOMB_X27_Y6_N12
\Selector114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~56_combout\) # ((\reg~5_combout\ & \reg.sample_count\(28))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(28),
	datad => \Add2~56_combout\,
	combout => \Selector114~0_combout\);

-- Location: FF_X27_Y6_N13
\reg.sample_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector114~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(28));

-- Location: LCCOMB_X28_Y6_N28
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

-- Location: LCCOMB_X27_Y6_N22
\Selector113~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\reg.state.STORE~q\ & ((\Add2~58_combout\) # ((\reg~5_combout\ & \reg.sample_count\(29))))) # (!\reg.state.STORE~q\ & (\reg~5_combout\ & (\reg.sample_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.STORE~q\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(29),
	datad => \Add2~58_combout\,
	combout => \Selector113~0_combout\);

-- Location: FF_X27_Y6_N23
\reg.sample_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector113~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(29));

-- Location: LCCOMB_X28_Y6_N30
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \Add2~59\ $ (!\reg.sample_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reg.sample_count\(30),
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: LCCOMB_X27_Y6_N24
\Selector112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\Add2~60_combout\ & ((\reg.state.STORE~q\) # ((\reg~5_combout\ & \reg.sample_count\(30))))) # (!\Add2~60_combout\ & (\reg~5_combout\ & (\reg.sample_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~60_combout\,
	datab => \reg~5_combout\,
	datac => \reg.sample_count\(30),
	datad => \reg.state.STORE~q\,
	combout => \Selector112~0_combout\);

-- Location: FF_X27_Y6_N25
\reg.sample_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector112~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.sample_count\(30));

-- Location: LCCOMB_X27_Y6_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\reg.sample_count\(28) & (!\reg.sample_count\(27) & (!\reg.sample_count\(29) & !\reg.sample_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(28),
	datab => \reg.sample_count\(27),
	datac => \reg.sample_count\(29),
	datad => \reg.sample_count\(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\reg.sample_count\(15) & (!\reg.sample_count\(18) & (!\reg.sample_count\(17) & !\reg.sample_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(15),
	datab => \reg.sample_count\(18),
	datac => \reg.sample_count\(17),
	datad => \reg.sample_count\(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X27_Y6_N14
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y7_N18
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\reg.sample_count\(0) & (!\reg.sample_count\(1) & !\reg.sample_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.sample_count\(0),
	datab => \reg.sample_count\(1),
	datad => \reg.sample_count\(2),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X27_Y7_N16
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~8_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X27_Y7_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\reg.state.STORE~q\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \reg.state.STORE~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X27_Y7_N4
\reg.state.OUTPUT~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.state.OUTPUT~feeder_combout\ = \Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector2~0_combout\,
	combout => \reg.state.OUTPUT~feeder_combout\);

-- Location: FF_X27_Y7_N5
\reg.state.OUTPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.state.OUTPUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.OUTPUT~q\);

-- Location: IOIBUF_X32_Y0_N22
\i_NEW_VALUE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEW_VALUE,
	o => \i_NEW_VALUE~input_o\);

-- Location: LCCOMB_X27_Y7_N28
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (!\reg.state.OUTPUT~q\ & ((\reg.state.IDLE~q\) # (\i_NEW_VALUE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \reg.state.OUTPUT~q\,
	datac => \reg.state.IDLE~q\,
	datad => \i_NEW_VALUE~input_o\,
	combout => \Selector0~1_combout\);

-- Location: FF_X27_Y7_N29
\reg.state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.IDLE~q\);

-- Location: LCCOMB_X27_Y7_N8
\reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~4_combout\ = (!\reg.state.IDLE~q\ & \i_NEW_VALUE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.state.IDLE~q\,
	datad => \i_NEW_VALUE~input_o\,
	combout => \reg~4_combout\);

-- Location: FF_X27_Y7_N9
\reg.state.CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.CALCULATE~q\);

-- Location: FF_X27_Y7_N11
\reg.state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.state.CALCULATE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.state.STORE~q\);

-- Location: LCCOMB_X27_Y7_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\reg.state.STORE~q\ & (\Equal0~4_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg.state.STORE~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X27_Y7_N24
\reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~6_combout\ = (\reg.state.STORE~q\) # (!\reg.state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg.state.STORE~q\,
	datad => \reg.state.IDLE~q\,
	combout => \reg~6_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[3]~_Duplicate_1_q\) # ((\reg.VA_prev2\(3) & \reg~6_combout\)))) # (!\reg.state.CALCULATE~q\ & (((\reg.VA_prev2\(3) & \reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg.VA_prev[3]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(3),
	datad => \reg~6_combout\,
	combout => \Selector108~0_combout\);

-- Location: FF_X19_Y7_N19
\reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector108~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(3));

-- Location: LCCOMB_X19_Y7_N30
\reg.VA_prev[0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[0]~_Duplicate_1feeder_combout\ = \Selector57~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector57~1_combout\,
	combout => \reg.VA_prev[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y7_N31
\reg.VA_prev[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y7_N30
\Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\reg~5_combout\) # ((\reg.state.STORE~q\ & (\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~5_combout\,
	datab => \reg.state.STORE~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X22_Y6_N6
\reg.VA_prev[1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[1]~_Duplicate_1feeder_combout\ = \Selector56~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector56~0_combout\,
	combout => \reg.VA_prev[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y6_N7
\reg.VA_prev[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[1]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N24
\Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\reg~6_combout\ & ((\reg.VA_prev2\(1)) # ((\reg.VA_prev[1]~_Duplicate_1_q\ & \reg.state.CALCULATE~q\)))) # (!\reg~6_combout\ & (\reg.VA_prev[1]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~6_combout\,
	datab => \reg.VA_prev[1]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(1),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector110~0_combout\);

-- Location: FF_X19_Y7_N25
\reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(1));

-- Location: LCCOMB_X22_Y7_N24
\reg.VA_prev[2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[2]~_Duplicate_1feeder_combout\ = \Selector55~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector55~0_combout\,
	combout => \reg.VA_prev[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y7_N25
\reg.VA_prev[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[2]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N6
\Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\reg.VA_prev[2]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(2))))) # (!\reg.VA_prev[2]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[2]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(2),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector109~0_combout\);

-- Location: FF_X22_Y7_N7
\reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector109~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(2));

-- Location: IOIBUF_X35_Y0_N22
\i_SIG[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(2),
	o => \i_SIG[2]~input_o\);

-- Location: FF_X19_Y7_N7
\reg.VA_prev[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N16
\Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\reg~6_combout\ & ((\reg.VA_prev2\(4)) # ((\reg.VA_prev[4]~_Duplicate_1_q\ & \reg.state.CALCULATE~q\)))) # (!\reg~6_combout\ & (\reg.VA_prev[4]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~6_combout\,
	datab => \reg.VA_prev[4]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(4),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector107~0_combout\);

-- Location: FF_X19_Y7_N17
\reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector107~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(4));

-- Location: IOIBUF_X32_Y0_N1
\i_SIG[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(4),
	o => \i_SIG[4]~input_o\);

-- Location: LCCOMB_X22_Y7_N14
\reg.VA_prev[5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[5]~_Duplicate_1feeder_combout\ = \Selector52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector52~0_combout\,
	combout => \reg.VA_prev[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y7_N15
\reg.VA_prev[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[5]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N0
\Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\reg.VA_prev[5]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(5))))) # (!\reg.VA_prev[5]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[5]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(5),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector106~0_combout\);

-- Location: FF_X22_Y7_N1
\reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector106~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(5));

-- Location: IOIBUF_X35_Y0_N29
\i_SIG[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(5),
	o => \i_SIG[5]~input_o\);

-- Location: FF_X22_Y6_N15
\reg.VA_prev[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N10
\Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[18]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(18))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(18),
	datad => \reg.VA_prev[18]~_Duplicate_1_q\,
	combout => \Selector93~0_combout\);

-- Location: FF_X23_Y6_N11
\reg.VA_prev2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(18));

-- Location: FF_X22_Y6_N5
\reg.VA_prev[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N0
\Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[19]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(19))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(19),
	datad => \reg.VA_prev[19]~_Duplicate_1_q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X23_Y6_N1
\reg.VA_prev2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(19));

-- Location: FF_X22_Y6_N27
\reg.VA_prev[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N30
\Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\reg.VA_prev[20]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(20))))) # (!\reg.VA_prev[20]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[20]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(20),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector91~0_combout\);

-- Location: FF_X22_Y7_N31
\reg.VA_prev2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(20));

-- Location: IOIBUF_X32_Y0_N8
\i_SIG[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(11),
	o => \i_SIG[11]~input_o\);

-- Location: LCCOMB_X19_Y6_N10
\reg.VA_prev[21]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[21]~_Duplicate_1feeder_combout\ = \Selector36~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector36~0_combout\,
	combout => \reg.VA_prev[21]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y6_N11
\reg.VA_prev[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[21]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y6_N8
\Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\reg.VA_prev[21]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(21))))) # (!\reg.VA_prev[21]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[21]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(21),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector90~0_combout\);

-- Location: FF_X19_Y6_N9
\reg.VA_prev2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector90~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(21));

-- Location: LCCOMB_X23_Y6_N26
\reg.VA_prev[22]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[22]~_Duplicate_1feeder_combout\ = \Selector35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector35~0_combout\,
	combout => \reg.VA_prev[22]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y6_N27
\reg.VA_prev[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[22]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y6_N4
\Selector89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\reg~6_combout\ & ((\reg.VA_prev2\(22)) # ((\reg.VA_prev[22]~_Duplicate_1_q\ & \reg.state.CALCULATE~q\)))) # (!\reg~6_combout\ & (\reg.VA_prev[22]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~6_combout\,
	datab => \reg.VA_prev[22]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(22),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector89~0_combout\);

-- Location: FF_X24_Y6_N5
\reg.VA_prev2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(22));

-- Location: FF_X22_Y6_N21
\reg.VA_prev[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N28
\Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[24]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(24))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(24),
	datad => \reg.VA_prev[24]~_Duplicate_1_q\,
	combout => \Selector87~0_combout\);

-- Location: FF_X23_Y6_N29
\reg.VA_prev2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(24));

-- Location: FF_X22_Y7_N27
\reg.VA_prev[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N20
\Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\reg.VA_prev[25]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(25))))) # (!\reg.VA_prev[25]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[25]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(25),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector86~0_combout\);

-- Location: FF_X22_Y7_N21
\reg.VA_prev2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector86~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(25));

-- Location: LCCOMB_X21_Y6_N28
\reg.VA_prev[26]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[26]~_Duplicate_1feeder_combout\ = \Selector31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector31~0_combout\,
	combout => \reg.VA_prev[26]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y6_N29
\reg.VA_prev[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[26]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N10
\Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\reg.VA_prev[26]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(26))))) # (!\reg.VA_prev[26]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[26]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(26),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector85~0_combout\);

-- Location: FF_X22_Y7_N11
\reg.VA_prev2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector85~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(26));

-- Location: DSPMULT_X18_Y6_N0
\Mult0|auto_generated|mac_mult3\ : cycloneiii_mac_mult
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
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y6_N2
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

-- Location: LCCOMB_X19_Y6_N12
\Mult0|auto_generated|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~0_combout\ = \Mult0|auto_generated|mac_out4~DATAOUT15\ $ (VCC)
-- \Mult0|auto_generated|op_2~1\ = CARRY(\Mult0|auto_generated|mac_out4~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_2~0_combout\,
	cout => \Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X19_Y6_N14
\Mult0|auto_generated|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT16\ & (!\Mult0|auto_generated|op_2~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT16\ & ((\Mult0|auto_generated|op_2~1\) # (GND)))
-- \Mult0|auto_generated|op_2~3\ = CARRY((!\Mult0|auto_generated|op_2~1\) # (!\Mult0|auto_generated|mac_out4~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~1\,
	combout => \Mult0|auto_generated|op_2~2_combout\,
	cout => \Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X19_Y6_N16
\Mult0|auto_generated|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~4_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT17\ & (\Mult0|auto_generated|op_2~3\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\Mult0|auto_generated|op_2~3\ & VCC))
-- \Mult0|auto_generated|op_2~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT17\ & !\Mult0|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~3\,
	combout => \Mult0|auto_generated|op_2~4_combout\,
	cout => \Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X19_Y6_N18
\Mult0|auto_generated|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~6_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT18\ & (!\Mult0|auto_generated|op_2~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT18\ & ((\Mult0|auto_generated|op_2~5\) # (GND)))
-- \Mult0|auto_generated|op_2~7\ = CARRY((!\Mult0|auto_generated|op_2~5\) # (!\Mult0|auto_generated|mac_out4~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~5\,
	combout => \Mult0|auto_generated|op_2~6_combout\,
	cout => \Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X19_Y6_N20
\Mult0|auto_generated|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~8_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT19\ & (\Mult0|auto_generated|op_2~7\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\Mult0|auto_generated|op_2~7\ & VCC))
-- \Mult0|auto_generated|op_2~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT19\ & !\Mult0|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~7\,
	combout => \Mult0|auto_generated|op_2~8_combout\,
	cout => \Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X19_Y6_N22
\Mult0|auto_generated|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~10_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT20\ & (!\Mult0|auto_generated|op_2~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT20\ & ((\Mult0|auto_generated|op_2~9\) # (GND)))
-- \Mult0|auto_generated|op_2~11\ = CARRY((!\Mult0|auto_generated|op_2~9\) # (!\Mult0|auto_generated|mac_out4~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~9\,
	combout => \Mult0|auto_generated|op_2~10_combout\,
	cout => \Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X19_Y6_N24
\Mult0|auto_generated|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~12_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT21\ & (\Mult0|auto_generated|op_2~11\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT21\ & (!\Mult0|auto_generated|op_2~11\ & VCC))
-- \Mult0|auto_generated|op_2~13\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT21\ & !\Mult0|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~11\,
	combout => \Mult0|auto_generated|op_2~12_combout\,
	cout => \Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X19_Y6_N26
\Mult0|auto_generated|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~14_combout\ = \Mult0|auto_generated|mac_out4~DATAOUT22\ $ (\Mult0|auto_generated|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT22\,
	cin => \Mult0|auto_generated|op_2~13\,
	combout => \Mult0|auto_generated|op_2~14_combout\);

-- Location: FF_X19_Y7_N21
\reg.VA_prev[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y7_N0
\Selector105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[6]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(6))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(6),
	datad => \reg.VA_prev[6]~_Duplicate_1_q\,
	combout => \Selector105~0_combout\);

-- Location: FF_X16_Y7_N1
\reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(6));

-- Location: IOIBUF_X28_Y0_N8
\i_SIG[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(6),
	o => \i_SIG[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\i_SIG[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(7),
	o => \i_SIG[7]~input_o\);

-- Location: FF_X19_Y7_N23
\reg.VA_prev[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y7_N2
\Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\reg.VA_prev[8]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(8))))) # (!\reg.VA_prev[8]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[8]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(8),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector103~0_combout\);

-- Location: FF_X16_Y7_N3
\reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(8));

-- Location: IOIBUF_X35_Y0_N1
\i_SIG[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(8),
	o => \i_SIG[8]~input_o\);

-- Location: FF_X19_Y7_N9
\reg.VA_prev[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y7_N2
\Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[9]~_Duplicate_1_q\) # ((\reg.VA_prev2\(9) & \reg~6_combout\)))) # (!\reg.state.CALCULATE~q\ & (((\reg.VA_prev2\(9) & \reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg.VA_prev[9]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(9),
	datad => \reg~6_combout\,
	combout => \Selector102~0_combout\);

-- Location: FF_X15_Y7_N3
\reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(9));

-- Location: IOIBUF_X39_Y0_N29
\i_SIG[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(10),
	o => \i_SIG[10]~input_o\);

-- Location: FF_X19_Y7_N13
\reg.VA_prev[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y7_N4
\Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[11]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(11))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(11),
	datad => \reg.VA_prev[11]~_Duplicate_1_q\,
	combout => \Selector100~0_combout\);

-- Location: FF_X16_Y7_N5
\reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(11));

-- Location: FF_X22_Y7_N23
\reg.VA_prev[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N4
\Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\reg.VA_prev[13]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(13))))) # (!\reg.VA_prev[13]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[13]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(13),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector98~0_combout\);

-- Location: FF_X22_Y7_N5
\reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(13));

-- Location: LCCOMB_X22_Y6_N12
\reg.VA_prev[14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[14]~_Duplicate_1feeder_combout\ = \Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector43~0_combout\,
	combout => \reg.VA_prev[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y6_N13
\reg.VA_prev[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[14]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y6_N28
\reg.VA_prev[17]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA_prev[17]~_Duplicate_1feeder_combout\ = \Selector40~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector40~0_combout\,
	combout => \reg.VA_prev[17]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y6_N29
\reg.VA_prev[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA_prev[17]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[17]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N24
\Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[17]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(17))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(17),
	datad => \reg.VA_prev[17]~_Duplicate_1_q\,
	combout => \Selector94~0_combout\);

-- Location: FF_X23_Y6_N25
\reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(17));

-- Location: DSPMULT_X18_Y7_N0
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
	signa => GND,
	signb => VCC,
	clk => \i_CLK~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y7_N2
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

-- Location: LCCOMB_X17_Y7_N10
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

-- Location: LCCOMB_X17_Y7_N12
\Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)))) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((!\Mult0|auto_generated|op_1~1\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y7_N14
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

-- Location: LCCOMB_X17_Y7_N16
\Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult0|auto_generated|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y7_N18
\Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Mult0|auto_generated|mac_out4~DATAOUT4\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & (\Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y7_N20
\Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y7_N22
\Mult0|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT6\ $ (\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT6\ & ((\Mult0|auto_generated|mac_out2~DATAOUT24\) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT6\ & (\Mult0|auto_generated|mac_out2~DATAOUT24\ 
-- & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y7_N24
\Mult0|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|op_1~13\)))) 
-- # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult0|auto_generated|op_1~13\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y7_N26
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

-- Location: LCCOMB_X17_Y7_N28
\Mult0|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|op_1~17\)))) 
-- # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((!\Mult0|auto_generated|op_1~17\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y7_N30
\Mult0|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT10\ & ((\Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT28\ & !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y6_N0
\Mult0|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult0|auto_generated|op_1~21\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|op_1~21\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((!\Mult0|auto_generated|op_1~21\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X17_Y6_N2
\Mult0|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\Mult0|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult0|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\Mult0|auto_generated|mac_out4~DATAOUT12\) # (!\Mult0|auto_generated|op_1~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT12\ & !\Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X17_Y6_N4
\Mult0|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (\Mult0|auto_generated|op_1~25\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\Mult0|auto_generated|op_1~25\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|op_1~25\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~27\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & !\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((!\Mult0|auto_generated|op_1~25\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: IOIBUF_X35_Y0_N8
\i_SIG[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(9),
	o => \i_SIG[9]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\i_SIG[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(3),
	o => \i_SIG[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\i_SIG[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(1),
	o => \i_SIG[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\i_SIG[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(0),
	o => \i_SIG[0]~input_o\);

-- Location: LCCOMB_X16_Y7_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult0|auto_generated|w257w\(14) & (\i_SIG[0]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|w257w\(14) & (\i_SIG[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\Mult0|auto_generated|w257w\(14) & \i_SIG[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w257w\(14),
	datab => \i_SIG[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X16_Y7_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mult0|auto_generated|w257w\(15) & ((\i_SIG[1]~input_o\ & (\Add0~1\ & VCC)) # (!\i_SIG[1]~input_o\ & (!\Add0~1\)))) # (!\Mult0|auto_generated|w257w\(15) & ((\i_SIG[1]~input_o\ & (!\Add0~1\)) # (!\i_SIG[1]~input_o\ & ((\Add0~1\) # 
-- (GND)))))
-- \Add0~3\ = CARRY((\Mult0|auto_generated|w257w\(15) & (!\i_SIG[1]~input_o\ & !\Add0~1\)) # (!\Mult0|auto_generated|w257w\(15) & ((!\Add0~1\) # (!\i_SIG[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w257w\(15),
	datab => \i_SIG[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y7_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\i_SIG[2]~input_o\ $ (\Mult0|auto_generated|w257w\(16) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\i_SIG[2]~input_o\ & ((\Mult0|auto_generated|w257w\(16)) # (!\Add0~3\))) # (!\i_SIG[2]~input_o\ & (\Mult0|auto_generated|w257w\(16) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[2]~input_o\,
	datab => \Mult0|auto_generated|w257w\(16),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X16_Y7_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mult0|auto_generated|w257w\(17) & ((\i_SIG[3]~input_o\ & (\Add0~5\ & VCC)) # (!\i_SIG[3]~input_o\ & (!\Add0~5\)))) # (!\Mult0|auto_generated|w257w\(17) & ((\i_SIG[3]~input_o\ & (!\Add0~5\)) # (!\i_SIG[3]~input_o\ & ((\Add0~5\) # 
-- (GND)))))
-- \Add0~7\ = CARRY((\Mult0|auto_generated|w257w\(17) & (!\i_SIG[3]~input_o\ & !\Add0~5\)) # (!\Mult0|auto_generated|w257w\(17) & ((!\Add0~5\) # (!\i_SIG[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w257w\(17),
	datab => \i_SIG[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X16_Y7_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\i_SIG[4]~input_o\ $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\i_SIG[4]~input_o\ & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Add0~7\))) # (!\i_SIG[4]~input_o\ & (\Mult0|auto_generated|op_1~0_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[4]~input_o\,
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X16_Y7_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\i_SIG[5]~input_o\ & ((\Mult0|auto_generated|op_1~2_combout\ & (\Add0~9\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Add0~9\)))) # (!\i_SIG[5]~input_o\ & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Add0~9\)) # 
-- (!\Mult0|auto_generated|op_1~2_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\i_SIG[5]~input_o\ & (!\Mult0|auto_generated|op_1~2_combout\ & !\Add0~9\)) # (!\i_SIG[5]~input_o\ & ((!\Add0~9\) # (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[5]~input_o\,
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X16_Y7_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\i_SIG[6]~input_o\ $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\i_SIG[6]~input_o\ & ((\Mult0|auto_generated|op_1~4_combout\) # (!\Add0~11\))) # (!\i_SIG[6]~input_o\ & (\Mult0|auto_generated|op_1~4_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[6]~input_o\,
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X16_Y7_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i_SIG[7]~input_o\ & ((\Mult0|auto_generated|op_1~6_combout\ & (\Add0~13\ & VCC)) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\Add0~13\)))) # (!\i_SIG[7]~input_o\ & ((\Mult0|auto_generated|op_1~6_combout\ & (!\Add0~13\)) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\i_SIG[7]~input_o\ & (!\Mult0|auto_generated|op_1~6_combout\ & !\Add0~13\)) # (!\i_SIG[7]~input_o\ & ((!\Add0~13\) # (!\Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[7]~input_o\,
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X16_Y7_N22
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\i_SIG[8]~input_o\ $ (\Mult0|auto_generated|op_1~8_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\i_SIG[8]~input_o\ & ((\Mult0|auto_generated|op_1~8_combout\) # (!\Add0~15\))) # (!\i_SIG[8]~input_o\ & (\Mult0|auto_generated|op_1~8_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[8]~input_o\,
	datab => \Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X16_Y7_N24
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Mult0|auto_generated|op_1~10_combout\ & ((\i_SIG[9]~input_o\ & (\Add0~17\ & VCC)) # (!\i_SIG[9]~input_o\ & (!\Add0~17\)))) # (!\Mult0|auto_generated|op_1~10_combout\ & ((\i_SIG[9]~input_o\ & (!\Add0~17\)) # (!\i_SIG[9]~input_o\ & 
-- ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Mult0|auto_generated|op_1~10_combout\ & (!\i_SIG[9]~input_o\ & !\Add0~17\)) # (!\Mult0|auto_generated|op_1~10_combout\ & ((!\Add0~17\) # (!\i_SIG[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datab => \i_SIG[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X16_Y7_N26
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\i_SIG[10]~input_o\ $ (\Mult0|auto_generated|op_1~12_combout\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\i_SIG[10]~input_o\ & ((\Mult0|auto_generated|op_1~12_combout\) # (!\Add0~19\))) # (!\i_SIG[10]~input_o\ & (\Mult0|auto_generated|op_1~12_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[10]~input_o\,
	datab => \Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X16_Y7_N28
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Mult0|auto_generated|op_1~14_combout\ & ((\i_SIG[11]~input_o\ & (\Add0~21\ & VCC)) # (!\i_SIG[11]~input_o\ & (!\Add0~21\)))) # (!\Mult0|auto_generated|op_1~14_combout\ & ((\i_SIG[11]~input_o\ & (!\Add0~21\)) # (!\i_SIG[11]~input_o\ & 
-- ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\Mult0|auto_generated|op_1~14_combout\ & (!\i_SIG[11]~input_o\ & !\Add0~21\)) # (!\Mult0|auto_generated|op_1~14_combout\ & ((!\Add0~21\) # (!\i_SIG[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~14_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X16_Y7_N30
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\i_SIG[11]~input_o\ $ (\Mult0|auto_generated|op_1~16_combout\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~16_combout\) # (!\Add0~23\))) # (!\i_SIG[11]~input_o\ & (\Mult0|auto_generated|op_1~16_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X16_Y6_N0
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Mult0|auto_generated|op_1~18_combout\ & ((\i_SIG[11]~input_o\ & (\Add0~25\ & VCC)) # (!\i_SIG[11]~input_o\ & (!\Add0~25\)))) # (!\Mult0|auto_generated|op_1~18_combout\ & ((\i_SIG[11]~input_o\ & (!\Add0~25\)) # (!\i_SIG[11]~input_o\ & 
-- ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\Mult0|auto_generated|op_1~18_combout\ & (!\i_SIG[11]~input_o\ & !\Add0~25\)) # (!\Mult0|auto_generated|op_1~18_combout\ & ((!\Add0~25\) # (!\i_SIG[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~18_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X16_Y6_N2
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\i_SIG[11]~input_o\ $ (\Mult0|auto_generated|op_1~20_combout\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~20_combout\) # (!\Add0~27\))) # (!\i_SIG[11]~input_o\ & (\Mult0|auto_generated|op_1~20_combout\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X16_Y6_N4
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~22_combout\ & (\Add0~29\ & VCC)) # (!\Mult0|auto_generated|op_1~22_combout\ & (!\Add0~29\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~22_combout\ & (!\Add0~29\)) # 
-- (!\Mult0|auto_generated|op_1~22_combout\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|op_1~22_combout\ & !\Add0~29\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~29\) # (!\Mult0|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X16_Y6_N6
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\i_SIG[11]~input_o\ $ (\Mult0|auto_generated|op_1~24_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~24_combout\) # (!\Add0~31\))) # (!\i_SIG[11]~input_o\ & (\Mult0|auto_generated|op_1~24_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X16_Y6_N8
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~26_combout\ & (\Add0~33\ & VCC)) # (!\Mult0|auto_generated|op_1~26_combout\ & (!\Add0~33\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~26_combout\ & (!\Add0~33\)) # 
-- (!\Mult0|auto_generated|op_1~26_combout\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|op_1~26_combout\ & !\Add0~33\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~33\) # (!\Mult0|auto_generated|op_1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X22_Y6_N3
\reg.VA_prev[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[16]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N22
\Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[16]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(16))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(16),
	datad => \reg.VA_prev[16]~_Duplicate_1_q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X23_Y6_N23
\reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(16));

-- Location: FF_X19_Y7_N5
\reg.VA_prev[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y6_N28
\Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\reg.VA_prev[15]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(15))))) # (!\reg.VA_prev[15]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[15]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(15),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector96~0_combout\);

-- Location: FF_X15_Y6_N29
\reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(15));

-- Location: LCCOMB_X24_Y6_N2
\Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\reg.VA_prev[14]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg.VA_prev2\(14) & \reg~6_combout\)))) # (!\reg.VA_prev[14]~_Duplicate_1_q\ & (((\reg.VA_prev2\(14) & \reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[14]~_Duplicate_1_q\,
	datab => \reg.state.CALCULATE~q\,
	datac => \reg.VA_prev2\(14),
	datad => \reg~6_combout\,
	combout => \Selector97~0_combout\);

-- Location: FF_X24_Y6_N3
\reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(14));

-- Location: FF_X19_Y7_N11
\reg.VA_prev[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N0
\Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\reg~6_combout\ & ((\reg.VA_prev2\(12)) # ((\reg.VA_prev[12]~_Duplicate_1_q\ & \reg.state.CALCULATE~q\)))) # (!\reg~6_combout\ & (\reg.VA_prev[12]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg~6_combout\,
	datab => \reg.VA_prev[12]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(12),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector99~0_combout\);

-- Location: FF_X19_Y7_N1
\reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(12));

-- Location: FF_X19_Y7_N3
\reg.VA_prev[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y7_N26
\Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[10]~_Duplicate_1_q\) # ((\reg.VA_prev2\(10) & \reg~6_combout\)))) # (!\reg.state.CALCULATE~q\ & (((\reg.VA_prev2\(10) & \reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg.VA_prev[10]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(10),
	datad => \reg~6_combout\,
	combout => \Selector101~0_combout\);

-- Location: FF_X19_Y7_N27
\reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(10));

-- Location: FF_X22_Y7_N29
\reg.VA_prev[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y7_N2
\Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\reg.VA_prev[7]~_Duplicate_1_q\ & ((\reg.state.CALCULATE~q\) # ((\reg~6_combout\ & \reg.VA_prev2\(7))))) # (!\reg.VA_prev[7]~_Duplicate_1_q\ & (\reg~6_combout\ & (\reg.VA_prev2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[7]~_Duplicate_1_q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(7),
	datad => \reg.state.CALCULATE~q\,
	combout => \Selector104~0_combout\);

-- Location: FF_X22_Y7_N3
\reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(7));

-- Location: LCCOMB_X15_Y7_N4
\Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[0]~_Duplicate_1_q\) # ((\reg.VA_prev2\(0) & \reg~6_combout\)))) # (!\reg.state.CALCULATE~q\ & (((\reg.VA_prev2\(0) & \reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg.VA_prev[0]~_Duplicate_1_q\,
	datac => \reg.VA_prev2\(0),
	datad => \reg~6_combout\,
	combout => \Selector111~0_combout\);

-- Location: FF_X15_Y7_N5
\reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector111~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(0));

-- Location: LCCOMB_X15_Y7_N6
\reg.VA[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[0]~27_combout\ = (\Add0~0_combout\ & ((GND) # (!\reg.VA_prev2\(0)))) # (!\Add0~0_combout\ & (\reg.VA_prev2\(0) $ (GND)))
-- \reg.VA[0]~28\ = CARRY((\Add0~0_combout\) # (!\reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \reg.VA_prev2\(0),
	datad => VCC,
	combout => \reg.VA[0]~27_combout\,
	cout => \reg.VA[0]~28\);

-- Location: LCCOMB_X15_Y7_N8
\reg.VA[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[1]~29_combout\ = (\reg.VA_prev2\(1) & ((\Add0~2_combout\ & (!\reg.VA[0]~28\)) # (!\Add0~2_combout\ & ((\reg.VA[0]~28\) # (GND))))) # (!\reg.VA_prev2\(1) & ((\Add0~2_combout\ & (\reg.VA[0]~28\ & VCC)) # (!\Add0~2_combout\ & (!\reg.VA[0]~28\))))
-- \reg.VA[1]~30\ = CARRY((\reg.VA_prev2\(1) & ((!\reg.VA[0]~28\) # (!\Add0~2_combout\))) # (!\reg.VA_prev2\(1) & (!\Add0~2_combout\ & !\reg.VA[0]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(1),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \reg.VA[0]~28\,
	combout => \reg.VA[1]~29_combout\,
	cout => \reg.VA[1]~30\);

-- Location: LCCOMB_X15_Y7_N10
\reg.VA[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[2]~31_combout\ = ((\reg.VA_prev2\(2) $ (\Add0~4_combout\ $ (\reg.VA[1]~30\)))) # (GND)
-- \reg.VA[2]~32\ = CARRY((\reg.VA_prev2\(2) & (\Add0~4_combout\ & !\reg.VA[1]~30\)) # (!\reg.VA_prev2\(2) & ((\Add0~4_combout\) # (!\reg.VA[1]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \reg.VA[1]~30\,
	combout => \reg.VA[2]~31_combout\,
	cout => \reg.VA[2]~32\);

-- Location: LCCOMB_X15_Y7_N12
\reg.VA[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[3]~33_combout\ = (\reg.VA_prev2\(3) & ((\Add0~6_combout\ & (!\reg.VA[2]~32\)) # (!\Add0~6_combout\ & ((\reg.VA[2]~32\) # (GND))))) # (!\reg.VA_prev2\(3) & ((\Add0~6_combout\ & (\reg.VA[2]~32\ & VCC)) # (!\Add0~6_combout\ & (!\reg.VA[2]~32\))))
-- \reg.VA[3]~34\ = CARRY((\reg.VA_prev2\(3) & ((!\reg.VA[2]~32\) # (!\Add0~6_combout\))) # (!\reg.VA_prev2\(3) & (!\Add0~6_combout\ & !\reg.VA[2]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(3),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \reg.VA[2]~32\,
	combout => \reg.VA[3]~33_combout\,
	cout => \reg.VA[3]~34\);

-- Location: LCCOMB_X15_Y7_N14
\reg.VA[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[4]~35_combout\ = ((\reg.VA_prev2\(4) $ (\Add0~8_combout\ $ (\reg.VA[3]~34\)))) # (GND)
-- \reg.VA[4]~36\ = CARRY((\reg.VA_prev2\(4) & (\Add0~8_combout\ & !\reg.VA[3]~34\)) # (!\reg.VA_prev2\(4) & ((\Add0~8_combout\) # (!\reg.VA[3]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(4),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \reg.VA[3]~34\,
	combout => \reg.VA[4]~35_combout\,
	cout => \reg.VA[4]~36\);

-- Location: LCCOMB_X15_Y7_N16
\reg.VA[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[5]~37_combout\ = (\reg.VA_prev2\(5) & ((\Add0~10_combout\ & (!\reg.VA[4]~36\)) # (!\Add0~10_combout\ & ((\reg.VA[4]~36\) # (GND))))) # (!\reg.VA_prev2\(5) & ((\Add0~10_combout\ & (\reg.VA[4]~36\ & VCC)) # (!\Add0~10_combout\ & (!\reg.VA[4]~36\))))
-- \reg.VA[5]~38\ = CARRY((\reg.VA_prev2\(5) & ((!\reg.VA[4]~36\) # (!\Add0~10_combout\))) # (!\reg.VA_prev2\(5) & (!\Add0~10_combout\ & !\reg.VA[4]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(5),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \reg.VA[4]~36\,
	combout => \reg.VA[5]~37_combout\,
	cout => \reg.VA[5]~38\);

-- Location: LCCOMB_X15_Y7_N18
\reg.VA[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[6]~39_combout\ = ((\reg.VA_prev2\(6) $ (\Add0~12_combout\ $ (\reg.VA[5]~38\)))) # (GND)
-- \reg.VA[6]~40\ = CARRY((\reg.VA_prev2\(6) & (\Add0~12_combout\ & !\reg.VA[5]~38\)) # (!\reg.VA_prev2\(6) & ((\Add0~12_combout\) # (!\reg.VA[5]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(6),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \reg.VA[5]~38\,
	combout => \reg.VA[6]~39_combout\,
	cout => \reg.VA[6]~40\);

-- Location: LCCOMB_X15_Y7_N20
\reg.VA[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[7]~41_combout\ = (\Add0~14_combout\ & ((\reg.VA_prev2\(7) & (!\reg.VA[6]~40\)) # (!\reg.VA_prev2\(7) & (\reg.VA[6]~40\ & VCC)))) # (!\Add0~14_combout\ & ((\reg.VA_prev2\(7) & ((\reg.VA[6]~40\) # (GND))) # (!\reg.VA_prev2\(7) & (!\reg.VA[6]~40\))))
-- \reg.VA[7]~42\ = CARRY((\Add0~14_combout\ & (\reg.VA_prev2\(7) & !\reg.VA[6]~40\)) # (!\Add0~14_combout\ & ((\reg.VA_prev2\(7)) # (!\reg.VA[6]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \reg.VA_prev2\(7),
	datad => VCC,
	cin => \reg.VA[6]~40\,
	combout => \reg.VA[7]~41_combout\,
	cout => \reg.VA[7]~42\);

-- Location: LCCOMB_X15_Y7_N22
\reg.VA[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[8]~43_combout\ = ((\reg.VA_prev2\(8) $ (\Add0~16_combout\ $ (\reg.VA[7]~42\)))) # (GND)
-- \reg.VA[8]~44\ = CARRY((\reg.VA_prev2\(8) & (\Add0~16_combout\ & !\reg.VA[7]~42\)) # (!\reg.VA_prev2\(8) & ((\Add0~16_combout\) # (!\reg.VA[7]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(8),
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \reg.VA[7]~42\,
	combout => \reg.VA[8]~43_combout\,
	cout => \reg.VA[8]~44\);

-- Location: LCCOMB_X15_Y7_N24
\reg.VA[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[9]~45_combout\ = (\reg.VA_prev2\(9) & ((\Add0~18_combout\ & (!\reg.VA[8]~44\)) # (!\Add0~18_combout\ & ((\reg.VA[8]~44\) # (GND))))) # (!\reg.VA_prev2\(9) & ((\Add0~18_combout\ & (\reg.VA[8]~44\ & VCC)) # (!\Add0~18_combout\ & (!\reg.VA[8]~44\))))
-- \reg.VA[9]~46\ = CARRY((\reg.VA_prev2\(9) & ((!\reg.VA[8]~44\) # (!\Add0~18_combout\))) # (!\reg.VA_prev2\(9) & (!\Add0~18_combout\ & !\reg.VA[8]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(9),
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \reg.VA[8]~44\,
	combout => \reg.VA[9]~45_combout\,
	cout => \reg.VA[9]~46\);

-- Location: LCCOMB_X15_Y7_N26
\reg.VA[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[10]~47_combout\ = ((\Add0~20_combout\ $ (\reg.VA_prev2\(10) $ (\reg.VA[9]~46\)))) # (GND)
-- \reg.VA[10]~48\ = CARRY((\Add0~20_combout\ & ((!\reg.VA[9]~46\) # (!\reg.VA_prev2\(10)))) # (!\Add0~20_combout\ & (!\reg.VA_prev2\(10) & !\reg.VA[9]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \reg.VA_prev2\(10),
	datad => VCC,
	cin => \reg.VA[9]~46\,
	combout => \reg.VA[10]~47_combout\,
	cout => \reg.VA[10]~48\);

-- Location: LCCOMB_X15_Y7_N28
\reg.VA[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[11]~49_combout\ = (\reg.VA_prev2\(11) & ((\Add0~22_combout\ & (!\reg.VA[10]~48\)) # (!\Add0~22_combout\ & ((\reg.VA[10]~48\) # (GND))))) # (!\reg.VA_prev2\(11) & ((\Add0~22_combout\ & (\reg.VA[10]~48\ & VCC)) # (!\Add0~22_combout\ & 
-- (!\reg.VA[10]~48\))))
-- \reg.VA[11]~50\ = CARRY((\reg.VA_prev2\(11) & ((!\reg.VA[10]~48\) # (!\Add0~22_combout\))) # (!\reg.VA_prev2\(11) & (!\Add0~22_combout\ & !\reg.VA[10]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(11),
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \reg.VA[10]~48\,
	combout => \reg.VA[11]~49_combout\,
	cout => \reg.VA[11]~50\);

-- Location: LCCOMB_X15_Y7_N30
\reg.VA[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[12]~51_combout\ = ((\Add0~24_combout\ $ (\reg.VA_prev2\(12) $ (\reg.VA[11]~50\)))) # (GND)
-- \reg.VA[12]~52\ = CARRY((\Add0~24_combout\ & ((!\reg.VA[11]~50\) # (!\reg.VA_prev2\(12)))) # (!\Add0~24_combout\ & (!\reg.VA_prev2\(12) & !\reg.VA[11]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \reg.VA_prev2\(12),
	datad => VCC,
	cin => \reg.VA[11]~50\,
	combout => \reg.VA[12]~51_combout\,
	cout => \reg.VA[12]~52\);

-- Location: LCCOMB_X15_Y6_N0
\reg.VA[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[13]~53_combout\ = (\reg.VA_prev2\(13) & ((\Add0~26_combout\ & (!\reg.VA[12]~52\)) # (!\Add0~26_combout\ & ((\reg.VA[12]~52\) # (GND))))) # (!\reg.VA_prev2\(13) & ((\Add0~26_combout\ & (\reg.VA[12]~52\ & VCC)) # (!\Add0~26_combout\ & 
-- (!\reg.VA[12]~52\))))
-- \reg.VA[13]~54\ = CARRY((\reg.VA_prev2\(13) & ((!\reg.VA[12]~52\) # (!\Add0~26_combout\))) # (!\reg.VA_prev2\(13) & (!\Add0~26_combout\ & !\reg.VA[12]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(13),
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \reg.VA[12]~52\,
	combout => \reg.VA[13]~53_combout\,
	cout => \reg.VA[13]~54\);

-- Location: LCCOMB_X15_Y6_N2
\reg.VA[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[14]~55_combout\ = ((\Add0~28_combout\ $ (\reg.VA_prev2\(14) $ (\reg.VA[13]~54\)))) # (GND)
-- \reg.VA[14]~56\ = CARRY((\Add0~28_combout\ & ((!\reg.VA[13]~54\) # (!\reg.VA_prev2\(14)))) # (!\Add0~28_combout\ & (!\reg.VA_prev2\(14) & !\reg.VA[13]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \reg.VA_prev2\(14),
	datad => VCC,
	cin => \reg.VA[13]~54\,
	combout => \reg.VA[14]~55_combout\,
	cout => \reg.VA[14]~56\);

-- Location: LCCOMB_X15_Y6_N4
\reg.VA[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[15]~57_combout\ = (\Add0~30_combout\ & ((\reg.VA_prev2\(15) & (!\reg.VA[14]~56\)) # (!\reg.VA_prev2\(15) & (\reg.VA[14]~56\ & VCC)))) # (!\Add0~30_combout\ & ((\reg.VA_prev2\(15) & ((\reg.VA[14]~56\) # (GND))) # (!\reg.VA_prev2\(15) & 
-- (!\reg.VA[14]~56\))))
-- \reg.VA[15]~58\ = CARRY((\Add0~30_combout\ & (\reg.VA_prev2\(15) & !\reg.VA[14]~56\)) # (!\Add0~30_combout\ & ((\reg.VA_prev2\(15)) # (!\reg.VA[14]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \reg.VA_prev2\(15),
	datad => VCC,
	cin => \reg.VA[14]~56\,
	combout => \reg.VA[15]~57_combout\,
	cout => \reg.VA[15]~58\);

-- Location: LCCOMB_X15_Y6_N6
\reg.VA[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[16]~59_combout\ = ((\Add0~32_combout\ $ (\reg.VA_prev2\(16) $ (\reg.VA[15]~58\)))) # (GND)
-- \reg.VA[16]~60\ = CARRY((\Add0~32_combout\ & ((!\reg.VA[15]~58\) # (!\reg.VA_prev2\(16)))) # (!\Add0~32_combout\ & (!\reg.VA_prev2\(16) & !\reg.VA[15]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \reg.VA_prev2\(16),
	datad => VCC,
	cin => \reg.VA[15]~58\,
	combout => \reg.VA[16]~59_combout\,
	cout => \reg.VA[16]~60\);

-- Location: LCCOMB_X15_Y6_N8
\reg.VA[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[17]~61_combout\ = (\reg.VA_prev2\(17) & ((\Add0~34_combout\ & (!\reg.VA[16]~60\)) # (!\Add0~34_combout\ & ((\reg.VA[16]~60\) # (GND))))) # (!\reg.VA_prev2\(17) & ((\Add0~34_combout\ & (\reg.VA[16]~60\ & VCC)) # (!\Add0~34_combout\ & 
-- (!\reg.VA[16]~60\))))
-- \reg.VA[17]~62\ = CARRY((\reg.VA_prev2\(17) & ((!\reg.VA[16]~60\) # (!\Add0~34_combout\))) # (!\reg.VA_prev2\(17) & (!\Add0~34_combout\ & !\reg.VA[16]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(17),
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \reg.VA[16]~60\,
	combout => \reg.VA[17]~61_combout\,
	cout => \reg.VA[17]~62\);

-- Location: FF_X15_Y6_N9
\reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[17]~61_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(17));

-- Location: LCCOMB_X22_Y6_N30
\Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Selector57~0_combout\ & ((\reg.VA_prev[17]~_Duplicate_1_q\) # ((\reg.VA\(17) & \Selector0~0_combout\)))) # (!\Selector57~0_combout\ & (((\reg.VA\(17) & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \reg.VA_prev[17]~_Duplicate_1_q\,
	datac => \reg.VA\(17),
	datad => \Selector0~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X15_Y6_N7
\reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[16]~59_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(16));

-- Location: LCCOMB_X22_Y6_N2
\Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Selector57~0_combout\ & ((\reg.VA_prev[16]~_Duplicate_1_q\) # ((\reg.VA\(16) & \Selector0~0_combout\)))) # (!\Selector57~0_combout\ & (\reg.VA\(16) & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \reg.VA\(16),
	datac => \reg.VA_prev[16]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X15_Y6_N5
\reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[15]~57_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(15));

-- Location: LCCOMB_X19_Y7_N4
\Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Selector0~0_combout\ & ((\reg.VA\(15)) # ((\reg.VA_prev[15]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\Selector0~0_combout\ & (((\reg.VA_prev[15]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \reg.VA\(15),
	datac => \reg.VA_prev[15]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X15_Y6_N3
\reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[14]~55_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(14));

-- Location: LCCOMB_X22_Y6_N0
\Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\reg.VA_prev[14]~_Duplicate_1_q\ & ((\Selector57~0_combout\) # ((\Selector0~0_combout\ & \reg.VA\(14))))) # (!\reg.VA_prev[14]~_Duplicate_1_q\ & (\Selector0~0_combout\ & (\reg.VA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[14]~_Duplicate_1_q\,
	datab => \Selector0~0_combout\,
	datac => \reg.VA\(14),
	datad => \Selector57~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X15_Y6_N1
\reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[13]~53_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(13));

-- Location: LCCOMB_X22_Y7_N22
\Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\reg.VA\(13) & ((\Selector0~0_combout\) # ((\reg.VA_prev[13]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(13) & (((\reg.VA_prev[13]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(13),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[13]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X15_Y7_N31
\reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[12]~51_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(12));

-- Location: LCCOMB_X19_Y7_N10
\Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\reg.VA\(12) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[12]~_Duplicate_1_q\)))) # (!\reg.VA\(12) & (\Selector57~0_combout\ & (\reg.VA_prev[12]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(12),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[12]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X15_Y7_N29
\reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[11]~49_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(11));

-- Location: LCCOMB_X19_Y7_N12
\Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Selector0~0_combout\ & ((\reg.VA\(11)) # ((\reg.VA_prev[11]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\Selector0~0_combout\ & (((\reg.VA_prev[11]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \reg.VA\(11),
	datac => \reg.VA_prev[11]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X15_Y7_N27
\reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[10]~47_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(10));

-- Location: LCCOMB_X19_Y7_N2
\Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\reg.VA\(10) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[10]~_Duplicate_1_q\)))) # (!\reg.VA\(10) & (\Selector57~0_combout\ & (\reg.VA_prev[10]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(10),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[10]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X15_Y7_N25
\reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[9]~45_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(9));

-- Location: LCCOMB_X19_Y7_N8
\Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Selector0~0_combout\ & ((\reg.VA\(9)) # ((\reg.VA_prev[9]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\Selector0~0_combout\ & (((\reg.VA_prev[9]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \reg.VA\(9),
	datac => \reg.VA_prev[9]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X15_Y7_N23
\reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[8]~43_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(8));

-- Location: LCCOMB_X19_Y7_N22
\Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\reg.VA\(8) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[8]~_Duplicate_1_q\)))) # (!\reg.VA\(8) & (\Selector57~0_combout\ & (\reg.VA_prev[8]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(8),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[8]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X15_Y7_N21
\reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[7]~41_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(7));

-- Location: LCCOMB_X22_Y7_N28
\Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\reg.VA\(7) & ((\Selector0~0_combout\) # ((\reg.VA_prev[7]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(7) & (((\reg.VA_prev[7]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(7),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[7]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X15_Y7_N19
\reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[6]~39_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(6));

-- Location: LCCOMB_X19_Y7_N20
\Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\reg.VA\(6) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[6]~_Duplicate_1_q\)))) # (!\reg.VA\(6) & (\Selector57~0_combout\ & (\reg.VA_prev[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(6),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[6]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X17_Y6_N6
\Mult0|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~28_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT14\ $ (\Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\Mult0|auto_generated|op_1~27\)))) # (GND)
-- \Mult0|auto_generated|op_1~29\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT14\ & ((\Mult0|auto_generated|mac_out2~DATAOUT32\) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT14\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT32\ & !\Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT14\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~27\,
	combout => \Mult0|auto_generated|op_1~28_combout\,
	cout => \Mult0|auto_generated|op_1~29\);

-- Location: LCCOMB_X17_Y6_N8
\Mult0|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~30_combout\ = (\Mult0|auto_generated|op_2~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & (\Mult0|auto_generated|op_1~29\ & VCC)))) # 
-- (!\Mult0|auto_generated|op_2~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\Mult0|auto_generated|op_1~29\) # (GND))) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\Mult0|auto_generated|op_1~29\))))
-- \Mult0|auto_generated|op_1~31\ = CARRY((\Mult0|auto_generated|op_2~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT33\ & !\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|op_2~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT33\) # 
-- (!\Mult0|auto_generated|op_1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~29\,
	combout => \Mult0|auto_generated|op_1~30_combout\,
	cout => \Mult0|auto_generated|op_1~31\);

-- Location: LCCOMB_X17_Y6_N10
\Mult0|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~32_combout\ = (\Mult0|auto_generated|op_2~2_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~31\))) # (!\Mult0|auto_generated|op_2~2_combout\ & (\Mult0|auto_generated|op_1~31\ $ (GND)))
-- \Mult0|auto_generated|op_1~33\ = CARRY((\Mult0|auto_generated|op_2~2_combout\) # (!\Mult0|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~31\,
	combout => \Mult0|auto_generated|op_1~32_combout\,
	cout => \Mult0|auto_generated|op_1~33\);

-- Location: LCCOMB_X17_Y6_N12
\Mult0|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~34_combout\ = (\Mult0|auto_generated|op_2~4_combout\ & (\Mult0|auto_generated|op_1~33\ & VCC)) # (!\Mult0|auto_generated|op_2~4_combout\ & (!\Mult0|auto_generated|op_1~33\))
-- \Mult0|auto_generated|op_1~35\ = CARRY((!\Mult0|auto_generated|op_2~4_combout\ & !\Mult0|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~33\,
	combout => \Mult0|auto_generated|op_1~34_combout\,
	cout => \Mult0|auto_generated|op_1~35\);

-- Location: LCCOMB_X17_Y6_N14
\Mult0|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~36_combout\ = (\Mult0|auto_generated|op_2~6_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~35\))) # (!\Mult0|auto_generated|op_2~6_combout\ & (\Mult0|auto_generated|op_1~35\ $ (GND)))
-- \Mult0|auto_generated|op_1~37\ = CARRY((\Mult0|auto_generated|op_2~6_combout\) # (!\Mult0|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~35\,
	combout => \Mult0|auto_generated|op_1~36_combout\,
	cout => \Mult0|auto_generated|op_1~37\);

-- Location: LCCOMB_X17_Y6_N16
\Mult0|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~38_combout\ = (\Mult0|auto_generated|op_2~8_combout\ & (\Mult0|auto_generated|op_1~37\ & VCC)) # (!\Mult0|auto_generated|op_2~8_combout\ & (!\Mult0|auto_generated|op_1~37\))
-- \Mult0|auto_generated|op_1~39\ = CARRY((!\Mult0|auto_generated|op_2~8_combout\ & !\Mult0|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~37\,
	combout => \Mult0|auto_generated|op_1~38_combout\,
	cout => \Mult0|auto_generated|op_1~39\);

-- Location: LCCOMB_X17_Y6_N18
\Mult0|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~40_combout\ = (\Mult0|auto_generated|op_2~10_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~39\))) # (!\Mult0|auto_generated|op_2~10_combout\ & (\Mult0|auto_generated|op_1~39\ $ (GND)))
-- \Mult0|auto_generated|op_1~41\ = CARRY((\Mult0|auto_generated|op_2~10_combout\) # (!\Mult0|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~39\,
	combout => \Mult0|auto_generated|op_1~40_combout\,
	cout => \Mult0|auto_generated|op_1~41\);

-- Location: LCCOMB_X17_Y6_N20
\Mult0|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~42_combout\ = (\Mult0|auto_generated|op_2~12_combout\ & (\Mult0|auto_generated|op_1~41\ & VCC)) # (!\Mult0|auto_generated|op_2~12_combout\ & (!\Mult0|auto_generated|op_1~41\))
-- \Mult0|auto_generated|op_1~43\ = CARRY((!\Mult0|auto_generated|op_2~12_combout\ & !\Mult0|auto_generated|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~41\,
	combout => \Mult0|auto_generated|op_1~42_combout\,
	cout => \Mult0|auto_generated|op_1~43\);

-- Location: LCCOMB_X17_Y6_N22
\Mult0|auto_generated|op_1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~44_combout\ = \Mult0|auto_generated|op_1~43\ $ (\Mult0|auto_generated|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|op_2~14_combout\,
	cin => \Mult0|auto_generated|op_1~43\,
	combout => \Mult0|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X16_Y6_N10
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Mult0|auto_generated|op_1~28_combout\ $ (\i_SIG[11]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\Mult0|auto_generated|op_1~28_combout\ & ((\i_SIG[11]~input_o\) # (!\Add0~35\))) # (!\Mult0|auto_generated|op_1~28_combout\ & (\i_SIG[11]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~28_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X16_Y6_N12
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Mult0|auto_generated|op_1~30_combout\ & ((\i_SIG[11]~input_o\ & (\Add0~37\ & VCC)) # (!\i_SIG[11]~input_o\ & (!\Add0~37\)))) # (!\Mult0|auto_generated|op_1~30_combout\ & ((\i_SIG[11]~input_o\ & (!\Add0~37\)) # (!\i_SIG[11]~input_o\ & 
-- ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\Mult0|auto_generated|op_1~30_combout\ & (!\i_SIG[11]~input_o\ & !\Add0~37\)) # (!\Mult0|auto_generated|op_1~30_combout\ & ((!\Add0~37\) # (!\i_SIG[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~30_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X16_Y6_N14
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\i_SIG[11]~input_o\ $ (\Mult0|auto_generated|op_1~32_combout\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~32_combout\) # (!\Add0~39\))) # (!\i_SIG[11]~input_o\ & (\Mult0|auto_generated|op_1~32_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X16_Y6_N16
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~34_combout\ & (\Add0~41\ & VCC)) # (!\Mult0|auto_generated|op_1~34_combout\ & (!\Add0~41\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~34_combout\ & (!\Add0~41\)) # 
-- (!\Mult0|auto_generated|op_1~34_combout\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|op_1~34_combout\ & !\Add0~41\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~41\) # (!\Mult0|auto_generated|op_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X16_Y6_N18
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\Mult0|auto_generated|op_1~36_combout\ $ (\i_SIG[11]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\Mult0|auto_generated|op_1~36_combout\ & ((\i_SIG[11]~input_o\) # (!\Add0~43\))) # (!\Mult0|auto_generated|op_1~36_combout\ & (\i_SIG[11]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~36_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X16_Y6_N20
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~38_combout\ & (\Add0~45\ & VCC)) # (!\Mult0|auto_generated|op_1~38_combout\ & (!\Add0~45\)))) # (!\i_SIG[11]~input_o\ & ((\Mult0|auto_generated|op_1~38_combout\ & (!\Add0~45\)) # 
-- (!\Mult0|auto_generated|op_1~38_combout\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\i_SIG[11]~input_o\ & (!\Mult0|auto_generated|op_1~38_combout\ & !\Add0~45\)) # (!\i_SIG[11]~input_o\ & ((!\Add0~45\) # (!\Mult0|auto_generated|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datab => \Mult0|auto_generated|op_1~38_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X16_Y6_N22
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Mult0|auto_generated|op_1~40_combout\ $ (\i_SIG[11]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\Mult0|auto_generated|op_1~40_combout\ & ((\i_SIG[11]~input_o\) # (!\Add0~47\))) # (!\Mult0|auto_generated|op_1~40_combout\ & (\i_SIG[11]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~40_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X16_Y6_N24
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Mult0|auto_generated|op_1~42_combout\ & ((\i_SIG[11]~input_o\ & (\Add0~49\ & VCC)) # (!\i_SIG[11]~input_o\ & (!\Add0~49\)))) # (!\Mult0|auto_generated|op_1~42_combout\ & ((\i_SIG[11]~input_o\ & (!\Add0~49\)) # (!\i_SIG[11]~input_o\ & 
-- ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\Mult0|auto_generated|op_1~42_combout\ & (!\i_SIG[11]~input_o\ & !\Add0~49\)) # (!\Mult0|auto_generated|op_1~42_combout\ & ((!\Add0~49\) # (!\i_SIG[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~42_combout\,
	datab => \i_SIG[11]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X16_Y6_N26
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = \i_SIG[11]~input_o\ $ (\Add0~51\ $ (!\Mult0|auto_generated|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_SIG[11]~input_o\,
	datad => \Mult0|auto_generated|op_1~44_combout\,
	cin => \Add0~51\,
	combout => \Add0~52_combout\);

-- Location: FF_X22_Y7_N17
\reg.VA_prev[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y6_N30
\Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\reg.state.CALCULATE~q\ & ((\reg.VA_prev[23]~_Duplicate_1_q\) # ((\reg~6_combout\ & \reg.VA_prev2\(23))))) # (!\reg.state.CALCULATE~q\ & (\reg~6_combout\ & (\reg.VA_prev2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg~6_combout\,
	datac => \reg.VA_prev2\(23),
	datad => \reg.VA_prev[23]~_Duplicate_1_q\,
	combout => \Selector88~0_combout\);

-- Location: FF_X23_Y6_N31
\reg.VA_prev2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev2\(23));

-- Location: LCCOMB_X15_Y6_N10
\reg.VA[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[18]~63_combout\ = ((\reg.VA_prev2\(18) $ (\Add0~36_combout\ $ (\reg.VA[17]~62\)))) # (GND)
-- \reg.VA[18]~64\ = CARRY((\reg.VA_prev2\(18) & (\Add0~36_combout\ & !\reg.VA[17]~62\)) # (!\reg.VA_prev2\(18) & ((\Add0~36_combout\) # (!\reg.VA[17]~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(18),
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \reg.VA[17]~62\,
	combout => \reg.VA[18]~63_combout\,
	cout => \reg.VA[18]~64\);

-- Location: LCCOMB_X15_Y6_N12
\reg.VA[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[19]~65_combout\ = (\reg.VA_prev2\(19) & ((\Add0~38_combout\ & (!\reg.VA[18]~64\)) # (!\Add0~38_combout\ & ((\reg.VA[18]~64\) # (GND))))) # (!\reg.VA_prev2\(19) & ((\Add0~38_combout\ & (\reg.VA[18]~64\ & VCC)) # (!\Add0~38_combout\ & 
-- (!\reg.VA[18]~64\))))
-- \reg.VA[19]~66\ = CARRY((\reg.VA_prev2\(19) & ((!\reg.VA[18]~64\) # (!\Add0~38_combout\))) # (!\reg.VA_prev2\(19) & (!\Add0~38_combout\ & !\reg.VA[18]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(19),
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \reg.VA[18]~64\,
	combout => \reg.VA[19]~65_combout\,
	cout => \reg.VA[19]~66\);

-- Location: LCCOMB_X15_Y6_N14
\reg.VA[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[20]~67_combout\ = ((\reg.VA_prev2\(20) $ (\Add0~40_combout\ $ (\reg.VA[19]~66\)))) # (GND)
-- \reg.VA[20]~68\ = CARRY((\reg.VA_prev2\(20) & (\Add0~40_combout\ & !\reg.VA[19]~66\)) # (!\reg.VA_prev2\(20) & ((\Add0~40_combout\) # (!\reg.VA[19]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(20),
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \reg.VA[19]~66\,
	combout => \reg.VA[20]~67_combout\,
	cout => \reg.VA[20]~68\);

-- Location: LCCOMB_X15_Y6_N16
\reg.VA[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[21]~69_combout\ = (\reg.VA_prev2\(21) & ((\Add0~42_combout\ & (!\reg.VA[20]~68\)) # (!\Add0~42_combout\ & ((\reg.VA[20]~68\) # (GND))))) # (!\reg.VA_prev2\(21) & ((\Add0~42_combout\ & (\reg.VA[20]~68\ & VCC)) # (!\Add0~42_combout\ & 
-- (!\reg.VA[20]~68\))))
-- \reg.VA[21]~70\ = CARRY((\reg.VA_prev2\(21) & ((!\reg.VA[20]~68\) # (!\Add0~42_combout\))) # (!\reg.VA_prev2\(21) & (!\Add0~42_combout\ & !\reg.VA[20]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(21),
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \reg.VA[20]~68\,
	combout => \reg.VA[21]~69_combout\,
	cout => \reg.VA[21]~70\);

-- Location: LCCOMB_X15_Y6_N18
\reg.VA[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[22]~71_combout\ = ((\reg.VA_prev2\(22) $ (\Add0~44_combout\ $ (\reg.VA[21]~70\)))) # (GND)
-- \reg.VA[22]~72\ = CARRY((\reg.VA_prev2\(22) & (\Add0~44_combout\ & !\reg.VA[21]~70\)) # (!\reg.VA_prev2\(22) & ((\Add0~44_combout\) # (!\reg.VA[21]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(22),
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \reg.VA[21]~70\,
	combout => \reg.VA[22]~71_combout\,
	cout => \reg.VA[22]~72\);

-- Location: LCCOMB_X15_Y6_N20
\reg.VA[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[23]~73_combout\ = (\Add0~46_combout\ & ((\reg.VA_prev2\(23) & (!\reg.VA[22]~72\)) # (!\reg.VA_prev2\(23) & (\reg.VA[22]~72\ & VCC)))) # (!\Add0~46_combout\ & ((\reg.VA_prev2\(23) & ((\reg.VA[22]~72\) # (GND))) # (!\reg.VA_prev2\(23) & 
-- (!\reg.VA[22]~72\))))
-- \reg.VA[23]~74\ = CARRY((\Add0~46_combout\ & (\reg.VA_prev2\(23) & !\reg.VA[22]~72\)) # (!\Add0~46_combout\ & ((\reg.VA_prev2\(23)) # (!\reg.VA[22]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \reg.VA_prev2\(23),
	datad => VCC,
	cin => \reg.VA[22]~72\,
	combout => \reg.VA[23]~73_combout\,
	cout => \reg.VA[23]~74\);

-- Location: LCCOMB_X15_Y6_N22
\reg.VA[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[24]~75_combout\ = ((\reg.VA_prev2\(24) $ (\Add0~48_combout\ $ (\reg.VA[23]~74\)))) # (GND)
-- \reg.VA[24]~76\ = CARRY((\reg.VA_prev2\(24) & (\Add0~48_combout\ & !\reg.VA[23]~74\)) # (!\reg.VA_prev2\(24) & ((\Add0~48_combout\) # (!\reg.VA[23]~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(24),
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \reg.VA[23]~74\,
	combout => \reg.VA[24]~75_combout\,
	cout => \reg.VA[24]~76\);

-- Location: LCCOMB_X15_Y6_N24
\reg.VA[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[25]~77_combout\ = (\reg.VA_prev2\(25) & ((\Add0~50_combout\ & (!\reg.VA[24]~76\)) # (!\Add0~50_combout\ & ((\reg.VA[24]~76\) # (GND))))) # (!\reg.VA_prev2\(25) & ((\Add0~50_combout\ & (\reg.VA[24]~76\ & VCC)) # (!\Add0~50_combout\ & 
-- (!\reg.VA[24]~76\))))
-- \reg.VA[25]~78\ = CARRY((\reg.VA_prev2\(25) & ((!\reg.VA[24]~76\) # (!\Add0~50_combout\))) # (!\reg.VA_prev2\(25) & (!\Add0~50_combout\ & !\reg.VA[24]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev2\(25),
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \reg.VA[24]~76\,
	combout => \reg.VA[25]~77_combout\,
	cout => \reg.VA[25]~78\);

-- Location: LCCOMB_X15_Y6_N26
\reg.VA[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.VA[26]~79_combout\ = \reg.VA_prev2\(26) $ (\reg.VA[25]~78\ $ (\Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg.VA_prev2\(26),
	datad => \Add0~52_combout\,
	cin => \reg.VA[25]~78\,
	combout => \reg.VA[26]~79_combout\);

-- Location: FF_X15_Y6_N27
\reg.VA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[26]~79_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(26));

-- Location: LCCOMB_X21_Y6_N10
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\reg.VA\(26) & ((\Selector0~0_combout\) # ((\reg.VA_prev[26]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(26) & (\reg.VA_prev[26]~_Duplicate_1_q\ & (\Selector57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(26),
	datab => \reg.VA_prev[26]~_Duplicate_1_q\,
	datac => \Selector57~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X15_Y6_N25
\reg.VA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[25]~77_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(25));

-- Location: LCCOMB_X22_Y7_N26
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\reg.VA\(25) & ((\Selector0~0_combout\) # ((\reg.VA_prev[25]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(25) & (((\reg.VA_prev[25]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(25),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[25]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X15_Y6_N23
\reg.VA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[24]~75_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(24));

-- Location: LCCOMB_X22_Y6_N20
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\reg.VA\(24) & ((\Selector0~0_combout\) # ((\reg.VA_prev[24]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(24) & (((\reg.VA_prev[24]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(24),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[24]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X15_Y6_N21
\reg.VA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[23]~73_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(23));

-- Location: LCCOMB_X22_Y7_N16
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Selector57~0_combout\ & ((\reg.VA_prev[23]~_Duplicate_1_q\) # ((\reg.VA\(23) & \Selector0~0_combout\)))) # (!\Selector57~0_combout\ & (\reg.VA\(23) & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \reg.VA\(23),
	datac => \reg.VA_prev[23]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X15_Y6_N19
\reg.VA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[22]~71_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(22));

-- Location: LCCOMB_X23_Y6_N20
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\reg.VA\(22) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[22]~_Duplicate_1_q\)))) # (!\reg.VA\(22) & (\Selector57~0_combout\ & (\reg.VA_prev[22]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(22),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[22]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X15_Y6_N17
\reg.VA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[21]~69_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(21));

-- Location: LCCOMB_X19_Y6_N28
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\reg.VA_prev[21]~_Duplicate_1_q\ & ((\Selector57~0_combout\) # ((\Selector0~0_combout\ & \reg.VA\(21))))) # (!\reg.VA_prev[21]~_Duplicate_1_q\ & (\Selector0~0_combout\ & (\reg.VA\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[21]~_Duplicate_1_q\,
	datab => \Selector0~0_combout\,
	datac => \reg.VA\(21),
	datad => \Selector57~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X15_Y6_N15
\reg.VA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[20]~67_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(20));

-- Location: LCCOMB_X22_Y6_N26
\Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\reg.VA\(20) & ((\Selector0~0_combout\) # ((\reg.VA_prev[20]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(20) & (((\reg.VA_prev[20]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(20),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[20]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X15_Y6_N13
\reg.VA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[19]~65_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(19));

-- Location: LCCOMB_X22_Y6_N4
\Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\reg.VA\(19) & ((\Selector0~0_combout\) # ((\reg.VA_prev[19]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(19) & (((\reg.VA_prev[19]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(19),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[19]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X15_Y6_N11
\reg.VA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[18]~63_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(18));

-- Location: LCCOMB_X22_Y6_N14
\Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Selector57~0_combout\ & ((\reg.VA_prev[18]~_Duplicate_1_q\) # ((\reg.VA\(18) & \Selector0~0_combout\)))) # (!\Selector57~0_combout\ & (\reg.VA\(18) & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \reg.VA\(18),
	datac => \reg.VA_prev[18]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X15_Y7_N17
\reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[5]~37_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(5));

-- Location: LCCOMB_X22_Y7_N18
\Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\reg.VA\(5) & ((\Selector0~0_combout\) # ((\reg.VA_prev[5]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(5) & (((\reg.VA_prev[5]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(5),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[5]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X15_Y7_N15
\reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[4]~35_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(4));

-- Location: LCCOMB_X19_Y7_N6
\Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\reg.VA\(4) & ((\Selector0~0_combout\) # ((\Selector57~0_combout\ & \reg.VA_prev[4]~_Duplicate_1_q\)))) # (!\reg.VA\(4) & (\Selector57~0_combout\ & (\reg.VA_prev[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(4),
	datab => \Selector57~0_combout\,
	datac => \reg.VA_prev[4]~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X15_Y7_N11
\reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[2]~31_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(2));

-- Location: LCCOMB_X22_Y7_N12
\Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\reg.VA\(2) & ((\Selector0~0_combout\) # ((\reg.VA_prev[2]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\reg.VA\(2) & (((\reg.VA_prev[2]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA\(2),
	datab => \Selector0~0_combout\,
	datac => \reg.VA_prev[2]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X15_Y7_N9
\reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[1]~29_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(1));

-- Location: LCCOMB_X22_Y6_N22
\Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\reg.VA_prev[1]~_Duplicate_1_q\ & ((\Selector57~0_combout\) # ((\Selector0~0_combout\ & \reg.VA\(1))))) # (!\reg.VA_prev[1]~_Duplicate_1_q\ & (\Selector0~0_combout\ & (\reg.VA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[1]~_Duplicate_1_q\,
	datab => \Selector0~0_combout\,
	datac => \reg.VA\(1),
	datad => \Selector57~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X15_Y7_N7
\reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[0]~27_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(0));

-- Location: LCCOMB_X19_Y7_N14
\Selector57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\reg.VA_prev[0]~_Duplicate_1_q\ & ((\Selector57~0_combout\) # ((\reg.VA\(0) & \Selector0~0_combout\)))) # (!\reg.VA_prev[0]~_Duplicate_1_q\ & (((\reg.VA\(0) & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.VA_prev[0]~_Duplicate_1_q\,
	datab => \Selector57~0_combout\,
	datac => \reg.VA\(0),
	datad => \Selector0~0_combout\,
	combout => \Selector57~1_combout\);

-- Location: FF_X15_Y7_N13
\reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.VA[3]~33_combout\,
	ena => \reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA\(3));

-- Location: LCCOMB_X19_Y7_N28
\Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Selector0~0_combout\ & ((\reg.VA\(3)) # ((\reg.VA_prev[3]~_Duplicate_1_q\ & \Selector57~0_combout\)))) # (!\Selector0~0_combout\ & (((\reg.VA_prev[3]~_Duplicate_1_q\ & \Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \reg.VA\(3),
	datac => \reg.VA_prev[3]~_Duplicate_1_q\,
	datad => \Selector57~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X19_Y7_N29
\reg.VA_prev[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.VA_prev[3]~_Duplicate_1_q\);

-- Location: DSPMULT_X34_Y10_N0
\Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \Selector2~0_combout\,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y10_N2
\Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X27_Y7_N19
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
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][0]~q\);

-- Location: LCCOMB_X32_Y10_N6
\r_Real[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[0]~27_combout\ = (\Mult1|auto_generated|w251w\(14) & (\reg.result[0][0]~q\ $ (VCC))) # (!\Mult1|auto_generated|w251w\(14) & ((\reg.result[0][0]~q\) # (GND)))
-- \r_Real[0]~28\ = CARRY((\reg.result[0][0]~q\) # (!\Mult1|auto_generated|w251w\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w251w\(14),
	datab => \reg.result[0][0]~q\,
	datad => VCC,
	combout => \r_Real[0]~27_combout\,
	cout => \r_Real[0]~28\);

-- Location: FF_X32_Y10_N7
\r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[0]~27_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(0));

-- Location: LCCOMB_X24_Y7_N0
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

-- Location: FF_X24_Y7_N1
\reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][1]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][1]~q\);

-- Location: LCCOMB_X32_Y10_N8
\r_Real[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[1]~29_combout\ = (\Mult1|auto_generated|w251w\(15) & ((\reg.result[0][1]~q\ & (!\r_Real[0]~28\)) # (!\reg.result[0][1]~q\ & ((\r_Real[0]~28\) # (GND))))) # (!\Mult1|auto_generated|w251w\(15) & ((\reg.result[0][1]~q\ & (\r_Real[0]~28\ & VCC)) # 
-- (!\reg.result[0][1]~q\ & (!\r_Real[0]~28\))))
-- \r_Real[1]~30\ = CARRY((\Mult1|auto_generated|w251w\(15) & ((!\r_Real[0]~28\) # (!\reg.result[0][1]~q\))) # (!\Mult1|auto_generated|w251w\(15) & (!\reg.result[0][1]~q\ & !\r_Real[0]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w251w\(15),
	datab => \reg.result[0][1]~q\,
	datad => VCC,
	cin => \r_Real[0]~28\,
	combout => \r_Real[1]~29_combout\,
	cout => \r_Real[1]~30\);

-- Location: FF_X32_Y10_N9
\r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[1]~29_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(1));

-- Location: FF_X22_Y7_N9
\reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(2),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][2]~q\);

-- Location: LCCOMB_X32_Y10_N10
\r_Real[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[2]~31_combout\ = ((\reg.result[0][2]~q\ $ (\Mult1|auto_generated|w251w\(16) $ (\r_Real[1]~30\)))) # (GND)
-- \r_Real[2]~32\ = CARRY((\reg.result[0][2]~q\ & ((!\r_Real[1]~30\) # (!\Mult1|auto_generated|w251w\(16)))) # (!\reg.result[0][2]~q\ & (!\Mult1|auto_generated|w251w\(16) & !\r_Real[1]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][2]~q\,
	datab => \Mult1|auto_generated|w251w\(16),
	datad => VCC,
	cin => \r_Real[1]~30\,
	combout => \r_Real[2]~31_combout\,
	cout => \r_Real[2]~32\);

-- Location: FF_X32_Y10_N11
\r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[2]~31_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(2));

-- Location: FF_X24_Y7_N15
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
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][3]~q\);

-- Location: LCCOMB_X32_Y10_N12
\r_Real[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[3]~33_combout\ = (\reg.result[0][3]~q\ & ((\Mult1|auto_generated|w251w\(17) & (!\r_Real[2]~32\)) # (!\Mult1|auto_generated|w251w\(17) & (\r_Real[2]~32\ & VCC)))) # (!\reg.result[0][3]~q\ & ((\Mult1|auto_generated|w251w\(17) & ((\r_Real[2]~32\) # 
-- (GND))) # (!\Mult1|auto_generated|w251w\(17) & (!\r_Real[2]~32\))))
-- \r_Real[3]~34\ = CARRY((\reg.result[0][3]~q\ & (\Mult1|auto_generated|w251w\(17) & !\r_Real[2]~32\)) # (!\reg.result[0][3]~q\ & ((\Mult1|auto_generated|w251w\(17)) # (!\r_Real[2]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][3]~q\,
	datab => \Mult1|auto_generated|w251w\(17),
	datad => VCC,
	cin => \r_Real[2]~32\,
	combout => \r_Real[3]~33_combout\,
	cout => \r_Real[3]~34\);

-- Location: FF_X32_Y10_N13
\r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[3]~33_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(3));

-- Location: LCCOMB_X24_Y7_N4
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

-- Location: FF_X24_Y7_N5
\reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][4]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][4]~q\);

-- Location: DSPMULT_X34_Y9_N0
\Mult1|auto_generated|mac_mult3\ : cycloneiii_mac_mult
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
	ena => \Selector2~0_combout\,
	dataa => \Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y9_N2
\Mult1|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y10_N10
\Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT18\ & \Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X32_Y10_N14
\r_Real[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[4]~35_combout\ = ((\reg.result[0][4]~q\ $ (\Mult1|auto_generated|op_1~0_combout\ $ (\r_Real[3]~34\)))) # (GND)
-- \r_Real[4]~36\ = CARRY((\reg.result[0][4]~q\ & ((!\r_Real[3]~34\) # (!\Mult1|auto_generated|op_1~0_combout\))) # (!\reg.result[0][4]~q\ & (!\Mult1|auto_generated|op_1~0_combout\ & !\r_Real[3]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][4]~q\,
	datab => \Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \r_Real[3]~34\,
	combout => \r_Real[4]~35_combout\,
	cout => \r_Real[4]~36\);

-- Location: FF_X32_Y10_N15
\r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[4]~35_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(4));

-- Location: LCCOMB_X24_Y7_N30
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

-- Location: FF_X24_Y7_N31
\reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][5]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][5]~q\);

-- Location: LCCOMB_X33_Y10_N12
\Mult1|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (\Mult1|auto_generated|op_1~1\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|op_1~1\)))) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|auto_generated|op_1~3\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & !\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult1|auto_generated|op_1~1\) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X32_Y10_N16
\r_Real[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[5]~37_combout\ = (\reg.result[0][5]~q\ & ((\Mult1|auto_generated|op_1~2_combout\ & (!\r_Real[4]~36\)) # (!\Mult1|auto_generated|op_1~2_combout\ & (\r_Real[4]~36\ & VCC)))) # (!\reg.result[0][5]~q\ & ((\Mult1|auto_generated|op_1~2_combout\ & 
-- ((\r_Real[4]~36\) # (GND))) # (!\Mult1|auto_generated|op_1~2_combout\ & (!\r_Real[4]~36\))))
-- \r_Real[5]~38\ = CARRY((\reg.result[0][5]~q\ & (\Mult1|auto_generated|op_1~2_combout\ & !\r_Real[4]~36\)) # (!\reg.result[0][5]~q\ & ((\Mult1|auto_generated|op_1~2_combout\) # (!\r_Real[4]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][5]~q\,
	datab => \Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \r_Real[4]~36\,
	combout => \r_Real[5]~37_combout\,
	cout => \r_Real[5]~38\);

-- Location: FF_X32_Y10_N17
\r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[5]~37_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(5));

-- Location: LCCOMB_X24_Y10_N16
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

-- Location: FF_X24_Y10_N17
\reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][6]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][6]~q\);

-- Location: LCCOMB_X33_Y10_N14
\Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT2\ $ (\Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT2\ & ((\Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT2\ & (\Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X32_Y10_N18
\r_Real[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[6]~39_combout\ = ((\reg.result[0][6]~q\ $ (\Mult1|auto_generated|op_1~4_combout\ $ (\r_Real[5]~38\)))) # (GND)
-- \r_Real[6]~40\ = CARRY((\reg.result[0][6]~q\ & ((!\r_Real[5]~38\) # (!\Mult1|auto_generated|op_1~4_combout\))) # (!\reg.result[0][6]~q\ & (!\Mult1|auto_generated|op_1~4_combout\ & !\r_Real[5]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][6]~q\,
	datab => \Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \r_Real[5]~38\,
	combout => \r_Real[6]~39_combout\,
	cout => \r_Real[6]~40\);

-- Location: FF_X32_Y10_N19
\r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[6]~39_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(6));

-- Location: LCCOMB_X24_Y7_N8
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

-- Location: FF_X24_Y7_N9
\reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][7]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][7]~q\);

-- Location: LCCOMB_X33_Y10_N16
\Mult1|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)))) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult1|auto_generated|op_1~5\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X32_Y10_N20
\r_Real[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[7]~41_combout\ = (\reg.result[0][7]~q\ & ((\Mult1|auto_generated|op_1~6_combout\ & (!\r_Real[6]~40\)) # (!\Mult1|auto_generated|op_1~6_combout\ & (\r_Real[6]~40\ & VCC)))) # (!\reg.result[0][7]~q\ & ((\Mult1|auto_generated|op_1~6_combout\ & 
-- ((\r_Real[6]~40\) # (GND))) # (!\Mult1|auto_generated|op_1~6_combout\ & (!\r_Real[6]~40\))))
-- \r_Real[7]~42\ = CARRY((\reg.result[0][7]~q\ & (\Mult1|auto_generated|op_1~6_combout\ & !\r_Real[6]~40\)) # (!\reg.result[0][7]~q\ & ((\Mult1|auto_generated|op_1~6_combout\) # (!\r_Real[6]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][7]~q\,
	datab => \Mult1|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \r_Real[6]~40\,
	combout => \r_Real[7]~41_combout\,
	cout => \r_Real[7]~42\);

-- Location: FF_X32_Y10_N21
\r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[7]~41_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(7));

-- Location: FF_X23_Y7_N21
\reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(8),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][8]~q\);

-- Location: LCCOMB_X33_Y10_N18
\Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\Mult1|auto_generated|mac_out4~DATAOUT4\ $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\Mult1|auto_generated|mac_out4~DATAOUT4\) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT22\ & (\Mult1|auto_generated|mac_out4~DATAOUT4\ & 
-- !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X32_Y10_N22
\r_Real[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[8]~43_combout\ = ((\reg.result[0][8]~q\ $ (\Mult1|auto_generated|op_1~8_combout\ $ (\r_Real[7]~42\)))) # (GND)
-- \r_Real[8]~44\ = CARRY((\reg.result[0][8]~q\ & ((!\r_Real[7]~42\) # (!\Mult1|auto_generated|op_1~8_combout\))) # (!\reg.result[0][8]~q\ & (!\Mult1|auto_generated|op_1~8_combout\ & !\r_Real[7]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][8]~q\,
	datab => \Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \r_Real[7]~42\,
	combout => \r_Real[8]~43_combout\,
	cout => \r_Real[8]~44\);

-- Location: FF_X32_Y10_N23
\r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[8]~43_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(8));

-- Location: LCCOMB_X33_Y10_N20
\Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Mult1|auto_generated|op_1~9\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|op_1~9\)))) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|op_1~9\) # (GND)))))
-- \Mult1|auto_generated|op_1~11\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & ((!\Mult1|auto_generated|op_1~9\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\,
	cout => \Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y7_N10
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

-- Location: FF_X24_Y7_N11
\reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][9]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][9]~q\);

-- Location: LCCOMB_X32_Y10_N24
\r_Real[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[9]~45_combout\ = (\Mult1|auto_generated|op_1~10_combout\ & ((\reg.result[0][9]~q\ & (!\r_Real[8]~44\)) # (!\reg.result[0][9]~q\ & ((\r_Real[8]~44\) # (GND))))) # (!\Mult1|auto_generated|op_1~10_combout\ & ((\reg.result[0][9]~q\ & (\r_Real[8]~44\ & 
-- VCC)) # (!\reg.result[0][9]~q\ & (!\r_Real[8]~44\))))
-- \r_Real[9]~46\ = CARRY((\Mult1|auto_generated|op_1~10_combout\ & ((!\r_Real[8]~44\) # (!\reg.result[0][9]~q\))) # (!\Mult1|auto_generated|op_1~10_combout\ & (!\reg.result[0][9]~q\ & !\r_Real[8]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~10_combout\,
	datab => \reg.result[0][9]~q\,
	datad => VCC,
	cin => \r_Real[8]~44\,
	combout => \r_Real[9]~45_combout\,
	cout => \r_Real[9]~46\);

-- Location: FF_X32_Y10_N25
\r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[9]~45_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(9));

-- Location: LCCOMB_X24_Y7_N12
\reg.result[0][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][10]~feeder_combout\ = \reg.VA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(10),
	combout => \reg.result[0][10]~feeder_combout\);

-- Location: FF_X24_Y7_N13
\reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][10]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][10]~q\);

-- Location: LCCOMB_X33_Y10_N22
\Mult1|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~12_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT6\ $ (\Mult1|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult1|auto_generated|op_1~11\)))) # (GND)
-- \Mult1|auto_generated|op_1~13\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT6\ & ((\Mult1|auto_generated|mac_out2~DATAOUT24\) # (!\Mult1|auto_generated|op_1~11\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT6\ & (\Mult1|auto_generated|mac_out2~DATAOUT24\ 
-- & !\Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~11\,
	combout => \Mult1|auto_generated|op_1~12_combout\,
	cout => \Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X32_Y10_N26
\r_Real[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[10]~47_combout\ = ((\reg.result[0][10]~q\ $ (\Mult1|auto_generated|op_1~12_combout\ $ (\r_Real[9]~46\)))) # (GND)
-- \r_Real[10]~48\ = CARRY((\reg.result[0][10]~q\ & ((!\r_Real[9]~46\) # (!\Mult1|auto_generated|op_1~12_combout\))) # (!\reg.result[0][10]~q\ & (!\Mult1|auto_generated|op_1~12_combout\ & !\r_Real[9]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][10]~q\,
	datab => \Mult1|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \r_Real[9]~46\,
	combout => \r_Real[10]~47_combout\,
	cout => \r_Real[10]~48\);

-- Location: FF_X32_Y10_N27
\r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[10]~47_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(10));

-- Location: FF_X24_Y7_N19
\reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(11),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][11]~q\);

-- Location: LCCOMB_X33_Y10_N24
\Mult1|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~14_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out2~DATAOUT25\ & (\Mult1|auto_generated|op_1~13\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|op_1~13\)))) 
-- # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|op_1~13\) # (GND)))))
-- \Mult1|auto_generated|op_1~15\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & !\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult1|auto_generated|op_1~13\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~13\,
	combout => \Mult1|auto_generated|op_1~14_combout\,
	cout => \Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X32_Y10_N28
\r_Real[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[11]~49_combout\ = (\reg.result[0][11]~q\ & ((\Mult1|auto_generated|op_1~14_combout\ & (!\r_Real[10]~48\)) # (!\Mult1|auto_generated|op_1~14_combout\ & (\r_Real[10]~48\ & VCC)))) # (!\reg.result[0][11]~q\ & ((\Mult1|auto_generated|op_1~14_combout\ 
-- & ((\r_Real[10]~48\) # (GND))) # (!\Mult1|auto_generated|op_1~14_combout\ & (!\r_Real[10]~48\))))
-- \r_Real[11]~50\ = CARRY((\reg.result[0][11]~q\ & (\Mult1|auto_generated|op_1~14_combout\ & !\r_Real[10]~48\)) # (!\reg.result[0][11]~q\ & ((\Mult1|auto_generated|op_1~14_combout\) # (!\r_Real[10]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][11]~q\,
	datab => \Mult1|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \r_Real[10]~48\,
	combout => \r_Real[11]~49_combout\,
	cout => \r_Real[11]~50\);

-- Location: FF_X32_Y10_N29
\r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[11]~49_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(11));

-- Location: LCCOMB_X33_Y10_N26
\Mult1|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~16_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT8\ $ (\Mult1|auto_generated|mac_out2~DATAOUT26\ $ (!\Mult1|auto_generated|op_1~15\)))) # (GND)
-- \Mult1|auto_generated|op_1~17\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT8\ & ((\Mult1|auto_generated|mac_out2~DATAOUT26\) # (!\Mult1|auto_generated|op_1~15\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT8\ & (\Mult1|auto_generated|mac_out2~DATAOUT26\ 
-- & !\Mult1|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT8\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~15\,
	combout => \Mult1|auto_generated|op_1~16_combout\,
	cout => \Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X23_Y7_N26
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

-- Location: FF_X23_Y7_N27
\reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][12]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][12]~q\);

-- Location: LCCOMB_X32_Y10_N30
\r_Real[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[12]~51_combout\ = ((\Mult1|auto_generated|op_1~16_combout\ $ (\reg.result[0][12]~q\ $ (\r_Real[11]~50\)))) # (GND)
-- \r_Real[12]~52\ = CARRY((\Mult1|auto_generated|op_1~16_combout\ & (\reg.result[0][12]~q\ & !\r_Real[11]~50\)) # (!\Mult1|auto_generated|op_1~16_combout\ & ((\reg.result[0][12]~q\) # (!\r_Real[11]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~16_combout\,
	datab => \reg.result[0][12]~q\,
	datad => VCC,
	cin => \r_Real[11]~50\,
	combout => \r_Real[12]~51_combout\,
	cout => \r_Real[12]~52\);

-- Location: FF_X32_Y10_N31
\r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[12]~51_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(12));

-- Location: FF_X31_Y9_N13
\reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(13),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][13]~q\);

-- Location: LCCOMB_X33_Y10_N28
\Mult1|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~18_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\Mult1|auto_generated|mac_out2~DATAOUT27\ & (\Mult1|auto_generated|op_1~17\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\Mult1|auto_generated|op_1~17\)))) 
-- # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\Mult1|auto_generated|op_1~17\) # (GND)))))
-- \Mult1|auto_generated|op_1~19\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & !\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((!\Mult1|auto_generated|op_1~17\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~17\,
	combout => \Mult1|auto_generated|op_1~18_combout\,
	cout => \Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X32_Y9_N0
\r_Real[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[13]~53_combout\ = (\reg.result[0][13]~q\ & ((\Mult1|auto_generated|op_1~18_combout\ & (!\r_Real[12]~52\)) # (!\Mult1|auto_generated|op_1~18_combout\ & (\r_Real[12]~52\ & VCC)))) # (!\reg.result[0][13]~q\ & ((\Mult1|auto_generated|op_1~18_combout\ 
-- & ((\r_Real[12]~52\) # (GND))) # (!\Mult1|auto_generated|op_1~18_combout\ & (!\r_Real[12]~52\))))
-- \r_Real[13]~54\ = CARRY((\reg.result[0][13]~q\ & (\Mult1|auto_generated|op_1~18_combout\ & !\r_Real[12]~52\)) # (!\reg.result[0][13]~q\ & ((\Mult1|auto_generated|op_1~18_combout\) # (!\r_Real[12]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][13]~q\,
	datab => \Mult1|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \r_Real[12]~52\,
	combout => \r_Real[13]~53_combout\,
	cout => \r_Real[13]~54\);

-- Location: FF_X32_Y9_N1
\r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[13]~53_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(13));

-- Location: FF_X24_Y6_N17
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
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][14]~q\);

-- Location: LCCOMB_X33_Y10_N30
\Mult1|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~20_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT28\ $ (\Mult1|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult1|auto_generated|op_1~19\)))) # (GND)
-- \Mult1|auto_generated|op_1~21\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\Mult1|auto_generated|mac_out4~DATAOUT10\) # (!\Mult1|auto_generated|op_1~19\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT28\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT10\ & !\Mult1|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~19\,
	combout => \Mult1|auto_generated|op_1~20_combout\,
	cout => \Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X32_Y9_N2
\r_Real[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[14]~55_combout\ = ((\reg.result[0][14]~q\ $ (\Mult1|auto_generated|op_1~20_combout\ $ (\r_Real[13]~54\)))) # (GND)
-- \r_Real[14]~56\ = CARRY((\reg.result[0][14]~q\ & ((!\r_Real[13]~54\) # (!\Mult1|auto_generated|op_1~20_combout\))) # (!\reg.result[0][14]~q\ & (!\Mult1|auto_generated|op_1~20_combout\ & !\r_Real[13]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][14]~q\,
	datab => \Mult1|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \r_Real[13]~54\,
	combout => \r_Real[14]~55_combout\,
	cout => \r_Real[14]~56\);

-- Location: FF_X32_Y9_N3
\r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[14]~55_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(14));

-- Location: FF_X31_Y9_N15
\reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(15),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][15]~q\);

-- Location: LCCOMB_X33_Y9_N0
\Mult1|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~22_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (\Mult1|auto_generated|op_1~21\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult1|auto_generated|op_1~21\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\Mult1|auto_generated|op_1~21\) # 
-- (GND)))))
-- \Mult1|auto_generated|op_1~23\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & !\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((!\Mult1|auto_generated|op_1~21\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~21\,
	combout => \Mult1|auto_generated|op_1~22_combout\,
	cout => \Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X32_Y9_N4
\r_Real[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[15]~57_combout\ = (\reg.result[0][15]~q\ & ((\Mult1|auto_generated|op_1~22_combout\ & (!\r_Real[14]~56\)) # (!\Mult1|auto_generated|op_1~22_combout\ & (\r_Real[14]~56\ & VCC)))) # (!\reg.result[0][15]~q\ & ((\Mult1|auto_generated|op_1~22_combout\ 
-- & ((\r_Real[14]~56\) # (GND))) # (!\Mult1|auto_generated|op_1~22_combout\ & (!\r_Real[14]~56\))))
-- \r_Real[15]~58\ = CARRY((\reg.result[0][15]~q\ & (\Mult1|auto_generated|op_1~22_combout\ & !\r_Real[14]~56\)) # (!\reg.result[0][15]~q\ & ((\Mult1|auto_generated|op_1~22_combout\) # (!\r_Real[14]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][15]~q\,
	datab => \Mult1|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \r_Real[14]~56\,
	combout => \r_Real[15]~57_combout\,
	cout => \r_Real[15]~58\);

-- Location: FF_X32_Y9_N5
\r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[15]~57_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(15));

-- Location: LCCOMB_X33_Y9_N2
\Mult1|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~24_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT30\ $ (\Mult1|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult1|auto_generated|op_1~23\)))) # (GND)
-- \Mult1|auto_generated|op_1~25\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT30\ & ((\Mult1|auto_generated|mac_out4~DATAOUT12\) # (!\Mult1|auto_generated|op_1~23\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT30\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT12\ & !\Mult1|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~23\,
	combout => \Mult1|auto_generated|op_1~24_combout\,
	cout => \Mult1|auto_generated|op_1~25\);

-- Location: FF_X22_Y6_N17
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
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][16]~q\);

-- Location: LCCOMB_X32_Y9_N6
\r_Real[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[16]~59_combout\ = ((\Mult1|auto_generated|op_1~24_combout\ $ (\reg.result[0][16]~q\ $ (\r_Real[15]~58\)))) # (GND)
-- \r_Real[16]~60\ = CARRY((\Mult1|auto_generated|op_1~24_combout\ & (\reg.result[0][16]~q\ & !\r_Real[15]~58\)) # (!\Mult1|auto_generated|op_1~24_combout\ & ((\reg.result[0][16]~q\) # (!\r_Real[15]~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~24_combout\,
	datab => \reg.result[0][16]~q\,
	datad => VCC,
	cin => \r_Real[15]~58\,
	combout => \r_Real[16]~59_combout\,
	cout => \r_Real[16]~60\);

-- Location: FF_X32_Y9_N7
\r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[16]~59_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(16));

-- Location: LCCOMB_X33_Y9_N4
\Mult1|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~26_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (\Mult1|auto_generated|op_1~25\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\Mult1|auto_generated|op_1~25\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & ((\Mult1|auto_generated|op_1~25\) # 
-- (GND)))))
-- \Mult1|auto_generated|op_1~27\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT13\ & (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & !\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((!\Mult1|auto_generated|op_1~25\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT13\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~25\,
	combout => \Mult1|auto_generated|op_1~26_combout\,
	cout => \Mult1|auto_generated|op_1~27\);

-- Location: FF_X22_Y6_N19
\reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(17),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][17]~q\);

-- Location: LCCOMB_X32_Y9_N8
\r_Real[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[17]~61_combout\ = (\Mult1|auto_generated|op_1~26_combout\ & ((\reg.result[0][17]~q\ & (!\r_Real[16]~60\)) # (!\reg.result[0][17]~q\ & ((\r_Real[16]~60\) # (GND))))) # (!\Mult1|auto_generated|op_1~26_combout\ & ((\reg.result[0][17]~q\ & 
-- (\r_Real[16]~60\ & VCC)) # (!\reg.result[0][17]~q\ & (!\r_Real[16]~60\))))
-- \r_Real[17]~62\ = CARRY((\Mult1|auto_generated|op_1~26_combout\ & ((!\r_Real[16]~60\) # (!\reg.result[0][17]~q\))) # (!\Mult1|auto_generated|op_1~26_combout\ & (!\reg.result[0][17]~q\ & !\r_Real[16]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~26_combout\,
	datab => \reg.result[0][17]~q\,
	datad => VCC,
	cin => \r_Real[16]~60\,
	combout => \r_Real[17]~61_combout\,
	cout => \r_Real[17]~62\);

-- Location: FF_X32_Y9_N9
\r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[17]~61_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(17));

-- Location: LCCOMB_X35_Y9_N4
\Mult1|auto_generated|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~0_combout\ = \Mult1|auto_generated|mac_out4~DATAOUT14\ $ (VCC)
-- \Mult1|auto_generated|op_2~1\ = CARRY(\Mult1|auto_generated|mac_out4~DATAOUT14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_2~0_combout\,
	cout => \Mult1|auto_generated|op_2~1\);

-- Location: LCCOMB_X33_Y9_N6
\Mult1|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~28_combout\ = ((\Mult1|auto_generated|op_2~0_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT32\ $ (\Mult1|auto_generated|op_1~27\)))) # (GND)
-- \Mult1|auto_generated|op_1~29\ = CARRY((\Mult1|auto_generated|op_2~0_combout\ & ((!\Mult1|auto_generated|op_1~27\) # (!\Mult1|auto_generated|mac_out2~DATAOUT32\))) # (!\Mult1|auto_generated|op_2~0_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT32\ & 
-- !\Mult1|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~0_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~27\,
	combout => \Mult1|auto_generated|op_1~28_combout\,
	cout => \Mult1|auto_generated|op_1~29\);

-- Location: FF_X22_Y6_N25
\reg.result[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(18),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][18]~q\);

-- Location: LCCOMB_X32_Y9_N10
\r_Real[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[18]~63_combout\ = ((\Mult1|auto_generated|op_1~28_combout\ $ (\reg.result[0][18]~q\ $ (\r_Real[17]~62\)))) # (GND)
-- \r_Real[18]~64\ = CARRY((\Mult1|auto_generated|op_1~28_combout\ & (\reg.result[0][18]~q\ & !\r_Real[17]~62\)) # (!\Mult1|auto_generated|op_1~28_combout\ & ((\reg.result[0][18]~q\) # (!\r_Real[17]~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~28_combout\,
	datab => \reg.result[0][18]~q\,
	datad => VCC,
	cin => \r_Real[17]~62\,
	combout => \r_Real[18]~63_combout\,
	cout => \r_Real[18]~64\);

-- Location: FF_X32_Y9_N11
\r_Real[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[18]~63_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(18));

-- Location: LCCOMB_X31_Y9_N8
\reg.result[0][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][19]~feeder_combout\ = \reg.VA\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(19),
	combout => \reg.result[0][19]~feeder_combout\);

-- Location: FF_X31_Y9_N9
\reg.result[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][19]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][19]~q\);

-- Location: LCCOMB_X35_Y9_N6
\Mult1|auto_generated|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT15\ & (!\Mult1|auto_generated|op_2~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & ((\Mult1|auto_generated|op_2~1\) # (GND)))
-- \Mult1|auto_generated|op_2~3\ = CARRY((!\Mult1|auto_generated|op_2~1\) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~1\,
	combout => \Mult1|auto_generated|op_2~2_combout\,
	cout => \Mult1|auto_generated|op_2~3\);

-- Location: LCCOMB_X33_Y9_N8
\Mult1|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~30_combout\ = (\Mult1|auto_generated|op_2~2_combout\ & (\Mult1|auto_generated|op_1~29\ & VCC)) # (!\Mult1|auto_generated|op_2~2_combout\ & (!\Mult1|auto_generated|op_1~29\))
-- \Mult1|auto_generated|op_1~31\ = CARRY((!\Mult1|auto_generated|op_2~2_combout\ & !\Mult1|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~29\,
	combout => \Mult1|auto_generated|op_1~30_combout\,
	cout => \Mult1|auto_generated|op_1~31\);

-- Location: LCCOMB_X32_Y9_N12
\r_Real[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[19]~65_combout\ = (\reg.result[0][19]~q\ & ((\Mult1|auto_generated|op_1~30_combout\ & (!\r_Real[18]~64\)) # (!\Mult1|auto_generated|op_1~30_combout\ & (\r_Real[18]~64\ & VCC)))) # (!\reg.result[0][19]~q\ & ((\Mult1|auto_generated|op_1~30_combout\ 
-- & ((\r_Real[18]~64\) # (GND))) # (!\Mult1|auto_generated|op_1~30_combout\ & (!\r_Real[18]~64\))))
-- \r_Real[19]~66\ = CARRY((\reg.result[0][19]~q\ & (\Mult1|auto_generated|op_1~30_combout\ & !\r_Real[18]~64\)) # (!\reg.result[0][19]~q\ & ((\Mult1|auto_generated|op_1~30_combout\) # (!\r_Real[18]~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][19]~q\,
	datab => \Mult1|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \r_Real[18]~64\,
	combout => \r_Real[19]~65_combout\,
	cout => \r_Real[19]~66\);

-- Location: FF_X32_Y9_N13
\r_Real[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[19]~65_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(19));

-- Location: LCCOMB_X22_Y6_N10
\reg.result[0][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][20]~feeder_combout\ = \reg.VA\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(20),
	combout => \reg.result[0][20]~feeder_combout\);

-- Location: FF_X22_Y6_N11
\reg.result[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][20]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][20]~q\);

-- Location: LCCOMB_X35_Y9_N8
\Mult1|auto_generated|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~4_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT16\ & (\Mult1|auto_generated|op_2~3\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT16\ & (!\Mult1|auto_generated|op_2~3\ & VCC))
-- \Mult1|auto_generated|op_2~5\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT16\ & !\Mult1|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~3\,
	combout => \Mult1|auto_generated|op_2~4_combout\,
	cout => \Mult1|auto_generated|op_2~5\);

-- Location: LCCOMB_X33_Y9_N10
\Mult1|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~32_combout\ = (\Mult1|auto_generated|op_2~4_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~31\))) # (!\Mult1|auto_generated|op_2~4_combout\ & (\Mult1|auto_generated|op_1~31\ $ (GND)))
-- \Mult1|auto_generated|op_1~33\ = CARRY((\Mult1|auto_generated|op_2~4_combout\) # (!\Mult1|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~31\,
	combout => \Mult1|auto_generated|op_1~32_combout\,
	cout => \Mult1|auto_generated|op_1~33\);

-- Location: LCCOMB_X32_Y9_N14
\r_Real[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[20]~67_combout\ = ((\reg.result[0][20]~q\ $ (\Mult1|auto_generated|op_1~32_combout\ $ (\r_Real[19]~66\)))) # (GND)
-- \r_Real[20]~68\ = CARRY((\reg.result[0][20]~q\ & ((!\r_Real[19]~66\) # (!\Mult1|auto_generated|op_1~32_combout\))) # (!\reg.result[0][20]~q\ & (!\Mult1|auto_generated|op_1~32_combout\ & !\r_Real[19]~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][20]~q\,
	datab => \Mult1|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \r_Real[19]~66\,
	combout => \r_Real[20]~67_combout\,
	cout => \r_Real[20]~68\);

-- Location: FF_X32_Y9_N15
\r_Real[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[20]~67_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(20));

-- Location: LCCOMB_X24_Y6_N30
\reg.result[0][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][21]~feeder_combout\ = \reg.VA\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(21),
	combout => \reg.result[0][21]~feeder_combout\);

-- Location: FF_X24_Y6_N31
\reg.result[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][21]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][21]~q\);

-- Location: LCCOMB_X35_Y9_N10
\Mult1|auto_generated|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT17\ & (!\Mult1|auto_generated|op_2~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & ((\Mult1|auto_generated|op_2~5\) # (GND)))
-- \Mult1|auto_generated|op_2~7\ = CARRY((!\Mult1|auto_generated|op_2~5\) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~5\,
	combout => \Mult1|auto_generated|op_2~6_combout\,
	cout => \Mult1|auto_generated|op_2~7\);

-- Location: LCCOMB_X33_Y9_N12
\Mult1|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~34_combout\ = (\Mult1|auto_generated|op_2~6_combout\ & (\Mult1|auto_generated|op_1~33\ & VCC)) # (!\Mult1|auto_generated|op_2~6_combout\ & (!\Mult1|auto_generated|op_1~33\))
-- \Mult1|auto_generated|op_1~35\ = CARRY((!\Mult1|auto_generated|op_2~6_combout\ & !\Mult1|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~33\,
	combout => \Mult1|auto_generated|op_1~34_combout\,
	cout => \Mult1|auto_generated|op_1~35\);

-- Location: LCCOMB_X32_Y9_N16
\r_Real[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[21]~69_combout\ = (\reg.result[0][21]~q\ & ((\Mult1|auto_generated|op_1~34_combout\ & (!\r_Real[20]~68\)) # (!\Mult1|auto_generated|op_1~34_combout\ & (\r_Real[20]~68\ & VCC)))) # (!\reg.result[0][21]~q\ & ((\Mult1|auto_generated|op_1~34_combout\ 
-- & ((\r_Real[20]~68\) # (GND))) # (!\Mult1|auto_generated|op_1~34_combout\ & (!\r_Real[20]~68\))))
-- \r_Real[21]~70\ = CARRY((\reg.result[0][21]~q\ & (\Mult1|auto_generated|op_1~34_combout\ & !\r_Real[20]~68\)) # (!\reg.result[0][21]~q\ & ((\Mult1|auto_generated|op_1~34_combout\) # (!\r_Real[20]~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][21]~q\,
	datab => \Mult1|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \r_Real[20]~68\,
	combout => \r_Real[21]~69_combout\,
	cout => \r_Real[21]~70\);

-- Location: FF_X32_Y9_N17
\r_Real[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[21]~69_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(21));

-- Location: LCCOMB_X23_Y6_N16
\reg.result[0][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg.result[0][22]~feeder_combout\ = \reg.VA\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg.VA\(22),
	combout => \reg.result[0][22]~feeder_combout\);

-- Location: FF_X23_Y6_N17
\reg.result[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \reg.result[0][22]~feeder_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][22]~q\);

-- Location: LCCOMB_X35_Y9_N12
\Mult1|auto_generated|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~8_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT18\ & (\Mult1|auto_generated|op_2~7\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT18\ & (!\Mult1|auto_generated|op_2~7\ & VCC))
-- \Mult1|auto_generated|op_2~9\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT18\ & !\Mult1|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~7\,
	combout => \Mult1|auto_generated|op_2~8_combout\,
	cout => \Mult1|auto_generated|op_2~9\);

-- Location: LCCOMB_X33_Y9_N14
\Mult1|auto_generated|op_1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~36_combout\ = (\Mult1|auto_generated|op_2~8_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~35\))) # (!\Mult1|auto_generated|op_2~8_combout\ & (\Mult1|auto_generated|op_1~35\ $ (GND)))
-- \Mult1|auto_generated|op_1~37\ = CARRY((\Mult1|auto_generated|op_2~8_combout\) # (!\Mult1|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~35\,
	combout => \Mult1|auto_generated|op_1~36_combout\,
	cout => \Mult1|auto_generated|op_1~37\);

-- Location: LCCOMB_X32_Y9_N18
\r_Real[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[22]~71_combout\ = ((\reg.result[0][22]~q\ $ (\Mult1|auto_generated|op_1~36_combout\ $ (\r_Real[21]~70\)))) # (GND)
-- \r_Real[22]~72\ = CARRY((\reg.result[0][22]~q\ & ((!\r_Real[21]~70\) # (!\Mult1|auto_generated|op_1~36_combout\))) # (!\reg.result[0][22]~q\ & (!\Mult1|auto_generated|op_1~36_combout\ & !\r_Real[21]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][22]~q\,
	datab => \Mult1|auto_generated|op_1~36_combout\,
	datad => VCC,
	cin => \r_Real[21]~70\,
	combout => \r_Real[22]~71_combout\,
	cout => \r_Real[22]~72\);

-- Location: FF_X32_Y9_N19
\r_Real[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[22]~71_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(22));

-- Location: FF_X31_Y9_N27
\reg.result[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(23),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][23]~q\);

-- Location: LCCOMB_X35_Y9_N14
\Mult1|auto_generated|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~10_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT19\ & (!\Mult1|auto_generated|op_2~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\Mult1|auto_generated|op_2~9\) # (GND)))
-- \Mult1|auto_generated|op_2~11\ = CARRY((!\Mult1|auto_generated|op_2~9\) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~9\,
	combout => \Mult1|auto_generated|op_2~10_combout\,
	cout => \Mult1|auto_generated|op_2~11\);

-- Location: LCCOMB_X33_Y9_N16
\Mult1|auto_generated|op_1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~38_combout\ = (\Mult1|auto_generated|op_2~10_combout\ & (\Mult1|auto_generated|op_1~37\ & VCC)) # (!\Mult1|auto_generated|op_2~10_combout\ & (!\Mult1|auto_generated|op_1~37\))
-- \Mult1|auto_generated|op_1~39\ = CARRY((!\Mult1|auto_generated|op_2~10_combout\ & !\Mult1|auto_generated|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~37\,
	combout => \Mult1|auto_generated|op_1~38_combout\,
	cout => \Mult1|auto_generated|op_1~39\);

-- Location: LCCOMB_X32_Y9_N20
\r_Real[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[23]~73_combout\ = (\reg.result[0][23]~q\ & ((\Mult1|auto_generated|op_1~38_combout\ & (!\r_Real[22]~72\)) # (!\Mult1|auto_generated|op_1~38_combout\ & (\r_Real[22]~72\ & VCC)))) # (!\reg.result[0][23]~q\ & ((\Mult1|auto_generated|op_1~38_combout\ 
-- & ((\r_Real[22]~72\) # (GND))) # (!\Mult1|auto_generated|op_1~38_combout\ & (!\r_Real[22]~72\))))
-- \r_Real[23]~74\ = CARRY((\reg.result[0][23]~q\ & (\Mult1|auto_generated|op_1~38_combout\ & !\r_Real[22]~72\)) # (!\reg.result[0][23]~q\ & ((\Mult1|auto_generated|op_1~38_combout\) # (!\r_Real[22]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][23]~q\,
	datab => \Mult1|auto_generated|op_1~38_combout\,
	datad => VCC,
	cin => \r_Real[22]~72\,
	combout => \r_Real[23]~73_combout\,
	cout => \r_Real[23]~74\);

-- Location: FF_X32_Y9_N21
\r_Real[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[23]~73_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(23));

-- Location: FF_X22_Y6_N9
\reg.result[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(24),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][24]~q\);

-- Location: LCCOMB_X35_Y9_N16
\Mult1|auto_generated|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~12_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT20\ & (\Mult1|auto_generated|op_2~11\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT20\ & (!\Mult1|auto_generated|op_2~11\ & VCC))
-- \Mult1|auto_generated|op_2~13\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT20\ & !\Mult1|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~11\,
	combout => \Mult1|auto_generated|op_2~12_combout\,
	cout => \Mult1|auto_generated|op_2~13\);

-- Location: LCCOMB_X33_Y9_N18
\Mult1|auto_generated|op_1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~40_combout\ = (\Mult1|auto_generated|op_2~12_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~39\))) # (!\Mult1|auto_generated|op_2~12_combout\ & (\Mult1|auto_generated|op_1~39\ $ (GND)))
-- \Mult1|auto_generated|op_1~41\ = CARRY((\Mult1|auto_generated|op_2~12_combout\) # (!\Mult1|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~39\,
	combout => \Mult1|auto_generated|op_1~40_combout\,
	cout => \Mult1|auto_generated|op_1~41\);

-- Location: LCCOMB_X32_Y9_N22
\r_Real[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[24]~75_combout\ = ((\reg.result[0][24]~q\ $ (\Mult1|auto_generated|op_1~40_combout\ $ (\r_Real[23]~74\)))) # (GND)
-- \r_Real[24]~76\ = CARRY((\reg.result[0][24]~q\ & ((!\r_Real[23]~74\) # (!\Mult1|auto_generated|op_1~40_combout\))) # (!\reg.result[0][24]~q\ & (!\Mult1|auto_generated|op_1~40_combout\ & !\r_Real[23]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][24]~q\,
	datab => \Mult1|auto_generated|op_1~40_combout\,
	datad => VCC,
	cin => \r_Real[23]~74\,
	combout => \r_Real[24]~75_combout\,
	cout => \r_Real[24]~76\);

-- Location: FF_X32_Y9_N23
\r_Real[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[24]~75_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(24));

-- Location: LCCOMB_X35_Y9_N18
\Mult1|auto_generated|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~14_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\Mult1|auto_generated|op_2~13\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & ((\Mult1|auto_generated|op_2~13\) # (GND)))
-- \Mult1|auto_generated|op_2~15\ = CARRY((!\Mult1|auto_generated|op_2~13\) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~13\,
	combout => \Mult1|auto_generated|op_2~14_combout\,
	cout => \Mult1|auto_generated|op_2~15\);

-- Location: LCCOMB_X33_Y9_N20
\Mult1|auto_generated|op_1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~42_combout\ = (\Mult1|auto_generated|op_2~14_combout\ & (\Mult1|auto_generated|op_1~41\ & VCC)) # (!\Mult1|auto_generated|op_2~14_combout\ & (!\Mult1|auto_generated|op_1~41\))
-- \Mult1|auto_generated|op_1~43\ = CARRY((!\Mult1|auto_generated|op_2~14_combout\ & !\Mult1|auto_generated|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~41\,
	combout => \Mult1|auto_generated|op_1~42_combout\,
	cout => \Mult1|auto_generated|op_1~43\);

-- Location: FF_X27_Y7_N23
\reg.result[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(25),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][25]~q\);

-- Location: LCCOMB_X32_Y9_N24
\r_Real[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[25]~77_combout\ = (\Mult1|auto_generated|op_1~42_combout\ & ((\reg.result[0][25]~q\ & (!\r_Real[24]~76\)) # (!\reg.result[0][25]~q\ & ((\r_Real[24]~76\) # (GND))))) # (!\Mult1|auto_generated|op_1~42_combout\ & ((\reg.result[0][25]~q\ & 
-- (\r_Real[24]~76\ & VCC)) # (!\reg.result[0][25]~q\ & (!\r_Real[24]~76\))))
-- \r_Real[25]~78\ = CARRY((\Mult1|auto_generated|op_1~42_combout\ & ((!\r_Real[24]~76\) # (!\reg.result[0][25]~q\))) # (!\Mult1|auto_generated|op_1~42_combout\ & (!\reg.result[0][25]~q\ & !\r_Real[24]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~42_combout\,
	datab => \reg.result[0][25]~q\,
	datad => VCC,
	cin => \r_Real[24]~76\,
	combout => \r_Real[25]~77_combout\,
	cout => \r_Real[25]~78\);

-- Location: FF_X32_Y9_N25
\r_Real[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[25]~77_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(25));

-- Location: FF_X24_Y6_N25
\reg.result[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \reg.VA\(26),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.result[0][26]~q\);

-- Location: LCCOMB_X35_Y9_N20
\Mult1|auto_generated|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~16_combout\ = \Mult1|auto_generated|op_2~15\ $ (!\Mult1|auto_generated|mac_out4~DATAOUT22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|mac_out4~DATAOUT22\,
	cin => \Mult1|auto_generated|op_2~15\,
	combout => \Mult1|auto_generated|op_2~16_combout\);

-- Location: LCCOMB_X33_Y9_N22
\Mult1|auto_generated|op_1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~44_combout\ = \Mult1|auto_generated|op_1~43\ $ (\Mult1|auto_generated|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|op_2~16_combout\,
	cin => \Mult1|auto_generated|op_1~43\,
	combout => \Mult1|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X32_Y9_N26
\r_Real[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Real[26]~79_combout\ = \reg.result[0][26]~q\ $ (\r_Real[25]~78\ $ (\Mult1|auto_generated|op_1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg.result[0][26]~q\,
	datad => \Mult1|auto_generated|op_1~44_combout\,
	cin => \r_Real[25]~78\,
	combout => \r_Real[26]~79_combout\);

-- Location: FF_X32_Y9_N27
\r_Real[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Real[26]~79_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Real(26));

-- Location: DSPMULT_X34_Y6_N0
\Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \Selector2~0_combout\,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y6_N2
\Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y6_N4
\r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[0]~feeder_combout\ = \Mult2|auto_generated|w245w\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|auto_generated|w245w\(14),
	combout => \r_Imag[0]~feeder_combout\);

-- Location: FF_X35_Y6_N5
\r_Imag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[0]~feeder_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(0));

-- Location: LCCOMB_X35_Y6_N6
\r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[1]~feeder_combout\ = \Mult2|auto_generated|w245w\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult2|auto_generated|w245w\(15),
	combout => \r_Imag[1]~feeder_combout\);

-- Location: FF_X35_Y6_N7
\r_Imag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[1]~feeder_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(1));

-- Location: LCCOMB_X35_Y6_N0
\r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[2]~feeder_combout\ = \Mult2|auto_generated|w245w\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|auto_generated|w245w\(16),
	combout => \r_Imag[2]~feeder_combout\);

-- Location: FF_X35_Y6_N1
\r_Imag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[2]~feeder_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(2));

-- Location: LCCOMB_X33_Y6_N20
\r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[3]~feeder_combout\ = \Mult2|auto_generated|w245w\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|auto_generated|w245w\(17),
	combout => \r_Imag[3]~feeder_combout\);

-- Location: FF_X33_Y6_N21
\r_Imag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[3]~feeder_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(3));

-- Location: DSPMULT_X34_Y5_N0
\Mult2|auto_generated|mac_mult3\ : cycloneiii_mac_mult
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
	ena => \Selector2~0_combout\,
	dataa => \Mult2|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y5_N2
\Mult2|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y6_N10
\r_Imag[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[4]~23_combout\ = (\Mult2|auto_generated|mac_out4~dataout\ & (\Mult2|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult2|auto_generated|mac_out4~dataout\ & (\Mult2|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \r_Imag[4]~24\ = CARRY((\Mult2|auto_generated|mac_out4~dataout\ & \Mult2|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~dataout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \r_Imag[4]~23_combout\,
	cout => \r_Imag[4]~24\);

-- Location: FF_X35_Y6_N11
\r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[4]~23_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(4));

-- Location: LCCOMB_X35_Y6_N12
\r_Imag[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[5]~25_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\Mult2|auto_generated|mac_out4~DATAOUT1\ & (\r_Imag[4]~24\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT1\ & (!\r_Imag[4]~24\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\Mult2|auto_generated|mac_out4~DATAOUT1\ & (!\r_Imag[4]~24\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT1\ & ((\r_Imag[4]~24\) # (GND)))))
-- \r_Imag[5]~26\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\Mult2|auto_generated|mac_out4~DATAOUT1\ & !\r_Imag[4]~24\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((!\r_Imag[4]~24\) # (!\Mult2|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \r_Imag[4]~24\,
	combout => \r_Imag[5]~25_combout\,
	cout => \r_Imag[5]~26\);

-- Location: FF_X35_Y6_N13
\r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[5]~25_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(5));

-- Location: LCCOMB_X35_Y6_N14
\r_Imag[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[6]~27_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT20\ $ (\Mult2|auto_generated|mac_out4~DATAOUT2\ $ (!\r_Imag[5]~26\)))) # (GND)
-- \r_Imag[6]~28\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\Mult2|auto_generated|mac_out4~DATAOUT2\) # (!\r_Imag[5]~26\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT20\ & (\Mult2|auto_generated|mac_out4~DATAOUT2\ & !\r_Imag[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \r_Imag[5]~26\,
	combout => \r_Imag[6]~27_combout\,
	cout => \r_Imag[6]~28\);

-- Location: FF_X35_Y6_N15
\r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[6]~27_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(6));

-- Location: LCCOMB_X35_Y6_N16
\r_Imag[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[7]~29_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\Mult2|auto_generated|mac_out4~DATAOUT3\ & (\r_Imag[6]~28\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & (!\r_Imag[6]~28\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\Mult2|auto_generated|mac_out4~DATAOUT3\ & (!\r_Imag[6]~28\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & ((\r_Imag[6]~28\) # (GND)))))
-- \r_Imag[7]~30\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & !\r_Imag[6]~28\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((!\r_Imag[6]~28\) # (!\Mult2|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \r_Imag[6]~28\,
	combout => \r_Imag[7]~29_combout\,
	cout => \r_Imag[7]~30\);

-- Location: FF_X35_Y6_N17
\r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[7]~29_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(7));

-- Location: LCCOMB_X35_Y6_N18
\r_Imag[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[8]~31_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT4\ $ (\Mult2|auto_generated|mac_out2~DATAOUT22\ $ (!\r_Imag[7]~30\)))) # (GND)
-- \r_Imag[8]~32\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT4\ & ((\Mult2|auto_generated|mac_out2~DATAOUT22\) # (!\r_Imag[7]~30\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT4\ & (\Mult2|auto_generated|mac_out2~DATAOUT22\ & !\r_Imag[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \r_Imag[7]~30\,
	combout => \r_Imag[8]~31_combout\,
	cout => \r_Imag[8]~32\);

-- Location: FF_X35_Y6_N19
\r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[8]~31_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(8));

-- Location: LCCOMB_X35_Y6_N20
\r_Imag[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[9]~33_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT5\ & ((\Mult2|auto_generated|mac_out2~DATAOUT23\ & (\r_Imag[8]~32\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\r_Imag[8]~32\)))) # (!\Mult2|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\r_Imag[8]~32\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & ((\r_Imag[8]~32\) # (GND)))))
-- \r_Imag[9]~34\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT5\ & (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & !\r_Imag[8]~32\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT5\ & ((!\r_Imag[8]~32\) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \r_Imag[8]~32\,
	combout => \r_Imag[9]~33_combout\,
	cout => \r_Imag[9]~34\);

-- Location: FF_X35_Y6_N21
\r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[9]~33_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(9));

-- Location: LCCOMB_X35_Y6_N22
\r_Imag[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[10]~35_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT6\ $ (\Mult2|auto_generated|mac_out2~DATAOUT24\ $ (!\r_Imag[9]~34\)))) # (GND)
-- \r_Imag[10]~36\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT6\ & ((\Mult2|auto_generated|mac_out2~DATAOUT24\) # (!\r_Imag[9]~34\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT6\ & (\Mult2|auto_generated|mac_out2~DATAOUT24\ & !\r_Imag[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \r_Imag[9]~34\,
	combout => \r_Imag[10]~35_combout\,
	cout => \r_Imag[10]~36\);

-- Location: FF_X35_Y6_N23
\r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[10]~35_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(10));

-- Location: LCCOMB_X35_Y6_N24
\r_Imag[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[11]~37_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\Mult2|auto_generated|mac_out4~DATAOUT7\ & (\r_Imag[10]~36\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT7\ & (!\r_Imag[10]~36\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\ 
-- & ((\Mult2|auto_generated|mac_out4~DATAOUT7\ & (!\r_Imag[10]~36\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT7\ & ((\r_Imag[10]~36\) # (GND)))))
-- \r_Imag[11]~38\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\Mult2|auto_generated|mac_out4~DATAOUT7\ & !\r_Imag[10]~36\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & ((!\r_Imag[10]~36\) # (!\Mult2|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \r_Imag[10]~36\,
	combout => \r_Imag[11]~37_combout\,
	cout => \r_Imag[11]~38\);

-- Location: FF_X35_Y6_N25
\r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[11]~37_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(11));

-- Location: LCCOMB_X35_Y6_N26
\r_Imag[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[12]~39_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT26\ $ (\Mult2|auto_generated|mac_out4~DATAOUT8\ $ (!\r_Imag[11]~38\)))) # (GND)
-- \r_Imag[12]~40\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\Mult2|auto_generated|mac_out4~DATAOUT8\) # (!\r_Imag[11]~38\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT26\ & (\Mult2|auto_generated|mac_out4~DATAOUT8\ & !\r_Imag[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \r_Imag[11]~38\,
	combout => \r_Imag[12]~39_combout\,
	cout => \r_Imag[12]~40\);

-- Location: FF_X35_Y6_N27
\r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[12]~39_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(12));

-- Location: LCCOMB_X35_Y6_N28
\r_Imag[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[13]~41_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT9\ & ((\Mult2|auto_generated|mac_out2~DATAOUT27\ & (\r_Imag[12]~40\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\r_Imag[12]~40\)))) # (!\Mult2|auto_generated|mac_out4~DATAOUT9\ 
-- & ((\Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\r_Imag[12]~40\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\r_Imag[12]~40\) # (GND)))))
-- \r_Imag[13]~42\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT9\ & (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & !\r_Imag[12]~40\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT9\ & ((!\r_Imag[12]~40\) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \r_Imag[12]~40\,
	combout => \r_Imag[13]~41_combout\,
	cout => \r_Imag[13]~42\);

-- Location: FF_X35_Y6_N29
\r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[13]~41_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(13));

-- Location: LCCOMB_X35_Y6_N30
\r_Imag[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[14]~43_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\Mult2|auto_generated|mac_out4~DATAOUT10\ $ (!\r_Imag[13]~42\)))) # (GND)
-- \r_Imag[14]~44\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\Mult2|auto_generated|mac_out4~DATAOUT10\) # (!\r_Imag[13]~42\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT28\ & (\Mult2|auto_generated|mac_out4~DATAOUT10\ & !\r_Imag[13]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \r_Imag[13]~42\,
	combout => \r_Imag[14]~43_combout\,
	cout => \r_Imag[14]~44\);

-- Location: FF_X35_Y6_N31
\r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[14]~43_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(14));

-- Location: LCCOMB_X35_Y5_N0
\r_Imag[15]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[15]~45_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT11\ & ((\Mult2|auto_generated|mac_out2~DATAOUT29\ & (\r_Imag[14]~44\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & (!\r_Imag[14]~44\)))) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT11\ & ((\Mult2|auto_generated|mac_out2~DATAOUT29\ & (!\r_Imag[14]~44\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((\r_Imag[14]~44\) # (GND)))))
-- \r_Imag[15]~46\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT11\ & (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & !\r_Imag[14]~44\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT11\ & ((!\r_Imag[14]~44\) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \r_Imag[14]~44\,
	combout => \r_Imag[15]~45_combout\,
	cout => \r_Imag[15]~46\);

-- Location: FF_X35_Y5_N1
\r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[15]~45_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(15));

-- Location: LCCOMB_X35_Y5_N2
\r_Imag[16]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[16]~47_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT12\ $ (\Mult2|auto_generated|mac_out2~DATAOUT30\ $ (!\r_Imag[15]~46\)))) # (GND)
-- \r_Imag[16]~48\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT12\ & ((\Mult2|auto_generated|mac_out2~DATAOUT30\) # (!\r_Imag[15]~46\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT12\ & (\Mult2|auto_generated|mac_out2~DATAOUT30\ & !\r_Imag[15]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT12\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \r_Imag[15]~46\,
	combout => \r_Imag[16]~47_combout\,
	cout => \r_Imag[16]~48\);

-- Location: FF_X35_Y5_N3
\r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[16]~47_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(16));

-- Location: LCCOMB_X36_Y5_N6
\Mult2|auto_generated|add9_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[0]~0_combout\ = \Mult2|auto_generated|mac_out4~DATAOUT13\ $ (VCC)
-- \Mult2|auto_generated|add9_result[0]~1\ = CARRY(\Mult2|auto_generated|mac_out4~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	combout => \Mult2|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult2|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X35_Y5_N4
\r_Imag[17]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[17]~49_combout\ = (\Mult2|auto_generated|add9_result[0]~0_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT31\ & (!\r_Imag[16]~48\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT31\ & (\r_Imag[16]~48\ & VCC)))) # 
-- (!\Mult2|auto_generated|add9_result[0]~0_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT31\ & ((\r_Imag[16]~48\) # (GND))) # (!\Mult2|auto_generated|mac_out2~DATAOUT31\ & (!\r_Imag[16]~48\))))
-- \r_Imag[17]~50\ = CARRY((\Mult2|auto_generated|add9_result[0]~0_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT31\ & !\r_Imag[16]~48\)) # (!\Mult2|auto_generated|add9_result[0]~0_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT31\) # 
-- (!\r_Imag[16]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|add9_result[0]~0_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \r_Imag[16]~48\,
	combout => \r_Imag[17]~49_combout\,
	cout => \r_Imag[17]~50\);

-- Location: FF_X35_Y5_N5
\r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[17]~49_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(17));

-- Location: LCCOMB_X36_Y5_N8
\Mult2|auto_generated|add9_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[1]~2_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT14\ & (!\Mult2|auto_generated|add9_result[0]~1\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT14\ & ((\Mult2|auto_generated|add9_result[0]~1\) # (GND)))
-- \Mult2|auto_generated|add9_result[1]~3\ = CARRY((!\Mult2|auto_generated|add9_result[0]~1\) # (!\Mult2|auto_generated|mac_out4~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[0]~1\,
	combout => \Mult2|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult2|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X35_Y5_N6
\r_Imag[18]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[18]~51_combout\ = (\Mult2|auto_generated|add9_result[1]~2_combout\ & ((GND) # (!\r_Imag[17]~50\))) # (!\Mult2|auto_generated|add9_result[1]~2_combout\ & (\r_Imag[17]~50\ $ (GND)))
-- \r_Imag[18]~52\ = CARRY((\Mult2|auto_generated|add9_result[1]~2_combout\) # (!\r_Imag[17]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \r_Imag[17]~50\,
	combout => \r_Imag[18]~51_combout\,
	cout => \r_Imag[18]~52\);

-- Location: FF_X35_Y5_N7
\r_Imag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[18]~51_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(18));

-- Location: LCCOMB_X36_Y5_N10
\Mult2|auto_generated|add9_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[2]~4_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT15\ & (\Mult2|auto_generated|add9_result[1]~3\ $ (GND))) # (!\Mult2|auto_generated|mac_out4~DATAOUT15\ & (!\Mult2|auto_generated|add9_result[1]~3\ & VCC))
-- \Mult2|auto_generated|add9_result[2]~5\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT15\ & !\Mult2|auto_generated|add9_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[1]~3\,
	combout => \Mult2|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult2|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X35_Y5_N8
\r_Imag[19]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[19]~53_combout\ = (\Mult2|auto_generated|add9_result[2]~4_combout\ & (\r_Imag[18]~52\ & VCC)) # (!\Mult2|auto_generated|add9_result[2]~4_combout\ & (!\r_Imag[18]~52\))
-- \r_Imag[19]~54\ = CARRY((!\Mult2|auto_generated|add9_result[2]~4_combout\ & !\r_Imag[18]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \r_Imag[18]~52\,
	combout => \r_Imag[19]~53_combout\,
	cout => \r_Imag[19]~54\);

-- Location: FF_X35_Y5_N9
\r_Imag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[19]~53_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(19));

-- Location: LCCOMB_X36_Y5_N12
\Mult2|auto_generated|add9_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[3]~6_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT16\ & (!\Mult2|auto_generated|add9_result[2]~5\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT16\ & ((\Mult2|auto_generated|add9_result[2]~5\) # (GND)))
-- \Mult2|auto_generated|add9_result[3]~7\ = CARRY((!\Mult2|auto_generated|add9_result[2]~5\) # (!\Mult2|auto_generated|mac_out4~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[2]~5\,
	combout => \Mult2|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult2|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X35_Y5_N10
\r_Imag[20]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[20]~55_combout\ = (\Mult2|auto_generated|add9_result[3]~6_combout\ & ((GND) # (!\r_Imag[19]~54\))) # (!\Mult2|auto_generated|add9_result[3]~6_combout\ & (\r_Imag[19]~54\ $ (GND)))
-- \r_Imag[20]~56\ = CARRY((\Mult2|auto_generated|add9_result[3]~6_combout\) # (!\r_Imag[19]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \r_Imag[19]~54\,
	combout => \r_Imag[20]~55_combout\,
	cout => \r_Imag[20]~56\);

-- Location: FF_X35_Y5_N11
\r_Imag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[20]~55_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(20));

-- Location: LCCOMB_X36_Y5_N14
\Mult2|auto_generated|add9_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[4]~8_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT17\ & (\Mult2|auto_generated|add9_result[3]~7\ $ (GND))) # (!\Mult2|auto_generated|mac_out4~DATAOUT17\ & (!\Mult2|auto_generated|add9_result[3]~7\ & VCC))
-- \Mult2|auto_generated|add9_result[4]~9\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT17\ & !\Mult2|auto_generated|add9_result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[3]~7\,
	combout => \Mult2|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult2|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X35_Y5_N12
\r_Imag[21]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[21]~57_combout\ = (\Mult2|auto_generated|add9_result[4]~8_combout\ & (\r_Imag[20]~56\ & VCC)) # (!\Mult2|auto_generated|add9_result[4]~8_combout\ & (!\r_Imag[20]~56\))
-- \r_Imag[21]~58\ = CARRY((!\Mult2|auto_generated|add9_result[4]~8_combout\ & !\r_Imag[20]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \r_Imag[20]~56\,
	combout => \r_Imag[21]~57_combout\,
	cout => \r_Imag[21]~58\);

-- Location: FF_X35_Y5_N13
\r_Imag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[21]~57_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(21));

-- Location: LCCOMB_X36_Y5_N16
\Mult2|auto_generated|add9_result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[5]~10_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT18\ & (!\Mult2|auto_generated|add9_result[4]~9\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT18\ & ((\Mult2|auto_generated|add9_result[4]~9\) # (GND)))
-- \Mult2|auto_generated|add9_result[5]~11\ = CARRY((!\Mult2|auto_generated|add9_result[4]~9\) # (!\Mult2|auto_generated|mac_out4~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[4]~9\,
	combout => \Mult2|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult2|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X35_Y5_N14
\r_Imag[22]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[22]~59_combout\ = (\Mult2|auto_generated|add9_result[5]~10_combout\ & ((GND) # (!\r_Imag[21]~58\))) # (!\Mult2|auto_generated|add9_result[5]~10_combout\ & (\r_Imag[21]~58\ $ (GND)))
-- \r_Imag[22]~60\ = CARRY((\Mult2|auto_generated|add9_result[5]~10_combout\) # (!\r_Imag[21]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \r_Imag[21]~58\,
	combout => \r_Imag[22]~59_combout\,
	cout => \r_Imag[22]~60\);

-- Location: FF_X35_Y5_N15
\r_Imag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[22]~59_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(22));

-- Location: LCCOMB_X36_Y5_N18
\Mult2|auto_generated|add9_result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[6]~12_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT19\ & (\Mult2|auto_generated|add9_result[5]~11\ $ (GND))) # (!\Mult2|auto_generated|mac_out4~DATAOUT19\ & (!\Mult2|auto_generated|add9_result[5]~11\ & VCC))
-- \Mult2|auto_generated|add9_result[6]~13\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT19\ & !\Mult2|auto_generated|add9_result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[5]~11\,
	combout => \Mult2|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult2|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X35_Y5_N16
\r_Imag[23]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[23]~61_combout\ = (\Mult2|auto_generated|add9_result[6]~12_combout\ & (\r_Imag[22]~60\ & VCC)) # (!\Mult2|auto_generated|add9_result[6]~12_combout\ & (!\r_Imag[22]~60\))
-- \r_Imag[23]~62\ = CARRY((!\Mult2|auto_generated|add9_result[6]~12_combout\ & !\r_Imag[22]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \r_Imag[22]~60\,
	combout => \r_Imag[23]~61_combout\,
	cout => \r_Imag[23]~62\);

-- Location: FF_X35_Y5_N17
\r_Imag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[23]~61_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(23));

-- Location: LCCOMB_X36_Y5_N20
\Mult2|auto_generated|add9_result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[7]~14_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT20\ & (!\Mult2|auto_generated|add9_result[6]~13\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT20\ & ((\Mult2|auto_generated|add9_result[6]~13\) # (GND)))
-- \Mult2|auto_generated|add9_result[7]~15\ = CARRY((!\Mult2|auto_generated|add9_result[6]~13\) # (!\Mult2|auto_generated|mac_out4~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[6]~13\,
	combout => \Mult2|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult2|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X35_Y5_N18
\r_Imag[24]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[24]~63_combout\ = (\Mult2|auto_generated|add9_result[7]~14_combout\ & ((GND) # (!\r_Imag[23]~62\))) # (!\Mult2|auto_generated|add9_result[7]~14_combout\ & (\r_Imag[23]~62\ $ (GND)))
-- \r_Imag[24]~64\ = CARRY((\Mult2|auto_generated|add9_result[7]~14_combout\) # (!\r_Imag[23]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \r_Imag[23]~62\,
	combout => \r_Imag[24]~63_combout\,
	cout => \r_Imag[24]~64\);

-- Location: FF_X35_Y5_N19
\r_Imag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[24]~63_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(24));

-- Location: LCCOMB_X36_Y5_N22
\Mult2|auto_generated|add9_result[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[8]~16_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT21\ & (\Mult2|auto_generated|add9_result[7]~15\ $ (GND))) # (!\Mult2|auto_generated|mac_out4~DATAOUT21\ & (!\Mult2|auto_generated|add9_result[7]~15\ & VCC))
-- \Mult2|auto_generated|add9_result[8]~17\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT21\ & !\Mult2|auto_generated|add9_result[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \Mult2|auto_generated|add9_result[7]~15\,
	combout => \Mult2|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult2|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X35_Y5_N20
\r_Imag[25]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[25]~65_combout\ = (\Mult2|auto_generated|add9_result[8]~16_combout\ & (\r_Imag[24]~64\ & VCC)) # (!\Mult2|auto_generated|add9_result[8]~16_combout\ & (!\r_Imag[24]~64\))
-- \r_Imag[25]~66\ = CARRY((!\Mult2|auto_generated|add9_result[8]~16_combout\ & !\r_Imag[24]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \r_Imag[24]~64\,
	combout => \r_Imag[25]~65_combout\,
	cout => \r_Imag[25]~66\);

-- Location: FF_X35_Y5_N21
\r_Imag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[25]~65_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(25));

-- Location: LCCOMB_X36_Y5_N24
\Mult2|auto_generated|add9_result[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|add9_result[9]~18_combout\ = \Mult2|auto_generated|add9_result[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult2|auto_generated|add9_result[8]~17\,
	combout => \Mult2|auto_generated|add9_result[9]~18_combout\);

-- Location: LCCOMB_X35_Y5_N22
\r_Imag[26]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_Imag[26]~67_combout\ = \Mult2|auto_generated|mac_out4~DATAOUT22\ $ (\r_Imag[25]~66\ $ (\Mult2|auto_generated|add9_result[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT22\,
	datad => \Mult2|auto_generated|add9_result[9]~18_combout\,
	cin => \r_Imag[25]~66\,
	combout => \r_Imag[26]~67_combout\);

-- Location: FF_X35_Y5_N23
\r_Imag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Imag[26]~67_combout\,
	ena => \reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Imag(26));

-- Location: LCCOMB_X27_Y7_N14
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\reg.state.OUTPUT~q\) # ((\reg.done~q\ & ((\reg.state.CALCULATE~q\) # (\reg.state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg.state.CALCULATE~q\,
	datab => \reg.state.OUTPUT~q\,
	datac => \reg.done~q\,
	datad => \reg.state.STORE~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X27_Y7_N15
\reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg.done~q\);

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

ww_o_Abs(0) <= \o_Abs[0]~output_o\;

ww_o_Abs(1) <= \o_Abs[1]~output_o\;

ww_o_Abs(2) <= \o_Abs[2]~output_o\;

ww_o_Abs(3) <= \o_Abs[3]~output_o\;

ww_o_Abs(4) <= \o_Abs[4]~output_o\;

ww_o_Abs(5) <= \o_Abs[5]~output_o\;

ww_o_Abs(6) <= \o_Abs[6]~output_o\;

ww_o_Abs(7) <= \o_Abs[7]~output_o\;

ww_o_Abs(8) <= \o_Abs[8]~output_o\;

ww_o_Abs(9) <= \o_Abs[9]~output_o\;

ww_o_Abs(10) <= \o_Abs[10]~output_o\;

ww_o_Abs(11) <= \o_Abs[11]~output_o\;

ww_o_Abs(12) <= \o_Abs[12]~output_o\;

ww_o_Abs(13) <= \o_Abs[13]~output_o\;

ww_o_Abs(14) <= \o_Abs[14]~output_o\;

ww_o_Abs(15) <= \o_Abs[15]~output_o\;

ww_o_Abs(16) <= \o_Abs[16]~output_o\;

ww_o_Abs(17) <= \o_Abs[17]~output_o\;

ww_o_Abs(18) <= \o_Abs[18]~output_o\;

ww_o_Abs(19) <= \o_Abs[19]~output_o\;

ww_o_Abs(20) <= \o_Abs[20]~output_o\;

ww_o_Abs(21) <= \o_Abs[21]~output_o\;

ww_o_Abs(22) <= \o_Abs[22]~output_o\;

ww_o_Abs(23) <= \o_Abs[23]~output_o\;

ww_o_Abs(24) <= \o_Abs[24]~output_o\;

ww_o_Abs(25) <= \o_Abs[25]~output_o\;

ww_o_Abs(26) <= \o_Abs[26]~output_o\;

ww_o_NEW_RESULT <= \o_NEW_RESULT~output_o\;
END structure;


