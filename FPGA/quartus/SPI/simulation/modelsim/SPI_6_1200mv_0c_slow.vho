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

-- DATE "01/25/2020 19:21:02"

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

ENTITY 	SPI IS
    PORT (
	i_CLK : IN std_logic;
	i_SCLK : IN std_logic;
	i_MOSI : IN std_logic;
	i_SSEL : IN std_logic;
	o_MISO : BUFFER std_logic;
	i_DATA1 : IN std_logic_vector(26 DOWNTO 0);
	i_DATA2 : IN std_logic_vector(26 DOWNTO 0);
	i_DATA3 : IN std_logic_vector(26 DOWNTO 0);
	i_DATA4 : IN std_logic_vector(26 DOWNTO 0);
	i_DATA5 : IN std_logic_vector(26 DOWNTO 0);
	i_DATA6 : IN std_logic_vector(26 DOWNTO 0);
	i_NEW_DATA : IN std_logic;
	o_ADDRESS_received : BUFFER std_logic
	);
END SPI;

-- Design Ports Information
-- o_MISO	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS_received	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEW_DATA	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[5]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[9]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[13]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[13]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[10]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[14]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[2]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[11]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[11]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[15]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[8]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[8]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[4]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[12]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[12]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[18]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[18]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[18]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[17]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[17]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[17]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[17]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[19]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[19]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[19]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[19]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[19]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[16]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[16]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[16]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[16]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[24]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[24]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[24]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[24]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[24]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[24]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[26]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[26]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[26]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[25]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[25]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[25]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[25]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[25]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[21]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[21]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[21]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[21]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[22]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[22]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[22]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[22]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[22]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[23]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[23]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[23]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[23]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[23]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA2[20]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA3[20]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA4[20]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA5[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA1[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA6[20]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SSEL	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCLK	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MOSI	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI IS
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
SIGNAL ww_i_SCLK : std_logic;
SIGNAL ww_i_MOSI : std_logic;
SIGNAL ww_i_SSEL : std_logic;
SIGNAL ww_o_MISO : std_logic;
SIGNAL ww_i_DATA1 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_DATA2 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_DATA3 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_DATA4 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_DATA5 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_DATA6 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_NEW_DATA : std_logic;
SIGNAL ww_o_ADDRESS_received : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_MISO~output_o\ : std_logic;
SIGNAL \o_ADDRESS_received~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SSEL~input_o\ : std_logic;
SIGNAL \r_SSEL[0]~feeder_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~7_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector37~5_combout\ : std_logic;
SIGNAL \i_SCLK~input_o\ : std_logic;
SIGNAL \r_SCLK[0]~feeder_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \r_ADDRESS_received~2_combout\ : std_logic;
SIGNAL \r_bitcount~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector20~7_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \Selector20~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \r_bitcount~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \Selector37~6_combout\ : std_logic;
SIGNAL \Selector37~8_combout\ : std_logic;
SIGNAL \state.COMMAND~q\ : std_logic;
SIGNAL \Selector37~9_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \state.TRANSMIT~q\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \i_DATA3[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][21]~feeder_combout\ : std_logic;
SIGNAL \i_NEW_DATA~input_o\ : std_logic;
SIGNAL \r_UPDATE_ENABLE~0_combout\ : std_logic;
SIGNAL \r_UPDATE_ENABLE~q\ : std_logic;
SIGNAL \INST_SPI_register|process_0~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][21]~q\ : std_logic;
SIGNAL \i_MOSI~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \i_DATA2[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][21]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][21]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[21]~3_combout\ : std_logic;
SIGNAL \i_DATA4[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][21]~q\ : std_logic;
SIGNAL \i_DATA6[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][21]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux5~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[5]~29_combout\ : std_logic;
SIGNAL \i_DATA1[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][21]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[5]~28_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux5~1_combout\ : std_logic;
SIGNAL \i_DATA5[21]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][21]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[5]~27_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux5~2_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[5]~30_combout\ : std_logic;
SIGNAL \i_DATA3[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][20]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][20]~q\ : std_logic;
SIGNAL \i_DATA2[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][20]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][20]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[20]~6_combout\ : std_logic;
SIGNAL \i_DATA4[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][20]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][20]~q\ : std_logic;
SIGNAL \i_DATA5[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][20]~q\ : std_logic;
SIGNAL \i_DATA6[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][20]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux6~0_combout\ : std_logic;
SIGNAL \i_DATA1[20]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][20]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux6~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux6~2_combout\ : std_logic;
SIGNAL \i_DATA3[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][22]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][22]~q\ : std_logic;
SIGNAL \i_DATA2[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][22]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][22]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[22]~4_combout\ : std_logic;
SIGNAL \i_DATA4[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][22]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][22]~q\ : std_logic;
SIGNAL \i_DATA5[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][22]~q\ : std_logic;
SIGNAL \i_DATA6[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][22]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux4~0_combout\ : std_logic;
SIGNAL \i_DATA1[22]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][22]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux4~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux4~2_combout\ : std_logic;
SIGNAL \i_DATA3[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][23]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][23]~q\ : std_logic;
SIGNAL \i_DATA2[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][23]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][23]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[23]~5_combout\ : std_logic;
SIGNAL \i_DATA4[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][23]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][23]~q\ : std_logic;
SIGNAL \i_DATA5[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][23]~q\ : std_logic;
SIGNAL \i_DATA6[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][23]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux3~0_combout\ : std_logic;
SIGNAL \i_DATA1[23]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][23]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux3~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux3~2_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \i_DATA3[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][1]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][1]~q\ : std_logic;
SIGNAL \i_DATA2[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][1]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][1]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[1]~14_combout\ : std_logic;
SIGNAL \i_DATA4[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][1]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][1]~q\ : std_logic;
SIGNAL \i_DATA5[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][1]~q\ : std_logic;
SIGNAL \i_DATA1[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][1]~q\ : std_logic;
SIGNAL \i_DATA6[1]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][1]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux25~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux25~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux25~2_combout\ : std_logic;
SIGNAL \i_DATA3[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][5]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][5]~q\ : std_logic;
SIGNAL \i_DATA2[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][5]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][5]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[5]~11_combout\ : std_logic;
SIGNAL \i_DATA4[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][5]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][5]~q\ : std_logic;
SIGNAL \i_DATA5[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][5]~q\ : std_logic;
SIGNAL \i_DATA6[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][5]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux21~0_combout\ : std_logic;
SIGNAL \i_DATA1[5]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][5]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux21~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux21~2_combout\ : std_logic;
SIGNAL \i_DATA3[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][9]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][9]~q\ : std_logic;
SIGNAL \i_DATA2[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][9]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][9]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[9]~12_combout\ : std_logic;
SIGNAL \i_DATA4[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][9]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][9]~q\ : std_logic;
SIGNAL \i_DATA5[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][9]~q\ : std_logic;
SIGNAL \i_DATA1[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][9]~q\ : std_logic;
SIGNAL \i_DATA6[9]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][9]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux17~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux17~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux17~2_combout\ : std_logic;
SIGNAL \i_DATA2[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][13]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][13]~q\ : std_logic;
SIGNAL \i_DATA3[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][13]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][13]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[13]~13_combout\ : std_logic;
SIGNAL \i_DATA6[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][13]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux13~0_combout\ : std_logic;
SIGNAL \i_DATA1[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][13]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux13~1_combout\ : std_logic;
SIGNAL \i_DATA5[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][13]~q\ : std_logic;
SIGNAL \i_DATA4[13]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][13]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux13~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \i_DATA2[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][0]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][0]~q\ : std_logic;
SIGNAL \i_DATA3[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][0]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][0]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[0]~26_combout\ : std_logic;
SIGNAL \i_DATA4[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][0]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][0]~q\ : std_logic;
SIGNAL \i_DATA5[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][0]~q\ : std_logic;
SIGNAL \i_DATA1[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][0]~q\ : std_logic;
SIGNAL \i_DATA6[0]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][0]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux26~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux26~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux26~2_combout\ : std_logic;
SIGNAL \i_DATA3[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][8]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][8]~q\ : std_logic;
SIGNAL \i_DATA2[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][8]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][8]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[8]~23_combout\ : std_logic;
SIGNAL \i_DATA4[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][8]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][8]~q\ : std_logic;
SIGNAL \i_DATA5[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][8]~q\ : std_logic;
SIGNAL \i_DATA6[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][8]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux18~0_combout\ : std_logic;
SIGNAL \i_DATA1[8]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][8]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux18~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux18~2_combout\ : std_logic;
SIGNAL \i_DATA2[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][12]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][12]~q\ : std_logic;
SIGNAL \i_DATA3[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][12]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][12]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[12]~25_combout\ : std_logic;
SIGNAL \i_DATA4[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][12]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][12]~q\ : std_logic;
SIGNAL \i_DATA5[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][12]~q\ : std_logic;
SIGNAL \i_DATA1[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][12]~q\ : std_logic;
SIGNAL \i_DATA6[12]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][12]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux14~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux14~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux14~2_combout\ : std_logic;
SIGNAL \i_DATA3[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][4]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][4]~q\ : std_logic;
SIGNAL \i_DATA2[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][4]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][4]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[4]~24_combout\ : std_logic;
SIGNAL \i_DATA4[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][4]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][4]~q\ : std_logic;
SIGNAL \i_DATA5[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][4]~q\ : std_logic;
SIGNAL \i_DATA6[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][4]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][4]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux22~0_combout\ : std_logic;
SIGNAL \i_DATA1[4]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][4]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux22~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux22~2_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \i_DATA2[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][2]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][2]~q\ : std_logic;
SIGNAL \i_DATA3[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][2]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[2]~18_combout\ : std_logic;
SIGNAL \i_DATA4[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][2]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][2]~q\ : std_logic;
SIGNAL \i_DATA5[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][2]~q\ : std_logic;
SIGNAL \i_DATA1[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][2]~q\ : std_logic;
SIGNAL \i_DATA6[2]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][2]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux24~0_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux24~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux24~2_combout\ : std_logic;
SIGNAL \i_DATA3[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][10]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][10]~q\ : std_logic;
SIGNAL \i_DATA2[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][10]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][10]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[10]~15_combout\ : std_logic;
SIGNAL \i_DATA4[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][10]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][10]~q\ : std_logic;
SIGNAL \i_DATA5[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][10]~q\ : std_logic;
SIGNAL \i_DATA6[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][10]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][10]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux16~0_combout\ : std_logic;
SIGNAL \i_DATA1[10]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][10]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux16~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux16~2_combout\ : std_logic;
SIGNAL \i_DATA3[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][6]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][6]~q\ : std_logic;
SIGNAL \i_DATA2[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][6]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][6]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[6]~16_combout\ : std_logic;
SIGNAL \i_DATA4[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][6]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][6]~q\ : std_logic;
SIGNAL \i_DATA6[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][6]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux20~0_combout\ : std_logic;
SIGNAL \i_DATA1[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][6]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux20~1_combout\ : std_logic;
SIGNAL \i_DATA5[6]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][6]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux20~2_combout\ : std_logic;
SIGNAL \i_DATA2[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][14]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][14]~q\ : std_logic;
SIGNAL \i_DATA3[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][14]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][14]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[14]~17_combout\ : std_logic;
SIGNAL \i_DATA4[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][14]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][14]~q\ : std_logic;
SIGNAL \i_DATA6[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][14]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux12~0_combout\ : std_logic;
SIGNAL \i_DATA1[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][14]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux12~1_combout\ : std_logic;
SIGNAL \i_DATA5[14]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][14]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux12~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \i_DATA2[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][3]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][3]~q\ : std_logic;
SIGNAL \i_DATA3[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][3]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][3]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[3]~22_combout\ : std_logic;
SIGNAL \i_DATA4[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][3]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][3]~q\ : std_logic;
SIGNAL \i_DATA5[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][3]~q\ : std_logic;
SIGNAL \i_DATA6[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][3]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux23~0_combout\ : std_logic;
SIGNAL \i_DATA1[3]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][3]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux23~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux23~2_combout\ : std_logic;
SIGNAL \i_DATA2[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][7]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][7]~q\ : std_logic;
SIGNAL \i_DATA3[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][7]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][7]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[7]~19_combout\ : std_logic;
SIGNAL \i_DATA4[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][7]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][7]~q\ : std_logic;
SIGNAL \i_DATA6[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][7]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux19~0_combout\ : std_logic;
SIGNAL \i_DATA1[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][7]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux19~1_combout\ : std_logic;
SIGNAL \i_DATA5[7]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][7]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux19~2_combout\ : std_logic;
SIGNAL \i_DATA2[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][11]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][11]~q\ : std_logic;
SIGNAL \i_DATA3[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][11]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][11]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[11]~20_combout\ : std_logic;
SIGNAL \i_DATA4[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][11]~q\ : std_logic;
SIGNAL \i_DATA5[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][11]~q\ : std_logic;
SIGNAL \i_DATA6[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][11]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux15~0_combout\ : std_logic;
SIGNAL \i_DATA1[11]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][11]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux15~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux15~2_combout\ : std_logic;
SIGNAL \i_DATA2[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][15]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][15]~q\ : std_logic;
SIGNAL \i_DATA3[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][15]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][15]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[15]~21_combout\ : std_logic;
SIGNAL \i_DATA4[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][15]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][15]~q\ : std_logic;
SIGNAL \i_DATA6[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][15]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux11~0_combout\ : std_logic;
SIGNAL \i_DATA1[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][15]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux11~1_combout\ : std_logic;
SIGNAL \i_DATA5[15]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][15]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux11~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \i_DATA3[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][25]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][25]~q\ : std_logic;
SIGNAL \i_DATA2[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][25]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][25]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[25]~1_combout\ : std_logic;
SIGNAL \i_DATA6[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][25]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux1~0_combout\ : std_logic;
SIGNAL \i_DATA1[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][25]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux1~1_combout\ : std_logic;
SIGNAL \i_DATA4[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][25]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][25]~q\ : std_logic;
SIGNAL \i_DATA5[25]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][25]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux1~2_combout\ : std_logic;
SIGNAL \i_DATA3[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][26]~q\ : std_logic;
SIGNAL \i_DATA2[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][26]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][26]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[26]~0_combout\ : std_logic;
SIGNAL \i_DATA4[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][26]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][26]~q\ : std_logic;
SIGNAL \i_DATA5[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][26]~q\ : std_logic;
SIGNAL \i_DATA6[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][26]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux0~0_combout\ : std_logic;
SIGNAL \i_DATA1[26]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][26]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux0~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux0~2_combout\ : std_logic;
SIGNAL \i_DATA2[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][24]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][24]~q\ : std_logic;
SIGNAL \i_DATA3[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][24]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][24]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[24]~2_combout\ : std_logic;
SIGNAL \i_DATA4[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][24]~q\ : std_logic;
SIGNAL \i_DATA5[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][24]~q\ : std_logic;
SIGNAL \i_DATA6[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][24]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux2~0_combout\ : std_logic;
SIGNAL \i_DATA1[24]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][24]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux2~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux2~2_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \i_DATA3[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][18]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][18]~q\ : std_logic;
SIGNAL \i_DATA2[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][18]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][18]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[18]~7_combout\ : std_logic;
SIGNAL \i_DATA4[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][18]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][18]~q\ : std_logic;
SIGNAL \i_DATA6[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][18]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux8~0_combout\ : std_logic;
SIGNAL \i_DATA1[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][18]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux8~1_combout\ : std_logic;
SIGNAL \i_DATA5[18]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][18]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux8~2_combout\ : std_logic;
SIGNAL \i_DATA3[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][16]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][16]~q\ : std_logic;
SIGNAL \i_DATA2[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][16]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][16]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[16]~10_combout\ : std_logic;
SIGNAL \i_DATA4[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][16]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][16]~q\ : std_logic;
SIGNAL \i_DATA5[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][16]~q\ : std_logic;
SIGNAL \i_DATA6[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][16]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux10~0_combout\ : std_logic;
SIGNAL \i_DATA1[16]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][16]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux10~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux10~2_combout\ : std_logic;
SIGNAL \i_DATA2[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][17]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][17]~q\ : std_logic;
SIGNAL \i_DATA3[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][17]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][17]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[17]~8_combout\ : std_logic;
SIGNAL \i_DATA4[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][17]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][17]~q\ : std_logic;
SIGNAL \i_DATA6[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][17]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux9~0_combout\ : std_logic;
SIGNAL \i_DATA1[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][17]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux9~1_combout\ : std_logic;
SIGNAL \i_DATA5[17]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][17]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux9~2_combout\ : std_logic;
SIGNAL \i_DATA3[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][19]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[2][19]~q\ : std_logic;
SIGNAL \i_DATA2[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][19]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[1][19]~q\ : std_logic;
SIGNAL \INST_SPI_register|r_OUTDATA[19]~9_combout\ : std_logic;
SIGNAL \i_DATA4[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][19]~feeder_combout\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[3][19]~q\ : std_logic;
SIGNAL \i_DATA5[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[4][19]~q\ : std_logic;
SIGNAL \i_DATA6[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[5][19]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux7~0_combout\ : std_logic;
SIGNAL \i_DATA1[19]~input_o\ : std_logic;
SIGNAL \INST_SPI_register|r_SPI_REG[0][19]~q\ : std_logic;
SIGNAL \INST_SPI_register|Mux7~1_combout\ : std_logic;
SIGNAL \INST_SPI_register|Mux7~2_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \r_MISO~q\ : std_logic;
SIGNAL \r_ADDRESS_received~1_combout\ : std_logic;
SIGNAL \r_ADDRESS_received~0_combout\ : std_logic;
SIGNAL \r_ADDRESS_received~3_combout\ : std_logic;
SIGNAL \r_ADDRESS_received~q\ : std_logic;
SIGNAL r_bitcount : std_logic_vector(31 DOWNTO 0);
SIGNAL r_SSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL r_SCLK : std_logic_vector(2 DOWNTO 0);
SIGNAL r_MOSI : std_logic_vector(1 DOWNTO 0);
SIGNAL r_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_SPI_register|r_OUTDATA\ : std_logic_vector(26 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_SCLK <= i_SCLK;
ww_i_MOSI <= i_MOSI;
ww_i_SSEL <= i_SSEL;
o_MISO <= ww_o_MISO;
ww_i_DATA1 <= i_DATA1;
ww_i_DATA2 <= i_DATA2;
ww_i_DATA3 <= i_DATA3;
ww_i_DATA4 <= i_DATA4;
ww_i_DATA5 <= i_DATA5;
ww_i_DATA6 <= i_DATA6;
ww_i_NEW_DATA <= i_NEW_DATA;
o_ADDRESS_received <= ww_o_ADDRESS_received;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X35_Y0_N16
\o_MISO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_MISO~q\,
	devoe => ww_devoe,
	o => \o_MISO~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\o_ADDRESS_received~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_ADDRESS_received~q\,
	devoe => ww_devoe,
	o => \o_ADDRESS_received~output_o\);

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

-- Location: IOIBUF_X37_Y0_N22
\i_SSEL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SSEL,
	o => \i_SSEL~input_o\);

-- Location: LCCOMB_X30_Y14_N12
\r_SSEL[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_SSEL[0]~feeder_combout\ = \i_SSEL~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SSEL~input_o\,
	combout => \r_SSEL[0]~feeder_combout\);

-- Location: FF_X30_Y14_N13
\r_SSEL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SSEL[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(0));

-- Location: FF_X29_Y14_N23
\r_SSEL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => r_SSEL(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(1));

-- Location: FF_X29_Y14_N19
\r_SSEL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => r_SSEL(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(2));

-- Location: LCCOMB_X29_Y14_N26
\Selector37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (r_SSEL(1) & !r_SSEL(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_SSEL(1),
	datad => r_SSEL(2),
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X29_Y14_N24
\Selector37~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~7_combout\ = (\state.TRANSMIT~q\ & (r_SSEL(1) & !r_SSEL(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.TRANSMIT~q\,
	datac => r_SSEL(1),
	datad => r_SSEL(2),
	combout => \Selector37~7_combout\);

-- Location: LCCOMB_X29_Y14_N18
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (r_SSEL(1) & (!r_SSEL(2) & \state.COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(1),
	datac => r_SSEL(2),
	datad => \state.COMMAND~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X29_Y14_N12
\Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector37~6_combout\ & (((\state.IDLE~q\)))) # (!\Selector37~6_combout\ & (!\Selector36~0_combout\ & (!\Selector37~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector37~7_combout\,
	datac => \state.IDLE~q\,
	datad => \Selector37~6_combout\,
	combout => \Selector36~1_combout\);

-- Location: FF_X29_Y14_N13
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X29_Y14_N10
\Selector37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~5_combout\ = (!\state.IDLE~q\ & (!\state.TRANSMIT~q\ & (!r_SSEL(1) & r_SSEL(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.TRANSMIT~q\,
	datac => r_SSEL(1),
	datad => r_SSEL(2),
	combout => \Selector37~5_combout\);

-- Location: IOIBUF_X37_Y0_N15
\i_SCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SCLK,
	o => \i_SCLK~input_o\);

-- Location: LCCOMB_X29_Y14_N4
\r_SCLK[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_SCLK[0]~feeder_combout\ = \i_SCLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SCLK~input_o\,
	combout => \r_SCLK[0]~feeder_combout\);

-- Location: FF_X29_Y14_N5
\r_SCLK[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SCLK[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SCLK(0));

-- Location: FF_X27_Y14_N27
\r_SCLK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => r_SCLK(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SCLK(1));

-- Location: FF_X27_Y14_N11
\r_SCLK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => r_SCLK(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SCLK(2));

-- Location: LCCOMB_X27_Y14_N10
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!r_SCLK(1) & (r_SCLK(2) & ((r_SSEL(2)) # (!r_SSEL(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SCLK(1),
	datab => r_SSEL(1),
	datac => r_SCLK(2),
	datad => r_SSEL(2),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (r_SCLK(2)) # (!r_SCLK(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_SCLK(1),
	datad => r_SCLK(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y12_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = r_bitcount(0) $ (VCC)
-- \Add0~1\ = CARRY(r_bitcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y12_N14
\Selector31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(0))))) # (!\r_bitcount~1_combout\ & (\Add0~0_combout\ & ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_bitcount(0),
	datac => \r_bitcount~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X27_Y14_N18
\r_ADDRESS_received~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ADDRESS_received~2_combout\ = (r_SCLK(2) & (!r_SCLK(1) & !\Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SCLK(2),
	datac => r_SCLK(1),
	datad => \Equal1~0_combout\,
	combout => \r_ADDRESS_received~2_combout\);

-- Location: LCCOMB_X27_Y14_N22
\r_bitcount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount~0_combout\ = (\Selector37~2_combout\) # ((r_SCLK(1) & (r_SCLK(2))) # (!r_SCLK(1) & ((\Equal1~0_combout\) # (!r_SCLK(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SCLK(1),
	datab => \Selector37~2_combout\,
	datac => r_SCLK(2),
	datad => \Equal1~0_combout\,
	combout => \r_bitcount~0_combout\);

-- Location: LCCOMB_X28_Y12_N20
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\r_bitcount~0_combout\ & (((r_bitcount(0))))) # (!\r_bitcount~0_combout\ & (\Add0~0_combout\ & ((!\r_ADDRESS_received~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_bitcount(0),
	datac => \r_ADDRESS_received~2_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X28_Y12_N12
\Selector31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\state.COMMAND~q\ & ((\Selector31~1_combout\) # ((\state.TRANSMIT~q\ & \Selector31~0_combout\)))) # (!\state.COMMAND~q\ & (\state.TRANSMIT~q\ & ((\Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datab => \state.TRANSMIT~q\,
	datac => \Selector31~1_combout\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~2_combout\);

-- Location: FF_X28_Y12_N13
\r_bitcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(0));

-- Location: LCCOMB_X27_Y12_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (r_bitcount(1) & (!\Add0~1\)) # (!r_bitcount(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!r_bitcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X28_Y12_N8
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & ((r_bitcount(1)))) # (!\r_bitcount~0_combout\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \state.TRANSMIT~q\,
	datac => r_bitcount(1),
	datad => \r_bitcount~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X28_Y12_N18
\Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(1))))) # (!\r_bitcount~1_combout\ & (\Add0~2_combout\ & ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => r_bitcount(1),
	datac => \r_bitcount~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X28_Y12_N2
\Selector30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\Selector30~0_combout\) # ((\state.COMMAND~q\ & \Selector30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datac => \Selector30~0_combout\,
	datad => \Selector30~1_combout\,
	combout => \Selector30~2_combout\);

