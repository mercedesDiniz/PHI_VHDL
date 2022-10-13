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

-- DATE "10/12/2022 20:44:21"

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

ENTITY 	controle_portao IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	fc1 : IN std_logic;
	fc2 : IN std_logic;
	b : IN std_logic;
	p : IN std_logic;
	s0 : OUT std_logic;
	s1 : OUT std_logic
	);
END controle_portao;

-- Design Ports Information
-- s0	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc1	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc2	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controle_portao IS
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
SIGNAL ww_fc1 : std_logic;
SIGNAL ww_fc2 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \fc1~input_o\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \fc2~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \b_anterior~0_combout\ : std_logic;
SIGNAL \b_anterior~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \prox_estado.Fechado_309~combout\ : std_logic;
SIGNAL \estado_atual.Fechado~q\ : std_logic;
SIGNAL \logica_proximo_estado~0_combout\ : std_logic;
SIGNAL \logica_proximo_estado~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \prox_estado.BloqueadoA_369~combout\ : std_logic;
SIGNAL \estado_atual.BloqueadoA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \prox_estado.Abrindo_429~combout\ : std_logic;
SIGNAL \estado_atual.Abrindo~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \prox_estado.Aberto_399~combout\ : std_logic;
SIGNAL \estado_atual.Aberto~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \logica_proximo_estado~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \prox_estado.BloqueadoF_279~combout\ : std_logic;
SIGNAL \estado_atual.BloqueadoF~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \prox_estado.Fechando_339~combout\ : std_logic;
SIGNAL \estado_atual.Fechando~0_combout\ : std_logic;
SIGNAL \estado_atual.Fechando~q\ : std_logic;
SIGNAL \ALT_INV_p~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_fc2~input_o\ : std_logic;
SIGNAL \ALT_INV_fc1~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_prox_estado.BloqueadoA_369~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.Fechado_309~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.BloqueadoF_279~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.Aberto_399~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.Abrindo_429~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.Fechando_339~combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.BloqueadoA~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Fechado~q\ : std_logic;
SIGNAL \ALT_INV_logica_proximo_estado~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.BloqueadoF~q\ : std_logic;
SIGNAL \ALT_INV_logica_proximo_estado~1_combout\ : std_logic;
SIGNAL \ALT_INV_logica_proximo_estado~0_combout\ : std_logic;
SIGNAL \ALT_INV_b_anterior~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Aberto~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Abrindo~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Fechando~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_fc1 <= fc1;
ww_fc2 <= fc2;
ww_b <= b;
ww_p <= p;
s0 <= ww_s0;
s1 <= ww_s1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_p~input_o\ <= NOT \p~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_fc2~input_o\ <= NOT \fc2~input_o\;
\ALT_INV_fc1~input_o\ <= NOT \fc1~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_prox_estado.BloqueadoA_369~combout\ <= NOT \prox_estado.BloqueadoA_369~combout\;
\ALT_INV_prox_estado.Fechado_309~combout\ <= NOT \prox_estado.Fechado_309~combout\;
\ALT_INV_prox_estado.BloqueadoF_279~combout\ <= NOT \prox_estado.BloqueadoF_279~combout\;
\ALT_INV_prox_estado.Aberto_399~combout\ <= NOT \prox_estado.Aberto_399~combout\;
\ALT_INV_prox_estado.Abrindo_429~combout\ <= NOT \prox_estado.Abrindo_429~combout\;
\ALT_INV_prox_estado.Fechando_339~combout\ <= NOT \prox_estado.Fechando_339~combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_estado_atual.BloqueadoA~q\ <= NOT \estado_atual.BloqueadoA~q\;
\ALT_INV_estado_atual.Fechado~q\ <= NOT \estado_atual.Fechado~q\;
\ALT_INV_logica_proximo_estado~2_combout\ <= NOT \logica_proximo_estado~2_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_estado_atual.BloqueadoF~q\ <= NOT \estado_atual.BloqueadoF~q\;
\ALT_INV_logica_proximo_estado~1_combout\ <= NOT \logica_proximo_estado~1_combout\;
\ALT_INV_logica_proximo_estado~0_combout\ <= NOT \logica_proximo_estado~0_combout\;
\ALT_INV_b_anterior~q\ <= NOT \b_anterior~q\;
\ALT_INV_estado_atual.Aberto~q\ <= NOT \estado_atual.Aberto~q\;
\ALT_INV_estado_atual.Abrindo~q\ <= NOT \estado_atual.Abrindo~q\;
\ALT_INV_estado_atual.Fechando~q\ <= NOT \estado_atual.Fechando~q\;

