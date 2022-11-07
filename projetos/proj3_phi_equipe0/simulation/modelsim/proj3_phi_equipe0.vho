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

-- DATE "11/07/2022 19:32:46"

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

ENTITY 	maquina_de_vendas IS
    PORT (
	Clk : IN std_logic;
	M : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	V : IN std_logic_vector(7 DOWNTO 0);
	R1 : IN std_logic_vector(7 DOWNTO 0);
	R2 : IN std_logic_vector(7 DOWNTO 0);
	F1 : BUFFER std_logic;
	F2 : BUFFER std_logic;
	NT : BUFFER std_logic;
	VT : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END maquina_de_vendas;

-- Design Ports Information
-- F1	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VT[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquina_de_vendas IS
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
SIGNAL ww_M : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_V : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_F1 : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_NT : std_logic;
SIGNAL ww_VT : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \R2[2]~input_o\ : std_logic;
SIGNAL \R1[2]~input_o\ : std_logic;
SIGNAL \V[2]~input_o\ : std_logic;
SIGNAL \V[1]~input_o\ : std_logic;
SIGNAL \V[0]~input_o\ : std_logic;
SIGNAL \inst_BO|Add0~5_sumout\ : std_logic;
SIGNAL \R1[7]~input_o\ : std_logic;
SIGNAL \V[7]~input_o\ : std_logic;
SIGNAL \V[6]~input_o\ : std_logic;
SIGNAL \V[5]~input_o\ : std_logic;
SIGNAL \V[4]~input_o\ : std_logic;
SIGNAL \V[3]~input_o\ : std_logic;
SIGNAL \inst_BO|Add0~14\ : std_logic;
SIGNAL \inst_BO|Add0~1_sumout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \R1[6]~input_o\ : std_logic;
SIGNAL \R2[6]~input_o\ : std_logic;
SIGNAL \inst_BO|r[6]~1_combout\ : std_logic;
SIGNAL \R2[7]~input_o\ : std_logic;
SIGNAL \inst_BO|LessThan0~5_combout\ : std_logic;
SIGNAL \R1[5]~input_o\ : std_logic;
SIGNAL \R2[5]~input_o\ : std_logic;
SIGNAL \inst_BO|LessThan0~6_combout\ : std_logic;
SIGNAL \R2[4]~input_o\ : std_logic;
SIGNAL \R1[4]~input_o\ : std_logic;
SIGNAL \inst_BO|LessThan0~7_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~8_combout\ : std_logic;
SIGNAL \inst_BO|r[7]~2_combout\ : std_logic;
SIGNAL \inst_BO|r[5]~3_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~11_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~9_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~12_combout\ : std_logic;
SIGNAL \inst_BC|Selector1~0_combout\ : std_logic;
SIGNAL \inst_BC|Selector1~1_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Espera1~q\ : std_logic;
SIGNAL \inst_BC|prox_estado.Soma1~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Soma1~q\ : std_logic;
SIGNAL \inst_BC|Selector3~0_combout\ : std_logic;
SIGNAL \inst_BC|Selector3~1_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Espera2~q\ : std_logic;
SIGNAL \inst_BC|prox_estado.Soma2~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Soma2~q\ : std_logic;
SIGNAL \inst_BC|tot_ld~0_combout\ : std_logic;
SIGNAL \inst_BO|Add0~2\ : std_logic;
SIGNAL \inst_BO|Add0~29_sumout\ : std_logic;
SIGNAL \inst_BO|Add0~30\ : std_logic;
SIGNAL \inst_BO|Add0~25_sumout\ : std_logic;
SIGNAL \inst_BO|Add0~26\ : std_logic;
SIGNAL \inst_BO|Add0~17_sumout\ : std_logic;
SIGNAL \inst_BO|Add0~18\ : std_logic;
SIGNAL \inst_BO|Add0~21_sumout\ : std_logic;
SIGNAL \R1[3]~input_o\ : std_logic;
SIGNAL \R2[3]~input_o\ : std_logic;
SIGNAL \R1[1]~input_o\ : std_logic;
SIGNAL \R2[1]~input_o\ : std_logic;
SIGNAL \R1[0]~input_o\ : std_logic;
SIGNAL \R2[0]~input_o\ : std_logic;
SIGNAL \inst_BO|Add1~34_cout\ : std_logic;
SIGNAL \inst_BO|Add1~2\ : std_logic;
SIGNAL \inst_BO|Add1~6\ : std_logic;
SIGNAL \inst_BO|Add1~10\ : std_logic;
SIGNAL \inst_BO|Add1~14\ : std_logic;
SIGNAL \inst_BO|Add1~18\ : std_logic;
SIGNAL \inst_BO|Add1~22\ : std_logic;
SIGNAL \inst_BO|Add1~26\ : std_logic;
SIGNAL \inst_BO|Add1~29_sumout\ : std_logic;
SIGNAL \inst_BO|LessThan0~10_combout\ : std_logic;
SIGNAL \inst_BC|prox_estado.Cal_troco1~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Cal_troco1~q\ : std_logic;
SIGNAL \inst_BO|Add1~25_sumout\ : std_logic;
SIGNAL \inst_BC|prox_estado.Libera_troco1~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Libera_troco1~q\ : std_logic;
SIGNAL \inst_BC|prox_estado.Cal_troco2~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Cal_troco2~q\ : std_logic;
SIGNAL \inst_BC|prox_estado.Libera_troco2~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Libera_troco2~q\ : std_logic;
SIGNAL \inst_BC|WideOr5~combout\ : std_logic;
SIGNAL \inst_BO|Add0~6\ : std_logic;
SIGNAL \inst_BO|Add0~9_sumout\ : std_logic;
SIGNAL \inst_BO|Add0~10\ : std_logic;
SIGNAL \inst_BO|Add0~13_sumout\ : std_logic;
SIGNAL \inst_BO|LessThan0~3_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~1_combout\ : std_logic;
SIGNAL \inst_BO|r[3]~0_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~2_combout\ : std_logic;
SIGNAL \inst_BO|LessThan0~4_combout\ : std_logic;
SIGNAL \inst_BO|val_vt[1]~0_combout\ : std_logic;
SIGNAL \inst_BO|val_vt[1]~1_combout\ : std_logic;
SIGNAL \inst_BO|Add1~1_sumout\ : std_logic;
SIGNAL \inst_BC|Selector4~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Libera_prod2~q\ : std_logic;
SIGNAL \inst_BC|Selector0~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Inicial~q\ : std_logic;
SIGNAL \inst_BC|WideOr7~combout\ : std_logic;
SIGNAL \inst_BO|Add1~13_sumout\ : std_logic;
SIGNAL \inst_BO|Add1~17_sumout\ : std_logic;
SIGNAL \inst_BO|Add1~9_sumout\ : std_logic;
SIGNAL \inst_BO|Add1~5_sumout\ : std_logic;
SIGNAL \inst_BO|Add1~21_sumout\ : std_logic;
SIGNAL \inst_BO|LessThan1~0_combout\ : std_logic;
SIGNAL \inst_BC|Selector2~0_combout\ : std_logic;
SIGNAL \inst_BC|estado_atual.Libera_prod1~q\ : std_logic;
SIGNAL \inst_BC|WideOr5~0_combout\ : std_logic;
SIGNAL \inst_BO|val_tot\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_BO|val_vt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_V[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_V[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_M~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \inst_BO|ALT_INV_val_vt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_BC|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Soma2~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Soma1~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Espera2~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Espera1~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Inicial~q\ : std_logic;
SIGNAL \inst_BO|ALT_INV_val_vt[1]~1_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_val_vt[1]~0_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_r[5]~3_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_r[7]~2_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_val_tot\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_BO|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_r[6]~1_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_r[3]~0_combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Cal_troco2~q\ : std_logic;
SIGNAL \inst_BO|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Cal_troco1~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Libera_troco2~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Libera_troco1~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Libera_prod2~q\ : std_logic;
SIGNAL \inst_BC|ALT_INV_estado_atual.Libera_prod1~q\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst_BO|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_M <= M;
ww_B1 <= B1;
ww_B2 <= B2;
ww_V <= V;
ww_R1 <= R1;
ww_R2 <= R2;
F1 <= ww_F1;
F2 <= ww_F2;
NT <= ww_NT;
VT <= ww_VT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_V[4]~input_o\ <= NOT \V[4]~input_o\;
\ALT_INV_V[5]~input_o\ <= NOT \V[5]~input_o\;
\ALT_INV_V[7]~input_o\ <= NOT \V[7]~input_o\;
\ALT_INV_V[6]~input_o\ <= NOT \V[6]~input_o\;
\ALT_INV_V[2]~input_o\ <= NOT \V[2]~input_o\;
\ALT_INV_V[1]~input_o\ <= NOT \V[1]~input_o\;
\ALT_INV_V[0]~input_o\ <= NOT \V[0]~input_o\;
\ALT_INV_V[3]~input_o\ <= NOT \V[3]~input_o\;
\ALT_INV_M~input_o\ <= NOT \M~input_o\;
\ALT_INV_R2[4]~input_o\ <= NOT \R2[4]~input_o\;
\ALT_INV_R1[4]~input_o\ <= NOT \R1[4]~input_o\;
\ALT_INV_R2[5]~input_o\ <= NOT \R2[5]~input_o\;
\ALT_INV_R1[5]~input_o\ <= NOT \R1[5]~input_o\;
\ALT_INV_R2[6]~input_o\ <= NOT \R2[6]~input_o\;
\ALT_INV_R1[6]~input_o\ <= NOT \R1[6]~input_o\;
\ALT_INV_R2[7]~input_o\ <= NOT \R2[7]~input_o\;
\ALT_INV_R1[7]~input_o\ <= NOT \R1[7]~input_o\;
\ALT_INV_R2[2]~input_o\ <= NOT \R2[2]~input_o\;
\ALT_INV_R1[2]~input_o\ <= NOT \R1[2]~input_o\;
\ALT_INV_R1[1]~input_o\ <= NOT \R1[1]~input_o\;
\ALT_INV_R1[0]~input_o\ <= NOT \R1[0]~input_o\;
\ALT_INV_R2[1]~input_o\ <= NOT \R2[1]~input_o\;
\ALT_INV_R2[0]~input_o\ <= NOT \R2[0]~input_o\;
\ALT_INV_R2[3]~input_o\ <= NOT \R2[3]~input_o\;
\ALT_INV_R1[3]~input_o\ <= NOT \R1[3]~input_o\;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\inst_BO|ALT_INV_val_vt\(7) <= NOT \inst_BO|val_vt\(7);
\inst_BO|ALT_INV_val_vt\(6) <= NOT \inst_BO|val_vt\(6);
\inst_BO|ALT_INV_val_vt\(5) <= NOT \inst_BO|val_vt\(5);
\inst_BO|ALT_INV_val_vt\(4) <= NOT \inst_BO|val_vt\(4);
\inst_BO|ALT_INV_val_vt\(3) <= NOT \inst_BO|val_vt\(3);
\inst_BO|ALT_INV_val_vt\(2) <= NOT \inst_BO|val_vt\(2);
\inst_BO|ALT_INV_val_vt\(1) <= NOT \inst_BO|val_vt\(1);
\inst_BO|ALT_INV_val_vt\(0) <= NOT \inst_BO|val_vt\(0);
\inst_BC|ALT_INV_Selector3~0_combout\ <= NOT \inst_BC|Selector3~0_combout\;
\inst_BC|ALT_INV_Selector1~0_combout\ <= NOT \inst_BC|Selector1~0_combout\;
\inst_BO|ALT_INV_LessThan0~12_combout\ <= NOT \inst_BO|LessThan0~12_combout\;
\inst_BC|ALT_INV_WideOr5~combout\ <= NOT \inst_BC|WideOr5~combout\;
\inst_BC|ALT_INV_WideOr7~combout\ <= NOT \inst_BC|WideOr7~combout\;
\inst_BC|ALT_INV_estado_atual.Soma2~q\ <= NOT \inst_BC|estado_atual.Soma2~q\;
\inst_BC|ALT_INV_estado_atual.Soma1~q\ <= NOT \inst_BC|estado_atual.Soma1~q\;
\inst_BC|ALT_INV_estado_atual.Espera2~q\ <= NOT \inst_BC|estado_atual.Espera2~q\;
\inst_BC|ALT_INV_estado_atual.Espera1~q\ <= NOT \inst_BC|estado_atual.Espera1~q\;
\inst_BC|ALT_INV_estado_atual.Inicial~q\ <= NOT \inst_BC|estado_atual.Inicial~q\;
\inst_BO|ALT_INV_val_vt[1]~1_combout\ <= NOT \inst_BO|val_vt[1]~1_combout\;
\inst_BO|ALT_INV_val_vt[1]~0_combout\ <= NOT \inst_BO|val_vt[1]~0_combout\;
\inst_BO|ALT_INV_LessThan0~11_combout\ <= NOT \inst_BO|LessThan0~11_combout\;
\inst_BO|ALT_INV_r[5]~3_combout\ <= NOT \inst_BO|r[5]~3_combout\;
\inst_BO|ALT_INV_r[7]~2_combout\ <= NOT \inst_BO|r[7]~2_combout\;
\inst_BO|ALT_INV_LessThan0~10_combout\ <= NOT \inst_BO|LessThan0~10_combout\;
\inst_BO|ALT_INV_LessThan0~9_combout\ <= NOT \inst_BO|LessThan0~9_combout\;
\inst_BO|ALT_INV_LessThan0~8_combout\ <= NOT \inst_BO|LessThan0~8_combout\;
\inst_BO|ALT_INV_LessThan0~7_combout\ <= NOT \inst_BO|LessThan0~7_combout\;
\inst_BO|ALT_INV_val_tot\(4) <= NOT \inst_BO|val_tot\(4);
\inst_BO|ALT_INV_LessThan0~6_combout\ <= NOT \inst_BO|LessThan0~6_combout\;
\inst_BO|ALT_INV_val_tot\(5) <= NOT \inst_BO|val_tot\(5);
\inst_BO|ALT_INV_r[6]~1_combout\ <= NOT \inst_BO|r[6]~1_combout\;
\inst_BO|ALT_INV_LessThan0~5_combout\ <= NOT \inst_BO|LessThan0~5_combout\;
\inst_BO|ALT_INV_val_tot\(7) <= NOT \inst_BO|val_tot\(7);
\inst_BO|ALT_INV_val_tot\(6) <= NOT \inst_BO|val_tot\(6);
\inst_BO|ALT_INV_LessThan0~4_combout\ <= NOT \inst_BO|LessThan0~4_combout\;
\inst_BO|ALT_INV_LessThan0~3_combout\ <= NOT \inst_BO|LessThan0~3_combout\;
\inst_BO|ALT_INV_LessThan0~2_combout\ <= NOT \inst_BO|LessThan0~2_combout\;
\inst_BO|ALT_INV_val_tot\(2) <= NOT \inst_BO|val_tot\(2);
\inst_BO|ALT_INV_LessThan0~1_combout\ <= NOT \inst_BO|LessThan0~1_combout\;
\inst_BO|ALT_INV_LessThan0~0_combout\ <= NOT \inst_BO|LessThan0~0_combout\;
\inst_BO|ALT_INV_val_tot\(1) <= NOT \inst_BO|val_tot\(1);
\inst_BO|ALT_INV_val_tot\(0) <= NOT \inst_BO|val_tot\(0);
\inst_BO|ALT_INV_r[3]~0_combout\ <= NOT \inst_BO|r[3]~0_combout\;
\inst_BO|ALT_INV_val_tot\(3) <= NOT \inst_BO|val_tot\(3);
\inst_BC|ALT_INV_estado_atual.Cal_troco2~q\ <= NOT \inst_BC|estado_atual.Cal_troco2~q\;
\inst_BO|ALT_INV_LessThan1~0_combout\ <= NOT \inst_BO|LessThan1~0_combout\;
\inst_BC|ALT_INV_estado_atual.Cal_troco1~q\ <= NOT \inst_BC|estado_atual.Cal_troco1~q\;
\inst_BC|ALT_INV_WideOr5~0_combout\ <= NOT \inst_BC|WideOr5~0_combout\;
\inst_BC|ALT_INV_estado_atual.Libera_troco2~q\ <= NOT \inst_BC|estado_atual.Libera_troco2~q\;
\inst_BC|ALT_INV_estado_atual.Libera_troco1~q\ <= NOT \inst_BC|estado_atual.Libera_troco1~q\;
\inst_BC|ALT_INV_estado_atual.Libera_prod2~q\ <= NOT \inst_BC|estado_atual.Libera_prod2~q\;
\inst_BC|ALT_INV_estado_atual.Libera_prod1~q\ <= NOT \inst_BC|estado_atual.Libera_prod1~q\;
\inst_BO|ALT_INV_Add1~29_sumout\ <= NOT \inst_BO|Add1~29_sumout\;
\inst_BO|ALT_INV_Add1~25_sumout\ <= NOT \inst_BO|Add1~25_sumout\;
\inst_BO|ALT_INV_Add1~21_sumout\ <= NOT \inst_BO|Add1~21_sumout\;
\inst_BO|ALT_INV_Add1~17_sumout\ <= NOT \inst_BO|Add1~17_sumout\;
\inst_BO|ALT_INV_Add1~13_sumout\ <= NOT \inst_BO|Add1~13_sumout\;
\inst_BO|ALT_INV_Add1~9_sumout\ <= NOT \inst_BO|Add1~9_sumout\;
\inst_BO|ALT_INV_Add1~5_sumout\ <= NOT \inst_BO|Add1~5_sumout\;
\inst_BO|ALT_INV_Add1~1_sumout\ <= NOT \inst_BO|Add1~1_sumout\;

-- Location: IOOBUF_X58_Y0_N76
\F1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BC|estado_atual.Libera_prod1~q\,
	devoe => ww_devoe,
	o => ww_F1);

-- Location: IOOBUF_X66_Y0_N42
\F2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BC|estado_atual.Libera_prod2~q\,
	devoe => ww_devoe,
	o => ww_F2);

-- Location: IOOBUF_X58_Y0_N93
\NT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BC|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_NT);

-- Location: IOOBUF_X89_Y4_N62
\VT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(0),
	devoe => ww_devoe,
	o => ww_VT(0));