-- Location: FF_X28_Y12_N3
\r_bitcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(1));

-- Location: LCCOMB_X27_Y12_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (r_bitcount(2) & (\Add0~3\ $ (GND))) # (!r_bitcount(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((r_bitcount(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X28_Y12_N26
\Selector29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(2))))) # (!\r_bitcount~1_combout\ & (!\Mux0~0_combout\ & (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \r_bitcount~1_combout\,
	datad => r_bitcount(2),
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X28_Y12_N16
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(2))) # (!\r_bitcount~0_combout\ & ((\Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(2),
	datab => \state.TRANSMIT~q\,
	datac => \Add0~4_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X28_Y12_N28
\Selector29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\Selector29~0_combout\) # ((\state.COMMAND~q\ & \Selector29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datac => \Selector29~1_combout\,
	datad => \Selector29~0_combout\,
	combout => \Selector29~2_combout\);

-- Location: FF_X28_Y12_N29
\r_bitcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(2));

-- Location: LCCOMB_X27_Y14_N0
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\) # ((\state.COMMAND~q\ & \r_bitcount~1_combout\)))) # (!\state.TRANSMIT~q\ & (\state.COMMAND~q\ & ((\r_bitcount~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => \state.COMMAND~q\,
	datac => \r_bitcount~0_combout\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X26_Y14_N22
\Selector20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~7_combout\ = (\state.COMMAND~q\ & (!\Mux0~0_combout\ & ((r_SSEL(2)) # (!r_SSEL(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(1),
	datab => \state.COMMAND~q\,
	datac => \Mux0~0_combout\,
	datad => r_SSEL(2),
	combout => \Selector20~7_combout\);

-- Location: LCCOMB_X27_Y14_N30
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Selector20~7_combout\) # ((\state.TRANSMIT~q\ & !\r_bitcount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datac => \r_bitcount~0_combout\,
	datad => \Selector20~7_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X26_Y14_N20
\Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (r_bitcount(14) & (\state.COMMAND~q\ & \r_bitcount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(14),
	datac => \state.COMMAND~q\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X27_Y12_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (r_bitcount(5) & (!\Add0~9\)) # (!r_bitcount(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!r_bitcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y12_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (r_bitcount(6) & (\Add0~11\ $ (GND))) # (!r_bitcount(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((r_bitcount(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y12_N4
\Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\r_bitcount~1_combout\ & (r_bitcount(6))) # (!\r_bitcount~1_combout\ & (((!\Mux0~0_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(6),
	datab => \Mux0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X26_Y12_N2
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(6))) # (!\r_bitcount~0_combout\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(6),
	datab => \Add0~12_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\Selector25~0_combout\) # ((\state.COMMAND~q\ & \Selector25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.COMMAND~q\,
	datac => \Selector25~1_combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~2_combout\);

-- Location: FF_X26_Y12_N15
\r_bitcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(6));

-- Location: LCCOMB_X27_Y12_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (r_bitcount(7) & (!\Add0~13\)) # (!r_bitcount(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!r_bitcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X26_Y12_N8
\Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\r_bitcount~1_combout\ & (r_bitcount(7))) # (!\r_bitcount~1_combout\ & (((\Add0~14_combout\ & !\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(7),
	datab => \Add0~14_combout\,
	datac => \Mux0~0_combout\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & ((r_bitcount(7)))) # (!\r_bitcount~0_combout\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => \Add0~14_combout\,
	datac => r_bitcount(7),
	datad => \r_bitcount~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Selector24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\Selector24~0_combout\) # ((\state.COMMAND~q\ & \Selector24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.COMMAND~q\,
	datac => \Selector24~1_combout\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~2_combout\);

-- Location: FF_X26_Y12_N13
\r_bitcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(7));

-- Location: LCCOMB_X27_Y12_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (r_bitcount(8) & (\Add0~15\ $ (GND))) # (!r_bitcount(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((r_bitcount(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y12_N28
\Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\r_bitcount~1_combout\ & (r_bitcount(8))) # (!\r_bitcount~1_combout\ & (((\Add0~16_combout\ & !\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(8),
	datab => \Add0~16_combout\,
	datac => \Mux0~0_combout\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X26_Y12_N6
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & ((r_bitcount(8)))) # (!\r_bitcount~0_combout\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => \Add0~16_combout\,
	datac => r_bitcount(8),
	datad => \r_bitcount~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Selector23~0_combout\) # ((\state.COMMAND~q\ & \Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.COMMAND~q\,
	datac => \Selector23~1_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~2_combout\);

-- Location: FF_X26_Y12_N31
\r_bitcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(8));

-- Location: LCCOMB_X27_Y12_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (r_bitcount(9) & (!\Add0~17\)) # (!r_bitcount(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!r_bitcount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X28_Y14_N2
\Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(9))))) # (!\r_bitcount~1_combout\ & (!\Mux0~0_combout\ & (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add0~18_combout\,
	datac => \r_bitcount~1_combout\,
	datad => r_bitcount(9),
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X28_Y14_N0
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(9))) # (!\r_bitcount~0_combout\ & ((\Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(9),
	datab => \Add0~18_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\Selector22~0_combout\) # ((\Selector22~1_combout\ & \state.COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector22~1_combout\,
	datac => \state.COMMAND~q\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~2_combout\);

-- Location: FF_X28_Y14_N27
\r_bitcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(9));

-- Location: LCCOMB_X27_Y12_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (r_bitcount(10) & (\Add0~19\ $ (GND))) # (!r_bitcount(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((r_bitcount(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X28_Y14_N8
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & ((r_bitcount(10)))) # (!\r_bitcount~0_combout\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => r_bitcount(10),
	datac => \state.TRANSMIT~q\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(10))))) # (!\r_bitcount~1_combout\ & (!\Mux0~0_combout\ & ((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => r_bitcount(10),
	datac => \r_bitcount~1_combout\,
	datad => \Add0~20_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X28_Y14_N24
\Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\Selector21~0_combout\) # ((\state.COMMAND~q\ & \Selector21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datac => \Selector21~0_combout\,
	datad => \Selector21~1_combout\,
	combout => \Selector21~2_combout\);

-- Location: FF_X28_Y14_N25
\r_bitcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(10));

-- Location: LCCOMB_X27_Y12_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (r_bitcount(11) & (!\Add0~21\)) # (!r_bitcount(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!r_bitcount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X28_Y14_N28
\Selector20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(11))) # (!\r_bitcount~0_combout\ & ((\Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => r_bitcount(11),
	datac => \Add0~22_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector20~4_combout\);

-- Location: LCCOMB_X28_Y14_N10
\Selector20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = (\state.COMMAND~q\ & (r_bitcount(11) & \r_bitcount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datab => r_bitcount(11),
	datac => \r_bitcount~1_combout\,
	combout => \Selector20~5_combout\);

-- Location: LCCOMB_X28_Y14_N14
\Selector20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~6_combout\ = (\Selector20~4_combout\) # ((\Selector20~5_combout\) # ((\Selector20~7_combout\ & \Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~7_combout\,
	datab => \Selector20~4_combout\,
	datac => \Add0~22_combout\,
	datad => \Selector20~5_combout\,
	combout => \Selector20~6_combout\);

-- Location: FF_X28_Y14_N15
\r_bitcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector20~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(11));

-- Location: LCCOMB_X27_Y12_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (r_bitcount(12) & (\Add0~23\ $ (GND))) # (!r_bitcount(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((r_bitcount(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X28_Y14_N30
\Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (r_bitcount(12) & (\r_bitcount~1_combout\ & \state.COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(12),
	datac => \r_bitcount~1_combout\,
	datad => \state.COMMAND~q\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X28_Y14_N20
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(12))) # (!\r_bitcount~0_combout\ & ((\Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(12),
	datab => \Add0~24_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X28_Y14_N12
\Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~1_combout\) # ((\Selector19~0_combout\) # ((\Selector20~7_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~7_combout\,
	datab => \Add0~24_combout\,
	datac => \Selector19~1_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X28_Y14_N13
\r_bitcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(12));

-- Location: LCCOMB_X27_Y12_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (r_bitcount(13) & (!\Add0~25\)) # (!r_bitcount(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!r_bitcount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X26_Y14_N4
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (r_bitcount(13) & (\state.COMMAND~q\ & \r_bitcount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(13),
	datac => \state.COMMAND~q\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X26_Y14_N18
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & ((r_bitcount(13)))) # (!\r_bitcount~0_combout\ & (\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \state.TRANSMIT~q\,
	datac => r_bitcount(13),
	datad => \r_bitcount~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X26_Y14_N16
\Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~1_combout\) # ((\Selector18~0_combout\) # ((\Add0~26_combout\ & \Selector20~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Selector20~7_combout\,
	datac => \Selector18~1_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X26_Y14_N17
\r_bitcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(13));

-- Location: LCCOMB_X27_Y12_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (r_bitcount(14) & (\Add0~27\ $ (GND))) # (!r_bitcount(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((r_bitcount(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X26_Y14_N6
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(14))) # (!\r_bitcount~0_combout\ & ((\Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(14),
	datab => \Add0~28_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X26_Y14_N2
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Selector17~1_combout\) # ((\Selector17~0_combout\) # ((\Selector20~7_combout\ & \Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~7_combout\,
	datab => \Selector17~1_combout\,
	datac => \Add0~28_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X26_Y14_N3
\r_bitcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(14));

-- Location: LCCOMB_X27_Y12_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (r_bitcount(15) & (!\Add0~29\)) # (!r_bitcount(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!r_bitcount(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y14_N26
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(15))) # (!\r_bitcount~0_combout\ & ((\Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(15),
	datab => \state.TRANSMIT~q\,
	datac => \Add0~30_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (r_bitcount(15) & (\state.COMMAND~q\ & \r_bitcount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(15),
	datac => \state.COMMAND~q\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X26_Y14_N8
\Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Selector16~0_combout\) # ((\Selector16~1_combout\) # ((\Add0~30_combout\ & \Selector20~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Selector20~7_combout\,
	datac => \Selector16~0_combout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: FF_X26_Y14_N9
\r_bitcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(15));

-- Location: LCCOMB_X27_Y11_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (r_bitcount(16) & (\Add0~31\ $ (GND))) # (!r_bitcount(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((r_bitcount(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X26_Y14_N10
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(16))) # (!\r_bitcount~0_combout\ & ((\Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => r_bitcount(16),
	datac => \Add0~32_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X26_Y14_N24
\Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (r_bitcount(16) & (\state.COMMAND~q\ & \r_bitcount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(16),
	datac => \state.COMMAND~q\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X26_Y14_N30
\Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~0_combout\) # ((\Selector15~1_combout\) # ((\Selector20~7_combout\ & \Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector20~7_combout\,
	datac => \Add0~32_combout\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~2_combout\);

-- Location: FF_X26_Y14_N31
\r_bitcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(16));

-- Location: LCCOMB_X27_Y11_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (r_bitcount(17) & (!\Add0~33\)) # (!r_bitcount(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!r_bitcount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X27_Y14_N16
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector10~0_combout\ & ((\Add0~34_combout\) # ((\Selector13~0_combout\ & r_bitcount(17))))) # (!\Selector10~0_combout\ & (\Selector13~0_combout\ & (r_bitcount(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_bitcount(17),
	datad => \Add0~34_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X27_Y14_N17
\r_bitcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(17));

-- Location: LCCOMB_X27_Y11_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (r_bitcount(18) & (\Add0~35\ $ (GND))) # (!r_bitcount(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((r_bitcount(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X27_Y14_N12
\Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector10~0_combout\ & ((\Add0~36_combout\) # ((\Selector13~0_combout\ & r_bitcount(18))))) # (!\Selector10~0_combout\ & (\Selector13~0_combout\ & (r_bitcount(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_bitcount(18),
	datad => \Add0~36_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X27_Y14_N13
\r_bitcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(18));

-- Location: LCCOMB_X27_Y11_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (r_bitcount(19) & (!\Add0~37\)) # (!r_bitcount(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!r_bitcount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X27_Y14_N14
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector10~0_combout\ & ((\Add0~38_combout\) # ((\Selector13~0_combout\ & r_bitcount(19))))) # (!\Selector10~0_combout\ & (\Selector13~0_combout\ & (r_bitcount(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_bitcount(19),
	datad => \Add0~38_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X27_Y14_N15
\r_bitcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(19));

-- Location: LCCOMB_X27_Y11_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (r_bitcount(20) & (\Add0~39\ $ (GND))) # (!r_bitcount(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((r_bitcount(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X27_Y14_N8
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector10~0_combout\ & ((\Add0~40_combout\) # ((\Selector13~0_combout\ & r_bitcount(20))))) # (!\Selector10~0_combout\ & (\Selector13~0_combout\ & (r_bitcount(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_bitcount(20),
	datad => \Add0~40_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X27_Y14_N9
\r_bitcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(20));

-- Location: LCCOMB_X27_Y11_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (r_bitcount(21) & (!\Add0~41\)) # (!r_bitcount(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!r_bitcount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X28_Y11_N20
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector13~0_combout\ & ((r_bitcount(21)) # ((\Add0~42_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~42_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~42_combout\,
	datac => r_bitcount(21),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X28_Y11_N21
\r_bitcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(21));

-- Location: LCCOMB_X27_Y11_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (r_bitcount(22) & (\Add0~43\ $ (GND))) # (!r_bitcount(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((r_bitcount(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X28_Y11_N22
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(22)) # ((\Add0~44_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~44_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~44_combout\,
	datac => r_bitcount(22),
	datad => \Selector10~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X28_Y11_N23
\r_bitcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(22));

-- Location: LCCOMB_X27_Y11_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (r_bitcount(23) & (!\Add0~45\)) # (!r_bitcount(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!r_bitcount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X28_Y11_N4
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(23)) # ((\Add0~46_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~46_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~46_combout\,
	datac => r_bitcount(23),
	datad => \Selector10~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X28_Y11_N5
\r_bitcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(23));

