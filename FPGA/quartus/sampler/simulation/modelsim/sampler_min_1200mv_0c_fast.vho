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

-- DATE "12/02/2019 14:17:41"

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

ENTITY 	sampler IS
    PORT (
	i_clk : IN std_logic;
	i_write_en : IN std_logic;
	i_write_data : IN std_logic_vector(11 DOWNTO 0);
	o_read_data : BUFFER std_logic_vector(11 DOWNTO 0);
	o_NEW_DATA : BUFFER std_logic
	);
END sampler;

-- Design Ports Information
-- o_read_data[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[9]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_read_data[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_DATA	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_en	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_write_data[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sampler IS
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
SIGNAL ww_i_write_en : std_logic;
SIGNAL ww_i_write_data : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_read_data : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_NEW_DATA : std_logic;
SIGNAL \o_read_data[0]~output_o\ : std_logic;
SIGNAL \o_read_data[1]~output_o\ : std_logic;
SIGNAL \o_read_data[2]~output_o\ : std_logic;
SIGNAL \o_read_data[3]~output_o\ : std_logic;
SIGNAL \o_read_data[4]~output_o\ : std_logic;
SIGNAL \o_read_data[5]~output_o\ : std_logic;
SIGNAL \o_read_data[6]~output_o\ : std_logic;
SIGNAL \o_read_data[7]~output_o\ : std_logic;
SIGNAL \o_read_data[8]~output_o\ : std_logic;
SIGNAL \o_read_data[9]~output_o\ : std_logic;
SIGNAL \o_read_data[10]~output_o\ : std_logic;
SIGNAL \o_read_data[11]~output_o\ : std_logic;
SIGNAL \o_NEW_DATA~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_write_data[0]~input_o\ : std_logic;
SIGNAL \i_write_en~input_o\ : std_logic;
SIGNAL \i_write_data[1]~input_o\ : std_logic;
SIGNAL \r_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \i_write_data[2]~input_o\ : std_logic;
SIGNAL \i_write_data[3]~input_o\ : std_logic;
SIGNAL \i_write_data[4]~input_o\ : std_logic;
SIGNAL \i_write_data[5]~input_o\ : std_logic;
SIGNAL \r_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \i_write_data[6]~input_o\ : std_logic;
SIGNAL \i_write_data[7]~input_o\ : std_logic;
SIGNAL \r_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \i_write_data[8]~input_o\ : std_logic;
SIGNAL \i_write_data[9]~input_o\ : std_logic;
SIGNAL \i_write_data[10]~input_o\ : std_logic;
SIGNAL \r_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \i_write_data[11]~input_o\ : std_logic;
SIGNAL \r_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \r_NEW_DATA~q\ : std_logic;
SIGNAL r_DATA : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_i_clk <= i_clk;
ww_i_write_en <= i_write_en;
ww_i_write_data <= i_write_data;
o_read_data <= ww_o_read_data;
o_NEW_DATA <= ww_o_NEW_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\o_read_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(0),
	devoe => ww_devoe,
	o => \o_read_data[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\o_read_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(1),
	devoe => ww_devoe,
	o => \o_read_data[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\o_read_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(2),
	devoe => ww_devoe,
	o => \o_read_data[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_read_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(3),
	devoe => ww_devoe,
	o => \o_read_data[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_read_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(4),
	devoe => ww_devoe,
	o => \o_read_data[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\o_read_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(5),
	devoe => ww_devoe,
	o => \o_read_data[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\o_read_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(6),
	devoe => ww_devoe,
	o => \o_read_data[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o_read_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(7),
	devoe => ww_devoe,
	o => \o_read_data[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_read_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(8),
	devoe => ww_devoe,
	o => \o_read_data[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\o_read_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(9),
	devoe => ww_devoe,
	o => \o_read_data[9]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\o_read_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(10),
	devoe => ww_devoe,
	o => \o_read_data[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\o_read_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA(11),
	devoe => ww_devoe,
	o => \o_read_data[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\o_NEW_DATA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_NEW_DATA~q\,
	devoe => ww_devoe,
	o => \o_NEW_DATA~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\i_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\i_write_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(0),
	o => \i_write_data[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\i_write_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_en,
	o => \i_write_en~input_o\);

-- Location: FF_X1_Y23_N25
\r_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[0]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(0));

-- Location: IOIBUF_X0_Y27_N1
\i_write_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(1),
	o => \i_write_data[1]~input_o\);

-- Location: LCCOMB_X1_Y23_N26
\r_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[1]~feeder_combout\ = \i_write_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_write_data[1]~input_o\,
	combout => \r_DATA[1]~feeder_combout\);

-- Location: FF_X1_Y23_N27
\r_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_DATA[1]~feeder_combout\,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(1));

-- Location: IOIBUF_X0_Y25_N22
\i_write_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(2),
	o => \i_write_data[2]~input_o\);

-- Location: FF_X1_Y23_N21
\r_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[2]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(2));

-- Location: IOIBUF_X0_Y23_N8
\i_write_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(3),
	o => \i_write_data[3]~input_o\);

-- Location: FF_X1_Y23_N31
\r_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[3]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(3));

-- Location: IOIBUF_X0_Y27_N22
\i_write_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(4),
	o => \i_write_data[4]~input_o\);

-- Location: FF_X1_Y23_N1
\r_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[4]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(4));

-- Location: IOIBUF_X0_Y22_N15
\i_write_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(5),
	o => \i_write_data[5]~input_o\);

-- Location: LCCOMB_X1_Y23_N18
\r_DATA[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[5]~feeder_combout\ = \i_write_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_write_data[5]~input_o\,
	combout => \r_DATA[5]~feeder_combout\);

-- Location: FF_X1_Y23_N19
\r_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_DATA[5]~feeder_combout\,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(5));

-- Location: IOIBUF_X0_Y25_N15
\i_write_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(6),
	o => \i_write_data[6]~input_o\);

-- Location: FF_X1_Y23_N13
\r_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[6]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(6));

