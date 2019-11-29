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

-- DATE "11/29/2019 10:51:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE Goertzel_new_data_type IS

TYPE o_Goertzel_17_0_type IS ARRAY (17 DOWNTO 0) OF std_logic;
TYPE o_Goertzel_17_0_1_0_type IS ARRAY (1 DOWNTO 0) OF o_Goertzel_17_0_type;
SUBTYPE o_Goertzel_type IS o_Goertzel_17_0_1_0_type;

END Goertzel_new_data_type;

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.GOERTZEL_NEW_DATA_TYPE.ALL;

ENTITY 	Goertzel_new IS
    PORT (
	i_CLK : IN std_logic;
	i_ENABLE : IN std_logic;
	i_SIG : IN IEEE.NUMERIC_STD.signed(11 DOWNTO 0);
	i_COEFF : IN IEEE.NUMERIC_STD.signed(17 DOWNTO 0);
	o_Goertzel : OUT o_Goertzel_type;
	o_NEW_RESULT : OUT std_logic
	);
END Goertzel_new;

-- Design Ports Information
-- i_SIG[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[5]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[9]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[10]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[9]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[13]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_COEFF[17]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][2]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][10]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][11]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][12]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][14]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][15]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[0][17]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][16]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Goertzel[1][17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Goertzel_new IS
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
SIGNAL ww_o_Goertzel : o_Goertzel_type;
SIGNAL ww_o_NEW_RESULT : std_logic;
SIGNAL \i_SIG[0]~input_o\ : std_logic;
SIGNAL \i_SIG[1]~input_o\ : std_logic;
SIGNAL \i_SIG[2]~input_o\ : std_logic;
SIGNAL \i_SIG[3]~input_o\ : std_logic;
SIGNAL \i_SIG[4]~input_o\ : std_logic;
SIGNAL \i_SIG[5]~input_o\ : std_logic;
SIGNAL \i_SIG[6]~input_o\ : std_logic;
SIGNAL \i_SIG[7]~input_o\ : std_logic;
SIGNAL \i_SIG[8]~input_o\ : std_logic;
SIGNAL \i_SIG[9]~input_o\ : std_logic;
SIGNAL \i_SIG[10]~input_o\ : std_logic;
SIGNAL \i_SIG[11]~input_o\ : std_logic;
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
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \o_Goertzel[0][0]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][1]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][2]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][3]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][4]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][5]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][6]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][7]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][8]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][9]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][10]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][11]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][12]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][13]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][14]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][15]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][16]~output_o\ : std_logic;
SIGNAL \o_Goertzel[0][17]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][0]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][1]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][2]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][3]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][4]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][5]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][6]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][7]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][8]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][9]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][10]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][11]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][12]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][13]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][14]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][15]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][16]~output_o\ : std_logic;
SIGNAL \o_Goertzel[1][17]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT~output_o\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_SIG <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_SIG);
ww_i_COEFF <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_COEFF);
o_Goertzel <= ww_o_Goertzel;
o_NEW_RESULT <= ww_o_NEW_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X35_Y0_N9
\o_Goertzel[0][0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][0]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\o_Goertzel[0][1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][1]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\o_Goertzel[0][2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_Goertzel[0][3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][3]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_Goertzel[0][4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][4]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\o_Goertzel[0][5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][5]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\o_Goertzel[0][6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_Goertzel[0][7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][7]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\o_Goertzel[0][8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][8]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\o_Goertzel[0][9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][9]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\o_Goertzel[0][10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][10]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\o_Goertzel[0][11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][11]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_Goertzel[0][12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][12]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\o_Goertzel[0][13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][13]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_Goertzel[0][14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][14]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\o_Goertzel[0][15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][15]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\o_Goertzel[0][16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][16]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\o_Goertzel[0][17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[0][17]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_Goertzel[1][0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\o_Goertzel[1][1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][1]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\o_Goertzel[1][2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][2]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_Goertzel[1][3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][3]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_Goertzel[1][4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\o_Goertzel[1][5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][5]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\o_Goertzel[1][6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][6]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\o_Goertzel[1][7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][7]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\o_Goertzel[1][8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][8]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_Goertzel[1][9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][9]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\o_Goertzel[1][10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][10]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\o_Goertzel[1][11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][11]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_Goertzel[1][12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][12]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\o_Goertzel[1][13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][13]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\o_Goertzel[1][14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][14]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\o_Goertzel[1][15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][15]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_Goertzel[1][16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][16]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\o_Goertzel[1][17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Goertzel[1][17]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\o_NEW_RESULT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_NEW_RESULT~output_o\);

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

-- Location: IOIBUF_X0_Y26_N15
\i_SIG[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(2),
	o => \i_SIG[2]~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\i_SIG[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(3),
	o => \i_SIG[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_SIG[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(4),
	o => \i_SIG[4]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\i_SIG[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(5),
	o => \i_SIG[5]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\i_SIG[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(6),
	o => \i_SIG[6]~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\i_SIG[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(7),
	o => \i_SIG[7]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\i_SIG[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(8),
	o => \i_SIG[8]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\i_SIG[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(9),
	o => \i_SIG[9]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\i_SIG[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(10),
	o => \i_SIG[10]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\i_SIG[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG(11),
	o => \i_SIG[11]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\i_COEFF[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(0),
	o => \i_COEFF[0]~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\i_COEFF[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(1),
	o => \i_COEFF[1]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\i_COEFF[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(2),
	o => \i_COEFF[2]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\i_COEFF[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(3),
	o => \i_COEFF[3]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\i_COEFF[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(4),
	o => \i_COEFF[4]~input_o\);

-- Location: IOIBUF_X41_Y21_N1
\i_COEFF[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(5),
	o => \i_COEFF[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\i_COEFF[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(6),
	o => \i_COEFF[6]~input_o\);

-- Location: IOIBUF_X41_Y22_N15
\i_COEFF[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(7),
	o => \i_COEFF[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\i_COEFF[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(8),
	o => \i_COEFF[8]~input_o\);

-- Location: IOIBUF_X41_Y23_N22
\i_COEFF[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(9),
	o => \i_COEFF[9]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\i_COEFF[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(10),
	o => \i_COEFF[10]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\i_COEFF[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(11),
	o => \i_COEFF[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\i_COEFF[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(12),
	o => \i_COEFF[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_COEFF[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(13),
	o => \i_COEFF[13]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\i_COEFF[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(14),
	o => \i_COEFF[14]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\i_COEFF[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(15),
	o => \i_COEFF[15]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\i_COEFF[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(16),
	o => \i_COEFF[16]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\i_COEFF[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_COEFF(17),
	o => \i_COEFF[17]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

ww_o_Goertzel(0)(0) <= \o_Goertzel[0][0]~output_o\;

ww_o_Goertzel(0)(1) <= \o_Goertzel[0][1]~output_o\;

ww_o_Goertzel(0)(2) <= \o_Goertzel[0][2]~output_o\;

ww_o_Goertzel(0)(3) <= \o_Goertzel[0][3]~output_o\;

ww_o_Goertzel(0)(4) <= \o_Goertzel[0][4]~output_o\;

ww_o_Goertzel(0)(5) <= \o_Goertzel[0][5]~output_o\;

ww_o_Goertzel(0)(6) <= \o_Goertzel[0][6]~output_o\;

ww_o_Goertzel(0)(7) <= \o_Goertzel[0][7]~output_o\;

ww_o_Goertzel(0)(8) <= \o_Goertzel[0][8]~output_o\;

ww_o_Goertzel(0)(9) <= \o_Goertzel[0][9]~output_o\;

ww_o_Goertzel(0)(10) <= \o_Goertzel[0][10]~output_o\;

ww_o_Goertzel(0)(11) <= \o_Goertzel[0][11]~output_o\;

ww_o_Goertzel(0)(12) <= \o_Goertzel[0][12]~output_o\;

ww_o_Goertzel(0)(13) <= \o_Goertzel[0][13]~output_o\;

ww_o_Goertzel(0)(14) <= \o_Goertzel[0][14]~output_o\;

ww_o_Goertzel(0)(15) <= \o_Goertzel[0][15]~output_o\;

ww_o_Goertzel(0)(16) <= \o_Goertzel[0][16]~output_o\;

ww_o_Goertzel(0)(17) <= \o_Goertzel[0][17]~output_o\;

ww_o_Goertzel(1)(0) <= \o_Goertzel[1][0]~output_o\;

ww_o_Goertzel(1)(1) <= \o_Goertzel[1][1]~output_o\;

ww_o_Goertzel(1)(2) <= \o_Goertzel[1][2]~output_o\;

ww_o_Goertzel(1)(3) <= \o_Goertzel[1][3]~output_o\;

ww_o_Goertzel(1)(4) <= \o_Goertzel[1][4]~output_o\;

ww_o_Goertzel(1)(5) <= \o_Goertzel[1][5]~output_o\;

ww_o_Goertzel(1)(6) <= \o_Goertzel[1][6]~output_o\;

ww_o_Goertzel(1)(7) <= \o_Goertzel[1][7]~output_o\;

ww_o_Goertzel(1)(8) <= \o_Goertzel[1][8]~output_o\;

ww_o_Goertzel(1)(9) <= \o_Goertzel[1][9]~output_o\;

ww_o_Goertzel(1)(10) <= \o_Goertzel[1][10]~output_o\;

ww_o_Goertzel(1)(11) <= \o_Goertzel[1][11]~output_o\;

ww_o_Goertzel(1)(12) <= \o_Goertzel[1][12]~output_o\;

ww_o_Goertzel(1)(13) <= \o_Goertzel[1][13]~output_o\;

ww_o_Goertzel(1)(14) <= \o_Goertzel[1][14]~output_o\;

ww_o_Goertzel(1)(15) <= \o_Goertzel[1][15]~output_o\;

ww_o_Goertzel(1)(16) <= \o_Goertzel[1][16]~output_o\;

ww_o_Goertzel(1)(17) <= \o_Goertzel[1][17]~output_o\;

ww_o_NEW_RESULT <= \o_NEW_RESULT~output_o\;
END structure;