-- Location: LCCOMB_X27_Y11_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (r_bitcount(24) & (\Add0~47\ $ (GND))) # (!r_bitcount(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((r_bitcount(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X28_Y11_N18
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(24)) # ((\Add0~48_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~48_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~48_combout\,
	datac => r_bitcount(24),
	datad => \Selector10~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X28_Y11_N19
\r_bitcount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(24));

-- Location: LCCOMB_X27_Y11_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (r_bitcount(25) & (!\Add0~49\)) # (!r_bitcount(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!r_bitcount(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X28_Y11_N30
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~50_combout\ & ((\Selector10~0_combout\) # ((r_bitcount(25) & \Selector13~0_combout\)))) # (!\Add0~50_combout\ & (((r_bitcount(25) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Selector10~0_combout\,
	datac => r_bitcount(25),
	datad => \Selector13~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X28_Y11_N31
\r_bitcount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(25));

-- Location: LCCOMB_X27_Y11_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (r_bitcount(26) & (\Add0~51\ $ (GND))) # (!r_bitcount(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((r_bitcount(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X28_Y11_N24
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add0~52_combout\ & ((\Selector10~0_combout\) # ((r_bitcount(26) & \Selector13~0_combout\)))) # (!\Add0~52_combout\ & (((r_bitcount(26) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Selector10~0_combout\,
	datac => r_bitcount(26),
	datad => \Selector13~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X28_Y11_N25
\r_bitcount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(26));

-- Location: LCCOMB_X27_Y11_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (r_bitcount(27) & (!\Add0~53\)) # (!r_bitcount(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!r_bitcount(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X28_Y11_N26
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add0~54_combout\ & ((\Selector10~0_combout\) # ((r_bitcount(27) & \Selector13~0_combout\)))) # (!\Add0~54_combout\ & (((r_bitcount(27) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Selector10~0_combout\,
	datac => r_bitcount(27),
	datad => \Selector13~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X28_Y11_N27
\r_bitcount[27]\ : dffeas
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
	q => r_bitcount(27));

-- Location: LCCOMB_X27_Y11_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (r_bitcount(28) & (\Add0~55\ $ (GND))) # (!r_bitcount(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((r_bitcount(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X28_Y11_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(28)) # ((\Add0~56_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~56_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~56_combout\,
	datac => r_bitcount(28),
	datad => \Selector10~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X28_Y11_N17
\r_bitcount[28]\ : dffeas
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
	q => r_bitcount(28));

-- Location: LCCOMB_X27_Y11_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (r_bitcount(29) & (!\Add0~57\)) # (!r_bitcount(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!r_bitcount(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X28_Y11_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(29)) # ((\Add0~58_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~58_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~58_combout\,
	datac => r_bitcount(29),
	datad => \Selector10~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X28_Y11_N29
\r_bitcount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(29));

-- Location: LCCOMB_X27_Y11_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (r_bitcount(30) & (\Add0~59\ $ (GND))) # (!r_bitcount(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((r_bitcount(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X28_Y11_N10
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector13~0_combout\ & ((r_bitcount(30)) # ((\Add0~60_combout\ & \Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\Add0~60_combout\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add0~60_combout\,
	datac => r_bitcount(30),
	datad => \Selector10~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X28_Y11_N11
\r_bitcount[30]\ : dffeas
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
	q => r_bitcount(30));

-- Location: LCCOMB_X27_Y11_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = r_bitcount(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X28_Y12_N22
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add0~62_combout\ & ((\Selector10~0_combout\) # ((r_bitcount(31) & \Selector13~0_combout\)))) # (!\Add0~62_combout\ & (((r_bitcount(31) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Selector10~0_combout\,
	datac => r_bitcount(31),
	datad => \Selector13~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X28_Y12_N23
\r_bitcount[31]\ : dffeas
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
	q => r_bitcount(31));

-- Location: LCCOMB_X28_Y12_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!r_bitcount(0) & (!r_bitcount(2) & (!r_bitcount(31) & !r_bitcount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(0),
	datab => r_bitcount(2),
	datac => r_bitcount(31),
	datad => r_bitcount(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y11_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!r_bitcount(22) & (!r_bitcount(24) & (!r_bitcount(23) & !r_bitcount(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(22),
	datab => r_bitcount(24),
	datac => r_bitcount(23),
	datad => r_bitcount(21),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X28_Y11_N6
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!r_bitcount(27) & (!r_bitcount(26) & (!r_bitcount(25) & !r_bitcount(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(27),
	datab => r_bitcount(26),
	datac => r_bitcount(25),
	datad => r_bitcount(28),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X28_Y11_N0
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!r_bitcount(30) & (!r_bitcount(29) & (\LessThan0~5_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(30),
	datab => r_bitcount(29),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X26_Y12_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_bitcount(8) & (!r_bitcount(4) & (!r_bitcount(6) & !r_bitcount(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(8),
	datab => r_bitcount(4),
	datac => r_bitcount(6),
	datad => r_bitcount(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y14_N18
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!r_bitcount(12) & (!r_bitcount(11) & (!r_bitcount(9) & !r_bitcount(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(12),
	datab => r_bitcount(11),
	datac => r_bitcount(9),
	datad => r_bitcount(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y14_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!r_bitcount(18) & (!r_bitcount(20) & (!r_bitcount(19) & !r_bitcount(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(18),
	datab => r_bitcount(20),
	datac => r_bitcount(19),
	datad => r_bitcount(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y14_N12
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!r_bitcount(16) & (!r_bitcount(13) & (!r_bitcount(15) & !r_bitcount(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(16),
	datab => r_bitcount(13),
	datac => r_bitcount(15),
	datad => r_bitcount(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y14_N28
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y14_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (\LessThan0~7_combout\ & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y14_N20
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_bitcount(5)) # ((!\Equal0~1_combout\) # (!r_bitcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(5),
	datac => r_bitcount(3),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y14_N6
\r_bitcount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount~1_combout\ = (r_SSEL(2) & (((\Mux0~0_combout\ & \Equal0~2_combout\)))) # (!r_SSEL(2) & ((r_SSEL(1)) # ((\Mux0~0_combout\ & \Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(2),
	datab => r_SSEL(1),
	datac => \Mux0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \r_bitcount~1_combout\);

-- Location: LCCOMB_X27_Y12_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (r_bitcount(3) & (!\Add0~5\)) # (!r_bitcount(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!r_bitcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X28_Y14_N22
\Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(3))))) # (!\r_bitcount~1_combout\ & (!\Mux0~0_combout\ & ((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => r_bitcount(3),
	datac => \r_bitcount~1_combout\,
	datad => \Add0~6_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X28_Y14_N16
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(3))) # (!\r_bitcount~0_combout\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => r_bitcount(3),
	datac => \Add0~6_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\Selector28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\Selector28~0_combout\) # ((\state.COMMAND~q\ & \Selector28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datac => \Selector28~1_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~2_combout\);

-- Location: FF_X28_Y14_N5
\r_bitcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(3));

-- Location: LCCOMB_X27_Y12_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (r_bitcount(4) & (\Add0~7\ $ (GND))) # (!r_bitcount(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((r_bitcount(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y12_N22
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.TRANSMIT~q\ & ((\r_bitcount~0_combout\ & (r_bitcount(4))) # (!\r_bitcount~0_combout\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => r_bitcount(4),
	datac => \Add0~8_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X26_Y12_N20
\Selector27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\r_bitcount~1_combout\ & (r_bitcount(4))) # (!\r_bitcount~1_combout\ & (((!\Mux0~0_combout\ & \Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(4),
	datab => \Mux0~0_combout\,
	datac => \Add0~8_combout\,
	datad => \r_bitcount~1_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X26_Y12_N24
\Selector27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\Selector27~0_combout\) # ((\state.COMMAND~q\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.COMMAND~q\,
	datac => \Selector27~0_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector27~2_combout\);

-- Location: FF_X26_Y12_N25
\r_bitcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(4));

-- Location: LCCOMB_X28_Y12_N30
\Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\r_bitcount~1_combout\ & (((r_bitcount(5))))) # (!\r_bitcount~1_combout\ & (\Add0~10_combout\ & ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => r_bitcount(5),
	datac => \r_bitcount~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X28_Y12_N24
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\r_bitcount~0_combout\ & (((r_bitcount(5))))) # (!\r_bitcount~0_combout\ & (\Add0~10_combout\ & ((!\r_ADDRESS_received~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => r_bitcount(5),
	datac => \r_ADDRESS_received~2_combout\,
	datad => \r_bitcount~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\Selector26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\state.COMMAND~q\ & ((\Selector26~1_combout\) # ((\state.TRANSMIT~q\ & \Selector26~0_combout\)))) # (!\state.COMMAND~q\ & (\state.TRANSMIT~q\ & ((\Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datab => \state.TRANSMIT~q\,
	datac => \Selector26~1_combout\,
	datad => \Selector26~0_combout\,
	combout => \Selector26~2_combout\);

-- Location: FF_X28_Y12_N7
\r_bitcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(5));

-- Location: LCCOMB_X27_Y14_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((r_bitcount(3)) # (!\Equal0~1_combout\)) # (!r_bitcount(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(5),
	datac => r_bitcount(3),
	datad => \Equal0~1_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X29_Y14_N30
\Selector37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (\state.TRANSMIT~q\ & (!\Equal1~0_combout\ & ((\Selector32~0_combout\) # (!\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.TRANSMIT~q\,
	datac => \Selector32~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector37~4_combout\);

-- Location: LCCOMB_X29_Y14_N6
\Selector37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\Selector37~2_combout\ & (!\state.IDLE~q\)) # (!\Selector37~2_combout\ & (((\Equal0~2_combout\) # (!\state.COMMAND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.COMMAND~q\,
	datac => \Selector37~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X29_Y14_N20
\Selector37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~6_combout\ = (!\Selector37~5_combout\ & (!\Selector37~4_combout\ & \Selector37~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~5_combout\,
	datac => \Selector37~4_combout\,
	datad => \Selector37~3_combout\,
	combout => \Selector37~6_combout\);

-- Location: LCCOMB_X29_Y14_N16
\Selector37~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~8_combout\ = (\Selector37~6_combout\ & (((\state.COMMAND~q\)))) # (!\Selector37~6_combout\ & (!\Selector37~7_combout\ & (!\Selector37~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~7_combout\,
	datab => \Selector37~9_combout\,
	datac => \state.COMMAND~q\,
	datad => \Selector37~6_combout\,
	combout => \Selector37~8_combout\);

-- Location: FF_X29_Y14_N17
\state.COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector37~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COMMAND~q\);

-- Location: LCCOMB_X29_Y14_N2
\Selector37~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~9_combout\ = (\state.COMMAND~q\ & (((r_SSEL(1) & !r_SSEL(2))) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(1),
	datab => \state.COMMAND~q\,
	datac => r_SSEL(2),
	datad => \Equal0~2_combout\,
	combout => \Selector37~9_combout\);

-- Location: LCCOMB_X29_Y14_N28
\Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Selector37~6_combout\ & (((\state.TRANSMIT~q\)))) # (!\Selector37~6_combout\ & (!\Selector37~2_combout\ & (\Selector37~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~2_combout\,
	datab => \Selector37~9_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \Selector37~6_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X29_Y14_N29
\state.TRANSMIT\ : dffeas
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
	q => \state.TRANSMIT~q\);

-- Location: LCCOMB_X31_Y14_N6
\Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (r_bitcount(3)) # ((r_bitcount(2) & ((r_bitcount(1)) # (r_bitcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datab => r_bitcount(1),
	datac => r_bitcount(2),
	datad => r_bitcount(0),
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X31_Y14_N20
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~4_combout\ & \LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y14_N24
\Selector32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\Selector32~0_combout\ & ((\Selector32~1_combout\) # ((r_bitcount(5)) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~1_combout\,
	datab => r_bitcount(5),
	datac => \Selector32~0_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X31_Y14_N10
\Selector32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\state.TRANSMIT~q\ & (\Equal1~0_combout\ & (!r_bitcount(31) & \Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datab => \Equal1~0_combout\,
	datac => r_bitcount(31),
	datad => \Selector32~2_combout\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X31_Y14_N28
\Selector32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\Selector32~0_combout\ & (((\state.TRANSMIT~q\ & !\Equal1~0_combout\)))) # (!\Selector32~0_combout\ & ((\state.COMMAND~q\) # ((\state.TRANSMIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \state.COMMAND~q\,
	datac => \state.TRANSMIT~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector32~4_combout\);

-- Location: IOIBUF_X28_Y0_N8
\i_DATA3[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(21),
	o => \i_DATA3[21]~input_o\);

-- Location: LCCOMB_X35_Y12_N6
\INST_SPI_register|r_SPI_REG[2][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][21]~feeder_combout\ = \i_DATA3[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[21]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][21]~feeder_combout\);

-- Location: IOIBUF_X0_Y24_N1
\i_NEW_DATA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEW_DATA,
	o => \i_NEW_DATA~input_o\);

-- Location: LCCOMB_X29_Y14_N8
\r_UPDATE_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_UPDATE_ENABLE~0_combout\ = (\state.IDLE~q\ & (((\r_UPDATE_ENABLE~q\)))) # (!\state.IDLE~q\ & (!r_SSEL(1) & (r_SSEL(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(1),
	datab => r_SSEL(2),
	datac => \r_UPDATE_ENABLE~q\,
	datad => \state.IDLE~q\,
	combout => \r_UPDATE_ENABLE~0_combout\);

-- Location: FF_X29_Y14_N9
r_UPDATE_ENABLE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_UPDATE_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_UPDATE_ENABLE~q\);

-- Location: LCCOMB_X32_Y14_N2
\INST_SPI_register|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|process_0~0_combout\ = (\i_NEW_DATA~input_o\ & !\r_UPDATE_ENABLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_NEW_DATA~input_o\,
	datad => \r_UPDATE_ENABLE~q\,
	combout => \INST_SPI_register|process_0~0_combout\);

-- Location: FF_X35_Y12_N7
\INST_SPI_register|r_SPI_REG[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][21]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][21]~q\);

-- Location: IOIBUF_X35_Y0_N22
\i_MOSI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MOSI,
	o => \i_MOSI~input_o\);

-- Location: FF_X37_Y16_N9
\r_MOSI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_MOSI~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_MOSI(0));

-- Location: FF_X37_Y16_N7
\r_MOSI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => r_MOSI(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_MOSI(1));

-- Location: LCCOMB_X30_Y14_N18
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.TRANSMIT~q\) # ((\state.COMMAND~q\ & ((\Selector37~2_combout\) # (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COMMAND~q\,
	datab => \state.TRANSMIT~q\,
	datac => \Selector37~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X37_Y16_N16
\Selector35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (r_MOSI(1) & ((\Selector20~7_combout\) # ((r_ADDRESS(0) & \Selector34~0_combout\)))) # (!r_MOSI(1) & (((r_ADDRESS(0) & \Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MOSI(1),
	datab => \Selector20~7_combout\,
	datac => r_ADDRESS(0),
	datad => \Selector34~0_combout\,
	combout => \Selector35~4_combout\);

-- Location: FF_X37_Y16_N17
\r_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector35~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ADDRESS(0));

-- Location: IOIBUF_X41_Y8_N15
\i_DATA2[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(21),
	o => \i_DATA2[21]~input_o\);

-- Location: LCCOMB_X35_Y12_N0
\INST_SPI_register|r_SPI_REG[1][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][21]~feeder_combout\ = \i_DATA2[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA2[21]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][21]~feeder_combout\);

-- Location: FF_X35_Y12_N1
\INST_SPI_register|r_SPI_REG[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][21]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][21]~q\);

-- Location: LCCOMB_X35_Y12_N8
\INST_SPI_register|r_OUTDATA[21]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[21]~3_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][21]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][21]~q\,
	datab => r_ADDRESS(0),
	datad => \INST_SPI_register|r_SPI_REG[1][21]~q\,
	combout => \INST_SPI_register|r_OUTDATA[21]~3_combout\);

-- Location: IOIBUF_X37_Y0_N29
\i_DATA4[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(21),
	o => \i_DATA4[21]~input_o\);

-- Location: FF_X37_Y12_N5
\INST_SPI_register|r_SPI_REG[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA4[21]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][21]~q\);

-- Location: IOIBUF_X41_Y2_N22
\i_DATA6[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(21),
	o => \i_DATA6[21]~input_o\);

-- Location: FF_X36_Y12_N7
\INST_SPI_register|r_SPI_REG[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[21]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][21]~q\);

-- Location: LCCOMB_X36_Y12_N6
\INST_SPI_register|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux5~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][21]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][21]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y16_N24
\Selector34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (r_ADDRESS(0) & ((\Selector20~7_combout\) # ((r_ADDRESS(1) & \Selector34~0_combout\)))) # (!r_ADDRESS(0) & (((r_ADDRESS(1) & \Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \Selector20~7_combout\,
	datac => r_ADDRESS(1),
	datad => \Selector34~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: FF_X37_Y16_N25
\r_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ADDRESS(1));

-- Location: LCCOMB_X37_Y16_N30
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Selector34~0_combout\ & ((r_ADDRESS(2)) # ((\Selector20~7_combout\ & r_ADDRESS(1))))) # (!\Selector34~0_combout\ & (\Selector20~7_combout\ & ((r_ADDRESS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector20~7_combout\,
	datac => r_ADDRESS(2),
	datad => r_ADDRESS(1),
	combout => \Selector33~0_combout\);

-- Location: FF_X37_Y16_N31
\r_ADDRESS[2]\ : dffeas
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
	q => r_ADDRESS(2));

-- Location: LCCOMB_X37_Y16_N8
\INST_SPI_register|r_OUTDATA[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[5]~29_combout\ = (r_ADDRESS(2) & ((r_ADDRESS(0)) # (r_ADDRESS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(2),
	datab => r_ADDRESS(0),
	datad => r_ADDRESS(1),
	combout => \INST_SPI_register|r_OUTDATA[5]~29_combout\);

-- Location: IOIBUF_X41_Y6_N15
\i_DATA1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(21),
	o => \i_DATA1[21]~input_o\);

-- Location: FF_X36_Y12_N21
\INST_SPI_register|r_SPI_REG[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[21]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][21]~q\);

-- Location: LCCOMB_X37_Y16_N0
\INST_SPI_register|r_OUTDATA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[5]~28_combout\ = (r_ADDRESS(2) & (r_ADDRESS(1))) # (!r_ADDRESS(2) & ((r_ADDRESS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_ADDRESS(1),
	datac => r_ADDRESS(2),
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[5]~28_combout\);

-- Location: LCCOMB_X36_Y12_N20
\INST_SPI_register|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux5~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux5~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][21]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux5~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][21]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux5~1_combout\);

-- Location: IOIBUF_X39_Y29_N15
\i_DATA5[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(21),
	o => \i_DATA5[21]~input_o\);

-- Location: FF_X36_Y12_N31
\INST_SPI_register|r_SPI_REG[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[21]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][21]~q\);

-- Location: LCCOMB_X37_Y16_N6
\INST_SPI_register|r_OUTDATA[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[5]~27_combout\ = (r_ADDRESS(1)) # (!r_ADDRESS(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(2),
	datad => r_ADDRESS(1),
	combout => \INST_SPI_register|r_OUTDATA[5]~27_combout\);

