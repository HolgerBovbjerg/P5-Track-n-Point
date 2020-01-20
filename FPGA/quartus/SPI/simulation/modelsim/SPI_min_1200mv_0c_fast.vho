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

-- DATE "01/20/2020 15:11:47"

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
	i_REG_DATA : IN std_logic_vector(26 DOWNTO 0);
	i_NEW_DATA : IN std_logic;
	o_RECEIVED_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	o_DATA_received_bool : BUFFER std_logic
	);
END SPI;

-- Design Ports Information
-- o_MISO	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[11]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[13]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[16]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[21]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[22]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[23]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[24]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[25]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REG_DATA[26]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEW_DATA	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RECEIVED_DATA[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_received_bool	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SSEL	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCLK	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MOSI	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_REG_DATA : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_i_NEW_DATA : std_logic;
SIGNAL ww_o_RECEIVED_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_received_bool : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_REG_DATA[0]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[1]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[2]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[3]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[4]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[5]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[6]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[7]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[8]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[9]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[10]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[11]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[12]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[13]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[14]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[15]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[16]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[17]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[18]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[19]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[20]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[21]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[22]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[23]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[24]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[25]~input_o\ : std_logic;
SIGNAL \i_REG_DATA[26]~input_o\ : std_logic;
SIGNAL \i_NEW_DATA~input_o\ : std_logic;
SIGNAL \o_MISO~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[0]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[1]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[2]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[3]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[4]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[5]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[6]~output_o\ : std_logic;
SIGNAL \o_RECEIVED_DATA[7]~output_o\ : std_logic;
SIGNAL \o_DATA_received_bool~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SSEL~input_o\ : std_logic;
SIGNAL \r_SSEL[1]~feeder_combout\ : std_logic;
SIGNAL \r_SSEL[2]~feeder_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \r_count[0]~21_combout\ : std_logic;
SIGNAL \r_count[1]~7_combout\ : std_logic;
SIGNAL \r_count[1]~8\ : std_logic;
SIGNAL \r_count[2]~9_combout\ : std_logic;
SIGNAL \r_count[2]~10\ : std_logic;
SIGNAL \r_count[3]~11_combout\ : std_logic;
SIGNAL \r_count[3]~12\ : std_logic;
SIGNAL \r_count[4]~13_combout\ : std_logic;
SIGNAL \r_count[4]~14\ : std_logic;
SIGNAL \r_count[5]~15_combout\ : std_logic;
SIGNAL \r_count[5]~16\ : std_logic;
SIGNAL \r_count[6]~17_combout\ : std_logic;
SIGNAL \r_count[6]~18\ : std_logic;
SIGNAL \r_count[7]~19_combout\ : std_logic;
SIGNAL \i_SCLK~input_o\ : std_logic;
SIGNAL \r_SCLK[0]~feeder_combout\ : std_logic;
SIGNAL \r_SCLK[1]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_sent[7]~2_combout\ : std_logic;
SIGNAL \r_DATA_sent~9_combout\ : std_logic;
SIGNAL \r_bitcount~4_combout\ : std_logic;
SIGNAL \r_bitcount[0]~5_combout\ : std_logic;
SIGNAL \r_bitcount~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \r_bitcount~7_combout\ : std_logic;
SIGNAL \r_DATA_sent~0_combout\ : std_logic;
SIGNAL \r_DATA_sent~8_combout\ : std_logic;
SIGNAL \r_DATA_sent~7_combout\ : std_logic;
SIGNAL \r_DATA_sent~6_combout\ : std_logic;
SIGNAL \r_DATA_sent~5_combout\ : std_logic;
SIGNAL \r_DATA_sent~4_combout\ : std_logic;
SIGNAL \r_DATA_sent~3_combout\ : std_logic;
SIGNAL \r_DATA_sent~1_combout\ : std_logic;
SIGNAL \i_MOSI~input_o\ : std_logic;
SIGNAL \r_MOSI[0]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[0]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \r_DATA_received[1]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[2]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[3]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[4]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[5]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[6]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received[7]~feeder_combout\ : std_logic;
SIGNAL \r_DATA_received_bool~0_combout\ : std_logic;
SIGNAL \r_DATA_received_bool~q\ : std_logic;
SIGNAL \o_DATA_received_bool~reg0_q\ : std_logic;
SIGNAL r_count : std_logic_vector(7 DOWNTO 0);
SIGNAL r_bitcount : std_logic_vector(2 DOWNTO 0);
SIGNAL r_SSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL r_SCLK : std_logic_vector(2 DOWNTO 0);
SIGNAL r_MOSI : std_logic_vector(1 DOWNTO 0);
SIGNAL r_DATA_sent : std_logic_vector(7 DOWNTO 0);
SIGNAL r_DATA_received : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_r_DATA_sent[7]~2_combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_SCLK <= i_SCLK;
ww_i_MOSI <= i_MOSI;
ww_i_SSEL <= i_SSEL;
o_MISO <= ww_o_MISO;
ww_i_REG_DATA <= i_REG_DATA;
ww_i_NEW_DATA <= i_NEW_DATA;
o_RECEIVED_DATA <= ww_o_RECEIVED_DATA;
o_DATA_received_bool <= ww_o_DATA_received_bool;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\ALT_INV_r_DATA_sent[7]~2_combout\ <= NOT \r_DATA_sent[7]~2_combout\;

-- Location: IOOBUF_X5_Y29_N9
\o_MISO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_sent(7),
	devoe => ww_devoe,
	o => \o_MISO~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\o_RECEIVED_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(0),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\o_RECEIVED_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(1),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\o_RECEIVED_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(2),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\o_RECEIVED_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(3),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\o_RECEIVED_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(4),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\o_RECEIVED_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(5),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[5]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\o_RECEIVED_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(6),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[6]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\o_RECEIVED_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_DATA_received(7),
	devoe => ww_devoe,
	o => \o_RECEIVED_DATA[7]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\o_DATA_received_bool~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_received_bool~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_received_bool~output_o\);

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

