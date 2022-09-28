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

-- DATE "09/15/2022 23:48:54"

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

ENTITY 	contador99 IS
    PORT (
	ck : IN std_logic;
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END contador99;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador99 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputCLKENA0_outclk\ : std_logic;
SIGNAL \conta_uni|vcont_s[0]~3_combout\ : std_logic;
SIGNAL \conta_uni|vcont_s[2]~1_combout\ : std_logic;
SIGNAL \conta_uni|vcont_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conta_uni|vcont_s~2_combout\ : std_logic;
SIGNAL \conta_uni|vcont_s~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux6~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux5~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux4~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux3~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux2~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux1~0_combout\ : std_logic;
SIGNAL \disp_uni|Mux0~0_combout\ : std_logic;
SIGNAL \conta_uni|Equal0~0_combout\ : std_logic;
SIGNAL \conta_uni|ckout_s~q\ : std_logic;
SIGNAL \conta_dez|vcont_s[0]~3_combout\ : std_logic;
SIGNAL \conta_dez|vcont_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conta_dez|vcont_s~2_combout\ : std_logic;
SIGNAL \conta_dez|vcont_s~0_combout\ : std_logic;
SIGNAL \conta_dez|vcont_s[2]~1_combout\ : std_logic;
SIGNAL \conta_dez|vcont_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \disp_dez|Mux6~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux5~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux4~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux3~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux2~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux1~0_combout\ : std_logic;
SIGNAL \disp_dez|Mux0~0_combout\ : std_logic;
SIGNAL \conta_uni|vcont_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conta_dez|vcont_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conta_dez|ALT_INV_vcont_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ck~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_ck~input_o\ : std_logic;
SIGNAL \conta_uni|ALT_INV_ckout_s~q\ : std_logic;
SIGNAL \disp_dez|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \conta_dez|ALT_INV_vcont_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp_uni|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \conta_uni|ALT_INV_vcont_s\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_ck <= ck;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\ <= NOT \conta_dez|vcont_s[3]~DUPLICATE_q\;
\conta_dez|ALT_INV_vcont_s[0]~DUPLICATE_q\ <= NOT \conta_dez|vcont_s[0]~DUPLICATE_q\;
\conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\ <= NOT \conta_uni|vcont_s[2]~DUPLICATE_q\;
\ALT_INV_ck~inputCLKENA0_outclk\ <= NOT \ck~inputCLKENA0_outclk\;
\ALT_INV_ck~input_o\ <= NOT \ck~input_o\;
\conta_uni|ALT_INV_ckout_s~q\ <= NOT \conta_uni|ckout_s~q\;
\disp_dez|ALT_INV_Mux0~0_combout\ <= NOT \disp_dez|Mux0~0_combout\;
\conta_dez|ALT_INV_vcont_s\(3) <= NOT \conta_dez|vcont_s\(3);
\conta_dez|ALT_INV_vcont_s\(2) <= NOT \conta_dez|vcont_s\(2);
\conta_dez|ALT_INV_vcont_s\(1) <= NOT \conta_dez|vcont_s\(1);
\conta_dez|ALT_INV_vcont_s\(0) <= NOT \conta_dez|vcont_s\(0);
\disp_uni|ALT_INV_Mux0~0_combout\ <= NOT \disp_uni|Mux0~0_combout\;
\conta_uni|ALT_INV_vcont_s\(3) <= NOT \conta_uni|vcont_s\(3);
\conta_uni|ALT_INV_vcont_s\(2) <= NOT \conta_uni|vcont_s\(2);
\conta_uni|ALT_INV_vcont_s\(1) <= NOT \conta_uni|vcont_s\(1);
\conta_uni|ALT_INV_vcont_s\(0) <= NOT \conta_uni|vcont_s\(0);

-- Location: IOOBUF_X89_Y37_N39
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X89_Y38_N22
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X89_Y35_N96
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X89_Y35_N79
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X89_Y38_N39
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X89_Y38_N56
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X89_Y35_N45
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_uni|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X89_Y36_N5
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y37_N22
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y36_N22
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y37_N56
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y36_N39
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y36_N56
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y37_N5
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_dez|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOIBUF_X89_Y35_N61
\ck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G10
\ck~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \ck~input_o\,
	outclk => \ck~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y35_N27
\conta_uni|vcont_s[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_uni|vcont_s[0]~3_combout\ = ( !\conta_uni|vcont_s\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \conta_uni|ALT_INV_vcont_s\(0),
	combout => \conta_uni|vcont_s[0]~3_combout\);

-- Location: FF_X88_Y35_N29
\conta_uni|vcont_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputCLKENA0_outclk\,
	d => \conta_uni|vcont_s[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|vcont_s\(0));

-- Location: FF_X88_Y35_N43
\conta_uni|vcont_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputCLKENA0_outclk\,
	d => \conta_uni|vcont_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|vcont_s\(2));

-- Location: LABCELL_X88_Y35_N42
\conta_uni|vcont_s[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_uni|vcont_s[2]~1_combout\ = !\conta_uni|vcont_s\(2) $ (((!\conta_uni|vcont_s\(0)) # (!\conta_uni|vcont_s\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(1),
	datad => \conta_uni|ALT_INV_vcont_s\(2),
	combout => \conta_uni|vcont_s[2]~1_combout\);

-- Location: FF_X88_Y35_N44
\conta_uni|vcont_s[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputCLKENA0_outclk\,
	d => \conta_uni|vcont_s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|vcont_s[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N0
\conta_uni|vcont_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_uni|vcont_s~2_combout\ = (!\conta_uni|vcont_s\(0) & (((\conta_uni|vcont_s\(3))))) # (\conta_uni|vcont_s\(0) & ((!\conta_uni|vcont_s[2]~DUPLICATE_q\ & (\conta_uni|vcont_s\(1) & \conta_uni|vcont_s\(3))) # (\conta_uni|vcont_s[2]~DUPLICATE_q\ & 
-- (!\conta_uni|vcont_s\(1) $ (!\conta_uni|vcont_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110111110000000011011111000000001101111100000000110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datac => \conta_uni|ALT_INV_vcont_s\(1),
	datad => \conta_uni|ALT_INV_vcont_s\(3),
	combout => \conta_uni|vcont_s~2_combout\);

-- Location: FF_X88_Y35_N1
\conta_uni|vcont_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputCLKENA0_outclk\,
	d => \conta_uni|vcont_s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|vcont_s\(3));

-- Location: LABCELL_X88_Y35_N57
\conta_uni|vcont_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_uni|vcont_s~0_combout\ = ( \conta_uni|vcont_s\(1) & ( \conta_uni|vcont_s\(3) & ( !\conta_uni|vcont_s\(0) ) ) ) # ( !\conta_uni|vcont_s\(1) & ( \conta_uni|vcont_s\(3) & ( (\conta_uni|vcont_s\(0) & \conta_uni|vcont_s[2]~DUPLICATE_q\) ) ) ) # ( 
-- \conta_uni|vcont_s\(1) & ( !\conta_uni|vcont_s\(3) & ( !\conta_uni|vcont_s\(0) ) ) ) # ( !\conta_uni|vcont_s\(1) & ( !\conta_uni|vcont_s\(3) & ( \conta_uni|vcont_s\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101000010001000100011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	dataf => \conta_uni|ALT_INV_vcont_s\(3),
	combout => \conta_uni|vcont_s~0_combout\);

-- Location: FF_X88_Y35_N59
\conta_uni|vcont_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputCLKENA0_outclk\,
	d => \conta_uni|vcont_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|vcont_s\(1));

-- Location: LABCELL_X88_Y35_N45
\disp_uni|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux6~0_combout\ = ( \conta_uni|vcont_s[2]~DUPLICATE_q\ & ( (!\conta_uni|vcont_s\(1) & (!\conta_uni|vcont_s\(0) $ (\conta_uni|vcont_s\(3)))) ) ) # ( !\conta_uni|vcont_s[2]~DUPLICATE_q\ & ( (\conta_uni|vcont_s\(0) & (!\conta_uni|vcont_s\(1) $ 
-- (\conta_uni|vcont_s\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(1),
	datac => \conta_uni|ALT_INV_vcont_s\(3),
	dataf => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	combout => \disp_uni|Mux6~0_combout\);

-- Location: LABCELL_X88_Y35_N30
\disp_uni|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux5~0_combout\ = ( \conta_uni|vcont_s\(1) & ( (!\conta_uni|vcont_s\(0) & ((\conta_uni|vcont_s[2]~DUPLICATE_q\))) # (\conta_uni|vcont_s\(0) & (\conta_uni|vcont_s\(3))) ) ) # ( !\conta_uni|vcont_s\(1) & ( (\conta_uni|vcont_s[2]~DUPLICATE_q\ & 
-- (!\conta_uni|vcont_s\(0) $ (!\conta_uni|vcont_s\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000110110001101100000110000001100001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(3),
	datac => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	combout => \disp_uni|Mux5~0_combout\);

-- Location: LABCELL_X88_Y35_N3
\disp_uni|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux4~0_combout\ = ( \conta_uni|vcont_s\(3) & ( (\conta_uni|vcont_s[2]~DUPLICATE_q\ & ((!\conta_uni|vcont_s\(0)) # (\conta_uni|vcont_s\(1)))) ) ) # ( !\conta_uni|vcont_s\(3) & ( (!\conta_uni|vcont_s\(0) & (!\conta_uni|vcont_s[2]~DUPLICATE_q\ & 
-- \conta_uni|vcont_s\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datac => \conta_uni|ALT_INV_vcont_s\(1),
	dataf => \conta_uni|ALT_INV_vcont_s\(3),
	combout => \disp_uni|Mux4~0_combout\);

-- Location: LABCELL_X88_Y35_N12
\disp_uni|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux3~0_combout\ = ( \conta_uni|vcont_s\(1) & ( (!\conta_uni|vcont_s\(0) & (\conta_uni|vcont_s\(3) & !\conta_uni|vcont_s[2]~DUPLICATE_q\)) # (\conta_uni|vcont_s\(0) & ((\conta_uni|vcont_s[2]~DUPLICATE_q\))) ) ) # ( !\conta_uni|vcont_s\(1) & ( 
-- (!\conta_uni|vcont_s\(3) & (!\conta_uni|vcont_s\(0) $ (!\conta_uni|vcont_s[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000001001010010010101001000010010000010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(3),
	datac => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	combout => \disp_uni|Mux3~0_combout\);

-- Location: LABCELL_X88_Y35_N39
\disp_uni|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux2~0_combout\ = ( \conta_uni|vcont_s\(1) & ( \conta_uni|vcont_s[2]~DUPLICATE_q\ & ( (\conta_uni|vcont_s\(0) & !\conta_uni|vcont_s\(3)) ) ) ) # ( !\conta_uni|vcont_s\(1) & ( \conta_uni|vcont_s[2]~DUPLICATE_q\ & ( !\conta_uni|vcont_s\(3) ) ) ) # 
-- ( \conta_uni|vcont_s\(1) & ( !\conta_uni|vcont_s[2]~DUPLICATE_q\ & ( (\conta_uni|vcont_s\(0) & !\conta_uni|vcont_s\(3)) ) ) ) # ( !\conta_uni|vcont_s\(1) & ( !\conta_uni|vcont_s[2]~DUPLICATE_q\ & ( \conta_uni|vcont_s\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datac => \conta_uni|ALT_INV_vcont_s\(3),
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	dataf => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	combout => \disp_uni|Mux2~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\disp_uni|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux1~0_combout\ = ( \conta_uni|vcont_s\(1) & ( (!\conta_uni|vcont_s\(3) & ((!\conta_uni|vcont_s[2]~DUPLICATE_q\) # (\conta_uni|vcont_s\(0)))) ) ) # ( !\conta_uni|vcont_s\(1) & ( (\conta_uni|vcont_s\(0) & (!\conta_uni|vcont_s\(3) $ 
-- (\conta_uni|vcont_s[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001110001001100010001000001010000011100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(3),
	datac => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	combout => \disp_uni|Mux1~0_combout\);

-- Location: LABCELL_X88_Y35_N18
\disp_uni|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_uni|Mux0~0_combout\ = ( \conta_uni|vcont_s\(1) & ( (!\conta_uni|vcont_s\(0)) # ((!\conta_uni|vcont_s[2]~DUPLICATE_q\) # (\conta_uni|vcont_s\(3))) ) ) # ( !\conta_uni|vcont_s\(1) & ( (!\conta_uni|vcont_s\(3) & ((\conta_uni|vcont_s[2]~DUPLICATE_q\))) 
-- # (\conta_uni|vcont_s\(3) & ((!\conta_uni|vcont_s[2]~DUPLICATE_q\) # (\conta_uni|vcont_s\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101111110111111101100111101001111011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(3),
	datac => \conta_uni|ALT_INV_vcont_s[2]~DUPLICATE_q\,
	datae => \conta_uni|ALT_INV_vcont_s\(1),
	combout => \disp_uni|Mux0~0_combout\);

-- Location: LABCELL_X88_Y35_N9
\conta_uni|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_uni|Equal0~0_combout\ = ( \conta_uni|vcont_s\(2) & ( \conta_uni|vcont_s\(3) ) ) # ( !\conta_uni|vcont_s\(2) & ( \conta_uni|vcont_s\(3) & ( (!\conta_uni|vcont_s\(0)) # (\conta_uni|vcont_s\(1)) ) ) ) # ( \conta_uni|vcont_s\(2) & ( 
-- !\conta_uni|vcont_s\(3) ) ) # ( !\conta_uni|vcont_s\(2) & ( !\conta_uni|vcont_s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_uni|ALT_INV_vcont_s\(0),
	datab => \conta_uni|ALT_INV_vcont_s\(1),
	datae => \conta_uni|ALT_INV_vcont_s\(2),
	dataf => \conta_uni|ALT_INV_vcont_s\(3),
	combout => \conta_uni|Equal0~0_combout\);

-- Location: FF_X88_Y35_N11
\conta_uni|ckout_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~input_o\,
	d => \conta_uni|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_uni|ckout_s~q\);

-- Location: MLABCELL_X87_Y35_N27
\conta_dez|vcont_s[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_dez|vcont_s[0]~3_combout\ = ( !\conta_dez|vcont_s\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conta_dez|ALT_INV_vcont_s\(0),
	combout => \conta_dez|vcont_s[0]~3_combout\);

-- Location: FF_X87_Y35_N17
\conta_dez|vcont_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s\(0));

-- Location: FF_X87_Y35_N16
\conta_dez|vcont_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N54
\conta_dez|vcont_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_dez|vcont_s~2_combout\ = ( \conta_dez|vcont_s[0]~DUPLICATE_q\ & ( (!\conta_dez|vcont_s\(2) & (\conta_dez|vcont_s\(1) & \conta_dez|vcont_s\(3))) # (\conta_dez|vcont_s\(2) & (!\conta_dez|vcont_s\(1) $ (!\conta_dez|vcont_s\(3)))) ) ) # ( 
-- !\conta_dez|vcont_s[0]~DUPLICATE_q\ & ( \conta_dez|vcont_s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101010110100000010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_dez|ALT_INV_vcont_s\(2),
	datac => \conta_dez|ALT_INV_vcont_s\(1),
	datad => \conta_dez|ALT_INV_vcont_s\(3),
	dataf => \conta_dez|ALT_INV_vcont_s[0]~DUPLICATE_q\,
	combout => \conta_dez|vcont_s~2_combout\);

-- Location: FF_X87_Y35_N38
\conta_dez|vcont_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s\(3));

-- Location: MLABCELL_X87_Y35_N21
\conta_dez|vcont_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_dez|vcont_s~0_combout\ = ( \conta_dez|vcont_s\(3) & ( \conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(0) ) ) ) # ( !\conta_dez|vcont_s\(3) & ( \conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(0) ) ) ) # ( \conta_dez|vcont_s\(3) & ( 
-- !\conta_dez|vcont_s\(1) & ( (\conta_dez|vcont_s\(0) & \conta_dez|vcont_s\(2)) ) ) ) # ( !\conta_dez|vcont_s\(3) & ( !\conta_dez|vcont_s\(1) & ( \conta_dez|vcont_s\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conta_dez|ALT_INV_vcont_s\(0),
	datad => \conta_dez|ALT_INV_vcont_s\(2),
	datae => \conta_dez|ALT_INV_vcont_s\(3),
	dataf => \conta_dez|ALT_INV_vcont_s\(1),
	combout => \conta_dez|vcont_s~0_combout\);

-- Location: FF_X87_Y35_N53
\conta_dez|vcont_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s\(1));

-- Location: MLABCELL_X87_Y35_N42
\conta_dez|vcont_s[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conta_dez|vcont_s[2]~1_combout\ = ( \conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(2) $ (!\conta_dez|vcont_s\(0)) ) ) # ( !\conta_dez|vcont_s\(1) & ( \conta_dez|vcont_s\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conta_dez|ALT_INV_vcont_s\(2),
	datad => \conta_dez|ALT_INV_vcont_s\(0),
	dataf => \conta_dez|ALT_INV_vcont_s\(1),
	combout => \conta_dez|vcont_s[2]~1_combout\);

-- Location: FF_X87_Y35_N26
\conta_dez|vcont_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s\(2));

-- Location: FF_X87_Y35_N37
\conta_dez|vcont_s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \conta_uni|ALT_INV_ckout_s~q\,
	asdata => \conta_dez|vcont_s~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta_dez|vcont_s[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N0
\disp_dez|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux6~0_combout\ = ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( \conta_dez|vcont_s\(1) & ( (\conta_dez|vcont_s\(0) & !\conta_dez|vcont_s\(2)) ) ) ) # ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( !\conta_dez|vcont_s\(1) & ( (\conta_dez|vcont_s\(0) & 
-- \conta_dez|vcont_s\(2)) ) ) ) # ( !\conta_dez|vcont_s[3]~DUPLICATE_q\ & ( !\conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(0) $ (!\conta_dez|vcont_s\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conta_dez|ALT_INV_vcont_s\(0),
	datac => \conta_dez|ALT_INV_vcont_s\(2),
	datae => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	dataf => \conta_dez|ALT_INV_vcont_s\(1),
	combout => \disp_dez|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y35_N51
\disp_dez|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux5~0_combout\ = ( \conta_dez|vcont_s\(1) & ( \conta_dez|vcont_s\(0) & ( \conta_dez|vcont_s[3]~DUPLICATE_q\ ) ) ) # ( !\conta_dez|vcont_s\(1) & ( \conta_dez|vcont_s\(0) & ( (\conta_dez|vcont_s\(2) & !\conta_dez|vcont_s[3]~DUPLICATE_q\) ) ) ) # 
-- ( \conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(0) & ( \conta_dez|vcont_s\(2) ) ) ) # ( !\conta_dez|vcont_s\(1) & ( !\conta_dez|vcont_s\(0) & ( (\conta_dez|vcont_s\(2) & \conta_dez|vcont_s[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_dez|ALT_INV_vcont_s\(2),
	datac => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	datae => \conta_dez|ALT_INV_vcont_s\(1),
	dataf => \conta_dez|ALT_INV_vcont_s\(0),
	combout => \disp_dez|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y35_N30
\disp_dez|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux4~0_combout\ = ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( \conta_dez|vcont_s\(0) & ( (\conta_dez|vcont_s\(2) & \conta_dez|vcont_s\(1)) ) ) ) # ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( !\conta_dez|vcont_s\(0) & ( \conta_dez|vcont_s\(2) ) ) ) # ( 
-- !\conta_dez|vcont_s[3]~DUPLICATE_q\ & ( !\conta_dez|vcont_s\(0) & ( (!\conta_dez|vcont_s\(2) & \conta_dez|vcont_s\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_dez|ALT_INV_vcont_s\(2),
	datac => \conta_dez|ALT_INV_vcont_s\(1),
	datae => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	dataf => \conta_dez|ALT_INV_vcont_s\(0),
	combout => \disp_dez|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y35_N39
\disp_dez|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux3~0_combout\ = ( \conta_dez|vcont_s\(2) & ( (!\conta_dez|vcont_s\(0) & (!\conta_dez|vcont_s[3]~DUPLICATE_q\ & !\conta_dez|vcont_s\(1))) # (\conta_dez|vcont_s\(0) & ((\conta_dez|vcont_s\(1)))) ) ) # ( !\conta_dez|vcont_s\(2) & ( 
-- (!\conta_dez|vcont_s[3]~DUPLICATE_q\ & (\conta_dez|vcont_s\(0) & !\conta_dez|vcont_s\(1))) # (\conta_dez|vcont_s[3]~DUPLICATE_q\ & (!\conta_dez|vcont_s\(0) & \conta_dez|vcont_s\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000110000000000111100001100001100001100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	datac => \conta_dez|ALT_INV_vcont_s\(0),
	datad => \conta_dez|ALT_INV_vcont_s\(1),
	datae => \conta_dez|ALT_INV_vcont_s\(2),
	combout => \disp_dez|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y35_N6
\disp_dez|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux2~0_combout\ = ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( \conta_dez|vcont_s\(0) & ( (!\conta_dez|vcont_s\(2) & !\conta_dez|vcont_s\(1)) ) ) ) # ( !\conta_dez|vcont_s[3]~DUPLICATE_q\ & ( \conta_dez|vcont_s\(0) ) ) # ( 
-- !\conta_dez|vcont_s[3]~DUPLICATE_q\ & ( !\conta_dez|vcont_s\(0) & ( (\conta_dez|vcont_s\(2) & !\conta_dez|vcont_s\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_dez|ALT_INV_vcont_s\(2),
	datac => \conta_dez|ALT_INV_vcont_s\(1),
	datae => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	dataf => \conta_dez|ALT_INV_vcont_s\(0),
	combout => \disp_dez|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y35_N24
\disp_dez|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux1~0_combout\ = ( \conta_dez|vcont_s[3]~DUPLICATE_q\ & ( (\conta_dez|vcont_s\(0) & (!\conta_dez|vcont_s\(1) & \conta_dez|vcont_s\(2))) ) ) # ( !\conta_dez|vcont_s[3]~DUPLICATE_q\ & ( (!\conta_dez|vcont_s\(0) & (\conta_dez|vcont_s\(1) & 
-- !\conta_dez|vcont_s\(2))) # (\conta_dez|vcont_s\(0) & ((!\conta_dez|vcont_s\(2)) # (\conta_dez|vcont_s\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conta_dez|ALT_INV_vcont_s\(0),
	datac => \conta_dez|ALT_INV_vcont_s\(1),
	datad => \conta_dez|ALT_INV_vcont_s\(2),
	dataf => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	combout => \disp_dez|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y35_N57
\disp_dez|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_dez|Mux0~0_combout\ = ( \conta_dez|vcont_s\(1) & ( (!\conta_dez|vcont_s\(2)) # ((!\conta_dez|vcont_s\(0)) # (\conta_dez|vcont_s[3]~DUPLICATE_q\)) ) ) # ( !\conta_dez|vcont_s\(1) & ( (!\conta_dez|vcont_s\(2) & (\conta_dez|vcont_s[3]~DUPLICATE_q\)) # 
-- (\conta_dez|vcont_s\(2) & ((!\conta_dez|vcont_s[3]~DUPLICATE_q\) # (\conta_dez|vcont_s\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101100111011001110110011111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conta_dez|ALT_INV_vcont_s\(2),
	datab => \conta_dez|ALT_INV_vcont_s[3]~DUPLICATE_q\,
	datac => \conta_dez|ALT_INV_vcont_s\(0),
	dataf => \conta_dez|ALT_INV_vcont_s\(1),
	combout => \disp_dez|Mux0~0_combout\);

-- Location: LABCELL_X61_Y49_N3
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