-- Location: LCCOMB_X36_Y12_N30
\INST_SPI_register|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux5~2_combout\ = (\INST_SPI_register|Mux5~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][21]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux5~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][21]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][21]~q\,
	datab => \INST_SPI_register|Mux5~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][21]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y16_N12
\INST_SPI_register|r_OUTDATA[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[5]~30_combout\ = (r_ADDRESS(2)) # (!r_ADDRESS(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_ADDRESS(2),
	datad => r_ADDRESS(1),
	combout => \INST_SPI_register|r_OUTDATA[5]~30_combout\);

-- Location: FF_X35_Y12_N9
\INST_SPI_register|r_OUTDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[21]~3_combout\,
	asdata => \INST_SPI_register|Mux5~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(21));

-- Location: IOIBUF_X37_Y29_N22
\i_DATA3[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(20),
	o => \i_DATA3[20]~input_o\);

-- Location: LCCOMB_X35_Y12_N26
\INST_SPI_register|r_SPI_REG[2][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][20]~feeder_combout\ = \i_DATA3[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[20]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][20]~feeder_combout\);

-- Location: FF_X35_Y12_N27
\INST_SPI_register|r_SPI_REG[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][20]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][20]~q\);

-- Location: IOIBUF_X30_Y0_N22
\i_DATA2[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(20),
	o => \i_DATA2[20]~input_o\);

-- Location: LCCOMB_X35_Y12_N24
\INST_SPI_register|r_SPI_REG[1][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][20]~feeder_combout\ = \i_DATA2[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA2[20]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][20]~feeder_combout\);

-- Location: FF_X35_Y12_N25
\INST_SPI_register|r_SPI_REG[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][20]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][20]~q\);

-- Location: LCCOMB_X35_Y12_N14
\INST_SPI_register|r_OUTDATA[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[20]~6_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][20]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][20]~q\,
	datab => r_ADDRESS(0),
	datad => \INST_SPI_register|r_SPI_REG[1][20]~q\,
	combout => \INST_SPI_register|r_OUTDATA[20]~6_combout\);

-- Location: IOIBUF_X35_Y29_N22
\i_DATA4[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(20),
	o => \i_DATA4[20]~input_o\);

-- Location: LCCOMB_X35_Y14_N28
\INST_SPI_register|r_SPI_REG[3][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][20]~feeder_combout\ = \i_DATA4[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[20]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][20]~feeder_combout\);

-- Location: FF_X35_Y14_N29
\INST_SPI_register|r_SPI_REG[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][20]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][20]~q\);

-- Location: IOIBUF_X39_Y29_N29
\i_DATA5[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(20),
	o => \i_DATA5[20]~input_o\);

-- Location: FF_X35_Y14_N23
\INST_SPI_register|r_SPI_REG[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[20]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][20]~q\);

-- Location: IOIBUF_X30_Y0_N29
\i_DATA6[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(20),
	o => \i_DATA6[20]~input_o\);

-- Location: FF_X35_Y14_N7
\INST_SPI_register|r_SPI_REG[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[20]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][20]~q\);

-- Location: LCCOMB_X35_Y14_N6
\INST_SPI_register|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux6~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][20]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][20]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux6~0_combout\);

-- Location: IOIBUF_X35_Y29_N15
\i_DATA1[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(20),
	o => \i_DATA1[20]~input_o\);

-- Location: FF_X35_Y14_N25
\INST_SPI_register|r_SPI_REG[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[20]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][20]~q\);

-- Location: LCCOMB_X35_Y14_N24
\INST_SPI_register|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux6~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux6~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][20]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|Mux6~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][20]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux6~1_combout\);

-- Location: LCCOMB_X35_Y14_N22
\INST_SPI_register|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux6~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux6~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux6~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][20]~q\)) # (!\INST_SPI_register|Mux6~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][20]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][20]~q\,
	datad => \INST_SPI_register|Mux6~1_combout\,
	combout => \INST_SPI_register|Mux6~2_combout\);

-- Location: FF_X35_Y12_N15
\INST_SPI_register|r_OUTDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[20]~6_combout\,
	asdata => \INST_SPI_register|Mux6~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(20));

-- Location: IOIBUF_X35_Y0_N1
\i_DATA3[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(22),
	o => \i_DATA3[22]~input_o\);

-- Location: LCCOMB_X35_Y12_N30
\INST_SPI_register|r_SPI_REG[2][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][22]~feeder_combout\ = \i_DATA3[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[22]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][22]~feeder_combout\);

-- Location: FF_X35_Y12_N31
\INST_SPI_register|r_SPI_REG[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][22]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][22]~q\);

-- Location: IOIBUF_X41_Y5_N8
\i_DATA2[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(22),
	o => \i_DATA2[22]~input_o\);

-- Location: LCCOMB_X35_Y12_N16
\INST_SPI_register|r_SPI_REG[1][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][22]~feeder_combout\ = \i_DATA2[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[22]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][22]~feeder_combout\);

-- Location: FF_X35_Y12_N17
\INST_SPI_register|r_SPI_REG[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][22]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][22]~q\);

-- Location: LCCOMB_X35_Y12_N10
\INST_SPI_register|r_OUTDATA[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[22]~4_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][22]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][22]~q\,
	datab => r_ADDRESS(0),
	datad => \INST_SPI_register|r_SPI_REG[1][22]~q\,
	combout => \INST_SPI_register|r_OUTDATA[22]~4_combout\);

-- Location: IOIBUF_X41_Y8_N8
\i_DATA4[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(22),
	o => \i_DATA4[22]~input_o\);

-- Location: LCCOMB_X36_Y12_N16
\INST_SPI_register|r_SPI_REG[3][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][22]~feeder_combout\ = \i_DATA4[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[22]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][22]~feeder_combout\);

-- Location: FF_X36_Y12_N17
\INST_SPI_register|r_SPI_REG[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][22]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][22]~q\);

-- Location: IOIBUF_X41_Y6_N1
\i_DATA5[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(22),
	o => \i_DATA5[22]~input_o\);

-- Location: FF_X36_Y12_N11
\INST_SPI_register|r_SPI_REG[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[22]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][22]~q\);

-- Location: IOIBUF_X32_Y0_N1
\i_DATA6[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(22),
	o => \i_DATA6[22]~input_o\);

-- Location: FF_X36_Y12_N23
\INST_SPI_register|r_SPI_REG[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[22]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][22]~q\);

-- Location: LCCOMB_X36_Y12_N22
\INST_SPI_register|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux4~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][22]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][22]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux4~0_combout\);

-- Location: IOIBUF_X41_Y6_N22
\i_DATA1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(22),
	o => \i_DATA1[22]~input_o\);

-- Location: FF_X36_Y12_N25
\INST_SPI_register|r_SPI_REG[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[22]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][22]~q\);

-- Location: LCCOMB_X36_Y12_N24
\INST_SPI_register|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux4~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux4~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][22]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux4~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][22]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux4~1_combout\);

-- Location: LCCOMB_X36_Y12_N10
\INST_SPI_register|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux4~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux4~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux4~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][22]~q\)) # (!\INST_SPI_register|Mux4~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][22]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][22]~q\,
	datad => \INST_SPI_register|Mux4~1_combout\,
	combout => \INST_SPI_register|Mux4~2_combout\);

-- Location: FF_X35_Y12_N11
\INST_SPI_register|r_OUTDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[22]~4_combout\,
	asdata => \INST_SPI_register|Mux4~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(22));

-- Location: IOIBUF_X32_Y0_N8
\i_DATA3[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(23),
	o => \i_DATA3[23]~input_o\);

-- Location: LCCOMB_X35_Y12_N22
\INST_SPI_register|r_SPI_REG[2][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][23]~feeder_combout\ = \i_DATA3[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[23]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][23]~feeder_combout\);

-- Location: FF_X35_Y12_N23
\INST_SPI_register|r_SPI_REG[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][23]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][23]~q\);

-- Location: IOIBUF_X41_Y9_N22
\i_DATA2[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(23),
	o => \i_DATA2[23]~input_o\);

-- Location: LCCOMB_X35_Y12_N28
\INST_SPI_register|r_SPI_REG[1][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][23]~feeder_combout\ = \i_DATA2[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[23]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][23]~feeder_combout\);

-- Location: FF_X35_Y12_N29
\INST_SPI_register|r_SPI_REG[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][23]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][23]~q\);

-- Location: LCCOMB_X35_Y12_N4
\INST_SPI_register|r_OUTDATA[23]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[23]~5_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][23]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][23]~q\,
	datab => r_ADDRESS(0),
	datad => \INST_SPI_register|r_SPI_REG[1][23]~q\,
	combout => \INST_SPI_register|r_OUTDATA[23]~5_combout\);

-- Location: IOIBUF_X35_Y29_N29
\i_DATA4[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(23),
	o => \i_DATA4[23]~input_o\);

-- Location: LCCOMB_X35_Y14_N16
\INST_SPI_register|r_SPI_REG[3][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][23]~feeder_combout\ = \i_DATA4[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[23]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][23]~feeder_combout\);

-- Location: FF_X35_Y14_N17
\INST_SPI_register|r_SPI_REG[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][23]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][23]~q\);

-- Location: IOIBUF_X41_Y18_N22
\i_DATA5[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(23),
	o => \i_DATA5[23]~input_o\);

-- Location: FF_X35_Y14_N27
\INST_SPI_register|r_SPI_REG[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[23]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][23]~q\);

-- Location: IOIBUF_X41_Y22_N15
\i_DATA6[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(23),
	o => \i_DATA6[23]~input_o\);

-- Location: FF_X35_Y14_N19
\INST_SPI_register|r_SPI_REG[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[23]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][23]~q\);

-- Location: LCCOMB_X35_Y14_N18
\INST_SPI_register|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux3~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][23]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][23]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux3~0_combout\);

-- Location: IOIBUF_X39_Y29_N1
\i_DATA1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(23),
	o => \i_DATA1[23]~input_o\);

-- Location: FF_X35_Y14_N13
\INST_SPI_register|r_SPI_REG[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[23]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][23]~q\);

-- Location: LCCOMB_X35_Y14_N12
\INST_SPI_register|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux3~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux3~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][23]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|Mux3~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][23]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y14_N26
\INST_SPI_register|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux3~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux3~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux3~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][23]~q\)) # (!\INST_SPI_register|Mux3~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][23]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][23]~q\,
	datad => \INST_SPI_register|Mux3~1_combout\,
	combout => \INST_SPI_register|Mux3~2_combout\);

-- Location: FF_X35_Y12_N5
\INST_SPI_register|r_OUTDATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[23]~5_combout\,
	asdata => \INST_SPI_register|Mux3~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(23));

-- Location: LCCOMB_X35_Y12_N20
\Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (r_bitcount(1) & (((r_bitcount(0))))) # (!r_bitcount(1) & ((r_bitcount(0) & (\INST_SPI_register|r_OUTDATA\(22))) # (!r_bitcount(0) & ((\INST_SPI_register|r_OUTDATA\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(22),
	datab => \INST_SPI_register|r_OUTDATA\(23),
	datac => r_bitcount(1),
	datad => r_bitcount(0),
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X35_Y12_N2
\Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (r_bitcount(1) & ((\Mux4~15_combout\ & ((\INST_SPI_register|r_OUTDATA\(20)))) # (!\Mux4~15_combout\ & (\INST_SPI_register|r_OUTDATA\(21))))) # (!r_bitcount(1) & (((\Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(21),
	datab => r_bitcount(1),
	datac => \INST_SPI_register|r_OUTDATA\(20),
	datad => \Mux4~15_combout\,
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X31_Y14_N4
\Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (r_bitcount(3) & (!r_bitcount(2) & \Mux4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datac => r_bitcount(2),
	datad => \Mux4~16_combout\,
	combout => \Mux4~17_combout\);

-- Location: IOIBUF_X32_Y0_N15
\i_DATA3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(1),
	o => \i_DATA3[1]~input_o\);

-- Location: LCCOMB_X33_Y14_N30
\INST_SPI_register|r_SPI_REG[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][1]~feeder_combout\ = \i_DATA3[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[1]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][1]~feeder_combout\);

-- Location: FF_X33_Y14_N31
\INST_SPI_register|r_SPI_REG[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][1]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][1]~q\);

-- Location: IOIBUF_X0_Y26_N1
\i_DATA2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(1),
	o => \i_DATA2[1]~input_o\);

-- Location: LCCOMB_X32_Y14_N24
\INST_SPI_register|r_SPI_REG[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][1]~feeder_combout\ = \i_DATA2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[1]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][1]~feeder_combout\);

-- Location: FF_X32_Y14_N25
\INST_SPI_register|r_SPI_REG[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][1]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][1]~q\);

-- Location: LCCOMB_X33_Y14_N14
\INST_SPI_register|r_OUTDATA[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[1]~14_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][1]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][1]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][1]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[1]~14_combout\);

-- Location: IOIBUF_X41_Y18_N1
\i_DATA4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(1),
	o => \i_DATA4[1]~input_o\);

-- Location: LCCOMB_X40_Y14_N4
\INST_SPI_register|r_SPI_REG[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][1]~feeder_combout\ = \i_DATA4[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[1]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][1]~feeder_combout\);

-- Location: FF_X40_Y14_N5
\INST_SPI_register|r_SPI_REG[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][1]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][1]~q\);

-- Location: IOIBUF_X41_Y13_N15
\i_DATA5[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(1),
	o => \i_DATA5[1]~input_o\);

-- Location: FF_X40_Y14_N31
\INST_SPI_register|r_SPI_REG[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[1]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][1]~q\);

-- Location: IOIBUF_X41_Y22_N1
\i_DATA1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(1),
	o => \i_DATA1[1]~input_o\);

-- Location: FF_X40_Y14_N21
\INST_SPI_register|r_SPI_REG[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[1]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][1]~q\);

-- Location: IOIBUF_X41_Y13_N1
\i_DATA6[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(1),
	o => \i_DATA6[1]~input_o\);

-- Location: FF_X40_Y14_N11
\INST_SPI_register|r_SPI_REG[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[1]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][1]~q\);

-- Location: LCCOMB_X40_Y14_N10
\INST_SPI_register|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux25~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][1]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][1]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux25~0_combout\);

-- Location: LCCOMB_X40_Y14_N20
\INST_SPI_register|Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux25~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|Mux25~0_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][1]~q\)) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][1]~q\,
	datad => \INST_SPI_register|Mux25~0_combout\,
	combout => \INST_SPI_register|Mux25~1_combout\);

-- Location: LCCOMB_X40_Y14_N30
\INST_SPI_register|Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux25~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux25~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux25~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][1]~q\)) # (!\INST_SPI_register|Mux25~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][1]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][1]~q\,
	datad => \INST_SPI_register|Mux25~1_combout\,
	combout => \INST_SPI_register|Mux25~2_combout\);

-- Location: FF_X33_Y14_N15
\INST_SPI_register|r_OUTDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[1]~14_combout\,
	asdata => \INST_SPI_register|Mux25~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(1));

-- Location: IOIBUF_X21_Y0_N1
\i_DATA3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(5),
	o => \i_DATA3[5]~input_o\);

-- Location: LCCOMB_X36_Y14_N28
\INST_SPI_register|r_SPI_REG[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][5]~feeder_combout\ = \i_DATA3[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[5]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][5]~feeder_combout\);

-- Location: FF_X36_Y14_N29
\INST_SPI_register|r_SPI_REG[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][5]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][5]~q\);

-- Location: IOIBUF_X21_Y0_N8
\i_DATA2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(5),
	o => \i_DATA2[5]~input_o\);

-- Location: LCCOMB_X32_Y14_N20
\INST_SPI_register|r_SPI_REG[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][5]~feeder_combout\ = \i_DATA2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[5]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][5]~feeder_combout\);

-- Location: FF_X32_Y14_N21
\INST_SPI_register|r_SPI_REG[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][5]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][5]~q\);

-- Location: LCCOMB_X36_Y14_N16
\INST_SPI_register|r_OUTDATA[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[5]~11_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][5]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[2][5]~q\,
	datad => \INST_SPI_register|r_SPI_REG[1][5]~q\,
	combout => \INST_SPI_register|r_OUTDATA[5]~11_combout\);

-- Location: IOIBUF_X41_Y14_N15
\i_DATA4[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(5),
	o => \i_DATA4[5]~input_o\);

-- Location: LCCOMB_X40_Y14_N0
\INST_SPI_register|r_SPI_REG[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][5]~feeder_combout\ = \i_DATA4[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[5]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][5]~feeder_combout\);

-- Location: FF_X40_Y14_N1
\INST_SPI_register|r_SPI_REG[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][5]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][5]~q\);

-- Location: IOIBUF_X41_Y17_N8
\i_DATA5[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(5),
	o => \i_DATA5[5]~input_o\);

-- Location: FF_X40_Y14_N3
\INST_SPI_register|r_SPI_REG[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[5]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][5]~q\);

-- Location: IOIBUF_X41_Y21_N22
\i_DATA6[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(5),
	o => \i_DATA6[5]~input_o\);

-- Location: FF_X40_Y14_N27
\INST_SPI_register|r_SPI_REG[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[5]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][5]~q\);

-- Location: LCCOMB_X40_Y14_N26
\INST_SPI_register|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux21~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][5]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][5]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux21~0_combout\);

-- Location: IOIBUF_X41_Y13_N22
\i_DATA1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(5),
	o => \i_DATA1[5]~input_o\);

-- Location: FF_X40_Y14_N29
\INST_SPI_register|r_SPI_REG[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[5]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][5]~q\);

-- Location: LCCOMB_X40_Y14_N28
\INST_SPI_register|Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux21~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux21~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][5]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux21~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][5]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux21~1_combout\);

-- Location: LCCOMB_X40_Y14_N2
\INST_SPI_register|Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux21~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux21~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux21~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][5]~q\)) # (!\INST_SPI_register|Mux21~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][5]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][5]~q\,
	datad => \INST_SPI_register|Mux21~1_combout\,
	combout => \INST_SPI_register|Mux21~2_combout\);

-- Location: FF_X36_Y14_N17
\INST_SPI_register|r_OUTDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[5]~11_combout\,
	asdata => \INST_SPI_register|Mux21~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(5));

-- Location: IOIBUF_X28_Y0_N1
\i_DATA3[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(9),
	o => \i_DATA3[9]~input_o\);

-- Location: LCCOMB_X32_Y14_N26
\INST_SPI_register|r_SPI_REG[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][9]~feeder_combout\ = \i_DATA3[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[9]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][9]~feeder_combout\);

-- Location: FF_X32_Y14_N27
\INST_SPI_register|r_SPI_REG[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][9]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][9]~q\);

-- Location: IOIBUF_X41_Y14_N22
\i_DATA2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(9),
	o => \i_DATA2[9]~input_o\);

-- Location: LCCOMB_X33_Y14_N0
\INST_SPI_register|r_SPI_REG[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][9]~feeder_combout\ = \i_DATA2[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[9]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][9]~feeder_combout\);

-- Location: FF_X33_Y14_N1
\INST_SPI_register|r_SPI_REG[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][9]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][9]~q\);

-- Location: LCCOMB_X33_Y14_N28
\INST_SPI_register|r_OUTDATA[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[9]~12_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][9]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][9]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][9]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[9]~12_combout\);

-- Location: IOIBUF_X41_Y10_N8
\i_DATA4[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(9),
	o => \i_DATA4[9]~input_o\);

