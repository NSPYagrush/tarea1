-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/21/2021 18:44:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	demux1to4 IS
    PORT (
	A : IN std_logic;
	Sel : IN std_logic_vector(1 DOWNTO 0);
	W : OUT std_logic;
	X : OUT std_logic;
	Y : OUT std_logic;
	Z : OUT std_logic
	);
END demux1to4;

-- Design Ports Information
-- W	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demux1to4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \W~output_o\ : std_logic;
SIGNAL \X~output_o\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \W~0_combout\ : std_logic;
SIGNAL \X~0_combout\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_Sel <= Sel;
W <= ww_W;
X <= ww_X;
Y <= ww_Y;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\W~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W~0_combout\,
	devoe => ww_devoe,
	o => \W~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\X~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X~0_combout\,
	devoe => ww_devoe,
	o => \X~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\Sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\Sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X11_Y1_N8
\W~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \W~0_combout\ = (!\Sel[0]~input_o\ & (!\Sel[1]~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \A~input_o\,
	combout => \W~0_combout\);

-- Location: LCCOMB_X11_Y1_N2
\X~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \X~0_combout\ = (\Sel[0]~input_o\ & (!\Sel[1]~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \A~input_o\,
	combout => \X~0_combout\);

-- Location: LCCOMB_X11_Y1_N4
\Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (!\Sel[0]~input_o\ & (\Sel[1]~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \A~input_o\,
	combout => \Y~0_combout\);

-- Location: LCCOMB_X11_Y1_N22
\Z~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\Sel[0]~input_o\ & (\Sel[1]~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \A~input_o\,
	combout => \Z~0_combout\);

ww_W <= \W~output_o\;

ww_X <= \X~output_o\;

ww_Y <= \Y~output_o\;

ww_Z <= \Z~output_o\;
END structure;