-- Location: IOIBUF_X0_Y26_N8
\i_write_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(7),
	o => \i_write_data[7]~input_o\);

-- Location: LCCOMB_X1_Y23_N6
\r_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[7]~feeder_combout\ = \i_write_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_write_data[7]~input_o\,
	combout => \r_DATA[7]~feeder_combout\);

-- Location: FF_X1_Y23_N7
\r_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_DATA[7]~feeder_combout\,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(7));

-- Location: IOIBUF_X0_Y26_N1
\i_write_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(8),
	o => \i_write_data[8]~input_o\);

-- Location: FF_X1_Y23_N17
\r_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[8]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(8));

-- Location: IOIBUF_X0_Y25_N1
\i_write_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(9),
	o => \i_write_data[9]~input_o\);

-- Location: FF_X1_Y23_N11
\r_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_data[9]~input_o\,
	sload => VCC,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(9));

-- Location: IOIBUF_X0_Y22_N22
\i_write_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(10),
	o => \i_write_data[10]~input_o\);

-- Location: LCCOMB_X1_Y23_N4
\r_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[10]~feeder_combout\ = \i_write_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_write_data[10]~input_o\,
	combout => \r_DATA[10]~feeder_combout\);

-- Location: FF_X1_Y23_N5
\r_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_DATA[10]~feeder_combout\,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(10));

-- Location: IOIBUF_X0_Y13_N8
\i_write_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_write_data(11),
	o => \i_write_data[11]~input_o\);

-- Location: LCCOMB_X1_Y23_N22
\r_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA[11]~feeder_combout\ = \i_write_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_write_data[11]~input_o\,
	combout => \r_DATA[11]~feeder_combout\);

-- Location: FF_X1_Y23_N23
\r_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_DATA[11]~feeder_combout\,
	ena => \i_write_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA(11));

-- Location: FF_X1_Y23_N9
r_NEW_DATA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	asdata => \i_write_en~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_NEW_DATA~q\);

ww_o_read_data(0) <= \o_read_data[0]~output_o\;

ww_o_read_data(1) <= \o_read_data[1]~output_o\;

ww_o_read_data(2) <= \o_read_data[2]~output_o\;

ww_o_read_data(3) <= \o_read_data[3]~output_o\;

ww_o_read_data(4) <= \o_read_data[4]~output_o\;

ww_o_read_data(5) <= \o_read_data[5]~output_o\;

ww_o_read_data(6) <= \o_read_data[6]~output_o\;

ww_o_read_data(7) <= \o_read_data[7]~output_o\;

ww_o_read_data(8) <= \o_read_data[8]~output_o\;

ww_o_read_data(9) <= \o_read_data[9]~output_o\;

ww_o_read_data(10) <= \o_read_data[10]~output_o\;

ww_o_read_data(11) <= \o_read_data[11]~output_o\;

ww_o_NEW_DATA <= \o_NEW_DATA~output_o\;
END structure;


