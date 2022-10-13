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

-- DATE "10/13/2022 15:17:01"

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
	s0 : BUFFER std_logic;
	s1 : BUFFER std_logic
	);
END controle_portao;

-- Design Ports Information
-- s0	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc2	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \b~input_o\ : std_logic;
SIGNAL \fc2~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \b_anterior~0_combout\ : std_logic;
SIGNAL \b_anterior~q\ : std_logic;
SIGNAL \fc1~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado_atual.Fechado~q\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.BloqueadoA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estado_atual.Abrindo~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado_atual.Aberto~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_atual.BloqueadoF~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \estado_atual.Fechando~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_fc1~input_o\ : std_logic;
SIGNAL \ALT_INV_p~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_fc2~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.BloqueadoA~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Fechado~q\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.BloqueadoF~q\ : std_logic;
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
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_fc1~input_o\ <= NOT \fc1~input_o\;
\ALT_INV_p~input_o\ <= NOT \p~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_fc2~input_o\ <= NOT \fc2~input_o\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_estado_atual.BloqueadoA~q\ <= NOT \estado_atual.BloqueadoA~q\;
\ALT_INV_estado_atual.Fechado~q\ <= NOT \estado_atual.Fechado~q\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_estado_atual.BloqueadoF~q\ <= NOT \estado_atual.BloqueadoF~q\;
\ALT_INV_b_anterior~q\ <= NOT \b_anterior~q\;
\ALT_INV_estado_atual.Aberto~q\ <= NOT \estado_atual.Aberto~q\;
\ALT_INV_estado_atual.Abrindo~q\ <= NOT \estado_atual.Abrindo~q\;
\ALT_INV_estado_atual.Fechando~q\ <= NOT \estado_atual.Fechando~q\;

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOIBUF_X89_Y37_N21
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\fc2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fc2,
	o => \fc2~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X88_Y37_N0
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

-- Location: FF_X88_Y37_N2
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

-- Location: IOIBUF_X89_Y37_N55
\fc1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fc1,
	o => \fc1~input_o\);

-- Location: LABCELL_X88_Y37_N36
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \estado_atual.Fechado~q\ & ( \b_anterior~q\ ) ) # ( !\estado_atual.Fechado~q\ & ( \b_anterior~q\ & ( (\fc1~input_o\ & !\estado_atual.Fechando~q\) ) ) ) # ( \estado_atual.Fechado~q\ & ( !\b_anterior~q\ & ( (!\b~input_o\) # 
-- (\fc1~input_o\) ) ) ) # ( !\estado_atual.Fechado~q\ & ( !\b_anterior~q\ & ( (\fc1~input_o\ & !\estado_atual.Fechando~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111101011111010101010101000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_b~input_o\,
	datad => \ALT_INV_estado_atual.Fechando~q\,
	datae => \ALT_INV_estado_atual.Fechado~q\,
	dataf => \ALT_INV_b_anterior~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X88_Y37_N38
\estado_atual.Fechado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Fechado~q\);

-- Location: IOIBUF_X89_Y37_N38
\p~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: LABCELL_X88_Y37_N57
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado_atual.BloqueadoA~q\ & ( \estado_atual.Abrindo~q\ & ( \p~input_o\ ) ) ) # ( !\estado_atual.BloqueadoA~q\ & ( \estado_atual.Abrindo~q\ & ( (!\fc2~input_o\ & \p~input_o\) ) ) ) # ( \estado_atual.BloqueadoA~q\ & ( 
-- !\estado_atual.Abrindo~q\ & ( \p~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc2~input_o\,
	datac => \ALT_INV_p~input_o\,
	datae => \ALT_INV_estado_atual.BloqueadoA~q\,
	dataf => \ALT_INV_estado_atual.Abrindo~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y37_N59
\estado_atual.BloqueadoA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.BloqueadoA~q\);

