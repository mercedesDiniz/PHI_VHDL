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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/29/2022 17:57:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquina_de_vendas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquina_de_vendas_vhd_vec_tst IS
END maquina_de_vendas_vhd_vec_tst;
ARCHITECTURE maquina_de_vendas_arch OF maquina_de_vendas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL F1 : STD_LOGIC;
SIGNAL F2 : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL NT : STD_LOGIC;
SIGNAL R1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL R2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL V : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL VT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT maquina_de_vendas
	PORT (
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	F1 : OUT STD_LOGIC;
	F2 : OUT STD_LOGIC;
	M : IN STD_LOGIC;
	NT : OUT STD_LOGIC;
	R1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	R2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	V : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	VT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : maquina_de_vendas
	PORT MAP (
-- list connections between master ports and signals
	B1 => B1,
	B2 => B2,
	Clk => Clk,
	F1 => F1,
	F2 => F2,
	M => M,
	NT => NT,
	R1 => R1,
	R2 => R2,
	V => V,
	VT => VT
	);

-- B1
t_prcs_B1: PROCESS
BEGIN
LOOP
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B1;

-- B2
t_prcs_B2: PROCESS
BEGIN
	B2 <= '0';
WAIT;
END PROCESS t_prcs_B2;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- M
t_prcs_M: PROCESS
BEGIN
LOOP
	M <= '0';
	WAIT FOR 10000 ps;
	M <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_M;
-- R1[7]
t_prcs_R1_7: PROCESS
BEGIN
	R1(7) <= '0';
WAIT;
END PROCESS t_prcs_R1_7;
-- R1[6]
t_prcs_R1_6: PROCESS
BEGIN
	R1(6) <= '0';
WAIT;
END PROCESS t_prcs_R1_6;
-- R1[5]
t_prcs_R1_5: PROCESS
BEGIN
	R1(5) <= '1';
WAIT;
END PROCESS t_prcs_R1_5;
-- R1[4]
t_prcs_R1_4: PROCESS
BEGIN
	R1(4) <= '1';
WAIT;
END PROCESS t_prcs_R1_4;
-- R1[3]
t_prcs_R1_3: PROCESS
BEGIN
	R1(3) <= '0';
WAIT;
END PROCESS t_prcs_R1_3;
-- R1[2]
t_prcs_R1_2: PROCESS
BEGIN
	R1(2) <= '0';
WAIT;
END PROCESS t_prcs_R1_2;
-- R1[1]
t_prcs_R1_1: PROCESS
BEGIN
	R1(1) <= '1';
WAIT;
END PROCESS t_prcs_R1_1;
-- R1[0]
t_prcs_R1_0: PROCESS
BEGIN
	R1(0) <= '0';
WAIT;
END PROCESS t_prcs_R1_0;
-- R2[7]
t_prcs_R2_7: PROCESS
BEGIN
	R2(7) <= '0';
WAIT;
END PROCESS t_prcs_R2_7;
-- R2[6]
t_prcs_R2_6: PROCESS
BEGIN
	R2(6) <= '0';
WAIT;
END PROCESS t_prcs_R2_6;
-- R2[5]
t_prcs_R2_5: PROCESS
BEGIN
	R2(5) <= '0';
WAIT;
END PROCESS t_prcs_R2_5;
-- R2[4]
t_prcs_R2_4: PROCESS
BEGIN
	R2(4) <= '0';
WAIT;
END PROCESS t_prcs_R2_4;
-- R2[3]
t_prcs_R2_3: PROCESS
BEGIN
	R2(3) <= '0';
WAIT;
END PROCESS t_prcs_R2_3;
-- R2[2]
t_prcs_R2_2: PROCESS
BEGIN
	R2(2) <= '0';
WAIT;
END PROCESS t_prcs_R2_2;
-- R2[1]
t_prcs_R2_1: PROCESS
BEGIN
	R2(1) <= '0';
WAIT;
END PROCESS t_prcs_R2_1;
-- R2[0]
t_prcs_R2_0: PROCESS
BEGIN
	R2(0) <= '0';
WAIT;
END PROCESS t_prcs_R2_0;
-- V[7]
t_prcs_V_7: PROCESS
BEGIN
	V(7) <= '0';
WAIT;
END PROCESS t_prcs_V_7;
-- V[6]
t_prcs_V_6: PROCESS
BEGIN
	V(6) <= '0';
WAIT;
END PROCESS t_prcs_V_6;
-- V[5]
t_prcs_V_5: PROCESS
BEGIN
	V(5) <= '0';
WAIT;
END PROCESS t_prcs_V_5;
-- V[4]
t_prcs_V_4: PROCESS
BEGIN
	V(4) <= '1';
WAIT;
END PROCESS t_prcs_V_4;
-- V[3]
t_prcs_V_3: PROCESS
BEGIN
	V(3) <= '1';
WAIT;
END PROCESS t_prcs_V_3;
-- V[2]
t_prcs_V_2: PROCESS
BEGIN
	V(2) <= '0';
WAIT;
END PROCESS t_prcs_V_2;
-- V[1]
t_prcs_V_1: PROCESS
BEGIN
	V(1) <= '0';
WAIT;
END PROCESS t_prcs_V_1;
-- V[0]
t_prcs_V_0: PROCESS
BEGIN
	V(0) <= '1';
WAIT;
END PROCESS t_prcs_V_0;
END maquina_de_vendas_arch;