-- Location: LCCOMB_X40_Y14_N8
\INST_SPI_register|r_SPI_REG[3][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][9]~feeder_combout\ = \i_DATA4[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[9]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][9]~feeder_combout\);

-- Location: FF_X40_Y14_N9
\INST_SPI_register|r_SPI_REG[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][9]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][9]~q\);

-- Location: IOIBUF_X41_Y18_N8
\i_DATA5[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(9),
	o => \i_DATA5[9]~input_o\);

-- Location: FF_X40_Y14_N15
\INST_SPI_register|r_SPI_REG[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[9]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][9]~q\);

-- Location: IOIBUF_X41_Y10_N15
\i_DATA1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(9),
	o => \i_DATA1[9]~input_o\);

-- Location: FF_X40_Y14_N13
\INST_SPI_register|r_SPI_REG[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[9]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][9]~q\);

-- Location: IOIBUF_X41_Y3_N15
\i_DATA6[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(9),
	o => \i_DATA6[9]~input_o\);

-- Location: FF_X40_Y14_N19
\INST_SPI_register|r_SPI_REG[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[9]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][9]~q\);

-- Location: LCCOMB_X40_Y14_N18
\INST_SPI_register|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux17~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][9]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][9]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux17~0_combout\);

-- Location: LCCOMB_X40_Y14_N12
\INST_SPI_register|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux17~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|Mux17~0_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][9]~q\)) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][9]~q\,
	datad => \INST_SPI_register|Mux17~0_combout\,
	combout => \INST_SPI_register|Mux17~1_combout\);

-- Location: LCCOMB_X40_Y14_N14
\INST_SPI_register|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux17~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux17~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux17~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][9]~q\)) # (!\INST_SPI_register|Mux17~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][9]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][9]~q\,
	datad => \INST_SPI_register|Mux17~1_combout\,
	combout => \INST_SPI_register|Mux17~2_combout\);

-- Location: FF_X33_Y14_N29
\INST_SPI_register|r_OUTDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[9]~12_combout\,
	asdata => \INST_SPI_register|Mux17~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(9));

-- Location: IOIBUF_X41_Y19_N22
\i_DATA2[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(13),
	o => \i_DATA2[13]~input_o\);

-- Location: LCCOMB_X37_Y14_N22
\INST_SPI_register|r_SPI_REG[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][13]~feeder_combout\ = \i_DATA2[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[13]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][13]~feeder_combout\);

-- Location: FF_X37_Y14_N23
\INST_SPI_register|r_SPI_REG[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][13]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][13]~q\);

-- Location: IOIBUF_X30_Y0_N8
\i_DATA3[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(13),
	o => \i_DATA3[13]~input_o\);

-- Location: LCCOMB_X37_Y14_N20
\INST_SPI_register|r_SPI_REG[2][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][13]~feeder_combout\ = \i_DATA3[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[13]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][13]~feeder_combout\);

-- Location: FF_X37_Y14_N21
\INST_SPI_register|r_SPI_REG[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][13]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][13]~q\);

-- Location: LCCOMB_X37_Y14_N8
\INST_SPI_register|r_OUTDATA[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[13]~13_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][13]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][13]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][13]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[13]~13_combout\);

-- Location: IOIBUF_X41_Y19_N1
\i_DATA6[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(13),
	o => \i_DATA6[13]~input_o\);

-- Location: FF_X38_Y16_N3
\INST_SPI_register|r_SPI_REG[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[13]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][13]~q\);

-- Location: LCCOMB_X38_Y16_N2
\INST_SPI_register|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux13~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][13]~q\,
	combout => \INST_SPI_register|Mux13~0_combout\);

-- Location: IOIBUF_X41_Y20_N1
\i_DATA1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(13),
	o => \i_DATA1[13]~input_o\);

-- Location: FF_X38_Y16_N25
\INST_SPI_register|r_SPI_REG[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[13]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][13]~q\);

-- Location: LCCOMB_X38_Y16_N24
\INST_SPI_register|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux13~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux13~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][13]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux13~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][13]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux13~1_combout\);

-- Location: IOIBUF_X41_Y21_N8
\i_DATA5[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(13),
	o => \i_DATA5[13]~input_o\);

-- Location: FF_X38_Y16_N31
\INST_SPI_register|r_SPI_REG[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[13]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][13]~q\);

-- Location: IOIBUF_X41_Y25_N1
\i_DATA4[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(13),
	o => \i_DATA4[13]~input_o\);

-- Location: FF_X38_Y16_N1
\INST_SPI_register|r_SPI_REG[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA4[13]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][13]~q\);

-- Location: LCCOMB_X38_Y16_N30
\INST_SPI_register|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux13~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (\INST_SPI_register|Mux13~1_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux13~1_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[3][13]~q\))) # (!\INST_SPI_register|Mux13~1_combout\ & (\INST_SPI_register|r_SPI_REG[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|Mux13~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][13]~q\,
	datad => \INST_SPI_register|r_SPI_REG[3][13]~q\,
	combout => \INST_SPI_register|Mux13~2_combout\);

-- Location: FF_X37_Y14_N9
\INST_SPI_register|r_OUTDATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[13]~13_combout\,
	asdata => \INST_SPI_register|Mux13~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(13));

-- Location: LCCOMB_X33_Y14_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (r_bitcount(3) & (((r_bitcount(2))))) # (!r_bitcount(3) & ((r_bitcount(2) & (\INST_SPI_register|r_OUTDATA\(9))) # (!r_bitcount(2) & ((\INST_SPI_register|r_OUTDATA\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datab => \INST_SPI_register|r_OUTDATA\(9),
	datac => r_bitcount(2),
	datad => \INST_SPI_register|r_OUTDATA\(13),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y14_N22
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (r_bitcount(3) & ((\Mux4~0_combout\ & (\INST_SPI_register|r_OUTDATA\(1))) # (!\Mux4~0_combout\ & ((\INST_SPI_register|r_OUTDATA\(5)))))) # (!r_bitcount(3) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datab => \INST_SPI_register|r_OUTDATA\(1),
	datac => \INST_SPI_register|r_OUTDATA\(5),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X41_Y22_N22
\i_DATA2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(0),
	o => \i_DATA2[0]~input_o\);

-- Location: LCCOMB_X37_Y14_N26
\INST_SPI_register|r_SPI_REG[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][0]~feeder_combout\ = \i_DATA2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[0]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][0]~feeder_combout\);

-- Location: FF_X37_Y14_N27
\INST_SPI_register|r_SPI_REG[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][0]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][0]~q\);

-- Location: IOIBUF_X41_Y10_N22
\i_DATA3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(0),
	o => \i_DATA3[0]~input_o\);

-- Location: LCCOMB_X37_Y14_N28
\INST_SPI_register|r_SPI_REG[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][0]~feeder_combout\ = \i_DATA3[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[0]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][0]~feeder_combout\);

-- Location: FF_X37_Y14_N29
\INST_SPI_register|r_SPI_REG[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][0]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][0]~q\);

-- Location: LCCOMB_X37_Y14_N0
\INST_SPI_register|r_OUTDATA[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[0]~26_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][0]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][0]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][0]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[0]~26_combout\);

-- Location: IOIBUF_X41_Y12_N8
\i_DATA4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(0),
	o => \i_DATA4[0]~input_o\);

-- Location: LCCOMB_X37_Y12_N14
\INST_SPI_register|r_SPI_REG[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][0]~feeder_combout\ = \i_DATA4[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[0]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][0]~feeder_combout\);

-- Location: FF_X37_Y12_N15
\INST_SPI_register|r_SPI_REG[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][0]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][0]~q\);

-- Location: IOIBUF_X41_Y8_N1
\i_DATA5[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(0),
	o => \i_DATA5[0]~input_o\);

-- Location: FF_X37_Y12_N9
\INST_SPI_register|r_SPI_REG[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[0]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][0]~q\);

-- Location: IOIBUF_X0_Y25_N1
\i_DATA1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(0),
	o => \i_DATA1[0]~input_o\);

-- Location: FF_X37_Y12_N19
\INST_SPI_register|r_SPI_REG[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[0]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][0]~q\);

-- Location: IOIBUF_X41_Y7_N8
\i_DATA6[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(0),
	o => \i_DATA6[0]~input_o\);

-- Location: FF_X37_Y12_N17
\INST_SPI_register|r_SPI_REG[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[0]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][0]~q\);

-- Location: LCCOMB_X37_Y12_N16
\INST_SPI_register|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux26~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][0]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][0]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux26~0_combout\);

-- Location: LCCOMB_X37_Y12_N18
\INST_SPI_register|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux26~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|Mux26~0_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][0]~q\)) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][0]~q\,
	datad => \INST_SPI_register|Mux26~0_combout\,
	combout => \INST_SPI_register|Mux26~1_combout\);

-- Location: LCCOMB_X37_Y12_N8
\INST_SPI_register|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux26~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux26~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux26~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][0]~q\)) # (!\INST_SPI_register|Mux26~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][0]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][0]~q\,
	datad => \INST_SPI_register|Mux26~1_combout\,
	combout => \INST_SPI_register|Mux26~2_combout\);

-- Location: FF_X37_Y14_N1
\INST_SPI_register|r_OUTDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[0]~26_combout\,
	asdata => \INST_SPI_register|Mux26~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(0));

-- Location: IOIBUF_X28_Y29_N1
\i_DATA3[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(8),
	o => \i_DATA3[8]~input_o\);

-- Location: LCCOMB_X32_Y14_N12
\INST_SPI_register|r_SPI_REG[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][8]~feeder_combout\ = \i_DATA3[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[8]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][8]~feeder_combout\);

-- Location: FF_X32_Y14_N13
\INST_SPI_register|r_SPI_REG[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][8]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][8]~q\);

-- Location: IOIBUF_X26_Y0_N22
\i_DATA2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(8),
	o => \i_DATA2[8]~input_o\);

-- Location: LCCOMB_X33_Y14_N8
\INST_SPI_register|r_SPI_REG[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][8]~feeder_combout\ = \i_DATA2[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA2[8]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][8]~feeder_combout\);

-- Location: FF_X33_Y14_N9
\INST_SPI_register|r_SPI_REG[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][8]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][8]~q\);

-- Location: LCCOMB_X33_Y14_N16
\INST_SPI_register|r_OUTDATA[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[8]~23_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][8]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][8]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][8]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[8]~23_combout\);

-- Location: IOIBUF_X41_Y25_N15
\i_DATA4[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(8),
	o => \i_DATA4[8]~input_o\);

-- Location: LCCOMB_X37_Y16_N4
\INST_SPI_register|r_SPI_REG[3][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][8]~feeder_combout\ = \i_DATA4[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[8]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][8]~feeder_combout\);

-- Location: FF_X37_Y16_N5
\INST_SPI_register|r_SPI_REG[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][8]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][8]~q\);

-- Location: IOIBUF_X41_Y24_N15
\i_DATA5[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(8),
	o => \i_DATA5[8]~input_o\);

-- Location: FF_X37_Y16_N29
\INST_SPI_register|r_SPI_REG[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[8]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][8]~q\);

-- Location: IOIBUF_X41_Y20_N15
\i_DATA6[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(8),
	o => \i_DATA6[8]~input_o\);

-- Location: FF_X37_Y16_N11
\INST_SPI_register|r_SPI_REG[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[8]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][8]~q\);

-- Location: LCCOMB_X37_Y16_N10
\INST_SPI_register|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux18~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][8]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][8]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux18~0_combout\);

-- Location: IOIBUF_X41_Y26_N22
\i_DATA1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(8),
	o => \i_DATA1[8]~input_o\);

-- Location: FF_X37_Y16_N19
\INST_SPI_register|r_SPI_REG[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[8]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][8]~q\);

-- Location: LCCOMB_X37_Y16_N18
\INST_SPI_register|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux18~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux18~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][8]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux18~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][8]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux18~1_combout\);

-- Location: LCCOMB_X37_Y16_N28
\INST_SPI_register|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux18~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux18~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux18~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][8]~q\)) # (!\INST_SPI_register|Mux18~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][8]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][8]~q\,
	datad => \INST_SPI_register|Mux18~1_combout\,
	combout => \INST_SPI_register|Mux18~2_combout\);

-- Location: FF_X33_Y14_N17
\INST_SPI_register|r_OUTDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[8]~23_combout\,
	asdata => \INST_SPI_register|Mux18~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(8));

-- Location: IOIBUF_X41_Y3_N22
\i_DATA2[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(12),
	o => \i_DATA2[12]~input_o\);

-- Location: LCCOMB_X37_Y14_N30
\INST_SPI_register|r_SPI_REG[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][12]~feeder_combout\ = \i_DATA2[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA2[12]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][12]~feeder_combout\);

-- Location: FF_X37_Y14_N31
\INST_SPI_register|r_SPI_REG[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][12]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][12]~q\);

-- Location: IOIBUF_X41_Y26_N1
\i_DATA3[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(12),
	o => \i_DATA3[12]~input_o\);

-- Location: LCCOMB_X37_Y14_N24
\INST_SPI_register|r_SPI_REG[2][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][12]~feeder_combout\ = \i_DATA3[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[12]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][12]~feeder_combout\);

-- Location: FF_X37_Y14_N25
\INST_SPI_register|r_SPI_REG[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][12]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][12]~q\);

-- Location: LCCOMB_X37_Y14_N14
\INST_SPI_register|r_OUTDATA[12]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[12]~25_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][12]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][12]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][12]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[12]~25_combout\);

-- Location: IOIBUF_X41_Y2_N15
\i_DATA4[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(12),
	o => \i_DATA4[12]~input_o\);

-- Location: LCCOMB_X37_Y12_N26
\INST_SPI_register|r_SPI_REG[3][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][12]~feeder_combout\ = \i_DATA4[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[12]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][12]~feeder_combout\);

-- Location: FF_X37_Y12_N27
\INST_SPI_register|r_SPI_REG[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][12]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][12]~q\);

-- Location: IOIBUF_X41_Y12_N22
\i_DATA5[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(12),
	o => \i_DATA5[12]~input_o\);

-- Location: FF_X37_Y12_N21
\INST_SPI_register|r_SPI_REG[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[12]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][12]~q\);

-- Location: IOIBUF_X41_Y7_N1
\i_DATA1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(12),
	o => \i_DATA1[12]~input_o\);

-- Location: FF_X37_Y12_N7
\INST_SPI_register|r_SPI_REG[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[12]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][12]~q\);

-- Location: IOIBUF_X37_Y29_N15
\i_DATA6[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(12),
	o => \i_DATA6[12]~input_o\);

-- Location: FF_X37_Y12_N25
\INST_SPI_register|r_SPI_REG[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[12]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][12]~q\);

-- Location: LCCOMB_X37_Y12_N24
\INST_SPI_register|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux14~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][12]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][12]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux14~0_combout\);

-- Location: LCCOMB_X37_Y12_N6
\INST_SPI_register|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux14~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|Mux14~0_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][12]~q\)) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][12]~q\,
	datad => \INST_SPI_register|Mux14~0_combout\,
	combout => \INST_SPI_register|Mux14~1_combout\);

-- Location: LCCOMB_X37_Y12_N20
\INST_SPI_register|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux14~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux14~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux14~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][12]~q\)) # (!\INST_SPI_register|Mux14~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][12]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][12]~q\,
	datad => \INST_SPI_register|Mux14~1_combout\,
	combout => \INST_SPI_register|Mux14~2_combout\);

-- Location: FF_X37_Y14_N15
\INST_SPI_register|r_OUTDATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[12]~25_combout\,
	asdata => \INST_SPI_register|Mux14~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(12));

-- Location: IOIBUF_X35_Y0_N29
\i_DATA3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(4),
	o => \i_DATA3[4]~input_o\);

-- Location: LCCOMB_X35_Y14_N20
\INST_SPI_register|r_SPI_REG[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][4]~feeder_combout\ = \i_DATA3[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[4]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][4]~feeder_combout\);

-- Location: FF_X35_Y14_N21
\INST_SPI_register|r_SPI_REG[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][4]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][4]~q\);

-- Location: IOIBUF_X37_Y29_N1
\i_DATA2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(4),
	o => \i_DATA2[4]~input_o\);

-- Location: LCCOMB_X33_Y14_N2
\INST_SPI_register|r_SPI_REG[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][4]~feeder_combout\ = \i_DATA2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[4]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][4]~feeder_combout\);

-- Location: FF_X33_Y14_N3
\INST_SPI_register|r_SPI_REG[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][4]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][4]~q\);

-- Location: LCCOMB_X33_Y14_N6
\INST_SPI_register|r_OUTDATA[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[4]~24_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][4]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][4]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][4]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[4]~24_combout\);

-- Location: IOIBUF_X41_Y26_N8
\i_DATA4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(4),
	o => \i_DATA4[4]~input_o\);

-- Location: LCCOMB_X38_Y12_N4
\INST_SPI_register|r_SPI_REG[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][4]~feeder_combout\ = \i_DATA4[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[4]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][4]~feeder_combout\);

-- Location: FF_X38_Y12_N5
\INST_SPI_register|r_SPI_REG[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][4]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][4]~q\);

-- Location: IOIBUF_X41_Y12_N15
\i_DATA5[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(4),
	o => \i_DATA5[4]~input_o\);

-- Location: FF_X37_Y12_N29
\INST_SPI_register|r_SPI_REG[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[4]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][4]~q\);

-- Location: IOIBUF_X21_Y0_N15
\i_DATA6[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(4),
	o => \i_DATA6[4]~input_o\);

-- Location: LCCOMB_X36_Y12_N8
\INST_SPI_register|r_SPI_REG[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[5][4]~feeder_combout\ = \i_DATA6[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA6[4]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[5][4]~feeder_combout\);

-- Location: FF_X36_Y12_N9
\INST_SPI_register|r_SPI_REG[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[5][4]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][4]~q\);

-- Location: LCCOMB_X37_Y12_N4
\INST_SPI_register|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux22~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][4]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[5][4]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux22~0_combout\);

-- Location: IOIBUF_X21_Y0_N22
\i_DATA1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(4),
	o => \i_DATA1[4]~input_o\);

-- Location: FF_X37_Y12_N11
\INST_SPI_register|r_SPI_REG[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[4]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][4]~q\);

-- Location: LCCOMB_X37_Y12_N10
\INST_SPI_register|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux22~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux22~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][4]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux22~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][4]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux22~1_combout\);

-- Location: LCCOMB_X37_Y12_N28
\INST_SPI_register|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux22~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux22~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux22~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][4]~q\)) # (!\INST_SPI_register|Mux22~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][4]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][4]~q\,
	datad => \INST_SPI_register|Mux22~1_combout\,
	combout => \INST_SPI_register|Mux22~2_combout\);

-- Location: FF_X33_Y14_N7
\INST_SPI_register|r_OUTDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[4]~24_combout\,
	asdata => \INST_SPI_register|Mux22~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(4));

