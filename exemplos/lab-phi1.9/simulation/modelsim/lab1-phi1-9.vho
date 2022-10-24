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

-- DATE "10/24/2022 16:27:53"

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

ENTITY 	main IS
    PORT (
	Clk : IN std_logic;
	C : IN std_logic;
	S : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	D : BUFFER std_logic
	);
END main;

-- Design Ports Information
-- D	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \BC|prox_estado.Add~0_combout\ : std_logic;
SIGNAL \BC|estado_atual.Add~q\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \BO|Add0~13_sumout\ : std_logic;
SIGNAL \BC|estado_atual.Init~0_combout\ : std_logic;
SIGNAL \BC|estado_atual.Init~q\ : std_logic;
SIGNAL \BO|Add0~14\ : std_logic;
SIGNAL \BO|Add0~9_sumout\ : std_logic;
SIGNAL \BO|Add0~10\ : std_logic;
SIGNAL \BO|Add0~5_sumout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \BO|Add0~6\ : std_logic;
SIGNAL \BO|Add0~1_sumout\ : std_logic;
SIGNAL \S[3]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \BO|LessThan0~0_combout\ : std_logic;
SIGNAL \BO|LessThan0~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \BO|Add0~2\ : std_logic;
SIGNAL \BO|Add0~29_sumout\ : std_logic;
SIGNAL \S[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \BO|Add0~30\ : std_logic;
SIGNAL \BO|Add0~17_sumout\ : std_logic;
SIGNAL \S[5]~input_o\ : std_logic;
SIGNAL \S[7]~input_o\ : std_logic;
SIGNAL \S[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \BO|Add0~18\ : std_logic;
SIGNAL \BO|Add0~25_sumout\ : std_logic;
SIGNAL \BO|Add0~26\ : std_logic;
SIGNAL \BO|Add0~21_sumout\ : std_logic;
SIGNAL \BO|LessThan0~2_combout\ : std_logic;
SIGNAL \BO|LessThan0~3_combout\ : std_logic;
SIGNAL \BO|LessThan0~4_combout\ : std_logic;
SIGNAL \BO|LessThan0~5_combout\ : std_logic;
SIGNAL \BC|Selector0~0_combout\ : std_logic;
SIGNAL \BC|estado_atual.est_Wait~q\ : std_logic;
SIGNAL \BC|prox_estado.Disp~0_combout\ : std_logic;
SIGNAL \BC|prox_estado.Disp~1_combout\ : std_logic;
SIGNAL \BC|estado_atual.Disp~q\ : std_logic;
SIGNAL \BO|tot_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \BC|ALT_INV_estado_atual.Add~q\ : std_logic;
SIGNAL \BC|ALT_INV_estado_atual.Init~q\ : std_logic;
SIGNAL \BO|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \BO|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \BO|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \BO|ALT_INV_tot_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BO|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \BO|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \BO|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \BC|ALT_INV_prox_estado.Disp~0_combout\ : std_logic;
SIGNAL \BC|ALT_INV_estado_atual.est_Wait~q\ : std_logic;
SIGNAL \BC|ALT_INV_estado_atual.Disp~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_C <= C;
ww_S <= S;
ww_A <= A;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_S[4]~input_o\ <= NOT \S[4]~input_o\;
\ALT_INV_S[6]~input_o\ <= NOT \S[6]~input_o\;
\ALT_INV_S[7]~input_o\ <= NOT \S[7]~input_o\;
\ALT_INV_S[5]~input_o\ <= NOT \S[5]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_S[3]~input_o\ <= NOT \S[3]~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\BC|ALT_INV_estado_atual.Add~q\ <= NOT \BC|estado_atual.Add~q\;
\BC|ALT_INV_estado_atual.Init~q\ <= NOT \BC|estado_atual.Init~q\;
\BO|ALT_INV_LessThan0~5_combout\ <= NOT \BO|LessThan0~5_combout\;
\BO|ALT_INV_LessThan0~4_combout\ <= NOT \BO|LessThan0~4_combout\;
\BO|ALT_INV_LessThan0~3_combout\ <= NOT \BO|LessThan0~3_combout\;
\BO|ALT_INV_tot_val\(4) <= NOT \BO|tot_val\(4);
\BO|ALT_INV_LessThan0~2_combout\ <= NOT \BO|LessThan0~2_combout\;
\BO|ALT_INV_tot_val\(6) <= NOT \BO|tot_val\(6);
\BO|ALT_INV_tot_val\(7) <= NOT \BO|tot_val\(7);
\BO|ALT_INV_tot_val\(5) <= NOT \BO|tot_val\(5);
\BO|ALT_INV_LessThan0~1_combout\ <= NOT \BO|LessThan0~1_combout\;
\BO|ALT_INV_LessThan0~0_combout\ <= NOT \BO|LessThan0~0_combout\;
\BO|ALT_INV_tot_val\(0) <= NOT \BO|tot_val\(0);
\BO|ALT_INV_tot_val\(1) <= NOT \BO|tot_val\(1);
\BO|ALT_INV_tot_val\(2) <= NOT \BO|tot_val\(2);
\BO|ALT_INV_tot_val\(3) <= NOT \BO|tot_val\(3);
\BC|ALT_INV_prox_estado.Disp~0_combout\ <= NOT \BC|prox_estado.Disp~0_combout\;
\BC|ALT_INV_estado_atual.est_Wait~q\ <= NOT \BC|estado_atual.est_Wait~q\;
\BC|ALT_INV_estado_atual.Disp~q\ <= NOT \BC|estado_atual.Disp~q\;

-- Location: IOOBUF_X89_Y9_N5
\D~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BC|estado_atual.Disp~q\,
	devoe => ww_devoe,
	o => ww_D);

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y9_N38
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LABCELL_X88_Y40_N54
\BC|prox_estado.Add~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BC|prox_estado.Add~0_combout\ = ( \C~input_o\ & ( \BC|estado_atual.est_Wait~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_C~input_o\,
	dataf => \BC|ALT_INV_estado_atual.est_Wait~q\,
	combout => \BC|prox_estado.Add~0_combout\);

-- Location: FF_X88_Y40_N56
\BC|estado_atual.Add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BC|prox_estado.Add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BC|estado_atual.Add~q\);

-- Location: IOIBUF_X89_Y37_N21
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X87_Y40_N0
\BO|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~13_sumout\ = SUM(( \BO|tot_val\(0) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \BO|Add0~14\ = CARRY(( \BO|tot_val\(0) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \BO|ALT_INV_tot_val\(0),
	cin => GND,
	sumout => \BO|Add0~13_sumout\,
	cout => \BO|Add0~14\);

-- Location: MLABCELL_X87_Y40_N30
\BC|estado_atual.Init~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BC|estado_atual.Init~0_combout\ = ( !\BC|estado_atual.Disp~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \BC|ALT_INV_estado_atual.Disp~q\,
	combout => \BC|estado_atual.Init~0_combout\);

-- Location: FF_X87_Y40_N32
\BC|estado_atual.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BC|estado_atual.Init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BC|estado_atual.Init~q\);

-- Location: FF_X87_Y40_N2
\BO|tot_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~13_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(0));

-- Location: MLABCELL_X87_Y40_N3
\BO|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~9_sumout\ = SUM(( \BO|tot_val\(1) ) + ( \A[1]~input_o\ ) + ( \BO|Add0~14\ ))
-- \BO|Add0~10\ = CARRY(( \BO|tot_val\(1) ) + ( \A[1]~input_o\ ) + ( \BO|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	datad => \BO|ALT_INV_tot_val\(1),
	cin => \BO|Add0~14\,
	sumout => \BO|Add0~9_sumout\,
	cout => \BO|Add0~10\);

-- Location: FF_X87_Y40_N5
\BO|tot_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~9_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(1));

-- Location: MLABCELL_X87_Y40_N6
\BO|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~5_sumout\ = SUM(( \BO|tot_val\(2) ) + ( \A[2]~input_o\ ) + ( \BO|Add0~10\ ))
-- \BO|Add0~6\ = CARRY(( \BO|tot_val\(2) ) + ( \A[2]~input_o\ ) + ( \BO|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datad => \BO|ALT_INV_tot_val\(2),
	cin => \BO|Add0~10\,
	sumout => \BO|Add0~5_sumout\,
	cout => \BO|Add0~6\);

-- Location: FF_X87_Y40_N8
\BO|tot_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~5_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(2));

-- Location: IOIBUF_X89_Y37_N4
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X87_Y40_N9
\BO|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~1_sumout\ = SUM(( \BO|tot_val\(3) ) + ( \A[3]~input_o\ ) + ( \BO|Add0~6\ ))
-- \BO|Add0~2\ = CARRY(( \BO|tot_val\(3) ) + ( \A[3]~input_o\ ) + ( \BO|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \BO|ALT_INV_tot_val\(3),
	cin => \BO|Add0~6\,
	sumout => \BO|Add0~1_sumout\,
	cout => \BO|Add0~2\);

-- Location: FF_X87_Y40_N11
\BO|tot_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~1_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(3));

-- Location: IOIBUF_X89_Y37_N55
\S[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(3),
	o => \S[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: MLABCELL_X87_Y40_N39
\BO|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~0_combout\ = ( \BO|tot_val\(0) & ( (\S[1]~input_o\ & !\BO|tot_val\(1)) ) ) # ( !\BO|tot_val\(0) & ( (!\S[1]~input_o\ & (\S[0]~input_o\ & !\BO|tot_val\(1))) # (\S[1]~input_o\ & ((!\BO|tot_val\(1)) # (\S[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \BO|ALT_INV_tot_val\(1),
	dataf => \BO|ALT_INV_tot_val\(0),
	combout => \BO|LessThan0~0_combout\);

-- Location: MLABCELL_X87_Y40_N33
\BO|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~1_combout\ = ( \BO|LessThan0~0_combout\ & ( (!\BO|tot_val\(3) & (((!\BO|tot_val\(2)) # (\S[3]~input_o\)) # (\S[2]~input_o\))) # (\BO|tot_val\(3) & (\S[3]~input_o\ & ((!\BO|tot_val\(2)) # (\S[2]~input_o\)))) ) ) # ( !\BO|LessThan0~0_combout\ 
-- & ( (!\BO|tot_val\(3) & (((\S[2]~input_o\ & !\BO|tot_val\(2))) # (\S[3]~input_o\))) # (\BO|tot_val\(3) & (\S[2]~input_o\ & (!\BO|tot_val\(2) & \S[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110100010000001111010011010000111111011101000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \BO|ALT_INV_tot_val\(2),
	datac => \BO|ALT_INV_tot_val\(3),
	datad => \ALT_INV_S[3]~input_o\,
	dataf => \BO|ALT_INV_LessThan0~0_combout\,
	combout => \BO|LessThan0~1_combout\);

-- Location: IOIBUF_X89_Y38_N55
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X87_Y40_N12
\BO|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~29_sumout\ = SUM(( \BO|tot_val\(4) ) + ( \A[4]~input_o\ ) + ( \BO|Add0~2\ ))
-- \BO|Add0~30\ = CARRY(( \BO|tot_val\(4) ) + ( \A[4]~input_o\ ) + ( \BO|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \BO|ALT_INV_tot_val\(4),
	cin => \BO|Add0~2\,
	sumout => \BO|Add0~29_sumout\,
	cout => \BO|Add0~30\);

-- Location: FF_X87_Y40_N14
\BO|tot_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~29_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(4));

-- Location: IOIBUF_X89_Y35_N78
\S[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(4),
	o => \S[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X87_Y40_N15
\BO|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~17_sumout\ = SUM(( \BO|tot_val\(5) ) + ( \A[5]~input_o\ ) + ( \BO|Add0~30\ ))
-- \BO|Add0~18\ = CARRY(( \BO|tot_val\(5) ) + ( \A[5]~input_o\ ) + ( \BO|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \BO|ALT_INV_tot_val\(5),
	cin => \BO|Add0~30\,
	sumout => \BO|Add0~17_sumout\,
	cout => \BO|Add0~18\);

-- Location: FF_X87_Y40_N17
\BO|tot_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~17_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(5));

-- Location: IOIBUF_X89_Y36_N55
\S[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(5),
	o => \S[5]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\S[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(7),
	o => \S[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\S[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(6),
	o => \S[6]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X87_Y40_N18
\BO|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~25_sumout\ = SUM(( \BO|tot_val\(6) ) + ( \A[6]~input_o\ ) + ( \BO|Add0~18\ ))
-- \BO|Add0~26\ = CARRY(( \BO|tot_val\(6) ) + ( \A[6]~input_o\ ) + ( \BO|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \BO|ALT_INV_tot_val\(6),
	cin => \BO|Add0~18\,
	sumout => \BO|Add0~25_sumout\,
	cout => \BO|Add0~26\);

-- Location: FF_X87_Y40_N20
\BO|tot_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~25_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(6));

-- Location: MLABCELL_X87_Y40_N21
\BO|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|Add0~21_sumout\ = SUM(( \BO|tot_val\(7) ) + ( \A[7]~input_o\ ) + ( \BO|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datad => \BO|ALT_INV_tot_val\(7),
	cin => \BO|Add0~26\,
	sumout => \BO|Add0~21_sumout\);

-- Location: FF_X87_Y40_N23
\BO|tot_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BO|Add0~21_sumout\,
	clrn => \BC|estado_atual.Init~q\,
	ena => \BC|estado_atual.Add~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BO|tot_val\(7));

-- Location: MLABCELL_X87_Y40_N48
\BO|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~2_combout\ = ( \BO|tot_val\(6) & ( (\S[6]~input_o\ & (!\S[7]~input_o\ $ (\BO|tot_val\(7)))) ) ) # ( !\BO|tot_val\(6) & ( (!\S[6]~input_o\ & (!\S[7]~input_o\ $ (\BO|tot_val\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[7]~input_o\,
	datac => \ALT_INV_S[6]~input_o\,
	datad => \BO|ALT_INV_tot_val\(7),
	dataf => \BO|ALT_INV_tot_val\(6),
	combout => \BO|LessThan0~2_combout\);

-- Location: MLABCELL_X87_Y40_N54
\BO|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~3_combout\ = ( \S[5]~input_o\ & ( \BO|LessThan0~2_combout\ & ( (\BO|tot_val\(5) & (!\BO|tot_val\(4) $ (\S[4]~input_o\))) ) ) ) # ( !\S[5]~input_o\ & ( \BO|LessThan0~2_combout\ & ( (!\BO|tot_val\(5) & (!\BO|tot_val\(4) $ (\S[4]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011000000000000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BO|ALT_INV_tot_val\(4),
	datac => \ALT_INV_S[4]~input_o\,
	datad => \BO|ALT_INV_tot_val\(5),
	datae => \ALT_INV_S[5]~input_o\,
	dataf => \BO|ALT_INV_LessThan0~2_combout\,
	combout => \BO|LessThan0~3_combout\);

-- Location: MLABCELL_X87_Y40_N51
\BO|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~4_combout\ = ( \BO|tot_val\(6) & ( (\S[7]~input_o\ & !\BO|tot_val\(7)) ) ) # ( !\BO|tot_val\(6) & ( (!\S[6]~input_o\ & (\S[7]~input_o\ & !\BO|tot_val\(7))) # (\S[6]~input_o\ & ((!\BO|tot_val\(7)) # (\S[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[6]~input_o\,
	datab => \ALT_INV_S[7]~input_o\,
	datad => \BO|ALT_INV_tot_val\(7),
	dataf => \BO|ALT_INV_tot_val\(6),
	combout => \BO|LessThan0~4_combout\);

-- Location: MLABCELL_X87_Y40_N24
\BO|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BO|LessThan0~5_combout\ = ( !\BO|LessThan0~4_combout\ & ( \BO|LessThan0~2_combout\ & ( (!\S[5]~input_o\ & (((!\S[4]~input_o\) # (\BO|tot_val\(5))) # (\BO|tot_val\(4)))) # (\S[5]~input_o\ & (\BO|tot_val\(5) & ((!\S[4]~input_o\) # (\BO|tot_val\(4))))) ) ) 
-- ) # ( !\BO|LessThan0~4_combout\ & ( !\BO|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010100010111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[5]~input_o\,
	datab => \BO|ALT_INV_tot_val\(4),
	datac => \ALT_INV_S[4]~input_o\,
	datad => \BO|ALT_INV_tot_val\(5),
	datae => \BO|ALT_INV_LessThan0~4_combout\,
	dataf => \BO|ALT_INV_LessThan0~2_combout\,
	combout => \BO|LessThan0~5_combout\);

-- Location: MLABCELL_X87_Y40_N42
\BC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BC|Selector0~0_combout\ = ( \BO|LessThan0~3_combout\ & ( \BO|LessThan0~5_combout\ & ( ((!\BC|estado_atual.Init~q\) # ((\BC|prox_estado.Disp~0_combout\ & !\BO|LessThan0~1_combout\))) # (\BC|estado_atual.Add~q\) ) ) ) # ( !\BO|LessThan0~3_combout\ & ( 
-- \BO|LessThan0~5_combout\ & ( ((!\BC|estado_atual.Init~q\) # (\BC|estado_atual.Add~q\)) # (\BC|prox_estado.Disp~0_combout\) ) ) ) # ( \BO|LessThan0~3_combout\ & ( !\BO|LessThan0~5_combout\ & ( (!\BC|estado_atual.Init~q\) # (\BC|estado_atual.Add~q\) ) ) ) # 
-- ( !\BO|LessThan0~3_combout\ & ( !\BO|LessThan0~5_combout\ & ( (!\BC|estado_atual.Init~q\) # (\BC|estado_atual.Add~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111011101111111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BC|ALT_INV_prox_estado.Disp~0_combout\,
	datab => \BC|ALT_INV_estado_atual.Add~q\,
	datac => \BO|ALT_INV_LessThan0~1_combout\,
	datad => \BC|ALT_INV_estado_atual.Init~q\,
	datae => \BO|ALT_INV_LessThan0~3_combout\,
	dataf => \BO|ALT_INV_LessThan0~5_combout\,
	combout => \BC|Selector0~0_combout\);

-- Location: FF_X87_Y40_N44
\BC|estado_atual.est_Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BC|estado_atual.est_Wait~q\);

-- Location: LABCELL_X88_Y40_N0
\BC|prox_estado.Disp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BC|prox_estado.Disp~0_combout\ = ( !\C~input_o\ & ( \BC|estado_atual.est_Wait~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_C~input_o\,
	dataf => \BC|ALT_INV_estado_atual.est_Wait~q\,
	combout => \BC|prox_estado.Disp~0_combout\);

-- Location: MLABCELL_X87_Y40_N36
\BC|prox_estado.Disp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BC|prox_estado.Disp~1_combout\ = ( \BO|LessThan0~5_combout\ & ( (\BC|prox_estado.Disp~0_combout\ & (\BO|LessThan0~1_combout\ & \BO|LessThan0~3_combout\)) ) ) # ( !\BO|LessThan0~5_combout\ & ( \BC|prox_estado.Disp~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BC|ALT_INV_prox_estado.Disp~0_combout\,
	datac => \BO|ALT_INV_LessThan0~1_combout\,
	datad => \BO|ALT_INV_LessThan0~3_combout\,
	dataf => \BO|ALT_INV_LessThan0~5_combout\,
	combout => \BC|prox_estado.Disp~1_combout\);

-- Location: FF_X87_Y40_N38
\BC|estado_atual.Disp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BC|prox_estado.Disp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BC|estado_atual.Disp~q\);

-- Location: LABCELL_X55_Y12_N0
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


