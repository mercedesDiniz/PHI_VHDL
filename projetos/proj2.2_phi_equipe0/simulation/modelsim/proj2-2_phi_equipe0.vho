-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/09/2022 13:54:11"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sel_mostrador_relogio IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	b : IN std_logic;
	s0 : BUFFER std_logic;
	s1 : BUFFER std_logic
	);
END sel_mostrador_relogio;

-- Design Ports Information
-- s0	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sel_mostrador_relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \b_anterior~0_combout\ : std_logic;
SIGNAL \b_anterior~q\ : std_logic;
SIGNAL \logica_proximo_estado~0_combout\ : std_logic;
SIGNAL \estado_atual.C~q\ : std_logic;
SIGNAL \estado_atual.D~q\ : std_logic;
SIGNAL \estado_atual.H~0_combout\ : std_logic;
SIGNAL \estado_atual.H~q\ : std_logic;
SIGNAL \estado_atual.A~0_combout\ : std_logic;
SIGNAL \estado_atual.A~q\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_b_anterior~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.D~q\ : std_logic;
SIGNAL \ALT_INV_s1~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.C~q\ : std_logic;
SIGNAL \ALT_INV_s0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.A~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.H~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_b <= b;
s0 <= ww_s0;
s1 <= ww_s1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_b_anterior~q\ <= NOT \b_anterior~q\;
\ALT_INV_estado_atual.D~q\ <= NOT \estado_atual.D~q\;
\ALT_INV_s1~0_combout\ <= NOT \s1~0_combout\;
\ALT_INV_estado_atual.C~q\ <= NOT \estado_atual.C~q\;
\ALT_INV_s0~0_combout\ <= NOT \s0~0_combout\;
\ALT_INV_estado_atual.A~q\ <= NOT \estado_atual.A~q\;
\ALT_INV_estado_atual.H~q\ <= NOT \estado_atual.H~q\;

-- Location: IOOBUF_X30_Y0_N2
\s0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s0~0_combout\,
	devoe => ww_devoe,
	o => ww_s0);

-- Location: IOOBUF_X30_Y0_N53
\s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s1~0_combout\,
	devoe => ww_devoe,
	o => ww_s1);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X30_Y2_N42
\b_anterior~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_anterior~0_combout\ = ( \b_anterior~q\ & ( \b~input_o\ ) ) # ( !\b_anterior~q\ & ( \b~input_o\ & ( !\rst~input_o\ ) ) ) # ( \b_anterior~q\ & ( !\b~input_o\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_b_anterior~q\,
	dataf => \ALT_INV_b~input_o\,
	combout => \b_anterior~0_combout\);

-- Location: FF_X30_Y2_N44
b_anterior : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b_anterior~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_anterior~q\);

-- Location: LABCELL_X30_Y2_N36
\logica_proximo_estado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_proximo_estado~0_combout\ = ( !\b_anterior~q\ & ( \b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_b_anterior~q\,
	combout => \logica_proximo_estado~0_combout\);

-- Location: FF_X30_Y2_N41
\estado_atual.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \estado_atual.A~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \logica_proximo_estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.C~q\);

-- Location: FF_X30_Y2_N37
\estado_atual.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \estado_atual.C~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \logica_proximo_estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.D~q\);

-- Location: LABCELL_X30_Y2_N12
\estado_atual.H~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual.H~0_combout\ = ( !\estado_atual.D~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_estado_atual.D~q\,
	combout => \estado_atual.H~0_combout\);

-- Location: FF_X30_Y2_N14
\estado_atual.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.H~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \logica_proximo_estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.H~q\);

-- Location: LABCELL_X30_Y2_N54
\estado_atual.A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual.A~0_combout\ = ( !\estado_atual.H~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_estado_atual.H~q\,
	combout => \estado_atual.A~0_combout\);

-- Location: FF_X30_Y2_N56
\estado_atual.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.A~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \logica_proximo_estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.A~q\);

-- Location: LABCELL_X30_Y2_N33
\s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = ( \estado_atual.A~q\ & ( \estado_atual.H~q\ ) ) # ( \estado_atual.A~q\ & ( !\estado_atual.H~q\ ) ) # ( !\estado_atual.A~q\ & ( !\estado_atual.H~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_estado_atual.A~q\,
	dataf => \ALT_INV_estado_atual.H~q\,
	combout => \s0~0_combout\);

-- Location: LABCELL_X30_Y2_N39
\s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = (!\estado_atual.H~q\) # (\estado_atual.C~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_atual.H~q\,
	datad => \ALT_INV_estado_atual.C~q\,
	combout => \s1~0_combout\);

-- Location: LABCELL_X71_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;