-- Location: LCCOMB_X33_Y14_N18
\Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (r_bitcount(3) & (((r_bitcount(2)) # (\INST_SPI_register|r_OUTDATA\(4))))) # (!r_bitcount(3) & (\INST_SPI_register|r_OUTDATA\(12) & (!r_bitcount(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datab => \INST_SPI_register|r_OUTDATA\(12),
	datac => r_bitcount(2),
	datad => \INST_SPI_register|r_OUTDATA\(4),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X33_Y14_N24
\Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (r_bitcount(2) & ((\Mux4~7_combout\ & (\INST_SPI_register|r_OUTDATA\(0))) # (!\Mux4~7_combout\ & ((\INST_SPI_register|r_OUTDATA\(8)))))) # (!r_bitcount(2) & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(0),
	datab => \INST_SPI_register|r_OUTDATA\(8),
	datac => r_bitcount(2),
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: IOIBUF_X28_Y0_N15
\i_DATA2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(2),
	o => \i_DATA2[2]~input_o\);

-- Location: LCCOMB_X32_Y14_N30
\INST_SPI_register|r_SPI_REG[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][2]~feeder_combout\ = \i_DATA2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[2]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][2]~feeder_combout\);

-- Location: FF_X32_Y14_N31
\INST_SPI_register|r_SPI_REG[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][2]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][2]~q\);

-- Location: IOIBUF_X0_Y25_N15
\i_DATA3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(2),
	o => \i_DATA3[2]~input_o\);

-- Location: FF_X31_Y14_N23
\INST_SPI_register|r_SPI_REG[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA3[2]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][2]~q\);

-- Location: LCCOMB_X32_Y14_N6
\INST_SPI_register|r_OUTDATA[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[2]~18_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][2]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][2]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][2]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[2]~18_combout\);

-- Location: IOIBUF_X41_Y14_N1
\i_DATA4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(2),
	o => \i_DATA4[2]~input_o\);

-- Location: LCCOMB_X40_Y14_N16
\INST_SPI_register|r_SPI_REG[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][2]~feeder_combout\ = \i_DATA4[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[2]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][2]~feeder_combout\);

-- Location: FF_X40_Y14_N17
\INST_SPI_register|r_SPI_REG[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][2]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][2]~q\);

-- Location: IOIBUF_X41_Y10_N1
\i_DATA5[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(2),
	o => \i_DATA5[2]~input_o\);

-- Location: FF_X40_Y14_N23
\INST_SPI_register|r_SPI_REG[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[2]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][2]~q\);

-- Location: IOIBUF_X41_Y14_N8
\i_DATA1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(2),
	o => \i_DATA1[2]~input_o\);

-- Location: FF_X40_Y14_N25
\INST_SPI_register|r_SPI_REG[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[2]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][2]~q\);

-- Location: IOIBUF_X41_Y26_N15
\i_DATA6[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(2),
	o => \i_DATA6[2]~input_o\);

-- Location: FF_X40_Y14_N7
\INST_SPI_register|r_SPI_REG[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[2]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][2]~q\);

-- Location: LCCOMB_X40_Y14_N6
\INST_SPI_register|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux24~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][2]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][2]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux24~0_combout\);

-- Location: LCCOMB_X40_Y14_N24
\INST_SPI_register|Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux24~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|Mux24~0_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][2]~q\)) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][2]~q\,
	datad => \INST_SPI_register|Mux24~0_combout\,
	combout => \INST_SPI_register|Mux24~1_combout\);

-- Location: LCCOMB_X40_Y14_N22
\INST_SPI_register|Mux24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux24~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux24~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux24~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][2]~q\)) # (!\INST_SPI_register|Mux24~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][2]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][2]~q\,
	datad => \INST_SPI_register|Mux24~1_combout\,
	combout => \INST_SPI_register|Mux24~2_combout\);

-- Location: FF_X32_Y14_N7
\INST_SPI_register|r_OUTDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[2]~18_combout\,
	asdata => \INST_SPI_register|Mux24~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(2));

-- Location: IOIBUF_X30_Y0_N15
\i_DATA3[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(10),
	o => \i_DATA3[10]~input_o\);

-- Location: LCCOMB_X31_Y14_N14
\INST_SPI_register|r_SPI_REG[2][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][10]~feeder_combout\ = \i_DATA3[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[10]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][10]~feeder_combout\);

-- Location: FF_X31_Y14_N15
\INST_SPI_register|r_SPI_REG[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][10]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][10]~q\);

-- Location: IOIBUF_X32_Y29_N29
\i_DATA2[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(10),
	o => \i_DATA2[10]~input_o\);

-- Location: LCCOMB_X32_Y14_N18
\INST_SPI_register|r_SPI_REG[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][10]~feeder_combout\ = \i_DATA2[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[10]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][10]~feeder_combout\);

-- Location: FF_X32_Y14_N19
\INST_SPI_register|r_SPI_REG[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][10]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][10]~q\);

-- Location: LCCOMB_X32_Y14_N8
\INST_SPI_register|r_OUTDATA[10]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[10]~15_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][10]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][10]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][10]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[10]~15_combout\);

-- Location: IOIBUF_X0_Y22_N15
\i_DATA4[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(10),
	o => \i_DATA4[10]~input_o\);

-- Location: LCCOMB_X32_Y16_N28
\INST_SPI_register|r_SPI_REG[3][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][10]~feeder_combout\ = \i_DATA4[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[10]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][10]~feeder_combout\);

-- Location: FF_X32_Y16_N29
\INST_SPI_register|r_SPI_REG[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][10]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][10]~q\);

-- Location: IOIBUF_X32_Y29_N1
\i_DATA5[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(10),
	o => \i_DATA5[10]~input_o\);

-- Location: FF_X33_Y16_N1
\INST_SPI_register|r_SPI_REG[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[10]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][10]~q\);

-- Location: IOIBUF_X26_Y0_N29
\i_DATA6[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(10),
	o => \i_DATA6[10]~input_o\);

-- Location: LCCOMB_X32_Y16_N14
\INST_SPI_register|r_SPI_REG[5][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[5][10]~feeder_combout\ = \i_DATA6[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA6[10]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[5][10]~feeder_combout\);

-- Location: FF_X32_Y16_N15
\INST_SPI_register|r_SPI_REG[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[5][10]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][10]~q\);

-- Location: LCCOMB_X33_Y16_N28
\INST_SPI_register|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux16~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][10]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[5][10]~q\,
	datac => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux16~0_combout\);

-- Location: IOIBUF_X32_Y29_N22
\i_DATA1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(10),
	o => \i_DATA1[10]~input_o\);

-- Location: FF_X33_Y16_N19
\INST_SPI_register|r_SPI_REG[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[10]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][10]~q\);

-- Location: LCCOMB_X33_Y16_N18
\INST_SPI_register|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux16~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux16~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][10]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux16~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][10]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux16~1_combout\);

-- Location: LCCOMB_X33_Y16_N0
\INST_SPI_register|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux16~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux16~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux16~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][10]~q\)) # (!\INST_SPI_register|Mux16~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][10]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][10]~q\,
	datad => \INST_SPI_register|Mux16~1_combout\,
	combout => \INST_SPI_register|Mux16~2_combout\);

-- Location: FF_X32_Y14_N9
\INST_SPI_register|r_OUTDATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[10]~15_combout\,
	asdata => \INST_SPI_register|Mux16~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(10));

-- Location: IOIBUF_X28_Y29_N22
\i_DATA3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(6),
	o => \i_DATA3[6]~input_o\);

-- Location: LCCOMB_X32_Y14_N22
\INST_SPI_register|r_SPI_REG[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][6]~feeder_combout\ = \i_DATA3[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[6]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][6]~feeder_combout\);

-- Location: FF_X32_Y14_N23
\INST_SPI_register|r_SPI_REG[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][6]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][6]~q\);

-- Location: IOIBUF_X28_Y0_N29
\i_DATA2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(6),
	o => \i_DATA2[6]~input_o\);

-- Location: LCCOMB_X32_Y14_N0
\INST_SPI_register|r_SPI_REG[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][6]~feeder_combout\ = \i_DATA2[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[6]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][6]~feeder_combout\);

-- Location: FF_X32_Y14_N1
\INST_SPI_register|r_SPI_REG[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][6]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][6]~q\);

-- Location: LCCOMB_X32_Y14_N10
\INST_SPI_register|r_OUTDATA[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[6]~16_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][6]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][6]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][6]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[6]~16_combout\);

-- Location: IOIBUF_X32_Y29_N15
\i_DATA4[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(6),
	o => \i_DATA4[6]~input_o\);

-- Location: LCCOMB_X33_Y16_N6
\INST_SPI_register|r_SPI_REG[3][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][6]~feeder_combout\ = \i_DATA4[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[6]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][6]~feeder_combout\);

-- Location: FF_X33_Y16_N7
\INST_SPI_register|r_SPI_REG[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][6]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][6]~q\);

-- Location: IOIBUF_X30_Y29_N8
\i_DATA6[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(6),
	o => \i_DATA6[6]~input_o\);

-- Location: FF_X33_Y16_N5
\INST_SPI_register|r_SPI_REG[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[6]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][6]~q\);

-- Location: LCCOMB_X33_Y16_N4
\INST_SPI_register|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux20~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][6]~q\,
	combout => \INST_SPI_register|Mux20~0_combout\);

-- Location: IOIBUF_X30_Y29_N15
\i_DATA1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(6),
	o => \i_DATA1[6]~input_o\);

-- Location: FF_X33_Y16_N3
\INST_SPI_register|r_SPI_REG[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[6]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][6]~q\);

-- Location: LCCOMB_X33_Y16_N2
\INST_SPI_register|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux20~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux20~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][6]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux20~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][6]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux20~1_combout\);

-- Location: IOIBUF_X30_Y29_N22
\i_DATA5[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(6),
	o => \i_DATA5[6]~input_o\);

-- Location: FF_X33_Y16_N25
\INST_SPI_register|r_SPI_REG[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[6]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][6]~q\);

-- Location: LCCOMB_X33_Y16_N24
\INST_SPI_register|Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux20~2_combout\ = (\INST_SPI_register|Mux20~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][6]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux20~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][6]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][6]~q\,
	datab => \INST_SPI_register|Mux20~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][6]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux20~2_combout\);

-- Location: FF_X32_Y14_N11
\INST_SPI_register|r_OUTDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[6]~16_combout\,
	asdata => \INST_SPI_register|Mux20~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(6));

-- Location: IOIBUF_X30_Y29_N1
\i_DATA2[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(14),
	o => \i_DATA2[14]~input_o\);

-- Location: LCCOMB_X31_Y14_N12
\INST_SPI_register|r_SPI_REG[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][14]~feeder_combout\ = \i_DATA2[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[14]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][14]~feeder_combout\);

-- Location: FF_X31_Y14_N13
\INST_SPI_register|r_SPI_REG[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][14]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][14]~q\);

-- Location: IOIBUF_X26_Y29_N29
\i_DATA3[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(14),
	o => \i_DATA3[14]~input_o\);

-- Location: LCCOMB_X32_Y14_N16
\INST_SPI_register|r_SPI_REG[2][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][14]~feeder_combout\ = \i_DATA3[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[14]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][14]~feeder_combout\);

-- Location: FF_X32_Y14_N17
\INST_SPI_register|r_SPI_REG[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][14]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][14]~q\);

-- Location: LCCOMB_X32_Y14_N28
\INST_SPI_register|r_OUTDATA[14]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[14]~17_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][14]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][14]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][14]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[14]~17_combout\);

-- Location: IOIBUF_X35_Y29_N8
\i_DATA4[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(14),
	o => \i_DATA4[14]~input_o\);

-- Location: LCCOMB_X33_Y16_N22
\INST_SPI_register|r_SPI_REG[3][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][14]~feeder_combout\ = \i_DATA4[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[14]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][14]~feeder_combout\);

-- Location: FF_X33_Y16_N23
\INST_SPI_register|r_SPI_REG[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][14]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][14]~q\);

-- Location: IOIBUF_X30_Y29_N29
\i_DATA6[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(14),
	o => \i_DATA6[14]~input_o\);

-- Location: FF_X33_Y16_N13
\INST_SPI_register|r_SPI_REG[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[14]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][14]~q\);

-- Location: LCCOMB_X33_Y16_N12
\INST_SPI_register|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux12~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][14]~q\,
	combout => \INST_SPI_register|Mux12~0_combout\);

-- Location: IOIBUF_X26_Y29_N8
\i_DATA1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(14),
	o => \i_DATA1[14]~input_o\);

-- Location: FF_X33_Y16_N15
\INST_SPI_register|r_SPI_REG[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[14]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][14]~q\);

-- Location: LCCOMB_X33_Y16_N14
\INST_SPI_register|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux12~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux12~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][14]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux12~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][14]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux12~1_combout\);

-- Location: IOIBUF_X41_Y27_N8
\i_DATA5[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(14),
	o => \i_DATA5[14]~input_o\);

-- Location: FF_X33_Y16_N21
\INST_SPI_register|r_SPI_REG[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[14]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][14]~q\);

-- Location: LCCOMB_X33_Y16_N20
\INST_SPI_register|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux12~2_combout\ = (\INST_SPI_register|Mux12~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][14]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux12~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][14]~q\ 
-- & !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][14]~q\,
	datab => \INST_SPI_register|Mux12~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][14]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux12~2_combout\);

-- Location: FF_X32_Y14_N29
\INST_SPI_register|r_OUTDATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[14]~17_combout\,
	asdata => \INST_SPI_register|Mux12~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(14));

-- Location: LCCOMB_X32_Y14_N4
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (r_bitcount(3) & ((\INST_SPI_register|r_OUTDATA\(6)) # ((r_bitcount(2))))) # (!r_bitcount(3) & (((\INST_SPI_register|r_OUTDATA\(14) & !r_bitcount(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(6),
	datab => \INST_SPI_register|r_OUTDATA\(14),
	datac => r_bitcount(3),
	datad => r_bitcount(2),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X32_Y14_N14
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\INST_SPI_register|r_OUTDATA\(2)) # ((!r_bitcount(2))))) # (!\Mux4~2_combout\ & (((\INST_SPI_register|r_OUTDATA\(10) & r_bitcount(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(2),
	datab => \INST_SPI_register|r_OUTDATA\(10),
	datac => \Mux4~2_combout\,
	datad => r_bitcount(2),
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X32_Y29_N8
\i_DATA2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(3),
	o => \i_DATA2[3]~input_o\);

-- Location: LCCOMB_X32_Y16_N10
\INST_SPI_register|r_SPI_REG[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][3]~feeder_combout\ = \i_DATA2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[3]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][3]~feeder_combout\);

-- Location: FF_X32_Y16_N11
\INST_SPI_register|r_SPI_REG[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][3]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][3]~q\);

-- Location: IOIBUF_X23_Y29_N22
\i_DATA3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(3),
	o => \i_DATA3[3]~input_o\);

-- Location: LCCOMB_X31_Y16_N24
\INST_SPI_register|r_SPI_REG[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][3]~feeder_combout\ = \i_DATA3[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[3]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][3]~feeder_combout\);

-- Location: FF_X31_Y16_N25
\INST_SPI_register|r_SPI_REG[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][3]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][3]~q\);

-- Location: LCCOMB_X32_Y16_N22
\INST_SPI_register|r_OUTDATA[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[3]~22_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][3]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][3]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][3]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[3]~22_combout\);

-- Location: IOIBUF_X41_Y23_N22
\i_DATA4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(3),
	o => \i_DATA4[3]~input_o\);

-- Location: LCCOMB_X38_Y16_N22
\INST_SPI_register|r_SPI_REG[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][3]~feeder_combout\ = \i_DATA4[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[3]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][3]~feeder_combout\);

-- Location: FF_X38_Y16_N23
\INST_SPI_register|r_SPI_REG[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][3]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][3]~q\);

-- Location: IOIBUF_X41_Y19_N8
\i_DATA5[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(3),
	o => \i_DATA5[3]~input_o\);

-- Location: FF_X37_Y16_N15
\INST_SPI_register|r_SPI_REG[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[3]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][3]~q\);

-- Location: IOIBUF_X41_Y27_N15
\i_DATA6[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(3),
	o => \i_DATA6[3]~input_o\);

-- Location: FF_X37_Y16_N27
\INST_SPI_register|r_SPI_REG[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[3]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][3]~q\);

-- Location: LCCOMB_X37_Y16_N26
\INST_SPI_register|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux23~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][3]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][3]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux23~0_combout\);

-- Location: IOIBUF_X41_Y20_N22
\i_DATA1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(3),
	o => \i_DATA1[3]~input_o\);

-- Location: FF_X37_Y16_N3
\INST_SPI_register|r_SPI_REG[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[3]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][3]~q\);

-- Location: LCCOMB_X37_Y16_N2
\INST_SPI_register|Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux23~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux23~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][3]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux23~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][3]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux23~1_combout\);

-- Location: LCCOMB_X37_Y16_N14
\INST_SPI_register|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux23~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux23~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux23~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][3]~q\)) # (!\INST_SPI_register|Mux23~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][3]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][3]~q\,
	datad => \INST_SPI_register|Mux23~1_combout\,
	combout => \INST_SPI_register|Mux23~2_combout\);

-- Location: FF_X32_Y16_N23
\INST_SPI_register|r_OUTDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[3]~22_combout\,
	asdata => \INST_SPI_register|Mux23~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(3));

-- Location: IOIBUF_X28_Y29_N8
\i_DATA2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(7),
	o => \i_DATA2[7]~input_o\);

-- Location: LCCOMB_X32_Y16_N12
\INST_SPI_register|r_SPI_REG[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][7]~feeder_combout\ = \i_DATA2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[7]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][7]~feeder_combout\);

-- Location: FF_X32_Y16_N13
\INST_SPI_register|r_SPI_REG[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][7]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][7]~q\);

-- Location: IOIBUF_X23_Y0_N22
\i_DATA3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(7),
	o => \i_DATA3[7]~input_o\);

-- Location: LCCOMB_X31_Y14_N16
\INST_SPI_register|r_SPI_REG[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][7]~feeder_combout\ = \i_DATA3[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[7]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][7]~feeder_combout\);

-- Location: FF_X31_Y14_N17
\INST_SPI_register|r_SPI_REG[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][7]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][7]~q\);

-- Location: LCCOMB_X32_Y16_N0
\INST_SPI_register|r_OUTDATA[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[7]~19_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][7]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][7]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][7]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[7]~19_combout\);

-- Location: IOIBUF_X41_Y23_N1
\i_DATA4[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(7),
	o => \i_DATA4[7]~input_o\);

-- Location: LCCOMB_X33_Y16_N10
\INST_SPI_register|r_SPI_REG[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][7]~feeder_combout\ = \i_DATA4[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[7]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][7]~feeder_combout\);

-- Location: FF_X33_Y16_N11
\INST_SPI_register|r_SPI_REG[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][7]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][7]~q\);

-- Location: IOIBUF_X26_Y29_N15
\i_DATA6[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(7),
	o => \i_DATA6[7]~input_o\);

-- Location: FF_X33_Y16_N17
\INST_SPI_register|r_SPI_REG[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[7]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][7]~q\);

-- Location: LCCOMB_X33_Y16_N16
\INST_SPI_register|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux19~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][7]~q\,
	combout => \INST_SPI_register|Mux19~0_combout\);

-- Location: IOIBUF_X26_Y29_N1
\i_DATA1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(7),
	o => \i_DATA1[7]~input_o\);

-- Location: FF_X33_Y16_N27
\INST_SPI_register|r_SPI_REG[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[7]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][7]~q\);

