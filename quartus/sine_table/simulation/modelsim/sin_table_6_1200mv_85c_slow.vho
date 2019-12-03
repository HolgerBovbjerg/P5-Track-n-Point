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

-- DATE "12/03/2019 09:58:18"

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

ENTITY 	sin_table IS
    PORT (
	i_clk : IN std_logic;
	i_addr : IN std_logic_vector(7 DOWNTO 0);
	o_data : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END sin_table;

-- Design Ports Information
-- o_data[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[8]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[10]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[11]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[3]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_addr[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sin_table IS
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
SIGNAL ww_i_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(11 DOWNTO 0);
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_data[0]~output_o\ : std_logic;
SIGNAL \o_data[1]~output_o\ : std_logic;
SIGNAL \o_data[2]~output_o\ : std_logic;
SIGNAL \o_data[3]~output_o\ : std_logic;
SIGNAL \o_data[4]~output_o\ : std_logic;
SIGNAL \o_data[5]~output_o\ : std_logic;
SIGNAL \o_data[6]~output_o\ : std_logic;
SIGNAL \o_data[7]~output_o\ : std_logic;
SIGNAL \o_data[8]~output_o\ : std_logic;
SIGNAL \o_data[9]~output_o\ : std_logic;
SIGNAL \o_data[10]~output_o\ : std_logic;
SIGNAL \o_data[11]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_addr[0]~input_o\ : std_logic;
SIGNAL \i_addr[1]~input_o\ : std_logic;
SIGNAL \i_addr[2]~input_o\ : std_logic;
SIGNAL \i_addr[3]~input_o\ : std_logic;
SIGNAL \i_addr[4]~input_o\ : std_logic;
SIGNAL \i_addr[5]~input_o\ : std_logic;
SIGNAL \i_addr[6]~input_o\ : std_logic;
SIGNAL \i_addr[7]~input_o\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a11\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_addr <= i_addr;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux11_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_addr[7]~input_o\ & \i_addr[6]~input_o\ & \i_addr[5]~input_o\ & \i_addr[4]~input_o\ & \i_addr[3]~input_o\ & \i_addr[2]~input_o\ & \i_addr[1]~input_o\ & \i_addr[0]~input_o\);

\Mux11_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Mux11_rtl_0|auto_generated|ram_block1a1\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Mux11_rtl_0|auto_generated|ram_block1a2\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Mux11_rtl_0|auto_generated|ram_block1a3\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Mux11_rtl_0|auto_generated|ram_block1a4\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Mux11_rtl_0|auto_generated|ram_block1a5\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Mux11_rtl_0|auto_generated|ram_block1a6\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Mux11_rtl_0|auto_generated|ram_block1a7\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Mux11_rtl_0|auto_generated|ram_block1a8\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Mux11_rtl_0|auto_generated|ram_block1a9\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Mux11_rtl_0|auto_generated|ram_block1a10\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Mux11_rtl_0|auto_generated|ram_block1a11\ <= \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \o_data[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \o_data[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \o_data[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \o_data[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\o_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \o_data[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\o_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \o_data[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \o_data[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \o_data[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\o_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \o_data[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\o_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \o_data[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\o_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \o_data[10]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \o_data[11]~output_o\);

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

-- Location: IOIBUF_X11_Y0_N29
\i_addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(0),
	o => \i_addr[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\i_addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(1),
	o => \i_addr[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(2),
	o => \i_addr[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\i_addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(3),
	o => \i_addr[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\i_addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(4),
	o => \i_addr[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\i_addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(5),
	o => \i_addr[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\i_addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(6),
	o => \i_addr[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\i_addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_addr(7),
	o => \i_addr[7]~input_o\);

-- Location: M9K_X13_Y1_N0
\Mux11_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"01F34079B01DA4073701C1406D301A840670018FC060E0177405AD015F4054E0147804F00130804940119C043A0103803E300EE0038E00D90033C00C5002EC00",
	mem_init1 => X"B1802A0009EC0257008D00212007C401D0006C40193005D40159004F401230042800F10036800C4002BC009B0022400770019C005800128003D000C400270007800160003C00090001400020000000000000000020001400090003C0016000780027000C4003D0012800580019C007700224009B002BC00C40036800F1004280123004F40159005D40193006C401D0007C40212008D00257009EC02A000B1802EC00C50033C00D90038E00EE003E301038043A0119C04940130804F001478054E015F405AD01774060E018FC067001A8406D301C14073701DA4079B01F340800020CC08650225C08C9023EC092D0257C09900270409F20288C0A5302A0C0AB20",
	mem_init0 => X"2B880B1002CF80B6C02E640BC602FC80C1D031200C72032700CC4033B00D14034E80D60036140DA9037300DEE0383C0E300393C0E6D03A2C0EA703B0C0EDD03BD80F0F03C980F3C03D440F6503DDC0F8903E640FA803ED80FC303F3C0FD903F880FEA03FC40FF703FEC0FFE03FFC0FFF03FFC0FFE03FEC0FF703FC40FEA03F880FD903F3C0FC303ED80FA803E640F8903DDC0F6503D440F3C03C980F0F03BD80EDD03B0C0EA703A2C0E6D0393C0E300383C0DEE037300DA9036140D60034E80D14033B00CC4032700C72031200C1D02FC80BC602E640B6C02CF80B1002B880AB202A0C0A530288C09F20270409900257C092D023EC08C90225C0865020CC0800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin_table.sin_table0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux11_rtl_0|altsyncram_rvv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portaaddr => \Mux11_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux11_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_o_data(0) <= \o_data[0]~output_o\;

ww_o_data(1) <= \o_data[1]~output_o\;

ww_o_data(2) <= \o_data[2]~output_o\;

ww_o_data(3) <= \o_data[3]~output_o\;

ww_o_data(4) <= \o_data[4]~output_o\;

ww_o_data(5) <= \o_data[5]~output_o\;

ww_o_data(6) <= \o_data[6]~output_o\;

ww_o_data(7) <= \o_data[7]~output_o\;

ww_o_data(8) <= \o_data[8]~output_o\;

ww_o_data(9) <= \o_data[9]~output_o\;

ww_o_data(10) <= \o_data[10]~output_o\;

ww_o_data(11) <= \o_data[11]~output_o\;
END structure;


