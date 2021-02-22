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

-- DATE "02/20/2021 21:33:43"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder3to8 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	F0 : BUFFER std_logic;
	F1 : BUFFER std_logic;
	F2 : BUFFER std_logic;
	F3 : BUFFER std_logic;
	F4 : BUFFER std_logic;
	F5 : BUFFER std_logic;
	F6 : BUFFER std_logic;
	F7 : BUFFER std_logic
	);
END decoder3to8;

-- Design Ports Information
-- F0	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F4	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F5	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F6	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F7	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder3to8 IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_F0 : std_logic;
SIGNAL ww_F1 : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_F3 : std_logic;
SIGNAL ww_F4 : std_logic;
SIGNAL ww_F5 : std_logic;
SIGNAL ww_F6 : std_logic;
SIGNAL ww_F7 : std_logic;
SIGNAL \F0~output_o\ : std_logic;
SIGNAL \F1~output_o\ : std_logic;
SIGNAL \F2~output_o\ : std_logic;
SIGNAL \F3~output_o\ : std_logic;
SIGNAL \F4~output_o\ : std_logic;
SIGNAL \F5~output_o\ : std_logic;
SIGNAL \F6~output_o\ : std_logic;
SIGNAL \F7~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \F0~0_combout\ : std_logic;
SIGNAL \F1~0_combout\ : std_logic;
SIGNAL \F2~0_combout\ : std_logic;
SIGNAL \F3~0_combout\ : std_logic;
SIGNAL \F4~0_combout\ : std_logic;
SIGNAL \F5~0_combout\ : std_logic;
SIGNAL \F6~0_combout\ : std_logic;
SIGNAL \F7~0_combout\ : std_logic;
SIGNAL \ALT_INV_F0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
F0 <= ww_F0;
F1 <= ww_F1;
F2 <= ww_F2;
F3 <= ww_F3;
F4 <= ww_F4;
F5 <= ww_F5;
F6 <= ww_F6;
F7 <= ww_F7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_F0~0_combout\ <= NOT \F0~0_combout\;

-- Location: IOOBUF_X0_Y7_N16
\F0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_F0~0_combout\,
	devoe => ww_devoe,
	o => \F0~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\F1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1~0_combout\,
	devoe => ww_devoe,
	o => \F1~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\F2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F2~0_combout\,
	devoe => ww_devoe,
	o => \F2~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\F3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3~0_combout\,
	devoe => ww_devoe,
	o => \F3~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\F4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4~0_combout\,
	devoe => ww_devoe,
	o => \F4~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\F5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5~0_combout\,
	devoe => ww_devoe,
	o => \F5~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\F6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6~0_combout\,
	devoe => ww_devoe,
	o => \F6~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\F7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7~0_combout\,
	devoe => ww_devoe,
	o => \F7~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y19_N24
\F0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F0~0_combout\ = (\C~input_o\) # ((\A~input_o\) # (\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F0~0_combout\);

-- Location: LCCOMB_X1_Y19_N18
\F1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F1~0_combout\ = (!\C~input_o\ & (\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F1~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\F2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F2~0_combout\ = (!\C~input_o\ & (!\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F2~0_combout\);

-- Location: LCCOMB_X1_Y19_N6
\F3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F3~0_combout\ = (!\C~input_o\ & (\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F3~0_combout\);

-- Location: LCCOMB_X1_Y19_N16
\F4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F4~0_combout\ = (\C~input_o\ & (!\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F4~0_combout\);

-- Location: LCCOMB_X1_Y19_N26
\F5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F5~0_combout\ = (\C~input_o\ & (\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F5~0_combout\);

-- Location: LCCOMB_X1_Y19_N20
\F6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F6~0_combout\ = (\C~input_o\ & (!\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F6~0_combout\);

-- Location: LCCOMB_X1_Y19_N14
\F7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F7~0_combout\ = (\C~input_o\ & (\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \F7~0_combout\);

ww_F0 <= \F0~output_o\;

ww_F1 <= \F1~output_o\;

ww_F2 <= \F2~output_o\;

ww_F3 <= \F3~output_o\;

ww_F4 <= \F4~output_o\;

ww_F5 <= \F5~output_o\;

ww_F6 <= \F6~output_o\;

ww_F7 <= \F7~output_o\;
END structure;