-- Location: LABCELL_X88_Y37_N24
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado_atual.BloqueadoA~q\ & ( \estado_atual.Abrindo~q\ & ( !\p~input_o\ ) ) ) # ( !\estado_atual.BloqueadoA~q\ & ( \estado_atual.Abrindo~q\ & ( (!\fc2~input_o\ & !\p~input_o\) ) ) ) # ( \estado_atual.BloqueadoA~q\ & ( 
-- !\estado_atual.Abrindo~q\ & ( !\p~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110010001000100010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc2~input_o\,
	datab => \ALT_INV_p~input_o\,
	datae => \ALT_INV_estado_atual.BloqueadoA~q\,
	dataf => \ALT_INV_estado_atual.Abrindo~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X88_Y37_N48
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \estado_atual.Fechado~q\ & ( \Selector0~0_combout\ ) ) # ( !\estado_atual.Fechado~q\ & ( \Selector0~0_combout\ ) ) # ( \estado_atual.Fechado~q\ & ( !\Selector0~0_combout\ & ( (!\fc1~input_o\ & (\b~input_o\ & !\b_anterior~q\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datab => \ALT_INV_b~input_o\,
	datac => \ALT_INV_b_anterior~q\,
	datae => \ALT_INV_estado_atual.Fechado~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X88_Y37_N50
\estado_atual.Abrindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Abrindo~q\);

-- Location: LABCELL_X88_Y37_N45
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado_atual.Aberto~q\ & ( \estado_atual.Abrindo~q\ & ( (!\b~input_o\) # ((\b_anterior~q\) # (\fc2~input_o\)) ) ) ) # ( !\estado_atual.Aberto~q\ & ( \estado_atual.Abrindo~q\ & ( \fc2~input_o\ ) ) ) # ( \estado_atual.Aberto~q\ & 
-- ( !\estado_atual.Abrindo~q\ & ( (!\b~input_o\) # ((\b_anterior~q\) # (\fc2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100001111000011111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b~input_o\,
	datac => \ALT_INV_fc2~input_o\,
	datad => \ALT_INV_b_anterior~q\,
	datae => \ALT_INV_estado_atual.Aberto~q\,
	dataf => \ALT_INV_estado_atual.Abrindo~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y37_N47
\estado_atual.Aberto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Aberto~q\);

-- Location: LABCELL_X88_Y37_N21
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \estado_atual.BloqueadoF~q\ & ( \estado_atual.Fechando~q\ & ( \p~input_o\ ) ) ) # ( \estado_atual.BloqueadoF~q\ & ( !\estado_atual.Fechando~q\ & ( \p~input_o\ ) ) ) # ( !\estado_atual.BloqueadoF~q\ & ( !\estado_atual.Fechando~q\ 
-- & ( (!\fc1~input_o\ & \p~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_p~input_o\,
	datae => \ALT_INV_estado_atual.BloqueadoF~q\,
	dataf => \ALT_INV_estado_atual.Fechando~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X88_Y37_N23
\estado_atual.BloqueadoF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.BloqueadoF~q\);

-- Location: LABCELL_X88_Y37_N9
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado_atual.BloqueadoF~q\ & ( \estado_atual.Fechando~q\ & ( !\p~input_o\ ) ) ) # ( \estado_atual.BloqueadoF~q\ & ( !\estado_atual.Fechando~q\ & ( !\p~input_o\ ) ) ) # ( !\estado_atual.BloqueadoF~q\ & ( 
-- !\estado_atual.Fechando~q\ & ( (!\fc1~input_o\ & !\p~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fc1~input_o\,
	datac => \ALT_INV_p~input_o\,
	datae => \ALT_INV_estado_atual.BloqueadoF~q\,
	dataf => \ALT_INV_estado_atual.Fechando~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X88_Y37_N12
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \b_anterior~q\ & ( !\Selector3~0_combout\ ) ) # ( !\b_anterior~q\ & ( !\Selector3~0_combout\ & ( (!\b~input_o\) # ((!\estado_atual.Aberto~q\) # (\fc2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b~input_o\,
	datac => \ALT_INV_fc2~input_o\,
	datad => \ALT_INV_estado_atual.Aberto~q\,
	datae => \ALT_INV_b_anterior~q\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X88_Y37_N14
\estado_atual.Fechando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Fechando~q\);

-- Location: LABCELL_X27_Y50_N0
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


