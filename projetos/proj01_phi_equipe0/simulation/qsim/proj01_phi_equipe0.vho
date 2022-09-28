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

-- DATE "09/27/2022 17:00:19"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	sel_op : IN std_logic;
	resultado : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- resultado[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel_op : std_logic;
SIGNAL ww_resultado : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \g1:0:inst_somador_de_1bit|s~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \sel_op~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \g1:1:inst_somador_de_1bit|s~combout\ : std_logic;
SIGNAL \g1:1:inst_somador_de_1bit|cout~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst_seleciona_operacao|B[2]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \g1:2:inst_somador_de_1bit|s~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst_seleciona_operacao|B[3]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \g1:3:inst_somador_de_1bit|s~combout\ : std_logic;
SIGNAL \g1:1:inst_somador_de_1bit|ALT_INV_cout~combout\ : std_logic;
SIGNAL \inst_seleciona_operacao|ALT_INV_B[2]~0_combout\ : std_logic;
SIGNAL \inst_seleciona_operacao|ALT_INV_B[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_op~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel_op <= sel_op;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\g1:1:inst_somador_de_1bit|ALT_INV_cout~combout\ <= NOT \g1:1:inst_somador_de_1bit|cout~combout\;
\inst_seleciona_operacao|ALT_INV_B[2]~0_combout\ <= NOT \inst_seleciona_operacao|B[2]~0_combout\;
\inst_seleciona_operacao|ALT_INV_B[3]~1_combout\ <= NOT \inst_seleciona_operacao|B[3]~1_combout\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_sel_op~input_o\ <= NOT \sel_op~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;

-- Location: IOOBUF_X89_Y38_N22
\resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:0:inst_somador_de_1bit|s~0_combout\,
	devoe => ww_devoe,
	o => ww_resultado(0));

-- Location: IOOBUF_X89_Y38_N5
\resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:1:inst_somador_de_1bit|s~combout\,
	devoe => ww_devoe,
	o => ww_resultado(1));

-- Location: IOOBUF_X89_Y35_N45
\resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:2:inst_somador_de_1bit|s~combout\,
	devoe => ww_devoe,
	o => ww_resultado(2));

-- Location: IOOBUF_X89_Y35_N62
\resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:3:inst_somador_de_1bit|s~combout\,
	devoe => ww_devoe,
	o => ww_resultado(3));

-- Location: IOIBUF_X89_Y37_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\g1:0:inst_somador_de_1bit|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g1:0:inst_somador_de_1bit|s~0_combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \g1:0:inst_somador_de_1bit|s~0_combout\);

-- Location: IOIBUF_X89_Y36_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\sel_op~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_op,
	o => \sel_op~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\g1:1:inst_somador_de_1bit|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \g1:1:inst_somador_de_1bit|s~combout\ = ( \B[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (!\sel_op~input_o\ $ (!\A[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\A[1]~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\sel_op~input_o\ $ (\A[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ & ( \B[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010110101010010110101010101010101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_sel_op~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \g1:1:inst_somador_de_1bit|s~combout\);

-- Location: LABCELL_X88_Y36_N42
\g1:1:inst_somador_de_1bit|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \g1:1:inst_somador_de_1bit|cout~combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ $ (!\sel_op~input_o\)) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & 
-- (!\B[1]~input_o\ $ (!\sel_op~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011001010101011011110101010101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_sel_op~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \g1:1:inst_somador_de_1bit|cout~combout\);

-- Location: IOIBUF_X89_Y36_N55
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y36_N45
\inst_seleciona_operacao|B[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_seleciona_operacao|B[2]~0_combout\ = ( \B[1]~input_o\ & ( !\sel_op~input_o\ $ (!\B[2]~input_o\) ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ (((!\sel_op~input_o\) # (!\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel_op~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst_seleciona_operacao|B[2]~0_combout\);

-- Location: IOIBUF_X89_Y37_N38
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X88_Y36_N51
\g1:2:inst_somador_de_1bit|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \g1:2:inst_somador_de_1bit|s~combout\ = ( \A[2]~input_o\ & ( !\g1:1:inst_somador_de_1bit|cout~combout\ $ (\inst_seleciona_operacao|B[2]~0_combout\) ) ) # ( !\A[2]~input_o\ & ( !\g1:1:inst_somador_de_1bit|cout~combout\ $ 
-- (!\inst_seleciona_operacao|B[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \g1:1:inst_somador_de_1bit|ALT_INV_cout~combout\,
	datad => \inst_seleciona_operacao|ALT_INV_B[2]~0_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \g1:2:inst_somador_de_1bit|s~combout\);

-- Location: IOIBUF_X89_Y36_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X88_Y36_N48
\inst_seleciona_operacao|B[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_seleciona_operacao|B[3]~1_combout\ = ( \B[1]~input_o\ & ( !\B[3]~input_o\ $ (!\sel_op~input_o\) ) ) # ( !\B[1]~input_o\ & ( !\B[3]~input_o\ $ (((!\sel_op~input_o\) # ((!\B[0]~input_o\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101101100001100110110110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sel_op~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst_seleciona_operacao|B[3]~1_combout\);

-- Location: IOIBUF_X89_Y35_N95
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\g1:3:inst_somador_de_1bit|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \g1:3:inst_somador_de_1bit|s~combout\ = ( \A[3]~input_o\ & ( \A[2]~input_o\ & ( !\inst_seleciona_operacao|B[3]~1_combout\ $ (((\inst_seleciona_operacao|B[2]~0_combout\) # (\g1:1:inst_somador_de_1bit|cout~combout\))) ) ) ) # ( !\A[3]~input_o\ & ( 
-- \A[2]~input_o\ & ( !\inst_seleciona_operacao|B[3]~1_combout\ $ (((!\g1:1:inst_somador_de_1bit|cout~combout\ & !\inst_seleciona_operacao|B[2]~0_combout\))) ) ) ) # ( \A[3]~input_o\ & ( !\A[2]~input_o\ & ( !\inst_seleciona_operacao|B[3]~1_combout\ $ 
-- (((\g1:1:inst_somador_de_1bit|cout~combout\ & \inst_seleciona_operacao|B[2]~0_combout\))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[2]~input_o\ & ( !\inst_seleciona_operacao|B[3]~1_combout\ $ (((!\g1:1:inst_somador_de_1bit|cout~combout\) # 
-- (!\inst_seleciona_operacao|B[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100111100001100001100111100111100001100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \g1:1:inst_somador_de_1bit|ALT_INV_cout~combout\,
	datac => \inst_seleciona_operacao|ALT_INV_B[3]~1_combout\,
	datad => \inst_seleciona_operacao|ALT_INV_B[2]~0_combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \g1:3:inst_somador_de_1bit|s~combout\);

-- Location: MLABCELL_X15_Y33_N0
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


