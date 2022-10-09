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

-- DATE "10/09/2022 17:36:06"

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
	b : IN std_logic;
	p : IN std_logic;
	s0 : OUT std_logic;
	s1 : OUT std_logic
	);
END controle_portao;

-- Design Ports Information
-- s0	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_b : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \estado_atual.Aberto~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado_atual.Pause_AF~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.Fechado~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_atual.Pause_FA~q\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Pause_FA~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Fechado~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_p~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Aberto~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.Pause_AF~q\ : std_logic;
SIGNAL \ALT_INV_s0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_b <= b;
ww_p <= p;
s0 <= ww_s0;
s1 <= ww_s1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado_atual.Pause_FA~q\ <= NOT \estado_atual.Pause_FA~q\;
\ALT_INV_estado_atual.Fechado~q\ <= NOT \estado_atual.Fechado~q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_p~input_o\ <= NOT \p~input_o\;
\ALT_INV_estado_atual.Aberto~q\ <= NOT \estado_atual.Aberto~q\;
\ALT_INV_estado_atual.Pause_AF~q\ <= NOT \estado_atual.Pause_AF~q\;
\ALT_INV_s0~0_combout\ <= NOT \s0~0_combout\;

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X30_Y0_N19
\s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
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

-- Location: IOIBUF_X30_Y0_N1
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\p~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: LABCELL_X30_Y1_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado_atual.Aberto~q\ & ( \estado_atual.Pause_FA~q\ & ( (!\p~input_o\) # (!\b~input_o\) ) ) ) # ( !\estado_atual.Aberto~q\ & ( \estado_atual.Pause_FA~q\ & ( !\p~input_o\ ) ) ) # ( \estado_atual.Aberto~q\ & ( 
-- !\estado_atual.Pause_FA~q\ & ( (!\b~input_o\) # ((!\p~input_o\ & !\estado_atual.Fechado~q\)) ) ) ) # ( !\estado_atual.Aberto~q\ & ( !\estado_atual.Pause_FA~q\ & ( (!\p~input_o\ & (\b~input_o\ & !\estado_atual.Fechado~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111011001110110010101010101010101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p~input_o\,
	datab => \ALT_INV_b~input_o\,
	datac => \ALT_INV_estado_atual.Fechado~q\,
	datae => \ALT_INV_estado_atual.Aberto~q\,
	dataf => \ALT_INV_estado_atual.Pause_FA~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X30_Y0_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X30_Y1_N35
\estado_atual.Aberto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Aberto~q\);

-- Location: LABCELL_X30_Y1_N39
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado_atual.Pause_AF~q\ & ( \estado_atual.Aberto~q\ & ( \p~input_o\ ) ) ) # ( !\estado_atual.Pause_AF~q\ & ( \estado_atual.Aberto~q\ & ( (\p~input_o\ & \b~input_o\) ) ) ) # ( \estado_atual.Pause_AF~q\ & ( 
-- !\estado_atual.Aberto~q\ & ( \p~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p~input_o\,
	datac => \ALT_INV_b~input_o\,
	datae => \ALT_INV_estado_atual.Pause_AF~q\,
	dataf => \ALT_INV_estado_atual.Aberto~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X30_Y1_N41
\estado_atual.Pause_AF\ : dffeas
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
	q => \estado_atual.Pause_AF~q\);

-- Location: LABCELL_X30_Y1_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado_atual.Pause_AF~q\ & ( (\p~input_o\ & ((\estado_atual.Fechado~q\) # (\b~input_o\))) ) ) # ( !\estado_atual.Pause_AF~q\ & ( (!\b~input_o\ & (((\estado_atual.Fechado~q\)))) # (\b~input_o\ & (((!\estado_atual.Aberto~q\)) # 
-- (\p~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111111101001100011111110100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p~input_o\,
	datab => \ALT_INV_b~input_o\,
	datac => \ALT_INV_estado_atual.Aberto~q\,
	datad => \ALT_INV_estado_atual.Fechado~q\,
	dataf => \ALT_INV_estado_atual.Pause_AF~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X30_Y1_N14
\estado_atual.Fechado\ : dffeas
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
	q => \estado_atual.Fechado~q\);

-- Location: LABCELL_X30_Y1_N54
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado_atual.Pause_FA~q\ & ( \estado_atual.Fechado~q\ & ( \p~input_o\ ) ) ) # ( \estado_atual.Pause_FA~q\ & ( !\estado_atual.Fechado~q\ & ( \p~input_o\ ) ) ) # ( !\estado_atual.Pause_FA~q\ & ( !\estado_atual.Fechado~q\ & ( 
-- (\b~input_o\ & \p~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b~input_o\,
	datac => \ALT_INV_p~input_o\,
	datae => \ALT_INV_estado_atual.Pause_FA~q\,
	dataf => \ALT_INV_estado_atual.Fechado~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X30_Y1_N56
\estado_atual.Pause_FA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.Pause_FA~q\);

-- Location: LABCELL_X30_Y1_N15
\s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = ( \estado_atual.Fechado~q\ & ( \estado_atual.Pause_FA~q\ ) ) # ( !\estado_atual.Fechado~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_atual.Pause_FA~q\,
	dataf => \ALT_INV_estado_atual.Fechado~q\,
	combout => \s0~0_combout\);

-- Location: LABCELL_X30_Y1_N42
\s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = ( \estado_atual.Pause_AF~q\ ) # ( !\estado_atual.Pause_AF~q\ & ( !\estado_atual.Fechado~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_atual.Fechado~q\,
	dataf => \ALT_INV_estado_atual.Pause_AF~q\,
	combout => \s1~0_combout\);

-- Location: LABCELL_X33_Y34_N0
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