-- Location: IOIBUF_X5_Y29_N22
\i_SSEL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SSEL,
	o => \i_SSEL~input_o\);

-- Location: FF_X5_Y28_N25
\r_SSEL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_SSEL~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(0));

-- Location: LCCOMB_X5_Y28_N4
\r_SSEL[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_SSEL[1]~feeder_combout\ = r_SSEL(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_SSEL(0),
	combout => \r_SSEL[1]~feeder_combout\);

-- Location: FF_X5_Y28_N5
\r_SSEL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SSEL[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(1));

-- Location: LCCOMB_X5_Y28_N10
\r_SSEL[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_SSEL[2]~feeder_combout\ = r_SSEL(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_SSEL(1),
	combout => \r_SSEL[2]~feeder_combout\);

-- Location: FF_X5_Y28_N11
\r_SSEL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SSEL[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SSEL(2));

-- Location: LCCOMB_X5_Y28_N30
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!r_SSEL(1) & r_SSEL(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_SSEL(1),
	datad => r_SSEL(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y28_N6
\r_count[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[0]~21_combout\ = r_count(0) $ (((!r_SSEL(1) & r_SSEL(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_SSEL(1),
	datac => r_count(0),
	datad => r_SSEL(2),
	combout => \r_count[0]~21_combout\);

-- Location: FF_X5_Y28_N7
\r_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(0));

-- Location: LCCOMB_X6_Y28_N4
\r_count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[1]~7_combout\ = (r_count(1) & (r_count(0) $ (VCC))) # (!r_count(1) & (r_count(0) & VCC))
-- \r_count[1]~8\ = CARRY((r_count(1) & r_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_count(1),
	datab => r_count(0),
	datad => VCC,
	combout => \r_count[1]~7_combout\,
	cout => \r_count[1]~8\);

-- Location: FF_X6_Y28_N5
\r_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[1]~7_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(1));

-- Location: LCCOMB_X6_Y28_N6
\r_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[2]~9_combout\ = (r_count(2) & (!\r_count[1]~8\)) # (!r_count(2) & ((\r_count[1]~8\) # (GND)))
-- \r_count[2]~10\ = CARRY((!\r_count[1]~8\) # (!r_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_count(2),
	datad => VCC,
	cin => \r_count[1]~8\,
	combout => \r_count[2]~9_combout\,
	cout => \r_count[2]~10\);

-- Location: FF_X6_Y28_N7
\r_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[2]~9_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(2));

-- Location: LCCOMB_X6_Y28_N8
\r_count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[3]~11_combout\ = (r_count(3) & (\r_count[2]~10\ $ (GND))) # (!r_count(3) & (!\r_count[2]~10\ & VCC))
-- \r_count[3]~12\ = CARRY((r_count(3) & !\r_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_count(3),
	datad => VCC,
	cin => \r_count[2]~10\,
	combout => \r_count[3]~11_combout\,
	cout => \r_count[3]~12\);

-- Location: FF_X6_Y28_N9
\r_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[3]~11_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(3));

-- Location: LCCOMB_X6_Y28_N10
\r_count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[4]~13_combout\ = (r_count(4) & (!\r_count[3]~12\)) # (!r_count(4) & ((\r_count[3]~12\) # (GND)))
-- \r_count[4]~14\ = CARRY((!\r_count[3]~12\) # (!r_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_count(4),
	datad => VCC,
	cin => \r_count[3]~12\,
	combout => \r_count[4]~13_combout\,
	cout => \r_count[4]~14\);

-- Location: FF_X6_Y28_N11
\r_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[4]~13_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(4));

-- Location: LCCOMB_X6_Y28_N12
\r_count[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[5]~15_combout\ = (r_count(5) & (\r_count[4]~14\ $ (GND))) # (!r_count(5) & (!\r_count[4]~14\ & VCC))
-- \r_count[5]~16\ = CARRY((r_count(5) & !\r_count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_count(5),
	datad => VCC,
	cin => \r_count[4]~14\,
	combout => \r_count[5]~15_combout\,
	cout => \r_count[5]~16\);

-- Location: FF_X6_Y28_N13
\r_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[5]~15_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(5));

-- Location: LCCOMB_X6_Y28_N14
\r_count[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[6]~17_combout\ = (r_count(6) & (!\r_count[5]~16\)) # (!r_count(6) & ((\r_count[5]~16\) # (GND)))
-- \r_count[6]~18\ = CARRY((!\r_count[5]~16\) # (!r_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_count(6),
	datad => VCC,
	cin => \r_count[5]~16\,
	combout => \r_count[6]~17_combout\,
	cout => \r_count[6]~18\);

-- Location: FF_X6_Y28_N15
\r_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[6]~17_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(6));

-- Location: LCCOMB_X6_Y28_N16
\r_count[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_count[7]~19_combout\ = \r_count[6]~18\ $ (!r_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_count(7),
	cin => \r_count[6]~18\,
	combout => \r_count[7]~19_combout\);

-- Location: FF_X6_Y28_N17
\r_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_count[7]~19_combout\,
	ena => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_count(7));

-- Location: IOIBUF_X5_Y29_N15
\i_SCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SCLK,
	o => \i_SCLK~input_o\);

-- Location: LCCOMB_X5_Y28_N0
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

-- Location: FF_X5_Y28_N1
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

-- Location: LCCOMB_X5_Y28_N20
\r_SCLK[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_SCLK[1]~feeder_combout\ = r_SCLK(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_SCLK(0),
	combout => \r_SCLK[1]~feeder_combout\);

-- Location: FF_X5_Y28_N21
\r_SCLK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SCLK[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_SCLK(1));

-- Location: FF_X5_Y28_N3
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

-- Location: LCCOMB_X5_Y28_N22
\r_DATA_sent[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent[7]~2_combout\ = (r_SSEL(2) & (r_SSEL(1) & ((r_SCLK(1)) # (!r_SCLK(2))))) # (!r_SSEL(2) & ((r_SCLK(1)) # ((!r_SCLK(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SSEL(2),
	datab => r_SCLK(1),
	datac => r_SSEL(1),
	datad => r_SCLK(2),
	combout => \r_DATA_sent[7]~2_combout\);

-- Location: LCCOMB_X5_Y28_N28
\r_DATA_sent~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~9_combout\ = (\r_DATA_sent[7]~2_combout\ & ((r_DATA_sent(0)) # ((r_count(0) & \Mux2~0_combout\)))) # (!\r_DATA_sent[7]~2_combout\ & (r_count(0) & ((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DATA_sent[7]~2_combout\,
	datab => r_count(0),
	datac => r_DATA_sent(0),
	datad => \Mux2~0_combout\,
	combout => \r_DATA_sent~9_combout\);

-- Location: FF_X5_Y28_N29
\r_DATA_sent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(0));

-- Location: LCCOMB_X5_Y28_N16
\r_bitcount~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount~4_combout\ = (r_SCLK(1) & (!r_bitcount(0) & !r_SCLK(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_SCLK(1),
	datac => r_bitcount(0),
	datad => r_SCLK(2),
	combout => \r_bitcount~4_combout\);

-- Location: LCCOMB_X5_Y28_N24
\r_bitcount[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount[0]~5_combout\ = (r_SSEL(1)) # ((r_SCLK(1) & !r_SCLK(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SCLK(1),
	datab => r_SSEL(1),
	datad => r_SCLK(2),
	combout => \r_bitcount[0]~5_combout\);

-- Location: FF_X5_Y28_N17
\r_bitcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_bitcount~4_combout\,
	ena => \r_bitcount[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(0));

-- Location: LCCOMB_X5_Y28_N14
\r_bitcount~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount~6_combout\ = (r_SCLK(1) & (!r_SCLK(2) & (r_bitcount(1) $ (r_bitcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_SCLK(1),
	datab => r_SCLK(2),
	datac => r_bitcount(1),
	datad => r_bitcount(0),
	combout => \r_bitcount~6_combout\);

-- Location: FF_X5_Y28_N15
\r_bitcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_bitcount~6_combout\,
	ena => \r_bitcount[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(1));

-- Location: LCCOMB_X5_Y28_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_bitcount(1) & r_bitcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_bitcount(1),
	datad => r_bitcount(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X5_Y28_N18
\r_bitcount~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_bitcount~7_combout\ = (r_SCLK(1) & (!r_SCLK(2) & (\Add0~0_combout\ $ (r_bitcount(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_SCLK(1),
	datac => r_bitcount(2),
	datad => r_SCLK(2),
	combout => \r_bitcount~7_combout\);

-- Location: FF_X5_Y28_N19
\r_bitcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_bitcount~7_combout\,
	ena => \r_bitcount[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_bitcount(2));

-- Location: LCCOMB_X6_Y28_N18
\r_DATA_sent~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~0_combout\ = (\Mux2~0_combout\) # ((!r_bitcount(1) & (!r_bitcount(2) & !r_bitcount(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_bitcount(1),
	datab => r_bitcount(2),
	datac => r_bitcount(0),
	datad => \Mux2~0_combout\,
	combout => \r_DATA_sent~0_combout\);

-- Location: LCCOMB_X6_Y28_N28
\r_DATA_sent~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~8_combout\ = (\Mux2~0_combout\ & ((r_count(1)) # ((r_DATA_sent(0) & !\r_DATA_sent~0_combout\)))) # (!\Mux2~0_combout\ & (r_DATA_sent(0) & ((!\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => r_DATA_sent(0),
	datac => r_count(1),
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~8_combout\);

-- Location: FF_X6_Y28_N29
\r_DATA_sent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~8_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(1));

-- Location: LCCOMB_X6_Y28_N22
\r_DATA_sent~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~7_combout\ = (\Mux2~0_combout\ & ((r_count(2)) # ((r_DATA_sent(1) & !\r_DATA_sent~0_combout\)))) # (!\Mux2~0_combout\ & (r_DATA_sent(1) & ((!\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => r_DATA_sent(1),
	datac => r_count(2),
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~7_combout\);

-- Location: FF_X6_Y28_N23
\r_DATA_sent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~7_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(2));

-- Location: LCCOMB_X6_Y28_N0
\r_DATA_sent~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~6_combout\ = (\Mux2~0_combout\ & ((r_count(3)) # ((r_DATA_sent(2) & !\r_DATA_sent~0_combout\)))) # (!\Mux2~0_combout\ & (((r_DATA_sent(2) & !\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => r_count(3),
	datac => r_DATA_sent(2),
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~6_combout\);

-- Location: FF_X6_Y28_N1
\r_DATA_sent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~6_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(3));

-- Location: LCCOMB_X6_Y28_N26
\r_DATA_sent~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~5_combout\ = (r_count(4) & ((\Mux2~0_combout\) # ((r_DATA_sent(3) & !\r_DATA_sent~0_combout\)))) # (!r_count(4) & (r_DATA_sent(3) & ((!\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_count(4),
	datab => r_DATA_sent(3),
	datac => \Mux2~0_combout\,
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~5_combout\);

-- Location: FF_X6_Y28_N27
\r_DATA_sent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~5_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(4));

-- Location: LCCOMB_X6_Y28_N24
\r_DATA_sent~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~4_combout\ = (r_count(5) & ((\Mux2~0_combout\) # ((r_DATA_sent(4) & !\r_DATA_sent~0_combout\)))) # (!r_count(5) & (r_DATA_sent(4) & ((!\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_count(5),
	datab => r_DATA_sent(4),
	datac => \Mux2~0_combout\,
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~4_combout\);

-- Location: FF_X6_Y28_N25
\r_DATA_sent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~4_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(5));

-- Location: LCCOMB_X6_Y28_N30
\r_DATA_sent~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~3_combout\ = (r_DATA_sent(5) & (((\Mux2~0_combout\ & r_count(6))) # (!\r_DATA_sent~0_combout\))) # (!r_DATA_sent(5) & (\Mux2~0_combout\ & (r_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_DATA_sent(5),
	datab => \Mux2~0_combout\,
	datac => r_count(6),
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~3_combout\);

-- Location: FF_X6_Y28_N31
\r_DATA_sent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~3_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(6));

-- Location: LCCOMB_X6_Y28_N20
\r_DATA_sent~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_sent~1_combout\ = (\Mux2~0_combout\ & ((r_count(7)) # ((r_DATA_sent(6) & !\r_DATA_sent~0_combout\)))) # (!\Mux2~0_combout\ & (((r_DATA_sent(6) & !\r_DATA_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => r_count(7),
	datac => r_DATA_sent(6),
	datad => \r_DATA_sent~0_combout\,
	combout => \r_DATA_sent~1_combout\);

-- Location: FF_X6_Y28_N21
\r_DATA_sent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_sent~1_combout\,
	ena => \ALT_INV_r_DATA_sent[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_sent(7));

-- Location: IOIBUF_X5_Y29_N1
\i_MOSI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MOSI,
	o => \i_MOSI~input_o\);

-- Location: LCCOMB_X5_Y28_N26
\r_MOSI[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_MOSI[0]~feeder_combout\ = \i_MOSI~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MOSI~input_o\,
	combout => \r_MOSI[0]~feeder_combout\);

-- Location: FF_X5_Y28_N27
\r_MOSI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_MOSI[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_MOSI(0));

-- Location: FF_X5_Y28_N13
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

-- Location: LCCOMB_X4_Y28_N20
\r_DATA_received[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[0]~feeder_combout\ = r_MOSI(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_MOSI(1),
	combout => \r_DATA_received[0]~feeder_combout\);

-- Location: LCCOMB_X5_Y28_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (r_SCLK(1) & !r_SCLK(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_SCLK(1),
	datad => r_SCLK(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X4_Y28_N21
\r_DATA_received[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[0]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(0));

-- Location: LCCOMB_X4_Y28_N22
\r_DATA_received[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[1]~feeder_combout\ = r_DATA_received(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(0),
	combout => \r_DATA_received[1]~feeder_combout\);

-- Location: FF_X4_Y28_N23
\r_DATA_received[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[1]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(1));

-- Location: LCCOMB_X4_Y28_N12
\r_DATA_received[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[2]~feeder_combout\ = r_DATA_received(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_DATA_received(1),
	combout => \r_DATA_received[2]~feeder_combout\);

-- Location: FF_X4_Y28_N13
\r_DATA_received[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[2]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(2));

-- Location: LCCOMB_X4_Y28_N10
\r_DATA_received[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[3]~feeder_combout\ = r_DATA_received(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(2),
	combout => \r_DATA_received[3]~feeder_combout\);

-- Location: FF_X4_Y28_N11
\r_DATA_received[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[3]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(3));

-- Location: LCCOMB_X4_Y28_N24
\r_DATA_received[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[4]~feeder_combout\ = r_DATA_received(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(3),
	combout => \r_DATA_received[4]~feeder_combout\);

-- Location: FF_X4_Y28_N25
\r_DATA_received[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[4]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(4));

-- Location: LCCOMB_X4_Y28_N2
\r_DATA_received[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[5]~feeder_combout\ = r_DATA_received(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(4),
	combout => \r_DATA_received[5]~feeder_combout\);

-- Location: FF_X4_Y28_N3
\r_DATA_received[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[5]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(5));

-- Location: LCCOMB_X4_Y28_N0
\r_DATA_received[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[6]~feeder_combout\ = r_DATA_received(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(5),
	combout => \r_DATA_received[6]~feeder_combout\);

-- Location: FF_X4_Y28_N1
\r_DATA_received[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[6]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(6));

-- Location: LCCOMB_X4_Y28_N14
\r_DATA_received[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received[7]~feeder_combout\ = r_DATA_received(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_DATA_received(6),
	combout => \r_DATA_received[7]~feeder_combout\);

-- Location: FF_X4_Y28_N15
\r_DATA_received[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received[7]~feeder_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_DATA_received(7));

-- Location: LCCOMB_X5_Y28_N8
\r_DATA_received_bool~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_DATA_received_bool~0_combout\ = (\Add0~0_combout\ & (r_bitcount(2) & (!r_SSEL(1) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_bitcount(2),
	datac => r_SSEL(1),
	datad => \Mux0~0_combout\,
	combout => \r_DATA_received_bool~0_combout\);

-- Location: FF_X5_Y28_N9
r_DATA_received_bool : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_DATA_received_bool~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_DATA_received_bool~q\);

-- Location: FF_X5_Y28_N31
\o_DATA_received_bool~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \r_DATA_received_bool~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_received_bool~reg0_q\);

-- Location: IOIBUF_X21_Y0_N8
\i_REG_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(0),
	o => \i_REG_DATA[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_REG_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(1),
	o => \i_REG_DATA[1]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\i_REG_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(2),
	o => \i_REG_DATA[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\i_REG_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(3),
	o => \i_REG_DATA[3]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\i_REG_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(4),
	o => \i_REG_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\i_REG_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(5),
	o => \i_REG_DATA[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_REG_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(6),
	o => \i_REG_DATA[6]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\i_REG_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(7),
	o => \i_REG_DATA[7]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\i_REG_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(8),
	o => \i_REG_DATA[8]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\i_REG_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(9),
	o => \i_REG_DATA[9]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\i_REG_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(10),
	o => \i_REG_DATA[10]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_REG_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(11),
	o => \i_REG_DATA[11]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\i_REG_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(12),
	o => \i_REG_DATA[12]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\i_REG_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(13),
	o => \i_REG_DATA[13]~input_o\);

-- Location: IOIBUF_X41_Y4_N1
\i_REG_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(14),
	o => \i_REG_DATA[14]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\i_REG_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(15),
	o => \i_REG_DATA[15]~input_o\);

-- Location: IOIBUF_X30_Y29_N8
\i_REG_DATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(16),
	o => \i_REG_DATA[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_REG_DATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(17),
	o => \i_REG_DATA[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\i_REG_DATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(18),
	o => \i_REG_DATA[18]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\i_REG_DATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(19),
	o => \i_REG_DATA[19]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_REG_DATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(20),
	o => \i_REG_DATA[20]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\i_REG_DATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(21),
	o => \i_REG_DATA[21]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\i_REG_DATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(22),
	o => \i_REG_DATA[22]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\i_REG_DATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(23),
	o => \i_REG_DATA[23]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\i_REG_DATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(24),
	o => \i_REG_DATA[24]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\i_REG_DATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(25),
	o => \i_REG_DATA[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\i_REG_DATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REG_DATA(26),
	o => \i_REG_DATA[26]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\i_NEW_DATA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEW_DATA,
	o => \i_NEW_DATA~input_o\);

ww_o_MISO <= \o_MISO~output_o\;

ww_o_RECEIVED_DATA(0) <= \o_RECEIVED_DATA[0]~output_o\;

ww_o_RECEIVED_DATA(1) <= \o_RECEIVED_DATA[1]~output_o\;

ww_o_RECEIVED_DATA(2) <= \o_RECEIVED_DATA[2]~output_o\;

ww_o_RECEIVED_DATA(3) <= \o_RECEIVED_DATA[3]~output_o\;

ww_o_RECEIVED_DATA(4) <= \o_RECEIVED_DATA[4]~output_o\;

ww_o_RECEIVED_DATA(5) <= \o_RECEIVED_DATA[5]~output_o\;

ww_o_RECEIVED_DATA(6) <= \o_RECEIVED_DATA[6]~output_o\;

ww_o_RECEIVED_DATA(7) <= \o_RECEIVED_DATA[7]~output_o\;

ww_o_DATA_received_bool <= \o_DATA_received_bool~output_o\;
END structure;