-- Location: LCCOMB_X33_Y16_N26
\INST_SPI_register|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux19~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux19~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][7]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux19~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][7]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux19~1_combout\);

-- Location: IOIBUF_X32_Y0_N22
\i_DATA5[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(7),
	o => \i_DATA5[7]~input_o\);

-- Location: FF_X33_Y16_N9
\INST_SPI_register|r_SPI_REG[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[7]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][7]~q\);

-- Location: LCCOMB_X33_Y16_N8
\INST_SPI_register|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux19~2_combout\ = (\INST_SPI_register|Mux19~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][7]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux19~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][7]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][7]~q\,
	datab => \INST_SPI_register|Mux19~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][7]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux19~2_combout\);

-- Location: FF_X32_Y16_N1
\INST_SPI_register|r_OUTDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[7]~19_combout\,
	asdata => \INST_SPI_register|Mux19~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(7));

-- Location: IOIBUF_X41_Y24_N1
\i_DATA2[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(11),
	o => \i_DATA2[11]~input_o\);

-- Location: LCCOMB_X32_Y16_N6
\INST_SPI_register|r_SPI_REG[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][11]~feeder_combout\ = \i_DATA2[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[11]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][11]~feeder_combout\);

-- Location: FF_X32_Y16_N7
\INST_SPI_register|r_SPI_REG[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][11]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][11]~q\);

-- Location: IOIBUF_X28_Y29_N15
\i_DATA3[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(11),
	o => \i_DATA3[11]~input_o\);

-- Location: LCCOMB_X32_Y16_N16
\INST_SPI_register|r_SPI_REG[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][11]~feeder_combout\ = \i_DATA3[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[11]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][11]~feeder_combout\);

-- Location: FF_X32_Y16_N17
\INST_SPI_register|r_SPI_REG[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][11]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][11]~q\);

-- Location: LCCOMB_X32_Y16_N30
\INST_SPI_register|r_OUTDATA[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[11]~20_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][11]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][11]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][11]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[11]~20_combout\);

-- Location: IOIBUF_X41_Y24_N8
\i_DATA4[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(11),
	o => \i_DATA4[11]~input_o\);

-- Location: FF_X38_Y16_N29
\INST_SPI_register|r_SPI_REG[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA4[11]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][11]~q\);

-- Location: IOIBUF_X41_Y23_N8
\i_DATA5[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(11),
	o => \i_DATA5[11]~input_o\);

-- Location: FF_X38_Y16_N7
\INST_SPI_register|r_SPI_REG[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[11]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][11]~q\);

-- Location: IOIBUF_X41_Y25_N22
\i_DATA6[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(11),
	o => \i_DATA6[11]~input_o\);

-- Location: FF_X38_Y16_N19
\INST_SPI_register|r_SPI_REG[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[11]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][11]~q\);

-- Location: LCCOMB_X38_Y16_N18
\INST_SPI_register|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux15~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][11]~q\,
	combout => \INST_SPI_register|Mux15~0_combout\);

-- Location: IOIBUF_X39_Y29_N22
\i_DATA1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(11),
	o => \i_DATA1[11]~input_o\);

-- Location: FF_X38_Y16_N13
\INST_SPI_register|r_SPI_REG[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[11]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][11]~q\);

-- Location: LCCOMB_X38_Y16_N12
\INST_SPI_register|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux15~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux15~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][11]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux15~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][11]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux15~1_combout\);

-- Location: LCCOMB_X38_Y16_N6
\INST_SPI_register|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux15~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux15~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux15~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][11]~q\)) # (!\INST_SPI_register|Mux15~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][11]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][11]~q\,
	datad => \INST_SPI_register|Mux15~1_combout\,
	combout => \INST_SPI_register|Mux15~2_combout\);

-- Location: FF_X32_Y16_N31
\INST_SPI_register|r_OUTDATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[11]~20_combout\,
	asdata => \INST_SPI_register|Mux15~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(11));

-- Location: IOIBUF_X41_Y24_N22
\i_DATA2[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(15),
	o => \i_DATA2[15]~input_o\);

-- Location: LCCOMB_X37_Y16_N22
\INST_SPI_register|r_SPI_REG[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][15]~feeder_combout\ = \i_DATA2[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[15]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][15]~feeder_combout\);

-- Location: FF_X37_Y16_N23
\INST_SPI_register|r_SPI_REG[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][15]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][15]~q\);

-- Location: IOIBUF_X26_Y29_N22
\i_DATA3[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(15),
	o => \i_DATA3[15]~input_o\);

-- Location: LCCOMB_X32_Y16_N2
\INST_SPI_register|r_SPI_REG[2][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][15]~feeder_combout\ = \i_DATA3[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[15]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][15]~feeder_combout\);

-- Location: FF_X32_Y16_N3
\INST_SPI_register|r_SPI_REG[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][15]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][15]~q\);

-- Location: LCCOMB_X32_Y16_N24
\INST_SPI_register|r_OUTDATA[15]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[15]~21_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][15]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][15]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][15]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[15]~21_combout\);

-- Location: IOIBUF_X26_Y0_N8
\i_DATA4[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(15),
	o => \i_DATA4[15]~input_o\);

-- Location: LCCOMB_X32_Y16_N8
\INST_SPI_register|r_SPI_REG[3][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][15]~feeder_combout\ = \i_DATA4[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[15]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][15]~feeder_combout\);

-- Location: FF_X32_Y16_N9
\INST_SPI_register|r_SPI_REG[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][15]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][15]~q\);

-- Location: IOIBUF_X41_Y20_N8
\i_DATA6[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(15),
	o => \i_DATA6[15]~input_o\);

-- Location: FF_X38_Y16_N5
\INST_SPI_register|r_SPI_REG[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[15]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][15]~q\);

-- Location: LCCOMB_X38_Y16_N4
\INST_SPI_register|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux11~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][15]~q\,
	combout => \INST_SPI_register|Mux11~0_combout\);

-- Location: IOIBUF_X41_Y23_N15
\i_DATA1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(15),
	o => \i_DATA1[15]~input_o\);

-- Location: FF_X37_Y16_N21
\INST_SPI_register|r_SPI_REG[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[15]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][15]~q\);

-- Location: LCCOMB_X37_Y16_N20
\INST_SPI_register|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux11~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux11~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][15]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux11~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][15]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux11~1_combout\);

-- Location: IOIBUF_X41_Y27_N22
\i_DATA5[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(15),
	o => \i_DATA5[15]~input_o\);

-- Location: FF_X33_Y16_N31
\INST_SPI_register|r_SPI_REG[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[15]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][15]~q\);

-- Location: LCCOMB_X33_Y16_N30
\INST_SPI_register|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux11~2_combout\ = (\INST_SPI_register|Mux11~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][15]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux11~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][15]~q\ 
-- & !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][15]~q\,
	datab => \INST_SPI_register|Mux11~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][15]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux11~2_combout\);

-- Location: FF_X32_Y16_N25
\INST_SPI_register|r_OUTDATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[15]~21_combout\,
	asdata => \INST_SPI_register|Mux11~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(15));

-- Location: LCCOMB_X32_Y16_N20
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (r_bitcount(2) & ((\INST_SPI_register|r_OUTDATA\(11)) # ((r_bitcount(3))))) # (!r_bitcount(2) & (((\INST_SPI_register|r_OUTDATA\(15) & !r_bitcount(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(11),
	datab => \INST_SPI_register|r_OUTDATA\(15),
	datac => r_bitcount(2),
	datad => r_bitcount(3),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X32_Y16_N18
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (r_bitcount(3) & ((\Mux4~4_combout\ & (\INST_SPI_register|r_OUTDATA\(3))) # (!\Mux4~4_combout\ & ((\INST_SPI_register|r_OUTDATA\(7)))))) # (!r_bitcount(3) & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(3),
	datab => \INST_SPI_register|r_OUTDATA\(7),
	datac => r_bitcount(3),
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X33_Y14_N12
\Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (r_bitcount(0) & ((\Mux4~3_combout\) # ((r_bitcount(1))))) # (!r_bitcount(0) & (((!r_bitcount(1) & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => r_bitcount(0),
	datac => r_bitcount(1),
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X33_Y14_N10
\Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (r_bitcount(1) & ((\Mux4~6_combout\ & ((\Mux4~8_combout\))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\)))) # (!r_bitcount(1) & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~8_combout\,
	datac => r_bitcount(1),
	datad => \Mux4~6_combout\,
	combout => \Mux4~9_combout\);

-- Location: IOIBUF_X41_Y18_N15
\i_DATA3[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(25),
	o => \i_DATA3[25]~input_o\);

-- Location: LCCOMB_X36_Y14_N0
\INST_SPI_register|r_SPI_REG[2][25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][25]~feeder_combout\ = \i_DATA3[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[25]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][25]~feeder_combout\);

-- Location: FF_X36_Y14_N1
\INST_SPI_register|r_SPI_REG[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][25]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][25]~q\);

-- Location: IOIBUF_X41_Y15_N15
\i_DATA2[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(25),
	o => \i_DATA2[25]~input_o\);

-- Location: LCCOMB_X37_Y14_N6
\INST_SPI_register|r_SPI_REG[1][25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][25]~feeder_combout\ = \i_DATA2[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[25]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][25]~feeder_combout\);

-- Location: FF_X37_Y14_N7
\INST_SPI_register|r_SPI_REG[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][25]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][25]~q\);

-- Location: LCCOMB_X36_Y14_N14
\INST_SPI_register|r_OUTDATA[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[25]~1_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][25]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[2][25]~q\,
	datad => \INST_SPI_register|r_SPI_REG[1][25]~q\,
	combout => \INST_SPI_register|r_OUTDATA[25]~1_combout\);

-- Location: IOIBUF_X41_Y5_N1
\i_DATA6[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(25),
	o => \i_DATA6[25]~input_o\);

-- Location: FF_X36_Y12_N1
\INST_SPI_register|r_SPI_REG[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[25]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][25]~q\);

-- Location: LCCOMB_X36_Y12_N0
\INST_SPI_register|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux1~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][25]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][25]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux1~0_combout\);

-- Location: IOIBUF_X32_Y0_N29
\i_DATA1[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(25),
	o => \i_DATA1[25]~input_o\);

-- Location: FF_X36_Y12_N27
\INST_SPI_register|r_SPI_REG[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[25]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][25]~q\);

-- Location: LCCOMB_X36_Y12_N26
\INST_SPI_register|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux1~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux1~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][25]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux1~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][25]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux1~1_combout\);

-- Location: IOIBUF_X37_Y0_N1
\i_DATA4[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(25),
	o => \i_DATA4[25]~input_o\);

-- Location: LCCOMB_X36_Y12_N2
\INST_SPI_register|r_SPI_REG[3][25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][25]~feeder_combout\ = \i_DATA4[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[25]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][25]~feeder_combout\);

-- Location: FF_X36_Y12_N3
\INST_SPI_register|r_SPI_REG[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][25]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][25]~q\);

-- Location: IOIBUF_X41_Y15_N8
\i_DATA5[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(25),
	o => \i_DATA5[25]~input_o\);

-- Location: FF_X36_Y12_N29
\INST_SPI_register|r_SPI_REG[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[25]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][25]~q\);

-- Location: LCCOMB_X36_Y12_N28
\INST_SPI_register|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux1~2_combout\ = (\INST_SPI_register|Mux1~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][25]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux1~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][25]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux1~1_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][25]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][25]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux1~2_combout\);

-- Location: FF_X36_Y14_N15
\INST_SPI_register|r_OUTDATA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[25]~1_combout\,
	asdata => \INST_SPI_register|Mux1~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(25));

-- Location: IOIBUF_X35_Y29_N1
\i_DATA3[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(26),
	o => \i_DATA3[26]~input_o\);

-- Location: FF_X35_Y14_N31
\INST_SPI_register|r_SPI_REG[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA3[26]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][26]~q\);

-- Location: IOIBUF_X39_Y29_N8
\i_DATA2[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(26),
	o => \i_DATA2[26]~input_o\);

-- Location: LCCOMB_X35_Y14_N8
\INST_SPI_register|r_SPI_REG[1][26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][26]~feeder_combout\ = \i_DATA2[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[26]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][26]~feeder_combout\);

-- Location: FF_X35_Y14_N9
\INST_SPI_register|r_SPI_REG[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][26]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][26]~q\);

-- Location: LCCOMB_X36_Y14_N12
\INST_SPI_register|r_OUTDATA[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[26]~0_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][26]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[2][26]~q\,
	datad => \INST_SPI_register|r_SPI_REG[1][26]~q\,
	combout => \INST_SPI_register|r_OUTDATA[26]~0_combout\);

-- Location: IOIBUF_X41_Y4_N8
\i_DATA4[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(26),
	o => \i_DATA4[26]~input_o\);

-- Location: LCCOMB_X36_Y12_N14
\INST_SPI_register|r_SPI_REG[3][26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][26]~feeder_combout\ = \i_DATA4[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[26]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][26]~feeder_combout\);

-- Location: FF_X36_Y12_N15
\INST_SPI_register|r_SPI_REG[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][26]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][26]~q\);

-- Location: IOIBUF_X41_Y8_N22
\i_DATA5[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(26),
	o => \i_DATA5[26]~input_o\);

-- Location: FF_X36_Y12_N5
\INST_SPI_register|r_SPI_REG[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[26]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][26]~q\);

-- Location: IOIBUF_X0_Y23_N8
\i_DATA6[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(26),
	o => \i_DATA6[26]~input_o\);

-- Location: FF_X36_Y12_N13
\INST_SPI_register|r_SPI_REG[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[26]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][26]~q\);

-- Location: LCCOMB_X36_Y12_N12
\INST_SPI_register|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux0~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][26]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][26]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux0~0_combout\);

-- Location: IOIBUF_X41_Y15_N22
\i_DATA1[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(26),
	o => \i_DATA1[26]~input_o\);

-- Location: FF_X36_Y12_N19
\INST_SPI_register|r_SPI_REG[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[26]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][26]~q\);

-- Location: LCCOMB_X36_Y12_N18
\INST_SPI_register|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux0~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux0~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][26]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux0~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][26]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y12_N4
\INST_SPI_register|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux0~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux0~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux0~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][26]~q\)) # (!\INST_SPI_register|Mux0~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datab => \INST_SPI_register|r_SPI_REG[3][26]~q\,
	datac => \INST_SPI_register|r_SPI_REG[4][26]~q\,
	datad => \INST_SPI_register|Mux0~1_combout\,
	combout => \INST_SPI_register|Mux0~2_combout\);

-- Location: FF_X36_Y14_N13
\INST_SPI_register|r_OUTDATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[26]~0_combout\,
	asdata => \INST_SPI_register|Mux0~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(26));

-- Location: IOIBUF_X41_Y21_N1
\i_DATA2[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(24),
	o => \i_DATA2[24]~input_o\);

-- Location: LCCOMB_X36_Y14_N2
\INST_SPI_register|r_SPI_REG[1][24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][24]~feeder_combout\ = \i_DATA2[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[24]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][24]~feeder_combout\);

-- Location: FF_X36_Y14_N3
\INST_SPI_register|r_SPI_REG[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][24]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][24]~q\);

-- Location: IOIBUF_X28_Y29_N29
\i_DATA3[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(24),
	o => \i_DATA3[24]~input_o\);

-- Location: LCCOMB_X35_Y14_N14
\INST_SPI_register|r_SPI_REG[2][24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][24]~feeder_combout\ = \i_DATA3[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[24]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][24]~feeder_combout\);

-- Location: FF_X35_Y14_N15
\INST_SPI_register|r_SPI_REG[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][24]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][24]~q\);

-- Location: LCCOMB_X36_Y14_N26
\INST_SPI_register|r_OUTDATA[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[24]~2_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][24]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[1][24]~q\,
	datad => \INST_SPI_register|r_SPI_REG[2][24]~q\,
	combout => \INST_SPI_register|r_OUTDATA[24]~2_combout\);

-- Location: IOIBUF_X41_Y7_N22
\i_DATA4[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(24),
	o => \i_DATA4[24]~input_o\);

-- Location: FF_X37_Y12_N13
\INST_SPI_register|r_SPI_REG[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA4[24]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][24]~q\);

-- Location: IOIBUF_X37_Y0_N8
\i_DATA5[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(24),
	o => \i_DATA5[24]~input_o\);

-- Location: FF_X37_Y12_N23
\INST_SPI_register|r_SPI_REG[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[24]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][24]~q\);

-- Location: IOIBUF_X41_Y7_N15
\i_DATA6[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(24),
	o => \i_DATA6[24]~input_o\);

-- Location: FF_X38_Y12_N11
\INST_SPI_register|r_SPI_REG[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[24]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][24]~q\);

-- Location: LCCOMB_X38_Y12_N10
\INST_SPI_register|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux2~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][24]~q\,
	combout => \INST_SPI_register|Mux2~0_combout\);

-- Location: IOIBUF_X41_Y4_N1
\i_DATA1[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(24),
	o => \i_DATA1[24]~input_o\);

-- Location: FF_X38_Y12_N29
\INST_SPI_register|r_SPI_REG[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[24]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][24]~q\);

-- Location: LCCOMB_X38_Y12_N28
\INST_SPI_register|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux2~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux2~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][24]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux2~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][24]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y12_N22
\INST_SPI_register|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux2~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux2~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux2~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][24]~q\)) # (!\INST_SPI_register|Mux2~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][24]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][24]~q\,
	datad => \INST_SPI_register|Mux2~1_combout\,
	combout => \INST_SPI_register|Mux2~2_combout\);

-- Location: FF_X36_Y14_N27
\INST_SPI_register|r_OUTDATA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[24]~2_combout\,
	asdata => \INST_SPI_register|Mux2~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(24));

-- Location: LCCOMB_X36_Y14_N4
\Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (r_bitcount(0) & ((r_bitcount(1) & ((\INST_SPI_register|r_OUTDATA\(24)))) # (!r_bitcount(1) & (\INST_SPI_register|r_OUTDATA\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(26),
	datab => r_bitcount(1),
	datac => \INST_SPI_register|r_OUTDATA\(24),
	datad => r_bitcount(0),
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X36_Y14_N10
\Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\Mux4~12_combout\) # ((!r_bitcount(0) & (\INST_SPI_register|r_OUTDATA\(25) & r_bitcount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(0),
	datab => \INST_SPI_register|r_OUTDATA\(25),
	datac => \Mux4~12_combout\,
	datad => r_bitcount(1),
	combout => \Mux4~13_combout\);

-- Location: IOIBUF_X41_Y27_N1
\i_DATA3[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(18),
	o => \i_DATA3[18]~input_o\);

-- Location: LCCOMB_X37_Y14_N12
\INST_SPI_register|r_SPI_REG[2][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][18]~feeder_combout\ = \i_DATA3[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DATA3[18]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][18]~feeder_combout\);

-- Location: FF_X37_Y14_N13
\INST_SPI_register|r_SPI_REG[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][18]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][18]~q\);

-- Location: IOIBUF_X41_Y21_N15
\i_DATA2[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(18),
	o => \i_DATA2[18]~input_o\);