-- Location: IOOBUF_X89_Y35_N45
\s0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_atual.Fechando~q\,
	devoe => ww_devoe,
	o => ww_s0);

-- Location: IOOBUF_X89_Y36_N5
\s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_atual.Abrindo~q\,
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

-- Location: IOIBUF_X89_Y37_N4
\fc1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fc1,
	o => \fc1~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\p~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\fc2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fc2,
	o => \fc2~input_o\);

-- Location: LABCELL_X85_Y37_N42
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \fc2~input_o\ & ( \estado_atual.BloqueadoF~q\ ) ) # ( !\fc2~input_o\ & ( (!\fc1~input_o\ & (\p~input_o\ & ((!\estado_atual.Fechando~q\) # (\estado_atual.BloqueadoF~q\)))) # (\fc1~input_o\ & (((\estado_atual.BloqueadoF~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001111000000111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.Fechando~q\,
	datab => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_estado_atual.BloqueadoF~q\,
	datad => \ALT_INV_p~input_o\,
	dataf => \ALT_INV_fc2~input_o\,
	combout => \Selector5~0_combout\);

-- Location: IOIBUF_X89_Y35_N78
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X85_Y37_N6
\b_anterior~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_anterior~0_combout\ = ( \b~input_o\ & ( (!\rst~input_o\) # (\b_anterior~q\) ) ) # ( !\b~input_o\ & ( (\rst~input_o\ & \b_anterior~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_b_anterior~q\,
	dataf => \ALT_INV_b~input_o\,
	combout => \b_anterior~0_combout\);

-- Location: FF_X85_Y37_N8
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

-- Location: LABCELL_X85_Y37_N30
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \fc2~input_o\ & ( \estado_atual.Fechando~q\ & ( \estado_atual.Fechado~q\ ) ) ) # ( !\fc2~input_o\ & ( \estado_atual.Fechando~q\ & ( (\estado_atual.Fechado~q\ & ((!\b~input_o\) # ((\b_anterior~q\) # (\fc1~input_o\)))) ) ) ) # ( 
-- \fc2~input_o\ & ( !\estado_atual.Fechando~q\ ) ) # ( !\fc2~input_o\ & ( !\estado_atual.Fechando~q\ & ( ((\estado_atual.Fechado~q\ & ((!\b~input_o\) # (\b_anterior~q\)))) # (\fc1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111111111111111111111100001011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b~input_o\,
	datab => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_estado_atual.Fechado~q\,
	datad => \ALT_INV_b_anterior~q\,
	datae => \ALT_INV_fc2~input_o\,
	dataf => \ALT_INV_estado_atual.Fechando~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X85_Y37_N51
\prox_estado.Fechado_309\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.Fechado_309~combout\ = ( \Selector6~1_combout\ & ( \Selector4~0_combout\ ) ) # ( !\Selector6~1_combout\ & ( \prox_estado.Fechado_309~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector4~0_combout\,
	datad => \ALT_INV_prox_estado.Fechado_309~combout\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \prox_estado.Fechado_309~combout\);

-- Location: FF_X85_Y37_N53
\estado_atual.Fechado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.Fechado_309~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Fechado~q\);

