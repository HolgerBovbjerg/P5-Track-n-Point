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

-- DATE "12/04/2019 09:42:04"

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

ENTITY 	AoA_estimator IS
    PORT (
	i_CLK : IN std_logic;
	i_RESET : IN std_logic;
	i_ADC1 : IN std_logic_vector(11 DOWNTO 0);
	i_ADC2 : IN std_logic_vector(11 DOWNTO 0);
	i_ADC3 : IN std_logic_vector(11 DOWNTO 0);
	o_Real1 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Real2 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Real3 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Imag1 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Imag2 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_Imag3 : BUFFER std_logic_vector(17 DOWNTO 0);
	o_NEW_RESULT : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END AoA_estimator;

-- Design Ports Information
-- o_Real1[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[9]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[11]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[12]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[15]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[16]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real1[17]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[16]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real2[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[2]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[4]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[9]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[12]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[16]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Real3[17]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[1]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[10]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[12]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[13]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[16]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag1[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[6]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[11]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[16]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag2[17]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[6]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[11]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[13]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Imag3[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NEW_RESULT[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RESET	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC1[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[8]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC2[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[9]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADC3[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_ADC1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_ADC2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_ADC3 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_Real1 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Real2 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Real3 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Imag1 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Imag2 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_Imag3 : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_o_NEW_RESULT : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \o_Real1[0]~output_o\ : std_logic;
SIGNAL \o_Real1[1]~output_o\ : std_logic;
SIGNAL \o_Real1[2]~output_o\ : std_logic;
SIGNAL \o_Real1[3]~output_o\ : std_logic;
SIGNAL \o_Real1[4]~output_o\ : std_logic;
SIGNAL \o_Real1[5]~output_o\ : std_logic;
SIGNAL \o_Real1[6]~output_o\ : std_logic;
SIGNAL \o_Real1[7]~output_o\ : std_logic;
SIGNAL \o_Real1[8]~output_o\ : std_logic;
SIGNAL \o_Real1[9]~output_o\ : std_logic;
SIGNAL \o_Real1[10]~output_o\ : std_logic;
SIGNAL \o_Real1[11]~output_o\ : std_logic;
SIGNAL \o_Real1[12]~output_o\ : std_logic;
SIGNAL \o_Real1[13]~output_o\ : std_logic;
SIGNAL \o_Real1[14]~output_o\ : std_logic;
SIGNAL \o_Real1[15]~output_o\ : std_logic;
SIGNAL \o_Real1[16]~output_o\ : std_logic;
SIGNAL \o_Real1[17]~output_o\ : std_logic;
SIGNAL \o_Real2[0]~output_o\ : std_logic;
SIGNAL \o_Real2[1]~output_o\ : std_logic;
SIGNAL \o_Real2[2]~output_o\ : std_logic;
SIGNAL \o_Real2[3]~output_o\ : std_logic;
SIGNAL \o_Real2[4]~output_o\ : std_logic;
SIGNAL \o_Real2[5]~output_o\ : std_logic;
SIGNAL \o_Real2[6]~output_o\ : std_logic;
SIGNAL \o_Real2[7]~output_o\ : std_logic;
SIGNAL \o_Real2[8]~output_o\ : std_logic;
SIGNAL \o_Real2[9]~output_o\ : std_logic;
SIGNAL \o_Real2[10]~output_o\ : std_logic;
SIGNAL \o_Real2[11]~output_o\ : std_logic;
SIGNAL \o_Real2[12]~output_o\ : std_logic;
SIGNAL \o_Real2[13]~output_o\ : std_logic;
SIGNAL \o_Real2[14]~output_o\ : std_logic;
SIGNAL \o_Real2[15]~output_o\ : std_logic;
SIGNAL \o_Real2[16]~output_o\ : std_logic;
SIGNAL \o_Real2[17]~output_o\ : std_logic;
SIGNAL \o_Real3[0]~output_o\ : std_logic;
SIGNAL \o_Real3[1]~output_o\ : std_logic;
SIGNAL \o_Real3[2]~output_o\ : std_logic;
SIGNAL \o_Real3[3]~output_o\ : std_logic;
SIGNAL \o_Real3[4]~output_o\ : std_logic;
SIGNAL \o_Real3[5]~output_o\ : std_logic;
SIGNAL \o_Real3[6]~output_o\ : std_logic;
SIGNAL \o_Real3[7]~output_o\ : std_logic;
SIGNAL \o_Real3[8]~output_o\ : std_logic;
SIGNAL \o_Real3[9]~output_o\ : std_logic;
SIGNAL \o_Real3[10]~output_o\ : std_logic;
SIGNAL \o_Real3[11]~output_o\ : std_logic;
SIGNAL \o_Real3[12]~output_o\ : std_logic;
SIGNAL \o_Real3[13]~output_o\ : std_logic;
SIGNAL \o_Real3[14]~output_o\ : std_logic;
SIGNAL \o_Real3[15]~output_o\ : std_logic;
SIGNAL \o_Real3[16]~output_o\ : std_logic;
SIGNAL \o_Real3[17]~output_o\ : std_logic;
SIGNAL \o_Imag1[0]~output_o\ : std_logic;
SIGNAL \o_Imag1[1]~output_o\ : std_logic;
SIGNAL \o_Imag1[2]~output_o\ : std_logic;
SIGNAL \o_Imag1[3]~output_o\ : std_logic;
SIGNAL \o_Imag1[4]~output_o\ : std_logic;
SIGNAL \o_Imag1[5]~output_o\ : std_logic;
SIGNAL \o_Imag1[6]~output_o\ : std_logic;
SIGNAL \o_Imag1[7]~output_o\ : std_logic;
SIGNAL \o_Imag1[8]~output_o\ : std_logic;
SIGNAL \o_Imag1[9]~output_o\ : std_logic;
SIGNAL \o_Imag1[10]~output_o\ : std_logic;
SIGNAL \o_Imag1[11]~output_o\ : std_logic;
SIGNAL \o_Imag1[12]~output_o\ : std_logic;
SIGNAL \o_Imag1[13]~output_o\ : std_logic;
SIGNAL \o_Imag1[14]~output_o\ : std_logic;
SIGNAL \o_Imag1[15]~output_o\ : std_logic;
SIGNAL \o_Imag1[16]~output_o\ : std_logic;
SIGNAL \o_Imag1[17]~output_o\ : std_logic;
SIGNAL \o_Imag2[0]~output_o\ : std_logic;
SIGNAL \o_Imag2[1]~output_o\ : std_logic;
SIGNAL \o_Imag2[2]~output_o\ : std_logic;
SIGNAL \o_Imag2[3]~output_o\ : std_logic;
SIGNAL \o_Imag2[4]~output_o\ : std_logic;
SIGNAL \o_Imag2[5]~output_o\ : std_logic;
SIGNAL \o_Imag2[6]~output_o\ : std_logic;
SIGNAL \o_Imag2[7]~output_o\ : std_logic;
SIGNAL \o_Imag2[8]~output_o\ : std_logic;
SIGNAL \o_Imag2[9]~output_o\ : std_logic;
SIGNAL \o_Imag2[10]~output_o\ : std_logic;
SIGNAL \o_Imag2[11]~output_o\ : std_logic;
SIGNAL \o_Imag2[12]~output_o\ : std_logic;
SIGNAL \o_Imag2[13]~output_o\ : std_logic;
SIGNAL \o_Imag2[14]~output_o\ : std_logic;
SIGNAL \o_Imag2[15]~output_o\ : std_logic;
SIGNAL \o_Imag2[16]~output_o\ : std_logic;
SIGNAL \o_Imag2[17]~output_o\ : std_logic;
SIGNAL \o_Imag3[0]~output_o\ : std_logic;
SIGNAL \o_Imag3[1]~output_o\ : std_logic;
SIGNAL \o_Imag3[2]~output_o\ : std_logic;
SIGNAL \o_Imag3[3]~output_o\ : std_logic;
SIGNAL \o_Imag3[4]~output_o\ : std_logic;
SIGNAL \o_Imag3[5]~output_o\ : std_logic;
SIGNAL \o_Imag3[6]~output_o\ : std_logic;
SIGNAL \o_Imag3[7]~output_o\ : std_logic;
SIGNAL \o_Imag3[8]~output_o\ : std_logic;
SIGNAL \o_Imag3[9]~output_o\ : std_logic;
SIGNAL \o_Imag3[10]~output_o\ : std_logic;
SIGNAL \o_Imag3[11]~output_o\ : std_logic;
SIGNAL \o_Imag3[12]~output_o\ : std_logic;
SIGNAL \o_Imag3[13]~output_o\ : std_logic;
SIGNAL \o_Imag3[14]~output_o\ : std_logic;
SIGNAL \o_Imag3[15]~output_o\ : std_logic;
SIGNAL \o_Imag3[16]~output_o\ : std_logic;
SIGNAL \o_Imag3[17]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT[0]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT[1]~output_o\ : std_logic;
SIGNAL \o_NEW_RESULT[2]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.sample_count[0]~0_combout\ : std_logic;
SIGNAL \i_RESET~input_o\ : std_logic;
SIGNAL \INST1_sampler|r_NEW_DATA~feeder_combout\ : std_logic;
SIGNAL \INST1_sampler|r_NEW_DATA~q\ : std_logic;
SIGNAL \INST1_Goertzel|reg.state.OUTPUT~q\ : std_logic;
SIGNAL \INST1_Goertzel|reg.state.DONE~q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector0~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~9_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~2_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~3_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~5_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~8_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~11_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~6_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~10_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~12_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector0~1_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.state.IDLE~q\ : std_logic;
SIGNAL \INST1_Goertzel|reg~8_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.state.CALCULATE~q\ : std_logic;
SIGNAL \INST1_Goertzel|reg.state.STORE~q\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~1\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~2_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~3\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~4_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~5\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~6_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg~7_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~7\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~8_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~9\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~10_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~11\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~12_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg~6_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~13\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~14_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg~5_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~15\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~16_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~17\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~18_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~19\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~20_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~21\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~22_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~23\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~24_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~25\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~26_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~27\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~28_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~29\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~30_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~31\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~32_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~33\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~34_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~35\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~36_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~37\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~38_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~39\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~40_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~41\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~42_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~43\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~44_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~45\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~46_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~47\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~48_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~49\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~50_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~51\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~52_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~53\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~54_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~55\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~56_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~57\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~58_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~59\ : std_logic;
SIGNAL \INST1_Goertzel|Add3~60_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~1_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~4_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Equal0~7_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector2~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector2~1_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector33~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector23~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector5~0_combout\ : std_logic;
SIGNAL \i_ADC1[0]~input_o\ : std_logic;
SIGNAL \i_ADC1[1]~input_o\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector38~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector37~0_combout\ : std_logic;
SIGNAL \i_ADC1[3]~input_o\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector36~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector35~0_combout\ : std_logic;
SIGNAL \i_ADC1[6]~input_o\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector32~0_combout\ : std_logic;
SIGNAL \i_ADC1[9]~input_o\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector29~0_combout\ : std_logic;
SIGNAL \i_ADC1[11]~input_o\ : std_logic;
SIGNAL \INST1_sampler|r_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector28~0_combout\ : std_logic;
SIGNAL \i_ADC1[10]~input_o\ : std_logic;
SIGNAL \i_ADC1[8]~input_o\ : std_logic;
SIGNAL \i_ADC1[7]~input_o\ : std_logic;
SIGNAL \i_ADC1[5]~input_o\ : std_logic;
SIGNAL \i_ADC1[4]~input_o\ : std_logic;
SIGNAL \i_ADC1[2]~input_o\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~1\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~3\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~5\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~7\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~9\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~11\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~13\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~15\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~17\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~19\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~21\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~23\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~25\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~27\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~29\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~31\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~33\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~34_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector23~1_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector24~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector25~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector26~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector27~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector30~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector31~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector34~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector39~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Selector40~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[0]~19\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[1]~21\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[2]~23\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[3]~25\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[4]~27\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[5]~29\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[6]~31\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[7]~33\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[8]~35\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[9]~37\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[10]~39\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[11]~41\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[12]~43\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[13]~45\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[14]~47\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[15]~49\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[16]~51\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[17]~52_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector5~1_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~32_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[16]~50_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector6~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~30_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[15]~48_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector7~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~28_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[14]~46_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector8~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~26_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[13]~44_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector9~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~24_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[12]~42_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector10~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~22_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[11]~40_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector11~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~20_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[10]~38_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector12~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~18_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[9]~36_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector13~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~16_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[8]~34_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector14~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~12_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[6]~30_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector16~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~10_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[5]~28_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector17~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~8_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[4]~26_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector18~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~6_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[3]~24_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector19~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~4_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[2]~22_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector20~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~2_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[1]~20_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector21~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[0]~18_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector22~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|Add0~14_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA[7]~32_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector15~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][0]~18_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][0]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[0]~18_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][0]~19\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][1]~20_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][1]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[0]~19\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[1]~20_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][1]~21\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][2]~22_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][2]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[1]~21\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[2]~22_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][2]~23\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][3]~24_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][3]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[2]~23\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[3]~24_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][3]~25\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][4]~26_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][4]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[3]~25\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[4]~26_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][4]~27\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][5]~28_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][5]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[4]~27\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[5]~28_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][5]~29\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][6]~30_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][6]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[5]~29\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[6]~30_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][6]~31\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][7]~32_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][7]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[6]~31\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[7]~32_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][7]~33\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][8]~34_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][8]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[7]~33\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[8]~34_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][8]~35\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][9]~36_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][9]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[8]~35\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[9]~36_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][9]~37\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][10]~38_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][10]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[9]~37\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[10]~38_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][10]~39\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][11]~40_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][11]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[10]~39\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[11]~40_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][11]~41\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][12]~42_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][12]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[11]~41\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[12]~42_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][12]~43\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][13]~44_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][13]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[12]~43\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[13]~44_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][13]~45\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][14]~46_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][14]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[13]~45\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[14]~46_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][14]~47\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][15]~48_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][15]~q\ : std_logic;
SIGNAL \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[14]~47\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[15]~48_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][15]~49\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][16]~50_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][16]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[15]~49\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[16]~50_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][16]~51\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][17]~52_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.result[0][17]~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[16]~51\ : std_logic;
SIGNAL \INST1_Goertzel|r_Real[17]~52_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector34~0_combout\ : std_logic;
SIGNAL \i_ADC2[6]~input_o\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector40~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector39~0_combout\ : std_logic;
SIGNAL \i_ADC2[1]~input_o\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector38~0_combout\ : std_logic;
SIGNAL \i_ADC2[3]~input_o\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector36~0_combout\ : std_logic;
SIGNAL \i_ADC2[4]~input_o\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector33~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector31~0_combout\ : std_logic;
SIGNAL \i_ADC2[10]~input_o\ : std_logic;
SIGNAL \i_ADC2[11]~input_o\ : std_logic;
SIGNAL \INST2_sampler|r_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector27~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector26~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector25~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector24~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector23~0_combout\ : std_logic;
SIGNAL \i_ADC2[9]~input_o\ : std_logic;
SIGNAL \i_ADC2[8]~input_o\ : std_logic;
SIGNAL \i_ADC2[7]~input_o\ : std_logic;
SIGNAL \i_ADC2[5]~input_o\ : std_logic;
SIGNAL \i_ADC2[2]~input_o\ : std_logic;
SIGNAL \i_ADC2[0]~input_o\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~1\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~3\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~5\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~7\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~9\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~11\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~13\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~15\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~17\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~19\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~21\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~23\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~25\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~27\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~29\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~31\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~33\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~34_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector28~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector29~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector30~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector32~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector35~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST2_Goertzel|Selector37~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[0]~19\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[1]~21\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[2]~23\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[3]~25\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[4]~27\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[5]~29\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[6]~31\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[7]~33\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[8]~35\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[9]~37\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[10]~39\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[11]~41\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[12]~43\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[13]~45\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[14]~47\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[15]~49\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[16]~51\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[17]~52_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector5~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~32_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[16]~50_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector6~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~30_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[15]~48_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector7~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~28_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[14]~46_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector8~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~26_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[13]~44_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector9~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~24_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[12]~42_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector10~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~22_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[11]~40_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector11~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~20_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[10]~38_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector12~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~18_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[9]~36_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector13~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~16_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[8]~34_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector14~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~14_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[7]~32_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector15~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~10_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[5]~28_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector17~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~8_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[4]~26_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector18~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~6_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[3]~24_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector19~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~4_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[2]~22_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector20~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~2_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[1]~20_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector21~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[0]~18_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector22~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Add0~12_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.VA[6]~30_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Selector16~0_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][0]~18_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][0]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[0]~18_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][0]~19\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][1]~20_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][1]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[0]~19\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[1]~20_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][1]~21\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][2]~22_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][2]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[1]~21\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[2]~22_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][2]~23\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][3]~24_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][3]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[2]~23\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[3]~24_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][3]~25\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][4]~26_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][4]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[3]~25\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[4]~26_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][4]~27\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][5]~28_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][5]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[4]~27\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[5]~28_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][5]~29\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][6]~30_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][6]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[5]~29\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[6]~30_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][6]~31\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][7]~32_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][7]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[6]~31\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[7]~32_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][7]~33\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][8]~34_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][8]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[7]~33\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[8]~34_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][8]~35\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][9]~36_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][9]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[8]~35\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[9]~36_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][9]~37\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][10]~38_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][10]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[9]~37\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[10]~38_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][10]~39\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][11]~40_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][11]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[10]~39\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[11]~40_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][11]~41\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][12]~42_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][12]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[11]~41\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[12]~42_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][12]~43\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][13]~44_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][13]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[12]~43\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[13]~44_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][13]~45\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][14]~46_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][14]~q\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[13]~45\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[14]~46_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][14]~47\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][15]~48_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][15]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[14]~47\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[15]~48_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][15]~49\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][16]~50_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][16]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[15]~49\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[16]~50_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][16]~51\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][17]~52_combout\ : std_logic;
SIGNAL \INST2_Goertzel|reg.result[0][17]~q\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[16]~51\ : std_logic;
SIGNAL \INST2_Goertzel|r_Real[17]~52_combout\ : std_logic;
SIGNAL \i_ADC3[0]~input_o\ : std_logic;
SIGNAL \i_ADC3[1]~input_o\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector38~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector37~0_combout\ : std_logic;
SIGNAL \i_ADC3[3]~input_o\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector36~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector35~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector33~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector32~0_combout\ : std_logic;
SIGNAL \i_ADC3[8]~input_o\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector29~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector28~0_combout\ : std_logic;
SIGNAL \i_ADC3[11]~input_o\ : std_logic;
SIGNAL \INST3_sampler|r_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \i_ADC3[10]~input_o\ : std_logic;
SIGNAL \i_ADC3[9]~input_o\ : std_logic;
SIGNAL \i_ADC3[7]~input_o\ : std_logic;
SIGNAL \i_ADC3[6]~input_o\ : std_logic;
SIGNAL \i_ADC3[5]~input_o\ : std_logic;
SIGNAL \i_ADC3[4]~input_o\ : std_logic;
SIGNAL \i_ADC3[2]~input_o\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~1\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~3\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~5\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~7\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~9\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~11\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~13\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~15\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~17\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~19\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~21\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~23\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~25\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~27\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~29\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~31\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~33\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~34_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector23~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector24~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector25~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector26~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector27~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector30~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector31~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector34~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector39~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[0]~19\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[1]~21\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[2]~23\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[3]~25\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[4]~27\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[5]~29\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[6]~31\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[7]~33\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[8]~35\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[9]~37\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[10]~39\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[11]~41\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[12]~43\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[13]~45\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[14]~47\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[15]~49\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[16]~51\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[17]~52_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector5~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~32_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[16]~50_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector6~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~30_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[15]~48_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector7~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~28_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[14]~46_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector8~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~26_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[13]~44_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector9~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~24_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[12]~42_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector10~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~22_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[11]~40_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector11~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~20_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[10]~38_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector12~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~18_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[9]~36_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector13~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~16_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[8]~34_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector14~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~14_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[7]~32_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector15~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~12_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[6]~30_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector16~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~10_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[5]~28_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector17~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~8_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[4]~26_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector18~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~6_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[3]~24_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector19~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~4_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[2]~22_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector20~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~2_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[1]~20_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector21~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|Add0~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA[0]~18_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Selector22~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \INST3_Goertzel|Selector40~0_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][0]~18_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][0]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[0]~18_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][0]~19\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][1]~20_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][1]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[0]~19\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[1]~20_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][1]~21\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][2]~22_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][2]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[1]~21\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[2]~22_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][2]~23\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][3]~24_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][3]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[2]~23\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[3]~24_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][3]~25\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][4]~26_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][4]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[3]~25\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[4]~26_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][4]~27\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][5]~28_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][5]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[4]~27\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[5]~28_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][5]~29\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][6]~30_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][6]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[5]~29\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[6]~30_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][6]~31\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][7]~32_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][7]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[6]~31\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[7]~32_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][7]~33\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][8]~34_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][8]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[7]~33\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[8]~34_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][8]~35\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][9]~36_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][9]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[8]~35\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[9]~36_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][9]~37\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][10]~38_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][10]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[9]~37\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[10]~38_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][10]~39\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][11]~40_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][11]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[10]~39\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[11]~40_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][11]~41\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][12]~42_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][12]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[11]~41\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[12]~42_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][12]~43\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][13]~44_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][13]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[12]~43\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[13]~44_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][13]~45\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][14]~46_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][14]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[13]~45\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[14]~46_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][14]~47\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][15]~48_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][15]~q\ : std_logic;
SIGNAL \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[14]~47\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[15]~48_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][15]~49\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][16]~50_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][16]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[15]~49\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[16]~50_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][16]~51\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][17]~52_combout\ : std_logic;
SIGNAL \INST3_Goertzel|reg.result[0][17]~q\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[16]~51\ : std_logic;
SIGNAL \INST3_Goertzel|r_Real[17]~52_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[4]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[5]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[6]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[7]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[8]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[9]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[10]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[11]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[12]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[13]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[14]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[15]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[16]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag[17]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[4]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[5]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[6]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[7]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[8]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[9]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[10]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[11]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[12]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[13]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[14]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[15]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[16]~feeder_combout\ : std_logic;
SIGNAL \INST2_Goertzel|r_Imag[17]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[0]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[1]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[2]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[3]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[4]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[5]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[6]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[7]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[8]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[9]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[10]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[11]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[12]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[13]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[14]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[15]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[16]~feeder_combout\ : std_logic;
SIGNAL \INST3_Goertzel|r_Imag[17]~feeder_combout\ : std_logic;
SIGNAL \INST1_Goertzel|Selector4~0_combout\ : std_logic;
SIGNAL \INST1_Goertzel|reg.done~q\ : std_logic;
SIGNAL \INST1_Goertzel|r_Imag\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_sampler|r_DATA\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \INST2_Goertzel|r_Imag\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|r_Real\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|reg.VA_prev2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|reg.sample_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \INST3_Goertzel|reg.VA\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|r_Imag\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST2_Goertzel|reg.VA\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_sampler|r_DATA\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \INST1_Goertzel|reg.VA\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST1_Goertzel|reg.VA_prev2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST2_sampler|r_DATA\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \INST3_Goertzel|reg.VA_prev2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \INST3_Goertzel|r_Real\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST1_Goertzel|r_Real\ : std_logic_vector(35 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RESET <= i_RESET;
ww_i_ADC1 <= i_ADC1;
ww_i_ADC2 <= i_ADC2;
ww_i_ADC3 <= i_ADC3;
o_Real1 <= ww_o_Real1;
o_Real2 <= ww_o_Real2;
o_Real3 <= ww_o_Real3;
o_Imag1 <= ww_o_Imag1;
o_Imag2 <= ww_o_Imag2;
o_Imag3 <= ww_o_Imag3;
o_NEW_RESULT <= ww_o_NEW_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~6\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~5\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~4\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~3\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~2\ & \INST1_Goertzel|Mult2|auto_generated|mac_mult1~1\ & 
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~0\);

\INST1_Goertzel|Mult2|auto_generated|mac_out2~0\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~1\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~2\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~3\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~4\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~5\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~6\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~dataout\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ <= \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~6\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~5\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~4\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~3\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~2\ & \INST2_Goertzel|Mult2|auto_generated|mac_mult1~1\ & 
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~0\);

\INST2_Goertzel|Mult2|auto_generated|mac_out2~0\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~1\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~2\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~3\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~4\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~5\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~6\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~dataout\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ <= \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~6\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~5\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~4\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~3\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~2\ & \INST3_Goertzel|Mult2|auto_generated|mac_mult1~1\ & 
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~0\);

\INST3_Goertzel|Mult2|auto_generated|mac_out2~0\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~1\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~2\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~3\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~4\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~5\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~6\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~dataout\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ <= \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~7\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~6\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~5\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~4\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~3\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~2\ & \INST1_Goertzel|Mult3|auto_generated|mac_mult1~1\ & 
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~0\);

\INST1_Goertzel|Mult3|auto_generated|mac_out2~0\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~1\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~2\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~3\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~4\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~5\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~6\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~7\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~dataout\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ <= \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~7\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~6\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~5\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~4\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~3\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~2\ & \INST2_Goertzel|Mult3|auto_generated|mac_mult1~1\ & 
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~0\);

\INST2_Goertzel|Mult3|auto_generated|mac_out2~0\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~1\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~2\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~3\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~4\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~5\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~6\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~7\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~dataout\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ <= \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~7\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~6\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~5\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~4\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~3\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~2\ & \INST3_Goertzel|Mult3|auto_generated|mac_mult1~1\ & 
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~0\);

\INST3_Goertzel|Mult3|auto_generated|mac_out2~0\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~1\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~2\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~3\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~4\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~5\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~6\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~7\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~dataout\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT1\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT2\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT3\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT4\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT5\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT6\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT7\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT8\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT9\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT10\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT11\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT12\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\ <= \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~5\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~4\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~3\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~2\ & \INST1_Goertzel|Mult1|auto_generated|mac_mult1~1\ & 
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~0\);

\INST1_Goertzel|Mult1|auto_generated|mac_out2~0\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~1\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~2\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~3\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~4\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~5\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~dataout\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST1_Goertzel|Mult2|auto_generated|mac_mult1~0\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~1\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~2\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~3\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~4\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~5\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~6\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST1_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~5\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~4\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~3\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~2\ & \INST2_Goertzel|Mult1|auto_generated|mac_mult1~1\ & 
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~0\);

\INST2_Goertzel|Mult1|auto_generated|mac_out2~0\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~1\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~2\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~3\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~4\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~5\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~dataout\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST2_Goertzel|Mult2|auto_generated|mac_mult1~0\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~1\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~2\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~3\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~4\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~5\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~6\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST2_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~5\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~4\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~3\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~2\ & \INST3_Goertzel|Mult1|auto_generated|mac_mult1~1\ & 
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~0\);

\INST3_Goertzel|Mult1|auto_generated|mac_out2~0\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~1\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~2\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~3\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~4\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~5\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~dataout\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST3_Goertzel|Mult2|auto_generated|mac_mult1~0\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~1\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~2\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~3\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~4\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~5\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~6\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~dataout\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST3_Goertzel|Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST1_Goertzel|Mult3|auto_generated|mac_mult1~0\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~1\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~2\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~3\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~4\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~5\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~6\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~7\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST1_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST2_Goertzel|Mult3|auto_generated|mac_mult1~0\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~1\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~2\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~3\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~4\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~5\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~6\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~7\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST2_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\ & 
\INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

\INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST3_Goertzel|Mult3|auto_generated|mac_mult1~0\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~1\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~2\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~3\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~4\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~5\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~6\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~7\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~dataout\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST3_Goertzel|Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\INST1_Goertzel|Selector5~1_combout\ & \INST1_Goertzel|Selector6~0_combout\ & \INST1_Goertzel|Selector7~0_combout\ & \INST1_Goertzel|Selector8~0_combout\ & \INST1_Goertzel|Selector9~0_combout\
& \INST1_Goertzel|Selector10~0_combout\ & \INST1_Goertzel|Selector11~0_combout\ & \INST1_Goertzel|Selector12~0_combout\ & \INST1_Goertzel|Selector13~0_combout\ & \INST1_Goertzel|Selector14~0_combout\ & \INST1_Goertzel|Selector15~0_combout\ & 
\INST1_Goertzel|Selector16~0_combout\ & \INST1_Goertzel|Selector17~0_combout\ & \INST1_Goertzel|Selector18~0_combout\ & \INST1_Goertzel|Selector19~0_combout\ & \INST1_Goertzel|Selector20~0_combout\ & \INST1_Goertzel|Selector21~0_combout\ & 
\INST1_Goertzel|Selector22~0_combout\);

\INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST1_Goertzel|Mult1|auto_generated|mac_mult1~0\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~1\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~2\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~3\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~4\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~5\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST1_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\INST2_Goertzel|Selector5~0_combout\ & \INST2_Goertzel|Selector6~0_combout\ & \INST2_Goertzel|Selector7~0_combout\ & \INST2_Goertzel|Selector8~0_combout\ & \INST2_Goertzel|Selector9~0_combout\
& \INST2_Goertzel|Selector10~0_combout\ & \INST2_Goertzel|Selector11~0_combout\ & \INST2_Goertzel|Selector12~0_combout\ & \INST2_Goertzel|Selector13~0_combout\ & \INST2_Goertzel|Selector14~0_combout\ & \INST2_Goertzel|Selector15~0_combout\ & 
\INST2_Goertzel|Selector16~0_combout\ & \INST2_Goertzel|Selector17~0_combout\ & \INST2_Goertzel|Selector18~0_combout\ & \INST2_Goertzel|Selector19~0_combout\ & \INST2_Goertzel|Selector20~0_combout\ & \INST2_Goertzel|Selector21~0_combout\ & 
\INST2_Goertzel|Selector22~0_combout\);

\INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST2_Goertzel|Mult1|auto_generated|mac_mult1~0\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~1\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~2\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~3\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~4\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~5\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST2_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\INST3_Goertzel|Selector5~0_combout\ & \INST3_Goertzel|Selector6~0_combout\ & \INST3_Goertzel|Selector7~0_combout\ & \INST3_Goertzel|Selector8~0_combout\ & \INST3_Goertzel|Selector9~0_combout\
& \INST3_Goertzel|Selector10~0_combout\ & \INST3_Goertzel|Selector11~0_combout\ & \INST3_Goertzel|Selector12~0_combout\ & \INST3_Goertzel|Selector13~0_combout\ & \INST3_Goertzel|Selector14~0_combout\ & \INST3_Goertzel|Selector15~0_combout\ & 
\INST3_Goertzel|Selector16~0_combout\ & \INST3_Goertzel|Selector17~0_combout\ & \INST3_Goertzel|Selector18~0_combout\ & \INST3_Goertzel|Selector19~0_combout\ & \INST3_Goertzel|Selector20~0_combout\ & \INST3_Goertzel|Selector21~0_combout\ & 
\INST3_Goertzel|Selector22~0_combout\);

\INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST3_Goertzel|Mult1|auto_generated|mac_mult1~0\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~1\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~2\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~3\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~4\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~5\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~dataout\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST3_Goertzel|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~5\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~4\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~3\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~2\ & \INST1_Goertzel|Mult0|auto_generated|mac_mult1~1\ & 
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~0\);

\INST1_Goertzel|Mult0|auto_generated|mac_out2~0\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~1\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~2\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~3\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~4\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~5\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~dataout\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~5\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~4\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~3\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~2\ & \INST2_Goertzel|Mult0|auto_generated|mac_mult1~1\ & 
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~0\);

\INST2_Goertzel|Mult0|auto_generated|mac_out2~0\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~1\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~2\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~3\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~4\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~5\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~dataout\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~5\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~4\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~3\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~2\ & \INST3_Goertzel|Mult0|auto_generated|mac_mult1~1\ & 
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~0\);

\INST3_Goertzel|Mult0|auto_generated|mac_out2~0\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~1\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~2\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~3\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~4\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~5\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~dataout\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\INST1_Goertzel|Selector5~1_combout\ & \INST1_Goertzel|Selector6~0_combout\ & \INST1_Goertzel|Selector7~0_combout\ & \INST1_Goertzel|Selector8~0_combout\ & \INST1_Goertzel|Selector9~0_combout\
& \INST1_Goertzel|Selector10~0_combout\ & \INST1_Goertzel|Selector11~0_combout\ & \INST1_Goertzel|Selector12~0_combout\ & \INST1_Goertzel|Selector13~0_combout\ & \INST1_Goertzel|Selector14~0_combout\ & \INST1_Goertzel|Selector15~0_combout\ & 
\INST1_Goertzel|Selector16~0_combout\ & \INST1_Goertzel|Selector17~0_combout\ & \INST1_Goertzel|Selector18~0_combout\ & \INST1_Goertzel|Selector19~0_combout\ & \INST1_Goertzel|Selector20~0_combout\ & \INST1_Goertzel|Selector21~0_combout\ & 
\INST1_Goertzel|Selector22~0_combout\);

\INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST1_Goertzel|Mult0|auto_generated|mac_mult1~0\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~1\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~2\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~3\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~4\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~5\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST1_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\INST2_Goertzel|Selector5~0_combout\ & \INST2_Goertzel|Selector6~0_combout\ & \INST2_Goertzel|Selector7~0_combout\ & \INST2_Goertzel|Selector8~0_combout\ & \INST2_Goertzel|Selector9~0_combout\
& \INST2_Goertzel|Selector10~0_combout\ & \INST2_Goertzel|Selector11~0_combout\ & \INST2_Goertzel|Selector12~0_combout\ & \INST2_Goertzel|Selector13~0_combout\ & \INST2_Goertzel|Selector14~0_combout\ & \INST2_Goertzel|Selector15~0_combout\ & 
\INST2_Goertzel|Selector16~0_combout\ & \INST2_Goertzel|Selector17~0_combout\ & \INST2_Goertzel|Selector18~0_combout\ & \INST2_Goertzel|Selector19~0_combout\ & \INST2_Goertzel|Selector20~0_combout\ & \INST2_Goertzel|Selector21~0_combout\ & 
\INST2_Goertzel|Selector22~0_combout\);

\INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST2_Goertzel|Mult0|auto_generated|mac_mult1~0\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~1\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~2\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~3\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~4\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~5\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST2_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\INST3_Goertzel|Selector5~0_combout\ & \INST3_Goertzel|Selector6~0_combout\ & \INST3_Goertzel|Selector7~0_combout\ & \INST3_Goertzel|Selector8~0_combout\ & \INST3_Goertzel|Selector9~0_combout\
& \INST3_Goertzel|Selector10~0_combout\ & \INST3_Goertzel|Selector11~0_combout\ & \INST3_Goertzel|Selector12~0_combout\ & \INST3_Goertzel|Selector13~0_combout\ & \INST3_Goertzel|Selector14~0_combout\ & \INST3_Goertzel|Selector15~0_combout\ & 
\INST3_Goertzel|Selector16~0_combout\ & \INST3_Goertzel|Selector17~0_combout\ & \INST3_Goertzel|Selector18~0_combout\ & \INST3_Goertzel|Selector19~0_combout\ & \INST3_Goertzel|Selector20~0_combout\ & \INST3_Goertzel|Selector21~0_combout\ & 
\INST3_Goertzel|Selector22~0_combout\);

\INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\INST3_Goertzel|Mult0|auto_generated|mac_mult1~0\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~1\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~2\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~3\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~4\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~5\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~dataout\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\INST3_Goertzel|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X0_Y6_N23
\o_Real1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(0),
	devoe => ww_devoe,
	o => \o_Real1[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_Real1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(1),
	devoe => ww_devoe,
	o => \o_Real1[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\o_Real1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(2),
	devoe => ww_devoe,
	o => \o_Real1[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_Real1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(3),
	devoe => ww_devoe,
	o => \o_Real1[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\o_Real1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(4),
	devoe => ww_devoe,
	o => \o_Real1[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\o_Real1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(5),
	devoe => ww_devoe,
	o => \o_Real1[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\o_Real1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(6),
	devoe => ww_devoe,
	o => \o_Real1[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\o_Real1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(7),
	devoe => ww_devoe,
	o => \o_Real1[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\o_Real1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(8),
	devoe => ww_devoe,
	o => \o_Real1[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\o_Real1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(9),
	devoe => ww_devoe,
	o => \o_Real1[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_Real1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(10),
	devoe => ww_devoe,
	o => \o_Real1[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_Real1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(11),
	devoe => ww_devoe,
	o => \o_Real1[11]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\o_Real1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(12),
	devoe => ww_devoe,
	o => \o_Real1[12]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\o_Real1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(13),
	devoe => ww_devoe,
	o => \o_Real1[13]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_Real1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(14),
	devoe => ww_devoe,
	o => \o_Real1[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_Real1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(15),
	devoe => ww_devoe,
	o => \o_Real1[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\o_Real1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(16),
	devoe => ww_devoe,
	o => \o_Real1[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\o_Real1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Real\(17),
	devoe => ww_devoe,
	o => \o_Real1[17]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\o_Real2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(0),
	devoe => ww_devoe,
	o => \o_Real2[0]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\o_Real2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(1),
	devoe => ww_devoe,
	o => \o_Real2[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_Real2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(2),
	devoe => ww_devoe,
	o => \o_Real2[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_Real2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(3),
	devoe => ww_devoe,
	o => \o_Real2[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\o_Real2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(4),
	devoe => ww_devoe,
	o => \o_Real2[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\o_Real2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(5),
	devoe => ww_devoe,
	o => \o_Real2[5]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\o_Real2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(6),
	devoe => ww_devoe,
	o => \o_Real2[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\o_Real2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(7),
	devoe => ww_devoe,
	o => \o_Real2[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_Real2[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(8),
	devoe => ww_devoe,
	o => \o_Real2[8]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\o_Real2[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(9),
	devoe => ww_devoe,
	o => \o_Real2[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_Real2[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(10),
	devoe => ww_devoe,
	o => \o_Real2[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_Real2[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(11),
	devoe => ww_devoe,
	o => \o_Real2[11]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\o_Real2[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(12),
	devoe => ww_devoe,
	o => \o_Real2[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_Real2[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(13),
	devoe => ww_devoe,
	o => \o_Real2[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_Real2[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(14),
	devoe => ww_devoe,
	o => \o_Real2[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\o_Real2[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(15),
	devoe => ww_devoe,
	o => \o_Real2[15]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_Real2[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(16),
	devoe => ww_devoe,
	o => \o_Real2[16]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_Real2[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Real\(17),
	devoe => ww_devoe,
	o => \o_Real2[17]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\o_Real3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(0),
	devoe => ww_devoe,
	o => \o_Real3[0]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\o_Real3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(1),
	devoe => ww_devoe,
	o => \o_Real3[1]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\o_Real3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(2),
	devoe => ww_devoe,
	o => \o_Real3[2]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\o_Real3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(3),
	devoe => ww_devoe,
	o => \o_Real3[3]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\o_Real3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(4),
	devoe => ww_devoe,
	o => \o_Real3[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\o_Real3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(5),
	devoe => ww_devoe,
	o => \o_Real3[5]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\o_Real3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(6),
	devoe => ww_devoe,
	o => \o_Real3[6]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\o_Real3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(7),
	devoe => ww_devoe,
	o => \o_Real3[7]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\o_Real3[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(8),
	devoe => ww_devoe,
	o => \o_Real3[8]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\o_Real3[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(9),
	devoe => ww_devoe,
	o => \o_Real3[9]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\o_Real3[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(10),
	devoe => ww_devoe,
	o => \o_Real3[10]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\o_Real3[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(11),
	devoe => ww_devoe,
	o => \o_Real3[11]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\o_Real3[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(12),
	devoe => ww_devoe,
	o => \o_Real3[12]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\o_Real3[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(13),
	devoe => ww_devoe,
	o => \o_Real3[13]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\o_Real3[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(14),
	devoe => ww_devoe,
	o => \o_Real3[14]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\o_Real3[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(15),
	devoe => ww_devoe,
	o => \o_Real3[15]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_Real3[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(16),
	devoe => ww_devoe,
	o => \o_Real3[16]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\o_Real3[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Real\(17),
	devoe => ww_devoe,
	o => \o_Real3[17]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\o_Imag1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(0),
	devoe => ww_devoe,
	o => \o_Imag1[0]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\o_Imag1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(1),
	devoe => ww_devoe,
	o => \o_Imag1[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_Imag1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(2),
	devoe => ww_devoe,
	o => \o_Imag1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_Imag1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(3),
	devoe => ww_devoe,
	o => \o_Imag1[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\o_Imag1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(4),
	devoe => ww_devoe,
	o => \o_Imag1[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_Imag1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(5),
	devoe => ww_devoe,
	o => \o_Imag1[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\o_Imag1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(6),
	devoe => ww_devoe,
	o => \o_Imag1[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_Imag1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(7),
	devoe => ww_devoe,
	o => \o_Imag1[7]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_Imag1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(8),
	devoe => ww_devoe,
	o => \o_Imag1[8]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\o_Imag1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(9),
	devoe => ww_devoe,
	o => \o_Imag1[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_Imag1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(10),
	devoe => ww_devoe,
	o => \o_Imag1[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\o_Imag1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(11),
	devoe => ww_devoe,
	o => \o_Imag1[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_Imag1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(12),
	devoe => ww_devoe,
	o => \o_Imag1[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\o_Imag1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(13),
	devoe => ww_devoe,
	o => \o_Imag1[13]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\o_Imag1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(14),
	devoe => ww_devoe,
	o => \o_Imag1[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_Imag1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(15),
	devoe => ww_devoe,
	o => \o_Imag1[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o_Imag1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(16),
	devoe => ww_devoe,
	o => \o_Imag1[16]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\o_Imag1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|r_Imag\(17),
	devoe => ww_devoe,
	o => \o_Imag1[17]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_Imag2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(0),
	devoe => ww_devoe,
	o => \o_Imag2[0]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\o_Imag2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(1),
	devoe => ww_devoe,
	o => \o_Imag2[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_Imag2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(2),
	devoe => ww_devoe,
	o => \o_Imag2[2]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\o_Imag2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(3),
	devoe => ww_devoe,
	o => \o_Imag2[3]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_Imag2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(4),
	devoe => ww_devoe,
	o => \o_Imag2[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\o_Imag2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(5),
	devoe => ww_devoe,
	o => \o_Imag2[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_Imag2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(6),
	devoe => ww_devoe,
	o => \o_Imag2[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\o_Imag2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(7),
	devoe => ww_devoe,
	o => \o_Imag2[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\o_Imag2[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(8),
	devoe => ww_devoe,
	o => \o_Imag2[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\o_Imag2[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(9),
	devoe => ww_devoe,
	o => \o_Imag2[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_Imag2[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(10),
	devoe => ww_devoe,
	o => \o_Imag2[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_Imag2[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(11),
	devoe => ww_devoe,
	o => \o_Imag2[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\o_Imag2[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(12),
	devoe => ww_devoe,
	o => \o_Imag2[12]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\o_Imag2[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(13),
	devoe => ww_devoe,
	o => \o_Imag2[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_Imag2[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(14),
	devoe => ww_devoe,
	o => \o_Imag2[14]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_Imag2[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(15),
	devoe => ww_devoe,
	o => \o_Imag2[15]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_Imag2[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(16),
	devoe => ww_devoe,
	o => \o_Imag2[16]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\o_Imag2[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2_Goertzel|r_Imag\(17),
	devoe => ww_devoe,
	o => \o_Imag2[17]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\o_Imag3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(0),
	devoe => ww_devoe,
	o => \o_Imag3[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\o_Imag3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(1),
	devoe => ww_devoe,
	o => \o_Imag3[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\o_Imag3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(2),
	devoe => ww_devoe,
	o => \o_Imag3[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\o_Imag3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(3),
	devoe => ww_devoe,
	o => \o_Imag3[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\o_Imag3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(4),
	devoe => ww_devoe,
	o => \o_Imag3[4]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\o_Imag3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(5),
	devoe => ww_devoe,
	o => \o_Imag3[5]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\o_Imag3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(6),
	devoe => ww_devoe,
	o => \o_Imag3[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_Imag3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(7),
	devoe => ww_devoe,
	o => \o_Imag3[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\o_Imag3[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(8),
	devoe => ww_devoe,
	o => \o_Imag3[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\o_Imag3[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(9),
	devoe => ww_devoe,
	o => \o_Imag3[9]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\o_Imag3[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(10),
	devoe => ww_devoe,
	o => \o_Imag3[10]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\o_Imag3[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(11),
	devoe => ww_devoe,
	o => \o_Imag3[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\o_Imag3[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(12),
	devoe => ww_devoe,
	o => \o_Imag3[12]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\o_Imag3[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(13),
	devoe => ww_devoe,
	o => \o_Imag3[13]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\o_Imag3[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(14),
	devoe => ww_devoe,
	o => \o_Imag3[14]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\o_Imag3[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(15),
	devoe => ww_devoe,
	o => \o_Imag3[15]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\o_Imag3[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(16),
	devoe => ww_devoe,
	o => \o_Imag3[16]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\o_Imag3[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3_Goertzel|r_Imag\(17),
	devoe => ww_devoe,
	o => \o_Imag3[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\o_NEW_RESULT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|reg.done~q\,
	devoe => ww_devoe,
	o => \o_NEW_RESULT[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\o_NEW_RESULT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|reg.done~q\,
	devoe => ww_devoe,
	o => \o_NEW_RESULT[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\o_NEW_RESULT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1_Goertzel|reg.done~q\,
	devoe => ww_devoe,
	o => \o_NEW_RESULT[2]~output_o\);

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

-- Location: LCCOMB_X23_Y8_N2
\INST1_Goertzel|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~0_combout\ = \INST1_Goertzel|reg.sample_count\(0) $ (GND)
-- \INST1_Goertzel|Add3~1\ = CARRY(!\INST1_Goertzel|reg.sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(0),
	datad => VCC,
	combout => \INST1_Goertzel|Add3~0_combout\,
	cout => \INST1_Goertzel|Add3~1\);

-- Location: LCCOMB_X23_Y8_N0
\INST1_Goertzel|reg.sample_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.sample_count[0]~0_combout\ = !\INST1_Goertzel|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Add3~0_combout\,
	combout => \INST1_Goertzel|reg.sample_count[0]~0_combout\);

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

-- Location: LCCOMB_X21_Y7_N24
\INST1_sampler|r_NEW_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_sampler|r_NEW_DATA~feeder_combout\ = \i_RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RESET~input_o\,
	combout => \INST1_sampler|r_NEW_DATA~feeder_combout\);

-- Location: FF_X21_Y7_N25
\INST1_sampler|r_NEW_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_sampler|r_NEW_DATA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_NEW_DATA~q\);

-- Location: FF_X22_Y7_N5
\INST1_Goertzel|reg.state.OUTPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.state.OUTPUT~q\);

-- Location: FF_X22_Y7_N3
\INST1_Goertzel|reg.state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|reg.state.OUTPUT~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.state.DONE~q\);

-- Location: LCCOMB_X22_Y7_N4
\INST1_Goertzel|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector0~0_combout\ = (\INST1_Goertzel|reg.state.DONE~q\) # ((!\INST1_Goertzel|reg.state.IDLE~q\ & !\INST1_sampler|r_NEW_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.IDLE~q\,
	datab => \INST1_sampler|r_NEW_DATA~q\,
	datad => \INST1_Goertzel|reg.state.DONE~q\,
	combout => \INST1_Goertzel|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\INST1_Goertzel|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~9_combout\ = (!\INST1_Goertzel|reg.sample_count\(23) & (!\INST1_Goertzel|reg.sample_count\(1) & (!\INST1_Goertzel|reg.sample_count\(2) & \INST1_Goertzel|reg.sample_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(23),
	datab => \INST1_Goertzel|reg.sample_count\(1),
	datac => \INST1_Goertzel|reg.sample_count\(2),
	datad => \INST1_Goertzel|reg.sample_count\(0),
	combout => \INST1_Goertzel|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y7_N22
\INST1_Goertzel|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~2_combout\ = (!\INST1_Goertzel|reg.sample_count\(21) & (!\INST1_Goertzel|reg.sample_count\(22) & (!\INST1_Goertzel|reg.sample_count\(19) & !\INST1_Goertzel|reg.sample_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(21),
	datab => \INST1_Goertzel|reg.sample_count\(22),
	datac => \INST1_Goertzel|reg.sample_count\(19),
	datad => \INST1_Goertzel|reg.sample_count\(20),
	combout => \INST1_Goertzel|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y7_N10
\INST1_Goertzel|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~3_combout\ = (!\INST1_Goertzel|reg.sample_count\(18) & (!\INST1_Goertzel|reg.sample_count\(17) & (!\INST1_Goertzel|reg.sample_count\(15) & !\INST1_Goertzel|reg.sample_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(18),
	datab => \INST1_Goertzel|reg.sample_count\(17),
	datac => \INST1_Goertzel|reg.sample_count\(15),
	datad => \INST1_Goertzel|reg.sample_count\(16),
	combout => \INST1_Goertzel|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y8_N4
\INST1_Goertzel|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~5_combout\ = (!\INST1_Goertzel|reg.sample_count\(10) & (!\INST1_Goertzel|reg.sample_count\(9) & (\INST1_Goertzel|reg.sample_count\(7) & !\INST1_Goertzel|reg.sample_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(10),
	datab => \INST1_Goertzel|reg.sample_count\(9),
	datac => \INST1_Goertzel|reg.sample_count\(7),
	datad => \INST1_Goertzel|reg.sample_count\(8),
	combout => \INST1_Goertzel|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y8_N24
\INST1_Goertzel|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~8_combout\ = (!\INST1_Goertzel|reg.sample_count\(14) & (!\INST1_Goertzel|reg.sample_count\(13) & (!\INST1_Goertzel|reg.sample_count\(12) & !\INST1_Goertzel|reg.sample_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(14),
	datab => \INST1_Goertzel|reg.sample_count\(13),
	datac => \INST1_Goertzel|reg.sample_count\(12),
	datad => \INST1_Goertzel|reg.sample_count\(11),
	combout => \INST1_Goertzel|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y7_N28
\INST1_Goertzel|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~11_combout\ = (\INST1_Goertzel|Equal0~3_combout\ & (\INST1_Goertzel|Equal0~0_combout\ & (\INST1_Goertzel|Equal0~5_combout\ & \INST1_Goertzel|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~3_combout\,
	datab => \INST1_Goertzel|Equal0~0_combout\,
	datac => \INST1_Goertzel|Equal0~5_combout\,
	datad => \INST1_Goertzel|Equal0~8_combout\,
	combout => \INST1_Goertzel|Equal0~11_combout\);

-- Location: LCCOMB_X22_Y8_N30
\INST1_Goertzel|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~6_combout\ = (\INST1_Goertzel|reg.sample_count\(6) & (!\INST1_Goertzel|reg.sample_count\(5) & (!\INST1_Goertzel|reg.sample_count\(4) & \INST1_Goertzel|reg.sample_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(6),
	datab => \INST1_Goertzel|reg.sample_count\(5),
	datac => \INST1_Goertzel|reg.sample_count\(4),
	datad => \INST1_Goertzel|reg.sample_count\(3),
	combout => \INST1_Goertzel|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y7_N6
\INST1_Goertzel|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~10_combout\ = (\INST1_Goertzel|Equal0~6_combout\ & (!\INST1_Goertzel|reg.sample_count\(26) & (!\INST1_Goertzel|reg.sample_count\(25) & !\INST1_Goertzel|reg.sample_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~6_combout\,
	datab => \INST1_Goertzel|reg.sample_count\(26),
	datac => \INST1_Goertzel|reg.sample_count\(25),
	datad => \INST1_Goertzel|reg.sample_count\(24),
	combout => \INST1_Goertzel|Equal0~10_combout\);

-- Location: LCCOMB_X22_Y7_N0
\INST1_Goertzel|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~12_combout\ = (\INST1_Goertzel|Equal0~9_combout\ & (\INST1_Goertzel|Equal0~2_combout\ & (\INST1_Goertzel|Equal0~11_combout\ & \INST1_Goertzel|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~9_combout\,
	datab => \INST1_Goertzel|Equal0~2_combout\,
	datac => \INST1_Goertzel|Equal0~11_combout\,
	datad => \INST1_Goertzel|Equal0~10_combout\,
	combout => \INST1_Goertzel|Equal0~12_combout\);

-- Location: LCCOMB_X22_Y7_N12
\INST1_Goertzel|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector0~1_combout\ = (!\INST1_Goertzel|Selector0~0_combout\ & ((\INST1_Goertzel|Equal0~12_combout\) # (!\INST1_Goertzel|reg.state.STORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|Selector0~0_combout\,
	datad => \INST1_Goertzel|Equal0~12_combout\,
	combout => \INST1_Goertzel|Selector0~1_combout\);

-- Location: FF_X22_Y7_N13
\INST1_Goertzel|reg.state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.state.IDLE~q\);

-- Location: LCCOMB_X22_Y7_N8
\INST1_Goertzel|reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg~8_combout\ = (\INST1_sampler|r_NEW_DATA~q\ & !\INST1_Goertzel|reg.state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_sampler|r_NEW_DATA~q\,
	datad => \INST1_Goertzel|reg.state.IDLE~q\,
	combout => \INST1_Goertzel|reg~8_combout\);

-- Location: FF_X22_Y7_N9
\INST1_Goertzel|reg.state.CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.state.CALCULATE~q\);

-- Location: FF_X22_Y7_N17
\INST1_Goertzel|reg.state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|reg.state.CALCULATE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.state.STORE~q\);

-- Location: FF_X23_Y8_N1
\INST1_Goertzel|reg.sample_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.sample_count[0]~0_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(0));

-- Location: LCCOMB_X23_Y8_N4
\INST1_Goertzel|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~2_combout\ = (\INST1_Goertzel|reg.sample_count\(1) & (!\INST1_Goertzel|Add3~1\)) # (!\INST1_Goertzel|reg.sample_count\(1) & ((\INST1_Goertzel|Add3~1\) # (GND)))
-- \INST1_Goertzel|Add3~3\ = CARRY((!\INST1_Goertzel|Add3~1\) # (!\INST1_Goertzel|reg.sample_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(1),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~1\,
	combout => \INST1_Goertzel|Add3~2_combout\,
	cout => \INST1_Goertzel|Add3~3\);

-- Location: FF_X23_Y8_N5
\INST1_Goertzel|reg.sample_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~2_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(1));

-- Location: LCCOMB_X23_Y8_N6
\INST1_Goertzel|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~4_combout\ = (\INST1_Goertzel|reg.sample_count\(2) & (\INST1_Goertzel|Add3~3\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(2) & (!\INST1_Goertzel|Add3~3\ & VCC))
-- \INST1_Goertzel|Add3~5\ = CARRY((\INST1_Goertzel|reg.sample_count\(2) & !\INST1_Goertzel|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(2),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~3\,
	combout => \INST1_Goertzel|Add3~4_combout\,
	cout => \INST1_Goertzel|Add3~5\);

-- Location: FF_X23_Y8_N7
\INST1_Goertzel|reg.sample_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~4_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(2));

-- Location: LCCOMB_X23_Y8_N8
\INST1_Goertzel|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~6_combout\ = (\INST1_Goertzel|reg.sample_count\(3) & (!\INST1_Goertzel|Add3~5\)) # (!\INST1_Goertzel|reg.sample_count\(3) & ((\INST1_Goertzel|Add3~5\) # (GND)))
-- \INST1_Goertzel|Add3~7\ = CARRY((!\INST1_Goertzel|Add3~5\) # (!\INST1_Goertzel|reg.sample_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(3),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~5\,
	combout => \INST1_Goertzel|Add3~6_combout\,
	cout => \INST1_Goertzel|Add3~7\);

-- Location: LCCOMB_X22_Y8_N16
\INST1_Goertzel|reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg~7_combout\ = (\INST1_Goertzel|Add3~6_combout\ & !\INST1_Goertzel|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Add3~6_combout\,
	datad => \INST1_Goertzel|Equal0~12_combout\,
	combout => \INST1_Goertzel|reg~7_combout\);

-- Location: FF_X22_Y8_N17
\INST1_Goertzel|reg.sample_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg~7_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(3));

-- Location: LCCOMB_X23_Y8_N10
\INST1_Goertzel|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~8_combout\ = (\INST1_Goertzel|reg.sample_count\(4) & (\INST1_Goertzel|Add3~7\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(4) & (!\INST1_Goertzel|Add3~7\ & VCC))
-- \INST1_Goertzel|Add3~9\ = CARRY((\INST1_Goertzel|reg.sample_count\(4) & !\INST1_Goertzel|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(4),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~7\,
	combout => \INST1_Goertzel|Add3~8_combout\,
	cout => \INST1_Goertzel|Add3~9\);

-- Location: FF_X23_Y8_N11
\INST1_Goertzel|reg.sample_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~8_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(4));

-- Location: LCCOMB_X23_Y8_N12
\INST1_Goertzel|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~10_combout\ = (\INST1_Goertzel|reg.sample_count\(5) & (!\INST1_Goertzel|Add3~9\)) # (!\INST1_Goertzel|reg.sample_count\(5) & ((\INST1_Goertzel|Add3~9\) # (GND)))
-- \INST1_Goertzel|Add3~11\ = CARRY((!\INST1_Goertzel|Add3~9\) # (!\INST1_Goertzel|reg.sample_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(5),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~9\,
	combout => \INST1_Goertzel|Add3~10_combout\,
	cout => \INST1_Goertzel|Add3~11\);

-- Location: FF_X23_Y8_N13
\INST1_Goertzel|reg.sample_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~10_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(5));

-- Location: LCCOMB_X23_Y8_N14
\INST1_Goertzel|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~12_combout\ = (\INST1_Goertzel|reg.sample_count\(6) & (\INST1_Goertzel|Add3~11\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(6) & (!\INST1_Goertzel|Add3~11\ & VCC))
-- \INST1_Goertzel|Add3~13\ = CARRY((\INST1_Goertzel|reg.sample_count\(6) & !\INST1_Goertzel|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(6),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~11\,
	combout => \INST1_Goertzel|Add3~12_combout\,
	cout => \INST1_Goertzel|Add3~13\);

-- Location: LCCOMB_X22_Y8_N6
\INST1_Goertzel|reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg~6_combout\ = (\INST1_Goertzel|Add3~12_combout\ & !\INST1_Goertzel|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Add3~12_combout\,
	datad => \INST1_Goertzel|Equal0~12_combout\,
	combout => \INST1_Goertzel|reg~6_combout\);

-- Location: FF_X22_Y8_N7
\INST1_Goertzel|reg.sample_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg~6_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(6));

-- Location: LCCOMB_X23_Y8_N16
\INST1_Goertzel|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~14_combout\ = (\INST1_Goertzel|reg.sample_count\(7) & (!\INST1_Goertzel|Add3~13\)) # (!\INST1_Goertzel|reg.sample_count\(7) & ((\INST1_Goertzel|Add3~13\) # (GND)))
-- \INST1_Goertzel|Add3~15\ = CARRY((!\INST1_Goertzel|Add3~13\) # (!\INST1_Goertzel|reg.sample_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(7),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~13\,
	combout => \INST1_Goertzel|Add3~14_combout\,
	cout => \INST1_Goertzel|Add3~15\);

-- Location: LCCOMB_X22_Y8_N8
\INST1_Goertzel|reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg~5_combout\ = (\INST1_Goertzel|Add3~14_combout\ & !\INST1_Goertzel|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|Add3~14_combout\,
	datad => \INST1_Goertzel|Equal0~12_combout\,
	combout => \INST1_Goertzel|reg~5_combout\);

-- Location: FF_X22_Y8_N9
\INST1_Goertzel|reg.sample_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg~5_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(7));

-- Location: LCCOMB_X23_Y8_N18
\INST1_Goertzel|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~16_combout\ = (\INST1_Goertzel|reg.sample_count\(8) & (\INST1_Goertzel|Add3~15\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(8) & (!\INST1_Goertzel|Add3~15\ & VCC))
-- \INST1_Goertzel|Add3~17\ = CARRY((\INST1_Goertzel|reg.sample_count\(8) & !\INST1_Goertzel|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(8),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~15\,
	combout => \INST1_Goertzel|Add3~16_combout\,
	cout => \INST1_Goertzel|Add3~17\);

-- Location: FF_X23_Y8_N19
\INST1_Goertzel|reg.sample_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~16_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(8));

-- Location: LCCOMB_X23_Y8_N20
\INST1_Goertzel|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~18_combout\ = (\INST1_Goertzel|reg.sample_count\(9) & (!\INST1_Goertzel|Add3~17\)) # (!\INST1_Goertzel|reg.sample_count\(9) & ((\INST1_Goertzel|Add3~17\) # (GND)))
-- \INST1_Goertzel|Add3~19\ = CARRY((!\INST1_Goertzel|Add3~17\) # (!\INST1_Goertzel|reg.sample_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(9),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~17\,
	combout => \INST1_Goertzel|Add3~18_combout\,
	cout => \INST1_Goertzel|Add3~19\);

-- Location: FF_X23_Y8_N21
\INST1_Goertzel|reg.sample_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~18_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(9));

-- Location: LCCOMB_X23_Y8_N22
\INST1_Goertzel|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~20_combout\ = (\INST1_Goertzel|reg.sample_count\(10) & (\INST1_Goertzel|Add3~19\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(10) & (!\INST1_Goertzel|Add3~19\ & VCC))
-- \INST1_Goertzel|Add3~21\ = CARRY((\INST1_Goertzel|reg.sample_count\(10) & !\INST1_Goertzel|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(10),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~19\,
	combout => \INST1_Goertzel|Add3~20_combout\,
	cout => \INST1_Goertzel|Add3~21\);

-- Location: FF_X23_Y8_N23
\INST1_Goertzel|reg.sample_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~20_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(10));

-- Location: LCCOMB_X23_Y8_N24
\INST1_Goertzel|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~22_combout\ = (\INST1_Goertzel|reg.sample_count\(11) & (!\INST1_Goertzel|Add3~21\)) # (!\INST1_Goertzel|reg.sample_count\(11) & ((\INST1_Goertzel|Add3~21\) # (GND)))
-- \INST1_Goertzel|Add3~23\ = CARRY((!\INST1_Goertzel|Add3~21\) # (!\INST1_Goertzel|reg.sample_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(11),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~21\,
	combout => \INST1_Goertzel|Add3~22_combout\,
	cout => \INST1_Goertzel|Add3~23\);

-- Location: FF_X23_Y8_N25
\INST1_Goertzel|reg.sample_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~22_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(11));

-- Location: LCCOMB_X23_Y8_N26
\INST1_Goertzel|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~24_combout\ = (\INST1_Goertzel|reg.sample_count\(12) & (\INST1_Goertzel|Add3~23\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(12) & (!\INST1_Goertzel|Add3~23\ & VCC))
-- \INST1_Goertzel|Add3~25\ = CARRY((\INST1_Goertzel|reg.sample_count\(12) & !\INST1_Goertzel|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(12),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~23\,
	combout => \INST1_Goertzel|Add3~24_combout\,
	cout => \INST1_Goertzel|Add3~25\);

-- Location: FF_X23_Y8_N27
\INST1_Goertzel|reg.sample_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~24_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(12));

-- Location: LCCOMB_X23_Y8_N28
\INST1_Goertzel|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~26_combout\ = (\INST1_Goertzel|reg.sample_count\(13) & (!\INST1_Goertzel|Add3~25\)) # (!\INST1_Goertzel|reg.sample_count\(13) & ((\INST1_Goertzel|Add3~25\) # (GND)))
-- \INST1_Goertzel|Add3~27\ = CARRY((!\INST1_Goertzel|Add3~25\) # (!\INST1_Goertzel|reg.sample_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(13),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~25\,
	combout => \INST1_Goertzel|Add3~26_combout\,
	cout => \INST1_Goertzel|Add3~27\);

-- Location: FF_X23_Y8_N29
\INST1_Goertzel|reg.sample_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~26_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(13));

-- Location: LCCOMB_X23_Y8_N30
\INST1_Goertzel|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~28_combout\ = (\INST1_Goertzel|reg.sample_count\(14) & (\INST1_Goertzel|Add3~27\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(14) & (!\INST1_Goertzel|Add3~27\ & VCC))
-- \INST1_Goertzel|Add3~29\ = CARRY((\INST1_Goertzel|reg.sample_count\(14) & !\INST1_Goertzel|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(14),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~27\,
	combout => \INST1_Goertzel|Add3~28_combout\,
	cout => \INST1_Goertzel|Add3~29\);

-- Location: FF_X23_Y8_N31
\INST1_Goertzel|reg.sample_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~28_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(14));

-- Location: LCCOMB_X23_Y7_N0
\INST1_Goertzel|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~30_combout\ = (\INST1_Goertzel|reg.sample_count\(15) & (!\INST1_Goertzel|Add3~29\)) # (!\INST1_Goertzel|reg.sample_count\(15) & ((\INST1_Goertzel|Add3~29\) # (GND)))
-- \INST1_Goertzel|Add3~31\ = CARRY((!\INST1_Goertzel|Add3~29\) # (!\INST1_Goertzel|reg.sample_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(15),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~29\,
	combout => \INST1_Goertzel|Add3~30_combout\,
	cout => \INST1_Goertzel|Add3~31\);

-- Location: FF_X23_Y7_N1
\INST1_Goertzel|reg.sample_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~30_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(15));

-- Location: LCCOMB_X23_Y7_N2
\INST1_Goertzel|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~32_combout\ = (\INST1_Goertzel|reg.sample_count\(16) & (\INST1_Goertzel|Add3~31\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(16) & (!\INST1_Goertzel|Add3~31\ & VCC))
-- \INST1_Goertzel|Add3~33\ = CARRY((\INST1_Goertzel|reg.sample_count\(16) & !\INST1_Goertzel|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(16),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~31\,
	combout => \INST1_Goertzel|Add3~32_combout\,
	cout => \INST1_Goertzel|Add3~33\);

-- Location: FF_X23_Y7_N3
\INST1_Goertzel|reg.sample_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~32_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(16));

-- Location: LCCOMB_X23_Y7_N4
\INST1_Goertzel|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~34_combout\ = (\INST1_Goertzel|reg.sample_count\(17) & (!\INST1_Goertzel|Add3~33\)) # (!\INST1_Goertzel|reg.sample_count\(17) & ((\INST1_Goertzel|Add3~33\) # (GND)))
-- \INST1_Goertzel|Add3~35\ = CARRY((!\INST1_Goertzel|Add3~33\) # (!\INST1_Goertzel|reg.sample_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(17),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~33\,
	combout => \INST1_Goertzel|Add3~34_combout\,
	cout => \INST1_Goertzel|Add3~35\);

-- Location: FF_X23_Y7_N5
\INST1_Goertzel|reg.sample_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~34_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(17));

-- Location: LCCOMB_X23_Y7_N6
\INST1_Goertzel|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~36_combout\ = (\INST1_Goertzel|reg.sample_count\(18) & (\INST1_Goertzel|Add3~35\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(18) & (!\INST1_Goertzel|Add3~35\ & VCC))
-- \INST1_Goertzel|Add3~37\ = CARRY((\INST1_Goertzel|reg.sample_count\(18) & !\INST1_Goertzel|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(18),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~35\,
	combout => \INST1_Goertzel|Add3~36_combout\,
	cout => \INST1_Goertzel|Add3~37\);

-- Location: FF_X23_Y7_N7
\INST1_Goertzel|reg.sample_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~36_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(18));

-- Location: LCCOMB_X23_Y7_N8
\INST1_Goertzel|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~38_combout\ = (\INST1_Goertzel|reg.sample_count\(19) & (!\INST1_Goertzel|Add3~37\)) # (!\INST1_Goertzel|reg.sample_count\(19) & ((\INST1_Goertzel|Add3~37\) # (GND)))
-- \INST1_Goertzel|Add3~39\ = CARRY((!\INST1_Goertzel|Add3~37\) # (!\INST1_Goertzel|reg.sample_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(19),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~37\,
	combout => \INST1_Goertzel|Add3~38_combout\,
	cout => \INST1_Goertzel|Add3~39\);

-- Location: FF_X23_Y7_N9
\INST1_Goertzel|reg.sample_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~38_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(19));

-- Location: LCCOMB_X23_Y7_N10
\INST1_Goertzel|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~40_combout\ = (\INST1_Goertzel|reg.sample_count\(20) & (\INST1_Goertzel|Add3~39\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(20) & (!\INST1_Goertzel|Add3~39\ & VCC))
-- \INST1_Goertzel|Add3~41\ = CARRY((\INST1_Goertzel|reg.sample_count\(20) & !\INST1_Goertzel|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(20),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~39\,
	combout => \INST1_Goertzel|Add3~40_combout\,
	cout => \INST1_Goertzel|Add3~41\);

-- Location: FF_X23_Y7_N11
\INST1_Goertzel|reg.sample_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~40_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(20));

-- Location: LCCOMB_X23_Y7_N12
\INST1_Goertzel|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~42_combout\ = (\INST1_Goertzel|reg.sample_count\(21) & (!\INST1_Goertzel|Add3~41\)) # (!\INST1_Goertzel|reg.sample_count\(21) & ((\INST1_Goertzel|Add3~41\) # (GND)))
-- \INST1_Goertzel|Add3~43\ = CARRY((!\INST1_Goertzel|Add3~41\) # (!\INST1_Goertzel|reg.sample_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(21),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~41\,
	combout => \INST1_Goertzel|Add3~42_combout\,
	cout => \INST1_Goertzel|Add3~43\);

-- Location: FF_X23_Y7_N13
\INST1_Goertzel|reg.sample_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~42_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(21));

-- Location: LCCOMB_X23_Y7_N14
\INST1_Goertzel|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~44_combout\ = (\INST1_Goertzel|reg.sample_count\(22) & (\INST1_Goertzel|Add3~43\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(22) & (!\INST1_Goertzel|Add3~43\ & VCC))
-- \INST1_Goertzel|Add3~45\ = CARRY((\INST1_Goertzel|reg.sample_count\(22) & !\INST1_Goertzel|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(22),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~43\,
	combout => \INST1_Goertzel|Add3~44_combout\,
	cout => \INST1_Goertzel|Add3~45\);

-- Location: FF_X23_Y7_N15
\INST1_Goertzel|reg.sample_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~44_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(22));

-- Location: LCCOMB_X23_Y7_N16
\INST1_Goertzel|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~46_combout\ = (\INST1_Goertzel|reg.sample_count\(23) & (!\INST1_Goertzel|Add3~45\)) # (!\INST1_Goertzel|reg.sample_count\(23) & ((\INST1_Goertzel|Add3~45\) # (GND)))
-- \INST1_Goertzel|Add3~47\ = CARRY((!\INST1_Goertzel|Add3~45\) # (!\INST1_Goertzel|reg.sample_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(23),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~45\,
	combout => \INST1_Goertzel|Add3~46_combout\,
	cout => \INST1_Goertzel|Add3~47\);

-- Location: FF_X23_Y7_N17
\INST1_Goertzel|reg.sample_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~46_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(23));

-- Location: LCCOMB_X23_Y7_N18
\INST1_Goertzel|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~48_combout\ = (\INST1_Goertzel|reg.sample_count\(24) & (\INST1_Goertzel|Add3~47\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(24) & (!\INST1_Goertzel|Add3~47\ & VCC))
-- \INST1_Goertzel|Add3~49\ = CARRY((\INST1_Goertzel|reg.sample_count\(24) & !\INST1_Goertzel|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(24),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~47\,
	combout => \INST1_Goertzel|Add3~48_combout\,
	cout => \INST1_Goertzel|Add3~49\);

-- Location: FF_X23_Y7_N19
\INST1_Goertzel|reg.sample_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~48_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(24));

-- Location: LCCOMB_X23_Y7_N20
\INST1_Goertzel|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~50_combout\ = (\INST1_Goertzel|reg.sample_count\(25) & (!\INST1_Goertzel|Add3~49\)) # (!\INST1_Goertzel|reg.sample_count\(25) & ((\INST1_Goertzel|Add3~49\) # (GND)))
-- \INST1_Goertzel|Add3~51\ = CARRY((!\INST1_Goertzel|Add3~49\) # (!\INST1_Goertzel|reg.sample_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(25),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~49\,
	combout => \INST1_Goertzel|Add3~50_combout\,
	cout => \INST1_Goertzel|Add3~51\);

-- Location: FF_X23_Y7_N21
\INST1_Goertzel|reg.sample_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~50_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(25));

-- Location: LCCOMB_X23_Y7_N22
\INST1_Goertzel|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~52_combout\ = (\INST1_Goertzel|reg.sample_count\(26) & (\INST1_Goertzel|Add3~51\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(26) & (!\INST1_Goertzel|Add3~51\ & VCC))
-- \INST1_Goertzel|Add3~53\ = CARRY((\INST1_Goertzel|reg.sample_count\(26) & !\INST1_Goertzel|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(26),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~51\,
	combout => \INST1_Goertzel|Add3~52_combout\,
	cout => \INST1_Goertzel|Add3~53\);

-- Location: FF_X23_Y7_N23
\INST1_Goertzel|reg.sample_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~52_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(26));

-- Location: LCCOMB_X23_Y7_N24
\INST1_Goertzel|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~54_combout\ = (\INST1_Goertzel|reg.sample_count\(27) & (!\INST1_Goertzel|Add3~53\)) # (!\INST1_Goertzel|reg.sample_count\(27) & ((\INST1_Goertzel|Add3~53\) # (GND)))
-- \INST1_Goertzel|Add3~55\ = CARRY((!\INST1_Goertzel|Add3~53\) # (!\INST1_Goertzel|reg.sample_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(27),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~53\,
	combout => \INST1_Goertzel|Add3~54_combout\,
	cout => \INST1_Goertzel|Add3~55\);

-- Location: FF_X23_Y7_N25
\INST1_Goertzel|reg.sample_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~54_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(27));

-- Location: LCCOMB_X23_Y7_N26
\INST1_Goertzel|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~56_combout\ = (\INST1_Goertzel|reg.sample_count\(28) & (\INST1_Goertzel|Add3~55\ $ (GND))) # (!\INST1_Goertzel|reg.sample_count\(28) & (!\INST1_Goertzel|Add3~55\ & VCC))
-- \INST1_Goertzel|Add3~57\ = CARRY((\INST1_Goertzel|reg.sample_count\(28) & !\INST1_Goertzel|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(28),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~55\,
	combout => \INST1_Goertzel|Add3~56_combout\,
	cout => \INST1_Goertzel|Add3~57\);

-- Location: FF_X23_Y7_N27
\INST1_Goertzel|reg.sample_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~56_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(28));

-- Location: LCCOMB_X23_Y7_N28
\INST1_Goertzel|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~58_combout\ = (\INST1_Goertzel|reg.sample_count\(29) & (!\INST1_Goertzel|Add3~57\)) # (!\INST1_Goertzel|reg.sample_count\(29) & ((\INST1_Goertzel|Add3~57\) # (GND)))
-- \INST1_Goertzel|Add3~59\ = CARRY((!\INST1_Goertzel|Add3~57\) # (!\INST1_Goertzel|reg.sample_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.sample_count\(29),
	datad => VCC,
	cin => \INST1_Goertzel|Add3~57\,
	combout => \INST1_Goertzel|Add3~58_combout\,
	cout => \INST1_Goertzel|Add3~59\);

-- Location: FF_X23_Y7_N29
\INST1_Goertzel|reg.sample_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~58_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(29));

-- Location: LCCOMB_X23_Y7_N30
\INST1_Goertzel|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add3~60_combout\ = \INST1_Goertzel|reg.sample_count\(30) $ (!\INST1_Goertzel|Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(30),
	cin => \INST1_Goertzel|Add3~59\,
	combout => \INST1_Goertzel|Add3~60_combout\);

-- Location: FF_X23_Y7_N31
\INST1_Goertzel|reg.sample_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Add3~60_combout\,
	ena => \INST1_Goertzel|reg.state.STORE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.sample_count\(30));

-- Location: LCCOMB_X22_Y7_N20
\INST1_Goertzel|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~0_combout\ = (!\INST1_Goertzel|reg.sample_count\(30) & (!\INST1_Goertzel|reg.sample_count\(29) & (!\INST1_Goertzel|reg.sample_count\(27) & !\INST1_Goertzel|reg.sample_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(30),
	datab => \INST1_Goertzel|reg.sample_count\(29),
	datac => \INST1_Goertzel|reg.sample_count\(27),
	datad => \INST1_Goertzel|reg.sample_count\(28),
	combout => \INST1_Goertzel|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y7_N18
\INST1_Goertzel|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~1_combout\ = (!\INST1_Goertzel|reg.sample_count\(25) & (!\INST1_Goertzel|reg.sample_count\(24) & (!\INST1_Goertzel|reg.sample_count\(23) & !\INST1_Goertzel|reg.sample_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.sample_count\(25),
	datab => \INST1_Goertzel|reg.sample_count\(24),
	datac => \INST1_Goertzel|reg.sample_count\(23),
	datad => \INST1_Goertzel|reg.sample_count\(26),
	combout => \INST1_Goertzel|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y7_N14
\INST1_Goertzel|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~4_combout\ = (\INST1_Goertzel|Equal0~0_combout\ & (\INST1_Goertzel|Equal0~2_combout\ & (\INST1_Goertzel|Equal0~3_combout\ & \INST1_Goertzel|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~0_combout\,
	datab => \INST1_Goertzel|Equal0~2_combout\,
	datac => \INST1_Goertzel|Equal0~3_combout\,
	datad => \INST1_Goertzel|Equal0~1_combout\,
	combout => \INST1_Goertzel|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y7_N24
\INST1_Goertzel|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Equal0~7_combout\ = (\INST1_Goertzel|Equal0~6_combout\ & (!\INST1_Goertzel|reg.sample_count\(1) & (!\INST1_Goertzel|reg.sample_count\(2) & \INST1_Goertzel|reg.sample_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~6_combout\,
	datab => \INST1_Goertzel|reg.sample_count\(1),
	datac => \INST1_Goertzel|reg.sample_count\(2),
	datad => \INST1_Goertzel|reg.sample_count\(0),
	combout => \INST1_Goertzel|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y7_N16
\INST1_Goertzel|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector2~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST1_Goertzel|Equal0~8_combout\,
	combout => \INST1_Goertzel|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\INST1_Goertzel|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector2~1_combout\ = (\INST1_Goertzel|Equal0~4_combout\ & (\INST1_Goertzel|Equal0~7_combout\ & (\INST1_Goertzel|Equal0~5_combout\ & \INST1_Goertzel|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Equal0~4_combout\,
	datab => \INST1_Goertzel|Equal0~7_combout\,
	datac => \INST1_Goertzel|Equal0~5_combout\,
	datad => \INST1_Goertzel|Selector2~0_combout\,
	combout => \INST1_Goertzel|Selector2~1_combout\);

-- Location: LCCOMB_X19_Y6_N2
\INST1_Goertzel|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector33~0_combout\ = (\INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector33~0_combout\);

-- Location: LCCOMB_X22_Y7_N26
\INST1_Goertzel|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector23~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\) # (\INST1_Goertzel|reg.state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.state.DONE~q\,
	combout => \INST1_Goertzel|Selector23~0_combout\);

-- Location: FF_X19_Y6_N3
\INST1_Goertzel|reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector33~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(7));

-- Location: LCCOMB_X22_Y7_N2
\INST1_Goertzel|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector5~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\) # (\INST1_Goertzel|reg.state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.state.DONE~q\,
	combout => \INST1_Goertzel|Selector5~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\i_ADC1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(0),
	o => \i_ADC1[0]~input_o\);

-- Location: FF_X19_Y8_N15
\INST1_sampler|r_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[0]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(0));

-- Location: IOIBUF_X23_Y29_N1
\i_ADC1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(1),
	o => \i_ADC1[1]~input_o\);

-- Location: FF_X19_Y8_N17
\INST1_sampler|r_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[1]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(1));

-- Location: LCCOMB_X19_Y8_N12
\INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ = \INST1_Goertzel|Selector20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Selector20~0_combout\,
	combout => \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\);

-- Location: FF_X19_Y8_N13
\INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N4
\INST1_Goertzel|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector38~0_combout\ = (\INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector38~0_combout\);

-- Location: FF_X17_Y8_N5
\INST1_Goertzel|reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector38~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(2));

-- Location: FF_X20_Y8_N11
\INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector19~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N2
\INST1_Goertzel|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector37~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector37~0_combout\);

-- Location: FF_X17_Y8_N3
\INST1_Goertzel|reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector37~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(3));

-- Location: IOIBUF_X23_Y0_N1
\i_ADC1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(3),
	o => \i_ADC1[3]~input_o\);

-- Location: FF_X19_Y8_N21
\INST1_sampler|r_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[3]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(3));

-- Location: FF_X20_Y8_N9
\INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector18~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N8
\INST1_Goertzel|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector36~0_combout\ = (\INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector36~0_combout\);

-- Location: FF_X17_Y8_N9
\INST1_Goertzel|reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector36~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(4));

-- Location: FF_X20_Y8_N7
\INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector17~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N10
\INST1_Goertzel|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector35~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector35~0_combout\);

-- Location: FF_X17_Y8_N11
\INST1_Goertzel|reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector35~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(5));

-- Location: IOIBUF_X0_Y8_N1
\i_ADC1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(6),
	o => \i_ADC1[6]~input_o\);

-- Location: FF_X19_Y8_N27
\INST1_sampler|r_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[6]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(6));

-- Location: FF_X19_Y7_N23
\INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector14~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N0
\INST1_Goertzel|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector32~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector32~0_combout\);

-- Location: FF_X17_Y8_N1
\INST1_Goertzel|reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector32~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(8));

-- Location: IOIBUF_X23_Y29_N29
\i_ADC1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(9),
	o => \i_ADC1[9]~input_o\);

-- Location: FF_X19_Y7_N1
\INST1_sampler|r_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[9]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(9));

-- Location: FF_X20_Y7_N23
\INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector11~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N26
\INST1_Goertzel|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector29~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector29~0_combout\);

-- Location: FF_X17_Y7_N27
\INST1_Goertzel|reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector29~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(11));

-- Location: IOIBUF_X41_Y8_N8
\i_ADC1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(11),
	o => \i_ADC1[11]~input_o\);

-- Location: LCCOMB_X19_Y7_N26
\INST1_sampler|r_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_sampler|r_DATA[11]~feeder_combout\ = \i_ADC1[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ADC1[11]~input_o\,
	combout => \INST1_sampler|r_DATA[11]~feeder_combout\);

-- Location: FF_X19_Y7_N27
\INST1_sampler|r_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_sampler|r_DATA[11]~feeder_combout\,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(11));

-- Location: FF_X20_Y7_N21
\INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector10~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N20
\INST1_Goertzel|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector28~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST1_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector28~0_combout\);

-- Location: FF_X17_Y7_N21
\INST1_Goertzel|reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector28~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(12));

-- Location: IOIBUF_X30_Y0_N15
\i_ADC1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(10),
	o => \i_ADC1[10]~input_o\);

-- Location: FF_X19_Y7_N3
\INST1_sampler|r_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[10]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(10));

-- Location: IOIBUF_X0_Y9_N15
\i_ADC1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(8),
	o => \i_ADC1[8]~input_o\);

-- Location: FF_X19_Y8_N31
\INST1_sampler|r_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[8]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(8));

-- Location: IOIBUF_X41_Y8_N1
\i_ADC1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(7),
	o => \i_ADC1[7]~input_o\);

-- Location: FF_X19_Y8_N29
\INST1_sampler|r_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[7]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(7));

-- Location: IOIBUF_X0_Y8_N15
\i_ADC1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(5),
	o => \i_ADC1[5]~input_o\);

-- Location: FF_X19_Y8_N25
\INST1_sampler|r_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[5]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(5));

-- Location: IOIBUF_X21_Y29_N8
\i_ADC1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(4),
	o => \i_ADC1[4]~input_o\);

-- Location: FF_X19_Y8_N23
\INST1_sampler|r_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[4]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(4));

-- Location: IOIBUF_X0_Y8_N22
\i_ADC1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC1(2),
	o => \i_ADC1[2]~input_o\);

-- Location: FF_X19_Y8_N19
\INST1_sampler|r_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC1[2]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_sampler|r_DATA\(2));

-- Location: LCCOMB_X19_Y8_N14
\INST1_Goertzel|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~0_combout\ = (\INST1_sampler|r_DATA\(0) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\INST1_sampler|r_DATA\(0) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ & VCC))
-- \INST1_Goertzel|Add0~1\ = CARRY((\INST1_sampler|r_DATA\(0) & \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(0),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \INST1_Goertzel|Add0~0_combout\,
	cout => \INST1_Goertzel|Add0~1\);

-- Location: LCCOMB_X19_Y8_N16
\INST1_Goertzel|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~2_combout\ = (\INST1_sampler|r_DATA\(1) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\INST1_Goertzel|Add0~1\ & VCC)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST1_Goertzel|Add0~1\)))) # 
-- (!\INST1_sampler|r_DATA\(1) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST1_Goertzel|Add0~1\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\INST1_Goertzel|Add0~1\) # (GND)))))
-- \INST1_Goertzel|Add0~3\ = CARRY((\INST1_sampler|r_DATA\(1) & (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\INST1_Goertzel|Add0~1\)) # (!\INST1_sampler|r_DATA\(1) & ((!\INST1_Goertzel|Add0~1\) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(1),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~1\,
	combout => \INST1_Goertzel|Add0~2_combout\,
	cout => \INST1_Goertzel|Add0~3\);

-- Location: LCCOMB_X19_Y8_N18
\INST1_Goertzel|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~4_combout\ = ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\INST1_sampler|r_DATA\(2) $ (!\INST1_Goertzel|Add0~3\)))) # (GND)
-- \INST1_Goertzel|Add0~5\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\INST1_sampler|r_DATA\(2)) # (!\INST1_Goertzel|Add0~3\))) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\INST1_sampler|r_DATA\(2) & 
-- !\INST1_Goertzel|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST1_sampler|r_DATA\(2),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~3\,
	combout => \INST1_Goertzel|Add0~4_combout\,
	cout => \INST1_Goertzel|Add0~5\);

-- Location: LCCOMB_X19_Y8_N20
\INST1_Goertzel|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~6_combout\ = (\INST1_sampler|r_DATA\(3) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\INST1_Goertzel|Add0~5\ & VCC)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST1_Goertzel|Add0~5\)))) # 
-- (!\INST1_sampler|r_DATA\(3) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST1_Goertzel|Add0~5\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\INST1_Goertzel|Add0~5\) # (GND)))))
-- \INST1_Goertzel|Add0~7\ = CARRY((\INST1_sampler|r_DATA\(3) & (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\INST1_Goertzel|Add0~5\)) # (!\INST1_sampler|r_DATA\(3) & ((!\INST1_Goertzel|Add0~5\) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(3),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~5\,
	combout => \INST1_Goertzel|Add0~6_combout\,
	cout => \INST1_Goertzel|Add0~7\);

-- Location: LCCOMB_X19_Y8_N22
\INST1_Goertzel|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~8_combout\ = ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\INST1_sampler|r_DATA\(4) $ (!\INST1_Goertzel|Add0~7\)))) # (GND)
-- \INST1_Goertzel|Add0~9\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\INST1_sampler|r_DATA\(4)) # (!\INST1_Goertzel|Add0~7\))) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\INST1_sampler|r_DATA\(4) & 
-- !\INST1_Goertzel|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \INST1_sampler|r_DATA\(4),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~7\,
	combout => \INST1_Goertzel|Add0~8_combout\,
	cout => \INST1_Goertzel|Add0~9\);

-- Location: LCCOMB_X19_Y8_N24
\INST1_Goertzel|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~10_combout\ = (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST1_sampler|r_DATA\(5) & (\INST1_Goertzel|Add0~9\ & VCC)) # (!\INST1_sampler|r_DATA\(5) & (!\INST1_Goertzel|Add0~9\)))) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST1_sampler|r_DATA\(5) & (!\INST1_Goertzel|Add0~9\)) # (!\INST1_sampler|r_DATA\(5) & ((\INST1_Goertzel|Add0~9\) # (GND)))))
-- \INST1_Goertzel|Add0~11\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\INST1_sampler|r_DATA\(5) & !\INST1_Goertzel|Add0~9\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\INST1_Goertzel|Add0~9\) # 
-- (!\INST1_sampler|r_DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST1_sampler|r_DATA\(5),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~9\,
	combout => \INST1_Goertzel|Add0~10_combout\,
	cout => \INST1_Goertzel|Add0~11\);

-- Location: LCCOMB_X19_Y8_N26
\INST1_Goertzel|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~12_combout\ = ((\INST1_sampler|r_DATA\(6) $ (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\INST1_Goertzel|Add0~11\)))) # (GND)
-- \INST1_Goertzel|Add0~13\ = CARRY((\INST1_sampler|r_DATA\(6) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\INST1_Goertzel|Add0~11\))) # (!\INST1_sampler|r_DATA\(6) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- !\INST1_Goertzel|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(6),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~11\,
	combout => \INST1_Goertzel|Add0~12_combout\,
	cout => \INST1_Goertzel|Add0~13\);

-- Location: LCCOMB_X19_Y8_N28
\INST1_Goertzel|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~14_combout\ = (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST1_sampler|r_DATA\(7) & (\INST1_Goertzel|Add0~13\ & VCC)) # (!\INST1_sampler|r_DATA\(7) & (!\INST1_Goertzel|Add0~13\)))) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST1_sampler|r_DATA\(7) & (!\INST1_Goertzel|Add0~13\)) # (!\INST1_sampler|r_DATA\(7) & ((\INST1_Goertzel|Add0~13\) # (GND)))))
-- \INST1_Goertzel|Add0~15\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\INST1_sampler|r_DATA\(7) & !\INST1_Goertzel|Add0~13\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\INST1_Goertzel|Add0~13\) # 
-- (!\INST1_sampler|r_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \INST1_sampler|r_DATA\(7),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~13\,
	combout => \INST1_Goertzel|Add0~14_combout\,
	cout => \INST1_Goertzel|Add0~15\);

-- Location: LCCOMB_X19_Y8_N30
\INST1_Goertzel|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~16_combout\ = ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\INST1_sampler|r_DATA\(8) $ (!\INST1_Goertzel|Add0~15\)))) # (GND)
-- \INST1_Goertzel|Add0~17\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\INST1_sampler|r_DATA\(8)) # (!\INST1_Goertzel|Add0~15\))) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\INST1_sampler|r_DATA\(8) & 
-- !\INST1_Goertzel|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \INST1_sampler|r_DATA\(8),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~15\,
	combout => \INST1_Goertzel|Add0~16_combout\,
	cout => \INST1_Goertzel|Add0~17\);

-- Location: LCCOMB_X19_Y7_N0
\INST1_Goertzel|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~18_combout\ = (\INST1_sampler|r_DATA\(9) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\INST1_Goertzel|Add0~17\ & VCC)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\INST1_Goertzel|Add0~17\)))) # 
-- (!\INST1_sampler|r_DATA\(9) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\INST1_Goertzel|Add0~17\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\INST1_Goertzel|Add0~17\) # (GND)))))
-- \INST1_Goertzel|Add0~19\ = CARRY((\INST1_sampler|r_DATA\(9) & (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\INST1_Goertzel|Add0~17\)) # (!\INST1_sampler|r_DATA\(9) & ((!\INST1_Goertzel|Add0~17\) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(9),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~17\,
	combout => \INST1_Goertzel|Add0~18_combout\,
	cout => \INST1_Goertzel|Add0~19\);

-- Location: LCCOMB_X19_Y7_N2
\INST1_Goertzel|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~20_combout\ = ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\INST1_sampler|r_DATA\(10) $ (!\INST1_Goertzel|Add0~19\)))) # (GND)
-- \INST1_Goertzel|Add0~21\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\INST1_sampler|r_DATA\(10)) # (!\INST1_Goertzel|Add0~19\))) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\INST1_sampler|r_DATA\(10) & 
-- !\INST1_Goertzel|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \INST1_sampler|r_DATA\(10),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~19\,
	combout => \INST1_Goertzel|Add0~20_combout\,
	cout => \INST1_Goertzel|Add0~21\);

-- Location: LCCOMB_X19_Y7_N4
\INST1_Goertzel|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~22_combout\ = (\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\INST1_Goertzel|Add0~21\ & VCC)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\INST1_Goertzel|Add0~21\)))) # 
-- (!\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\INST1_Goertzel|Add0~21\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\INST1_Goertzel|Add0~21\) # (GND)))))
-- \INST1_Goertzel|Add0~23\ = CARRY((\INST1_sampler|r_DATA\(11) & (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\INST1_Goertzel|Add0~21\)) # (!\INST1_sampler|r_DATA\(11) & ((!\INST1_Goertzel|Add0~21\) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~21\,
	combout => \INST1_Goertzel|Add0~22_combout\,
	cout => \INST1_Goertzel|Add0~23\);

-- Location: LCCOMB_X19_Y7_N6
\INST1_Goertzel|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~24_combout\ = ((\INST1_sampler|r_DATA\(11) $ (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\INST1_Goertzel|Add0~23\)))) # (GND)
-- \INST1_Goertzel|Add0~25\ = CARRY((\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\INST1_Goertzel|Add0~23\))) # (!\INST1_sampler|r_DATA\(11) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- !\INST1_Goertzel|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~23\,
	combout => \INST1_Goertzel|Add0~24_combout\,
	cout => \INST1_Goertzel|Add0~25\);

-- Location: LCCOMB_X19_Y7_N8
\INST1_Goertzel|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~26_combout\ = (\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\INST1_Goertzel|Add0~25\ & VCC)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\INST1_Goertzel|Add0~25\)))) # 
-- (!\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\INST1_Goertzel|Add0~25\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\INST1_Goertzel|Add0~25\) # (GND)))))
-- \INST1_Goertzel|Add0~27\ = CARRY((\INST1_sampler|r_DATA\(11) & (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\INST1_Goertzel|Add0~25\)) # (!\INST1_sampler|r_DATA\(11) & ((!\INST1_Goertzel|Add0~25\) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~25\,
	combout => \INST1_Goertzel|Add0~26_combout\,
	cout => \INST1_Goertzel|Add0~27\);

-- Location: LCCOMB_X19_Y7_N10
\INST1_Goertzel|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~28_combout\ = ((\INST1_sampler|r_DATA\(11) $ (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\INST1_Goertzel|Add0~27\)))) # (GND)
-- \INST1_Goertzel|Add0~29\ = CARRY((\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\INST1_Goertzel|Add0~27\))) # (!\INST1_sampler|r_DATA\(11) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- !\INST1_Goertzel|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~27\,
	combout => \INST1_Goertzel|Add0~28_combout\,
	cout => \INST1_Goertzel|Add0~29\);

-- Location: LCCOMB_X19_Y7_N12
\INST1_Goertzel|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~30_combout\ = (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\INST1_sampler|r_DATA\(11) & (\INST1_Goertzel|Add0~29\ & VCC)) # (!\INST1_sampler|r_DATA\(11) & (!\INST1_Goertzel|Add0~29\)))) # 
-- (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\INST1_sampler|r_DATA\(11) & (!\INST1_Goertzel|Add0~29\)) # (!\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Add0~29\) # (GND)))))
-- \INST1_Goertzel|Add0~31\ = CARRY((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\INST1_sampler|r_DATA\(11) & !\INST1_Goertzel|Add0~29\)) # (!\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((!\INST1_Goertzel|Add0~29\) # 
-- (!\INST1_sampler|r_DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \INST1_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST1_Goertzel|Add0~29\,
	combout => \INST1_Goertzel|Add0~30_combout\,
	cout => \INST1_Goertzel|Add0~31\);

-- Location: LCCOMB_X19_Y7_N14
\INST1_Goertzel|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~32_combout\ = ((\INST1_sampler|r_DATA\(11) $ (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (!\INST1_Goertzel|Add0~31\)))) # (GND)
-- \INST1_Goertzel|Add0~33\ = CARRY((\INST1_sampler|r_DATA\(11) & ((\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\) # (!\INST1_Goertzel|Add0~31\))) # (!\INST1_sampler|r_DATA\(11) & (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- !\INST1_Goertzel|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \INST1_Goertzel|Add0~31\,
	combout => \INST1_Goertzel|Add0~32_combout\,
	cout => \INST1_Goertzel|Add0~33\);

-- Location: LCCOMB_X19_Y7_N16
\INST1_Goertzel|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Add0~34_combout\ = \INST1_sampler|r_DATA\(11) $ (\INST1_Goertzel|Add0~33\ $ (\INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_sampler|r_DATA\(11),
	datad => \INST1_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	cin => \INST1_Goertzel|Add0~33\,
	combout => \INST1_Goertzel|Add0~34_combout\);

-- Location: FF_X19_Y7_N31
\INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector5~1_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\);

-- Location: LCCOMB_X19_Y6_N14
\INST1_Goertzel|Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector23~1_combout\ = (\INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector23~1_combout\);

-- Location: FF_X19_Y6_N15
\INST1_Goertzel|reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector23~1_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(17));

-- Location: LCCOMB_X19_Y7_N20
\INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\ = \INST1_Goertzel|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Selector6~0_combout\,
	combout => \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\);

-- Location: FF_X19_Y7_N21
\INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\);

-- Location: LCCOMB_X19_Y6_N0
\INST1_Goertzel|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector24~0_combout\ = (\INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector24~0_combout\);

-- Location: FF_X19_Y6_N1
\INST1_Goertzel|reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector24~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(16));

-- Location: FF_X19_Y7_N19
\INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector7~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N22
\INST1_Goertzel|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector25~0_combout\ = (\INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector25~0_combout\);

-- Location: FF_X17_Y7_N23
\INST1_Goertzel|reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector25~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(15));

-- Location: FF_X20_Y7_N27
\INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector8~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N28
\INST1_Goertzel|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector26~0_combout\ = (\INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector26~0_combout\);

-- Location: FF_X17_Y7_N29
\INST1_Goertzel|reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector26~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(14));

-- Location: LCCOMB_X19_Y7_N24
\INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\ = \INST1_Goertzel|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Selector9~0_combout\,
	combout => \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\);

-- Location: FF_X19_Y7_N25
\INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N18
\INST1_Goertzel|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector27~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector27~0_combout\);

-- Location: FF_X17_Y7_N19
\INST1_Goertzel|reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector27~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(13));

-- Location: FF_X20_Y7_N29
\INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector12~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N24
\INST1_Goertzel|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector30~0_combout\ = (\INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector30~0_combout\);

-- Location: FF_X17_Y7_N25
\INST1_Goertzel|reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector30~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(10));

-- Location: LCCOMB_X20_Y7_N30
\INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ = \INST1_Goertzel|Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Selector13~0_combout\,
	combout => \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\);

-- Location: FF_X20_Y7_N31
\INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y7_N30
\INST1_Goertzel|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector31~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST1_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector31~0_combout\);

-- Location: FF_X17_Y7_N31
\INST1_Goertzel|reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector31~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(9));

-- Location: FF_X19_Y7_N13
\INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector16~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\);

-- Location: LCCOMB_X19_Y6_N12
\INST1_Goertzel|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector34~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST1_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\,
	combout => \INST1_Goertzel|Selector34~0_combout\);

-- Location: FF_X19_Y6_N13
\INST1_Goertzel|reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector34~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(6));

-- Location: FF_X19_Y7_N9
\INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector21~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N6
\INST1_Goertzel|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector39~0_combout\ = (\INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector39~0_combout\);

-- Location: FF_X17_Y8_N7
\INST1_Goertzel|reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector39~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(1));

-- Location: FF_X20_Y8_N1
\INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector22~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y8_N12
\INST1_Goertzel|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector40~0_combout\ = (\INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST1_Goertzel|Selector40~0_combout\);

-- Location: FF_X17_Y8_N13
\INST1_Goertzel|reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector40~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev2\(0));

-- Location: LCCOMB_X20_Y8_N14
\INST1_Goertzel|reg.VA[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[0]~18_combout\ = (\INST1_Goertzel|Add0~0_combout\ & ((GND) # (!\INST1_Goertzel|reg.VA_prev2\(0)))) # (!\INST1_Goertzel|Add0~0_combout\ & (\INST1_Goertzel|reg.VA_prev2\(0) $ (GND)))
-- \INST1_Goertzel|reg.VA[0]~19\ = CARRY((\INST1_Goertzel|Add0~0_combout\) # (!\INST1_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~0_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(0),
	datad => VCC,
	combout => \INST1_Goertzel|reg.VA[0]~18_combout\,
	cout => \INST1_Goertzel|reg.VA[0]~19\);

-- Location: LCCOMB_X20_Y8_N16
\INST1_Goertzel|reg.VA[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[1]~20_combout\ = (\INST1_Goertzel|Add0~2_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(1) & (!\INST1_Goertzel|reg.VA[0]~19\)) # (!\INST1_Goertzel|reg.VA_prev2\(1) & (\INST1_Goertzel|reg.VA[0]~19\ & VCC)))) # 
-- (!\INST1_Goertzel|Add0~2_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(1) & ((\INST1_Goertzel|reg.VA[0]~19\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(1) & (!\INST1_Goertzel|reg.VA[0]~19\))))
-- \INST1_Goertzel|reg.VA[1]~21\ = CARRY((\INST1_Goertzel|Add0~2_combout\ & (\INST1_Goertzel|reg.VA_prev2\(1) & !\INST1_Goertzel|reg.VA[0]~19\)) # (!\INST1_Goertzel|Add0~2_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(1)) # (!\INST1_Goertzel|reg.VA[0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~2_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(1),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[0]~19\,
	combout => \INST1_Goertzel|reg.VA[1]~20_combout\,
	cout => \INST1_Goertzel|reg.VA[1]~21\);

-- Location: LCCOMB_X20_Y8_N18
\INST1_Goertzel|reg.VA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[2]~22_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(2) $ (\INST1_Goertzel|Add0~4_combout\ $ (\INST1_Goertzel|reg.VA[1]~21\)))) # (GND)
-- \INST1_Goertzel|reg.VA[2]~23\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(2) & (\INST1_Goertzel|Add0~4_combout\ & !\INST1_Goertzel|reg.VA[1]~21\)) # (!\INST1_Goertzel|reg.VA_prev2\(2) & ((\INST1_Goertzel|Add0~4_combout\) # (!\INST1_Goertzel|reg.VA[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(2),
	datab => \INST1_Goertzel|Add0~4_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[1]~21\,
	combout => \INST1_Goertzel|reg.VA[2]~22_combout\,
	cout => \INST1_Goertzel|reg.VA[2]~23\);

-- Location: LCCOMB_X20_Y8_N20
\INST1_Goertzel|reg.VA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[3]~24_combout\ = (\INST1_Goertzel|reg.VA_prev2\(3) & ((\INST1_Goertzel|Add0~6_combout\ & (!\INST1_Goertzel|reg.VA[2]~23\)) # (!\INST1_Goertzel|Add0~6_combout\ & ((\INST1_Goertzel|reg.VA[2]~23\) # (GND))))) # 
-- (!\INST1_Goertzel|reg.VA_prev2\(3) & ((\INST1_Goertzel|Add0~6_combout\ & (\INST1_Goertzel|reg.VA[2]~23\ & VCC)) # (!\INST1_Goertzel|Add0~6_combout\ & (!\INST1_Goertzel|reg.VA[2]~23\))))
-- \INST1_Goertzel|reg.VA[3]~25\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(3) & ((!\INST1_Goertzel|reg.VA[2]~23\) # (!\INST1_Goertzel|Add0~6_combout\))) # (!\INST1_Goertzel|reg.VA_prev2\(3) & (!\INST1_Goertzel|Add0~6_combout\ & !\INST1_Goertzel|reg.VA[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(3),
	datab => \INST1_Goertzel|Add0~6_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[2]~23\,
	combout => \INST1_Goertzel|reg.VA[3]~24_combout\,
	cout => \INST1_Goertzel|reg.VA[3]~25\);

-- Location: LCCOMB_X20_Y8_N22
\INST1_Goertzel|reg.VA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[4]~26_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(4) $ (\INST1_Goertzel|Add0~8_combout\ $ (\INST1_Goertzel|reg.VA[3]~25\)))) # (GND)
-- \INST1_Goertzel|reg.VA[4]~27\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(4) & (\INST1_Goertzel|Add0~8_combout\ & !\INST1_Goertzel|reg.VA[3]~25\)) # (!\INST1_Goertzel|reg.VA_prev2\(4) & ((\INST1_Goertzel|Add0~8_combout\) # (!\INST1_Goertzel|reg.VA[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(4),
	datab => \INST1_Goertzel|Add0~8_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[3]~25\,
	combout => \INST1_Goertzel|reg.VA[4]~26_combout\,
	cout => \INST1_Goertzel|reg.VA[4]~27\);

-- Location: LCCOMB_X20_Y8_N24
\INST1_Goertzel|reg.VA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[5]~28_combout\ = (\INST1_Goertzel|reg.VA_prev2\(5) & ((\INST1_Goertzel|Add0~10_combout\ & (!\INST1_Goertzel|reg.VA[4]~27\)) # (!\INST1_Goertzel|Add0~10_combout\ & ((\INST1_Goertzel|reg.VA[4]~27\) # (GND))))) # 
-- (!\INST1_Goertzel|reg.VA_prev2\(5) & ((\INST1_Goertzel|Add0~10_combout\ & (\INST1_Goertzel|reg.VA[4]~27\ & VCC)) # (!\INST1_Goertzel|Add0~10_combout\ & (!\INST1_Goertzel|reg.VA[4]~27\))))
-- \INST1_Goertzel|reg.VA[5]~29\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(5) & ((!\INST1_Goertzel|reg.VA[4]~27\) # (!\INST1_Goertzel|Add0~10_combout\))) # (!\INST1_Goertzel|reg.VA_prev2\(5) & (!\INST1_Goertzel|Add0~10_combout\ & 
-- !\INST1_Goertzel|reg.VA[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(5),
	datab => \INST1_Goertzel|Add0~10_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[4]~27\,
	combout => \INST1_Goertzel|reg.VA[5]~28_combout\,
	cout => \INST1_Goertzel|reg.VA[5]~29\);

-- Location: LCCOMB_X20_Y8_N26
\INST1_Goertzel|reg.VA[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[6]~30_combout\ = ((\INST1_Goertzel|Add0~12_combout\ $ (\INST1_Goertzel|reg.VA_prev2\(6) $ (\INST1_Goertzel|reg.VA[5]~29\)))) # (GND)
-- \INST1_Goertzel|reg.VA[6]~31\ = CARRY((\INST1_Goertzel|Add0~12_combout\ & ((!\INST1_Goertzel|reg.VA[5]~29\) # (!\INST1_Goertzel|reg.VA_prev2\(6)))) # (!\INST1_Goertzel|Add0~12_combout\ & (!\INST1_Goertzel|reg.VA_prev2\(6) & 
-- !\INST1_Goertzel|reg.VA[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~12_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(6),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[5]~29\,
	combout => \INST1_Goertzel|reg.VA[6]~30_combout\,
	cout => \INST1_Goertzel|reg.VA[6]~31\);

-- Location: LCCOMB_X20_Y8_N28
\INST1_Goertzel|reg.VA[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[7]~32_combout\ = (\INST1_Goertzel|reg.VA_prev2\(7) & ((\INST1_Goertzel|Add0~14_combout\ & (!\INST1_Goertzel|reg.VA[6]~31\)) # (!\INST1_Goertzel|Add0~14_combout\ & ((\INST1_Goertzel|reg.VA[6]~31\) # (GND))))) # 
-- (!\INST1_Goertzel|reg.VA_prev2\(7) & ((\INST1_Goertzel|Add0~14_combout\ & (\INST1_Goertzel|reg.VA[6]~31\ & VCC)) # (!\INST1_Goertzel|Add0~14_combout\ & (!\INST1_Goertzel|reg.VA[6]~31\))))
-- \INST1_Goertzel|reg.VA[7]~33\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(7) & ((!\INST1_Goertzel|reg.VA[6]~31\) # (!\INST1_Goertzel|Add0~14_combout\))) # (!\INST1_Goertzel|reg.VA_prev2\(7) & (!\INST1_Goertzel|Add0~14_combout\ & 
-- !\INST1_Goertzel|reg.VA[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(7),
	datab => \INST1_Goertzel|Add0~14_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[6]~31\,
	combout => \INST1_Goertzel|reg.VA[7]~32_combout\,
	cout => \INST1_Goertzel|reg.VA[7]~33\);

-- Location: LCCOMB_X20_Y8_N30
\INST1_Goertzel|reg.VA[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[8]~34_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(8) $ (\INST1_Goertzel|Add0~16_combout\ $ (\INST1_Goertzel|reg.VA[7]~33\)))) # (GND)
-- \INST1_Goertzel|reg.VA[8]~35\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(8) & (\INST1_Goertzel|Add0~16_combout\ & !\INST1_Goertzel|reg.VA[7]~33\)) # (!\INST1_Goertzel|reg.VA_prev2\(8) & ((\INST1_Goertzel|Add0~16_combout\) # (!\INST1_Goertzel|reg.VA[7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(8),
	datab => \INST1_Goertzel|Add0~16_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[7]~33\,
	combout => \INST1_Goertzel|reg.VA[8]~34_combout\,
	cout => \INST1_Goertzel|reg.VA[8]~35\);

-- Location: LCCOMB_X20_Y7_N0
\INST1_Goertzel|reg.VA[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[9]~36_combout\ = (\INST1_Goertzel|Add0~18_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(9) & (!\INST1_Goertzel|reg.VA[8]~35\)) # (!\INST1_Goertzel|reg.VA_prev2\(9) & (\INST1_Goertzel|reg.VA[8]~35\ & VCC)))) # 
-- (!\INST1_Goertzel|Add0~18_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(9) & ((\INST1_Goertzel|reg.VA[8]~35\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(9) & (!\INST1_Goertzel|reg.VA[8]~35\))))
-- \INST1_Goertzel|reg.VA[9]~37\ = CARRY((\INST1_Goertzel|Add0~18_combout\ & (\INST1_Goertzel|reg.VA_prev2\(9) & !\INST1_Goertzel|reg.VA[8]~35\)) # (!\INST1_Goertzel|Add0~18_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(9)) # (!\INST1_Goertzel|reg.VA[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~18_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(9),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[8]~35\,
	combout => \INST1_Goertzel|reg.VA[9]~36_combout\,
	cout => \INST1_Goertzel|reg.VA[9]~37\);

-- Location: LCCOMB_X20_Y7_N2
\INST1_Goertzel|reg.VA[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[10]~38_combout\ = ((\INST1_Goertzel|Add0~20_combout\ $ (\INST1_Goertzel|reg.VA_prev2\(10) $ (\INST1_Goertzel|reg.VA[9]~37\)))) # (GND)
-- \INST1_Goertzel|reg.VA[10]~39\ = CARRY((\INST1_Goertzel|Add0~20_combout\ & ((!\INST1_Goertzel|reg.VA[9]~37\) # (!\INST1_Goertzel|reg.VA_prev2\(10)))) # (!\INST1_Goertzel|Add0~20_combout\ & (!\INST1_Goertzel|reg.VA_prev2\(10) & 
-- !\INST1_Goertzel|reg.VA[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~20_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(10),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[9]~37\,
	combout => \INST1_Goertzel|reg.VA[10]~38_combout\,
	cout => \INST1_Goertzel|reg.VA[10]~39\);

-- Location: LCCOMB_X20_Y7_N4
\INST1_Goertzel|reg.VA[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[11]~40_combout\ = (\INST1_Goertzel|reg.VA_prev2\(11) & ((\INST1_Goertzel|Add0~22_combout\ & (!\INST1_Goertzel|reg.VA[10]~39\)) # (!\INST1_Goertzel|Add0~22_combout\ & ((\INST1_Goertzel|reg.VA[10]~39\) # (GND))))) # 
-- (!\INST1_Goertzel|reg.VA_prev2\(11) & ((\INST1_Goertzel|Add0~22_combout\ & (\INST1_Goertzel|reg.VA[10]~39\ & VCC)) # (!\INST1_Goertzel|Add0~22_combout\ & (!\INST1_Goertzel|reg.VA[10]~39\))))
-- \INST1_Goertzel|reg.VA[11]~41\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(11) & ((!\INST1_Goertzel|reg.VA[10]~39\) # (!\INST1_Goertzel|Add0~22_combout\))) # (!\INST1_Goertzel|reg.VA_prev2\(11) & (!\INST1_Goertzel|Add0~22_combout\ & 
-- !\INST1_Goertzel|reg.VA[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(11),
	datab => \INST1_Goertzel|Add0~22_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[10]~39\,
	combout => \INST1_Goertzel|reg.VA[11]~40_combout\,
	cout => \INST1_Goertzel|reg.VA[11]~41\);

-- Location: LCCOMB_X20_Y7_N6
\INST1_Goertzel|reg.VA[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[12]~42_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(12) $ (\INST1_Goertzel|Add0~24_combout\ $ (\INST1_Goertzel|reg.VA[11]~41\)))) # (GND)
-- \INST1_Goertzel|reg.VA[12]~43\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(12) & (\INST1_Goertzel|Add0~24_combout\ & !\INST1_Goertzel|reg.VA[11]~41\)) # (!\INST1_Goertzel|reg.VA_prev2\(12) & ((\INST1_Goertzel|Add0~24_combout\) # 
-- (!\INST1_Goertzel|reg.VA[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(12),
	datab => \INST1_Goertzel|Add0~24_combout\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[11]~41\,
	combout => \INST1_Goertzel|reg.VA[12]~42_combout\,
	cout => \INST1_Goertzel|reg.VA[12]~43\);

-- Location: LCCOMB_X20_Y7_N8
\INST1_Goertzel|reg.VA[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[13]~44_combout\ = (\INST1_Goertzel|Add0~26_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(13) & (!\INST1_Goertzel|reg.VA[12]~43\)) # (!\INST1_Goertzel|reg.VA_prev2\(13) & (\INST1_Goertzel|reg.VA[12]~43\ & VCC)))) # 
-- (!\INST1_Goertzel|Add0~26_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(13) & ((\INST1_Goertzel|reg.VA[12]~43\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(13) & (!\INST1_Goertzel|reg.VA[12]~43\))))
-- \INST1_Goertzel|reg.VA[13]~45\ = CARRY((\INST1_Goertzel|Add0~26_combout\ & (\INST1_Goertzel|reg.VA_prev2\(13) & !\INST1_Goertzel|reg.VA[12]~43\)) # (!\INST1_Goertzel|Add0~26_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(13)) # 
-- (!\INST1_Goertzel|reg.VA[12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~26_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(13),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[12]~43\,
	combout => \INST1_Goertzel|reg.VA[13]~44_combout\,
	cout => \INST1_Goertzel|reg.VA[13]~45\);

-- Location: LCCOMB_X20_Y7_N10
\INST1_Goertzel|reg.VA[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[14]~46_combout\ = ((\INST1_Goertzel|Add0~28_combout\ $ (\INST1_Goertzel|reg.VA_prev2\(14) $ (\INST1_Goertzel|reg.VA[13]~45\)))) # (GND)
-- \INST1_Goertzel|reg.VA[14]~47\ = CARRY((\INST1_Goertzel|Add0~28_combout\ & ((!\INST1_Goertzel|reg.VA[13]~45\) # (!\INST1_Goertzel|reg.VA_prev2\(14)))) # (!\INST1_Goertzel|Add0~28_combout\ & (!\INST1_Goertzel|reg.VA_prev2\(14) & 
-- !\INST1_Goertzel|reg.VA[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~28_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(14),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[13]~45\,
	combout => \INST1_Goertzel|reg.VA[14]~46_combout\,
	cout => \INST1_Goertzel|reg.VA[14]~47\);

-- Location: LCCOMB_X20_Y7_N12
\INST1_Goertzel|reg.VA[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[15]~48_combout\ = (\INST1_Goertzel|Add0~30_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(15) & (!\INST1_Goertzel|reg.VA[14]~47\)) # (!\INST1_Goertzel|reg.VA_prev2\(15) & (\INST1_Goertzel|reg.VA[14]~47\ & VCC)))) # 
-- (!\INST1_Goertzel|Add0~30_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(15) & ((\INST1_Goertzel|reg.VA[14]~47\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(15) & (!\INST1_Goertzel|reg.VA[14]~47\))))
-- \INST1_Goertzel|reg.VA[15]~49\ = CARRY((\INST1_Goertzel|Add0~30_combout\ & (\INST1_Goertzel|reg.VA_prev2\(15) & !\INST1_Goertzel|reg.VA[14]~47\)) # (!\INST1_Goertzel|Add0~30_combout\ & ((\INST1_Goertzel|reg.VA_prev2\(15)) # 
-- (!\INST1_Goertzel|reg.VA[14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~30_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(15),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[14]~47\,
	combout => \INST1_Goertzel|reg.VA[15]~48_combout\,
	cout => \INST1_Goertzel|reg.VA[15]~49\);

-- Location: LCCOMB_X20_Y7_N14
\INST1_Goertzel|reg.VA[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[16]~50_combout\ = ((\INST1_Goertzel|Add0~32_combout\ $ (\INST1_Goertzel|reg.VA_prev2\(16) $ (\INST1_Goertzel|reg.VA[15]~49\)))) # (GND)
-- \INST1_Goertzel|reg.VA[16]~51\ = CARRY((\INST1_Goertzel|Add0~32_combout\ & ((!\INST1_Goertzel|reg.VA[15]~49\) # (!\INST1_Goertzel|reg.VA_prev2\(16)))) # (!\INST1_Goertzel|Add0~32_combout\ & (!\INST1_Goertzel|reg.VA_prev2\(16) & 
-- !\INST1_Goertzel|reg.VA[15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~32_combout\,
	datab => \INST1_Goertzel|reg.VA_prev2\(16),
	datad => VCC,
	cin => \INST1_Goertzel|reg.VA[15]~49\,
	combout => \INST1_Goertzel|reg.VA[16]~50_combout\,
	cout => \INST1_Goertzel|reg.VA[16]~51\);

-- Location: LCCOMB_X20_Y7_N16
\INST1_Goertzel|reg.VA[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.VA[17]~52_combout\ = \INST1_Goertzel|Add0~34_combout\ $ (\INST1_Goertzel|reg.VA[16]~51\ $ (!\INST1_Goertzel|reg.VA_prev2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Add0~34_combout\,
	datad => \INST1_Goertzel|reg.VA_prev2\(17),
	cin => \INST1_Goertzel|reg.VA[16]~51\,
	combout => \INST1_Goertzel|reg.VA[17]~52_combout\);

-- Location: FF_X20_Y7_N17
\INST1_Goertzel|reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(17));

-- Location: LCCOMB_X19_Y7_N22
\INST1_Goertzel|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector5~1_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST1_Goertzel|reg.VA\(17),
	combout => \INST1_Goertzel|Selector5~1_combout\);

-- Location: DSPMULT_X18_Y8_N0
\INST1_Goertzel|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y8_N2
\INST1_Goertzel|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X20_Y7_N15
\INST1_Goertzel|reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(16));

-- Location: LCCOMB_X20_Y7_N18
\INST1_Goertzel|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector6~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(16),
	combout => \INST1_Goertzel|Selector6~0_combout\);

-- Location: FF_X20_Y7_N13
\INST1_Goertzel|reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(15));

-- Location: LCCOMB_X19_Y7_N28
\INST1_Goertzel|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector7~0_combout\ = (\INST1_Goertzel|reg.VA\(15) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA\(15),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector7~0_combout\);

-- Location: FF_X20_Y7_N11
\INST1_Goertzel|reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(14));

-- Location: LCCOMB_X20_Y7_N26
\INST1_Goertzel|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector8~0_combout\ = (\INST1_Goertzel|reg.VA\(14) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA\(14),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector8~0_combout\);

-- Location: FF_X20_Y7_N9
\INST1_Goertzel|reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(13));

-- Location: LCCOMB_X19_Y7_N18
\INST1_Goertzel|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector9~0_combout\ = (\INST1_Goertzel|reg.VA\(13) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(13),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector9~0_combout\);

-- Location: FF_X20_Y7_N7
\INST1_Goertzel|reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(12));

-- Location: LCCOMB_X20_Y7_N20
\INST1_Goertzel|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector10~0_combout\ = (\INST1_Goertzel|reg.VA\(12) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA\(12),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector10~0_combout\);

-- Location: FF_X20_Y7_N5
\INST1_Goertzel|reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(11));

-- Location: LCCOMB_X20_Y7_N22
\INST1_Goertzel|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector11~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(11),
	combout => \INST1_Goertzel|Selector11~0_combout\);

-- Location: FF_X20_Y7_N3
\INST1_Goertzel|reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(10));

-- Location: LCCOMB_X20_Y7_N28
\INST1_Goertzel|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector12~0_combout\ = (\INST1_Goertzel|reg.VA\(10) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(10),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector12~0_combout\);

-- Location: FF_X20_Y7_N1
\INST1_Goertzel|reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(9));

-- Location: LCCOMB_X20_Y7_N24
\INST1_Goertzel|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector13~0_combout\ = (\INST1_Goertzel|reg.VA\(9) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(9),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector13~0_combout\);

-- Location: FF_X20_Y8_N31
\INST1_Goertzel|reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(8));

-- Location: LCCOMB_X19_Y8_N4
\INST1_Goertzel|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector14~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(8),
	combout => \INST1_Goertzel|Selector14~0_combout\);

-- Location: FF_X20_Y8_N27
\INST1_Goertzel|reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(6));

-- Location: LCCOMB_X20_Y8_N2
\INST1_Goertzel|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector16~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(6),
	combout => \INST1_Goertzel|Selector16~0_combout\);

-- Location: FF_X20_Y8_N25
\INST1_Goertzel|reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(5));

-- Location: LCCOMB_X20_Y8_N6
\INST1_Goertzel|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector17~0_combout\ = (\INST1_Goertzel|reg.VA\(5) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(5),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector17~0_combout\);

-- Location: FF_X20_Y8_N23
\INST1_Goertzel|reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(4));

-- Location: LCCOMB_X20_Y8_N8
\INST1_Goertzel|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector18~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(4),
	combout => \INST1_Goertzel|Selector18~0_combout\);

-- Location: FF_X20_Y8_N21
\INST1_Goertzel|reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(3));

-- Location: LCCOMB_X20_Y8_N10
\INST1_Goertzel|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector19~0_combout\ = (\INST1_Goertzel|reg.VA\(3) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(3),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector19~0_combout\);

-- Location: FF_X20_Y8_N19
\INST1_Goertzel|reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(2));

-- Location: LCCOMB_X19_Y8_N10
\INST1_Goertzel|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector20~0_combout\ = (\INST1_Goertzel|reg.VA\(2) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(2),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector20~0_combout\);

-- Location: FF_X20_Y8_N17
\INST1_Goertzel|reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(1));

-- Location: LCCOMB_X21_Y8_N4
\INST1_Goertzel|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector21~0_combout\ = (\INST1_Goertzel|reg.VA\(1) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.VA\(1),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector21~0_combout\);

-- Location: FF_X20_Y8_N15
\INST1_Goertzel|reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(0));

-- Location: LCCOMB_X20_Y8_N4
\INST1_Goertzel|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector22~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST1_Goertzel|reg.VA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST1_Goertzel|reg.VA\(0),
	combout => \INST1_Goertzel|Selector22~0_combout\);

-- Location: FF_X20_Y8_N29
\INST1_Goertzel|reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.VA[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA\(7));

-- Location: LCCOMB_X20_Y8_N12
\INST1_Goertzel|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector15~0_combout\ = (\INST1_Goertzel|reg.VA\(7) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.VA\(7),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST1_Goertzel|Selector15~0_combout\);

-- Location: FF_X19_Y7_N7
\INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST1_Goertzel|Selector15~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\);

-- Location: DSPMULT_X18_Y6_N0
\INST1_Goertzel|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y6_N2
\INST1_Goertzel|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X18_Y7_N0
\INST1_Goertzel|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y7_N2
\INST1_Goertzel|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y8_N14
\INST1_Goertzel|reg.result[0][0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][0]~18_combout\ = (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((GND) # (!\INST1_Goertzel|reg.VA_prev2\(0)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\INST1_Goertzel|reg.VA_prev2\(0) $ 
-- (GND)))
-- \INST1_Goertzel|reg.result[0][0]~19\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\) # (!\INST1_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \INST1_Goertzel|reg.VA_prev2\(0),
	datad => VCC,
	combout => \INST1_Goertzel|reg.result[0][0]~18_combout\,
	cout => \INST1_Goertzel|reg.result[0][0]~19\);

-- Location: FF_X17_Y8_N15
\INST1_Goertzel|reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][0]~18_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][0]~q\);

-- Location: LCCOMB_X17_Y6_N14
\INST1_Goertzel|r_Real[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[0]~18_combout\ = (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ & (\INST1_Goertzel|reg.result[0][0]~q\ $ (VCC))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\INST1_Goertzel|reg.result[0][0]~q\) # 
-- (GND)))
-- \INST1_Goertzel|r_Real[0]~19\ = CARRY((\INST1_Goertzel|reg.result[0][0]~q\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\,
	datab => \INST1_Goertzel|reg.result[0][0]~q\,
	datad => VCC,
	combout => \INST1_Goertzel|r_Real[0]~18_combout\,
	cout => \INST1_Goertzel|r_Real[0]~19\);

-- Location: FF_X17_Y6_N15
\INST1_Goertzel|r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(0));

-- Location: LCCOMB_X17_Y8_N16
\INST1_Goertzel|reg.result[0][1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][1]~20_combout\ = (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\INST1_Goertzel|reg.VA_prev2\(1) & (!\INST1_Goertzel|reg.result[0][0]~19\)) # (!\INST1_Goertzel|reg.VA_prev2\(1) & 
-- (\INST1_Goertzel|reg.result[0][0]~19\ & VCC)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\INST1_Goertzel|reg.VA_prev2\(1) & ((\INST1_Goertzel|reg.result[0][0]~19\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(1) & 
-- (!\INST1_Goertzel|reg.result[0][0]~19\))))
-- \INST1_Goertzel|reg.result[0][1]~21\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\INST1_Goertzel|reg.VA_prev2\(1) & !\INST1_Goertzel|reg.result[0][0]~19\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\INST1_Goertzel|reg.VA_prev2\(1)) # (!\INST1_Goertzel|reg.result[0][0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \INST1_Goertzel|reg.VA_prev2\(1),
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][0]~19\,
	combout => \INST1_Goertzel|reg.result[0][1]~20_combout\,
	cout => \INST1_Goertzel|reg.result[0][1]~21\);

-- Location: FF_X17_Y8_N17
\INST1_Goertzel|reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][1]~20_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][1]~q\);

-- Location: LCCOMB_X17_Y6_N16
\INST1_Goertzel|r_Real[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[1]~20_combout\ = (\INST1_Goertzel|reg.result[0][1]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & (!\INST1_Goertzel|r_Real[0]~19\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & 
-- (\INST1_Goertzel|r_Real[0]~19\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][1]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\INST1_Goertzel|r_Real[0]~19\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\INST1_Goertzel|r_Real[0]~19\))))
-- \INST1_Goertzel|r_Real[1]~21\ = CARRY((\INST1_Goertzel|reg.result[0][1]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & !\INST1_Goertzel|r_Real[0]~19\)) # (!\INST1_Goertzel|reg.result[0][1]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\) # (!\INST1_Goertzel|r_Real[0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][1]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[0]~19\,
	combout => \INST1_Goertzel|r_Real[1]~20_combout\,
	cout => \INST1_Goertzel|r_Real[1]~21\);

-- Location: FF_X17_Y6_N17
\INST1_Goertzel|r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(1));

-- Location: LCCOMB_X17_Y8_N18
\INST1_Goertzel|reg.result[0][2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][2]~22_combout\ = ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\INST1_Goertzel|reg.VA_prev2\(2) $ (\INST1_Goertzel|reg.result[0][1]~21\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][2]~23\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((!\INST1_Goertzel|reg.result[0][1]~21\) # (!\INST1_Goertzel|reg.VA_prev2\(2)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\INST1_Goertzel|reg.VA_prev2\(2) & !\INST1_Goertzel|reg.result[0][1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST1_Goertzel|reg.VA_prev2\(2),
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][1]~21\,
	combout => \INST1_Goertzel|reg.result[0][2]~22_combout\,
	cout => \INST1_Goertzel|reg.result[0][2]~23\);

-- Location: FF_X17_Y8_N19
\INST1_Goertzel|reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][2]~22_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][2]~q\);

-- Location: LCCOMB_X17_Y6_N18
\INST1_Goertzel|r_Real[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[2]~22_combout\ = ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ $ (\INST1_Goertzel|reg.result[0][2]~q\ $ (\INST1_Goertzel|r_Real[1]~21\)))) # (GND)
-- \INST1_Goertzel|r_Real[2]~23\ = CARRY((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ & (\INST1_Goertzel|reg.result[0][2]~q\ & !\INST1_Goertzel|r_Real[1]~21\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\INST1_Goertzel|reg.result[0][2]~q\) # (!\INST1_Goertzel|r_Real[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST1_Goertzel|reg.result[0][2]~q\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[1]~21\,
	combout => \INST1_Goertzel|r_Real[2]~22_combout\,
	cout => \INST1_Goertzel|r_Real[2]~23\);

-- Location: FF_X17_Y6_N19
\INST1_Goertzel|r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(2));

-- Location: LCCOMB_X17_Y8_N20
\INST1_Goertzel|reg.result[0][3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][3]~24_combout\ = (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST1_Goertzel|reg.VA_prev2\(3) & (!\INST1_Goertzel|reg.result[0][2]~23\)) # (!\INST1_Goertzel|reg.VA_prev2\(3) & 
-- (\INST1_Goertzel|reg.result[0][2]~23\ & VCC)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST1_Goertzel|reg.VA_prev2\(3) & ((\INST1_Goertzel|reg.result[0][2]~23\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(3) & 
-- (!\INST1_Goertzel|reg.result[0][2]~23\))))
-- \INST1_Goertzel|reg.result[0][3]~25\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\INST1_Goertzel|reg.VA_prev2\(3) & !\INST1_Goertzel|reg.result[0][2]~23\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\INST1_Goertzel|reg.VA_prev2\(3)) # (!\INST1_Goertzel|reg.result[0][2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \INST1_Goertzel|reg.VA_prev2\(3),
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][2]~23\,
	combout => \INST1_Goertzel|reg.result[0][3]~24_combout\,
	cout => \INST1_Goertzel|reg.result[0][3]~25\);

-- Location: FF_X17_Y8_N21
\INST1_Goertzel|reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][3]~24_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][3]~q\);

-- Location: LCCOMB_X17_Y6_N20
\INST1_Goertzel|r_Real[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[3]~24_combout\ = (\INST1_Goertzel|reg.result[0][3]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & (!\INST1_Goertzel|r_Real[2]~23\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- (\INST1_Goertzel|r_Real[2]~23\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][3]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & ((\INST1_Goertzel|r_Real[2]~23\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\INST1_Goertzel|r_Real[2]~23\))))
-- \INST1_Goertzel|r_Real[3]~25\ = CARRY((\INST1_Goertzel|reg.result[0][3]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & !\INST1_Goertzel|r_Real[2]~23\)) # (!\INST1_Goertzel|reg.result[0][3]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\INST1_Goertzel|r_Real[2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][3]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[2]~23\,
	combout => \INST1_Goertzel|r_Real[3]~24_combout\,
	cout => \INST1_Goertzel|r_Real[3]~25\);

-- Location: FF_X17_Y6_N21
\INST1_Goertzel|r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(3));

-- Location: LCCOMB_X17_Y8_N22
\INST1_Goertzel|reg.result[0][4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][4]~26_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(4) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\INST1_Goertzel|reg.result[0][3]~25\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][4]~27\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(4) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\INST1_Goertzel|reg.result[0][3]~25\)) # (!\INST1_Goertzel|reg.VA_prev2\(4) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\) # (!\INST1_Goertzel|reg.result[0][3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(4),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][3]~25\,
	combout => \INST1_Goertzel|reg.result[0][4]~26_combout\,
	cout => \INST1_Goertzel|reg.result[0][4]~27\);

-- Location: FF_X17_Y8_N23
\INST1_Goertzel|reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][4]~26_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][4]~q\);

-- Location: LCCOMB_X17_Y6_N22
\INST1_Goertzel|r_Real[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[4]~26_combout\ = ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ $ (\INST1_Goertzel|reg.result[0][4]~q\ $ (\INST1_Goertzel|r_Real[3]~25\)))) # (GND)
-- \INST1_Goertzel|r_Real[4]~27\ = CARRY((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & (\INST1_Goertzel|reg.result[0][4]~q\ & !\INST1_Goertzel|r_Real[3]~25\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\INST1_Goertzel|reg.result[0][4]~q\) # (!\INST1_Goertzel|r_Real[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \INST1_Goertzel|reg.result[0][4]~q\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[3]~25\,
	combout => \INST1_Goertzel|r_Real[4]~26_combout\,
	cout => \INST1_Goertzel|r_Real[4]~27\);

-- Location: FF_X17_Y6_N23
\INST1_Goertzel|r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(4));

-- Location: LCCOMB_X17_Y8_N24
\INST1_Goertzel|reg.result[0][5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][5]~28_combout\ = (\INST1_Goertzel|reg.VA_prev2\(5) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (!\INST1_Goertzel|reg.result[0][4]~27\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\INST1_Goertzel|reg.result[0][4]~27\) # (GND))))) # (!\INST1_Goertzel|reg.VA_prev2\(5) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\INST1_Goertzel|reg.result[0][4]~27\ & VCC)) # 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (!\INST1_Goertzel|reg.result[0][4]~27\))))
-- \INST1_Goertzel|reg.result[0][5]~29\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(5) & ((!\INST1_Goertzel|reg.result[0][4]~27\) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\))) # (!\INST1_Goertzel|reg.VA_prev2\(5) & 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & !\INST1_Goertzel|reg.result[0][4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(5),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][4]~27\,
	combout => \INST1_Goertzel|reg.result[0][5]~28_combout\,
	cout => \INST1_Goertzel|reg.result[0][5]~29\);

-- Location: FF_X17_Y8_N25
\INST1_Goertzel|reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][5]~28_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][5]~q\);

-- Location: LCCOMB_X17_Y6_N24
\INST1_Goertzel|r_Real[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[5]~28_combout\ = (\INST1_Goertzel|reg.result[0][5]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & (!\INST1_Goertzel|r_Real[4]~27\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & 
-- (\INST1_Goertzel|r_Real[4]~27\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][5]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\INST1_Goertzel|r_Real[4]~27\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\INST1_Goertzel|r_Real[4]~27\))))
-- \INST1_Goertzel|r_Real[5]~29\ = CARRY((\INST1_Goertzel|reg.result[0][5]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & !\INST1_Goertzel|r_Real[4]~27\)) # (!\INST1_Goertzel|reg.result[0][5]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\) # (!\INST1_Goertzel|r_Real[4]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][5]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[4]~27\,
	combout => \INST1_Goertzel|r_Real[5]~28_combout\,
	cout => \INST1_Goertzel|r_Real[5]~29\);

-- Location: FF_X17_Y6_N25
\INST1_Goertzel|r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(5));

-- Location: LCCOMB_X17_Y8_N26
\INST1_Goertzel|reg.result[0][6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][6]~30_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(6) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\INST1_Goertzel|reg.result[0][5]~29\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][6]~31\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(6) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\INST1_Goertzel|reg.result[0][5]~29\)) # (!\INST1_Goertzel|reg.VA_prev2\(6) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\) # (!\INST1_Goertzel|reg.result[0][5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(6),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][5]~29\,
	combout => \INST1_Goertzel|reg.result[0][6]~30_combout\,
	cout => \INST1_Goertzel|reg.result[0][6]~31\);

-- Location: FF_X17_Y8_N27
\INST1_Goertzel|reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][6]~30_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][6]~q\);

-- Location: LCCOMB_X17_Y6_N26
\INST1_Goertzel|r_Real[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[6]~30_combout\ = ((\INST1_Goertzel|reg.result[0][6]~q\ $ (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ $ (\INST1_Goertzel|r_Real[5]~29\)))) # (GND)
-- \INST1_Goertzel|r_Real[6]~31\ = CARRY((\INST1_Goertzel|reg.result[0][6]~q\ & ((!\INST1_Goertzel|r_Real[5]~29\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\))) # (!\INST1_Goertzel|reg.result[0][6]~q\ & 
-- (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ & !\INST1_Goertzel|r_Real[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][6]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[5]~29\,
	combout => \INST1_Goertzel|r_Real[6]~30_combout\,
	cout => \INST1_Goertzel|r_Real[6]~31\);

-- Location: FF_X17_Y6_N27
\INST1_Goertzel|r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(6));

-- Location: LCCOMB_X17_Y8_N28
\INST1_Goertzel|reg.result[0][7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][7]~32_combout\ = (\INST1_Goertzel|reg.VA_prev2\(7) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST1_Goertzel|reg.result[0][6]~31\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\INST1_Goertzel|reg.result[0][6]~31\) # (GND))))) # (!\INST1_Goertzel|reg.VA_prev2\(7) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (\INST1_Goertzel|reg.result[0][6]~31\ & VCC)) # 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST1_Goertzel|reg.result[0][6]~31\))))
-- \INST1_Goertzel|reg.result[0][7]~33\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(7) & ((!\INST1_Goertzel|reg.result[0][6]~31\) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\))) # (!\INST1_Goertzel|reg.VA_prev2\(7) & 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\INST1_Goertzel|reg.result[0][6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(7),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][6]~31\,
	combout => \INST1_Goertzel|reg.result[0][7]~32_combout\,
	cout => \INST1_Goertzel|reg.result[0][7]~33\);

-- Location: FF_X17_Y8_N29
\INST1_Goertzel|reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][7]~32_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][7]~q\);

-- Location: LCCOMB_X17_Y6_N28
\INST1_Goertzel|r_Real[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[7]~32_combout\ = (\INST1_Goertzel|reg.result[0][7]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & (!\INST1_Goertzel|r_Real[6]~31\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (\INST1_Goertzel|r_Real[6]~31\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][7]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\INST1_Goertzel|r_Real[6]~31\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (!\INST1_Goertzel|r_Real[6]~31\))))
-- \INST1_Goertzel|r_Real[7]~33\ = CARRY((\INST1_Goertzel|reg.result[0][7]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & !\INST1_Goertzel|r_Real[6]~31\)) # (!\INST1_Goertzel|reg.result[0][7]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\) # (!\INST1_Goertzel|r_Real[6]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][7]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[6]~31\,
	combout => \INST1_Goertzel|r_Real[7]~32_combout\,
	cout => \INST1_Goertzel|r_Real[7]~33\);

-- Location: FF_X17_Y6_N29
\INST1_Goertzel|r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(7));

-- Location: LCCOMB_X17_Y8_N30
\INST1_Goertzel|reg.result[0][8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][8]~34_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(8) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (\INST1_Goertzel|reg.result[0][7]~33\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][8]~35\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(8) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\INST1_Goertzel|reg.result[0][7]~33\)) # (!\INST1_Goertzel|reg.VA_prev2\(8) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\) # (!\INST1_Goertzel|reg.result[0][7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(8),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][7]~33\,
	combout => \INST1_Goertzel|reg.result[0][8]~34_combout\,
	cout => \INST1_Goertzel|reg.result[0][8]~35\);

-- Location: FF_X17_Y8_N31
\INST1_Goertzel|reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][8]~34_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][8]~q\);

-- Location: LCCOMB_X17_Y6_N30
\INST1_Goertzel|r_Real[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[8]~34_combout\ = ((\INST1_Goertzel|reg.result[0][8]~q\ $ (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ $ (\INST1_Goertzel|r_Real[7]~33\)))) # (GND)
-- \INST1_Goertzel|r_Real[8]~35\ = CARRY((\INST1_Goertzel|reg.result[0][8]~q\ & ((!\INST1_Goertzel|r_Real[7]~33\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\))) # (!\INST1_Goertzel|reg.result[0][8]~q\ & 
-- (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ & !\INST1_Goertzel|r_Real[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][8]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[7]~33\,
	combout => \INST1_Goertzel|r_Real[8]~34_combout\,
	cout => \INST1_Goertzel|r_Real[8]~35\);

-- Location: FF_X17_Y6_N31
\INST1_Goertzel|r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(8));

-- Location: LCCOMB_X17_Y7_N0
\INST1_Goertzel|reg.result[0][9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][9]~36_combout\ = (\INST1_Goertzel|reg.VA_prev2\(9) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST1_Goertzel|reg.result[0][8]~35\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\INST1_Goertzel|reg.result[0][8]~35\) # (GND))))) # (!\INST1_Goertzel|reg.VA_prev2\(9) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (\INST1_Goertzel|reg.result[0][8]~35\ & VCC)) # 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST1_Goertzel|reg.result[0][8]~35\))))
-- \INST1_Goertzel|reg.result[0][9]~37\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(9) & ((!\INST1_Goertzel|reg.result[0][8]~35\) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\))) # (!\INST1_Goertzel|reg.VA_prev2\(9) & 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\INST1_Goertzel|reg.result[0][8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(9),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][8]~35\,
	combout => \INST1_Goertzel|reg.result[0][9]~36_combout\,
	cout => \INST1_Goertzel|reg.result[0][9]~37\);

-- Location: FF_X17_Y7_N1
\INST1_Goertzel|reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][9]~36_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][9]~q\);

-- Location: LCCOMB_X17_Y5_N0
\INST1_Goertzel|r_Real[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[9]~36_combout\ = (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\INST1_Goertzel|reg.result[0][9]~q\ & (!\INST1_Goertzel|r_Real[8]~35\)) # (!\INST1_Goertzel|reg.result[0][9]~q\ & ((\INST1_Goertzel|r_Real[8]~35\) # 
-- (GND))))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\INST1_Goertzel|reg.result[0][9]~q\ & (\INST1_Goertzel|r_Real[8]~35\ & VCC)) # (!\INST1_Goertzel|reg.result[0][9]~q\ & (!\INST1_Goertzel|r_Real[8]~35\))))
-- \INST1_Goertzel|r_Real[9]~37\ = CARRY((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((!\INST1_Goertzel|r_Real[8]~35\) # (!\INST1_Goertzel|reg.result[0][9]~q\))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\INST1_Goertzel|reg.result[0][9]~q\ & !\INST1_Goertzel|r_Real[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\,
	datab => \INST1_Goertzel|reg.result[0][9]~q\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[8]~35\,
	combout => \INST1_Goertzel|r_Real[9]~36_combout\,
	cout => \INST1_Goertzel|r_Real[9]~37\);

-- Location: FF_X17_Y5_N1
\INST1_Goertzel|r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(9));

-- Location: LCCOMB_X17_Y7_N2
\INST1_Goertzel|reg.result[0][10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][10]~38_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(10) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\INST1_Goertzel|reg.result[0][9]~37\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][10]~39\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(10) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\INST1_Goertzel|reg.result[0][9]~37\)) # (!\INST1_Goertzel|reg.VA_prev2\(10) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\INST1_Goertzel|reg.result[0][9]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(10),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][9]~37\,
	combout => \INST1_Goertzel|reg.result[0][10]~38_combout\,
	cout => \INST1_Goertzel|reg.result[0][10]~39\);

-- Location: FF_X17_Y7_N3
\INST1_Goertzel|reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][10]~38_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][10]~q\);

-- Location: LCCOMB_X17_Y5_N2
\INST1_Goertzel|r_Real[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[10]~38_combout\ = ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ $ (\INST1_Goertzel|reg.result[0][10]~q\ $ (\INST1_Goertzel|r_Real[9]~37\)))) # (GND)
-- \INST1_Goertzel|r_Real[10]~39\ = CARRY((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ & (\INST1_Goertzel|reg.result[0][10]~q\ & !\INST1_Goertzel|r_Real[9]~37\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\INST1_Goertzel|reg.result[0][10]~q\) # (!\INST1_Goertzel|r_Real[9]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\,
	datab => \INST1_Goertzel|reg.result[0][10]~q\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[9]~37\,
	combout => \INST1_Goertzel|r_Real[10]~38_combout\,
	cout => \INST1_Goertzel|r_Real[10]~39\);

-- Location: FF_X17_Y5_N3
\INST1_Goertzel|r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(10));

-- Location: LCCOMB_X17_Y7_N4
\INST1_Goertzel|reg.result[0][11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][11]~40_combout\ = (\INST1_Goertzel|reg.VA_prev2\(11) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\INST1_Goertzel|reg.result[0][10]~39\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\INST1_Goertzel|reg.result[0][10]~39\) # (GND))))) # (!\INST1_Goertzel|reg.VA_prev2\(11) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\INST1_Goertzel|reg.result[0][10]~39\ & VCC)) # 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\INST1_Goertzel|reg.result[0][10]~39\))))
-- \INST1_Goertzel|reg.result[0][11]~41\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(11) & ((!\INST1_Goertzel|reg.result[0][10]~39\) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\))) # (!\INST1_Goertzel|reg.VA_prev2\(11) & 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & !\INST1_Goertzel|reg.result[0][10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(11),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][10]~39\,
	combout => \INST1_Goertzel|reg.result[0][11]~40_combout\,
	cout => \INST1_Goertzel|reg.result[0][11]~41\);

-- Location: FF_X17_Y7_N5
\INST1_Goertzel|reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][11]~40_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][11]~q\);

-- Location: LCCOMB_X17_Y5_N4
\INST1_Goertzel|r_Real[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[11]~40_combout\ = (\INST1_Goertzel|reg.result[0][11]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & (!\INST1_Goertzel|r_Real[10]~39\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (\INST1_Goertzel|r_Real[10]~39\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][11]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\INST1_Goertzel|r_Real[10]~39\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\INST1_Goertzel|r_Real[10]~39\))))
-- \INST1_Goertzel|r_Real[11]~41\ = CARRY((\INST1_Goertzel|reg.result[0][11]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & !\INST1_Goertzel|r_Real[10]~39\)) # (!\INST1_Goertzel|reg.result[0][11]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\) # (!\INST1_Goertzel|r_Real[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][11]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[10]~39\,
	combout => \INST1_Goertzel|r_Real[11]~40_combout\,
	cout => \INST1_Goertzel|r_Real[11]~41\);

-- Location: FF_X17_Y5_N5
\INST1_Goertzel|r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(11));

-- Location: LCCOMB_X17_Y7_N6
\INST1_Goertzel|reg.result[0][12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][12]~42_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(12) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ $ (\INST1_Goertzel|reg.result[0][11]~41\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][12]~43\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(12) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ & !\INST1_Goertzel|reg.result[0][11]~41\)) # (!\INST1_Goertzel|reg.VA_prev2\(12) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\) # (!\INST1_Goertzel|reg.result[0][11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(12),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][11]~41\,
	combout => \INST1_Goertzel|reg.result[0][12]~42_combout\,
	cout => \INST1_Goertzel|reg.result[0][12]~43\);

-- Location: FF_X17_Y7_N7
\INST1_Goertzel|reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][12]~42_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][12]~q\);

-- Location: LCCOMB_X17_Y5_N6
\INST1_Goertzel|r_Real[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[12]~42_combout\ = ((\INST1_Goertzel|reg.result[0][12]~q\ $ (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ $ (\INST1_Goertzel|r_Real[11]~41\)))) # (GND)
-- \INST1_Goertzel|r_Real[12]~43\ = CARRY((\INST1_Goertzel|reg.result[0][12]~q\ & ((!\INST1_Goertzel|r_Real[11]~41\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\))) # (!\INST1_Goertzel|reg.result[0][12]~q\ & 
-- (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ & !\INST1_Goertzel|r_Real[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][12]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[11]~41\,
	combout => \INST1_Goertzel|r_Real[12]~42_combout\,
	cout => \INST1_Goertzel|r_Real[12]~43\);

-- Location: FF_X17_Y5_N7
\INST1_Goertzel|r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(12));

-- Location: LCCOMB_X17_Y7_N8
\INST1_Goertzel|reg.result[0][13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][13]~44_combout\ = (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\INST1_Goertzel|reg.VA_prev2\(13) & (!\INST1_Goertzel|reg.result[0][12]~43\)) # (!\INST1_Goertzel|reg.VA_prev2\(13) & 
-- (\INST1_Goertzel|reg.result[0][12]~43\ & VCC)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\INST1_Goertzel|reg.VA_prev2\(13) & ((\INST1_Goertzel|reg.result[0][12]~43\) # (GND))) # (!\INST1_Goertzel|reg.VA_prev2\(13) & 
-- (!\INST1_Goertzel|reg.result[0][12]~43\))))
-- \INST1_Goertzel|reg.result[0][13]~45\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\INST1_Goertzel|reg.VA_prev2\(13) & !\INST1_Goertzel|reg.result[0][12]~43\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\INST1_Goertzel|reg.VA_prev2\(13)) # (!\INST1_Goertzel|reg.result[0][12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST1_Goertzel|reg.VA_prev2\(13),
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][12]~43\,
	combout => \INST1_Goertzel|reg.result[0][13]~44_combout\,
	cout => \INST1_Goertzel|reg.result[0][13]~45\);

-- Location: FF_X17_Y7_N9
\INST1_Goertzel|reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][13]~44_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][13]~q\);

-- Location: LCCOMB_X17_Y5_N8
\INST1_Goertzel|r_Real[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[13]~44_combout\ = (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\INST1_Goertzel|reg.result[0][13]~q\ & (!\INST1_Goertzel|r_Real[12]~43\)) # (!\INST1_Goertzel|reg.result[0][13]~q\ & ((\INST1_Goertzel|r_Real[12]~43\) # 
-- (GND))))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\INST1_Goertzel|reg.result[0][13]~q\ & (\INST1_Goertzel|r_Real[12]~43\ & VCC)) # (!\INST1_Goertzel|reg.result[0][13]~q\ & (!\INST1_Goertzel|r_Real[12]~43\))))
-- \INST1_Goertzel|r_Real[13]~45\ = CARRY((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((!\INST1_Goertzel|r_Real[12]~43\) # (!\INST1_Goertzel|reg.result[0][13]~q\))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & 
-- (!\INST1_Goertzel|reg.result[0][13]~q\ & !\INST1_Goertzel|r_Real[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST1_Goertzel|reg.result[0][13]~q\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[12]~43\,
	combout => \INST1_Goertzel|r_Real[13]~44_combout\,
	cout => \INST1_Goertzel|r_Real[13]~45\);

-- Location: FF_X17_Y5_N9
\INST1_Goertzel|r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(13));

-- Location: LCCOMB_X17_Y7_N10
\INST1_Goertzel|reg.result[0][14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][14]~46_combout\ = ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ $ (\INST1_Goertzel|reg.VA_prev2\(14) $ (\INST1_Goertzel|reg.result[0][13]~45\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][14]~47\ = CARRY((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((!\INST1_Goertzel|reg.result[0][13]~45\) # (!\INST1_Goertzel|reg.VA_prev2\(14)))) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\INST1_Goertzel|reg.VA_prev2\(14) & !\INST1_Goertzel|reg.result[0][13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \INST1_Goertzel|reg.VA_prev2\(14),
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][13]~45\,
	combout => \INST1_Goertzel|reg.result[0][14]~46_combout\,
	cout => \INST1_Goertzel|reg.result[0][14]~47\);

-- Location: FF_X17_Y7_N11
\INST1_Goertzel|reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][14]~46_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][14]~q\);

-- Location: LCCOMB_X17_Y5_N10
\INST1_Goertzel|r_Real[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[14]~46_combout\ = ((\INST1_Goertzel|reg.result[0][14]~q\ $ (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ $ (\INST1_Goertzel|r_Real[13]~45\)))) # (GND)
-- \INST1_Goertzel|r_Real[14]~47\ = CARRY((\INST1_Goertzel|reg.result[0][14]~q\ & ((!\INST1_Goertzel|r_Real[13]~45\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\))) # (!\INST1_Goertzel|reg.result[0][14]~q\ & 
-- (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ & !\INST1_Goertzel|r_Real[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][14]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[13]~45\,
	combout => \INST1_Goertzel|r_Real[14]~46_combout\,
	cout => \INST1_Goertzel|r_Real[14]~47\);

-- Location: FF_X17_Y5_N11
\INST1_Goertzel|r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(14));

-- Location: LCCOMB_X17_Y7_N12
\INST1_Goertzel|reg.result[0][15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][15]~48_combout\ = (\INST1_Goertzel|reg.VA_prev2\(15) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\INST1_Goertzel|reg.result[0][14]~47\)) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\INST1_Goertzel|reg.result[0][14]~47\) # (GND))))) # (!\INST1_Goertzel|reg.VA_prev2\(15) & ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (\INST1_Goertzel|reg.result[0][14]~47\ & VCC)) # 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\INST1_Goertzel|reg.result[0][14]~47\))))
-- \INST1_Goertzel|reg.result[0][15]~49\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(15) & ((!\INST1_Goertzel|reg.result[0][14]~47\) # (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\))) # (!\INST1_Goertzel|reg.VA_prev2\(15) & 
-- (!\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & !\INST1_Goertzel|reg.result[0][14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(15),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][14]~47\,
	combout => \INST1_Goertzel|reg.result[0][15]~48_combout\,
	cout => \INST1_Goertzel|reg.result[0][15]~49\);

-- Location: FF_X17_Y7_N13
\INST1_Goertzel|reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][15]~48_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][15]~q\);

-- Location: LCCOMB_X17_Y5_N12
\INST1_Goertzel|r_Real[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[15]~48_combout\ = (\INST1_Goertzel|reg.result[0][15]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & (!\INST1_Goertzel|r_Real[14]~47\)) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- (\INST1_Goertzel|r_Real[14]~47\ & VCC)))) # (!\INST1_Goertzel|reg.result[0][15]~q\ & ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\INST1_Goertzel|r_Real[14]~47\) # (GND))) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- (!\INST1_Goertzel|r_Real[14]~47\))))
-- \INST1_Goertzel|r_Real[15]~49\ = CARRY((\INST1_Goertzel|reg.result[0][15]~q\ & (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & !\INST1_Goertzel|r_Real[14]~47\)) # (!\INST1_Goertzel|reg.result[0][15]~q\ & 
-- ((\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\) # (!\INST1_Goertzel|r_Real[14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][15]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[14]~47\,
	combout => \INST1_Goertzel|r_Real[15]~48_combout\,
	cout => \INST1_Goertzel|r_Real[15]~49\);

-- Location: FF_X17_Y5_N13
\INST1_Goertzel|r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(15));

-- Location: LCCOMB_X17_Y7_N14
\INST1_Goertzel|reg.result[0][16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][16]~50_combout\ = ((\INST1_Goertzel|reg.VA_prev2\(16) $ (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST1_Goertzel|reg.result[0][15]~49\)))) # (GND)
-- \INST1_Goertzel|reg.result[0][16]~51\ = CARRY((\INST1_Goertzel|reg.VA_prev2\(16) & (\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ & !\INST1_Goertzel|reg.result[0][15]~49\)) # (!\INST1_Goertzel|reg.VA_prev2\(16) & 
-- ((\INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\) # (!\INST1_Goertzel|reg.result[0][15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.VA_prev2\(16),
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \INST1_Goertzel|reg.result[0][15]~49\,
	combout => \INST1_Goertzel|reg.result[0][16]~50_combout\,
	cout => \INST1_Goertzel|reg.result[0][16]~51\);

-- Location: FF_X17_Y7_N15
\INST1_Goertzel|reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][16]~50_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][16]~q\);

-- Location: LCCOMB_X17_Y5_N14
\INST1_Goertzel|r_Real[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[16]~50_combout\ = ((\INST1_Goertzel|reg.result[0][16]~q\ $ (\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\INST1_Goertzel|r_Real[15]~49\)))) # (GND)
-- \INST1_Goertzel|r_Real[16]~51\ = CARRY((\INST1_Goertzel|reg.result[0][16]~q\ & ((!\INST1_Goertzel|r_Real[15]~49\) # (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\))) # (!\INST1_Goertzel|reg.result[0][16]~q\ & 
-- (!\INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & !\INST1_Goertzel|r_Real[15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.result[0][16]~q\,
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST1_Goertzel|r_Real[15]~49\,
	combout => \INST1_Goertzel|r_Real[16]~50_combout\,
	cout => \INST1_Goertzel|r_Real[16]~51\);

-- Location: FF_X17_Y5_N15
\INST1_Goertzel|r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(16));

-- Location: LCCOMB_X17_Y7_N16
\INST1_Goertzel|reg.result[0][17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|reg.result[0][17]~52_combout\ = \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST1_Goertzel|reg.result[0][16]~51\ $ (!\INST1_Goertzel|reg.VA_prev2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => \INST1_Goertzel|reg.VA_prev2\(17),
	cin => \INST1_Goertzel|reg.result[0][16]~51\,
	combout => \INST1_Goertzel|reg.result[0][17]~52_combout\);

-- Location: FF_X17_Y7_N17
\INST1_Goertzel|reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|reg.result[0][17]~52_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.result[0][17]~q\);

-- Location: LCCOMB_X17_Y5_N16
\INST1_Goertzel|r_Real[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Real[17]~52_combout\ = \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\INST1_Goertzel|r_Real[16]~51\ $ (!\INST1_Goertzel|reg.result[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => \INST1_Goertzel|reg.result[0][17]~q\,
	cin => \INST1_Goertzel|r_Real[16]~51\,
	combout => \INST1_Goertzel|r_Real[17]~52_combout\);

-- Location: FF_X17_Y5_N17
\INST1_Goertzel|r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Real[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Real\(17));

-- Location: FF_X16_Y2_N5
\INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector16~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N6
\INST2_Goertzel|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector34~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector34~0_combout\);

-- Location: FF_X17_Y4_N7
\INST2_Goertzel|reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector34~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(6));

-- Location: IOIBUF_X0_Y2_N15
\i_ADC2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(6),
	o => \i_ADC2[6]~input_o\);

-- Location: FF_X17_Y2_N27
\INST2_sampler|r_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[6]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(6));

-- Location: FF_X16_Y2_N1
\INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector22~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N8
\INST2_Goertzel|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector40~0_combout\ = (\INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector40~0_combout\);

-- Location: FF_X17_Y4_N9
\INST2_Goertzel|reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector40~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(0));

-- Location: LCCOMB_X17_Y2_N12
\INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Selector21~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\);

-- Location: FF_X17_Y2_N13
\INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N2
\INST2_Goertzel|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector39~0_combout\ = (\INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector39~0_combout\);

-- Location: FF_X17_Y4_N3
\INST2_Goertzel|reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector39~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(1));

-- Location: IOIBUF_X28_Y0_N15
\i_ADC2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(1),
	o => \i_ADC2[1]~input_o\);

-- Location: FF_X17_Y2_N17
\INST2_sampler|r_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[1]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(1));

-- Location: LCCOMB_X16_Y3_N12
\INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Selector20~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\);

-- Location: FF_X16_Y3_N13
\INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\);

-- Location: LCCOMB_X16_Y3_N8
\INST2_Goertzel|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector38~0_combout\ = (\INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector38~0_combout\);

-- Location: FF_X16_Y3_N9
\INST2_Goertzel|reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector38~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(2));

-- Location: IOIBUF_X7_Y0_N29
\i_ADC2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(3),
	o => \i_ADC2[3]~input_o\);

-- Location: FF_X17_Y2_N21
\INST2_sampler|r_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[3]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(3));

-- Location: FF_X16_Y2_N13
\INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector18~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N10
\INST2_Goertzel|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector36~0_combout\ = (\INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector36~0_combout\);

-- Location: FF_X17_Y4_N11
\INST2_Goertzel|reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector36~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(4));

-- Location: IOIBUF_X28_Y0_N1
\i_ADC2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(4),
	o => \i_ADC2[4]~input_o\);

-- Location: FF_X17_Y2_N23
\INST2_sampler|r_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[4]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(4));

-- Location: LCCOMB_X16_Y3_N22
\INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Selector15~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2feeder_combout\);

-- Location: FF_X16_Y3_N23
\INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\);

-- Location: LCCOMB_X16_Y3_N30
\INST2_Goertzel|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector33~0_combout\ = (\INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector33~0_combout\);

-- Location: FF_X16_Y3_N31
\INST2_Goertzel|reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector33~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(7));

-- Location: LCCOMB_X16_Y3_N16
\INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Selector13~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\);

-- Location: FF_X16_Y3_N17
\INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\);

-- Location: LCCOMB_X16_Y3_N28
\INST2_Goertzel|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector31~0_combout\ = (\INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector31~0_combout\);

-- Location: FF_X16_Y3_N29
\INST2_Goertzel|reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector31~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(9));

-- Location: IOIBUF_X14_Y0_N22
\i_ADC2[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(10),
	o => \i_ADC2[10]~input_o\);

-- Location: FF_X17_Y1_N3
\INST2_sampler|r_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[10]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(10));

-- Location: IOIBUF_X14_Y0_N1
\i_ADC2[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(11),
	o => \i_ADC2[11]~input_o\);

-- Location: LCCOMB_X17_Y1_N30
\INST2_sampler|r_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_sampler|r_DATA[11]~feeder_combout\ = \i_ADC2[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ADC2[11]~input_o\,
	combout => \INST2_sampler|r_DATA[11]~feeder_combout\);

-- Location: FF_X17_Y1_N31
\INST2_sampler|r_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_sampler|r_DATA[11]~feeder_combout\,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(11));

-- Location: FF_X17_Y2_N3
\INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector9~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N30
\INST2_Goertzel|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector27~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector27~0_combout\);

-- Location: FF_X17_Y3_N31
\INST2_Goertzel|reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector27~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(13));

-- Location: LCCOMB_X16_Y1_N22
\INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Selector8~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2feeder_combout\);

-- Location: FF_X16_Y1_N23
\INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N24
\INST2_Goertzel|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector26~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector26~0_combout\);

-- Location: FF_X17_Y3_N25
\INST2_Goertzel|reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector26~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(14));

-- Location: FF_X17_Y2_N1
\INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector7~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N26
\INST2_Goertzel|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector25~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector25~0_combout\);

-- Location: FF_X17_Y3_N27
\INST2_Goertzel|reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector25~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(15));

-- Location: FF_X17_Y2_N11
\INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector6~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N28
\INST2_Goertzel|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector24~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector24~0_combout\);

-- Location: FF_X17_Y3_N29
\INST2_Goertzel|reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector24~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(16));

-- Location: LCCOMB_X17_Y2_N8
\INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Selector5~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2feeder_combout\);

-- Location: FF_X17_Y2_N9
\INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N18
\INST2_Goertzel|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector23~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST2_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector23~0_combout\);

-- Location: FF_X17_Y3_N19
\INST2_Goertzel|reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector23~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(17));

-- Location: IOIBUF_X16_Y0_N22
\i_ADC2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(9),
	o => \i_ADC2[9]~input_o\);

-- Location: FF_X17_Y1_N1
\INST2_sampler|r_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[9]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(9));

-- Location: IOIBUF_X7_Y0_N22
\i_ADC2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(8),
	o => \i_ADC2[8]~input_o\);

-- Location: FF_X17_Y2_N31
\INST2_sampler|r_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[8]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(8));

-- Location: IOIBUF_X9_Y0_N22
\i_ADC2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(7),
	o => \i_ADC2[7]~input_o\);

-- Location: FF_X17_Y2_N29
\INST2_sampler|r_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[7]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(7));

-- Location: IOIBUF_X5_Y0_N22
\i_ADC2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(5),
	o => \i_ADC2[5]~input_o\);

-- Location: FF_X17_Y2_N25
\INST2_sampler|r_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[5]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(5));

-- Location: IOIBUF_X5_Y0_N29
\i_ADC2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(2),
	o => \i_ADC2[2]~input_o\);

-- Location: FF_X17_Y2_N19
\INST2_sampler|r_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[2]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(2));

-- Location: IOIBUF_X16_Y29_N22
\i_ADC2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC2(0),
	o => \i_ADC2[0]~input_o\);

-- Location: FF_X17_Y2_N15
\INST2_sampler|r_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC2[0]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_sampler|r_DATA\(0));

-- Location: LCCOMB_X17_Y2_N14
\INST2_Goertzel|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~0_combout\ = (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\INST2_sampler|r_DATA\(0) $ (VCC))) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\INST2_sampler|r_DATA\(0) & VCC))
-- \INST2_Goertzel|Add0~1\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ & \INST2_sampler|r_DATA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \INST2_sampler|r_DATA\(0),
	datad => VCC,
	combout => \INST2_Goertzel|Add0~0_combout\,
	cout => \INST2_Goertzel|Add0~1\);

-- Location: LCCOMB_X17_Y2_N16
\INST2_Goertzel|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~2_combout\ = (\INST2_sampler|r_DATA\(1) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\INST2_Goertzel|Add0~1\ & VCC)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST2_Goertzel|Add0~1\)))) # 
-- (!\INST2_sampler|r_DATA\(1) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST2_Goertzel|Add0~1\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\INST2_Goertzel|Add0~1\) # (GND)))))
-- \INST2_Goertzel|Add0~3\ = CARRY((\INST2_sampler|r_DATA\(1) & (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\INST2_Goertzel|Add0~1\)) # (!\INST2_sampler|r_DATA\(1) & ((!\INST2_Goertzel|Add0~1\) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(1),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~1\,
	combout => \INST2_Goertzel|Add0~2_combout\,
	cout => \INST2_Goertzel|Add0~3\);

-- Location: LCCOMB_X17_Y2_N18
\INST2_Goertzel|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~4_combout\ = ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\INST2_sampler|r_DATA\(2) $ (!\INST2_Goertzel|Add0~3\)))) # (GND)
-- \INST2_Goertzel|Add0~5\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\INST2_sampler|r_DATA\(2)) # (!\INST2_Goertzel|Add0~3\))) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\INST2_sampler|r_DATA\(2) & 
-- !\INST2_Goertzel|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST2_sampler|r_DATA\(2),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~3\,
	combout => \INST2_Goertzel|Add0~4_combout\,
	cout => \INST2_Goertzel|Add0~5\);

-- Location: LCCOMB_X17_Y2_N20
\INST2_Goertzel|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~6_combout\ = (\INST2_sampler|r_DATA\(3) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\INST2_Goertzel|Add0~5\ & VCC)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST2_Goertzel|Add0~5\)))) # 
-- (!\INST2_sampler|r_DATA\(3) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST2_Goertzel|Add0~5\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\INST2_Goertzel|Add0~5\) # (GND)))))
-- \INST2_Goertzel|Add0~7\ = CARRY((\INST2_sampler|r_DATA\(3) & (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\INST2_Goertzel|Add0~5\)) # (!\INST2_sampler|r_DATA\(3) & ((!\INST2_Goertzel|Add0~5\) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(3),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~5\,
	combout => \INST2_Goertzel|Add0~6_combout\,
	cout => \INST2_Goertzel|Add0~7\);

-- Location: LCCOMB_X17_Y2_N22
\INST2_Goertzel|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~8_combout\ = ((\INST2_sampler|r_DATA\(4) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\INST2_Goertzel|Add0~7\)))) # (GND)
-- \INST2_Goertzel|Add0~9\ = CARRY((\INST2_sampler|r_DATA\(4) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\INST2_Goertzel|Add0~7\))) # (!\INST2_sampler|r_DATA\(4) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- !\INST2_Goertzel|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(4),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~7\,
	combout => \INST2_Goertzel|Add0~8_combout\,
	cout => \INST2_Goertzel|Add0~9\);

-- Location: LCCOMB_X17_Y2_N24
\INST2_Goertzel|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~10_combout\ = (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_sampler|r_DATA\(5) & (\INST2_Goertzel|Add0~9\ & VCC)) # (!\INST2_sampler|r_DATA\(5) & (!\INST2_Goertzel|Add0~9\)))) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_sampler|r_DATA\(5) & (!\INST2_Goertzel|Add0~9\)) # (!\INST2_sampler|r_DATA\(5) & ((\INST2_Goertzel|Add0~9\) # (GND)))))
-- \INST2_Goertzel|Add0~11\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\INST2_sampler|r_DATA\(5) & !\INST2_Goertzel|Add0~9\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\INST2_Goertzel|Add0~9\) # 
-- (!\INST2_sampler|r_DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST2_sampler|r_DATA\(5),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~9\,
	combout => \INST2_Goertzel|Add0~10_combout\,
	cout => \INST2_Goertzel|Add0~11\);

-- Location: LCCOMB_X17_Y2_N26
\INST2_Goertzel|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~12_combout\ = ((\INST2_sampler|r_DATA\(6) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\INST2_Goertzel|Add0~11\)))) # (GND)
-- \INST2_Goertzel|Add0~13\ = CARRY((\INST2_sampler|r_DATA\(6) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\INST2_Goertzel|Add0~11\))) # (!\INST2_sampler|r_DATA\(6) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- !\INST2_Goertzel|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(6),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~11\,
	combout => \INST2_Goertzel|Add0~12_combout\,
	cout => \INST2_Goertzel|Add0~13\);

-- Location: LCCOMB_X17_Y2_N28
\INST2_Goertzel|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~14_combout\ = (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST2_sampler|r_DATA\(7) & (\INST2_Goertzel|Add0~13\ & VCC)) # (!\INST2_sampler|r_DATA\(7) & (!\INST2_Goertzel|Add0~13\)))) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST2_sampler|r_DATA\(7) & (!\INST2_Goertzel|Add0~13\)) # (!\INST2_sampler|r_DATA\(7) & ((\INST2_Goertzel|Add0~13\) # (GND)))))
-- \INST2_Goertzel|Add0~15\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\INST2_sampler|r_DATA\(7) & !\INST2_Goertzel|Add0~13\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\INST2_Goertzel|Add0~13\) # 
-- (!\INST2_sampler|r_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \INST2_sampler|r_DATA\(7),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~13\,
	combout => \INST2_Goertzel|Add0~14_combout\,
	cout => \INST2_Goertzel|Add0~15\);

-- Location: LCCOMB_X17_Y2_N30
\INST2_Goertzel|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~16_combout\ = ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\INST2_sampler|r_DATA\(8) $ (!\INST2_Goertzel|Add0~15\)))) # (GND)
-- \INST2_Goertzel|Add0~17\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\INST2_sampler|r_DATA\(8)) # (!\INST2_Goertzel|Add0~15\))) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\INST2_sampler|r_DATA\(8) & 
-- !\INST2_Goertzel|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \INST2_sampler|r_DATA\(8),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~15\,
	combout => \INST2_Goertzel|Add0~16_combout\,
	cout => \INST2_Goertzel|Add0~17\);

-- Location: LCCOMB_X17_Y1_N0
\INST2_Goertzel|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~18_combout\ = (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\INST2_sampler|r_DATA\(9) & (\INST2_Goertzel|Add0~17\ & VCC)) # (!\INST2_sampler|r_DATA\(9) & (!\INST2_Goertzel|Add0~17\)))) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\INST2_sampler|r_DATA\(9) & (!\INST2_Goertzel|Add0~17\)) # (!\INST2_sampler|r_DATA\(9) & ((\INST2_Goertzel|Add0~17\) # (GND)))))
-- \INST2_Goertzel|Add0~19\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\INST2_sampler|r_DATA\(9) & !\INST2_Goertzel|Add0~17\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\INST2_Goertzel|Add0~17\) # 
-- (!\INST2_sampler|r_DATA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \INST2_sampler|r_DATA\(9),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~17\,
	combout => \INST2_Goertzel|Add0~18_combout\,
	cout => \INST2_Goertzel|Add0~19\);

-- Location: LCCOMB_X17_Y1_N2
\INST2_Goertzel|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~20_combout\ = ((\INST2_sampler|r_DATA\(10) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\INST2_Goertzel|Add0~19\)))) # (GND)
-- \INST2_Goertzel|Add0~21\ = CARRY((\INST2_sampler|r_DATA\(10) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\INST2_Goertzel|Add0~19\))) # (!\INST2_sampler|r_DATA\(10) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- !\INST2_Goertzel|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(10),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~19\,
	combout => \INST2_Goertzel|Add0~20_combout\,
	cout => \INST2_Goertzel|Add0~21\);

-- Location: LCCOMB_X17_Y1_N4
\INST2_Goertzel|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~22_combout\ = (\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\INST2_Goertzel|Add0~21\ & VCC)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\INST2_Goertzel|Add0~21\)))) # 
-- (!\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\INST2_Goertzel|Add0~21\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\INST2_Goertzel|Add0~21\) # (GND)))))
-- \INST2_Goertzel|Add0~23\ = CARRY((\INST2_sampler|r_DATA\(11) & (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\INST2_Goertzel|Add0~21\)) # (!\INST2_sampler|r_DATA\(11) & ((!\INST2_Goertzel|Add0~21\) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~21\,
	combout => \INST2_Goertzel|Add0~22_combout\,
	cout => \INST2_Goertzel|Add0~23\);

-- Location: LCCOMB_X17_Y1_N6
\INST2_Goertzel|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~24_combout\ = ((\INST2_sampler|r_DATA\(11) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\INST2_Goertzel|Add0~23\)))) # (GND)
-- \INST2_Goertzel|Add0~25\ = CARRY((\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\INST2_Goertzel|Add0~23\))) # (!\INST2_sampler|r_DATA\(11) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- !\INST2_Goertzel|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~23\,
	combout => \INST2_Goertzel|Add0~24_combout\,
	cout => \INST2_Goertzel|Add0~25\);

-- Location: LCCOMB_X17_Y1_N8
\INST2_Goertzel|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~26_combout\ = (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_sampler|r_DATA\(11) & (\INST2_Goertzel|Add0~25\ & VCC)) # (!\INST2_sampler|r_DATA\(11) & (!\INST2_Goertzel|Add0~25\)))) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_sampler|r_DATA\(11) & (!\INST2_Goertzel|Add0~25\)) # (!\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Add0~25\) # (GND)))))
-- \INST2_Goertzel|Add0~27\ = CARRY((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\INST2_sampler|r_DATA\(11) & !\INST2_Goertzel|Add0~25\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\INST2_Goertzel|Add0~25\) # 
-- (!\INST2_sampler|r_DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST2_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST2_Goertzel|Add0~25\,
	combout => \INST2_Goertzel|Add0~26_combout\,
	cout => \INST2_Goertzel|Add0~27\);

-- Location: LCCOMB_X17_Y1_N10
\INST2_Goertzel|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~28_combout\ = ((\INST2_sampler|r_DATA\(11) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\INST2_Goertzel|Add0~27\)))) # (GND)
-- \INST2_Goertzel|Add0~29\ = CARRY((\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\INST2_Goertzel|Add0~27\))) # (!\INST2_sampler|r_DATA\(11) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- !\INST2_Goertzel|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~27\,
	combout => \INST2_Goertzel|Add0~28_combout\,
	cout => \INST2_Goertzel|Add0~29\);

-- Location: LCCOMB_X17_Y1_N12
\INST2_Goertzel|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~30_combout\ = (\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (\INST2_Goertzel|Add0~29\ & VCC)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\INST2_Goertzel|Add0~29\)))) # 
-- (!\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\INST2_Goertzel|Add0~29\)) # (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\INST2_Goertzel|Add0~29\) # (GND)))))
-- \INST2_Goertzel|Add0~31\ = CARRY((\INST2_sampler|r_DATA\(11) & (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\INST2_Goertzel|Add0~29\)) # (!\INST2_sampler|r_DATA\(11) & ((!\INST2_Goertzel|Add0~29\) # 
-- (!\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~29\,
	combout => \INST2_Goertzel|Add0~30_combout\,
	cout => \INST2_Goertzel|Add0~31\);

-- Location: LCCOMB_X17_Y1_N14
\INST2_Goertzel|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~32_combout\ = ((\INST2_sampler|r_DATA\(11) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (!\INST2_Goertzel|Add0~31\)))) # (GND)
-- \INST2_Goertzel|Add0~33\ = CARRY((\INST2_sampler|r_DATA\(11) & ((\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\) # (!\INST2_Goertzel|Add0~31\))) # (!\INST2_sampler|r_DATA\(11) & (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- !\INST2_Goertzel|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \INST2_Goertzel|Add0~31\,
	combout => \INST2_Goertzel|Add0~32_combout\,
	cout => \INST2_Goertzel|Add0~33\);

-- Location: LCCOMB_X17_Y1_N16
\INST2_Goertzel|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Add0~34_combout\ = \INST2_sampler|r_DATA\(11) $ (\INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (\INST2_Goertzel|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_sampler|r_DATA\(11),
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	cin => \INST2_Goertzel|Add0~33\,
	combout => \INST2_Goertzel|Add0~34_combout\);

-- Location: LCCOMB_X16_Y3_N10
\INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2feeder_combout\ = \INST2_Goertzel|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Selector10~0_combout\,
	combout => \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2feeder_combout\);

-- Location: FF_X16_Y3_N11
\INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\);

-- Location: LCCOMB_X16_Y3_N18
\INST2_Goertzel|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector28~0_combout\ = (\INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\,
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector28~0_combout\);

-- Location: FF_X16_Y3_N19
\INST2_Goertzel|reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector28~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(12));

-- Location: FF_X17_Y2_N5
\INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector11~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N20
\INST2_Goertzel|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector29~0_combout\ = (\INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector29~0_combout\);

-- Location: FF_X17_Y3_N21
\INST2_Goertzel|reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector29~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(11));

-- Location: FF_X17_Y2_N7
\INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector12~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y3_N22
\INST2_Goertzel|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector30~0_combout\ = (\INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector30~0_combout\);

-- Location: FF_X17_Y3_N23
\INST2_Goertzel|reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector30~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(10));

-- Location: FF_X16_Y2_N7
\INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector14~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N4
\INST2_Goertzel|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector32~0_combout\ = (\INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector32~0_combout\);

-- Location: FF_X17_Y4_N5
\INST2_Goertzel|reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector32~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(8));

-- Location: FF_X16_Y2_N3
\INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector17~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N0
\INST2_Goertzel|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector35~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST2_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\,
	combout => \INST2_Goertzel|Selector35~0_combout\);

-- Location: FF_X17_Y4_N1
\INST2_Goertzel|reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector35~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(5));

-- Location: FF_X16_Y2_N11
\INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST2_Goertzel|Selector19~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\);

-- Location: LCCOMB_X17_Y4_N12
\INST2_Goertzel|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector37~0_combout\ = (\INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST2_Goertzel|Selector37~0_combout\);

-- Location: FF_X17_Y4_N13
\INST2_Goertzel|reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|Selector37~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA_prev2\(3));

-- Location: LCCOMB_X16_Y2_N14
\INST2_Goertzel|reg.VA[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[0]~18_combout\ = (\INST2_Goertzel|reg.VA_prev2\(0) & (\INST2_Goertzel|Add0~0_combout\ $ (VCC))) # (!\INST2_Goertzel|reg.VA_prev2\(0) & ((\INST2_Goertzel|Add0~0_combout\) # (GND)))
-- \INST2_Goertzel|reg.VA[0]~19\ = CARRY((\INST2_Goertzel|Add0~0_combout\) # (!\INST2_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(0),
	datab => \INST2_Goertzel|Add0~0_combout\,
	datad => VCC,
	combout => \INST2_Goertzel|reg.VA[0]~18_combout\,
	cout => \INST2_Goertzel|reg.VA[0]~19\);

-- Location: LCCOMB_X16_Y2_N16
\INST2_Goertzel|reg.VA[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[1]~20_combout\ = (\INST2_Goertzel|reg.VA_prev2\(1) & ((\INST2_Goertzel|Add0~2_combout\ & (!\INST2_Goertzel|reg.VA[0]~19\)) # (!\INST2_Goertzel|Add0~2_combout\ & ((\INST2_Goertzel|reg.VA[0]~19\) # (GND))))) # 
-- (!\INST2_Goertzel|reg.VA_prev2\(1) & ((\INST2_Goertzel|Add0~2_combout\ & (\INST2_Goertzel|reg.VA[0]~19\ & VCC)) # (!\INST2_Goertzel|Add0~2_combout\ & (!\INST2_Goertzel|reg.VA[0]~19\))))
-- \INST2_Goertzel|reg.VA[1]~21\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(1) & ((!\INST2_Goertzel|reg.VA[0]~19\) # (!\INST2_Goertzel|Add0~2_combout\))) # (!\INST2_Goertzel|reg.VA_prev2\(1) & (!\INST2_Goertzel|Add0~2_combout\ & !\INST2_Goertzel|reg.VA[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(1),
	datab => \INST2_Goertzel|Add0~2_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[0]~19\,
	combout => \INST2_Goertzel|reg.VA[1]~20_combout\,
	cout => \INST2_Goertzel|reg.VA[1]~21\);

-- Location: LCCOMB_X16_Y2_N18
\INST2_Goertzel|reg.VA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[2]~22_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(2) $ (\INST2_Goertzel|Add0~4_combout\ $ (\INST2_Goertzel|reg.VA[1]~21\)))) # (GND)
-- \INST2_Goertzel|reg.VA[2]~23\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(2) & (\INST2_Goertzel|Add0~4_combout\ & !\INST2_Goertzel|reg.VA[1]~21\)) # (!\INST2_Goertzel|reg.VA_prev2\(2) & ((\INST2_Goertzel|Add0~4_combout\) # (!\INST2_Goertzel|reg.VA[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(2),
	datab => \INST2_Goertzel|Add0~4_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[1]~21\,
	combout => \INST2_Goertzel|reg.VA[2]~22_combout\,
	cout => \INST2_Goertzel|reg.VA[2]~23\);

-- Location: LCCOMB_X16_Y2_N20
\INST2_Goertzel|reg.VA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[3]~24_combout\ = (\INST2_Goertzel|Add0~6_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(3) & (!\INST2_Goertzel|reg.VA[2]~23\)) # (!\INST2_Goertzel|reg.VA_prev2\(3) & (\INST2_Goertzel|reg.VA[2]~23\ & VCC)))) # 
-- (!\INST2_Goertzel|Add0~6_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(3) & ((\INST2_Goertzel|reg.VA[2]~23\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(3) & (!\INST2_Goertzel|reg.VA[2]~23\))))
-- \INST2_Goertzel|reg.VA[3]~25\ = CARRY((\INST2_Goertzel|Add0~6_combout\ & (\INST2_Goertzel|reg.VA_prev2\(3) & !\INST2_Goertzel|reg.VA[2]~23\)) # (!\INST2_Goertzel|Add0~6_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(3)) # (!\INST2_Goertzel|reg.VA[2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~6_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(3),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[2]~23\,
	combout => \INST2_Goertzel|reg.VA[3]~24_combout\,
	cout => \INST2_Goertzel|reg.VA[3]~25\);

-- Location: LCCOMB_X16_Y2_N22
\INST2_Goertzel|reg.VA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[4]~26_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(4) $ (\INST2_Goertzel|Add0~8_combout\ $ (\INST2_Goertzel|reg.VA[3]~25\)))) # (GND)
-- \INST2_Goertzel|reg.VA[4]~27\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(4) & (\INST2_Goertzel|Add0~8_combout\ & !\INST2_Goertzel|reg.VA[3]~25\)) # (!\INST2_Goertzel|reg.VA_prev2\(4) & ((\INST2_Goertzel|Add0~8_combout\) # (!\INST2_Goertzel|reg.VA[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(4),
	datab => \INST2_Goertzel|Add0~8_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[3]~25\,
	combout => \INST2_Goertzel|reg.VA[4]~26_combout\,
	cout => \INST2_Goertzel|reg.VA[4]~27\);

-- Location: LCCOMB_X16_Y2_N24
\INST2_Goertzel|reg.VA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[5]~28_combout\ = (\INST2_Goertzel|Add0~10_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(5) & (!\INST2_Goertzel|reg.VA[4]~27\)) # (!\INST2_Goertzel|reg.VA_prev2\(5) & (\INST2_Goertzel|reg.VA[4]~27\ & VCC)))) # 
-- (!\INST2_Goertzel|Add0~10_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(5) & ((\INST2_Goertzel|reg.VA[4]~27\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(5) & (!\INST2_Goertzel|reg.VA[4]~27\))))
-- \INST2_Goertzel|reg.VA[5]~29\ = CARRY((\INST2_Goertzel|Add0~10_combout\ & (\INST2_Goertzel|reg.VA_prev2\(5) & !\INST2_Goertzel|reg.VA[4]~27\)) # (!\INST2_Goertzel|Add0~10_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(5)) # (!\INST2_Goertzel|reg.VA[4]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~10_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(5),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[4]~27\,
	combout => \INST2_Goertzel|reg.VA[5]~28_combout\,
	cout => \INST2_Goertzel|reg.VA[5]~29\);

-- Location: LCCOMB_X16_Y2_N26
\INST2_Goertzel|reg.VA[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[6]~30_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(6) $ (\INST2_Goertzel|Add0~12_combout\ $ (\INST2_Goertzel|reg.VA[5]~29\)))) # (GND)
-- \INST2_Goertzel|reg.VA[6]~31\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(6) & (\INST2_Goertzel|Add0~12_combout\ & !\INST2_Goertzel|reg.VA[5]~29\)) # (!\INST2_Goertzel|reg.VA_prev2\(6) & ((\INST2_Goertzel|Add0~12_combout\) # (!\INST2_Goertzel|reg.VA[5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(6),
	datab => \INST2_Goertzel|Add0~12_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[5]~29\,
	combout => \INST2_Goertzel|reg.VA[6]~30_combout\,
	cout => \INST2_Goertzel|reg.VA[6]~31\);

-- Location: LCCOMB_X16_Y2_N28
\INST2_Goertzel|reg.VA[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[7]~32_combout\ = (\INST2_Goertzel|reg.VA_prev2\(7) & ((\INST2_Goertzel|Add0~14_combout\ & (!\INST2_Goertzel|reg.VA[6]~31\)) # (!\INST2_Goertzel|Add0~14_combout\ & ((\INST2_Goertzel|reg.VA[6]~31\) # (GND))))) # 
-- (!\INST2_Goertzel|reg.VA_prev2\(7) & ((\INST2_Goertzel|Add0~14_combout\ & (\INST2_Goertzel|reg.VA[6]~31\ & VCC)) # (!\INST2_Goertzel|Add0~14_combout\ & (!\INST2_Goertzel|reg.VA[6]~31\))))
-- \INST2_Goertzel|reg.VA[7]~33\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(7) & ((!\INST2_Goertzel|reg.VA[6]~31\) # (!\INST2_Goertzel|Add0~14_combout\))) # (!\INST2_Goertzel|reg.VA_prev2\(7) & (!\INST2_Goertzel|Add0~14_combout\ & 
-- !\INST2_Goertzel|reg.VA[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(7),
	datab => \INST2_Goertzel|Add0~14_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[6]~31\,
	combout => \INST2_Goertzel|reg.VA[7]~32_combout\,
	cout => \INST2_Goertzel|reg.VA[7]~33\);

-- Location: LCCOMB_X16_Y2_N30
\INST2_Goertzel|reg.VA[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[8]~34_combout\ = ((\INST2_Goertzel|Add0~16_combout\ $ (\INST2_Goertzel|reg.VA_prev2\(8) $ (\INST2_Goertzel|reg.VA[7]~33\)))) # (GND)
-- \INST2_Goertzel|reg.VA[8]~35\ = CARRY((\INST2_Goertzel|Add0~16_combout\ & ((!\INST2_Goertzel|reg.VA[7]~33\) # (!\INST2_Goertzel|reg.VA_prev2\(8)))) # (!\INST2_Goertzel|Add0~16_combout\ & (!\INST2_Goertzel|reg.VA_prev2\(8) & 
-- !\INST2_Goertzel|reg.VA[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~16_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(8),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[7]~33\,
	combout => \INST2_Goertzel|reg.VA[8]~34_combout\,
	cout => \INST2_Goertzel|reg.VA[8]~35\);

-- Location: LCCOMB_X16_Y1_N0
\INST2_Goertzel|reg.VA[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[9]~36_combout\ = (\INST2_Goertzel|reg.VA_prev2\(9) & ((\INST2_Goertzel|Add0~18_combout\ & (!\INST2_Goertzel|reg.VA[8]~35\)) # (!\INST2_Goertzel|Add0~18_combout\ & ((\INST2_Goertzel|reg.VA[8]~35\) # (GND))))) # 
-- (!\INST2_Goertzel|reg.VA_prev2\(9) & ((\INST2_Goertzel|Add0~18_combout\ & (\INST2_Goertzel|reg.VA[8]~35\ & VCC)) # (!\INST2_Goertzel|Add0~18_combout\ & (!\INST2_Goertzel|reg.VA[8]~35\))))
-- \INST2_Goertzel|reg.VA[9]~37\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(9) & ((!\INST2_Goertzel|reg.VA[8]~35\) # (!\INST2_Goertzel|Add0~18_combout\))) # (!\INST2_Goertzel|reg.VA_prev2\(9) & (!\INST2_Goertzel|Add0~18_combout\ & 
-- !\INST2_Goertzel|reg.VA[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(9),
	datab => \INST2_Goertzel|Add0~18_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[8]~35\,
	combout => \INST2_Goertzel|reg.VA[9]~36_combout\,
	cout => \INST2_Goertzel|reg.VA[9]~37\);

-- Location: LCCOMB_X16_Y1_N2
\INST2_Goertzel|reg.VA[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[10]~38_combout\ = ((\INST2_Goertzel|Add0~20_combout\ $ (\INST2_Goertzel|reg.VA_prev2\(10) $ (\INST2_Goertzel|reg.VA[9]~37\)))) # (GND)
-- \INST2_Goertzel|reg.VA[10]~39\ = CARRY((\INST2_Goertzel|Add0~20_combout\ & ((!\INST2_Goertzel|reg.VA[9]~37\) # (!\INST2_Goertzel|reg.VA_prev2\(10)))) # (!\INST2_Goertzel|Add0~20_combout\ & (!\INST2_Goertzel|reg.VA_prev2\(10) & 
-- !\INST2_Goertzel|reg.VA[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~20_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(10),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[9]~37\,
	combout => \INST2_Goertzel|reg.VA[10]~38_combout\,
	cout => \INST2_Goertzel|reg.VA[10]~39\);

-- Location: LCCOMB_X16_Y1_N4
\INST2_Goertzel|reg.VA[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[11]~40_combout\ = (\INST2_Goertzel|Add0~22_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(11) & (!\INST2_Goertzel|reg.VA[10]~39\)) # (!\INST2_Goertzel|reg.VA_prev2\(11) & (\INST2_Goertzel|reg.VA[10]~39\ & VCC)))) # 
-- (!\INST2_Goertzel|Add0~22_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(11) & ((\INST2_Goertzel|reg.VA[10]~39\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(11) & (!\INST2_Goertzel|reg.VA[10]~39\))))
-- \INST2_Goertzel|reg.VA[11]~41\ = CARRY((\INST2_Goertzel|Add0~22_combout\ & (\INST2_Goertzel|reg.VA_prev2\(11) & !\INST2_Goertzel|reg.VA[10]~39\)) # (!\INST2_Goertzel|Add0~22_combout\ & ((\INST2_Goertzel|reg.VA_prev2\(11)) # 
-- (!\INST2_Goertzel|reg.VA[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~22_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(11),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[10]~39\,
	combout => \INST2_Goertzel|reg.VA[11]~40_combout\,
	cout => \INST2_Goertzel|reg.VA[11]~41\);

-- Location: LCCOMB_X16_Y1_N6
\INST2_Goertzel|reg.VA[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[12]~42_combout\ = ((\INST2_Goertzel|Add0~24_combout\ $ (\INST2_Goertzel|reg.VA_prev2\(12) $ (\INST2_Goertzel|reg.VA[11]~41\)))) # (GND)
-- \INST2_Goertzel|reg.VA[12]~43\ = CARRY((\INST2_Goertzel|Add0~24_combout\ & ((!\INST2_Goertzel|reg.VA[11]~41\) # (!\INST2_Goertzel|reg.VA_prev2\(12)))) # (!\INST2_Goertzel|Add0~24_combout\ & (!\INST2_Goertzel|reg.VA_prev2\(12) & 
-- !\INST2_Goertzel|reg.VA[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Add0~24_combout\,
	datab => \INST2_Goertzel|reg.VA_prev2\(12),
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[11]~41\,
	combout => \INST2_Goertzel|reg.VA[12]~42_combout\,
	cout => \INST2_Goertzel|reg.VA[12]~43\);

-- Location: LCCOMB_X16_Y1_N8
\INST2_Goertzel|reg.VA[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[13]~44_combout\ = (\INST2_Goertzel|reg.VA_prev2\(13) & ((\INST2_Goertzel|Add0~26_combout\ & (!\INST2_Goertzel|reg.VA[12]~43\)) # (!\INST2_Goertzel|Add0~26_combout\ & ((\INST2_Goertzel|reg.VA[12]~43\) # (GND))))) # 
-- (!\INST2_Goertzel|reg.VA_prev2\(13) & ((\INST2_Goertzel|Add0~26_combout\ & (\INST2_Goertzel|reg.VA[12]~43\ & VCC)) # (!\INST2_Goertzel|Add0~26_combout\ & (!\INST2_Goertzel|reg.VA[12]~43\))))
-- \INST2_Goertzel|reg.VA[13]~45\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(13) & ((!\INST2_Goertzel|reg.VA[12]~43\) # (!\INST2_Goertzel|Add0~26_combout\))) # (!\INST2_Goertzel|reg.VA_prev2\(13) & (!\INST2_Goertzel|Add0~26_combout\ & 
-- !\INST2_Goertzel|reg.VA[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(13),
	datab => \INST2_Goertzel|Add0~26_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[12]~43\,
	combout => \INST2_Goertzel|reg.VA[13]~44_combout\,
	cout => \INST2_Goertzel|reg.VA[13]~45\);

-- Location: LCCOMB_X16_Y1_N10
\INST2_Goertzel|reg.VA[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[14]~46_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(14) $ (\INST2_Goertzel|Add0~28_combout\ $ (\INST2_Goertzel|reg.VA[13]~45\)))) # (GND)
-- \INST2_Goertzel|reg.VA[14]~47\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(14) & (\INST2_Goertzel|Add0~28_combout\ & !\INST2_Goertzel|reg.VA[13]~45\)) # (!\INST2_Goertzel|reg.VA_prev2\(14) & ((\INST2_Goertzel|Add0~28_combout\) # 
-- (!\INST2_Goertzel|reg.VA[13]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(14),
	datab => \INST2_Goertzel|Add0~28_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[13]~45\,
	combout => \INST2_Goertzel|reg.VA[14]~46_combout\,
	cout => \INST2_Goertzel|reg.VA[14]~47\);

-- Location: LCCOMB_X16_Y1_N12
\INST2_Goertzel|reg.VA[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[15]~48_combout\ = (\INST2_Goertzel|reg.VA_prev2\(15) & ((\INST2_Goertzel|Add0~30_combout\ & (!\INST2_Goertzel|reg.VA[14]~47\)) # (!\INST2_Goertzel|Add0~30_combout\ & ((\INST2_Goertzel|reg.VA[14]~47\) # (GND))))) # 
-- (!\INST2_Goertzel|reg.VA_prev2\(15) & ((\INST2_Goertzel|Add0~30_combout\ & (\INST2_Goertzel|reg.VA[14]~47\ & VCC)) # (!\INST2_Goertzel|Add0~30_combout\ & (!\INST2_Goertzel|reg.VA[14]~47\))))
-- \INST2_Goertzel|reg.VA[15]~49\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(15) & ((!\INST2_Goertzel|reg.VA[14]~47\) # (!\INST2_Goertzel|Add0~30_combout\))) # (!\INST2_Goertzel|reg.VA_prev2\(15) & (!\INST2_Goertzel|Add0~30_combout\ & 
-- !\INST2_Goertzel|reg.VA[14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(15),
	datab => \INST2_Goertzel|Add0~30_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[14]~47\,
	combout => \INST2_Goertzel|reg.VA[15]~48_combout\,
	cout => \INST2_Goertzel|reg.VA[15]~49\);

-- Location: LCCOMB_X16_Y1_N14
\INST2_Goertzel|reg.VA[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[16]~50_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(16) $ (\INST2_Goertzel|Add0~32_combout\ $ (\INST2_Goertzel|reg.VA[15]~49\)))) # (GND)
-- \INST2_Goertzel|reg.VA[16]~51\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(16) & (\INST2_Goertzel|Add0~32_combout\ & !\INST2_Goertzel|reg.VA[15]~49\)) # (!\INST2_Goertzel|reg.VA_prev2\(16) & ((\INST2_Goertzel|Add0~32_combout\) # 
-- (!\INST2_Goertzel|reg.VA[15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(16),
	datab => \INST2_Goertzel|Add0~32_combout\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.VA[15]~49\,
	combout => \INST2_Goertzel|reg.VA[16]~50_combout\,
	cout => \INST2_Goertzel|reg.VA[16]~51\);

-- Location: LCCOMB_X16_Y1_N16
\INST2_Goertzel|reg.VA[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.VA[17]~52_combout\ = \INST2_Goertzel|reg.VA_prev2\(17) $ (\INST2_Goertzel|reg.VA[16]~51\ $ (!\INST2_Goertzel|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA_prev2\(17),
	datad => \INST2_Goertzel|Add0~34_combout\,
	cin => \INST2_Goertzel|reg.VA[16]~51\,
	combout => \INST2_Goertzel|reg.VA[17]~52_combout\);

-- Location: FF_X16_Y1_N17
\INST2_Goertzel|reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(17));

-- Location: LCCOMB_X17_Y2_N4
\INST2_Goertzel|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector5~0_combout\ = (\INST2_Goertzel|reg.VA\(17) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(17),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector5~0_combout\);

-- Location: DSPMULT_X18_Y1_N0
\INST2_Goertzel|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y1_N2
\INST2_Goertzel|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X16_Y1_N15
\INST2_Goertzel|reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(16));

-- Location: LCCOMB_X17_Y2_N10
\INST2_Goertzel|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector6~0_combout\ = (\INST2_Goertzel|reg.VA\(16) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA\(16),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector6~0_combout\);

-- Location: FF_X16_Y1_N13
\INST2_Goertzel|reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(15));

-- Location: LCCOMB_X17_Y2_N0
\INST2_Goertzel|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector7~0_combout\ = (\INST2_Goertzel|reg.VA\(15) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA\(15),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector7~0_combout\);

-- Location: FF_X16_Y1_N11
\INST2_Goertzel|reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(14));

-- Location: LCCOMB_X16_Y1_N26
\INST2_Goertzel|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector8~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST2_Goertzel|reg.VA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST2_Goertzel|reg.VA\(14),
	combout => \INST2_Goertzel|Selector8~0_combout\);

-- Location: FF_X16_Y1_N9
\INST2_Goertzel|reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(13));

-- Location: LCCOMB_X16_Y1_N24
\INST2_Goertzel|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector9~0_combout\ = (\INST2_Goertzel|reg.VA\(13) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(13),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector9~0_combout\);

-- Location: FF_X16_Y1_N7
\INST2_Goertzel|reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(12));

-- Location: LCCOMB_X16_Y3_N14
\INST2_Goertzel|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector10~0_combout\ = (\INST2_Goertzel|reg.VA\(12) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(12),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector10~0_combout\);

-- Location: FF_X16_Y1_N5
\INST2_Goertzel|reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(11));

-- Location: LCCOMB_X17_Y2_N6
\INST2_Goertzel|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector11~0_combout\ = (\INST2_Goertzel|reg.VA\(11) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA\(11),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector11~0_combout\);

-- Location: FF_X16_Y1_N3
\INST2_Goertzel|reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(10));

-- Location: LCCOMB_X16_Y1_N18
\INST2_Goertzel|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector12~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST2_Goertzel|reg.VA\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST2_Goertzel|reg.VA\(10),
	combout => \INST2_Goertzel|Selector12~0_combout\);

-- Location: FF_X16_Y1_N1
\INST2_Goertzel|reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(9));

-- Location: LCCOMB_X16_Y1_N28
\INST2_Goertzel|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector13~0_combout\ = (\INST2_Goertzel|reg.VA\(9) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(9),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector13~0_combout\);

-- Location: FF_X16_Y2_N31
\INST2_Goertzel|reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(8));

-- Location: LCCOMB_X16_Y2_N6
\INST2_Goertzel|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector14~0_combout\ = (\INST2_Goertzel|reg.VA\(8) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(8),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector14~0_combout\);

-- Location: FF_X16_Y2_N29
\INST2_Goertzel|reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(7));

-- Location: LCCOMB_X16_Y3_N24
\INST2_Goertzel|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector15~0_combout\ = (\INST2_Goertzel|reg.VA\(7) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(7),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector15~0_combout\);

-- Location: FF_X16_Y2_N25
\INST2_Goertzel|reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(5));

-- Location: LCCOMB_X16_Y2_N0
\INST2_Goertzel|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector17~0_combout\ = (\INST2_Goertzel|reg.VA\(5) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(5),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector17~0_combout\);

-- Location: FF_X16_Y2_N23
\INST2_Goertzel|reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(4));

-- Location: LCCOMB_X16_Y2_N12
\INST2_Goertzel|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector18~0_combout\ = (\INST2_Goertzel|reg.VA\(4) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(4),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector18~0_combout\);

-- Location: FF_X16_Y2_N21
\INST2_Goertzel|reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(3));

-- Location: LCCOMB_X16_Y2_N8
\INST2_Goertzel|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector19~0_combout\ = (\INST2_Goertzel|reg.VA\(3) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(3),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector19~0_combout\);

-- Location: FF_X16_Y2_N19
\INST2_Goertzel|reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(2));

-- Location: LCCOMB_X16_Y2_N10
\INST2_Goertzel|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector20~0_combout\ = (\INST2_Goertzel|reg.VA\(2) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(2),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector20~0_combout\);

-- Location: FF_X16_Y2_N17
\INST2_Goertzel|reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(1));

-- Location: LCCOMB_X17_Y2_N2
\INST2_Goertzel|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector21~0_combout\ = (\INST2_Goertzel|reg.VA\(1) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA\(1),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector21~0_combout\);

-- Location: FF_X16_Y2_N15
\INST2_Goertzel|reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(0));

-- Location: LCCOMB_X16_Y2_N2
\INST2_Goertzel|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector22~0_combout\ = (\INST2_Goertzel|reg.VA\(0) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2_Goertzel|reg.VA\(0),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector22~0_combout\);

-- Location: FF_X16_Y2_N27
\INST2_Goertzel|reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.VA[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.VA\(6));

-- Location: LCCOMB_X16_Y2_N4
\INST2_Goertzel|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|Selector16~0_combout\ = (\INST2_Goertzel|reg.VA\(6) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|reg.VA\(6),
	datad => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST2_Goertzel|Selector16~0_combout\);

-- Location: DSPMULT_X18_Y4_N0
\INST2_Goertzel|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y4_N2
\INST2_Goertzel|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y4_N14
\INST2_Goertzel|reg.result[0][0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][0]~18_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((GND) # (!\INST2_Goertzel|reg.VA_prev2\(0)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\INST2_Goertzel|reg.VA_prev2\(0) $ 
-- (GND)))
-- \INST2_Goertzel|reg.result[0][0]~19\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\) # (!\INST2_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \INST2_Goertzel|reg.VA_prev2\(0),
	datad => VCC,
	combout => \INST2_Goertzel|reg.result[0][0]~18_combout\,
	cout => \INST2_Goertzel|reg.result[0][0]~19\);

-- Location: FF_X17_Y4_N15
\INST2_Goertzel|reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][0]~18_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][0]~q\);

-- Location: DSPMULT_X18_Y3_N0
\INST2_Goertzel|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y3_N2
\INST2_Goertzel|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y4_N14
\INST2_Goertzel|r_Real[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[0]~18_combout\ = (\INST2_Goertzel|reg.result[0][0]~q\ & ((GND) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\))) # (!\INST2_Goertzel|reg.result[0][0]~q\ & (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ $ 
-- (GND)))
-- \INST2_Goertzel|r_Real[0]~19\ = CARRY((\INST2_Goertzel|reg.result[0][0]~q\) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][0]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \INST2_Goertzel|r_Real[0]~18_combout\,
	cout => \INST2_Goertzel|r_Real[0]~19\);

-- Location: FF_X19_Y4_N15
\INST2_Goertzel|r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(0));

-- Location: LCCOMB_X17_Y4_N16
\INST2_Goertzel|reg.result[0][1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][1]~20_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\INST2_Goertzel|reg.VA_prev2\(1) & (!\INST2_Goertzel|reg.result[0][0]~19\)) # (!\INST2_Goertzel|reg.VA_prev2\(1) & 
-- (\INST2_Goertzel|reg.result[0][0]~19\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\INST2_Goertzel|reg.VA_prev2\(1) & ((\INST2_Goertzel|reg.result[0][0]~19\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(1) & 
-- (!\INST2_Goertzel|reg.result[0][0]~19\))))
-- \INST2_Goertzel|reg.result[0][1]~21\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\INST2_Goertzel|reg.VA_prev2\(1) & !\INST2_Goertzel|reg.result[0][0]~19\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(1)) # (!\INST2_Goertzel|reg.result[0][0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \INST2_Goertzel|reg.VA_prev2\(1),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][0]~19\,
	combout => \INST2_Goertzel|reg.result[0][1]~20_combout\,
	cout => \INST2_Goertzel|reg.result[0][1]~21\);

-- Location: FF_X17_Y4_N17
\INST2_Goertzel|reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][1]~20_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][1]~q\);

-- Location: LCCOMB_X19_Y4_N16
\INST2_Goertzel|r_Real[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[1]~20_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\INST2_Goertzel|reg.result[0][1]~q\ & (!\INST2_Goertzel|r_Real[0]~19\)) # (!\INST2_Goertzel|reg.result[0][1]~q\ & ((\INST2_Goertzel|r_Real[0]~19\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\INST2_Goertzel|reg.result[0][1]~q\ & (\INST2_Goertzel|r_Real[0]~19\ & VCC)) # (!\INST2_Goertzel|reg.result[0][1]~q\ & (!\INST2_Goertzel|r_Real[0]~19\))))
-- \INST2_Goertzel|r_Real[1]~21\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((!\INST2_Goertzel|r_Real[0]~19\) # (!\INST2_Goertzel|reg.result[0][1]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\INST2_Goertzel|reg.result[0][1]~q\ & !\INST2_Goertzel|r_Real[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \INST2_Goertzel|reg.result[0][1]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[0]~19\,
	combout => \INST2_Goertzel|r_Real[1]~20_combout\,
	cout => \INST2_Goertzel|r_Real[1]~21\);

-- Location: FF_X19_Y4_N17
\INST2_Goertzel|r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(1));

-- Location: LCCOMB_X17_Y4_N18
\INST2_Goertzel|reg.result[0][2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][2]~22_combout\ = ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\INST2_Goertzel|reg.VA_prev2\(2) $ (\INST2_Goertzel|reg.result[0][1]~21\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][2]~23\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((!\INST2_Goertzel|reg.result[0][1]~21\) # (!\INST2_Goertzel|reg.VA_prev2\(2)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\INST2_Goertzel|reg.VA_prev2\(2) & !\INST2_Goertzel|reg.result[0][1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST2_Goertzel|reg.VA_prev2\(2),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][1]~21\,
	combout => \INST2_Goertzel|reg.result[0][2]~22_combout\,
	cout => \INST2_Goertzel|reg.result[0][2]~23\);

-- Location: FF_X17_Y4_N19
\INST2_Goertzel|reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][2]~22_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][2]~q\);

-- Location: LCCOMB_X19_Y4_N18
\INST2_Goertzel|r_Real[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[2]~22_combout\ = ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ $ (\INST2_Goertzel|reg.result[0][2]~q\ $ (\INST2_Goertzel|r_Real[1]~21\)))) # (GND)
-- \INST2_Goertzel|r_Real[2]~23\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ & (\INST2_Goertzel|reg.result[0][2]~q\ & !\INST2_Goertzel|r_Real[1]~21\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\INST2_Goertzel|reg.result[0][2]~q\) # (!\INST2_Goertzel|r_Real[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST2_Goertzel|reg.result[0][2]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[1]~21\,
	combout => \INST2_Goertzel|r_Real[2]~22_combout\,
	cout => \INST2_Goertzel|r_Real[2]~23\);

-- Location: FF_X19_Y4_N19
\INST2_Goertzel|r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(2));

-- Location: LCCOMB_X17_Y4_N20
\INST2_Goertzel|reg.result[0][3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][3]~24_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST2_Goertzel|reg.VA_prev2\(3) & (!\INST2_Goertzel|reg.result[0][2]~23\)) # (!\INST2_Goertzel|reg.VA_prev2\(3) & 
-- (\INST2_Goertzel|reg.result[0][2]~23\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST2_Goertzel|reg.VA_prev2\(3) & ((\INST2_Goertzel|reg.result[0][2]~23\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(3) & 
-- (!\INST2_Goertzel|reg.result[0][2]~23\))))
-- \INST2_Goertzel|reg.result[0][3]~25\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\INST2_Goertzel|reg.VA_prev2\(3) & !\INST2_Goertzel|reg.result[0][2]~23\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(3)) # (!\INST2_Goertzel|reg.result[0][2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \INST2_Goertzel|reg.VA_prev2\(3),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][2]~23\,
	combout => \INST2_Goertzel|reg.result[0][3]~24_combout\,
	cout => \INST2_Goertzel|reg.result[0][3]~25\);

-- Location: FF_X17_Y4_N21
\INST2_Goertzel|reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][3]~24_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][3]~q\);

-- Location: LCCOMB_X19_Y4_N20
\INST2_Goertzel|r_Real[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[3]~24_combout\ = (\INST2_Goertzel|reg.result[0][3]~q\ & ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & (!\INST2_Goertzel|r_Real[2]~23\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- (\INST2_Goertzel|r_Real[2]~23\ & VCC)))) # (!\INST2_Goertzel|reg.result[0][3]~q\ & ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & ((\INST2_Goertzel|r_Real[2]~23\) # (GND))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\INST2_Goertzel|r_Real[2]~23\))))
-- \INST2_Goertzel|r_Real[3]~25\ = CARRY((\INST2_Goertzel|reg.result[0][3]~q\ & (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & !\INST2_Goertzel|r_Real[2]~23\)) # (!\INST2_Goertzel|reg.result[0][3]~q\ & 
-- ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\INST2_Goertzel|r_Real[2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][3]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[2]~23\,
	combout => \INST2_Goertzel|r_Real[3]~24_combout\,
	cout => \INST2_Goertzel|r_Real[3]~25\);

-- Location: FF_X19_Y4_N21
\INST2_Goertzel|r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(3));

-- Location: LCCOMB_X17_Y4_N22
\INST2_Goertzel|reg.result[0][4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][4]~26_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(4) $ (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\INST2_Goertzel|reg.result[0][3]~25\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][4]~27\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(4) & (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\INST2_Goertzel|reg.result[0][3]~25\)) # (!\INST2_Goertzel|reg.VA_prev2\(4) & 
-- ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\) # (!\INST2_Goertzel|reg.result[0][3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(4),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][3]~25\,
	combout => \INST2_Goertzel|reg.result[0][4]~26_combout\,
	cout => \INST2_Goertzel|reg.result[0][4]~27\);

-- Location: FF_X17_Y4_N23
\INST2_Goertzel|reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][4]~26_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][4]~q\);

-- Location: LCCOMB_X19_Y4_N22
\INST2_Goertzel|r_Real[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[4]~26_combout\ = ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ $ (\INST2_Goertzel|reg.result[0][4]~q\ $ (\INST2_Goertzel|r_Real[3]~25\)))) # (GND)
-- \INST2_Goertzel|r_Real[4]~27\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & (\INST2_Goertzel|reg.result[0][4]~q\ & !\INST2_Goertzel|r_Real[3]~25\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\INST2_Goertzel|reg.result[0][4]~q\) # (!\INST2_Goertzel|r_Real[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \INST2_Goertzel|reg.result[0][4]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[3]~25\,
	combout => \INST2_Goertzel|r_Real[4]~26_combout\,
	cout => \INST2_Goertzel|r_Real[4]~27\);

-- Location: FF_X19_Y4_N23
\INST2_Goertzel|r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(4));

-- Location: LCCOMB_X17_Y4_N24
\INST2_Goertzel|reg.result[0][5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][5]~28_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_Goertzel|reg.VA_prev2\(5) & (!\INST2_Goertzel|reg.result[0][4]~27\)) # (!\INST2_Goertzel|reg.VA_prev2\(5) & 
-- (\INST2_Goertzel|reg.result[0][4]~27\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_Goertzel|reg.VA_prev2\(5) & ((\INST2_Goertzel|reg.result[0][4]~27\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(5) & 
-- (!\INST2_Goertzel|reg.result[0][4]~27\))))
-- \INST2_Goertzel|reg.result[0][5]~29\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\INST2_Goertzel|reg.VA_prev2\(5) & !\INST2_Goertzel|reg.result[0][4]~27\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(5)) # (!\INST2_Goertzel|reg.result[0][4]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST2_Goertzel|reg.VA_prev2\(5),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][4]~27\,
	combout => \INST2_Goertzel|reg.result[0][5]~28_combout\,
	cout => \INST2_Goertzel|reg.result[0][5]~29\);

-- Location: FF_X17_Y4_N25
\INST2_Goertzel|reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][5]~28_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][5]~q\);

-- Location: LCCOMB_X19_Y4_N24
\INST2_Goertzel|r_Real[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[5]~28_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_Goertzel|reg.result[0][5]~q\ & (!\INST2_Goertzel|r_Real[4]~27\)) # (!\INST2_Goertzel|reg.result[0][5]~q\ & ((\INST2_Goertzel|r_Real[4]~27\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\INST2_Goertzel|reg.result[0][5]~q\ & (\INST2_Goertzel|r_Real[4]~27\ & VCC)) # (!\INST2_Goertzel|reg.result[0][5]~q\ & (!\INST2_Goertzel|r_Real[4]~27\))))
-- \INST2_Goertzel|r_Real[5]~29\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((!\INST2_Goertzel|r_Real[4]~27\) # (!\INST2_Goertzel|reg.result[0][5]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\INST2_Goertzel|reg.result[0][5]~q\ & !\INST2_Goertzel|r_Real[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST2_Goertzel|reg.result[0][5]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[4]~27\,
	combout => \INST2_Goertzel|r_Real[5]~28_combout\,
	cout => \INST2_Goertzel|r_Real[5]~29\);

-- Location: FF_X19_Y4_N25
\INST2_Goertzel|r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(5));

-- Location: LCCOMB_X17_Y4_N26
\INST2_Goertzel|reg.result[0][6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][6]~30_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(6) $ (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\INST2_Goertzel|reg.result[0][5]~29\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][6]~31\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(6) & (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\INST2_Goertzel|reg.result[0][5]~29\)) # (!\INST2_Goertzel|reg.VA_prev2\(6) & 
-- ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\) # (!\INST2_Goertzel|reg.result[0][5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(6),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][5]~29\,
	combout => \INST2_Goertzel|reg.result[0][6]~30_combout\,
	cout => \INST2_Goertzel|reg.result[0][6]~31\);

-- Location: FF_X17_Y4_N27
\INST2_Goertzel|reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][6]~30_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][6]~q\);

-- Location: LCCOMB_X19_Y4_N26
\INST2_Goertzel|r_Real[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[6]~30_combout\ = ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ $ (\INST2_Goertzel|reg.result[0][6]~q\ $ (\INST2_Goertzel|r_Real[5]~29\)))) # (GND)
-- \INST2_Goertzel|r_Real[6]~31\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ & (\INST2_Goertzel|reg.result[0][6]~q\ & !\INST2_Goertzel|r_Real[5]~29\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\INST2_Goertzel|reg.result[0][6]~q\) # (!\INST2_Goertzel|r_Real[5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datab => \INST2_Goertzel|reg.result[0][6]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[5]~29\,
	combout => \INST2_Goertzel|r_Real[6]~30_combout\,
	cout => \INST2_Goertzel|r_Real[6]~31\);

-- Location: FF_X19_Y4_N27
\INST2_Goertzel|r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(6));

-- Location: LCCOMB_X17_Y4_N28
\INST2_Goertzel|reg.result[0][7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][7]~32_combout\ = (\INST2_Goertzel|reg.VA_prev2\(7) & ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST2_Goertzel|reg.result[0][6]~31\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\INST2_Goertzel|reg.result[0][6]~31\) # (GND))))) # (!\INST2_Goertzel|reg.VA_prev2\(7) & ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (\INST2_Goertzel|reg.result[0][6]~31\ & VCC)) # 
-- (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST2_Goertzel|reg.result[0][6]~31\))))
-- \INST2_Goertzel|reg.result[0][7]~33\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(7) & ((!\INST2_Goertzel|reg.result[0][6]~31\) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\))) # (!\INST2_Goertzel|reg.VA_prev2\(7) & 
-- (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\INST2_Goertzel|reg.result[0][6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(7),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][6]~31\,
	combout => \INST2_Goertzel|reg.result[0][7]~32_combout\,
	cout => \INST2_Goertzel|reg.result[0][7]~33\);

-- Location: FF_X17_Y4_N29
\INST2_Goertzel|reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][7]~32_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][7]~q\);

-- Location: LCCOMB_X19_Y4_N28
\INST2_Goertzel|r_Real[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[7]~32_combout\ = (\INST2_Goertzel|reg.result[0][7]~q\ & ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & (!\INST2_Goertzel|r_Real[6]~31\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (\INST2_Goertzel|r_Real[6]~31\ & VCC)))) # (!\INST2_Goertzel|reg.result[0][7]~q\ & ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\INST2_Goertzel|r_Real[6]~31\) # (GND))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (!\INST2_Goertzel|r_Real[6]~31\))))
-- \INST2_Goertzel|r_Real[7]~33\ = CARRY((\INST2_Goertzel|reg.result[0][7]~q\ & (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & !\INST2_Goertzel|r_Real[6]~31\)) # (!\INST2_Goertzel|reg.result[0][7]~q\ & 
-- ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\) # (!\INST2_Goertzel|r_Real[6]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][7]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[6]~31\,
	combout => \INST2_Goertzel|r_Real[7]~32_combout\,
	cout => \INST2_Goertzel|r_Real[7]~33\);

-- Location: FF_X19_Y4_N29
\INST2_Goertzel|r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(7));

-- Location: LCCOMB_X17_Y4_N30
\INST2_Goertzel|reg.result[0][8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][8]~34_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(8) $ (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (\INST2_Goertzel|reg.result[0][7]~33\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][8]~35\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(8) & (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\INST2_Goertzel|reg.result[0][7]~33\)) # (!\INST2_Goertzel|reg.VA_prev2\(8) & 
-- ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\) # (!\INST2_Goertzel|reg.result[0][7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(8),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][7]~33\,
	combout => \INST2_Goertzel|reg.result[0][8]~34_combout\,
	cout => \INST2_Goertzel|reg.result[0][8]~35\);

-- Location: FF_X17_Y4_N31
\INST2_Goertzel|reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][8]~34_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][8]~q\);

-- Location: LCCOMB_X19_Y4_N30
\INST2_Goertzel|r_Real[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[8]~34_combout\ = ((\INST2_Goertzel|reg.result[0][8]~q\ $ (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ $ (\INST2_Goertzel|r_Real[7]~33\)))) # (GND)
-- \INST2_Goertzel|r_Real[8]~35\ = CARRY((\INST2_Goertzel|reg.result[0][8]~q\ & ((!\INST2_Goertzel|r_Real[7]~33\) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\))) # (!\INST2_Goertzel|reg.result[0][8]~q\ & 
-- (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ & !\INST2_Goertzel|r_Real[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][8]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[7]~33\,
	combout => \INST2_Goertzel|r_Real[8]~34_combout\,
	cout => \INST2_Goertzel|r_Real[8]~35\);

-- Location: FF_X19_Y4_N31
\INST2_Goertzel|r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(8));

-- Location: LCCOMB_X17_Y3_N0
\INST2_Goertzel|reg.result[0][9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][9]~36_combout\ = (\INST2_Goertzel|reg.VA_prev2\(9) & ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST2_Goertzel|reg.result[0][8]~35\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\INST2_Goertzel|reg.result[0][8]~35\) # (GND))))) # (!\INST2_Goertzel|reg.VA_prev2\(9) & ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (\INST2_Goertzel|reg.result[0][8]~35\ & VCC)) # 
-- (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST2_Goertzel|reg.result[0][8]~35\))))
-- \INST2_Goertzel|reg.result[0][9]~37\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(9) & ((!\INST2_Goertzel|reg.result[0][8]~35\) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\))) # (!\INST2_Goertzel|reg.VA_prev2\(9) & 
-- (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\INST2_Goertzel|reg.result[0][8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(9),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][8]~35\,
	combout => \INST2_Goertzel|reg.result[0][9]~36_combout\,
	cout => \INST2_Goertzel|reg.result[0][9]~37\);

-- Location: FF_X17_Y3_N1
\INST2_Goertzel|reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][9]~36_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][9]~q\);

-- Location: LCCOMB_X19_Y3_N0
\INST2_Goertzel|r_Real[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[9]~36_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\INST2_Goertzel|reg.result[0][9]~q\ & (!\INST2_Goertzel|r_Real[8]~35\)) # (!\INST2_Goertzel|reg.result[0][9]~q\ & ((\INST2_Goertzel|r_Real[8]~35\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\INST2_Goertzel|reg.result[0][9]~q\ & (\INST2_Goertzel|r_Real[8]~35\ & VCC)) # (!\INST2_Goertzel|reg.result[0][9]~q\ & (!\INST2_Goertzel|r_Real[8]~35\))))
-- \INST2_Goertzel|r_Real[9]~37\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((!\INST2_Goertzel|r_Real[8]~35\) # (!\INST2_Goertzel|reg.result[0][9]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\INST2_Goertzel|reg.result[0][9]~q\ & !\INST2_Goertzel|r_Real[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\,
	datab => \INST2_Goertzel|reg.result[0][9]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[8]~35\,
	combout => \INST2_Goertzel|r_Real[9]~36_combout\,
	cout => \INST2_Goertzel|r_Real[9]~37\);

-- Location: FF_X19_Y3_N1
\INST2_Goertzel|r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(9));

-- Location: LCCOMB_X17_Y3_N2
\INST2_Goertzel|reg.result[0][10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][10]~38_combout\ = ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\INST2_Goertzel|reg.VA_prev2\(10) $ (\INST2_Goertzel|reg.result[0][9]~37\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][10]~39\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\INST2_Goertzel|reg.result[0][9]~37\) # (!\INST2_Goertzel|reg.VA_prev2\(10)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\INST2_Goertzel|reg.VA_prev2\(10) & !\INST2_Goertzel|reg.result[0][9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \INST2_Goertzel|reg.VA_prev2\(10),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][9]~37\,
	combout => \INST2_Goertzel|reg.result[0][10]~38_combout\,
	cout => \INST2_Goertzel|reg.result[0][10]~39\);

-- Location: FF_X17_Y3_N3
\INST2_Goertzel|reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][10]~38_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][10]~q\);

-- Location: LCCOMB_X19_Y3_N2
\INST2_Goertzel|r_Real[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[10]~38_combout\ = ((\INST2_Goertzel|reg.result[0][10]~q\ $ (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ $ (\INST2_Goertzel|r_Real[9]~37\)))) # (GND)
-- \INST2_Goertzel|r_Real[10]~39\ = CARRY((\INST2_Goertzel|reg.result[0][10]~q\ & ((!\INST2_Goertzel|r_Real[9]~37\) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\))) # (!\INST2_Goertzel|reg.result[0][10]~q\ & 
-- (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ & !\INST2_Goertzel|r_Real[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][10]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[9]~37\,
	combout => \INST2_Goertzel|r_Real[10]~38_combout\,
	cout => \INST2_Goertzel|r_Real[10]~39\);

-- Location: FF_X19_Y3_N3
\INST2_Goertzel|r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(10));

-- Location: LCCOMB_X17_Y3_N4
\INST2_Goertzel|reg.result[0][11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][11]~40_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\INST2_Goertzel|reg.VA_prev2\(11) & (!\INST2_Goertzel|reg.result[0][10]~39\)) # (!\INST2_Goertzel|reg.VA_prev2\(11) & 
-- (\INST2_Goertzel|reg.result[0][10]~39\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\INST2_Goertzel|reg.VA_prev2\(11) & ((\INST2_Goertzel|reg.result[0][10]~39\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(11) & 
-- (!\INST2_Goertzel|reg.result[0][10]~39\))))
-- \INST2_Goertzel|reg.result[0][11]~41\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\INST2_Goertzel|reg.VA_prev2\(11) & !\INST2_Goertzel|reg.result[0][10]~39\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(11)) # (!\INST2_Goertzel|reg.result[0][10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \INST2_Goertzel|reg.VA_prev2\(11),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][10]~39\,
	combout => \INST2_Goertzel|reg.result[0][11]~40_combout\,
	cout => \INST2_Goertzel|reg.result[0][11]~41\);

-- Location: FF_X17_Y3_N5
\INST2_Goertzel|reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][11]~40_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][11]~q\);

-- Location: LCCOMB_X19_Y3_N4
\INST2_Goertzel|r_Real[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[11]~40_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\INST2_Goertzel|reg.result[0][11]~q\ & (!\INST2_Goertzel|r_Real[10]~39\)) # (!\INST2_Goertzel|reg.result[0][11]~q\ & ((\INST2_Goertzel|r_Real[10]~39\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\INST2_Goertzel|reg.result[0][11]~q\ & (\INST2_Goertzel|r_Real[10]~39\ & VCC)) # (!\INST2_Goertzel|reg.result[0][11]~q\ & (!\INST2_Goertzel|r_Real[10]~39\))))
-- \INST2_Goertzel|r_Real[11]~41\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((!\INST2_Goertzel|r_Real[10]~39\) # (!\INST2_Goertzel|reg.result[0][11]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\INST2_Goertzel|reg.result[0][11]~q\ & !\INST2_Goertzel|r_Real[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\,
	datab => \INST2_Goertzel|reg.result[0][11]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[10]~39\,
	combout => \INST2_Goertzel|r_Real[11]~40_combout\,
	cout => \INST2_Goertzel|r_Real[11]~41\);

-- Location: FF_X19_Y3_N5
\INST2_Goertzel|r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(11));

-- Location: LCCOMB_X17_Y3_N6
\INST2_Goertzel|reg.result[0][12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][12]~42_combout\ = ((\INST2_Goertzel|reg.VA_prev2\(12) $ (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ $ (\INST2_Goertzel|reg.result[0][11]~41\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][12]~43\ = CARRY((\INST2_Goertzel|reg.VA_prev2\(12) & (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ & !\INST2_Goertzel|reg.result[0][11]~41\)) # (!\INST2_Goertzel|reg.VA_prev2\(12) & 
-- ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\) # (!\INST2_Goertzel|reg.result[0][11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.VA_prev2\(12),
	datab => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][11]~41\,
	combout => \INST2_Goertzel|reg.result[0][12]~42_combout\,
	cout => \INST2_Goertzel|reg.result[0][12]~43\);

-- Location: FF_X17_Y3_N7
\INST2_Goertzel|reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][12]~42_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][12]~q\);

-- Location: LCCOMB_X19_Y3_N6
\INST2_Goertzel|r_Real[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[12]~42_combout\ = ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ $ (\INST2_Goertzel|reg.result[0][12]~q\ $ (\INST2_Goertzel|r_Real[11]~41\)))) # (GND)
-- \INST2_Goertzel|r_Real[12]~43\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ & (\INST2_Goertzel|reg.result[0][12]~q\ & !\INST2_Goertzel|r_Real[11]~41\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\INST2_Goertzel|reg.result[0][12]~q\) # (!\INST2_Goertzel|r_Real[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\,
	datab => \INST2_Goertzel|reg.result[0][12]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[11]~41\,
	combout => \INST2_Goertzel|r_Real[12]~42_combout\,
	cout => \INST2_Goertzel|r_Real[12]~43\);

-- Location: FF_X19_Y3_N7
\INST2_Goertzel|r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(12));

-- Location: LCCOMB_X17_Y3_N8
\INST2_Goertzel|reg.result[0][13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][13]~44_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_Goertzel|reg.VA_prev2\(13) & (!\INST2_Goertzel|reg.result[0][12]~43\)) # (!\INST2_Goertzel|reg.VA_prev2\(13) & 
-- (\INST2_Goertzel|reg.result[0][12]~43\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_Goertzel|reg.VA_prev2\(13) & ((\INST2_Goertzel|reg.result[0][12]~43\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(13) & 
-- (!\INST2_Goertzel|reg.result[0][12]~43\))))
-- \INST2_Goertzel|reg.result[0][13]~45\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\INST2_Goertzel|reg.VA_prev2\(13) & !\INST2_Goertzel|reg.result[0][12]~43\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(13)) # (!\INST2_Goertzel|reg.result[0][12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST2_Goertzel|reg.VA_prev2\(13),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][12]~43\,
	combout => \INST2_Goertzel|reg.result[0][13]~44_combout\,
	cout => \INST2_Goertzel|reg.result[0][13]~45\);

-- Location: FF_X17_Y3_N9
\INST2_Goertzel|reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][13]~44_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][13]~q\);

-- Location: LCCOMB_X19_Y3_N8
\INST2_Goertzel|r_Real[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[13]~44_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_Goertzel|reg.result[0][13]~q\ & (!\INST2_Goertzel|r_Real[12]~43\)) # (!\INST2_Goertzel|reg.result[0][13]~q\ & ((\INST2_Goertzel|r_Real[12]~43\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\INST2_Goertzel|reg.result[0][13]~q\ & (\INST2_Goertzel|r_Real[12]~43\ & VCC)) # (!\INST2_Goertzel|reg.result[0][13]~q\ & (!\INST2_Goertzel|r_Real[12]~43\))))
-- \INST2_Goertzel|r_Real[13]~45\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((!\INST2_Goertzel|r_Real[12]~43\) # (!\INST2_Goertzel|reg.result[0][13]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & 
-- (!\INST2_Goertzel|reg.result[0][13]~q\ & !\INST2_Goertzel|r_Real[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST2_Goertzel|reg.result[0][13]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[12]~43\,
	combout => \INST2_Goertzel|r_Real[13]~44_combout\,
	cout => \INST2_Goertzel|r_Real[13]~45\);

-- Location: FF_X19_Y3_N9
\INST2_Goertzel|r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(13));

-- Location: LCCOMB_X17_Y3_N10
\INST2_Goertzel|reg.result[0][14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][14]~46_combout\ = ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ $ (\INST2_Goertzel|reg.VA_prev2\(14) $ (\INST2_Goertzel|reg.result[0][13]~45\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][14]~47\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((!\INST2_Goertzel|reg.result[0][13]~45\) # (!\INST2_Goertzel|reg.VA_prev2\(14)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\INST2_Goertzel|reg.VA_prev2\(14) & !\INST2_Goertzel|reg.result[0][13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \INST2_Goertzel|reg.VA_prev2\(14),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][13]~45\,
	combout => \INST2_Goertzel|reg.result[0][14]~46_combout\,
	cout => \INST2_Goertzel|reg.result[0][14]~47\);

-- Location: FF_X17_Y3_N11
\INST2_Goertzel|reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][14]~46_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][14]~q\);

-- Location: LCCOMB_X19_Y3_N10
\INST2_Goertzel|r_Real[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[14]~46_combout\ = ((\INST2_Goertzel|reg.result[0][14]~q\ $ (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ $ (\INST2_Goertzel|r_Real[13]~45\)))) # (GND)
-- \INST2_Goertzel|r_Real[14]~47\ = CARRY((\INST2_Goertzel|reg.result[0][14]~q\ & ((!\INST2_Goertzel|r_Real[13]~45\) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\))) # (!\INST2_Goertzel|reg.result[0][14]~q\ & 
-- (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ & !\INST2_Goertzel|r_Real[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][14]~q\,
	datab => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[13]~45\,
	combout => \INST2_Goertzel|r_Real[14]~46_combout\,
	cout => \INST2_Goertzel|r_Real[14]~47\);

-- Location: FF_X19_Y3_N11
\INST2_Goertzel|r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(14));

-- Location: LCCOMB_X17_Y3_N12
\INST2_Goertzel|reg.result[0][15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][15]~48_combout\ = (\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\INST2_Goertzel|reg.VA_prev2\(15) & (!\INST2_Goertzel|reg.result[0][14]~47\)) # (!\INST2_Goertzel|reg.VA_prev2\(15) & 
-- (\INST2_Goertzel|reg.result[0][14]~47\ & VCC)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\INST2_Goertzel|reg.VA_prev2\(15) & ((\INST2_Goertzel|reg.result[0][14]~47\) # (GND))) # (!\INST2_Goertzel|reg.VA_prev2\(15) & 
-- (!\INST2_Goertzel|reg.result[0][14]~47\))))
-- \INST2_Goertzel|reg.result[0][15]~49\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (\INST2_Goertzel|reg.VA_prev2\(15) & !\INST2_Goertzel|reg.result[0][14]~47\)) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\INST2_Goertzel|reg.VA_prev2\(15)) # (!\INST2_Goertzel|reg.result[0][14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datab => \INST2_Goertzel|reg.VA_prev2\(15),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][14]~47\,
	combout => \INST2_Goertzel|reg.result[0][15]~48_combout\,
	cout => \INST2_Goertzel|reg.result[0][15]~49\);

-- Location: FF_X17_Y3_N13
\INST2_Goertzel|reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][15]~48_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][15]~q\);

-- Location: LCCOMB_X19_Y3_N12
\INST2_Goertzel|r_Real[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[15]~48_combout\ = (\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\INST2_Goertzel|reg.result[0][15]~q\ & (!\INST2_Goertzel|r_Real[14]~47\)) # (!\INST2_Goertzel|reg.result[0][15]~q\ & ((\INST2_Goertzel|r_Real[14]~47\) # 
-- (GND))))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\INST2_Goertzel|reg.result[0][15]~q\ & (\INST2_Goertzel|r_Real[14]~47\ & VCC)) # (!\INST2_Goertzel|reg.result[0][15]~q\ & (!\INST2_Goertzel|r_Real[14]~47\))))
-- \INST2_Goertzel|r_Real[15]~49\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & ((!\INST2_Goertzel|r_Real[14]~47\) # (!\INST2_Goertzel|reg.result[0][15]~q\))) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- (!\INST2_Goertzel|reg.result[0][15]~q\ & !\INST2_Goertzel|r_Real[14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datab => \INST2_Goertzel|reg.result[0][15]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[14]~47\,
	combout => \INST2_Goertzel|r_Real[15]~48_combout\,
	cout => \INST2_Goertzel|r_Real[15]~49\);

-- Location: FF_X19_Y3_N13
\INST2_Goertzel|r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(15));

-- Location: LCCOMB_X17_Y3_N14
\INST2_Goertzel|reg.result[0][16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][16]~50_combout\ = ((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST2_Goertzel|reg.VA_prev2\(16) $ (\INST2_Goertzel|reg.result[0][15]~49\)))) # (GND)
-- \INST2_Goertzel|reg.result[0][16]~51\ = CARRY((\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ & ((!\INST2_Goertzel|reg.result[0][15]~49\) # (!\INST2_Goertzel|reg.VA_prev2\(16)))) # (!\INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\INST2_Goertzel|reg.VA_prev2\(16) & !\INST2_Goertzel|reg.result[0][15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datab => \INST2_Goertzel|reg.VA_prev2\(16),
	datad => VCC,
	cin => \INST2_Goertzel|reg.result[0][15]~49\,
	combout => \INST2_Goertzel|reg.result[0][16]~50_combout\,
	cout => \INST2_Goertzel|reg.result[0][16]~51\);

-- Location: FF_X17_Y3_N15
\INST2_Goertzel|reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][16]~50_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][16]~q\);

-- Location: LCCOMB_X19_Y3_N14
\INST2_Goertzel|r_Real[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[16]~50_combout\ = ((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\INST2_Goertzel|reg.result[0][16]~q\ $ (\INST2_Goertzel|r_Real[15]~49\)))) # (GND)
-- \INST2_Goertzel|r_Real[16]~51\ = CARRY((\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & (\INST2_Goertzel|reg.result[0][16]~q\ & !\INST2_Goertzel|r_Real[15]~49\)) # (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\INST2_Goertzel|reg.result[0][16]~q\) # (!\INST2_Goertzel|r_Real[15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datab => \INST2_Goertzel|reg.result[0][16]~q\,
	datad => VCC,
	cin => \INST2_Goertzel|r_Real[15]~49\,
	combout => \INST2_Goertzel|r_Real[16]~50_combout\,
	cout => \INST2_Goertzel|r_Real[16]~51\);

-- Location: FF_X19_Y3_N15
\INST2_Goertzel|r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(16));

-- Location: LCCOMB_X17_Y3_N16
\INST2_Goertzel|reg.result[0][17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|reg.result[0][17]~52_combout\ = \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST2_Goertzel|reg.result[0][16]~51\ $ (!\INST2_Goertzel|reg.VA_prev2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => \INST2_Goertzel|reg.VA_prev2\(17),
	cin => \INST2_Goertzel|reg.result[0][16]~51\,
	combout => \INST2_Goertzel|reg.result[0][17]~52_combout\);

-- Location: FF_X17_Y3_N17
\INST2_Goertzel|reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|reg.result[0][17]~52_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|reg.result[0][17]~q\);

-- Location: LCCOMB_X19_Y3_N16
\INST2_Goertzel|r_Real[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Real[17]~52_combout\ = \INST2_Goertzel|reg.result[0][17]~q\ $ (\INST2_Goertzel|r_Real[16]~51\ $ (!\INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|reg.result[0][17]~q\,
	datad => \INST2_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	cin => \INST2_Goertzel|r_Real[16]~51\,
	combout => \INST2_Goertzel|r_Real[17]~52_combout\);

-- Location: FF_X19_Y3_N17
\INST2_Goertzel|r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Real[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Real\(17));

-- Location: IOIBUF_X23_Y0_N8
\i_ADC3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(0),
	o => \i_ADC3[0]~input_o\);

-- Location: FF_X19_Y2_N15
\INST3_sampler|r_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[0]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(0));

-- Location: IOIBUF_X19_Y0_N8
\i_ADC3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(1),
	o => \i_ADC3[1]~input_o\);

-- Location: FF_X19_Y2_N17
\INST3_sampler|r_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[1]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(1));

-- Location: LCCOMB_X23_Y2_N20
\INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector20~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y2_N21
\INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y2_N8
\INST3_Goertzel|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector38~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[2]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector38~0_combout\);

-- Location: FF_X23_Y2_N9
\INST3_Goertzel|reg.VA_prev2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector38~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(2));

-- Location: LCCOMB_X30_Y2_N30
\INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector19~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2feeder_combout\);

-- Location: FF_X30_Y2_N31
\INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N8
\INST3_Goertzel|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector37~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[3]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector37~0_combout\);

-- Location: FF_X30_Y2_N9
\INST3_Goertzel|reg.VA_prev2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector37~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(3));

-- Location: IOIBUF_X16_Y0_N29
\i_ADC3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(3),
	o => \i_ADC3[3]~input_o\);

-- Location: FF_X19_Y2_N21
\INST3_sampler|r_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[3]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(3));

-- Location: FF_X23_Y2_N19
\INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST3_Goertzel|Selector18~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y2_N14
\INST3_Goertzel|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector36~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[4]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector36~0_combout\);

-- Location: FF_X23_Y2_N15
\INST3_Goertzel|reg.VA_prev2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector36~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(4));

-- Location: LCCOMB_X33_Y2_N10
\INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector17~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2feeder_combout\);

-- Location: FF_X33_Y2_N11
\INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N22
\INST3_Goertzel|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector35~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[5]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector35~0_combout\);

-- Location: FF_X30_Y2_N23
\INST3_Goertzel|reg.VA_prev2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector35~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(5));

-- Location: FF_X23_Y2_N29
\INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST3_Goertzel|Selector15~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N6
\INST3_Goertzel|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector33~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[7]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector33~0_combout\);

-- Location: FF_X30_Y2_N7
\INST3_Goertzel|reg.VA_prev2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector33~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(7));

-- Location: LCCOMB_X30_Y2_N10
\INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Selector14~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2feeder_combout\);

-- Location: FF_X30_Y2_N11
\INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N12
\INST3_Goertzel|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector32~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[8]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector32~0_combout\);

-- Location: FF_X30_Y2_N13
\INST3_Goertzel|reg.VA_prev2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector32~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(8));

-- Location: IOIBUF_X21_Y29_N1
\i_ADC3[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(8),
	o => \i_ADC3[8]~input_o\);

-- Location: FF_X19_Y2_N31
\INST3_sampler|r_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[8]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(8));

-- Location: LCCOMB_X28_Y1_N16
\INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector11~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2feeder_combout\);

-- Location: FF_X28_Y1_N17
\INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N28
\INST3_Goertzel|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector29~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[11]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector29~0_combout\);

-- Location: FF_X26_Y1_N29
\INST3_Goertzel|reg.VA_prev2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector29~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(11));

-- Location: FF_X20_Y1_N29
\INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector10~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N10
\INST3_Goertzel|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector28~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[12]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector28~0_combout\);

-- Location: FF_X26_Y1_N11
\INST3_Goertzel|reg.VA_prev2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector28~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(12));

-- Location: IOIBUF_X19_Y0_N1
\i_ADC3[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(11),
	o => \i_ADC3[11]~input_o\);

-- Location: LCCOMB_X19_Y1_N18
\INST3_sampler|r_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_sampler|r_DATA[11]~feeder_combout\ = \i_ADC3[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ADC3[11]~input_o\,
	combout => \INST3_sampler|r_DATA[11]~feeder_combout\);

-- Location: FF_X19_Y1_N19
\INST3_sampler|r_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_sampler|r_DATA[11]~feeder_combout\,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(11));

-- Location: IOIBUF_X39_Y0_N15
\i_ADC3[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(10),
	o => \i_ADC3[10]~input_o\);

-- Location: FF_X19_Y1_N3
\INST3_sampler|r_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[10]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(10));

-- Location: IOIBUF_X19_Y0_N15
\i_ADC3[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(9),
	o => \i_ADC3[9]~input_o\);

-- Location: FF_X19_Y1_N1
\INST3_sampler|r_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[9]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(9));

-- Location: IOIBUF_X28_Y0_N8
\i_ADC3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(7),
	o => \i_ADC3[7]~input_o\);

-- Location: FF_X19_Y2_N29
\INST3_sampler|r_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[7]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(7));

-- Location: IOIBUF_X41_Y2_N1
\i_ADC3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(6),
	o => \i_ADC3[6]~input_o\);

-- Location: FF_X19_Y2_N27
\INST3_sampler|r_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[6]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(6));

-- Location: IOIBUF_X26_Y0_N22
\i_ADC3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(5),
	o => \i_ADC3[5]~input_o\);

-- Location: FF_X19_Y2_N25
\INST3_sampler|r_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[5]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(5));

-- Location: IOIBUF_X23_Y0_N15
\i_ADC3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(4),
	o => \i_ADC3[4]~input_o\);

-- Location: FF_X19_Y2_N23
\INST3_sampler|r_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[4]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(4));

-- Location: IOIBUF_X30_Y0_N1
\i_ADC3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADC3(2),
	o => \i_ADC3[2]~input_o\);

-- Location: FF_X19_Y2_N19
\INST3_sampler|r_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_ADC3[2]~input_o\,
	sload => VCC,
	ena => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_sampler|r_DATA\(2));

-- Location: LCCOMB_X19_Y2_N14
\INST3_Goertzel|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~0_combout\ = (\INST3_sampler|r_DATA\(0) & (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\INST3_sampler|r_DATA\(0) & (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\ & VCC))
-- \INST3_Goertzel|Add0~1\ = CARRY((\INST3_sampler|r_DATA\(0) & \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_sampler|r_DATA\(0),
	datab => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \INST3_Goertzel|Add0~0_combout\,
	cout => \INST3_Goertzel|Add0~1\);

-- Location: LCCOMB_X19_Y2_N16
\INST3_Goertzel|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~2_combout\ = (\INST3_sampler|r_DATA\(1) & ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\INST3_Goertzel|Add0~1\ & VCC)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST3_Goertzel|Add0~1\)))) # 
-- (!\INST3_sampler|r_DATA\(1) & ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\INST3_Goertzel|Add0~1\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\INST3_Goertzel|Add0~1\) # (GND)))))
-- \INST3_Goertzel|Add0~3\ = CARRY((\INST3_sampler|r_DATA\(1) & (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\INST3_Goertzel|Add0~1\)) # (!\INST3_sampler|r_DATA\(1) & ((!\INST3_Goertzel|Add0~1\) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_sampler|r_DATA\(1),
	datab => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \INST3_Goertzel|Add0~1\,
	combout => \INST3_Goertzel|Add0~2_combout\,
	cout => \INST3_Goertzel|Add0~3\);

-- Location: LCCOMB_X19_Y2_N18
\INST3_Goertzel|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~4_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\INST3_sampler|r_DATA\(2) $ (!\INST3_Goertzel|Add0~3\)))) # (GND)
-- \INST3_Goertzel|Add0~5\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\INST3_sampler|r_DATA\(2)) # (!\INST3_Goertzel|Add0~3\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\INST3_sampler|r_DATA\(2) & 
-- !\INST3_Goertzel|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST3_sampler|r_DATA\(2),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~3\,
	combout => \INST3_Goertzel|Add0~4_combout\,
	cout => \INST3_Goertzel|Add0~5\);

-- Location: LCCOMB_X19_Y2_N20
\INST3_Goertzel|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~6_combout\ = (\INST3_sampler|r_DATA\(3) & ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\INST3_Goertzel|Add0~5\ & VCC)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST3_Goertzel|Add0~5\)))) # 
-- (!\INST3_sampler|r_DATA\(3) & ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\INST3_Goertzel|Add0~5\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\INST3_Goertzel|Add0~5\) # (GND)))))
-- \INST3_Goertzel|Add0~7\ = CARRY((\INST3_sampler|r_DATA\(3) & (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\INST3_Goertzel|Add0~5\)) # (!\INST3_sampler|r_DATA\(3) & ((!\INST3_Goertzel|Add0~5\) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_sampler|r_DATA\(3),
	datab => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \INST3_Goertzel|Add0~5\,
	combout => \INST3_Goertzel|Add0~6_combout\,
	cout => \INST3_Goertzel|Add0~7\);

-- Location: LCCOMB_X19_Y2_N22
\INST3_Goertzel|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~8_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\INST3_sampler|r_DATA\(4) $ (!\INST3_Goertzel|Add0~7\)))) # (GND)
-- \INST3_Goertzel|Add0~9\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\INST3_sampler|r_DATA\(4)) # (!\INST3_Goertzel|Add0~7\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\INST3_sampler|r_DATA\(4) & 
-- !\INST3_Goertzel|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \INST3_sampler|r_DATA\(4),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~7\,
	combout => \INST3_Goertzel|Add0~8_combout\,
	cout => \INST3_Goertzel|Add0~9\);

-- Location: LCCOMB_X19_Y2_N24
\INST3_Goertzel|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~10_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_sampler|r_DATA\(5) & (\INST3_Goertzel|Add0~9\ & VCC)) # (!\INST3_sampler|r_DATA\(5) & (!\INST3_Goertzel|Add0~9\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_sampler|r_DATA\(5) & (!\INST3_Goertzel|Add0~9\)) # (!\INST3_sampler|r_DATA\(5) & ((\INST3_Goertzel|Add0~9\) # (GND)))))
-- \INST3_Goertzel|Add0~11\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\INST3_sampler|r_DATA\(5) & !\INST3_Goertzel|Add0~9\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\INST3_Goertzel|Add0~9\) # 
-- (!\INST3_sampler|r_DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST3_sampler|r_DATA\(5),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~9\,
	combout => \INST3_Goertzel|Add0~10_combout\,
	cout => \INST3_Goertzel|Add0~11\);

-- Location: LCCOMB_X19_Y2_N26
\INST3_Goertzel|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~12_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\INST3_sampler|r_DATA\(6) $ (!\INST3_Goertzel|Add0~11\)))) # (GND)
-- \INST3_Goertzel|Add0~13\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\INST3_sampler|r_DATA\(6)) # (!\INST3_Goertzel|Add0~11\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\INST3_sampler|r_DATA\(6) & 
-- !\INST3_Goertzel|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \INST3_sampler|r_DATA\(6),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~11\,
	combout => \INST3_Goertzel|Add0~12_combout\,
	cout => \INST3_Goertzel|Add0~13\);

-- Location: LCCOMB_X19_Y2_N28
\INST3_Goertzel|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~14_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST3_sampler|r_DATA\(7) & (\INST3_Goertzel|Add0~13\ & VCC)) # (!\INST3_sampler|r_DATA\(7) & (!\INST3_Goertzel|Add0~13\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\INST3_sampler|r_DATA\(7) & (!\INST3_Goertzel|Add0~13\)) # (!\INST3_sampler|r_DATA\(7) & ((\INST3_Goertzel|Add0~13\) # (GND)))))
-- \INST3_Goertzel|Add0~15\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\INST3_sampler|r_DATA\(7) & !\INST3_Goertzel|Add0~13\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\INST3_Goertzel|Add0~13\) # 
-- (!\INST3_sampler|r_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \INST3_sampler|r_DATA\(7),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~13\,
	combout => \INST3_Goertzel|Add0~14_combout\,
	cout => \INST3_Goertzel|Add0~15\);

-- Location: LCCOMB_X19_Y2_N30
\INST3_Goertzel|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~16_combout\ = ((\INST3_sampler|r_DATA\(8) $ (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (!\INST3_Goertzel|Add0~15\)))) # (GND)
-- \INST3_Goertzel|Add0~17\ = CARRY((\INST3_sampler|r_DATA\(8) & ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\INST3_Goertzel|Add0~15\))) # (!\INST3_sampler|r_DATA\(8) & (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- !\INST3_Goertzel|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_sampler|r_DATA\(8),
	datab => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST3_Goertzel|Add0~15\,
	combout => \INST3_Goertzel|Add0~16_combout\,
	cout => \INST3_Goertzel|Add0~17\);

-- Location: LCCOMB_X19_Y1_N0
\INST3_Goertzel|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~18_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\INST3_sampler|r_DATA\(9) & (\INST3_Goertzel|Add0~17\ & VCC)) # (!\INST3_sampler|r_DATA\(9) & (!\INST3_Goertzel|Add0~17\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\INST3_sampler|r_DATA\(9) & (!\INST3_Goertzel|Add0~17\)) # (!\INST3_sampler|r_DATA\(9) & ((\INST3_Goertzel|Add0~17\) # (GND)))))
-- \INST3_Goertzel|Add0~19\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\INST3_sampler|r_DATA\(9) & !\INST3_Goertzel|Add0~17\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\INST3_Goertzel|Add0~17\) # 
-- (!\INST3_sampler|r_DATA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \INST3_sampler|r_DATA\(9),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~17\,
	combout => \INST3_Goertzel|Add0~18_combout\,
	cout => \INST3_Goertzel|Add0~19\);

-- Location: LCCOMB_X19_Y1_N2
\INST3_Goertzel|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~20_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\INST3_sampler|r_DATA\(10) $ (!\INST3_Goertzel|Add0~19\)))) # (GND)
-- \INST3_Goertzel|Add0~21\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\INST3_sampler|r_DATA\(10)) # (!\INST3_Goertzel|Add0~19\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\INST3_sampler|r_DATA\(10) & 
-- !\INST3_Goertzel|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \INST3_sampler|r_DATA\(10),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~19\,
	combout => \INST3_Goertzel|Add0~20_combout\,
	cout => \INST3_Goertzel|Add0~21\);

-- Location: LCCOMB_X19_Y1_N4
\INST3_Goertzel|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~22_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\INST3_sampler|r_DATA\(11) & (\INST3_Goertzel|Add0~21\ & VCC)) # (!\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~21\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~21\)) # (!\INST3_sampler|r_DATA\(11) & ((\INST3_Goertzel|Add0~21\) # (GND)))))
-- \INST3_Goertzel|Add0~23\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\INST3_sampler|r_DATA\(11) & !\INST3_Goertzel|Add0~21\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\INST3_Goertzel|Add0~21\) # 
-- (!\INST3_sampler|r_DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~21\,
	combout => \INST3_Goertzel|Add0~22_combout\,
	cout => \INST3_Goertzel|Add0~23\);

-- Location: LCCOMB_X19_Y1_N6
\INST3_Goertzel|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~24_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\INST3_sampler|r_DATA\(11) $ (!\INST3_Goertzel|Add0~23\)))) # (GND)
-- \INST3_Goertzel|Add0~25\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\INST3_sampler|r_DATA\(11)) # (!\INST3_Goertzel|Add0~23\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\INST3_sampler|r_DATA\(11) & 
-- !\INST3_Goertzel|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~23\,
	combout => \INST3_Goertzel|Add0~24_combout\,
	cout => \INST3_Goertzel|Add0~25\);

-- Location: LCCOMB_X19_Y1_N8
\INST3_Goertzel|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~26_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\INST3_sampler|r_DATA\(11) & (\INST3_Goertzel|Add0~25\ & VCC)) # (!\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~25\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~25\)) # (!\INST3_sampler|r_DATA\(11) & ((\INST3_Goertzel|Add0~25\) # (GND)))))
-- \INST3_Goertzel|Add0~27\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\INST3_sampler|r_DATA\(11) & !\INST3_Goertzel|Add0~25\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\INST3_Goertzel|Add0~25\) # 
-- (!\INST3_sampler|r_DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~25\,
	combout => \INST3_Goertzel|Add0~26_combout\,
	cout => \INST3_Goertzel|Add0~27\);

-- Location: LCCOMB_X19_Y1_N10
\INST3_Goertzel|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~28_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (\INST3_sampler|r_DATA\(11) $ (!\INST3_Goertzel|Add0~27\)))) # (GND)
-- \INST3_Goertzel|Add0~29\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\INST3_sampler|r_DATA\(11)) # (!\INST3_Goertzel|Add0~27\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\INST3_sampler|r_DATA\(11) & 
-- !\INST3_Goertzel|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~27\,
	combout => \INST3_Goertzel|Add0~28_combout\,
	cout => \INST3_Goertzel|Add0~29\);

-- Location: LCCOMB_X19_Y1_N12
\INST3_Goertzel|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~30_combout\ = (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\INST3_sampler|r_DATA\(11) & (\INST3_Goertzel|Add0~29\ & VCC)) # (!\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~29\)))) # 
-- (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\INST3_sampler|r_DATA\(11) & (!\INST3_Goertzel|Add0~29\)) # (!\INST3_sampler|r_DATA\(11) & ((\INST3_Goertzel|Add0~29\) # (GND)))))
-- \INST3_Goertzel|Add0~31\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\INST3_sampler|r_DATA\(11) & !\INST3_Goertzel|Add0~29\)) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((!\INST3_Goertzel|Add0~29\) # 
-- (!\INST3_sampler|r_DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~29\,
	combout => \INST3_Goertzel|Add0~30_combout\,
	cout => \INST3_Goertzel|Add0~31\);

-- Location: LCCOMB_X19_Y1_N14
\INST3_Goertzel|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~32_combout\ = ((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (\INST3_sampler|r_DATA\(11) $ (!\INST3_Goertzel|Add0~31\)))) # (GND)
-- \INST3_Goertzel|Add0~33\ = CARRY((\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\INST3_sampler|r_DATA\(11)) # (!\INST3_Goertzel|Add0~31\))) # (!\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\INST3_sampler|r_DATA\(11) & 
-- !\INST3_Goertzel|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \INST3_sampler|r_DATA\(11),
	datad => VCC,
	cin => \INST3_Goertzel|Add0~31\,
	combout => \INST3_Goertzel|Add0~32_combout\,
	cout => \INST3_Goertzel|Add0~33\);

-- Location: LCCOMB_X19_Y1_N16
\INST3_Goertzel|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Add0~34_combout\ = \INST3_sampler|r_DATA\(11) $ (\INST3_Goertzel|Add0~33\ $ (\INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3_sampler|r_DATA\(11),
	datad => \INST3_Goertzel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	cin => \INST3_Goertzel|Add0~33\,
	combout => \INST3_Goertzel|Add0~34_combout\);

-- Location: FF_X23_Y2_N17
\INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \INST3_Goertzel|Selector5~0_combout\,
	sload => VCC,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y2_N22
\INST3_Goertzel|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector23~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[17]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector23~0_combout\);

-- Location: FF_X23_Y2_N23
\INST3_Goertzel|reg.VA_prev2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector23~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(17));

-- Location: LCCOMB_X23_Y2_N6
\INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector6~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y2_N7
\INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y2_N12
\INST3_Goertzel|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector24~0_combout\ = (\INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\ & \INST1_Goertzel|reg.state.CALCULATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev[16]~_Duplicate_2_q\,
	datad => \INST1_Goertzel|reg.state.CALCULATE~q\,
	combout => \INST3_Goertzel|Selector24~0_combout\);

-- Location: FF_X23_Y2_N13
\INST3_Goertzel|reg.VA_prev2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector24~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(16));

-- Location: FF_X20_Y1_N25
\INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector7~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N12
\INST3_Goertzel|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector25~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[15]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector25~0_combout\);

-- Location: FF_X26_Y1_N13
\INST3_Goertzel|reg.VA_prev2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector25~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(15));

-- Location: FF_X20_Y1_N23
\INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector8~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N26
\INST3_Goertzel|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector26~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[14]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector26~0_combout\);

-- Location: FF_X26_Y1_N27
\INST3_Goertzel|reg.VA_prev2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector26~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(14));

-- Location: LCCOMB_X26_Y1_N22
\INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector9~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\);

-- Location: FF_X26_Y1_N23
\INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N16
\INST3_Goertzel|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector27~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[13]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector27~0_combout\);

-- Location: FF_X26_Y1_N17
\INST3_Goertzel|reg.VA_prev2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector27~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(13));

-- Location: FF_X20_Y1_N19
\INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector12~0_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N30
\INST3_Goertzel|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector30~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[10]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector30~0_combout\);

-- Location: FF_X26_Y1_N31
\INST3_Goertzel|reg.VA_prev2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector30~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(10));

-- Location: LCCOMB_X27_Y1_N8
\INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector13~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\);

-- Location: FF_X27_Y1_N9
\INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\);

-- Location: LCCOMB_X26_Y1_N4
\INST3_Goertzel|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector31~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[9]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector31~0_combout\);

-- Location: FF_X26_Y1_N5
\INST3_Goertzel|reg.VA_prev2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector31~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(9));

-- Location: LCCOMB_X30_Y2_N28
\INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Selector16~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2feeder_combout\);

-- Location: FF_X30_Y2_N29
\INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N24
\INST3_Goertzel|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector34~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[6]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector34~0_combout\);

-- Location: FF_X30_Y2_N25
\INST3_Goertzel|reg.VA_prev2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector34~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(6));

-- Location: LCCOMB_X32_Y2_N28
\INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector21~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\);

-- Location: FF_X32_Y2_N29
\INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N2
\INST3_Goertzel|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector39~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datad => \INST3_Goertzel|reg.VA_prev[1]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector39~0_combout\);

-- Location: FF_X30_Y2_N3
\INST3_Goertzel|reg.VA_prev2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector39~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(1));

-- Location: LCCOMB_X20_Y2_N14
\INST3_Goertzel|reg.VA[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[0]~18_combout\ = (\INST3_Goertzel|Add0~0_combout\ & ((GND) # (!\INST3_Goertzel|reg.VA_prev2\(0)))) # (!\INST3_Goertzel|Add0~0_combout\ & (\INST3_Goertzel|reg.VA_prev2\(0) $ (GND)))
-- \INST3_Goertzel|reg.VA[0]~19\ = CARRY((\INST3_Goertzel|Add0~0_combout\) # (!\INST3_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~0_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(0),
	datad => VCC,
	combout => \INST3_Goertzel|reg.VA[0]~18_combout\,
	cout => \INST3_Goertzel|reg.VA[0]~19\);

-- Location: LCCOMB_X20_Y2_N16
\INST3_Goertzel|reg.VA[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[1]~20_combout\ = (\INST3_Goertzel|Add0~2_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(1) & (!\INST3_Goertzel|reg.VA[0]~19\)) # (!\INST3_Goertzel|reg.VA_prev2\(1) & (\INST3_Goertzel|reg.VA[0]~19\ & VCC)))) # 
-- (!\INST3_Goertzel|Add0~2_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(1) & ((\INST3_Goertzel|reg.VA[0]~19\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(1) & (!\INST3_Goertzel|reg.VA[0]~19\))))
-- \INST3_Goertzel|reg.VA[1]~21\ = CARRY((\INST3_Goertzel|Add0~2_combout\ & (\INST3_Goertzel|reg.VA_prev2\(1) & !\INST3_Goertzel|reg.VA[0]~19\)) # (!\INST3_Goertzel|Add0~2_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(1)) # (!\INST3_Goertzel|reg.VA[0]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~2_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(1),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[0]~19\,
	combout => \INST3_Goertzel|reg.VA[1]~20_combout\,
	cout => \INST3_Goertzel|reg.VA[1]~21\);

-- Location: LCCOMB_X20_Y2_N18
\INST3_Goertzel|reg.VA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[2]~22_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(2) $ (\INST3_Goertzel|Add0~4_combout\ $ (\INST3_Goertzel|reg.VA[1]~21\)))) # (GND)
-- \INST3_Goertzel|reg.VA[2]~23\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(2) & (\INST3_Goertzel|Add0~4_combout\ & !\INST3_Goertzel|reg.VA[1]~21\)) # (!\INST3_Goertzel|reg.VA_prev2\(2) & ((\INST3_Goertzel|Add0~4_combout\) # (!\INST3_Goertzel|reg.VA[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(2),
	datab => \INST3_Goertzel|Add0~4_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[1]~21\,
	combout => \INST3_Goertzel|reg.VA[2]~22_combout\,
	cout => \INST3_Goertzel|reg.VA[2]~23\);

-- Location: LCCOMB_X20_Y2_N20
\INST3_Goertzel|reg.VA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[3]~24_combout\ = (\INST3_Goertzel|reg.VA_prev2\(3) & ((\INST3_Goertzel|Add0~6_combout\ & (!\INST3_Goertzel|reg.VA[2]~23\)) # (!\INST3_Goertzel|Add0~6_combout\ & ((\INST3_Goertzel|reg.VA[2]~23\) # (GND))))) # 
-- (!\INST3_Goertzel|reg.VA_prev2\(3) & ((\INST3_Goertzel|Add0~6_combout\ & (\INST3_Goertzel|reg.VA[2]~23\ & VCC)) # (!\INST3_Goertzel|Add0~6_combout\ & (!\INST3_Goertzel|reg.VA[2]~23\))))
-- \INST3_Goertzel|reg.VA[3]~25\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(3) & ((!\INST3_Goertzel|reg.VA[2]~23\) # (!\INST3_Goertzel|Add0~6_combout\))) # (!\INST3_Goertzel|reg.VA_prev2\(3) & (!\INST3_Goertzel|Add0~6_combout\ & !\INST3_Goertzel|reg.VA[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(3),
	datab => \INST3_Goertzel|Add0~6_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[2]~23\,
	combout => \INST3_Goertzel|reg.VA[3]~24_combout\,
	cout => \INST3_Goertzel|reg.VA[3]~25\);

-- Location: LCCOMB_X20_Y2_N22
\INST3_Goertzel|reg.VA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[4]~26_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(4) $ (\INST3_Goertzel|Add0~8_combout\ $ (\INST3_Goertzel|reg.VA[3]~25\)))) # (GND)
-- \INST3_Goertzel|reg.VA[4]~27\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(4) & (\INST3_Goertzel|Add0~8_combout\ & !\INST3_Goertzel|reg.VA[3]~25\)) # (!\INST3_Goertzel|reg.VA_prev2\(4) & ((\INST3_Goertzel|Add0~8_combout\) # (!\INST3_Goertzel|reg.VA[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(4),
	datab => \INST3_Goertzel|Add0~8_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[3]~25\,
	combout => \INST3_Goertzel|reg.VA[4]~26_combout\,
	cout => \INST3_Goertzel|reg.VA[4]~27\);

-- Location: LCCOMB_X20_Y2_N24
\INST3_Goertzel|reg.VA[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[5]~28_combout\ = (\INST3_Goertzel|reg.VA_prev2\(5) & ((\INST3_Goertzel|Add0~10_combout\ & (!\INST3_Goertzel|reg.VA[4]~27\)) # (!\INST3_Goertzel|Add0~10_combout\ & ((\INST3_Goertzel|reg.VA[4]~27\) # (GND))))) # 
-- (!\INST3_Goertzel|reg.VA_prev2\(5) & ((\INST3_Goertzel|Add0~10_combout\ & (\INST3_Goertzel|reg.VA[4]~27\ & VCC)) # (!\INST3_Goertzel|Add0~10_combout\ & (!\INST3_Goertzel|reg.VA[4]~27\))))
-- \INST3_Goertzel|reg.VA[5]~29\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(5) & ((!\INST3_Goertzel|reg.VA[4]~27\) # (!\INST3_Goertzel|Add0~10_combout\))) # (!\INST3_Goertzel|reg.VA_prev2\(5) & (!\INST3_Goertzel|Add0~10_combout\ & 
-- !\INST3_Goertzel|reg.VA[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(5),
	datab => \INST3_Goertzel|Add0~10_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[4]~27\,
	combout => \INST3_Goertzel|reg.VA[5]~28_combout\,
	cout => \INST3_Goertzel|reg.VA[5]~29\);

-- Location: LCCOMB_X20_Y2_N26
\INST3_Goertzel|reg.VA[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[6]~30_combout\ = ((\INST3_Goertzel|Add0~12_combout\ $ (\INST3_Goertzel|reg.VA_prev2\(6) $ (\INST3_Goertzel|reg.VA[5]~29\)))) # (GND)
-- \INST3_Goertzel|reg.VA[6]~31\ = CARRY((\INST3_Goertzel|Add0~12_combout\ & ((!\INST3_Goertzel|reg.VA[5]~29\) # (!\INST3_Goertzel|reg.VA_prev2\(6)))) # (!\INST3_Goertzel|Add0~12_combout\ & (!\INST3_Goertzel|reg.VA_prev2\(6) & 
-- !\INST3_Goertzel|reg.VA[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~12_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(6),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[5]~29\,
	combout => \INST3_Goertzel|reg.VA[6]~30_combout\,
	cout => \INST3_Goertzel|reg.VA[6]~31\);

-- Location: LCCOMB_X20_Y2_N28
\INST3_Goertzel|reg.VA[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[7]~32_combout\ = (\INST3_Goertzel|reg.VA_prev2\(7) & ((\INST3_Goertzel|Add0~14_combout\ & (!\INST3_Goertzel|reg.VA[6]~31\)) # (!\INST3_Goertzel|Add0~14_combout\ & ((\INST3_Goertzel|reg.VA[6]~31\) # (GND))))) # 
-- (!\INST3_Goertzel|reg.VA_prev2\(7) & ((\INST3_Goertzel|Add0~14_combout\ & (\INST3_Goertzel|reg.VA[6]~31\ & VCC)) # (!\INST3_Goertzel|Add0~14_combout\ & (!\INST3_Goertzel|reg.VA[6]~31\))))
-- \INST3_Goertzel|reg.VA[7]~33\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(7) & ((!\INST3_Goertzel|reg.VA[6]~31\) # (!\INST3_Goertzel|Add0~14_combout\))) # (!\INST3_Goertzel|reg.VA_prev2\(7) & (!\INST3_Goertzel|Add0~14_combout\ & 
-- !\INST3_Goertzel|reg.VA[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(7),
	datab => \INST3_Goertzel|Add0~14_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[6]~31\,
	combout => \INST3_Goertzel|reg.VA[7]~32_combout\,
	cout => \INST3_Goertzel|reg.VA[7]~33\);

-- Location: LCCOMB_X20_Y2_N30
\INST3_Goertzel|reg.VA[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[8]~34_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(8) $ (\INST3_Goertzel|Add0~16_combout\ $ (\INST3_Goertzel|reg.VA[7]~33\)))) # (GND)
-- \INST3_Goertzel|reg.VA[8]~35\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(8) & (\INST3_Goertzel|Add0~16_combout\ & !\INST3_Goertzel|reg.VA[7]~33\)) # (!\INST3_Goertzel|reg.VA_prev2\(8) & ((\INST3_Goertzel|Add0~16_combout\) # (!\INST3_Goertzel|reg.VA[7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(8),
	datab => \INST3_Goertzel|Add0~16_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[7]~33\,
	combout => \INST3_Goertzel|reg.VA[8]~34_combout\,
	cout => \INST3_Goertzel|reg.VA[8]~35\);

-- Location: LCCOMB_X20_Y1_N0
\INST3_Goertzel|reg.VA[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[9]~36_combout\ = (\INST3_Goertzel|Add0~18_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(9) & (!\INST3_Goertzel|reg.VA[8]~35\)) # (!\INST3_Goertzel|reg.VA_prev2\(9) & (\INST3_Goertzel|reg.VA[8]~35\ & VCC)))) # 
-- (!\INST3_Goertzel|Add0~18_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(9) & ((\INST3_Goertzel|reg.VA[8]~35\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(9) & (!\INST3_Goertzel|reg.VA[8]~35\))))
-- \INST3_Goertzel|reg.VA[9]~37\ = CARRY((\INST3_Goertzel|Add0~18_combout\ & (\INST3_Goertzel|reg.VA_prev2\(9) & !\INST3_Goertzel|reg.VA[8]~35\)) # (!\INST3_Goertzel|Add0~18_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(9)) # (!\INST3_Goertzel|reg.VA[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~18_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(9),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[8]~35\,
	combout => \INST3_Goertzel|reg.VA[9]~36_combout\,
	cout => \INST3_Goertzel|reg.VA[9]~37\);

-- Location: LCCOMB_X20_Y1_N2
\INST3_Goertzel|reg.VA[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[10]~38_combout\ = ((\INST3_Goertzel|Add0~20_combout\ $ (\INST3_Goertzel|reg.VA_prev2\(10) $ (\INST3_Goertzel|reg.VA[9]~37\)))) # (GND)
-- \INST3_Goertzel|reg.VA[10]~39\ = CARRY((\INST3_Goertzel|Add0~20_combout\ & ((!\INST3_Goertzel|reg.VA[9]~37\) # (!\INST3_Goertzel|reg.VA_prev2\(10)))) # (!\INST3_Goertzel|Add0~20_combout\ & (!\INST3_Goertzel|reg.VA_prev2\(10) & 
-- !\INST3_Goertzel|reg.VA[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~20_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(10),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[9]~37\,
	combout => \INST3_Goertzel|reg.VA[10]~38_combout\,
	cout => \INST3_Goertzel|reg.VA[10]~39\);

-- Location: LCCOMB_X20_Y1_N4
\INST3_Goertzel|reg.VA[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[11]~40_combout\ = (\INST3_Goertzel|reg.VA_prev2\(11) & ((\INST3_Goertzel|Add0~22_combout\ & (!\INST3_Goertzel|reg.VA[10]~39\)) # (!\INST3_Goertzel|Add0~22_combout\ & ((\INST3_Goertzel|reg.VA[10]~39\) # (GND))))) # 
-- (!\INST3_Goertzel|reg.VA_prev2\(11) & ((\INST3_Goertzel|Add0~22_combout\ & (\INST3_Goertzel|reg.VA[10]~39\ & VCC)) # (!\INST3_Goertzel|Add0~22_combout\ & (!\INST3_Goertzel|reg.VA[10]~39\))))
-- \INST3_Goertzel|reg.VA[11]~41\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(11) & ((!\INST3_Goertzel|reg.VA[10]~39\) # (!\INST3_Goertzel|Add0~22_combout\))) # (!\INST3_Goertzel|reg.VA_prev2\(11) & (!\INST3_Goertzel|Add0~22_combout\ & 
-- !\INST3_Goertzel|reg.VA[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(11),
	datab => \INST3_Goertzel|Add0~22_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[10]~39\,
	combout => \INST3_Goertzel|reg.VA[11]~40_combout\,
	cout => \INST3_Goertzel|reg.VA[11]~41\);

-- Location: LCCOMB_X20_Y1_N6
\INST3_Goertzel|reg.VA[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[12]~42_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(12) $ (\INST3_Goertzel|Add0~24_combout\ $ (\INST3_Goertzel|reg.VA[11]~41\)))) # (GND)
-- \INST3_Goertzel|reg.VA[12]~43\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(12) & (\INST3_Goertzel|Add0~24_combout\ & !\INST3_Goertzel|reg.VA[11]~41\)) # (!\INST3_Goertzel|reg.VA_prev2\(12) & ((\INST3_Goertzel|Add0~24_combout\) # 
-- (!\INST3_Goertzel|reg.VA[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(12),
	datab => \INST3_Goertzel|Add0~24_combout\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[11]~41\,
	combout => \INST3_Goertzel|reg.VA[12]~42_combout\,
	cout => \INST3_Goertzel|reg.VA[12]~43\);

-- Location: LCCOMB_X20_Y1_N8
\INST3_Goertzel|reg.VA[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[13]~44_combout\ = (\INST3_Goertzel|Add0~26_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(13) & (!\INST3_Goertzel|reg.VA[12]~43\)) # (!\INST3_Goertzel|reg.VA_prev2\(13) & (\INST3_Goertzel|reg.VA[12]~43\ & VCC)))) # 
-- (!\INST3_Goertzel|Add0~26_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(13) & ((\INST3_Goertzel|reg.VA[12]~43\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(13) & (!\INST3_Goertzel|reg.VA[12]~43\))))
-- \INST3_Goertzel|reg.VA[13]~45\ = CARRY((\INST3_Goertzel|Add0~26_combout\ & (\INST3_Goertzel|reg.VA_prev2\(13) & !\INST3_Goertzel|reg.VA[12]~43\)) # (!\INST3_Goertzel|Add0~26_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(13)) # 
-- (!\INST3_Goertzel|reg.VA[12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~26_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(13),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[12]~43\,
	combout => \INST3_Goertzel|reg.VA[13]~44_combout\,
	cout => \INST3_Goertzel|reg.VA[13]~45\);

-- Location: LCCOMB_X20_Y1_N10
\INST3_Goertzel|reg.VA[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[14]~46_combout\ = ((\INST3_Goertzel|Add0~28_combout\ $ (\INST3_Goertzel|reg.VA_prev2\(14) $ (\INST3_Goertzel|reg.VA[13]~45\)))) # (GND)
-- \INST3_Goertzel|reg.VA[14]~47\ = CARRY((\INST3_Goertzel|Add0~28_combout\ & ((!\INST3_Goertzel|reg.VA[13]~45\) # (!\INST3_Goertzel|reg.VA_prev2\(14)))) # (!\INST3_Goertzel|Add0~28_combout\ & (!\INST3_Goertzel|reg.VA_prev2\(14) & 
-- !\INST3_Goertzel|reg.VA[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~28_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(14),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[13]~45\,
	combout => \INST3_Goertzel|reg.VA[14]~46_combout\,
	cout => \INST3_Goertzel|reg.VA[14]~47\);

-- Location: LCCOMB_X20_Y1_N12
\INST3_Goertzel|reg.VA[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[15]~48_combout\ = (\INST3_Goertzel|Add0~30_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(15) & (!\INST3_Goertzel|reg.VA[14]~47\)) # (!\INST3_Goertzel|reg.VA_prev2\(15) & (\INST3_Goertzel|reg.VA[14]~47\ & VCC)))) # 
-- (!\INST3_Goertzel|Add0~30_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(15) & ((\INST3_Goertzel|reg.VA[14]~47\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(15) & (!\INST3_Goertzel|reg.VA[14]~47\))))
-- \INST3_Goertzel|reg.VA[15]~49\ = CARRY((\INST3_Goertzel|Add0~30_combout\ & (\INST3_Goertzel|reg.VA_prev2\(15) & !\INST3_Goertzel|reg.VA[14]~47\)) # (!\INST3_Goertzel|Add0~30_combout\ & ((\INST3_Goertzel|reg.VA_prev2\(15)) # 
-- (!\INST3_Goertzel|reg.VA[14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~30_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(15),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[14]~47\,
	combout => \INST3_Goertzel|reg.VA[15]~48_combout\,
	cout => \INST3_Goertzel|reg.VA[15]~49\);

-- Location: LCCOMB_X20_Y1_N14
\INST3_Goertzel|reg.VA[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[16]~50_combout\ = ((\INST3_Goertzel|Add0~32_combout\ $ (\INST3_Goertzel|reg.VA_prev2\(16) $ (\INST3_Goertzel|reg.VA[15]~49\)))) # (GND)
-- \INST3_Goertzel|reg.VA[16]~51\ = CARRY((\INST3_Goertzel|Add0~32_combout\ & ((!\INST3_Goertzel|reg.VA[15]~49\) # (!\INST3_Goertzel|reg.VA_prev2\(16)))) # (!\INST3_Goertzel|Add0~32_combout\ & (!\INST3_Goertzel|reg.VA_prev2\(16) & 
-- !\INST3_Goertzel|reg.VA[15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~32_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(16),
	datad => VCC,
	cin => \INST3_Goertzel|reg.VA[15]~49\,
	combout => \INST3_Goertzel|reg.VA[16]~50_combout\,
	cout => \INST3_Goertzel|reg.VA[16]~51\);

-- Location: LCCOMB_X20_Y1_N16
\INST3_Goertzel|reg.VA[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA[17]~52_combout\ = \INST3_Goertzel|Add0~34_combout\ $ (\INST3_Goertzel|reg.VA_prev2\(17) $ (!\INST3_Goertzel|reg.VA[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Add0~34_combout\,
	datab => \INST3_Goertzel|reg.VA_prev2\(17),
	cin => \INST3_Goertzel|reg.VA[16]~51\,
	combout => \INST3_Goertzel|reg.VA[17]~52_combout\);

-- Location: FF_X20_Y1_N17
\INST3_Goertzel|reg.VA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(17));

-- Location: LCCOMB_X23_Y2_N26
\INST3_Goertzel|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector5~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST3_Goertzel|reg.VA\(17),
	combout => \INST3_Goertzel|Selector5~0_combout\);

-- Location: DSPMULT_X18_Y2_N0
\INST3_Goertzel|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y2_N2
\INST3_Goertzel|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X20_Y1_N15
\INST3_Goertzel|reg.VA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(16));

-- Location: LCCOMB_X23_Y2_N0
\INST3_Goertzel|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector6~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(16),
	combout => \INST3_Goertzel|Selector6~0_combout\);

-- Location: FF_X20_Y1_N13
\INST3_Goertzel|reg.VA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(15));

-- Location: LCCOMB_X20_Y1_N24
\INST3_Goertzel|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector7~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(15),
	combout => \INST3_Goertzel|Selector7~0_combout\);

-- Location: FF_X20_Y1_N11
\INST3_Goertzel|reg.VA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(14));

-- Location: LCCOMB_X20_Y1_N22
\INST3_Goertzel|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector8~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(14),
	combout => \INST3_Goertzel|Selector8~0_combout\);

-- Location: FF_X20_Y1_N9
\INST3_Goertzel|reg.VA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(13));

-- Location: LCCOMB_X20_Y1_N26
\INST3_Goertzel|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector9~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST3_Goertzel|reg.VA\(13),
	combout => \INST3_Goertzel|Selector9~0_combout\);

-- Location: FF_X20_Y1_N7
\INST3_Goertzel|reg.VA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(12));

-- Location: LCCOMB_X20_Y1_N28
\INST3_Goertzel|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector10~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(12),
	combout => \INST3_Goertzel|Selector10~0_combout\);

-- Location: FF_X20_Y1_N5
\INST3_Goertzel|reg.VA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(11));

-- Location: LCCOMB_X20_Y1_N20
\INST3_Goertzel|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector11~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datac => \INST3_Goertzel|reg.VA\(11),
	combout => \INST3_Goertzel|Selector11~0_combout\);

-- Location: FF_X20_Y1_N3
\INST3_Goertzel|reg.VA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(10));

-- Location: LCCOMB_X20_Y1_N18
\INST3_Goertzel|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector12~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(10),
	combout => \INST3_Goertzel|Selector12~0_combout\);

-- Location: FF_X20_Y1_N1
\INST3_Goertzel|reg.VA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(9));

-- Location: LCCOMB_X20_Y1_N30
\INST3_Goertzel|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector13~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(9),
	combout => \INST3_Goertzel|Selector13~0_combout\);

-- Location: FF_X20_Y2_N31
\INST3_Goertzel|reg.VA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(8));

-- Location: LCCOMB_X20_Y2_N12
\INST3_Goertzel|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector14~0_combout\ = (\INST3_Goertzel|reg.VA\(8) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA\(8),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST3_Goertzel|Selector14~0_combout\);

-- Location: FF_X20_Y2_N29
\INST3_Goertzel|reg.VA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(7));

-- Location: LCCOMB_X20_Y2_N10
\INST3_Goertzel|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector15~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(7),
	combout => \INST3_Goertzel|Selector15~0_combout\);

-- Location: FF_X20_Y2_N27
\INST3_Goertzel|reg.VA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(6));

-- Location: LCCOMB_X20_Y2_N0
\INST3_Goertzel|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector16~0_combout\ = (\INST3_Goertzel|reg.VA\(6) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA\(6),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST3_Goertzel|Selector16~0_combout\);

-- Location: FF_X20_Y2_N25
\INST3_Goertzel|reg.VA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(5));

-- Location: LCCOMB_X20_Y2_N2
\INST3_Goertzel|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector17~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(5),
	combout => \INST3_Goertzel|Selector17~0_combout\);

-- Location: FF_X20_Y2_N23
\INST3_Goertzel|reg.VA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(4));

-- Location: LCCOMB_X23_Y2_N30
\INST3_Goertzel|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector18~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(4),
	combout => \INST3_Goertzel|Selector18~0_combout\);

-- Location: FF_X20_Y2_N21
\INST3_Goertzel|reg.VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(3));

-- Location: LCCOMB_X20_Y2_N8
\INST3_Goertzel|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector19~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(3),
	combout => \INST3_Goertzel|Selector19~0_combout\);

-- Location: FF_X20_Y2_N19
\INST3_Goertzel|reg.VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(2));

-- Location: LCCOMB_X23_Y2_N28
\INST3_Goertzel|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector20~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(2),
	combout => \INST3_Goertzel|Selector20~0_combout\);

-- Location: FF_X20_Y2_N17
\INST3_Goertzel|reg.VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(1));

-- Location: LCCOMB_X20_Y2_N6
\INST3_Goertzel|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector21~0_combout\ = (\INST1_Goertzel|reg.state.STORE~q\ & \INST3_Goertzel|reg.VA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	datad => \INST3_Goertzel|reg.VA\(1),
	combout => \INST3_Goertzel|Selector21~0_combout\);

-- Location: FF_X20_Y2_N15
\INST3_Goertzel|reg.VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.CALCULATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA\(0));

-- Location: LCCOMB_X20_Y2_N4
\INST3_Goertzel|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector22~0_combout\ = (\INST3_Goertzel|reg.VA\(0) & \INST1_Goertzel|reg.state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3_Goertzel|reg.VA\(0),
	datac => \INST1_Goertzel|reg.state.STORE~q\,
	combout => \INST3_Goertzel|Selector22~0_combout\);

-- Location: LCCOMB_X33_Y2_N0
\INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2feeder_combout\ = \INST3_Goertzel|Selector22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Selector22~0_combout\,
	combout => \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2feeder_combout\);

-- Location: FF_X33_Y2_N1
\INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2feeder_combout\,
	ena => \INST1_Goertzel|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\);

-- Location: LCCOMB_X30_Y2_N16
\INST3_Goertzel|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|Selector40~0_combout\ = (\INST1_Goertzel|reg.state.CALCULATE~q\ & \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.CALCULATE~q\,
	datac => \INST3_Goertzel|reg.VA_prev[0]~_Duplicate_2_q\,
	combout => \INST3_Goertzel|Selector40~0_combout\);

-- Location: FF_X30_Y2_N17
\INST3_Goertzel|reg.VA_prev2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|Selector40~0_combout\,
	ena => \INST1_Goertzel|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.VA_prev2\(0));

-- Location: DSPMULT_X34_Y2_N0
\INST3_Goertzel|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector5~0_combout\,
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y2_N2
\INST3_Goertzel|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y2_N14
\INST3_Goertzel|reg.result[0][0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][0]~18_combout\ = (\INST3_Goertzel|reg.VA_prev2\(0) & (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\INST3_Goertzel|reg.VA_prev2\(0) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\) # 
-- (GND)))
-- \INST3_Goertzel|reg.result[0][0]~19\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\) # (!\INST3_Goertzel|reg.VA_prev2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(0),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \INST3_Goertzel|reg.result[0][0]~18_combout\,
	cout => \INST3_Goertzel|reg.result[0][0]~19\);

-- Location: FF_X33_Y2_N15
\INST3_Goertzel|reg.result[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][0]~18_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][0]~q\);

-- Location: DSPMULT_X34_Y3_N0
\INST3_Goertzel|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y3_N2
\INST3_Goertzel|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y3_N14
\INST3_Goertzel|r_Real[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[0]~18_combout\ = (\INST3_Goertzel|reg.result[0][0]~q\ & ((GND) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\))) # (!\INST3_Goertzel|reg.result[0][0]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\ $ 
-- (GND)))
-- \INST3_Goertzel|r_Real[0]~19\ = CARRY((\INST3_Goertzel|reg.result[0][0]~q\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][0]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \INST3_Goertzel|r_Real[0]~18_combout\,
	cout => \INST3_Goertzel|r_Real[0]~19\);

-- Location: FF_X35_Y3_N15
\INST3_Goertzel|r_Real[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[0]~18_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(0));

-- Location: LCCOMB_X33_Y2_N16
\INST3_Goertzel|reg.result[0][1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][1]~20_combout\ = (\INST3_Goertzel|reg.VA_prev2\(1) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\INST3_Goertzel|reg.result[0][0]~19\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\INST3_Goertzel|reg.result[0][0]~19\) # (GND))))) # (!\INST3_Goertzel|reg.VA_prev2\(1) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\INST3_Goertzel|reg.result[0][0]~19\ & VCC)) # 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\INST3_Goertzel|reg.result[0][0]~19\))))
-- \INST3_Goertzel|reg.result[0][1]~21\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(1) & ((!\INST3_Goertzel|reg.result[0][0]~19\) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\))) # (!\INST3_Goertzel|reg.VA_prev2\(1) & 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\INST3_Goertzel|reg.result[0][0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(1),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][0]~19\,
	combout => \INST3_Goertzel|reg.result[0][1]~20_combout\,
	cout => \INST3_Goertzel|reg.result[0][1]~21\);

-- Location: FF_X33_Y2_N17
\INST3_Goertzel|reg.result[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][1]~20_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][1]~q\);

-- Location: LCCOMB_X35_Y3_N16
\INST3_Goertzel|r_Real[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[1]~20_combout\ = (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\INST3_Goertzel|reg.result[0][1]~q\ & (!\INST3_Goertzel|r_Real[0]~19\)) # (!\INST3_Goertzel|reg.result[0][1]~q\ & ((\INST3_Goertzel|r_Real[0]~19\) # 
-- (GND))))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\INST3_Goertzel|reg.result[0][1]~q\ & (\INST3_Goertzel|r_Real[0]~19\ & VCC)) # (!\INST3_Goertzel|reg.result[0][1]~q\ & (!\INST3_Goertzel|r_Real[0]~19\))))
-- \INST3_Goertzel|r_Real[1]~21\ = CARRY((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((!\INST3_Goertzel|r_Real[0]~19\) # (!\INST3_Goertzel|reg.result[0][1]~q\))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\INST3_Goertzel|reg.result[0][1]~q\ & !\INST3_Goertzel|r_Real[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \INST3_Goertzel|reg.result[0][1]~q\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[0]~19\,
	combout => \INST3_Goertzel|r_Real[1]~20_combout\,
	cout => \INST3_Goertzel|r_Real[1]~21\);

-- Location: FF_X35_Y3_N17
\INST3_Goertzel|r_Real[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[1]~20_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(1));

-- Location: LCCOMB_X33_Y2_N18
\INST3_Goertzel|reg.result[0][2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][2]~22_combout\ = ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\INST3_Goertzel|reg.VA_prev2\(2) $ (\INST3_Goertzel|reg.result[0][1]~21\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][2]~23\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((!\INST3_Goertzel|reg.result[0][1]~21\) # (!\INST3_Goertzel|reg.VA_prev2\(2)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\INST3_Goertzel|reg.VA_prev2\(2) & !\INST3_Goertzel|reg.result[0][1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \INST3_Goertzel|reg.VA_prev2\(2),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][1]~21\,
	combout => \INST3_Goertzel|reg.result[0][2]~22_combout\,
	cout => \INST3_Goertzel|reg.result[0][2]~23\);

-- Location: FF_X33_Y2_N19
\INST3_Goertzel|reg.result[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][2]~22_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][2]~q\);

-- Location: LCCOMB_X35_Y3_N18
\INST3_Goertzel|r_Real[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[2]~22_combout\ = ((\INST3_Goertzel|reg.result[0][2]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ $ (\INST3_Goertzel|r_Real[1]~21\)))) # (GND)
-- \INST3_Goertzel|r_Real[2]~23\ = CARRY((\INST3_Goertzel|reg.result[0][2]~q\ & ((!\INST3_Goertzel|r_Real[1]~21\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\))) # (!\INST3_Goertzel|reg.result[0][2]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\ & !\INST3_Goertzel|r_Real[1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][2]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[1]~21\,
	combout => \INST3_Goertzel|r_Real[2]~22_combout\,
	cout => \INST3_Goertzel|r_Real[2]~23\);

-- Location: FF_X35_Y3_N19
\INST3_Goertzel|r_Real[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[2]~22_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(2));

-- Location: LCCOMB_X33_Y2_N20
\INST3_Goertzel|reg.result[0][3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][3]~24_combout\ = (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST3_Goertzel|reg.VA_prev2\(3) & (!\INST3_Goertzel|reg.result[0][2]~23\)) # (!\INST3_Goertzel|reg.VA_prev2\(3) & 
-- (\INST3_Goertzel|reg.result[0][2]~23\ & VCC)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\INST3_Goertzel|reg.VA_prev2\(3) & ((\INST3_Goertzel|reg.result[0][2]~23\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(3) & 
-- (!\INST3_Goertzel|reg.result[0][2]~23\))))
-- \INST3_Goertzel|reg.result[0][3]~25\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\INST3_Goertzel|reg.VA_prev2\(3) & !\INST3_Goertzel|reg.result[0][2]~23\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\INST3_Goertzel|reg.VA_prev2\(3)) # (!\INST3_Goertzel|reg.result[0][2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \INST3_Goertzel|reg.VA_prev2\(3),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][2]~23\,
	combout => \INST3_Goertzel|reg.result[0][3]~24_combout\,
	cout => \INST3_Goertzel|reg.result[0][3]~25\);

-- Location: FF_X33_Y2_N21
\INST3_Goertzel|reg.result[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][3]~24_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][3]~q\);

-- Location: LCCOMB_X35_Y3_N20
\INST3_Goertzel|r_Real[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[3]~24_combout\ = (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & ((\INST3_Goertzel|reg.result[0][3]~q\ & (!\INST3_Goertzel|r_Real[2]~23\)) # (!\INST3_Goertzel|reg.result[0][3]~q\ & ((\INST3_Goertzel|r_Real[2]~23\) # 
-- (GND))))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & ((\INST3_Goertzel|reg.result[0][3]~q\ & (\INST3_Goertzel|r_Real[2]~23\ & VCC)) # (!\INST3_Goertzel|reg.result[0][3]~q\ & (!\INST3_Goertzel|r_Real[2]~23\))))
-- \INST3_Goertzel|r_Real[3]~25\ = CARRY((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & ((!\INST3_Goertzel|r_Real[2]~23\) # (!\INST3_Goertzel|reg.result[0][3]~q\))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\INST3_Goertzel|reg.result[0][3]~q\ & !\INST3_Goertzel|r_Real[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT16\,
	datab => \INST3_Goertzel|reg.result[0][3]~q\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[2]~23\,
	combout => \INST3_Goertzel|r_Real[3]~24_combout\,
	cout => \INST3_Goertzel|r_Real[3]~25\);

-- Location: FF_X35_Y3_N21
\INST3_Goertzel|r_Real[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[3]~24_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(3));

-- Location: LCCOMB_X33_Y2_N22
\INST3_Goertzel|reg.result[0][4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][4]~26_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(4) $ (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\INST3_Goertzel|reg.result[0][3]~25\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][4]~27\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(4) & (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\INST3_Goertzel|reg.result[0][3]~25\)) # (!\INST3_Goertzel|reg.VA_prev2\(4) & 
-- ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\) # (!\INST3_Goertzel|reg.result[0][3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(4),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][3]~25\,
	combout => \INST3_Goertzel|reg.result[0][4]~26_combout\,
	cout => \INST3_Goertzel|reg.result[0][4]~27\);

-- Location: FF_X33_Y2_N23
\INST3_Goertzel|reg.result[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][4]~26_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][4]~q\);

-- Location: LCCOMB_X35_Y3_N22
\INST3_Goertzel|r_Real[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[4]~26_combout\ = ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ $ (\INST3_Goertzel|reg.result[0][4]~q\ $ (\INST3_Goertzel|r_Real[3]~25\)))) # (GND)
-- \INST3_Goertzel|r_Real[4]~27\ = CARRY((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & (\INST3_Goertzel|reg.result[0][4]~q\ & !\INST3_Goertzel|r_Real[3]~25\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\INST3_Goertzel|reg.result[0][4]~q\) # (!\INST3_Goertzel|r_Real[3]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \INST3_Goertzel|reg.result[0][4]~q\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[3]~25\,
	combout => \INST3_Goertzel|r_Real[4]~26_combout\,
	cout => \INST3_Goertzel|r_Real[4]~27\);

-- Location: FF_X35_Y3_N23
\INST3_Goertzel|r_Real[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[4]~26_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(4));

-- Location: LCCOMB_X33_Y2_N24
\INST3_Goertzel|reg.result[0][5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][5]~28_combout\ = (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_Goertzel|reg.VA_prev2\(5) & (!\INST3_Goertzel|reg.result[0][4]~27\)) # (!\INST3_Goertzel|reg.VA_prev2\(5) & 
-- (\INST3_Goertzel|reg.result[0][4]~27\ & VCC)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_Goertzel|reg.VA_prev2\(5) & ((\INST3_Goertzel|reg.result[0][4]~27\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(5) & 
-- (!\INST3_Goertzel|reg.result[0][4]~27\))))
-- \INST3_Goertzel|reg.result[0][5]~29\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\INST3_Goertzel|reg.VA_prev2\(5) & !\INST3_Goertzel|reg.result[0][4]~27\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\INST3_Goertzel|reg.VA_prev2\(5)) # (!\INST3_Goertzel|reg.result[0][4]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST3_Goertzel|reg.VA_prev2\(5),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][4]~27\,
	combout => \INST3_Goertzel|reg.result[0][5]~28_combout\,
	cout => \INST3_Goertzel|reg.result[0][5]~29\);

-- Location: FF_X33_Y2_N25
\INST3_Goertzel|reg.result[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][5]~28_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][5]~q\);

-- Location: LCCOMB_X35_Y3_N24
\INST3_Goertzel|r_Real[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[5]~28_combout\ = (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_Goertzel|reg.result[0][5]~q\ & (!\INST3_Goertzel|r_Real[4]~27\)) # (!\INST3_Goertzel|reg.result[0][5]~q\ & ((\INST3_Goertzel|r_Real[4]~27\) # 
-- (GND))))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\INST3_Goertzel|reg.result[0][5]~q\ & (\INST3_Goertzel|r_Real[4]~27\ & VCC)) # (!\INST3_Goertzel|reg.result[0][5]~q\ & (!\INST3_Goertzel|r_Real[4]~27\))))
-- \INST3_Goertzel|r_Real[5]~29\ = CARRY((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((!\INST3_Goertzel|r_Real[4]~27\) # (!\INST3_Goertzel|reg.result[0][5]~q\))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\INST3_Goertzel|reg.result[0][5]~q\ & !\INST3_Goertzel|r_Real[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datab => \INST3_Goertzel|reg.result[0][5]~q\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[4]~27\,
	combout => \INST3_Goertzel|r_Real[5]~28_combout\,
	cout => \INST3_Goertzel|r_Real[5]~29\);

-- Location: FF_X35_Y3_N25
\INST3_Goertzel|r_Real[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[5]~28_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(5));

-- Location: LCCOMB_X33_Y2_N26
\INST3_Goertzel|reg.result[0][6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][6]~30_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(6) $ (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\INST3_Goertzel|reg.result[0][5]~29\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][6]~31\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(6) & (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\INST3_Goertzel|reg.result[0][5]~29\)) # (!\INST3_Goertzel|reg.VA_prev2\(6) & 
-- ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\) # (!\INST3_Goertzel|reg.result[0][5]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(6),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][5]~29\,
	combout => \INST3_Goertzel|reg.result[0][6]~30_combout\,
	cout => \INST3_Goertzel|reg.result[0][6]~31\);

-- Location: FF_X33_Y2_N27
\INST3_Goertzel|reg.result[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][6]~30_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][6]~q\);

-- Location: LCCOMB_X35_Y3_N26
\INST3_Goertzel|r_Real[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[6]~30_combout\ = ((\INST3_Goertzel|reg.result[0][6]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ $ (\INST3_Goertzel|r_Real[5]~29\)))) # (GND)
-- \INST3_Goertzel|r_Real[6]~31\ = CARRY((\INST3_Goertzel|reg.result[0][6]~q\ & ((!\INST3_Goertzel|r_Real[5]~29\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\))) # (!\INST3_Goertzel|reg.result[0][6]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\ & !\INST3_Goertzel|r_Real[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][6]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[5]~29\,
	combout => \INST3_Goertzel|r_Real[6]~30_combout\,
	cout => \INST3_Goertzel|r_Real[6]~31\);

-- Location: FF_X35_Y3_N27
\INST3_Goertzel|r_Real[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[6]~30_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(6));

-- Location: LCCOMB_X33_Y2_N28
\INST3_Goertzel|reg.result[0][7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][7]~32_combout\ = (\INST3_Goertzel|reg.VA_prev2\(7) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST3_Goertzel|reg.result[0][6]~31\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\INST3_Goertzel|reg.result[0][6]~31\) # (GND))))) # (!\INST3_Goertzel|reg.VA_prev2\(7) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (\INST3_Goertzel|reg.result[0][6]~31\ & VCC)) # 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\INST3_Goertzel|reg.result[0][6]~31\))))
-- \INST3_Goertzel|reg.result[0][7]~33\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(7) & ((!\INST3_Goertzel|reg.result[0][6]~31\) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\))) # (!\INST3_Goertzel|reg.VA_prev2\(7) & 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\INST3_Goertzel|reg.result[0][6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(7),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][6]~31\,
	combout => \INST3_Goertzel|reg.result[0][7]~32_combout\,
	cout => \INST3_Goertzel|reg.result[0][7]~33\);

-- Location: FF_X33_Y2_N29
\INST3_Goertzel|reg.result[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][7]~32_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][7]~q\);

-- Location: LCCOMB_X35_Y3_N28
\INST3_Goertzel|r_Real[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[7]~32_combout\ = (\INST3_Goertzel|reg.result[0][7]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & (!\INST3_Goertzel|r_Real[6]~31\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (\INST3_Goertzel|r_Real[6]~31\ & VCC)))) # (!\INST3_Goertzel|reg.result[0][7]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\INST3_Goertzel|r_Real[6]~31\) # (GND))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- (!\INST3_Goertzel|r_Real[6]~31\))))
-- \INST3_Goertzel|r_Real[7]~33\ = CARRY((\INST3_Goertzel|reg.result[0][7]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\ & !\INST3_Goertzel|r_Real[6]~31\)) # (!\INST3_Goertzel|reg.result[0][7]~q\ & 
-- ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\) # (!\INST3_Goertzel|r_Real[6]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][7]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[6]~31\,
	combout => \INST3_Goertzel|r_Real[7]~32_combout\,
	cout => \INST3_Goertzel|r_Real[7]~33\);

-- Location: FF_X35_Y3_N29
\INST3_Goertzel|r_Real[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[7]~32_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(7));

-- Location: LCCOMB_X33_Y2_N30
\INST3_Goertzel|reg.result[0][8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][8]~34_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(8) $ (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (\INST3_Goertzel|reg.result[0][7]~33\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][8]~35\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(8) & (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\INST3_Goertzel|reg.result[0][7]~33\)) # (!\INST3_Goertzel|reg.VA_prev2\(8) & 
-- ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\) # (!\INST3_Goertzel|reg.result[0][7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(8),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][7]~33\,
	combout => \INST3_Goertzel|reg.result[0][8]~34_combout\,
	cout => \INST3_Goertzel|reg.result[0][8]~35\);

-- Location: FF_X33_Y2_N31
\INST3_Goertzel|reg.result[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][8]~34_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][8]~q\);

-- Location: LCCOMB_X35_Y3_N30
\INST3_Goertzel|r_Real[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[8]~34_combout\ = ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ $ (\INST3_Goertzel|reg.result[0][8]~q\ $ (\INST3_Goertzel|r_Real[7]~33\)))) # (GND)
-- \INST3_Goertzel|r_Real[8]~35\ = CARRY((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ & (\INST3_Goertzel|reg.result[0][8]~q\ & !\INST3_Goertzel|r_Real[7]~33\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\INST3_Goertzel|reg.result[0][8]~q\) # (!\INST3_Goertzel|r_Real[7]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT21\,
	datab => \INST3_Goertzel|reg.result[0][8]~q\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[7]~33\,
	combout => \INST3_Goertzel|r_Real[8]~34_combout\,
	cout => \INST3_Goertzel|r_Real[8]~35\);

-- Location: FF_X35_Y3_N31
\INST3_Goertzel|r_Real[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[8]~34_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(8));

-- Location: LCCOMB_X33_Y1_N0
\INST3_Goertzel|reg.result[0][9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][9]~36_combout\ = (\INST3_Goertzel|reg.VA_prev2\(9) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST3_Goertzel|reg.result[0][8]~35\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\INST3_Goertzel|reg.result[0][8]~35\) # (GND))))) # (!\INST3_Goertzel|reg.VA_prev2\(9) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (\INST3_Goertzel|reg.result[0][8]~35\ & VCC)) # 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\INST3_Goertzel|reg.result[0][8]~35\))))
-- \INST3_Goertzel|reg.result[0][9]~37\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(9) & ((!\INST3_Goertzel|reg.result[0][8]~35\) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\))) # (!\INST3_Goertzel|reg.VA_prev2\(9) & 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\INST3_Goertzel|reg.result[0][8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(9),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][8]~35\,
	combout => \INST3_Goertzel|reg.result[0][9]~36_combout\,
	cout => \INST3_Goertzel|reg.result[0][9]~37\);

-- Location: FF_X33_Y1_N1
\INST3_Goertzel|reg.result[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][9]~36_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][9]~q\);

-- Location: LCCOMB_X35_Y2_N0
\INST3_Goertzel|r_Real[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[9]~36_combout\ = (\INST3_Goertzel|reg.result[0][9]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & (!\INST3_Goertzel|r_Real[8]~35\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- (\INST3_Goertzel|r_Real[8]~35\ & VCC)))) # (!\INST3_Goertzel|reg.result[0][9]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & ((\INST3_Goertzel|r_Real[8]~35\) # (GND))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\INST3_Goertzel|r_Real[8]~35\))))
-- \INST3_Goertzel|r_Real[9]~37\ = CARRY((\INST3_Goertzel|reg.result[0][9]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\ & !\INST3_Goertzel|r_Real[8]~35\)) # (!\INST3_Goertzel|reg.result[0][9]~q\ & 
-- ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\) # (!\INST3_Goertzel|r_Real[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][9]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[8]~35\,
	combout => \INST3_Goertzel|r_Real[9]~36_combout\,
	cout => \INST3_Goertzel|r_Real[9]~37\);

-- Location: FF_X35_Y2_N1
\INST3_Goertzel|r_Real[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[9]~36_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(9));

-- Location: LCCOMB_X33_Y1_N2
\INST3_Goertzel|reg.result[0][10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][10]~38_combout\ = ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\INST3_Goertzel|reg.VA_prev2\(10) $ (\INST3_Goertzel|reg.result[0][9]~37\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][10]~39\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\INST3_Goertzel|reg.result[0][9]~37\) # (!\INST3_Goertzel|reg.VA_prev2\(10)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\INST3_Goertzel|reg.VA_prev2\(10) & !\INST3_Goertzel|reg.result[0][9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \INST3_Goertzel|reg.VA_prev2\(10),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][9]~37\,
	combout => \INST3_Goertzel|reg.result[0][10]~38_combout\,
	cout => \INST3_Goertzel|reg.result[0][10]~39\);

-- Location: FF_X33_Y1_N3
\INST3_Goertzel|reg.result[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][10]~38_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][10]~q\);

-- Location: LCCOMB_X35_Y2_N2
\INST3_Goertzel|r_Real[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[10]~38_combout\ = ((\INST3_Goertzel|reg.result[0][10]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ $ (\INST3_Goertzel|r_Real[9]~37\)))) # (GND)
-- \INST3_Goertzel|r_Real[10]~39\ = CARRY((\INST3_Goertzel|reg.result[0][10]~q\ & ((!\INST3_Goertzel|r_Real[9]~37\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\))) # (!\INST3_Goertzel|reg.result[0][10]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\ & !\INST3_Goertzel|r_Real[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][10]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[9]~37\,
	combout => \INST3_Goertzel|r_Real[10]~38_combout\,
	cout => \INST3_Goertzel|r_Real[10]~39\);

-- Location: FF_X35_Y2_N3
\INST3_Goertzel|r_Real[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[10]~38_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(10));

-- Location: LCCOMB_X33_Y1_N4
\INST3_Goertzel|reg.result[0][11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][11]~40_combout\ = (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\INST3_Goertzel|reg.VA_prev2\(11) & (!\INST3_Goertzel|reg.result[0][10]~39\)) # (!\INST3_Goertzel|reg.VA_prev2\(11) & 
-- (\INST3_Goertzel|reg.result[0][10]~39\ & VCC)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\INST3_Goertzel|reg.VA_prev2\(11) & ((\INST3_Goertzel|reg.result[0][10]~39\) # (GND))) # (!\INST3_Goertzel|reg.VA_prev2\(11) & 
-- (!\INST3_Goertzel|reg.result[0][10]~39\))))
-- \INST3_Goertzel|reg.result[0][11]~41\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\INST3_Goertzel|reg.VA_prev2\(11) & !\INST3_Goertzel|reg.result[0][10]~39\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\INST3_Goertzel|reg.VA_prev2\(11)) # (!\INST3_Goertzel|reg.result[0][10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \INST3_Goertzel|reg.VA_prev2\(11),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][10]~39\,
	combout => \INST3_Goertzel|reg.result[0][11]~40_combout\,
	cout => \INST3_Goertzel|reg.result[0][11]~41\);

-- Location: FF_X33_Y1_N5
\INST3_Goertzel|reg.result[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][11]~40_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][11]~q\);

-- Location: LCCOMB_X35_Y2_N4
\INST3_Goertzel|r_Real[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[11]~40_combout\ = (\INST3_Goertzel|reg.result[0][11]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & (!\INST3_Goertzel|r_Real[10]~39\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (\INST3_Goertzel|r_Real[10]~39\ & VCC)))) # (!\INST3_Goertzel|reg.result[0][11]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\INST3_Goertzel|r_Real[10]~39\) # (GND))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\INST3_Goertzel|r_Real[10]~39\))))
-- \INST3_Goertzel|r_Real[11]~41\ = CARRY((\INST3_Goertzel|reg.result[0][11]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\ & !\INST3_Goertzel|r_Real[10]~39\)) # (!\INST3_Goertzel|reg.result[0][11]~q\ & 
-- ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\) # (!\INST3_Goertzel|r_Real[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][11]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[10]~39\,
	combout => \INST3_Goertzel|r_Real[11]~40_combout\,
	cout => \INST3_Goertzel|r_Real[11]~41\);

-- Location: FF_X35_Y2_N5
\INST3_Goertzel|r_Real[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[11]~40_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(11));

-- Location: LCCOMB_X33_Y1_N6
\INST3_Goertzel|reg.result[0][12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][12]~42_combout\ = ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ $ (\INST3_Goertzel|reg.VA_prev2\(12) $ (\INST3_Goertzel|reg.result[0][11]~41\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][12]~43\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ & ((!\INST3_Goertzel|reg.result[0][11]~41\) # (!\INST3_Goertzel|reg.VA_prev2\(12)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\INST3_Goertzel|reg.VA_prev2\(12) & !\INST3_Goertzel|reg.result[0][11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datab => \INST3_Goertzel|reg.VA_prev2\(12),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][11]~41\,
	combout => \INST3_Goertzel|reg.result[0][12]~42_combout\,
	cout => \INST3_Goertzel|reg.result[0][12]~43\);

-- Location: FF_X33_Y1_N7
\INST3_Goertzel|reg.result[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][12]~42_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][12]~q\);

-- Location: LCCOMB_X35_Y2_N6
\INST3_Goertzel|r_Real[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[12]~42_combout\ = ((\INST3_Goertzel|reg.result[0][12]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ $ (\INST3_Goertzel|r_Real[11]~41\)))) # (GND)
-- \INST3_Goertzel|r_Real[12]~43\ = CARRY((\INST3_Goertzel|reg.result[0][12]~q\ & ((!\INST3_Goertzel|r_Real[11]~41\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\))) # (!\INST3_Goertzel|reg.result[0][12]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\ & !\INST3_Goertzel|r_Real[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][12]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[11]~41\,
	combout => \INST3_Goertzel|r_Real[12]~42_combout\,
	cout => \INST3_Goertzel|r_Real[12]~43\);

-- Location: FF_X35_Y2_N7
\INST3_Goertzel|r_Real[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[12]~42_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(12));

-- Location: LCCOMB_X33_Y1_N8
\INST3_Goertzel|reg.result[0][13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][13]~44_combout\ = (\INST3_Goertzel|reg.VA_prev2\(13) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\INST3_Goertzel|reg.result[0][12]~43\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\INST3_Goertzel|reg.result[0][12]~43\) # (GND))))) # (!\INST3_Goertzel|reg.VA_prev2\(13) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\INST3_Goertzel|reg.result[0][12]~43\ & VCC)) # 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\INST3_Goertzel|reg.result[0][12]~43\))))
-- \INST3_Goertzel|reg.result[0][13]~45\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(13) & ((!\INST3_Goertzel|reg.result[0][12]~43\) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\))) # (!\INST3_Goertzel|reg.VA_prev2\(13) & 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\ & !\INST3_Goertzel|reg.result[0][12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(13),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][12]~43\,
	combout => \INST3_Goertzel|reg.result[0][13]~44_combout\,
	cout => \INST3_Goertzel|reg.result[0][13]~45\);

-- Location: FF_X33_Y1_N9
\INST3_Goertzel|reg.result[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][13]~44_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][13]~q\);

-- Location: LCCOMB_X35_Y2_N8
\INST3_Goertzel|r_Real[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[13]~44_combout\ = (\INST3_Goertzel|reg.result[0][13]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & (!\INST3_Goertzel|r_Real[12]~43\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & 
-- (\INST3_Goertzel|r_Real[12]~43\ & VCC)))) # (!\INST3_Goertzel|reg.result[0][13]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\INST3_Goertzel|r_Real[12]~43\) # (GND))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & 
-- (!\INST3_Goertzel|r_Real[12]~43\))))
-- \INST3_Goertzel|r_Real[13]~45\ = CARRY((\INST3_Goertzel|reg.result[0][13]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\ & !\INST3_Goertzel|r_Real[12]~43\)) # (!\INST3_Goertzel|reg.result[0][13]~q\ & 
-- ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\) # (!\INST3_Goertzel|r_Real[12]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][13]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[12]~43\,
	combout => \INST3_Goertzel|r_Real[13]~44_combout\,
	cout => \INST3_Goertzel|r_Real[13]~45\);

-- Location: FF_X35_Y2_N9
\INST3_Goertzel|r_Real[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[13]~44_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(13));

-- Location: LCCOMB_X33_Y1_N10
\INST3_Goertzel|reg.result[0][14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][14]~46_combout\ = ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ $ (\INST3_Goertzel|reg.VA_prev2\(14) $ (\INST3_Goertzel|reg.result[0][13]~45\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][14]~47\ = CARRY((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((!\INST3_Goertzel|reg.result[0][13]~45\) # (!\INST3_Goertzel|reg.VA_prev2\(14)))) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\INST3_Goertzel|reg.VA_prev2\(14) & !\INST3_Goertzel|reg.result[0][13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datab => \INST3_Goertzel|reg.VA_prev2\(14),
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][13]~45\,
	combout => \INST3_Goertzel|reg.result[0][14]~46_combout\,
	cout => \INST3_Goertzel|reg.result[0][14]~47\);

-- Location: FF_X33_Y1_N11
\INST3_Goertzel|reg.result[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][14]~46_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][14]~q\);

-- Location: LCCOMB_X35_Y2_N10
\INST3_Goertzel|r_Real[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[14]~46_combout\ = ((\INST3_Goertzel|reg.result[0][14]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ $ (\INST3_Goertzel|r_Real[13]~45\)))) # (GND)
-- \INST3_Goertzel|r_Real[14]~47\ = CARRY((\INST3_Goertzel|reg.result[0][14]~q\ & ((!\INST3_Goertzel|r_Real[13]~45\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\))) # (!\INST3_Goertzel|reg.result[0][14]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\ & !\INST3_Goertzel|r_Real[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][14]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[13]~45\,
	combout => \INST3_Goertzel|r_Real[14]~46_combout\,
	cout => \INST3_Goertzel|r_Real[14]~47\);

-- Location: FF_X35_Y2_N11
\INST3_Goertzel|r_Real[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[14]~46_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(14));

-- Location: LCCOMB_X33_Y1_N12
\INST3_Goertzel|reg.result[0][15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][15]~48_combout\ = (\INST3_Goertzel|reg.VA_prev2\(15) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\INST3_Goertzel|reg.result[0][14]~47\)) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\INST3_Goertzel|reg.result[0][14]~47\) # (GND))))) # (!\INST3_Goertzel|reg.VA_prev2\(15) & ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (\INST3_Goertzel|reg.result[0][14]~47\ & VCC)) # 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\INST3_Goertzel|reg.result[0][14]~47\))))
-- \INST3_Goertzel|reg.result[0][15]~49\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(15) & ((!\INST3_Goertzel|reg.result[0][14]~47\) # (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\))) # (!\INST3_Goertzel|reg.VA_prev2\(15) & 
-- (!\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\ & !\INST3_Goertzel|reg.result[0][14]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(15),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][14]~47\,
	combout => \INST3_Goertzel|reg.result[0][15]~48_combout\,
	cout => \INST3_Goertzel|reg.result[0][15]~49\);

-- Location: FF_X33_Y1_N13
\INST3_Goertzel|reg.result[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][15]~48_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][15]~q\);

-- Location: LCCOMB_X35_Y2_N12
\INST3_Goertzel|r_Real[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[15]~48_combout\ = (\INST3_Goertzel|reg.result[0][15]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & (!\INST3_Goertzel|r_Real[14]~47\)) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- (\INST3_Goertzel|r_Real[14]~47\ & VCC)))) # (!\INST3_Goertzel|reg.result[0][15]~q\ & ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\INST3_Goertzel|r_Real[14]~47\) # (GND))) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & 
-- (!\INST3_Goertzel|r_Real[14]~47\))))
-- \INST3_Goertzel|r_Real[15]~49\ = CARRY((\INST3_Goertzel|reg.result[0][15]~q\ & (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & !\INST3_Goertzel|r_Real[14]~47\)) # (!\INST3_Goertzel|reg.result[0][15]~q\ & 
-- ((\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\) # (!\INST3_Goertzel|r_Real[14]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][15]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[14]~47\,
	combout => \INST3_Goertzel|r_Real[15]~48_combout\,
	cout => \INST3_Goertzel|r_Real[15]~49\);

-- Location: FF_X35_Y2_N13
\INST3_Goertzel|r_Real[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[15]~48_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(15));

-- Location: LCCOMB_X33_Y1_N14
\INST3_Goertzel|reg.result[0][16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][16]~50_combout\ = ((\INST3_Goertzel|reg.VA_prev2\(16) $ (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST3_Goertzel|reg.result[0][15]~49\)))) # (GND)
-- \INST3_Goertzel|reg.result[0][16]~51\ = CARRY((\INST3_Goertzel|reg.VA_prev2\(16) & (\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ & !\INST3_Goertzel|reg.result[0][15]~49\)) # (!\INST3_Goertzel|reg.VA_prev2\(16) & 
-- ((\INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\) # (!\INST3_Goertzel|reg.result[0][15]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.VA_prev2\(16),
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \INST3_Goertzel|reg.result[0][15]~49\,
	combout => \INST3_Goertzel|reg.result[0][16]~50_combout\,
	cout => \INST3_Goertzel|reg.result[0][16]~51\);

-- Location: FF_X33_Y1_N15
\INST3_Goertzel|reg.result[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][16]~50_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][16]~q\);

-- Location: LCCOMB_X35_Y2_N14
\INST3_Goertzel|r_Real[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[16]~50_combout\ = ((\INST3_Goertzel|reg.result[0][16]~q\ $ (\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\INST3_Goertzel|r_Real[15]~49\)))) # (GND)
-- \INST3_Goertzel|r_Real[16]~51\ = CARRY((\INST3_Goertzel|reg.result[0][16]~q\ & ((!\INST3_Goertzel|r_Real[15]~49\) # (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\))) # (!\INST3_Goertzel|reg.result[0][16]~q\ & 
-- (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\ & !\INST3_Goertzel|r_Real[15]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][16]~q\,
	datab => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \INST3_Goertzel|r_Real[15]~49\,
	combout => \INST3_Goertzel|r_Real[16]~50_combout\,
	cout => \INST3_Goertzel|r_Real[16]~51\);

-- Location: FF_X35_Y2_N15
\INST3_Goertzel|r_Real[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[16]~50_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(16));

-- Location: LCCOMB_X33_Y1_N16
\INST3_Goertzel|reg.result[0][17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|reg.result[0][17]~52_combout\ = \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\ $ (\INST3_Goertzel|reg.result[0][16]~51\ $ (!\INST3_Goertzel|reg.VA_prev2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3_Goertzel|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => \INST3_Goertzel|reg.VA_prev2\(17),
	cin => \INST3_Goertzel|reg.result[0][16]~51\,
	combout => \INST3_Goertzel|reg.result[0][17]~52_combout\);

-- Location: FF_X33_Y1_N17
\INST3_Goertzel|reg.result[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|reg.result[0][17]~52_combout\,
	ena => \INST1_Goertzel|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|reg.result[0][17]~q\);

-- Location: LCCOMB_X35_Y2_N16
\INST3_Goertzel|r_Real[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Real[17]~52_combout\ = \INST3_Goertzel|reg.result[0][17]~q\ $ (\INST3_Goertzel|r_Real[16]~51\ $ (!\INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|reg.result[0][17]~q\,
	datad => \INST3_Goertzel|Mult2|auto_generated|mac_out2~DATAOUT28\,
	cin => \INST3_Goertzel|r_Real[16]~51\,
	combout => \INST3_Goertzel|r_Real[17]~52_combout\);

-- Location: FF_X35_Y2_N17
\INST3_Goertzel|r_Real[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Real[17]~52_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Real\(17));

-- Location: DSPMULT_X18_Y9_N0
\INST1_Goertzel|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y9_N2
\INST1_Goertzel|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST1_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N8
\INST1_Goertzel|r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[0]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\,
	combout => \INST1_Goertzel|r_Imag[0]~feeder_combout\);

-- Location: FF_X19_Y9_N9
\INST1_Goertzel|r_Imag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[0]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(0));

-- Location: LCCOMB_X19_Y9_N10
\INST1_Goertzel|r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[1]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\,
	combout => \INST1_Goertzel|r_Imag[1]~feeder_combout\);

-- Location: FF_X19_Y9_N11
\INST1_Goertzel|r_Imag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[1]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(1));

-- Location: LCCOMB_X17_Y5_N18
\INST1_Goertzel|r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[2]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\,
	combout => \INST1_Goertzel|r_Imag[2]~feeder_combout\);

-- Location: FF_X17_Y5_N19
\INST1_Goertzel|r_Imag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[2]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(2));

-- Location: LCCOMB_X19_Y9_N4
\INST1_Goertzel|r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[3]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\,
	combout => \INST1_Goertzel|r_Imag[3]~feeder_combout\);

-- Location: FF_X19_Y9_N5
\INST1_Goertzel|r_Imag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[3]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(3));

-- Location: LCCOMB_X17_Y9_N12
\INST1_Goertzel|r_Imag[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[4]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\,
	combout => \INST1_Goertzel|r_Imag[4]~feeder_combout\);

-- Location: FF_X17_Y9_N13
\INST1_Goertzel|r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[4]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(4));

-- Location: LCCOMB_X19_Y5_N24
\INST1_Goertzel|r_Imag[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[5]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\,
	combout => \INST1_Goertzel|r_Imag[5]~feeder_combout\);

-- Location: FF_X19_Y5_N25
\INST1_Goertzel|r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[5]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(5));

-- Location: LCCOMB_X17_Y9_N30
\INST1_Goertzel|r_Imag[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[6]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\,
	combout => \INST1_Goertzel|r_Imag[6]~feeder_combout\);

-- Location: FF_X17_Y9_N31
\INST1_Goertzel|r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[6]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(6));

-- Location: LCCOMB_X17_Y5_N24
\INST1_Goertzel|r_Imag[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[7]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\,
	combout => \INST1_Goertzel|r_Imag[7]~feeder_combout\);

-- Location: FF_X17_Y5_N25
\INST1_Goertzel|r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[7]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(7));

-- Location: LCCOMB_X17_Y9_N16
\INST1_Goertzel|r_Imag[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[8]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\,
	combout => \INST1_Goertzel|r_Imag[8]~feeder_combout\);

-- Location: FF_X17_Y9_N17
\INST1_Goertzel|r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[8]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(8));

-- Location: LCCOMB_X17_Y9_N22
\INST1_Goertzel|r_Imag[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[9]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\,
	combout => \INST1_Goertzel|r_Imag[9]~feeder_combout\);

-- Location: FF_X17_Y9_N23
\INST1_Goertzel|r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[9]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(9));

-- Location: LCCOMB_X17_Y9_N28
\INST1_Goertzel|r_Imag[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[10]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\,
	combout => \INST1_Goertzel|r_Imag[10]~feeder_combout\);

-- Location: FF_X17_Y9_N29
\INST1_Goertzel|r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[10]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(10));

-- Location: LCCOMB_X17_Y9_N26
\INST1_Goertzel|r_Imag[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[11]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\,
	combout => \INST1_Goertzel|r_Imag[11]~feeder_combout\);

-- Location: FF_X17_Y9_N27
\INST1_Goertzel|r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[11]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(11));

-- Location: LCCOMB_X17_Y5_N30
\INST1_Goertzel|r_Imag[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[12]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\,
	combout => \INST1_Goertzel|r_Imag[12]~feeder_combout\);

-- Location: FF_X17_Y5_N31
\INST1_Goertzel|r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[12]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(12));

-- Location: LCCOMB_X17_Y5_N28
\INST1_Goertzel|r_Imag[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[13]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\,
	combout => \INST1_Goertzel|r_Imag[13]~feeder_combout\);

-- Location: FF_X17_Y5_N29
\INST1_Goertzel|r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[13]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(13));

-- Location: LCCOMB_X17_Y9_N4
\INST1_Goertzel|r_Imag[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[14]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST1_Goertzel|r_Imag[14]~feeder_combout\);

-- Location: FF_X17_Y9_N5
\INST1_Goertzel|r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[14]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(14));

-- Location: LCCOMB_X17_Y9_N2
\INST1_Goertzel|r_Imag[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[15]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST1_Goertzel|r_Imag[15]~feeder_combout\);

-- Location: FF_X17_Y9_N3
\INST1_Goertzel|r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[15]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(15));

-- Location: LCCOMB_X17_Y9_N24
\INST1_Goertzel|r_Imag[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[16]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST1_Goertzel|r_Imag[16]~feeder_combout\);

-- Location: FF_X17_Y9_N25
\INST1_Goertzel|r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[16]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(16));

-- Location: LCCOMB_X17_Y9_N18
\INST1_Goertzel|r_Imag[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|r_Imag[17]~feeder_combout\ = \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST1_Goertzel|r_Imag[17]~feeder_combout\);

-- Location: FF_X17_Y9_N19
\INST1_Goertzel|r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|r_Imag[17]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|r_Imag\(17));

-- Location: DSPMULT_X18_Y5_N0
\INST2_Goertzel|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y5_N2
\INST2_Goertzel|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST2_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y9_N8
\INST2_Goertzel|r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[0]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\,
	combout => \INST2_Goertzel|r_Imag[0]~feeder_combout\);

-- Location: FF_X17_Y9_N9
\INST2_Goertzel|r_Imag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[0]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(0));

-- Location: LCCOMB_X19_Y4_N8
\INST2_Goertzel|r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[1]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\,
	combout => \INST2_Goertzel|r_Imag[1]~feeder_combout\);

-- Location: FF_X19_Y4_N9
\INST2_Goertzel|r_Imag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[1]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(1));

-- Location: LCCOMB_X19_Y5_N18
\INST2_Goertzel|r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[2]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\,
	combout => \INST2_Goertzel|r_Imag[2]~feeder_combout\);

-- Location: FF_X19_Y5_N19
\INST2_Goertzel|r_Imag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[2]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(2));

-- Location: LCCOMB_X19_Y5_N12
\INST2_Goertzel|r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[3]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\,
	combout => \INST2_Goertzel|r_Imag[3]~feeder_combout\);

-- Location: FF_X19_Y5_N13
\INST2_Goertzel|r_Imag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[3]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(3));

-- Location: LCCOMB_X19_Y5_N6
\INST2_Goertzel|r_Imag[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[4]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\,
	combout => \INST2_Goertzel|r_Imag[4]~feeder_combout\);

-- Location: FF_X19_Y5_N7
\INST2_Goertzel|r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[4]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(4));

-- Location: LCCOMB_X19_Y5_N20
\INST2_Goertzel|r_Imag[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[5]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\,
	combout => \INST2_Goertzel|r_Imag[5]~feeder_combout\);

-- Location: FF_X19_Y5_N21
\INST2_Goertzel|r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[5]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(5));

-- Location: LCCOMB_X19_Y5_N10
\INST2_Goertzel|r_Imag[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[6]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\,
	combout => \INST2_Goertzel|r_Imag[6]~feeder_combout\);

-- Location: FF_X19_Y5_N11
\INST2_Goertzel|r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[6]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(6));

-- Location: LCCOMB_X17_Y5_N26
\INST2_Goertzel|r_Imag[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[7]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\,
	combout => \INST2_Goertzel|r_Imag[7]~feeder_combout\);

-- Location: FF_X17_Y5_N27
\INST2_Goertzel|r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[7]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(7));

-- Location: LCCOMB_X19_Y5_N4
\INST2_Goertzel|r_Imag[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[8]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\,
	combout => \INST2_Goertzel|r_Imag[8]~feeder_combout\);

-- Location: FF_X19_Y5_N5
\INST2_Goertzel|r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[8]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(8));

-- Location: LCCOMB_X19_Y5_N26
\INST2_Goertzel|r_Imag[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[9]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\,
	combout => \INST2_Goertzel|r_Imag[9]~feeder_combout\);

-- Location: FF_X19_Y5_N27
\INST2_Goertzel|r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[9]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(9));

-- Location: LCCOMB_X19_Y5_N0
\INST2_Goertzel|r_Imag[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[10]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\,
	combout => \INST2_Goertzel|r_Imag[10]~feeder_combout\);

-- Location: FF_X19_Y5_N1
\INST2_Goertzel|r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[10]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(10));

-- Location: LCCOMB_X17_Y5_N20
\INST2_Goertzel|r_Imag[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[11]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\,
	combout => \INST2_Goertzel|r_Imag[11]~feeder_combout\);

-- Location: FF_X17_Y5_N21
\INST2_Goertzel|r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[11]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(11));

-- Location: LCCOMB_X17_Y5_N22
\INST2_Goertzel|r_Imag[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[12]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\,
	combout => \INST2_Goertzel|r_Imag[12]~feeder_combout\);

-- Location: FF_X17_Y5_N23
\INST2_Goertzel|r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[12]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(12));

-- Location: LCCOMB_X19_Y3_N22
\INST2_Goertzel|r_Imag[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[13]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\,
	combout => \INST2_Goertzel|r_Imag[13]~feeder_combout\);

-- Location: FF_X19_Y3_N23
\INST2_Goertzel|r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[13]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(13));

-- Location: LCCOMB_X19_Y5_N22
\INST2_Goertzel|r_Imag[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[14]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST2_Goertzel|r_Imag[14]~feeder_combout\);

-- Location: FF_X19_Y5_N23
\INST2_Goertzel|r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[14]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(14));

-- Location: LCCOMB_X19_Y5_N28
\INST2_Goertzel|r_Imag[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[15]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST2_Goertzel|r_Imag[15]~feeder_combout\);

-- Location: FF_X19_Y5_N29
\INST2_Goertzel|r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[15]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(15));

-- Location: LCCOMB_X19_Y5_N30
\INST2_Goertzel|r_Imag[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[16]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST2_Goertzel|r_Imag[16]~feeder_combout\);

-- Location: FF_X19_Y5_N31
\INST2_Goertzel|r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[16]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(16));

-- Location: LCCOMB_X19_Y5_N8
\INST2_Goertzel|r_Imag[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST2_Goertzel|r_Imag[17]~feeder_combout\ = \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST2_Goertzel|r_Imag[17]~feeder_combout\);

-- Location: FF_X19_Y5_N9
\INST2_Goertzel|r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST2_Goertzel|r_Imag[17]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2_Goertzel|r_Imag\(17));

-- Location: DSPMULT_X34_Y1_N0
\INST3_Goertzel|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	ena => \INST1_Goertzel|Selector2~1_combout\,
	dataa => \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y1_N2
\INST3_Goertzel|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \INST3_Goertzel|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y1_N24
\INST3_Goertzel|r_Imag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[0]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT13\,
	combout => \INST3_Goertzel|r_Imag[0]~feeder_combout\);

-- Location: FF_X35_Y1_N25
\INST3_Goertzel|r_Imag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[0]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(0));

-- Location: LCCOMB_X35_Y1_N26
\INST3_Goertzel|r_Imag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[1]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT14\,
	combout => \INST3_Goertzel|r_Imag[1]~feeder_combout\);

-- Location: FF_X35_Y1_N27
\INST3_Goertzel|r_Imag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[1]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(1));

-- Location: LCCOMB_X33_Y1_N30
\INST3_Goertzel|r_Imag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[2]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT15\,
	combout => \INST3_Goertzel|r_Imag[2]~feeder_combout\);

-- Location: FF_X33_Y1_N31
\INST3_Goertzel|r_Imag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[2]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(2));

-- Location: LCCOMB_X35_Y1_N4
\INST3_Goertzel|r_Imag[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[3]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT16\,
	combout => \INST3_Goertzel|r_Imag[3]~feeder_combout\);

-- Location: FF_X35_Y1_N5
\INST3_Goertzel|r_Imag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[3]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(3));

-- Location: LCCOMB_X33_Y1_N28
\INST3_Goertzel|r_Imag[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[4]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT17\,
	combout => \INST3_Goertzel|r_Imag[4]~feeder_combout\);

-- Location: FF_X33_Y1_N29
\INST3_Goertzel|r_Imag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[4]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(4));

-- Location: LCCOMB_X33_Y1_N22
\INST3_Goertzel|r_Imag[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[5]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT18\,
	combout => \INST3_Goertzel|r_Imag[5]~feeder_combout\);

-- Location: FF_X33_Y1_N23
\INST3_Goertzel|r_Imag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[5]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(5));

-- Location: LCCOMB_X35_Y1_N22
\INST3_Goertzel|r_Imag[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[6]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT19\,
	combout => \INST3_Goertzel|r_Imag[6]~feeder_combout\);

-- Location: FF_X35_Y1_N23
\INST3_Goertzel|r_Imag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[6]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(6));

-- Location: LCCOMB_X33_Y1_N20
\INST3_Goertzel|r_Imag[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[7]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT20\,
	combout => \INST3_Goertzel|r_Imag[7]~feeder_combout\);

-- Location: FF_X33_Y1_N21
\INST3_Goertzel|r_Imag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[7]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(7));

-- Location: LCCOMB_X33_Y1_N18
\INST3_Goertzel|r_Imag[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[8]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT21\,
	combout => \INST3_Goertzel|r_Imag[8]~feeder_combout\);

-- Location: FF_X33_Y1_N19
\INST3_Goertzel|r_Imag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[8]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(8));

-- Location: LCCOMB_X33_Y1_N24
\INST3_Goertzel|r_Imag[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[9]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT22\,
	combout => \INST3_Goertzel|r_Imag[9]~feeder_combout\);

-- Location: FF_X33_Y1_N25
\INST3_Goertzel|r_Imag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[9]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(9));

-- Location: LCCOMB_X35_Y1_N28
\INST3_Goertzel|r_Imag[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[10]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT23\,
	combout => \INST3_Goertzel|r_Imag[10]~feeder_combout\);

-- Location: FF_X35_Y1_N29
\INST3_Goertzel|r_Imag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[10]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(10));

-- Location: LCCOMB_X35_Y1_N14
\INST3_Goertzel|r_Imag[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[11]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT24\,
	combout => \INST3_Goertzel|r_Imag[11]~feeder_combout\);

-- Location: FF_X35_Y1_N15
\INST3_Goertzel|r_Imag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[11]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(11));

-- Location: LCCOMB_X33_Y1_N26
\INST3_Goertzel|r_Imag[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[12]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT25\,
	combout => \INST3_Goertzel|r_Imag[12]~feeder_combout\);

-- Location: FF_X33_Y1_N27
\INST3_Goertzel|r_Imag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[12]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(12));

-- Location: LCCOMB_X35_Y1_N0
\INST3_Goertzel|r_Imag[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[13]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT26\,
	combout => \INST3_Goertzel|r_Imag[13]~feeder_combout\);

-- Location: FF_X35_Y1_N1
\INST3_Goertzel|r_Imag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[13]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(13));

-- Location: LCCOMB_X35_Y2_N26
\INST3_Goertzel|r_Imag[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[14]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST3_Goertzel|r_Imag[14]~feeder_combout\);

-- Location: FF_X35_Y2_N27
\INST3_Goertzel|r_Imag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[14]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(14));

-- Location: LCCOMB_X35_Y1_N10
\INST3_Goertzel|r_Imag[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[15]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST3_Goertzel|r_Imag[15]~feeder_combout\);

-- Location: FF_X35_Y1_N11
\INST3_Goertzel|r_Imag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[15]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(15));

-- Location: LCCOMB_X35_Y1_N12
\INST3_Goertzel|r_Imag[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[16]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST3_Goertzel|r_Imag[16]~feeder_combout\);

-- Location: FF_X35_Y1_N13
\INST3_Goertzel|r_Imag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[16]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(16));

-- Location: LCCOMB_X35_Y2_N28
\INST3_Goertzel|r_Imag[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST3_Goertzel|r_Imag[17]~feeder_combout\ = \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3_Goertzel|Mult3|auto_generated|mac_out2~DATAOUT27\,
	combout => \INST3_Goertzel|r_Imag[17]~feeder_combout\);

-- Location: FF_X35_Y2_N29
\INST3_Goertzel|r_Imag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST3_Goertzel|r_Imag[17]~feeder_combout\,
	ena => \INST1_Goertzel|reg.state.OUTPUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3_Goertzel|r_Imag\(17));

-- Location: LCCOMB_X21_Y7_N12
\INST1_Goertzel|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST1_Goertzel|Selector4~0_combout\ = (\INST1_Goertzel|reg.state.DONE~q\) # ((\INST1_Goertzel|reg.state.IDLE~q\ & \INST1_Goertzel|reg.done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1_Goertzel|reg.state.IDLE~q\,
	datac => \INST1_Goertzel|reg.done~q\,
	datad => \INST1_Goertzel|reg.state.DONE~q\,
	combout => \INST1_Goertzel|Selector4~0_combout\);

-- Location: FF_X21_Y7_N13
\INST1_Goertzel|reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \INST1_Goertzel|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1_Goertzel|reg.done~q\);

ww_o_Real1(0) <= \o_Real1[0]~output_o\;

ww_o_Real1(1) <= \o_Real1[1]~output_o\;

ww_o_Real1(2) <= \o_Real1[2]~output_o\;

ww_o_Real1(3) <= \o_Real1[3]~output_o\;

ww_o_Real1(4) <= \o_Real1[4]~output_o\;

ww_o_Real1(5) <= \o_Real1[5]~output_o\;

ww_o_Real1(6) <= \o_Real1[6]~output_o\;

ww_o_Real1(7) <= \o_Real1[7]~output_o\;

ww_o_Real1(8) <= \o_Real1[8]~output_o\;

ww_o_Real1(9) <= \o_Real1[9]~output_o\;

ww_o_Real1(10) <= \o_Real1[10]~output_o\;

ww_o_Real1(11) <= \o_Real1[11]~output_o\;

ww_o_Real1(12) <= \o_Real1[12]~output_o\;

ww_o_Real1(13) <= \o_Real1[13]~output_o\;

ww_o_Real1(14) <= \o_Real1[14]~output_o\;

ww_o_Real1(15) <= \o_Real1[15]~output_o\;

ww_o_Real1(16) <= \o_Real1[16]~output_o\;

ww_o_Real1(17) <= \o_Real1[17]~output_o\;

ww_o_Real2(0) <= \o_Real2[0]~output_o\;

ww_o_Real2(1) <= \o_Real2[1]~output_o\;

ww_o_Real2(2) <= \o_Real2[2]~output_o\;

ww_o_Real2(3) <= \o_Real2[3]~output_o\;

ww_o_Real2(4) <= \o_Real2[4]~output_o\;

ww_o_Real2(5) <= \o_Real2[5]~output_o\;

ww_o_Real2(6) <= \o_Real2[6]~output_o\;

ww_o_Real2(7) <= \o_Real2[7]~output_o\;

ww_o_Real2(8) <= \o_Real2[8]~output_o\;

ww_o_Real2(9) <= \o_Real2[9]~output_o\;

ww_o_Real2(10) <= \o_Real2[10]~output_o\;

ww_o_Real2(11) <= \o_Real2[11]~output_o\;

ww_o_Real2(12) <= \o_Real2[12]~output_o\;

ww_o_Real2(13) <= \o_Real2[13]~output_o\;

ww_o_Real2(14) <= \o_Real2[14]~output_o\;

ww_o_Real2(15) <= \o_Real2[15]~output_o\;

ww_o_Real2(16) <= \o_Real2[16]~output_o\;

ww_o_Real2(17) <= \o_Real2[17]~output_o\;

ww_o_Real3(0) <= \o_Real3[0]~output_o\;

ww_o_Real3(1) <= \o_Real3[1]~output_o\;

ww_o_Real3(2) <= \o_Real3[2]~output_o\;

ww_o_Real3(3) <= \o_Real3[3]~output_o\;

ww_o_Real3(4) <= \o_Real3[4]~output_o\;

ww_o_Real3(5) <= \o_Real3[5]~output_o\;

ww_o_Real3(6) <= \o_Real3[6]~output_o\;

ww_o_Real3(7) <= \o_Real3[7]~output_o\;

ww_o_Real3(8) <= \o_Real3[8]~output_o\;

ww_o_Real3(9) <= \o_Real3[9]~output_o\;

ww_o_Real3(10) <= \o_Real3[10]~output_o\;

ww_o_Real3(11) <= \o_Real3[11]~output_o\;

ww_o_Real3(12) <= \o_Real3[12]~output_o\;

ww_o_Real3(13) <= \o_Real3[13]~output_o\;

ww_o_Real3(14) <= \o_Real3[14]~output_o\;

ww_o_Real3(15) <= \o_Real3[15]~output_o\;

ww_o_Real3(16) <= \o_Real3[16]~output_o\;

ww_o_Real3(17) <= \o_Real3[17]~output_o\;

ww_o_Imag1(0) <= \o_Imag1[0]~output_o\;

ww_o_Imag1(1) <= \o_Imag1[1]~output_o\;

ww_o_Imag1(2) <= \o_Imag1[2]~output_o\;

ww_o_Imag1(3) <= \o_Imag1[3]~output_o\;

ww_o_Imag1(4) <= \o_Imag1[4]~output_o\;

ww_o_Imag1(5) <= \o_Imag1[5]~output_o\;

ww_o_Imag1(6) <= \o_Imag1[6]~output_o\;

ww_o_Imag1(7) <= \o_Imag1[7]~output_o\;

ww_o_Imag1(8) <= \o_Imag1[8]~output_o\;

ww_o_Imag1(9) <= \o_Imag1[9]~output_o\;

ww_o_Imag1(10) <= \o_Imag1[10]~output_o\;

ww_o_Imag1(11) <= \o_Imag1[11]~output_o\;

ww_o_Imag1(12) <= \o_Imag1[12]~output_o\;

ww_o_Imag1(13) <= \o_Imag1[13]~output_o\;

ww_o_Imag1(14) <= \o_Imag1[14]~output_o\;

ww_o_Imag1(15) <= \o_Imag1[15]~output_o\;

ww_o_Imag1(16) <= \o_Imag1[16]~output_o\;

ww_o_Imag1(17) <= \o_Imag1[17]~output_o\;

ww_o_Imag2(0) <= \o_Imag2[0]~output_o\;

ww_o_Imag2(1) <= \o_Imag2[1]~output_o\;

ww_o_Imag2(2) <= \o_Imag2[2]~output_o\;

ww_o_Imag2(3) <= \o_Imag2[3]~output_o\;

ww_o_Imag2(4) <= \o_Imag2[4]~output_o\;

ww_o_Imag2(5) <= \o_Imag2[5]~output_o\;

ww_o_Imag2(6) <= \o_Imag2[6]~output_o\;

ww_o_Imag2(7) <= \o_Imag2[7]~output_o\;

ww_o_Imag2(8) <= \o_Imag2[8]~output_o\;

ww_o_Imag2(9) <= \o_Imag2[9]~output_o\;

ww_o_Imag2(10) <= \o_Imag2[10]~output_o\;

ww_o_Imag2(11) <= \o_Imag2[11]~output_o\;

ww_o_Imag2(12) <= \o_Imag2[12]~output_o\;

ww_o_Imag2(13) <= \o_Imag2[13]~output_o\;

ww_o_Imag2(14) <= \o_Imag2[14]~output_o\;

ww_o_Imag2(15) <= \o_Imag2[15]~output_o\;

ww_o_Imag2(16) <= \o_Imag2[16]~output_o\;

ww_o_Imag2(17) <= \o_Imag2[17]~output_o\;

ww_o_Imag3(0) <= \o_Imag3[0]~output_o\;

ww_o_Imag3(1) <= \o_Imag3[1]~output_o\;

ww_o_Imag3(2) <= \o_Imag3[2]~output_o\;

ww_o_Imag3(3) <= \o_Imag3[3]~output_o\;

ww_o_Imag3(4) <= \o_Imag3[4]~output_o\;

ww_o_Imag3(5) <= \o_Imag3[5]~output_o\;

ww_o_Imag3(6) <= \o_Imag3[6]~output_o\;

ww_o_Imag3(7) <= \o_Imag3[7]~output_o\;

ww_o_Imag3(8) <= \o_Imag3[8]~output_o\;

ww_o_Imag3(9) <= \o_Imag3[9]~output_o\;

ww_o_Imag3(10) <= \o_Imag3[10]~output_o\;

ww_o_Imag3(11) <= \o_Imag3[11]~output_o\;

ww_o_Imag3(12) <= \o_Imag3[12]~output_o\;

ww_o_Imag3(13) <= \o_Imag3[13]~output_o\;

ww_o_Imag3(14) <= \o_Imag3[14]~output_o\;

ww_o_Imag3(15) <= \o_Imag3[15]~output_o\;

ww_o_Imag3(16) <= \o_Imag3[16]~output_o\;

ww_o_Imag3(17) <= \o_Imag3[17]~output_o\;

ww_o_NEW_RESULT(0) <= \o_NEW_RESULT[0]~output_o\;

ww_o_NEW_RESULT(1) <= \o_NEW_RESULT[1]~output_o\;

ww_o_NEW_RESULT(2) <= \o_NEW_RESULT[2]~output_o\;
END structure;