-- Location: IOOBUF_X62_Y0_N19
\VT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(1),
	devoe => ww_devoe,
	o => ww_VT(1));

-- Location: IOOBUF_X62_Y0_N2
\VT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(2),
	devoe => ww_devoe,
	o => ww_VT(2));

-- Location: IOOBUF_X89_Y6_N22
\VT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(3),
	devoe => ww_devoe,
	o => ww_VT(3));

-- Location: IOOBUF_X62_Y0_N53
\VT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(4),
	devoe => ww_devoe,
	o => ww_VT(4));

-- Location: IOOBUF_X89_Y6_N56
\VT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(5),
	devoe => ww_devoe,
	o => ww_VT(5));

-- Location: IOOBUF_X72_Y0_N53
\VT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(6),
	devoe => ww_devoe,
	o => ww_VT(6));

-- Location: IOOBUF_X72_Y0_N36
\VT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_BO|val_vt\(7),
	devoe => ww_devoe,
	o => ww_VT(7));

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

-- Location: IOIBUF_X70_Y0_N35
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\R2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(2),
	o => \R2[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\R1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(2),
	o => \R1[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\V[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(2),
	o => \V[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\V[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(1),
	o => \V[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\V[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(0),
	o => \V[0]~input_o\);

-- Location: MLABCELL_X72_Y3_N30
\inst_BO|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~5_sumout\ = SUM(( \inst_BO|val_tot\(0) ) + ( \V[0]~input_o\ ) + ( !VCC ))
-- \inst_BO|Add0~6\ = CARRY(( \inst_BO|val_tot\(0) ) + ( \V[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_V[0]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(0),
	cin => GND,
	sumout => \inst_BO|Add0~5_sumout\,
	cout => \inst_BO|Add0~6\);

-- Location: IOIBUF_X64_Y0_N1
\R1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(7),
	o => \R1[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\V[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(7),
	o => \V[7]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\V[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(6),
	o => \V[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\V[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(5),
	o => \V[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\V[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(4),
	o => \V[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\V[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(3),
	o => \V[3]~input_o\);

-- Location: MLABCELL_X72_Y3_N36
\inst_BO|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~13_sumout\ = SUM(( \inst_BO|val_tot\(2) ) + ( \V[2]~input_o\ ) + ( \inst_BO|Add0~10\ ))
-- \inst_BO|Add0~14\ = CARRY(( \inst_BO|val_tot\(2) ) + ( \V[2]~input_o\ ) + ( \inst_BO|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_V[2]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(2),
	cin => \inst_BO|Add0~10\,
	sumout => \inst_BO|Add0~13_sumout\,
	cout => \inst_BO|Add0~14\);

-- Location: MLABCELL_X72_Y3_N39
\inst_BO|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~1_sumout\ = SUM(( \inst_BO|val_tot\(3) ) + ( \V[3]~input_o\ ) + ( \inst_BO|Add0~14\ ))
-- \inst_BO|Add0~2\ = CARRY(( \inst_BO|val_tot\(3) ) + ( \V[3]~input_o\ ) + ( \inst_BO|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_V[3]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(3),
	cin => \inst_BO|Add0~14\,
	sumout => \inst_BO|Add0~1_sumout\,
	cout => \inst_BO|Add0~2\);

-- Location: IOIBUF_X66_Y0_N92
\M~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\R1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(6),
	o => \R1[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\R2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(6),
	o => \R2[6]~input_o\);

-- Location: LABCELL_X71_Y3_N3
\inst_BO|r[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|r[6]~1_combout\ = ( \B1~input_o\ & ( (!\B2~input_o\ & \R1[6]~input_o\) ) ) # ( !\B1~input_o\ & ( (\B2~input_o\ & \R2[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[6]~input_o\,
	datad => \ALT_INV_R2[6]~input_o\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst_BO|r[6]~1_combout\);

-- Location: IOIBUF_X70_Y0_N52
\R2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(7),
	o => \R2[7]~input_o\);

-- Location: LABCELL_X71_Y3_N12
\inst_BO|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~5_combout\ = ( \inst_BO|val_tot\(7) & ( (!\B2~input_o\ & (((!\R1[7]~input_o\) # (!\B1~input_o\)))) # (\B2~input_o\ & ((!\R2[7]~input_o\) # ((\B1~input_o\)))) ) ) # ( !\inst_BO|val_tot\(7) & ( (!\B2~input_o\ & (((\R1[7]~input_o\ & 
-- \B1~input_o\)))) # (\B2~input_o\ & (\R2[7]~input_o\ & ((!\B1~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011111010110011111111101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2[7]~input_o\,
	datab => \ALT_INV_R1[7]~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_B1~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(7),
	combout => \inst_BO|LessThan0~5_combout\);

-- Location: IOIBUF_X68_Y0_N1
\R1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(5),
	o => \R1[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\R2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(5),
	o => \R2[5]~input_o\);

-- Location: LABCELL_X71_Y3_N9
\inst_BO|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~6_combout\ = ( \inst_BO|val_tot\(5) & ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[5]~input_o\)))) # (\B1~input_o\ & (((!\R1[5]~input_o\)) # (\B2~input_o\))) ) ) # ( !\inst_BO|val_tot\(5) & ( (!\B1~input_o\ & (\B2~input_o\ & 
-- ((\R2[5]~input_o\)))) # (\B1~input_o\ & (!\B2~input_o\ & (\R1[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011011111011110110011111101111011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[5]~input_o\,
	datad => \ALT_INV_R2[5]~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(5),
	combout => \inst_BO|LessThan0~6_combout\);

-- Location: IOIBUF_X64_Y0_N18
\R2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(4),
	o => \R2[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\R1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(4),
	o => \R1[4]~input_o\);

-- Location: LABCELL_X71_Y3_N6
\inst_BO|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~7_combout\ = ( \inst_BO|val_tot\(4) & ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[4]~input_o\)))) # (\B1~input_o\ & (((!\R1[4]~input_o\)) # (\B2~input_o\))) ) ) # ( !\inst_BO|val_tot\(4) & ( (!\B1~input_o\ & (\B2~input_o\ & 
-- (\R2[4]~input_o\))) # (\B1~input_o\ & (!\B2~input_o\ & ((\R1[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011011111101101110011111110110111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R2[4]~input_o\,
	datad => \ALT_INV_R1[4]~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(4),
	combout => \inst_BO|LessThan0~7_combout\);

-- Location: LABCELL_X71_Y3_N39
\inst_BO|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~8_combout\ = ( !\inst_BO|LessThan0~7_combout\ & ( (!\inst_BO|LessThan0~5_combout\ & (!\inst_BO|LessThan0~6_combout\ & (!\inst_BO|r[6]~1_combout\ $ (\inst_BO|val_tot\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_r[6]~1_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~5_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~6_combout\,
	datad => \inst_BO|ALT_INV_val_tot\(6),
	dataf => \inst_BO|ALT_INV_LessThan0~7_combout\,
	combout => \inst_BO|LessThan0~8_combout\);

-- Location: LABCELL_X71_Y3_N15
\inst_BO|r[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|r[7]~2_combout\ = ( \B2~input_o\ & ( (\R2[7]~input_o\ & !\B1~input_o\) ) ) # ( !\B2~input_o\ & ( (\R1[7]~input_o\ & \B1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2[7]~input_o\,
	datab => \ALT_INV_R1[7]~input_o\,
	datad => \ALT_INV_B1~input_o\,
	dataf => \ALT_INV_B2~input_o\,
	combout => \inst_BO|r[7]~2_combout\);

-- Location: LABCELL_X70_Y3_N18
\inst_BO|r[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|r[5]~3_combout\ = ( !\B2~input_o\ & ( \B1~input_o\ & ( \R1[5]~input_o\ ) ) ) # ( \B2~input_o\ & ( !\B1~input_o\ & ( \R2[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_R2[5]~input_o\,
	datac => \ALT_INV_R1[5]~input_o\,
	datae => \ALT_INV_B2~input_o\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst_BO|r[5]~3_combout\);

-- Location: LABCELL_X71_Y3_N48
\inst_BO|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~11_combout\ = ( \inst_BO|val_tot\(6) & ( \inst_BO|r[5]~3_combout\ & ( (!\inst_BO|r[7]~2_combout\ & (!\inst_BO|val_tot\(5) & (\inst_BO|r[6]~1_combout\ & !\inst_BO|val_tot\(7)))) # (\inst_BO|r[7]~2_combout\ & ((!\inst_BO|val_tot\(7)) # 
-- ((!\inst_BO|val_tot\(5) & \inst_BO|r[6]~1_combout\)))) ) ) ) # ( !\inst_BO|val_tot\(6) & ( \inst_BO|r[5]~3_combout\ & ( (!\inst_BO|r[7]~2_combout\ & (!\inst_BO|val_tot\(7) & ((!\inst_BO|val_tot\(5)) # (\inst_BO|r[6]~1_combout\)))) # 
-- (\inst_BO|r[7]~2_combout\ & ((!\inst_BO|val_tot\(5)) # ((!\inst_BO|val_tot\(7)) # (\inst_BO|r[6]~1_combout\)))) ) ) ) # ( \inst_BO|val_tot\(6) & ( !\inst_BO|r[5]~3_combout\ & ( (\inst_BO|r[7]~2_combout\ & !\inst_BO|val_tot\(7)) ) ) ) # ( 
-- !\inst_BO|val_tot\(6) & ( !\inst_BO|r[5]~3_combout\ & ( (!\inst_BO|r[7]~2_combout\ & (\inst_BO|r[6]~1_combout\ & !\inst_BO|val_tot\(7))) # (\inst_BO|r[7]~2_combout\ & ((!\inst_BO|val_tot\(7)) # (\inst_BO|r[6]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001100110000000010111111001000110011101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_tot\(5),
	datab => \inst_BO|ALT_INV_r[7]~2_combout\,
	datac => \inst_BO|ALT_INV_r[6]~1_combout\,
	datad => \inst_BO|ALT_INV_val_tot\(7),
	datae => \inst_BO|ALT_INV_val_tot\(6),
	dataf => \inst_BO|ALT_INV_r[5]~3_combout\,
	combout => \inst_BO|LessThan0~11_combout\);

-- Location: LABCELL_X71_Y3_N27
\inst_BO|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~9_combout\ = ( !\inst_BO|val_tot\(4) & ( (!\B1~input_o\ & (\B2~input_o\ & ((\R2[4]~input_o\)))) # (\B1~input_o\ & (!\B2~input_o\ & (\R1[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[4]~input_o\,
	datad => \ALT_INV_R2[4]~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(4),
	combout => \inst_BO|LessThan0~9_combout\);

-- Location: LABCELL_X71_Y3_N18
\inst_BO|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~12_combout\ = ( \inst_BO|LessThan0~6_combout\ & ( \inst_BO|LessThan0~9_combout\ & ( !\inst_BO|LessThan0~11_combout\ ) ) ) # ( !\inst_BO|LessThan0~6_combout\ & ( \inst_BO|LessThan0~9_combout\ & ( (!\inst_BO|LessThan0~11_combout\ & 
-- ((!\inst_BO|r[6]~1_combout\ $ (!\inst_BO|val_tot\(6))) # (\inst_BO|LessThan0~5_combout\))) ) ) ) # ( \inst_BO|LessThan0~6_combout\ & ( !\inst_BO|LessThan0~9_combout\ & ( !\inst_BO|LessThan0~11_combout\ ) ) ) # ( !\inst_BO|LessThan0~6_combout\ & ( 
-- !\inst_BO|LessThan0~9_combout\ & ( !\inst_BO|LessThan0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000101010101000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~11_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~5_combout\,
	datac => \inst_BO|ALT_INV_r[6]~1_combout\,
	datad => \inst_BO|ALT_INV_val_tot\(6),
	datae => \inst_BO|ALT_INV_LessThan0~6_combout\,
	dataf => \inst_BO|ALT_INV_LessThan0~9_combout\,
	combout => \inst_BO|LessThan0~12_combout\);

-- Location: LABCELL_X70_Y3_N12
\inst_BC|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector1~0_combout\ = ( !\inst_BC|estado_atual.Soma1~q\ & ( \inst_BC|estado_atual.Inicial~q\ ) ) # ( !\inst_BC|estado_atual.Soma1~q\ & ( !\inst_BC|estado_atual.Inicial~q\ & ( (!\B1~input_o\) # (\B2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datae => \inst_BC|ALT_INV_estado_atual.Soma1~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Inicial~q\,
	combout => \inst_BC|Selector1~0_combout\);

-- Location: LABCELL_X71_Y3_N42
\inst_BC|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector1~1_combout\ = ( \inst_BC|estado_atual.Espera1~q\ & ( \inst_BC|Selector1~0_combout\ & ( (!\M~input_o\ & ((!\inst_BO|LessThan0~12_combout\) # ((\inst_BO|LessThan0~8_combout\ & !\inst_BO|LessThan0~4_combout\)))) ) ) ) # ( 
-- \inst_BC|estado_atual.Espera1~q\ & ( !\inst_BC|Selector1~0_combout\ ) ) # ( !\inst_BC|estado_atual.Espera1~q\ & ( !\inst_BC|Selector1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~8_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~12_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_M~input_o\,
	datae => \inst_BC|ALT_INV_estado_atual.Espera1~q\,
	dataf => \inst_BC|ALT_INV_Selector1~0_combout\,
	combout => \inst_BC|Selector1~1_combout\);

-- Location: FF_X71_Y3_N44
\inst_BC|estado_atual.Espera1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Espera1~q\);

-- Location: LABCELL_X70_Y3_N24
\inst_BC|prox_estado.Soma1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Soma1~0_combout\ = ( \inst_BC|estado_atual.Espera1~q\ & ( \M~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_M~input_o\,
	dataf => \inst_BC|ALT_INV_estado_atual.Espera1~q\,
	combout => \inst_BC|prox_estado.Soma1~0_combout\);

-- Location: FF_X72_Y3_N17
\inst_BC|estado_atual.Soma1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \inst_BC|prox_estado.Soma1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Soma1~q\);

-- Location: MLABCELL_X72_Y3_N54
\inst_BC|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector3~0_combout\ = ( \B1~input_o\ & ( !\inst_BC|estado_atual.Soma2~q\ ) ) # ( !\B1~input_o\ & ( (!\inst_BC|estado_atual.Soma2~q\ & ((!\B2~input_o\) # (\inst_BC|estado_atual.Inicial~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datac => \inst_BC|ALT_INV_estado_atual.Soma2~q\,
	datad => \inst_BC|ALT_INV_estado_atual.Inicial~q\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst_BC|Selector3~0_combout\);

-- Location: LABCELL_X71_Y3_N45
\inst_BC|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector3~1_combout\ = ( \inst_BC|estado_atual.Espera2~q\ & ( \inst_BC|Selector3~0_combout\ & ( (!\M~input_o\ & ((!\inst_BO|LessThan0~12_combout\) # ((\inst_BO|LessThan0~8_combout\ & !\inst_BO|LessThan0~4_combout\)))) ) ) ) # ( 
-- \inst_BC|estado_atual.Espera2~q\ & ( !\inst_BC|Selector3~0_combout\ ) ) # ( !\inst_BC|estado_atual.Espera2~q\ & ( !\inst_BC|Selector3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~8_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~12_combout\,
	datac => \ALT_INV_M~input_o\,
	datad => \inst_BO|ALT_INV_LessThan0~4_combout\,
	datae => \inst_BC|ALT_INV_estado_atual.Espera2~q\,
	dataf => \inst_BC|ALT_INV_Selector3~0_combout\,
	combout => \inst_BC|Selector3~1_combout\);

-- Location: FF_X71_Y3_N47
\inst_BC|estado_atual.Espera2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Espera2~q\);

-- Location: LABCELL_X70_Y3_N54
\inst_BC|prox_estado.Soma2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Soma2~0_combout\ = ( \inst_BC|estado_atual.Espera2~q\ & ( \M~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_M~input_o\,
	dataf => \inst_BC|ALT_INV_estado_atual.Espera2~q\,
	combout => \inst_BC|prox_estado.Soma2~0_combout\);

-- Location: FF_X72_Y3_N5
\inst_BC|estado_atual.Soma2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \inst_BC|prox_estado.Soma2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Soma2~q\);

-- Location: MLABCELL_X72_Y3_N15
\inst_BC|tot_ld~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|tot_ld~0_combout\ = ( \inst_BC|estado_atual.Soma2~q\ ) # ( !\inst_BC|estado_atual.Soma2~q\ & ( \inst_BC|estado_atual.Soma1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_BC|ALT_INV_estado_atual.Soma1~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Soma2~q\,
	combout => \inst_BC|tot_ld~0_combout\);

-- Location: FF_X72_Y3_N41
\inst_BO|val_tot[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~1_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(3));

-- Location: MLABCELL_X72_Y3_N42
\inst_BO|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~29_sumout\ = SUM(( \inst_BO|val_tot\(4) ) + ( \V[4]~input_o\ ) + ( \inst_BO|Add0~2\ ))
-- \inst_BO|Add0~30\ = CARRY(( \inst_BO|val_tot\(4) ) + ( \V[4]~input_o\ ) + ( \inst_BO|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_V[4]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(4),
	cin => \inst_BO|Add0~2\,
	sumout => \inst_BO|Add0~29_sumout\,
	cout => \inst_BO|Add0~30\);

-- Location: FF_X72_Y3_N44
\inst_BO|val_tot[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~29_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(4));

-- Location: MLABCELL_X72_Y3_N45
\inst_BO|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~25_sumout\ = SUM(( \inst_BO|val_tot\(5) ) + ( \V[5]~input_o\ ) + ( \inst_BO|Add0~30\ ))
-- \inst_BO|Add0~26\ = CARRY(( \inst_BO|val_tot\(5) ) + ( \V[5]~input_o\ ) + ( \inst_BO|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_V[5]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(5),
	cin => \inst_BO|Add0~30\,
	sumout => \inst_BO|Add0~25_sumout\,
	cout => \inst_BO|Add0~26\);

-- Location: FF_X72_Y3_N47
\inst_BO|val_tot[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~25_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(5));

-- Location: MLABCELL_X72_Y3_N48
\inst_BO|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~17_sumout\ = SUM(( \inst_BO|val_tot\(6) ) + ( \V[6]~input_o\ ) + ( \inst_BO|Add0~26\ ))
-- \inst_BO|Add0~18\ = CARRY(( \inst_BO|val_tot\(6) ) + ( \V[6]~input_o\ ) + ( \inst_BO|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_V[6]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(6),
	cin => \inst_BO|Add0~26\,
	sumout => \inst_BO|Add0~17_sumout\,
	cout => \inst_BO|Add0~18\);

-- Location: FF_X72_Y3_N50
\inst_BO|val_tot[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~17_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(6));

-- Location: MLABCELL_X72_Y3_N51
\inst_BO|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~21_sumout\ = SUM(( \inst_BO|val_tot\(7) ) + ( \V[7]~input_o\ ) + ( \inst_BO|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_V[7]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(7),
	cin => \inst_BO|Add0~18\,
	sumout => \inst_BO|Add0~21_sumout\);

-- Location: FF_X72_Y3_N53
\inst_BO|val_tot[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~21_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(7));

-- Location: IOIBUF_X64_Y0_N52
\R1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(3),
	o => \R1[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\R2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(3),
	o => \R2[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\R1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(1),
	o => \R1[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\R2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(1),
	o => \R2[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\R1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1(0),
	o => \R1[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\R2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2(0),
	o => \R2[0]~input_o\);

-- Location: LABCELL_X73_Y3_N6
\inst_BO|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst_BO|Add1~34_cout\);

-- Location: LABCELL_X73_Y3_N9
\inst_BO|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~1_sumout\ = SUM(( \inst_BO|val_tot\(0) ) + ( (!\B1~input_o\ & (((!\B2~input_o\) # (!\R2[0]~input_o\)))) # (\B1~input_o\ & ((!\R1[0]~input_o\) # ((\B2~input_o\)))) ) + ( \inst_BO|Add1~34_cout\ ))
-- \inst_BO|Add1~2\ = CARRY(( \inst_BO|val_tot\(0) ) + ( (!\B1~input_o\ & (((!\B2~input_o\) # (!\R2[0]~input_o\)))) # (\B1~input_o\ & ((!\R1[0]~input_o\) # ((\B2~input_o\)))) ) + ( \inst_BO|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_R1[0]~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(0),
	dataf => \ALT_INV_R2[0]~input_o\,
	cin => \inst_BO|Add1~34_cout\,
	sumout => \inst_BO|Add1~1_sumout\,
	cout => \inst_BO|Add1~2\);

-- Location: LABCELL_X73_Y3_N12
\inst_BO|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~5_sumout\ = SUM(( \inst_BO|val_tot\(1) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[1]~input_o\)))) # (\B1~input_o\ & (((!\R1[1]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~2\ ))
-- \inst_BO|Add1~6\ = CARRY(( \inst_BO|val_tot\(1) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[1]~input_o\)))) # (\B1~input_o\ & (((!\R1[1]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[1]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(1),
	dataf => \ALT_INV_R2[1]~input_o\,
	cin => \inst_BO|Add1~2\,
	sumout => \inst_BO|Add1~5_sumout\,
	cout => \inst_BO|Add1~6\);

-- Location: LABCELL_X73_Y3_N15
\inst_BO|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~9_sumout\ = SUM(( \inst_BO|val_tot\(2) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[2]~input_o\)))) # (\B1~input_o\ & (((!\R1[2]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~6\ ))
-- \inst_BO|Add1~10\ = CARRY(( \inst_BO|val_tot\(2) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[2]~input_o\)))) # (\B1~input_o\ & (((!\R1[2]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[2]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(2),
	dataf => \ALT_INV_R2[2]~input_o\,
	cin => \inst_BO|Add1~6\,
	sumout => \inst_BO|Add1~9_sumout\,
	cout => \inst_BO|Add1~10\);

-- Location: LABCELL_X73_Y3_N18
\inst_BO|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~13_sumout\ = SUM(( \inst_BO|val_tot\(3) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[3]~input_o\)))) # (\B1~input_o\ & (((!\R1[3]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~10\ ))
-- \inst_BO|Add1~14\ = CARRY(( \inst_BO|val_tot\(3) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[3]~input_o\)))) # (\B1~input_o\ & (((!\R1[3]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[3]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(3),
	dataf => \ALT_INV_R2[3]~input_o\,
	cin => \inst_BO|Add1~10\,
	sumout => \inst_BO|Add1~13_sumout\,
	cout => \inst_BO|Add1~14\);

-- Location: LABCELL_X73_Y3_N21
\inst_BO|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~17_sumout\ = SUM(( \inst_BO|val_tot\(4) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[4]~input_o\)))) # (\B1~input_o\ & (((!\R1[4]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~14\ ))
-- \inst_BO|Add1~18\ = CARRY(( \inst_BO|val_tot\(4) ) + ( (!\B1~input_o\ & ((!\B2~input_o\) # ((!\R2[4]~input_o\)))) # (\B1~input_o\ & (((!\R1[4]~input_o\)) # (\B2~input_o\))) ) + ( \inst_BO|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R1[4]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(4),
	dataf => \ALT_INV_R2[4]~input_o\,
	cin => \inst_BO|Add1~14\,
	sumout => \inst_BO|Add1~17_sumout\,
	cout => \inst_BO|Add1~18\);

-- Location: LABCELL_X73_Y3_N24
\inst_BO|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~21_sumout\ = SUM(( \inst_BO|val_tot\(5) ) + ( (!\B2~input_o\ & ((!\B1~input_o\) # ((!\R1[5]~input_o\)))) # (\B2~input_o\ & (((!\R2[5]~input_o\)) # (\B1~input_o\))) ) + ( \inst_BO|Add1~18\ ))
-- \inst_BO|Add1~22\ = CARRY(( \inst_BO|val_tot\(5) ) + ( (!\B2~input_o\ & ((!\B1~input_o\) # ((!\R1[5]~input_o\)))) # (\B2~input_o\ & (((!\R2[5]~input_o\)) # (\B1~input_o\))) ) + ( \inst_BO|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100100011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_R1[5]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(5),
	dataf => \ALT_INV_R2[5]~input_o\,
	cin => \inst_BO|Add1~18\,
	sumout => \inst_BO|Add1~21_sumout\,
	cout => \inst_BO|Add1~22\);

-- Location: LABCELL_X73_Y3_N27
\inst_BO|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~25_sumout\ = SUM(( \inst_BO|val_tot\(6) ) + ( (!\B2~input_o\ & ((!\B1~input_o\) # ((!\R1[6]~input_o\)))) # (\B2~input_o\ & (((!\R2[6]~input_o\)) # (\B1~input_o\))) ) + ( \inst_BO|Add1~22\ ))
-- \inst_BO|Add1~26\ = CARRY(( \inst_BO|val_tot\(6) ) + ( (!\B2~input_o\ & ((!\B1~input_o\) # ((!\R1[6]~input_o\)))) # (\B2~input_o\ & (((!\R2[6]~input_o\)) # (\B1~input_o\))) ) + ( \inst_BO|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100100011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_R1[6]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(6),
	dataf => \ALT_INV_R2[6]~input_o\,
	cin => \inst_BO|Add1~22\,
	sumout => \inst_BO|Add1~25_sumout\,
	cout => \inst_BO|Add1~26\);

-- Location: LABCELL_X73_Y3_N30
\inst_BO|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add1~29_sumout\ = SUM(( \inst_BO|val_tot\(7) ) + ( (!\B1~input_o\ & (((!\B2~input_o\) # (!\R2[7]~input_o\)))) # (\B1~input_o\ & ((!\R1[7]~input_o\) # ((\B2~input_o\)))) ) + ( \inst_BO|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R1[7]~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(7),
	dataf => \ALT_INV_R2[7]~input_o\,
	cin => \inst_BO|Add1~26\,
	sumout => \inst_BO|Add1~29_sumout\);

-- Location: LABCELL_X73_Y3_N36
\inst_BO|val_vt[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(7) = ( \inst_BO|Add1~29_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt\(7)) # (\inst_BO|val_vt[1]~1_combout\))) ) ) # ( !\inst_BO|Add1~29_sumout\ & ( (!\inst_BO|val_vt[1]~1_combout\ & (!\inst_BC|WideOr7~combout\ & 
-- \inst_BO|val_vt\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	datac => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt\(7),
	dataf => \inst_BO|ALT_INV_Add1~29_sumout\,
	combout => \inst_BO|val_vt\(7));

-- Location: LABCELL_X71_Y3_N36
\inst_BO|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~10_combout\ = ( !\inst_BO|LessThan0~6_combout\ & ( (!\inst_BO|LessThan0~5_combout\ & (\inst_BO|LessThan0~9_combout\ & (!\inst_BO|r[6]~1_combout\ $ (\inst_BO|val_tot\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_r[6]~1_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~5_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~9_combout\,
	datad => \inst_BO|ALT_INV_val_tot\(6),
	dataf => \inst_BO|ALT_INV_LessThan0~6_combout\,
	combout => \inst_BO|LessThan0~10_combout\);

-- Location: LABCELL_X71_Y3_N54
\inst_BC|prox_estado.Cal_troco1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Cal_troco1~0_combout\ = ( !\M~input_o\ & ( \inst_BC|estado_atual.Espera1~q\ & ( (!\inst_BO|LessThan0~11_combout\ & (!\inst_BO|LessThan0~10_combout\ & ((!\inst_BO|LessThan0~8_combout\) # (\inst_BO|LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~8_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~11_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~4_combout\,
	datad => \inst_BO|ALT_INV_LessThan0~10_combout\,
	datae => \ALT_INV_M~input_o\,
	dataf => \inst_BC|ALT_INV_estado_atual.Espera1~q\,
	combout => \inst_BC|prox_estado.Cal_troco1~0_combout\);

-- Location: FF_X71_Y3_N56
\inst_BC|estado_atual.Cal_troco1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|prox_estado.Cal_troco1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Cal_troco1~q\);

-- Location: LABCELL_X73_Y3_N51
\inst_BO|val_vt[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(6) = ( \inst_BO|Add1~25_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt[1]~1_combout\) # (\inst_BO|val_vt\(6)))) ) ) # ( !\inst_BO|Add1~25_sumout\ & ( (\inst_BO|val_vt\(6) & (!\inst_BC|WideOr7~combout\ & 
-- !\inst_BO|val_vt[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt\(6),
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	dataf => \inst_BO|ALT_INV_Add1~25_sumout\,
	combout => \inst_BO|val_vt\(6));

-- Location: MLABCELL_X72_Y3_N24
\inst_BC|prox_estado.Libera_troco1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Libera_troco1~0_combout\ = ( \inst_BO|val_vt\(6) & ( \inst_BC|estado_atual.Cal_troco1~q\ ) ) # ( !\inst_BO|val_vt\(6) & ( (\inst_BC|estado_atual.Cal_troco1~q\ & ((!\inst_BO|LessThan1~0_combout\) # ((\inst_BO|val_vt\(0)) # 
-- (\inst_BO|val_vt\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan1~0_combout\,
	datab => \inst_BO|ALT_INV_val_vt\(7),
	datac => \inst_BO|ALT_INV_val_vt\(0),
	datad => \inst_BC|ALT_INV_estado_atual.Cal_troco1~q\,
	dataf => \inst_BO|ALT_INV_val_vt\(6),
	combout => \inst_BC|prox_estado.Libera_troco1~0_combout\);

-- Location: FF_X72_Y3_N26
\inst_BC|estado_atual.Libera_troco1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|prox_estado.Libera_troco1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Libera_troco1~q\);

-- Location: LABCELL_X71_Y3_N57
\inst_BC|prox_estado.Cal_troco2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Cal_troco2~0_combout\ = ( !\M~input_o\ & ( \inst_BC|estado_atual.Espera2~q\ & ( (!\inst_BO|LessThan0~11_combout\ & (!\inst_BO|LessThan0~10_combout\ & ((!\inst_BO|LessThan0~8_combout\) # (\inst_BO|LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~8_combout\,
	datab => \inst_BO|ALT_INV_LessThan0~11_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~10_combout\,
	datad => \inst_BO|ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_M~input_o\,
	dataf => \inst_BC|ALT_INV_estado_atual.Espera2~q\,
	combout => \inst_BC|prox_estado.Cal_troco2~0_combout\);

-- Location: FF_X71_Y3_N59
\inst_BC|estado_atual.Cal_troco2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|prox_estado.Cal_troco2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Cal_troco2~q\);

-- Location: MLABCELL_X72_Y3_N27
\inst_BC|prox_estado.Libera_troco2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|prox_estado.Libera_troco2~0_combout\ = ( \inst_BO|val_vt\(6) & ( \inst_BC|estado_atual.Cal_troco2~q\ ) ) # ( !\inst_BO|val_vt\(6) & ( (\inst_BC|estado_atual.Cal_troco2~q\ & ((!\inst_BO|LessThan1~0_combout\) # ((\inst_BO|val_vt\(0)) # 
-- (\inst_BO|val_vt\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan1~0_combout\,
	datab => \inst_BO|ALT_INV_val_vt\(7),
	datac => \inst_BO|ALT_INV_val_vt\(0),
	datad => \inst_BC|ALT_INV_estado_atual.Cal_troco2~q\,
	dataf => \inst_BO|ALT_INV_val_vt\(6),
	combout => \inst_BC|prox_estado.Libera_troco2~0_combout\);

-- Location: FF_X72_Y3_N29
\inst_BC|estado_atual.Libera_troco2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|prox_estado.Libera_troco2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Libera_troco2~q\);

-- Location: MLABCELL_X72_Y3_N21
\inst_BC|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|WideOr5~combout\ = ( \inst_BC|estado_atual.Libera_prod2~q\ ) # ( !\inst_BC|estado_atual.Libera_prod2~q\ & ( ((!\inst_BC|estado_atual.Inicial~q\) # ((\inst_BC|estado_atual.Libera_troco2~q\) # (\inst_BC|estado_atual.Libera_prod1~q\))) # 
-- (\inst_BC|estado_atual.Libera_troco1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BC|ALT_INV_estado_atual.Libera_troco1~q\,
	datab => \inst_BC|ALT_INV_estado_atual.Inicial~q\,
	datac => \inst_BC|ALT_INV_estado_atual.Libera_prod1~q\,
	datad => \inst_BC|ALT_INV_estado_atual.Libera_troco2~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Libera_prod2~q\,
	combout => \inst_BC|WideOr5~combout\);

-- Location: FF_X72_Y3_N32
\inst_BO|val_tot[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~5_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(0));

-- Location: MLABCELL_X72_Y3_N33
\inst_BO|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|Add0~9_sumout\ = SUM(( \inst_BO|val_tot\(1) ) + ( \V[1]~input_o\ ) + ( \inst_BO|Add0~6\ ))
-- \inst_BO|Add0~10\ = CARRY(( \inst_BO|val_tot\(1) ) + ( \V[1]~input_o\ ) + ( \inst_BO|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_V[1]~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(1),
	cin => \inst_BO|Add0~6\,
	sumout => \inst_BO|Add0~9_sumout\,
	cout => \inst_BO|Add0~10\);

-- Location: FF_X72_Y3_N35
\inst_BO|val_tot[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~9_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(1));

-- Location: FF_X72_Y3_N38
\inst_BO|val_tot[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BO|Add0~13_sumout\,
	clrn => \inst_BC|ALT_INV_WideOr5~combout\,
	ena => \inst_BC|tot_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BO|val_tot\(2));

-- Location: LABCELL_X71_Y3_N0
\inst_BO|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~3_combout\ = ( !\inst_BO|val_tot\(2) & ( (!\B2~input_o\ & (\B1~input_o\ & ((\R1[2]~input_o\)))) # (\B2~input_o\ & (!\B1~input_o\ & (\R2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_R2[2]~input_o\,
	datad => \ALT_INV_R1[2]~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(2),
	combout => \inst_BO|LessThan0~3_combout\);

-- Location: MLABCELL_X72_Y3_N0
\inst_BO|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~1_combout\ = ( \B1~input_o\ & ( \inst_BO|val_tot\(1) & ( (\R1[1]~input_o\ & (\R1[0]~input_o\ & (!\B2~input_o\ & !\inst_BO|val_tot\(0)))) ) ) ) # ( \B1~input_o\ & ( !\inst_BO|val_tot\(1) & ( (!\B2~input_o\ & (((\R1[0]~input_o\ & 
-- !\inst_BO|val_tot\(0))) # (\R1[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100000101000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R1[1]~input_o\,
	datab => \ALT_INV_R1[0]~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \inst_BO|ALT_INV_val_tot\(0),
	datae => \ALT_INV_B1~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(1),
	combout => \inst_BO|LessThan0~1_combout\);

-- Location: LABCELL_X70_Y3_N48
\inst_BO|r[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|r[3]~0_combout\ = ( \R2[3]~input_o\ & ( \B1~input_o\ & ( (\R1[3]~input_o\ & !\B2~input_o\) ) ) ) # ( !\R2[3]~input_o\ & ( \B1~input_o\ & ( (\R1[3]~input_o\ & !\B2~input_o\) ) ) ) # ( \R2[3]~input_o\ & ( !\B1~input_o\ & ( \B2~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_R1[3]~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datae => \ALT_INV_R2[3]~input_o\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst_BO|r[3]~0_combout\);

-- Location: LABCELL_X70_Y3_N33
\inst_BO|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~0_combout\ = ( !\inst_BO|val_tot\(0) & ( \inst_BO|val_tot\(1) & ( (\R2[1]~input_o\ & (\R2[0]~input_o\ & ((!\B1~input_o\) # (\B2~input_o\)))) ) ) ) # ( \inst_BO|val_tot\(0) & ( !\inst_BO|val_tot\(1) & ( (\R2[1]~input_o\ & 
-- ((!\B1~input_o\) # (\B2~input_o\))) ) ) ) # ( !\inst_BO|val_tot\(0) & ( !\inst_BO|val_tot\(1) & ( (!\R2[1]~input_o\ & (\R2[0]~input_o\ & ((!\B1~input_o\) # (\B2~input_o\)))) # (\R2[1]~input_o\ & (((!\B1~input_o\) # (\B2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110111010100000101010100010000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R2[1]~input_o\,
	datab => \ALT_INV_R2[0]~input_o\,
	datac => \ALT_INV_B1~input_o\,
	datad => \ALT_INV_B2~input_o\,
	datae => \inst_BO|ALT_INV_val_tot\(0),
	dataf => \inst_BO|ALT_INV_val_tot\(1),
	combout => \inst_BO|LessThan0~0_combout\);

-- Location: LABCELL_X71_Y3_N24
\inst_BO|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~2_combout\ = ( \inst_BO|val_tot\(2) & ( (!\B1~input_o\ & (\B2~input_o\ & (\R2[2]~input_o\))) # (\B1~input_o\ & (!\B2~input_o\ & ((\R1[2]~input_o\)))) ) ) # ( !\inst_BO|val_tot\(2) & ( (!\B1~input_o\ & (\B2~input_o\ & 
-- (!\R2[2]~input_o\))) # (\B1~input_o\ & (!\B2~input_o\ & ((!\R1[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000100000011001000010000000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datab => \ALT_INV_B2~input_o\,
	datac => \ALT_INV_R2[2]~input_o\,
	datad => \ALT_INV_R1[2]~input_o\,
	dataf => \inst_BO|ALT_INV_val_tot\(2),
	combout => \inst_BO|LessThan0~2_combout\);

-- Location: LABCELL_X71_Y3_N30
\inst_BO|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan0~4_combout\ = ( \inst_BO|LessThan0~0_combout\ & ( \inst_BO|LessThan0~2_combout\ & ( (\inst_BO|val_tot\(3) & !\inst_BO|r[3]~0_combout\) ) ) ) # ( !\inst_BO|LessThan0~0_combout\ & ( \inst_BO|LessThan0~2_combout\ & ( (!\inst_BO|val_tot\(3) 
-- & (!\inst_BO|LessThan0~3_combout\ & (!\inst_BO|LessThan0~1_combout\ & !\inst_BO|r[3]~0_combout\))) # (\inst_BO|val_tot\(3) & ((!\inst_BO|r[3]~0_combout\) # ((!\inst_BO|LessThan0~3_combout\ & !\inst_BO|LessThan0~1_combout\)))) ) ) ) # ( 
-- \inst_BO|LessThan0~0_combout\ & ( !\inst_BO|LessThan0~2_combout\ & ( (!\inst_BO|LessThan0~3_combout\ & ((!\inst_BO|r[3]~0_combout\) # (\inst_BO|val_tot\(3)))) # (\inst_BO|LessThan0~3_combout\ & (\inst_BO|val_tot\(3) & !\inst_BO|r[3]~0_combout\)) ) ) ) # ( 
-- !\inst_BO|LessThan0~0_combout\ & ( !\inst_BO|LessThan0~2_combout\ & ( (!\inst_BO|LessThan0~3_combout\ & ((!\inst_BO|r[3]~0_combout\) # (\inst_BO|val_tot\(3)))) # (\inst_BO|LessThan0~3_combout\ & (\inst_BO|val_tot\(3) & !\inst_BO|r[3]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100100010101110110010001010110011001000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan0~3_combout\,
	datab => \inst_BO|ALT_INV_val_tot\(3),
	datac => \inst_BO|ALT_INV_LessThan0~1_combout\,
	datad => \inst_BO|ALT_INV_r[3]~0_combout\,
	datae => \inst_BO|ALT_INV_LessThan0~0_combout\,
	dataf => \inst_BO|ALT_INV_LessThan0~2_combout\,
	combout => \inst_BO|LessThan0~4_combout\);

-- Location: MLABCELL_X72_Y3_N18
\inst_BO|val_vt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt[1]~0_combout\ = ( !\inst_BC|estado_atual.Cal_troco1~q\ & ( (!\inst_BC|estado_atual.Libera_troco1~q\ & (!\inst_BC|estado_atual.Cal_troco2~q\ & !\inst_BC|estado_atual.Libera_troco2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BC|ALT_INV_estado_atual.Libera_troco1~q\,
	datac => \inst_BC|ALT_INV_estado_atual.Cal_troco2~q\,
	datad => \inst_BC|ALT_INV_estado_atual.Libera_troco2~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Cal_troco1~q\,
	combout => \inst_BO|val_vt[1]~0_combout\);

-- Location: LABCELL_X74_Y3_N9
\inst_BO|val_vt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt[1]~1_combout\ = ( !\inst_BO|LessThan0~11_combout\ & ( !\inst_BO|val_vt[1]~0_combout\ & ( (!\inst_BO|LessThan0~10_combout\ & ((!\inst_BO|LessThan0~8_combout\) # (\inst_BO|LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_BO|ALT_INV_LessThan0~4_combout\,
	datac => \inst_BO|ALT_INV_LessThan0~10_combout\,
	datad => \inst_BO|ALT_INV_LessThan0~8_combout\,
	datae => \inst_BO|ALT_INV_LessThan0~11_combout\,
	dataf => \inst_BO|ALT_INV_val_vt[1]~0_combout\,
	combout => \inst_BO|val_vt[1]~1_combout\);

-- Location: LABCELL_X73_Y3_N42
\inst_BO|val_vt[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(0) = ( \inst_BO|Add1~1_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt\(0)) # (\inst_BO|val_vt[1]~1_combout\))) ) ) # ( !\inst_BO|Add1~1_sumout\ & ( (!\inst_BO|val_vt[1]~1_combout\ & (!\inst_BC|WideOr7~combout\ & 
-- \inst_BO|val_vt\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	datac => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt\(0),
	dataf => \inst_BO|ALT_INV_Add1~1_sumout\,
	combout => \inst_BO|val_vt\(0));

-- Location: MLABCELL_X72_Y3_N9
\inst_BC|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector4~0_combout\ = ( \inst_BC|estado_atual.Cal_troco2~q\ & ( \inst_BC|estado_atual.Libera_troco2~q\ ) ) # ( !\inst_BC|estado_atual.Cal_troco2~q\ & ( \inst_BC|estado_atual.Libera_troco2~q\ ) ) # ( \inst_BC|estado_atual.Cal_troco2~q\ & ( 
-- !\inst_BC|estado_atual.Libera_troco2~q\ & ( (\inst_BO|LessThan1~0_combout\ & (!\inst_BO|val_vt\(0) & (!\inst_BO|val_vt\(7) & !\inst_BO|val_vt\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan1~0_combout\,
	datab => \inst_BO|ALT_INV_val_vt\(0),
	datac => \inst_BO|ALT_INV_val_vt\(7),
	datad => \inst_BO|ALT_INV_val_vt\(6),
	datae => \inst_BC|ALT_INV_estado_atual.Cal_troco2~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Libera_troco2~q\,
	combout => \inst_BC|Selector4~0_combout\);

-- Location: FF_X72_Y3_N11
\inst_BC|estado_atual.Libera_prod2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Libera_prod2~q\);

-- Location: MLABCELL_X72_Y3_N57
\inst_BC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector0~0_combout\ = ( !\inst_BC|estado_atual.Libera_prod2~q\ & ( (!\inst_BC|estado_atual.Libera_prod1~q\ & ((!\B2~input_o\ $ (!\B1~input_o\)) # (\inst_BC|estado_atual.Inicial~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000011110000011000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \inst_BC|ALT_INV_estado_atual.Libera_prod1~q\,
	datad => \inst_BC|ALT_INV_estado_atual.Inicial~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Libera_prod2~q\,
	combout => \inst_BC|Selector0~0_combout\);

-- Location: FF_X72_Y3_N59
\inst_BC|estado_atual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Inicial~q\);

-- Location: MLABCELL_X72_Y3_N12
\inst_BC|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|WideOr7~combout\ = ( \inst_BC|estado_atual.Espera1~q\ ) # ( !\inst_BC|estado_atual.Espera1~q\ & ( (!\inst_BC|estado_atual.Inicial~q\) # (((\inst_BC|estado_atual.Soma2~q\) # (\inst_BC|estado_atual.Soma1~q\)) # (\inst_BC|estado_atual.Espera2~q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BC|ALT_INV_estado_atual.Inicial~q\,
	datab => \inst_BC|ALT_INV_estado_atual.Espera2~q\,
	datac => \inst_BC|ALT_INV_estado_atual.Soma1~q\,
	datad => \inst_BC|ALT_INV_estado_atual.Soma2~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Espera1~q\,
	combout => \inst_BC|WideOr7~combout\);

-- Location: LABCELL_X73_Y3_N39
\inst_BO|val_vt[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(3) = ( \inst_BO|Add1~13_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt[1]~1_combout\) # (\inst_BO|val_vt\(3)))) ) ) # ( !\inst_BO|Add1~13_sumout\ & ( (!\inst_BC|WideOr7~combout\ & (\inst_BO|val_vt\(3) & 
-- !\inst_BO|val_vt[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datac => \inst_BO|ALT_INV_val_vt\(3),
	datad => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	dataf => \inst_BO|ALT_INV_Add1~13_sumout\,
	combout => \inst_BO|val_vt\(3));

-- Location: LABCELL_X73_Y3_N45
\inst_BO|val_vt[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(4) = ( \inst_BO|Add1~17_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt\(4)) # (\inst_BO|val_vt[1]~1_combout\))) ) ) # ( !\inst_BO|Add1~17_sumout\ & ( (!\inst_BO|val_vt[1]~1_combout\ & (!\inst_BC|WideOr7~combout\ & 
-- \inst_BO|val_vt\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt\(4),
	dataf => \inst_BO|ALT_INV_Add1~17_sumout\,
	combout => \inst_BO|val_vt\(4));

-- Location: LABCELL_X73_Y3_N54
\inst_BO|val_vt[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(2) = ( \inst_BO|Add1~9_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt\(2)) # (\inst_BO|val_vt[1]~1_combout\))) ) ) # ( !\inst_BO|Add1~9_sumout\ & ( (!\inst_BO|val_vt[1]~1_combout\ & (!\inst_BC|WideOr7~combout\ & 
-- \inst_BO|val_vt\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt\(2),
	dataf => \inst_BO|ALT_INV_Add1~9_sumout\,
	combout => \inst_BO|val_vt\(2));

-- Location: LABCELL_X73_Y3_N57
\inst_BO|val_vt[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(1) = ( \inst_BO|Add1~5_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt\(1)) # (\inst_BO|val_vt[1]~1_combout\))) ) ) # ( !\inst_BO|Add1~5_sumout\ & ( (!\inst_BO|val_vt[1]~1_combout\ & (!\inst_BC|WideOr7~combout\ & 
-- \inst_BO|val_vt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datad => \inst_BO|ALT_INV_val_vt\(1),
	dataf => \inst_BO|ALT_INV_Add1~5_sumout\,
	combout => \inst_BO|val_vt\(1));

-- Location: LABCELL_X73_Y3_N48
\inst_BO|val_vt[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|val_vt\(5) = ( \inst_BO|Add1~21_sumout\ & ( (!\inst_BC|WideOr7~combout\ & ((\inst_BO|val_vt[1]~1_combout\) # (\inst_BO|val_vt\(5)))) ) ) # ( !\inst_BO|Add1~21_sumout\ & ( (!\inst_BC|WideOr7~combout\ & (\inst_BO|val_vt\(5) & 
-- !\inst_BO|val_vt[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_BC|ALT_INV_WideOr7~combout\,
	datac => \inst_BO|ALT_INV_val_vt\(5),
	datad => \inst_BO|ALT_INV_val_vt[1]~1_combout\,
	dataf => \inst_BO|ALT_INV_Add1~21_sumout\,
	combout => \inst_BO|val_vt\(5));

-- Location: LABCELL_X73_Y3_N3
\inst_BO|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BO|LessThan1~0_combout\ = ( !\inst_BO|val_vt\(1) & ( !\inst_BO|val_vt\(5) & ( (!\inst_BO|val_vt\(3) & (!\inst_BO|val_vt\(4) & !\inst_BO|val_vt\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_BO|ALT_INV_val_vt\(3),
	datac => \inst_BO|ALT_INV_val_vt\(4),
	datad => \inst_BO|ALT_INV_val_vt\(2),
	datae => \inst_BO|ALT_INV_val_vt\(1),
	dataf => \inst_BO|ALT_INV_val_vt\(5),
	combout => \inst_BO|LessThan1~0_combout\);

-- Location: MLABCELL_X72_Y3_N6
\inst_BC|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|Selector2~0_combout\ = ( \inst_BC|estado_atual.Cal_troco1~q\ & ( \inst_BC|estado_atual.Libera_troco1~q\ ) ) # ( !\inst_BC|estado_atual.Cal_troco1~q\ & ( \inst_BC|estado_atual.Libera_troco1~q\ ) ) # ( \inst_BC|estado_atual.Cal_troco1~q\ & ( 
-- !\inst_BC|estado_atual.Libera_troco1~q\ & ( (\inst_BO|LessThan1~0_combout\ & (!\inst_BO|val_vt\(0) & (!\inst_BO|val_vt\(6) & !\inst_BO|val_vt\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_BO|ALT_INV_LessThan1~0_combout\,
	datab => \inst_BO|ALT_INV_val_vt\(0),
	datac => \inst_BO|ALT_INV_val_vt\(6),
	datad => \inst_BO|ALT_INV_val_vt\(7),
	datae => \inst_BC|ALT_INV_estado_atual.Cal_troco1~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Libera_troco1~q\,
	combout => \inst_BC|Selector2~0_combout\);

-- Location: FF_X72_Y3_N8
\inst_BC|estado_atual.Libera_prod1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst_BC|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_BC|estado_atual.Libera_prod1~q\);

-- Location: LABCELL_X70_Y3_N45
\inst_BC|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_BC|WideOr5~0_combout\ = ( !\inst_BC|estado_atual.Libera_troco2~q\ & ( !\inst_BC|estado_atual.Libera_troco1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_BC|ALT_INV_estado_atual.Libera_troco1~q\,
	dataf => \inst_BC|ALT_INV_estado_atual.Libera_troco2~q\,
	combout => \inst_BC|WideOr5~0_combout\);

-- Location: MLABCELL_X65_Y72_N3
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


