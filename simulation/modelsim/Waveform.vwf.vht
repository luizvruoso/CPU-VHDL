-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/21/2019 08:51:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Instruction : STD_LOGIC_VECTOR(0 TO 9);
SIGNAL Li : STD_LOGIC;
SIGNAL R0test : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R1test : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R2test : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R3test : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R4test : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ULA : STD_LOGIC_VECTOR(0 TO 2);
COMPONENT CPU
	PORT (
	Clock : IN STD_LOGIC;
	Instruction : IN STD_LOGIC_VECTOR(0 TO 9);
	Li : OUT STD_LOGIC;
	R0test : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R1test : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R2test : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R3test : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R4test : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ULA : OUT STD_LOGIC_VECTOR(0 TO 2)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Instruction => Instruction,
	Li => Li,
	R0test => R0test,
	R1test => R1test,
	R2test => R2test,
	R3test => R3test,
	R4test => R4test,
	ULA => ULA
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 20000 ps;
	Clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- Instruction[9]
t_prcs_Instruction_9: PROCESS
BEGIN
	Instruction(9) <= '0';
	WAIT FOR 10000 ps;
	Instruction(9) <= '1';
	WAIT FOR 30000 ps;
	Instruction(9) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_9;
-- Instruction[8]
t_prcs_Instruction_8: PROCESS
BEGIN
	Instruction(8) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_8;
-- Instruction[7]
t_prcs_Instruction_7: PROCESS
BEGIN
	Instruction(7) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_7;
-- Instruction[6]
t_prcs_Instruction_6: PROCESS
BEGIN
	Instruction(6) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_6;
-- Instruction[5]
t_prcs_Instruction_5: PROCESS
BEGIN
	Instruction(5) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_5;
-- Instruction[4]
t_prcs_Instruction_4: PROCESS
BEGIN
	Instruction(4) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_4;
-- Instruction[3]
t_prcs_Instruction_3: PROCESS
BEGIN
	Instruction(3) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_3;
-- Instruction[2]
t_prcs_Instruction_2: PROCESS
BEGIN
	Instruction(2) <= '0';
	WAIT FOR 10000 ps;
	Instruction(2) <= '1';
	WAIT FOR 30000 ps;
	Instruction(2) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_2;
-- Instruction[1]
t_prcs_Instruction_1: PROCESS
BEGIN
	Instruction(1) <= '0';
	WAIT FOR 10000 ps;
	Instruction(1) <= '1';
	WAIT FOR 30000 ps;
	Instruction(1) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_1;
-- Instruction[0]
t_prcs_Instruction_0: PROCESS
BEGIN
	Instruction(0) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_0;
END CPU_arch;
