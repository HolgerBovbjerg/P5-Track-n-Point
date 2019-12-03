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

-- DATE "11/30/2019 20:26:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AoA_estimator IS
    PORT (
	i_CLK : IN std_logic;
	i_RESET : IN std_logic;
	i_SIG1 : IN std_logic_vector(11 DOWNTO 0);
	i_SIG2 : IN std_logic_vector(11 DOWNTO 0);
	i_SIG3 : IN std_logic_vector(11 DOWNTO 0);
	o_ANGLE_elevation : OUT std_logic_vector(7 DOWNTO 0);
	o_ANGLE_azimuth : OUT std_logic_vector(7 DOWNTO 0)
	);
END AoA_estimator;

-- Design Ports Information
-- i_RESET	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[6]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[8]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG1[11]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG2[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[8]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[10]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SIG3[11]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_elevation[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[5]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ANGLE_azimuth[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AoA_estimator IS
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
SIGNAL ww_i_RESET : std_logic;
SIGNAL ww_i_SIG1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_SIG2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_SIG3 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_ANGLE_elevation : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_ANGLE_azimuth : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RESET~input_o\ : std_logic;
SIGNAL \i_SIG1[0]~input_o\ : std_logic;
SIGNAL \i_SIG1[1]~input_o\ : std_logic;
SIGNAL \i_SIG1[2]~input_o\ : std_logic;
SIGNAL \i_SIG1[3]~input_o\ : std_logic;
SIGNAL \i_SIG1[4]~input_o\ : std_logic;
SIGNAL \i_SIG1[5]~input_o\ : std_logic;
SIGNAL \i_SIG1[6]~input_o\ : std_logic;
SIGNAL \i_SIG1[7]~input_o\ : std_logic;
SIGNAL \i_SIG1[8]~input_o\ : std_logic;
SIGNAL \i_SIG1[9]~input_o\ : std_logic;
SIGNAL \i_SIG1[10]~input_o\ : std_logic;
SIGNAL \i_SIG1[11]~input_o\ : std_logic;
SIGNAL \i_SIG2[0]~input_o\ : std_logic;
SIGNAL \i_SIG2[1]~input_o\ : std_logic;
SIGNAL \i_SIG2[2]~input_o\ : std_logic;
SIGNAL \i_SIG2[3]~input_o\ : std_logic;
SIGNAL \i_SIG2[4]~input_o\ : std_logic;
SIGNAL \i_SIG2[5]~input_o\ : std_logic;
SIGNAL \i_SIG2[6]~input_o\ : std_logic;
SIGNAL \i_SIG2[7]~input_o\ : std_logic;
SIGNAL \i_SIG2[8]~input_o\ : std_logic;
SIGNAL \i_SIG2[9]~input_o\ : std_logic;
SIGNAL \i_SIG2[10]~input_o\ : std_logic;
SIGNAL \i_SIG2[11]~input_o\ : std_logic;
SIGNAL \i_SIG3[0]~input_o\ : std_logic;
SIGNAL \i_SIG3[1]~input_o\ : std_logic;
SIGNAL \i_SIG3[2]~input_o\ : std_logic;
SIGNAL \i_SIG3[3]~input_o\ : std_logic;
SIGNAL \i_SIG3[4]~input_o\ : std_logic;
SIGNAL \i_SIG3[5]~input_o\ : std_logic;
SIGNAL \i_SIG3[6]~input_o\ : std_logic;
SIGNAL \i_SIG3[7]~input_o\ : std_logic;
SIGNAL \i_SIG3[8]~input_o\ : std_logic;
SIGNAL \i_SIG3[9]~input_o\ : std_logic;
SIGNAL \i_SIG3[10]~input_o\ : std_logic;
SIGNAL \i_SIG3[11]~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[0]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[1]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[2]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[3]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[4]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[5]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[6]~output_o\ : std_logic;
SIGNAL \o_ANGLE_elevation[7]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[0]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[1]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[2]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[3]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[4]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[5]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[6]~output_o\ : std_logic;
SIGNAL \o_ANGLE_azimuth[7]~output_o\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RESET <= i_RESET;
ww_i_SIG1 <= i_SIG1;
ww_i_SIG2 <= i_SIG2;
ww_i_SIG3 <= i_SIG3;
o_ANGLE_elevation <= ww_o_ANGLE_elevation;
o_ANGLE_azimuth <= ww_o_ANGLE_azimuth;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X41_Y5_N9
\o_ANGLE_elevation[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_ANGLE_elevation[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_ANGLE_elevation[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_ANGLE_elevation[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_ANGLE_elevation[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[4]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\o_ANGLE_elevation[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\o_ANGLE_elevation[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\o_ANGLE_elevation[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_elevation[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\o_ANGLE_azimuth[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\o_ANGLE_azimuth[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\o_ANGLE_azimuth[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[2]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\o_ANGLE_azimuth[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\o_ANGLE_azimuth[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_ANGLE_azimuth[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\o_ANGLE_azimuth[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_ANGLE_azimuth[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ANGLE_azimuth[7]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\i_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RESET,
	o => \i_RESET~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_SIG1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(0),
	o => \i_SIG1[0]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\i_SIG1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(1),
	o => \i_SIG1[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_SIG1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(2),
	o => \i_SIG1[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_SIG1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(3),
	o => \i_SIG1[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\i_SIG1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(4),
	o => \i_SIG1[4]~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\i_SIG1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(5),
	o => \i_SIG1[5]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\i_SIG1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(6),
	o => \i_SIG1[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\i_SIG1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(7),
	o => \i_SIG1[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\i_SIG1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(8),
	o => \i_SIG1[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\i_SIG1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(9),
	o => \i_SIG1[9]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\i_SIG1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(10),
	o => \i_SIG1[10]~input_o\);

-- Location: IOIBUF_X41_Y13_N15
\i_SIG1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG1(11),
	o => \i_SIG1[11]~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\i_SIG2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(0),
	o => \i_SIG2[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\i_SIG2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(1),
	o => \i_SIG2[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\i_SIG2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(2),
	o => \i_SIG2[2]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\i_SIG2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(3),
	o => \i_SIG2[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\i_SIG2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(4),
	o => \i_SIG2[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\i_SIG2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(5),
	o => \i_SIG2[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_SIG2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(6),
	o => \i_SIG2[6]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\i_SIG2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(7),
	o => \i_SIG2[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\i_SIG2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(8),
	o => \i_SIG2[8]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\i_SIG2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(9),
	o => \i_SIG2[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_SIG2[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(10),
	o => \i_SIG2[10]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\i_SIG2[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG2(11),
	o => \i_SIG2[11]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\i_SIG3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(0),
	o => \i_SIG3[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\i_SIG3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(1),
	o => \i_SIG3[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\i_SIG3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(2),
	o => \i_SIG3[2]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\i_SIG3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(3),
	o => \i_SIG3[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\i_SIG3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(4),
	o => \i_SIG3[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\i_SIG3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(5),
	o => \i_SIG3[5]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\i_SIG3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(6),
	o => \i_SIG3[6]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\i_SIG3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(7),
	o => \i_SIG3[7]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\i_SIG3[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(8),
	o => \i_SIG3[8]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\i_SIG3[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(9),
	o => \i_SIG3[9]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\i_SIG3[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(10),
	o => \i_SIG3[10]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\i_SIG3[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SIG3(11),
	o => \i_SIG3[11]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

ww_o_ANGLE_elevation(0) <= \o_ANGLE_elevation[0]~output_o\;

ww_o_ANGLE_elevation(1) <= \o_ANGLE_elevation[1]~output_o\;

ww_o_ANGLE_elevation(2) <= \o_ANGLE_elevation[2]~output_o\;

ww_o_ANGLE_elevation(3) <= \o_ANGLE_elevation[3]~output_o\;

ww_o_ANGLE_elevation(4) <= \o_ANGLE_elevation[4]~output_o\;

ww_o_ANGLE_elevation(5) <= \o_ANGLE_elevation[5]~output_o\;

ww_o_ANGLE_elevation(6) <= \o_ANGLE_elevation[6]~output_o\;

ww_o_ANGLE_elevation(7) <= \o_ANGLE_elevation[7]~output_o\;

ww_o_ANGLE_azimuth(0) <= \o_ANGLE_azimuth[0]~output_o\;

ww_o_ANGLE_azimuth(1) <= \o_ANGLE_azimuth[1]~output_o\;

ww_o_ANGLE_azimuth(2) <= \o_ANGLE_azimuth[2]~output_o\;

ww_o_ANGLE_azimuth(3) <= \o_ANGLE_azimuth[3]~output_o\;

ww_o_ANGLE_azimuth(4) <= \o_ANGLE_azimuth[4]~output_o\;

ww_o_ANGLE_azimuth(5) <= \o_ANGLE_azimuth[5]~output_o\;

ww_o_ANGLE_azimuth(6) <= \o_ANGLE_azimuth[6]~output_o\;

ww_o_ANGLE_azimuth(7) <= \o_ANGLE_azimuth[7]~output_o\;
END structure;