-- Location: LABCELL_X85_Y37_N48
\logica_proximo_estado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_proximo_estado~0_combout\ = ( !\b_anterior~q\ & ( (\b~input_o\ & (!\fc2~input_o\ & !\fc1~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b~input_o\,
	datac => \ALT_INV_fc2~input_o\,
	datad => \ALT_INV_fc1~input_o\,
	dataf => \ALT_INV_b_anterior~q\,
	combout => \logica_proximo_estado~0_combout\);

-- Location: MLABCELL_X84_Y37_N18
\logica_proximo_estado~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_proximo_estado~1_combout\ = ( !\p~input_o\ & ( (!\fc2~input_o\ & !\fc1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc2~input_o\,
	datab => \ALT_INV_fc1~input_o\,
	datae => \ALT_INV_p~input_o\,
	combout => \logica_proximo_estado~1_combout\);

-- Location: LABCELL_X85_Y37_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado_atual.Abrindo~q\ & ( (!\fc1~input_o\ & ((!\fc2~input_o\ & ((\p~input_o\))) # (\fc2~input_o\ & (\estado_atual.BloqueadoA~q\)))) # (\fc1~input_o\ & (\estado_atual.BloqueadoA~q\)) ) ) # ( !\estado_atual.Abrindo~q\ & ( 
-- (\estado_atual.BloqueadoA~q\ & (((\p~input_o\) # (\fc2~input_o\)) # (\fc1~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datab => \ALT_INV_estado_atual.BloqueadoA~q\,
	datac => \ALT_INV_fc2~input_o\,
	datad => \ALT_INV_p~input_o\,
	dataf => \ALT_INV_estado_atual.Abrindo~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X85_Y37_N39
\prox_estado.BloqueadoA_369\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.BloqueadoA_369~combout\ = ( \prox_estado.BloqueadoA_369~combout\ & ( (!\Selector6~1_combout\) # (\Selector2~0_combout\) ) ) # ( !\prox_estado.BloqueadoA_369~combout\ & ( (\Selector6~1_combout\ & \Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~1_combout\,
	datab => \ALT_INV_Selector2~0_combout\,
	dataf => \ALT_INV_prox_estado.BloqueadoA_369~combout\,
	combout => \prox_estado.BloqueadoA_369~combout\);

-- Location: FF_X85_Y37_N41
\estado_atual.BloqueadoA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.BloqueadoA_369~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.BloqueadoA~q\);

-- Location: LABCELL_X85_Y37_N21
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado_atual.BloqueadoA~q\ & ( ((\estado_atual.Fechado~q\ & \logica_proximo_estado~0_combout\)) # (\logica_proximo_estado~1_combout\) ) ) # ( !\estado_atual.BloqueadoA~q\ & ( (!\estado_atual.Fechado~q\ & 
-- (((\estado_atual.Abrindo~q\ & \logica_proximo_estado~1_combout\)))) # (\estado_atual.Fechado~q\ & (((\estado_atual.Abrindo~q\ & \logica_proximo_estado~1_combout\)) # (\logica_proximo_estado~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.Fechado~q\,
	datab => \ALT_INV_logica_proximo_estado~0_combout\,
	datac => \ALT_INV_estado_atual.Abrindo~q\,
	datad => \ALT_INV_logica_proximo_estado~1_combout\,
	dataf => \ALT_INV_estado_atual.BloqueadoA~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X85_Y37_N15
\prox_estado.Abrindo_429\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.Abrindo_429~combout\ = ( \Selector6~1_combout\ & ( \Selector0~0_combout\ ) ) # ( !\Selector6~1_combout\ & ( \prox_estado.Abrindo_429~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_prox_estado.Abrindo_429~combout\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \prox_estado.Abrindo_429~combout\);

-- Location: FF_X85_Y37_N17
\estado_atual.Abrindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.Abrindo_429~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Abrindo~q\);

-- Location: MLABCELL_X84_Y37_N57
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado_atual.Abrindo~q\ & ( \b~input_o\ & ( (((\estado_atual.Aberto~q\ & \b_anterior~q\)) # (\fc2~input_o\)) # (\fc1~input_o\) ) ) ) # ( !\estado_atual.Abrindo~q\ & ( \b~input_o\ & ( (\estado_atual.Aberto~q\ & (((\b_anterior~q\) 
-- # (\fc2~input_o\)) # (\fc1~input_o\))) ) ) ) # ( \estado_atual.Abrindo~q\ & ( !\b~input_o\ & ( ((\estado_atual.Aberto~q\) # (\fc2~input_o\)) # (\fc1~input_o\) ) ) ) # ( !\estado_atual.Abrindo~q\ & ( !\b~input_o\ & ( \estado_atual.Aberto~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011111110111111100000111000011110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datab => \ALT_INV_fc2~input_o\,
	datac => \ALT_INV_estado_atual.Aberto~q\,
	datad => \ALT_INV_b_anterior~q\,
	datae => \ALT_INV_estado_atual.Abrindo~q\,
	dataf => \ALT_INV_b~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X85_Y37_N36
\prox_estado.Aberto_399\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.Aberto_399~combout\ = ( \Selector1~0_combout\ & ( (\prox_estado.Aberto_399~combout\) # (\Selector6~1_combout\) ) ) # ( !\Selector1~0_combout\ & ( (!\Selector6~1_combout\ & \prox_estado.Aberto_399~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~1_combout\,
	datad => \ALT_INV_prox_estado.Aberto_399~combout\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \prox_estado.Aberto_399~combout\);

-- Location: FF_X85_Y37_N38
\estado_atual.Aberto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.Aberto_399~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Aberto~q\);

-- Location: LABCELL_X85_Y37_N54
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \estado_atual.BloqueadoF~q\ & ( \estado_atual.Abrindo~q\ & ( (!\fc1~input_o\) # ((!\fc2~input_o\ & !\estado_atual.Fechando~q\)) ) ) ) # ( !\estado_atual.BloqueadoF~q\ & ( \estado_atual.Abrindo~q\ & ( (!\fc1~input_o\) # 
-- ((!\fc2~input_o\ & !\estado_atual.Fechando~q\)) ) ) ) # ( \estado_atual.BloqueadoF~q\ & ( !\estado_atual.Abrindo~q\ & ( (!\fc2~input_o\ & ((!\fc1~input_o\) # (!\estado_atual.Fechando~q\))) ) ) ) # ( !\estado_atual.BloqueadoF~q\ & ( 
-- !\estado_atual.Abrindo~q\ & ( (!\fc2~input_o\ & ((!\estado_atual.Fechando~q\) # ((!\fc1~input_o\ & \estado_atual.BloqueadoA~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101000101010001010100011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc2~input_o\,
	datab => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_estado_atual.Fechando~q\,
	datad => \ALT_INV_estado_atual.BloqueadoA~q\,
	datae => \ALT_INV_estado_atual.BloqueadoF~q\,
	dataf => \ALT_INV_estado_atual.Abrindo~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X85_Y37_N9
\logica_proximo_estado~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_proximo_estado~2_combout\ = ( !\b_anterior~q\ & ( \b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_b_anterior~q\,
	combout => \logica_proximo_estado~2_combout\);

-- Location: LABCELL_X85_Y37_N24
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Selector6~0_combout\ & ( \logica_proximo_estado~2_combout\ ) ) # ( !\Selector6~0_combout\ & ( \logica_proximo_estado~2_combout\ & ( (!\estado_atual.Aberto~q\ & (((\estado_atual.Fechado~q\ & !\fc2~input_o\)))) # 
-- (\estado_atual.Aberto~q\ & ((!\fc1~input_o\) # ((\estado_atual.Fechado~q\ & !\fc2~input_o\)))) ) ) ) # ( \Selector6~0_combout\ & ( !\logica_proximo_estado~2_combout\ ) ) # ( !\Selector6~0_combout\ & ( !\logica_proximo_estado~2_combout\ & ( (!\fc1~input_o\ 
-- & (\estado_atual.Aberto~q\ & ((\fc2~input_o\)))) # (\fc1~input_o\ & (((\estado_atual.Fechado~q\ & !\fc2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100111111111111111101001111010001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.Aberto~q\,
	datab => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_estado_atual.Fechado~q\,
	datad => \ALT_INV_fc2~input_o\,
	datae => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_logica_proximo_estado~2_combout\,
	combout => \Selector6~1_combout\);

-- Location: LABCELL_X85_Y37_N3
\prox_estado.BloqueadoF_279\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.BloqueadoF_279~combout\ = ( \Selector6~1_combout\ & ( \Selector5~0_combout\ ) ) # ( !\Selector6~1_combout\ & ( \prox_estado.BloqueadoF_279~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector5~0_combout\,
	datad => \ALT_INV_prox_estado.BloqueadoF_279~combout\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \prox_estado.BloqueadoF_279~combout\);

-- Location: FF_X85_Y37_N5
\estado_atual.BloqueadoF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.BloqueadoF_279~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.BloqueadoF~q\);

-- Location: LABCELL_X85_Y37_N0
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado_atual.Fechando~q\ & ( (!\estado_atual.BloqueadoF~q\ & (\logica_proximo_estado~0_combout\ & ((\estado_atual.Aberto~q\)))) # (\estado_atual.BloqueadoF~q\ & (((\logica_proximo_estado~0_combout\ & \estado_atual.Aberto~q\)) # 
-- (\logica_proximo_estado~1_combout\))) ) ) # ( !\estado_atual.Fechando~q\ & ( ((\logica_proximo_estado~0_combout\ & \estado_atual.Aberto~q\)) # (\logica_proximo_estado~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.BloqueadoF~q\,
	datab => \ALT_INV_logica_proximo_estado~0_combout\,
	datac => \ALT_INV_logica_proximo_estado~1_combout\,
	datad => \ALT_INV_estado_atual.Aberto~q\,
	dataf => \ALT_INV_estado_atual.Fechando~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X85_Y37_N45
\prox_estado.Fechando_339\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.Fechando_339~combout\ = ( \Selector6~1_combout\ & ( \Selector3~0_combout\ ) ) # ( !\Selector6~1_combout\ & ( \prox_estado.Fechando_339~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_prox_estado.Fechando_339~combout\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \prox_estado.Fechando_339~combout\);

-- Location: LABCELL_X85_Y37_N18
\estado_atual.Fechando~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual.Fechando~0_combout\ = ( !\prox_estado.Fechando_339~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_prox_estado.Fechando_339~combout\,
	combout => \estado_atual.Fechando~0_combout\);

-- Location: FF_X85_Y37_N20
\estado_atual.Fechando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.Fechando~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Fechando~q\);

-- Location: LABCELL_X64_Y26_N3
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