-- Location: LCCOMB_X37_Y14_N18
\INST_SPI_register|r_SPI_REG[1][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][18]~feeder_combout\ = \i_DATA2[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[18]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][18]~feeder_combout\);

-- Location: FF_X37_Y14_N19
\INST_SPI_register|r_SPI_REG[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][18]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][18]~q\);

-- Location: LCCOMB_X37_Y14_N2
\INST_SPI_register|r_OUTDATA[18]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[18]~7_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][18]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[2][18]~q\,
	datab => \INST_SPI_register|r_SPI_REG[1][18]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[18]~7_combout\);

-- Location: IOIBUF_X41_Y3_N1
\i_DATA4[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(18),
	o => \i_DATA4[18]~input_o\);

-- Location: LCCOMB_X38_Y12_N30
\INST_SPI_register|r_SPI_REG[3][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][18]~feeder_combout\ = \i_DATA4[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[18]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][18]~feeder_combout\);

-- Location: FF_X38_Y12_N31
\INST_SPI_register|r_SPI_REG[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][18]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][18]~q\);

-- Location: IOIBUF_X39_Y0_N29
\i_DATA6[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(18),
	o => \i_DATA6[18]~input_o\);

-- Location: FF_X38_Y12_N13
\INST_SPI_register|r_SPI_REG[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[18]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][18]~q\);

-- Location: LCCOMB_X38_Y12_N12
\INST_SPI_register|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux8~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][18]~q\,
	combout => \INST_SPI_register|Mux8~0_combout\);

-- Location: IOIBUF_X41_Y13_N8
\i_DATA1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(18),
	o => \i_DATA1[18]~input_o\);

-- Location: FF_X38_Y12_N15
\INST_SPI_register|r_SPI_REG[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[18]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][18]~q\);

-- Location: LCCOMB_X38_Y12_N14
\INST_SPI_register|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux8~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux8~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][18]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|Mux8~0_combout\,
	datab => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][18]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux8~1_combout\);

-- Location: IOIBUF_X41_Y9_N15
\i_DATA5[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(18),
	o => \i_DATA5[18]~input_o\);

-- Location: FF_X38_Y12_N9
\INST_SPI_register|r_SPI_REG[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[18]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][18]~q\);

-- Location: LCCOMB_X38_Y12_N8
\INST_SPI_register|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux8~2_combout\ = (\INST_SPI_register|Mux8~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][18]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux8~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][18]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][18]~q\,
	datab => \INST_SPI_register|Mux8~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][18]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux8~2_combout\);

-- Location: FF_X37_Y14_N3
\INST_SPI_register|r_OUTDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[18]~7_combout\,
	asdata => \INST_SPI_register|Mux8~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(18));

-- Location: IOIBUF_X35_Y0_N8
\i_DATA3[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(16),
	o => \i_DATA3[16]~input_o\);

-- Location: LCCOMB_X35_Y14_N4
\INST_SPI_register|r_SPI_REG[2][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][16]~feeder_combout\ = \i_DATA3[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[16]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][16]~feeder_combout\);

-- Location: FF_X35_Y14_N5
\INST_SPI_register|r_SPI_REG[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][16]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][16]~q\);

-- Location: IOIBUF_X37_Y29_N8
\i_DATA2[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(16),
	o => \i_DATA2[16]~input_o\);

-- Location: LCCOMB_X36_Y14_N24
\INST_SPI_register|r_SPI_REG[1][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][16]~feeder_combout\ = \i_DATA2[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[16]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][16]~feeder_combout\);

-- Location: FF_X36_Y14_N25
\INST_SPI_register|r_SPI_REG[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][16]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][16]~q\);

-- Location: LCCOMB_X36_Y14_N20
\INST_SPI_register|r_OUTDATA[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[16]~10_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][16]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[2][16]~q\,
	datad => \INST_SPI_register|r_SPI_REG[1][16]~q\,
	combout => \INST_SPI_register|r_OUTDATA[16]~10_combout\);

-- Location: IOIBUF_X41_Y12_N1
\i_DATA4[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(16),
	o => \i_DATA4[16]~input_o\);

-- Location: LCCOMB_X37_Y12_N0
\INST_SPI_register|r_SPI_REG[3][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][16]~feeder_combout\ = \i_DATA4[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[16]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][16]~feeder_combout\);

-- Location: FF_X37_Y12_N1
\INST_SPI_register|r_SPI_REG[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][16]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][16]~q\);

-- Location: IOIBUF_X0_Y27_N22
\i_DATA5[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(16),
	o => \i_DATA5[16]~input_o\);

-- Location: FF_X37_Y12_N3
\INST_SPI_register|r_SPI_REG[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[16]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][16]~q\);

-- Location: IOIBUF_X39_Y0_N8
\i_DATA6[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(16),
	o => \i_DATA6[16]~input_o\);

-- Location: FF_X38_Y12_N7
\INST_SPI_register|r_SPI_REG[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[16]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][16]~q\);

-- Location: LCCOMB_X38_Y12_N6
\INST_SPI_register|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux10~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][16]~q\,
	combout => \INST_SPI_register|Mux10~0_combout\);

-- Location: IOIBUF_X41_Y11_N1
\i_DATA1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(16),
	o => \i_DATA1[16]~input_o\);

-- Location: FF_X38_Y12_N25
\INST_SPI_register|r_SPI_REG[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[16]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][16]~q\);

-- Location: LCCOMB_X38_Y12_N24
\INST_SPI_register|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux10~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux10~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][16]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|Mux10~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][16]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux10~1_combout\);

-- Location: LCCOMB_X37_Y12_N2
\INST_SPI_register|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux10~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux10~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux10~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][16]~q\)) # (!\INST_SPI_register|Mux10~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][16]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][16]~q\,
	datad => \INST_SPI_register|Mux10~1_combout\,
	combout => \INST_SPI_register|Mux10~2_combout\);

-- Location: FF_X36_Y14_N21
\INST_SPI_register|r_OUTDATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[16]~10_combout\,
	asdata => \INST_SPI_register|Mux10~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(16));

-- Location: IOIBUF_X41_Y25_N8
\i_DATA2[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(17),
	o => \i_DATA2[17]~input_o\);

-- Location: LCCOMB_X37_Y14_N10
\INST_SPI_register|r_SPI_REG[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][17]~feeder_combout\ = \i_DATA2[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[17]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][17]~feeder_combout\);

-- Location: FF_X37_Y14_N11
\INST_SPI_register|r_SPI_REG[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][17]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][17]~q\);

-- Location: IOIBUF_X41_Y17_N1
\i_DATA3[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(17),
	o => \i_DATA3[17]~input_o\);

-- Location: LCCOMB_X37_Y14_N4
\INST_SPI_register|r_SPI_REG[2][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][17]~feeder_combout\ = \i_DATA3[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[17]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][17]~feeder_combout\);

-- Location: FF_X37_Y14_N5
\INST_SPI_register|r_SPI_REG[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][17]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][17]~q\);

-- Location: LCCOMB_X37_Y14_N16
\INST_SPI_register|r_OUTDATA[17]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[17]~8_combout\ = (r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[2][17]~q\))) # (!r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[1][17]~q\,
	datab => \INST_SPI_register|r_SPI_REG[2][17]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|r_OUTDATA[17]~8_combout\);

-- Location: IOIBUF_X39_Y0_N15
\i_DATA4[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(17),
	o => \i_DATA4[17]~input_o\);

-- Location: LCCOMB_X38_Y12_N22
\INST_SPI_register|r_SPI_REG[3][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][17]~feeder_combout\ = \i_DATA4[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[17]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][17]~feeder_combout\);

-- Location: FF_X38_Y12_N23
\INST_SPI_register|r_SPI_REG[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][17]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][17]~q\);

-- Location: IOIBUF_X41_Y2_N1
\i_DATA6[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(17),
	o => \i_DATA6[17]~input_o\);

-- Location: FF_X38_Y12_N21
\INST_SPI_register|r_SPI_REG[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[17]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][17]~q\);

-- Location: LCCOMB_X38_Y12_N20
\INST_SPI_register|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux9~0_combout\ = (r_ADDRESS(0)) # (\INST_SPI_register|r_SPI_REG[5][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datac => \INST_SPI_register|r_SPI_REG[5][17]~q\,
	combout => \INST_SPI_register|Mux9~0_combout\);

-- Location: IOIBUF_X41_Y5_N15
\i_DATA1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(17),
	o => \i_DATA1[17]~input_o\);

-- Location: FF_X38_Y12_N3
\INST_SPI_register|r_SPI_REG[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[17]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][17]~q\);

-- Location: LCCOMB_X38_Y12_N2
\INST_SPI_register|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux9~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~28_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux9~0_combout\)) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- ((\INST_SPI_register|r_SPI_REG[0][17]~q\))))) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\ & (((!\INST_SPI_register|r_OUTDATA[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	datab => \INST_SPI_register|Mux9~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][17]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	combout => \INST_SPI_register|Mux9~1_combout\);

-- Location: IOIBUF_X39_Y0_N22
\i_DATA5[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(17),
	o => \i_DATA5[17]~input_o\);

-- Location: FF_X38_Y12_N17
\INST_SPI_register|r_SPI_REG[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[17]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][17]~q\);

-- Location: LCCOMB_X38_Y12_N16
\INST_SPI_register|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux9~2_combout\ = (\INST_SPI_register|Mux9~1_combout\ & ((\INST_SPI_register|r_SPI_REG[3][17]~q\) # ((\INST_SPI_register|r_OUTDATA[5]~27_combout\)))) # (!\INST_SPI_register|Mux9~1_combout\ & (((\INST_SPI_register|r_SPI_REG[4][17]~q\ & 
-- !\INST_SPI_register|r_OUTDATA[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][17]~q\,
	datab => \INST_SPI_register|Mux9~1_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][17]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	combout => \INST_SPI_register|Mux9~2_combout\);

-- Location: FF_X37_Y14_N17
\INST_SPI_register|r_OUTDATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[17]~8_combout\,
	asdata => \INST_SPI_register|Mux9~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(17));

-- Location: IOIBUF_X37_Y29_N29
\i_DATA3[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA3(19),
	o => \i_DATA3[19]~input_o\);

-- Location: LCCOMB_X36_Y14_N18
\INST_SPI_register|r_SPI_REG[2][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[2][19]~feeder_combout\ = \i_DATA3[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA3[19]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[2][19]~feeder_combout\);

-- Location: FF_X36_Y14_N19
\INST_SPI_register|r_SPI_REG[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[2][19]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[2][19]~q\);

-- Location: IOIBUF_X28_Y0_N22
\i_DATA2[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA2(19),
	o => \i_DATA2[19]~input_o\);

-- Location: LCCOMB_X35_Y14_N2
\INST_SPI_register|r_SPI_REG[1][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[1][19]~feeder_combout\ = \i_DATA2[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA2[19]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[1][19]~feeder_combout\);

-- Location: FF_X35_Y14_N3
\INST_SPI_register|r_SPI_REG[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[1][19]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[1][19]~q\);

-- Location: LCCOMB_X36_Y14_N22
\INST_SPI_register|r_OUTDATA[19]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_OUTDATA[19]~9_combout\ = (r_ADDRESS(0) & (\INST_SPI_register|r_SPI_REG[2][19]~q\)) # (!r_ADDRESS(0) & ((\INST_SPI_register|r_SPI_REG[1][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ADDRESS(0),
	datab => \INST_SPI_register|r_SPI_REG[2][19]~q\,
	datad => \INST_SPI_register|r_SPI_REG[1][19]~q\,
	combout => \INST_SPI_register|r_OUTDATA[19]~9_combout\);

-- Location: IOIBUF_X41_Y3_N8
\i_DATA4[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA4(19),
	o => \i_DATA4[19]~input_o\);

-- Location: LCCOMB_X38_Y12_N26
\INST_SPI_register|r_SPI_REG[3][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|r_SPI_REG[3][19]~feeder_combout\ = \i_DATA4[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA4[19]~input_o\,
	combout => \INST_SPI_register|r_SPI_REG[3][19]~feeder_combout\);

-- Location: FF_X38_Y12_N27
\INST_SPI_register|r_SPI_REG[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_SPI_REG[3][19]~feeder_combout\,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[3][19]~q\);

-- Location: IOIBUF_X30_Y0_N1
\i_DATA5[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA5(19),
	o => \i_DATA5[19]~input_o\);

-- Location: FF_X38_Y12_N1
\INST_SPI_register|r_SPI_REG[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA5[19]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[4][19]~q\);

-- Location: IOIBUF_X41_Y5_N22
\i_DATA6[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA6(19),
	o => \i_DATA6[19]~input_o\);

-- Location: FF_X37_Y12_N31
\INST_SPI_register|r_SPI_REG[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA6[19]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[5][19]~q\);

-- Location: LCCOMB_X37_Y12_N30
\INST_SPI_register|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux7~0_combout\ = (\INST_SPI_register|r_SPI_REG[5][19]~q\) # (r_ADDRESS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SPI_register|r_SPI_REG[5][19]~q\,
	datad => r_ADDRESS(0),
	combout => \INST_SPI_register|Mux7~0_combout\);

-- Location: IOIBUF_X41_Y2_N8
\i_DATA1[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA1(19),
	o => \i_DATA1[19]~input_o\);

-- Location: FF_X38_Y12_N19
\INST_SPI_register|r_SPI_REG[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA1[19]~input_o\,
	sload => VCC,
	ena => \INST_SPI_register|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_SPI_REG[0][19]~q\);

-- Location: LCCOMB_X38_Y12_N18
\INST_SPI_register|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux7~1_combout\ = (\INST_SPI_register|r_OUTDATA[5]~29_combout\ & (\INST_SPI_register|Mux7~0_combout\ & ((\INST_SPI_register|r_OUTDATA[5]~28_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~29_combout\ & 
-- (((\INST_SPI_register|r_SPI_REG[0][19]~q\) # (!\INST_SPI_register|r_OUTDATA[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA[5]~29_combout\,
	datab => \INST_SPI_register|Mux7~0_combout\,
	datac => \INST_SPI_register|r_SPI_REG[0][19]~q\,
	datad => \INST_SPI_register|r_OUTDATA[5]~28_combout\,
	combout => \INST_SPI_register|Mux7~1_combout\);

-- Location: LCCOMB_X38_Y12_N0
\INST_SPI_register|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SPI_register|Mux7~2_combout\ = (\INST_SPI_register|r_OUTDATA[5]~27_combout\ & (((\INST_SPI_register|Mux7~1_combout\)))) # (!\INST_SPI_register|r_OUTDATA[5]~27_combout\ & ((\INST_SPI_register|Mux7~1_combout\ & 
-- (\INST_SPI_register|r_SPI_REG[3][19]~q\)) # (!\INST_SPI_register|Mux7~1_combout\ & ((\INST_SPI_register|r_SPI_REG[4][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_SPI_REG[3][19]~q\,
	datab => \INST_SPI_register|r_OUTDATA[5]~27_combout\,
	datac => \INST_SPI_register|r_SPI_REG[4][19]~q\,
	datad => \INST_SPI_register|Mux7~1_combout\,
	combout => \INST_SPI_register|Mux7~2_combout\);

-- Location: FF_X36_Y14_N23
\INST_SPI_register|r_OUTDATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST_SPI_register|r_OUTDATA[19]~9_combout\,
	asdata => \INST_SPI_register|Mux7~2_combout\,
	sload => \INST_SPI_register|r_OUTDATA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SPI_register|r_OUTDATA\(19));

-- Location: LCCOMB_X36_Y14_N8
\Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (r_bitcount(0) & (((r_bitcount(1))))) # (!r_bitcount(0) & ((r_bitcount(1) & (\INST_SPI_register|r_OUTDATA\(17))) # (!r_bitcount(1) & ((\INST_SPI_register|r_OUTDATA\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(0),
	datab => \INST_SPI_register|r_OUTDATA\(17),
	datac => \INST_SPI_register|r_OUTDATA\(19),
	datad => r_bitcount(1),
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X36_Y14_N6
\Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux4~10_combout\ & (((\INST_SPI_register|r_OUTDATA\(16)) # (!r_bitcount(0))))) # (!\Mux4~10_combout\ & (\INST_SPI_register|r_OUTDATA\(18) & ((r_bitcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SPI_register|r_OUTDATA\(18),
	datab => \INST_SPI_register|r_OUTDATA\(16),
	datac => \Mux4~10_combout\,
	datad => r_bitcount(0),
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X31_Y14_N2
\Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (r_bitcount(2) & ((r_bitcount(3) & ((\Mux4~11_combout\))) # (!r_bitcount(3) & (\Mux4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(3),
	datab => r_bitcount(2),
	datac => \Mux4~13_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X31_Y14_N18
\Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (r_bitcount(4) & (((\Mux4~9_combout\)))) # (!r_bitcount(4) & ((\Mux4~17_combout\) # ((\Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(4),
	datab => \Mux4~17_combout\,
	datac => \Mux4~9_combout\,
	datad => \Mux4~14_combout\,
	combout => \Mux4~18_combout\);

-- Location: LCCOMB_X31_Y14_N8
\Selector32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (\Selector32~3_combout\ & ((\Mux4~18_combout\) # ((\Selector32~4_combout\ & \r_MISO~q\)))) # (!\Selector32~3_combout\ & (\Selector32~4_combout\ & (\r_MISO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~3_combout\,
	datab => \Selector32~4_combout\,
	datac => \r_MISO~q\,
	datad => \Mux4~18_combout\,
	combout => \Selector32~5_combout\);

-- Location: FF_X31_Y14_N9
r_MISO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_MISO~q\);

-- Location: LCCOMB_X29_Y14_N22
\r_ADDRESS_received~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ADDRESS_received~1_combout\ = (\r_ADDRESS_received~q\ & ((r_SSEL(2)) # (!r_SSEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ADDRESS_received~q\,
	datac => r_SSEL(1),
	datad => r_SSEL(2),
	combout => \r_ADDRESS_received~1_combout\);

-- Location: LCCOMB_X29_Y14_N0
\r_ADDRESS_received~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ADDRESS_received~0_combout\ = (\r_ADDRESS_received~q\) # ((!\Selector37~2_combout\ & (\state.COMMAND~q\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~2_combout\,
	datab => \state.COMMAND~q\,
	datac => \r_ADDRESS_received~q\,
	datad => \Equal0~2_combout\,
	combout => \r_ADDRESS_received~0_combout\);

-- Location: LCCOMB_X29_Y14_N14
\r_ADDRESS_received~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ADDRESS_received~3_combout\ = (\r_ADDRESS_received~1_combout\ & (((!\state.TRANSMIT~q\ & \r_ADDRESS_received~0_combout\)) # (!\r_ADDRESS_received~2_combout\))) # (!\r_ADDRESS_received~1_combout\ & (!\state.TRANSMIT~q\ & 
-- ((\r_ADDRESS_received~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ADDRESS_received~1_combout\,
	datab => \state.TRANSMIT~q\,
	datac => \r_ADDRESS_received~2_combout\,
	datad => \r_ADDRESS_received~0_combout\,
	combout => \r_ADDRESS_received~3_combout\);

-- Location: FF_X29_Y14_N15
r_ADDRESS_received : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ADDRESS_received~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ADDRESS_received~q\);

ww_o_MISO <= \o_MISO~output_o\;

ww_o_ADDRESS_received <= \o_ADDRESS_received~output_o\;
END structure;


