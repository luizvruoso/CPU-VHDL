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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/22/2019 11:38:40"

-- 
-- Device: Altera EP4CE40F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	Clock : IN std_logic;
	Instruction : IN std_logic_vector(0 TO 7);
	Li : BUFFER std_logic;
	ULA : BUFFER std_logic_vector(0 TO 2);
	R0test : BUFFER std_logic_vector(15 DOWNTO 0);
	R1test : BUFFER std_logic_vector(15 DOWNTO 0);
	R2test : BUFFER std_logic_vector(15 DOWNTO 0);
	R3test : BUFFER std_logic_vector(15 DOWNTO 0);
	R4test : BUFFER std_logic_vector(15 DOWNTO 0);
	Bustest : BUFFER std_logic_vector(15 DOWNTO 0);
	R0intest : BUFFER std_logic;
	R1intest : BUFFER std_logic;
	R2intest : BUFFER std_logic;
	R3intest : BUFFER std_logic;
	R4intest : BUFFER std_logic;
	R0outtest : BUFFER std_logic;
	R1outtest : BUFFER std_logic;
	R2outtest : BUFFER std_logic;
	R3outtest : BUFFER std_logic;
	R4outtest : BUFFER std_logic
	);
END CPU;

-- Design Ports Information
-- Li	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA[2]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA[1]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[3]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[6]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[9]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[10]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[11]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[12]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[13]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[14]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0test[15]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[9]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[10]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[12]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[13]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1test[15]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[1]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[6]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[10]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[13]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[14]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2test[15]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[1]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[4]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[5]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[7]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[8]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[10]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[11]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[13]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[14]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3test[15]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[2]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[4]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[5]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[8]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[9]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[11]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[12]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[13]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4test[15]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[2]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[4]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[5]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[6]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[8]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[10]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[11]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[13]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[14]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bustest[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0intest	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1intest	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2intest	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3intest	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4intest	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0outtest	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1outtest	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2outtest	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3outtest	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4outtest	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[2]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[0]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[5]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Instruction : std_logic_vector(0 TO 7);
SIGNAL ww_Li : std_logic;
SIGNAL ww_ULA : std_logic_vector(0 TO 2);
SIGNAL ww_R0test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R1test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R3test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R4test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Bustest : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R0intest : std_logic;
SIGNAL ww_R1intest : std_logic;
SIGNAL ww_R2intest : std_logic;
SIGNAL ww_R3intest : std_logic;
SIGNAL ww_R4intest : std_logic;
SIGNAL ww_R0outtest : std_logic;
SIGNAL ww_R1outtest : std_logic;
SIGNAL ww_R2outtest : std_logic;
SIGNAL ww_R3outtest : std_logic;
SIGNAL ww_R4outtest : std_logic;
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Bustest[0]~output_o\ : std_logic;
SIGNAL \Bustest[1]~output_o\ : std_logic;
SIGNAL \Bustest[2]~output_o\ : std_logic;
SIGNAL \Bustest[3]~output_o\ : std_logic;
SIGNAL \Bustest[4]~output_o\ : std_logic;
SIGNAL \Bustest[5]~output_o\ : std_logic;
SIGNAL \Bustest[6]~output_o\ : std_logic;
SIGNAL \Bustest[7]~output_o\ : std_logic;
SIGNAL \Bustest[8]~output_o\ : std_logic;
SIGNAL \Bustest[9]~output_o\ : std_logic;
SIGNAL \Bustest[10]~output_o\ : std_logic;
SIGNAL \Bustest[11]~output_o\ : std_logic;
SIGNAL \Bustest[12]~output_o\ : std_logic;
SIGNAL \Bustest[13]~output_o\ : std_logic;
SIGNAL \Bustest[14]~output_o\ : std_logic;
SIGNAL \Bustest[15]~output_o\ : std_logic;
SIGNAL \Li~output_o\ : std_logic;
SIGNAL \ULA[2]~output_o\ : std_logic;
SIGNAL \ULA[1]~output_o\ : std_logic;
SIGNAL \ULA[0]~output_o\ : std_logic;
SIGNAL \R0test[0]~output_o\ : std_logic;
SIGNAL \R0test[1]~output_o\ : std_logic;
SIGNAL \R0test[2]~output_o\ : std_logic;
SIGNAL \R0test[3]~output_o\ : std_logic;
SIGNAL \R0test[4]~output_o\ : std_logic;
SIGNAL \R0test[5]~output_o\ : std_logic;
SIGNAL \R0test[6]~output_o\ : std_logic;
SIGNAL \R0test[7]~output_o\ : std_logic;
SIGNAL \R0test[8]~output_o\ : std_logic;
SIGNAL \R0test[9]~output_o\ : std_logic;
SIGNAL \R0test[10]~output_o\ : std_logic;
SIGNAL \R0test[11]~output_o\ : std_logic;
SIGNAL \R0test[12]~output_o\ : std_logic;
SIGNAL \R0test[13]~output_o\ : std_logic;
SIGNAL \R0test[14]~output_o\ : std_logic;
SIGNAL \R0test[15]~output_o\ : std_logic;
SIGNAL \R1test[0]~output_o\ : std_logic;
SIGNAL \R1test[1]~output_o\ : std_logic;
SIGNAL \R1test[2]~output_o\ : std_logic;
SIGNAL \R1test[3]~output_o\ : std_logic;
SIGNAL \R1test[4]~output_o\ : std_logic;
SIGNAL \R1test[5]~output_o\ : std_logic;
SIGNAL \R1test[6]~output_o\ : std_logic;
SIGNAL \R1test[7]~output_o\ : std_logic;
SIGNAL \R1test[8]~output_o\ : std_logic;
SIGNAL \R1test[9]~output_o\ : std_logic;
SIGNAL \R1test[10]~output_o\ : std_logic;
SIGNAL \R1test[11]~output_o\ : std_logic;
SIGNAL \R1test[12]~output_o\ : std_logic;
SIGNAL \R1test[13]~output_o\ : std_logic;
SIGNAL \R1test[14]~output_o\ : std_logic;
SIGNAL \R1test[15]~output_o\ : std_logic;
SIGNAL \R2test[0]~output_o\ : std_logic;
SIGNAL \R2test[1]~output_o\ : std_logic;
SIGNAL \R2test[2]~output_o\ : std_logic;
SIGNAL \R2test[3]~output_o\ : std_logic;
SIGNAL \R2test[4]~output_o\ : std_logic;
SIGNAL \R2test[5]~output_o\ : std_logic;
SIGNAL \R2test[6]~output_o\ : std_logic;
SIGNAL \R2test[7]~output_o\ : std_logic;
SIGNAL \R2test[8]~output_o\ : std_logic;
SIGNAL \R2test[9]~output_o\ : std_logic;
SIGNAL \R2test[10]~output_o\ : std_logic;
SIGNAL \R2test[11]~output_o\ : std_logic;
SIGNAL \R2test[12]~output_o\ : std_logic;
SIGNAL \R2test[13]~output_o\ : std_logic;
SIGNAL \R2test[14]~output_o\ : std_logic;
SIGNAL \R2test[15]~output_o\ : std_logic;
SIGNAL \R3test[0]~output_o\ : std_logic;
SIGNAL \R3test[1]~output_o\ : std_logic;
SIGNAL \R3test[2]~output_o\ : std_logic;
SIGNAL \R3test[3]~output_o\ : std_logic;
SIGNAL \R3test[4]~output_o\ : std_logic;
SIGNAL \R3test[5]~output_o\ : std_logic;
SIGNAL \R3test[6]~output_o\ : std_logic;
SIGNAL \R3test[7]~output_o\ : std_logic;
SIGNAL \R3test[8]~output_o\ : std_logic;
SIGNAL \R3test[9]~output_o\ : std_logic;
SIGNAL \R3test[10]~output_o\ : std_logic;
SIGNAL \R3test[11]~output_o\ : std_logic;
SIGNAL \R3test[12]~output_o\ : std_logic;
SIGNAL \R3test[13]~output_o\ : std_logic;
SIGNAL \R3test[14]~output_o\ : std_logic;
SIGNAL \R3test[15]~output_o\ : std_logic;
SIGNAL \R4test[0]~output_o\ : std_logic;
SIGNAL \R4test[1]~output_o\ : std_logic;
SIGNAL \R4test[2]~output_o\ : std_logic;
SIGNAL \R4test[3]~output_o\ : std_logic;
SIGNAL \R4test[4]~output_o\ : std_logic;
SIGNAL \R4test[5]~output_o\ : std_logic;
SIGNAL \R4test[6]~output_o\ : std_logic;
SIGNAL \R4test[7]~output_o\ : std_logic;
SIGNAL \R4test[8]~output_o\ : std_logic;
SIGNAL \R4test[9]~output_o\ : std_logic;
SIGNAL \R4test[10]~output_o\ : std_logic;
SIGNAL \R4test[11]~output_o\ : std_logic;
SIGNAL \R4test[12]~output_o\ : std_logic;
SIGNAL \R4test[13]~output_o\ : std_logic;
SIGNAL \R4test[14]~output_o\ : std_logic;
SIGNAL \R4test[15]~output_o\ : std_logic;
SIGNAL \R0intest~output_o\ : std_logic;
SIGNAL \R1intest~output_o\ : std_logic;
SIGNAL \R2intest~output_o\ : std_logic;
SIGNAL \R3intest~output_o\ : std_logic;
SIGNAL \R4intest~output_o\ : std_logic;
SIGNAL \R0outtest~output_o\ : std_logic;
SIGNAL \R1outtest~output_o\ : std_logic;
SIGNAL \R2outtest~output_o\ : std_logic;
SIGNAL \R3outtest~output_o\ : std_logic;
SIGNAL \R4outtest~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Instruction[3]~input_o\ : std_logic;
SIGNAL \Instruction[1]~input_o\ : std_logic;
SIGNAL \Instruction[0]~input_o\ : std_logic;
SIGNAL \Instruction[2]~input_o\ : std_logic;
SIGNAL \unidadeControle|current_state~14_combout\ : std_logic;
SIGNAL \unidadeControle|current_state~15_combout\ : std_logic;
SIGNAL \unidadeControle|current_state.XCHG0~q\ : std_logic;
SIGNAL \unidadeControle|current_state.XCHG1~q\ : std_logic;
SIGNAL \unidadeControle|current_state.XCHG2~q\ : std_logic;
SIGNAL \unidadeControle|Mux0~0_combout\ : std_logic;
SIGNAL \unidadeControle|current_state~11_combout\ : std_logic;
SIGNAL \unidadeControle|current_state~13_combout\ : std_logic;
SIGNAL \unidadeControle|current_state.MOVi~q\ : std_logic;
SIGNAL \unidadeControle|current_state~12_combout\ : std_logic;
SIGNAL \unidadeControle|current_state.MOV~q\ : std_logic;
SIGNAL \unidadeControle|current_state.ARITH2~q\ : std_logic;
SIGNAL \unidadeControle|Selector14~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector14~1_combout\ : std_logic;
SIGNAL \unidadeControle|current_state.DECODE~q\ : std_logic;
SIGNAL \unidadeControle|Mux4~0_combout\ : std_logic;
SIGNAL \unidadeControle|current_state~16_combout\ : std_logic;
SIGNAL \unidadeControle|current_state.ARITH0~q\ : std_logic;
SIGNAL \unidadeControle|current_state.ARITH1~q\ : std_logic;
SIGNAL \unidadeControle|Selector13~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector13~1_combout\ : std_logic;
SIGNAL \unidadeControle|Li~q\ : std_logic;
SIGNAL \Instruction[6]~input_o\ : std_logic;
SIGNAL \unidadeControle|Selector3~0_combout\ : std_logic;
SIGNAL \Instruction[7]~input_o\ : std_logic;
SIGNAL \Instruction[4]~input_o\ : std_logic;
SIGNAL \Instruction[5]~input_o\ : std_logic;
SIGNAL \unidadeControle|Selector1~2_combout\ : std_logic;
SIGNAL \unidadeControle|Selector1~3_combout\ : std_logic;
SIGNAL \unidadeControle|Selector1~4_combout\ : std_logic;
SIGNAL \unidadeControle|Selector1~6_combout\ : std_logic;
SIGNAL \unidadeControle|reg0out~q\ : std_logic;
SIGNAL \unidadeControle|Selector3~2_combout\ : std_logic;
SIGNAL \unidadeControle|Selector3~1_combout\ : std_logic;
SIGNAL \unidadeControle|Selector1~5_combout\ : std_logic;
SIGNAL \unidadeControle|Selector3~3_combout\ : std_logic;
SIGNAL \unidadeControle|reg1out~q\ : std_logic;
SIGNAL \unidadeControle|Selector5~2_combout\ : std_logic;
SIGNAL \unidadeControle|Selector5~3_combout\ : std_logic;
SIGNAL \unidadeControle|Selector5~4_combout\ : std_logic;
SIGNAL \unidadeControle|reg2out~q\ : std_logic;
SIGNAL \unidadeControle|Selector9~0_combout\ : std_logic;
SIGNAL \unidadeControle|reg4out~q\ : std_logic;
SIGNAL \unidadeControle|Selector7~1_combout\ : std_logic;
SIGNAL \unidadeControle|Selector7~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector7~2_combout\ : std_logic;
SIGNAL \unidadeControle|reg3out~q\ : std_logic;
SIGNAL \unidadeControle|Selector12~0_combout\ : std_logic;
SIGNAL \unidadeControle|aux2out~q\ : std_logic;
SIGNAL \triState0|F[0]~7_combout\ : std_logic;
SIGNAL \triState0|F[0]~8_combout\ : std_logic;
SIGNAL \triState0|F[0]~9_combout\ : std_logic;
SIGNAL \temp1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \unidadeControle|Selector10~0_combout\ : std_logic;
SIGNAL \unidadeControle|aux1in~q\ : std_logic;
SIGNAL \unidadeControle|Mux14~0_combout\ : std_logic;
SIGNAL \unidadeControle|ULA[2]~feeder_combout\ : std_logic;
SIGNAL \UndLA|Add0~0_combout\ : std_logic;
SIGNAL \temp2|Q[0]~17_cout\ : std_logic;
SIGNAL \temp2|Q[0]~18_combout\ : std_logic;
SIGNAL \UndLA|Mux15~0_combout\ : std_logic;
SIGNAL \unidadeControle|Mux13~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector11~0_combout\ : std_logic;
SIGNAL \unidadeControle|aux2in~q\ : std_logic;
SIGNAL \triState0|F[0]~5_combout\ : std_logic;
SIGNAL \unidadeControle|Selector0~4_combout\ : std_logic;
SIGNAL \unidadeControle|Selector0~2_combout\ : std_logic;
SIGNAL \unidadeControle|Selector0~3_combout\ : std_logic;
SIGNAL \unidadeControle|Selector0~6_combout\ : std_logic;
SIGNAL \unidadeControle|Selector0~5_combout\ : std_logic;
SIGNAL \unidadeControle|reg0in~q\ : std_logic;
SIGNAL \triState0|F[0]~4_combout\ : std_logic;
SIGNAL \unidadeControle|Selector8~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector8~1_combout\ : std_logic;
SIGNAL \unidadeControle|reg4in~q\ : std_logic;
SIGNAL \reg3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \unidadeControle|Selector6~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector6~1_combout\ : std_logic;
SIGNAL \unidadeControle|Selector6~2_combout\ : std_logic;
SIGNAL \unidadeControle|reg3in~q\ : std_logic;
SIGNAL \triState0|F[0]~3_combout\ : std_logic;
SIGNAL \reg2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \unidadeControle|Selector4~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector4~1_combout\ : std_logic;
SIGNAL \unidadeControle|Selector4~2_combout\ : std_logic;
SIGNAL \unidadeControle|reg2in~q\ : std_logic;
SIGNAL \unidadeControle|Selector2~0_combout\ : std_logic;
SIGNAL \unidadeControle|Selector2~1_combout\ : std_logic;
SIGNAL \unidadeControle|reg1in~q\ : std_logic;
SIGNAL \triState0|F[0]~2_combout\ : std_logic;
SIGNAL \triState0|F[0]~6_combout\ : std_logic;
SIGNAL \triState0|F[1]~15_combout\ : std_logic;
SIGNAL \reg3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \triState0|F[1]~11_combout\ : std_logic;
SIGNAL \triState0|F[1]~12_combout\ : std_logic;
SIGNAL \UndLA|Add0~1_combout\ : std_logic;
SIGNAL \temp2|Q[0]~19\ : std_logic;
SIGNAL \temp2|Q[1]~20_combout\ : std_logic;
SIGNAL \UndLA|Mux14~0_combout\ : std_logic;
SIGNAL \triState0|F[1]~13_combout\ : std_logic;
SIGNAL \reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \triState0|F[1]~10_combout\ : std_logic;
SIGNAL \triState0|F[1]~14_combout\ : std_logic;
SIGNAL \UndLA|Add0~2_combout\ : std_logic;
SIGNAL \triUPCODE|F[2]~18_combout\ : std_logic;
SIGNAL \temp2|Q[1]~21\ : std_logic;
SIGNAL \temp2|Q[2]~22_combout\ : std_logic;
SIGNAL \UndLA|Mux13~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[2]~16_combout\ : std_logic;
SIGNAL \reg2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[2]~14_combout\ : std_logic;
SIGNAL \triUPCODE|F[2]~15_combout\ : std_logic;
SIGNAL \triUPCODE|F[2]~17_combout\ : std_logic;
SIGNAL \triUPCODE|F[3]~23_combout\ : std_logic;
SIGNAL \UndLA|Add0~3_combout\ : std_logic;
SIGNAL \temp2|Q[2]~23\ : std_logic;
SIGNAL \temp2|Q[3]~24_combout\ : std_logic;
SIGNAL \UndLA|Mux12~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[3]~21_combout\ : std_logic;
SIGNAL \reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[3]~19_combout\ : std_logic;
SIGNAL \reg3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[3]~20_combout\ : std_logic;
SIGNAL \triUPCODE|F[3]~22_combout\ : std_logic;
SIGNAL \triUPCODE|F[4]~28_combout\ : std_logic;
SIGNAL \UndLA|Add0~4_combout\ : std_logic;
SIGNAL \temp2|Q[3]~25\ : std_logic;
SIGNAL \temp2|Q[4]~26_combout\ : std_logic;
SIGNAL \UndLA|Mux11~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[4]~26_combout\ : std_logic;
SIGNAL \reg3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[4]~25_combout\ : std_logic;
SIGNAL \reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[4]~24_combout\ : std_logic;
SIGNAL \triUPCODE|F[4]~27_combout\ : std_logic;
SIGNAL \triUPCODE|F[5]~33_combout\ : std_logic;
SIGNAL \reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[5]~29_combout\ : std_logic;
SIGNAL \UndLA|Add0~5_combout\ : std_logic;
SIGNAL \temp2|Q[4]~27\ : std_logic;
SIGNAL \temp2|Q[5]~28_combout\ : std_logic;
SIGNAL \UndLA|Mux10~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[5]~31_combout\ : std_logic;
SIGNAL \reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[5]~30_combout\ : std_logic;
SIGNAL \triUPCODE|F[5]~32_combout\ : std_logic;
SIGNAL \UndLA|Add0~6_combout\ : std_logic;
SIGNAL \triUPCODE|F[6]~38_combout\ : std_logic;
SIGNAL \temp2|Q[5]~29\ : std_logic;
SIGNAL \temp2|Q[6]~30_combout\ : std_logic;
SIGNAL \UndLA|Mux9~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[6]~36_combout\ : std_logic;
SIGNAL \reg3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[6]~35_combout\ : std_logic;
SIGNAL \reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[6]~34_combout\ : std_logic;
SIGNAL \triUPCODE|F[6]~37_combout\ : std_logic;
SIGNAL \triUPCODE|F[7]~43_combout\ : std_logic;
SIGNAL \triUPCODE|F[7]~40_combout\ : std_logic;
SIGNAL \reg2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[7]~39_combout\ : std_logic;
SIGNAL \UndLA|Add0~7_combout\ : std_logic;
SIGNAL \temp2|Q[6]~31\ : std_logic;
SIGNAL \temp2|Q[7]~32_combout\ : std_logic;
SIGNAL \UndLA|Mux8~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[7]~41_combout\ : std_logic;
SIGNAL \triUPCODE|F[7]~42_combout\ : std_logic;
SIGNAL \triUPCODE|F[8]~48_combout\ : std_logic;
SIGNAL \triUPCODE|F[8]~45_combout\ : std_logic;
SIGNAL \reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[8]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[8]~44_combout\ : std_logic;
SIGNAL \temp1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \UndLA|Add0~8_combout\ : std_logic;
SIGNAL \temp2|Q[7]~33\ : std_logic;
SIGNAL \temp2|Q[8]~34_combout\ : std_logic;
SIGNAL \UndLA|Mux7~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[8]~46_combout\ : std_logic;
SIGNAL \triUPCODE|F[8]~47_combout\ : std_logic;
SIGNAL \triUPCODE|F[9]~53_combout\ : std_logic;
SIGNAL \UndLA|Add0~9_combout\ : std_logic;
SIGNAL \temp2|Q[8]~35\ : std_logic;
SIGNAL \temp2|Q[9]~36_combout\ : std_logic;
SIGNAL \UndLA|Mux6~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[9]~51_combout\ : std_logic;
SIGNAL \reg3|Q[9]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[9]~50_combout\ : std_logic;
SIGNAL \reg2|Q[9]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[9]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[9]~49_combout\ : std_logic;
SIGNAL \triUPCODE|F[9]~52_combout\ : std_logic;
SIGNAL \triUPCODE|F[10]~58_combout\ : std_logic;
SIGNAL \reg3|Q[10]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[10]~55_combout\ : std_logic;
SIGNAL \UndLA|Add0~10_combout\ : std_logic;
SIGNAL \temp2|Q[9]~37\ : std_logic;
SIGNAL \temp2|Q[10]~38_combout\ : std_logic;
SIGNAL \UndLA|Mux5~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[10]~56_combout\ : std_logic;
SIGNAL \reg1|Q[10]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[10]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[10]~54_combout\ : std_logic;
SIGNAL \triUPCODE|F[10]~57_combout\ : std_logic;
SIGNAL \triUPCODE|F[11]~63_combout\ : std_logic;
SIGNAL \triUPCODE|F[11]~60_combout\ : std_logic;
SIGNAL \reg1|Q[11]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[11]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[11]~59_combout\ : std_logic;
SIGNAL \UndLA|Add0~11_combout\ : std_logic;
SIGNAL \temp1|Q[11]~feeder_combout\ : std_logic;
SIGNAL \temp2|Q[10]~39\ : std_logic;
SIGNAL \temp2|Q[11]~40_combout\ : std_logic;
SIGNAL \UndLA|Mux4~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[11]~61_combout\ : std_logic;
SIGNAL \triUPCODE|F[11]~62_combout\ : std_logic;
SIGNAL \triUPCODE|F[12]~68_combout\ : std_logic;
SIGNAL \reg1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[12]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[12]~64_combout\ : std_logic;
SIGNAL \UndLA|Add0~12_combout\ : std_logic;
SIGNAL \temp2|Q[11]~41\ : std_logic;
SIGNAL \temp2|Q[12]~42_combout\ : std_logic;
SIGNAL \UndLA|Mux3~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[12]~66_combout\ : std_logic;
SIGNAL \reg3|Q[12]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[12]~65_combout\ : std_logic;
SIGNAL \triUPCODE|F[12]~67_combout\ : std_logic;
SIGNAL \triUPCODE|F[13]~73_combout\ : std_logic;
SIGNAL \reg3|Q[13]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[13]~70_combout\ : std_logic;
SIGNAL \UndLA|Add0~13_combout\ : std_logic;
SIGNAL \temp2|Q[12]~43\ : std_logic;
SIGNAL \temp2|Q[13]~44_combout\ : std_logic;
SIGNAL \UndLA|Mux2~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[13]~71_combout\ : std_logic;
SIGNAL \reg1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[13]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[13]~69_combout\ : std_logic;
SIGNAL \triUPCODE|F[13]~72_combout\ : std_logic;
SIGNAL \triUPCODE|F[14]~78_combout\ : std_logic;
SIGNAL \UndLA|Add0~14_combout\ : std_logic;
SIGNAL \temp2|Q[13]~45\ : std_logic;
SIGNAL \temp2|Q[14]~46_combout\ : std_logic;
SIGNAL \UndLA|Mux1~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[14]~76_combout\ : std_logic;
SIGNAL \reg2|Q[14]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[14]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[14]~74_combout\ : std_logic;
SIGNAL \reg3|Q[14]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[14]~75_combout\ : std_logic;
SIGNAL \triUPCODE|F[14]~77_combout\ : std_logic;
SIGNAL \triUPCODE|F[15]~83_combout\ : std_logic;
SIGNAL \UndLA|Add0~15_combout\ : std_logic;
SIGNAL \temp2|Q[14]~47\ : std_logic;
SIGNAL \temp2|Q[15]~48_combout\ : std_logic;
SIGNAL \UndLA|Mux0~0_combout\ : std_logic;
SIGNAL \triUPCODE|F[15]~81_combout\ : std_logic;
SIGNAL \reg1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[15]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[15]~79_combout\ : std_logic;
SIGNAL \reg3|Q[15]~feeder_combout\ : std_logic;
SIGNAL \triUPCODE|F[15]~80_combout\ : std_logic;
SIGNAL \triUPCODE|F[15]~82_combout\ : std_logic;
SIGNAL \temp2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \unidadeControle|ULA\ : std_logic_vector(0 TO 2);
SIGNAL \reg4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \temp1|Q\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Instruction <= Instruction;
Li <= ww_Li;
ULA <= ww_ULA;
R0test <= ww_R0test;
R1test <= ww_R1test;
R2test <= ww_R2test;
R3test <= ww_R3test;
R4test <= ww_R4test;
Bustest <= ww_Bustest;
R0intest <= ww_R0intest;
R1intest <= ww_R1intest;
R2intest <= ww_R2intest;
R3intest <= ww_R3intest;
R4intest <= ww_R4intest;
R0outtest <= ww_R0outtest;
R1outtest <= ww_R1outtest;
R2outtest <= ww_R2outtest;
R3outtest <= ww_R3outtest;
R4outtest <= ww_R4outtest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X67_Y41_N16
\Bustest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triState0|F[0]~6_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[0]~output_o\);

-- Location: IOOBUF_X65_Y43_N30
\Bustest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triState0|F[1]~14_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[1]~output_o\);

-- Location: IOOBUF_X67_Y40_N9
\Bustest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[2]~17_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[2]~output_o\);

-- Location: IOOBUF_X65_Y43_N2
\Bustest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[3]~22_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[3]~output_o\);

-- Location: IOOBUF_X67_Y39_N16
\Bustest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[4]~27_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[4]~output_o\);

-- Location: IOOBUF_X67_Y39_N9
\Bustest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[5]~32_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[5]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\Bustest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[6]~37_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[6]~output_o\);

-- Location: IOOBUF_X67_Y38_N9
\Bustest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[7]~42_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[7]~output_o\);

-- Location: IOOBUF_X67_Y41_N23
\Bustest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[8]~47_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[8]~output_o\);

-- Location: IOOBUF_X67_Y37_N16
\Bustest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[9]~52_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[9]~output_o\);

-- Location: IOOBUF_X67_Y40_N2
\Bustest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[10]~57_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[10]~output_o\);

-- Location: IOOBUF_X67_Y41_N9
\Bustest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[11]~62_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[11]~output_o\);

-- Location: IOOBUF_X65_Y43_N23
\Bustest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[12]~67_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[12]~output_o\);

-- Location: IOOBUF_X67_Y37_N23
\Bustest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[13]~72_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[13]~output_o\);

-- Location: IOOBUF_X67_Y38_N2
\Bustest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[14]~77_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[14]~output_o\);

-- Location: IOOBUF_X67_Y38_N23
\Bustest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \triUPCODE|F[15]~82_combout\,
	oe => \triState0|F[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bustest[15]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\Li~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Li~output_o\);

-- Location: IOOBUF_X67_Y36_N23
\ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|ULA\(2),
	devoe => ww_devoe,
	o => \ULA[2]~output_o\);

-- Location: IOOBUF_X67_Y36_N2
\ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|ULA\(1),
	devoe => ww_devoe,
	o => \ULA[1]~output_o\);

-- Location: IOOBUF_X67_Y7_N2
\ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ULA[0]~output_o\);

-- Location: IOOBUF_X67_Y28_N16
\R0test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(0),
	devoe => ww_devoe,
	o => \R0test[0]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\R0test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(1),
	devoe => ww_devoe,
	o => \R0test[1]~output_o\);

-- Location: IOOBUF_X63_Y43_N16
\R0test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(2),
	devoe => ww_devoe,
	o => \R0test[2]~output_o\);

-- Location: IOOBUF_X65_Y43_N9
\R0test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(3),
	devoe => ww_devoe,
	o => \R0test[3]~output_o\);

-- Location: IOOBUF_X63_Y43_N9
\R0test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(4),
	devoe => ww_devoe,
	o => \R0test[4]~output_o\);

-- Location: IOOBUF_X63_Y43_N2
\R0test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(5),
	devoe => ww_devoe,
	o => \R0test[5]~output_o\);

-- Location: IOOBUF_X59_Y43_N2
\R0test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(6),
	devoe => ww_devoe,
	o => \R0test[6]~output_o\);

-- Location: IOOBUF_X65_Y43_N16
\R0test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(7),
	devoe => ww_devoe,
	o => \R0test[7]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\R0test[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(8),
	devoe => ww_devoe,
	o => \R0test[8]~output_o\);

-- Location: IOOBUF_X67_Y30_N9
\R0test[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(9),
	devoe => ww_devoe,
	o => \R0test[9]~output_o\);

-- Location: IOOBUF_X67_Y28_N9
\R0test[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(10),
	devoe => ww_devoe,
	o => \R0test[10]~output_o\);

-- Location: IOOBUF_X67_Y26_N2
\R0test[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(11),
	devoe => ww_devoe,
	o => \R0test[11]~output_o\);

-- Location: IOOBUF_X67_Y31_N2
\R0test[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(12),
	devoe => ww_devoe,
	o => \R0test[12]~output_o\);

-- Location: IOOBUF_X67_Y30_N23
\R0test[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(13),
	devoe => ww_devoe,
	o => \R0test[13]~output_o\);

-- Location: IOOBUF_X67_Y24_N9
\R0test[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(14),
	devoe => ww_devoe,
	o => \R0test[14]~output_o\);

-- Location: IOOBUF_X67_Y20_N16
\R0test[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(15),
	devoe => ww_devoe,
	o => \R0test[15]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\R1test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(0),
	devoe => ww_devoe,
	o => \R1test[0]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\R1test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(1),
	devoe => ww_devoe,
	o => \R1test[1]~output_o\);

-- Location: IOOBUF_X67_Y20_N23
\R1test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(2),
	devoe => ww_devoe,
	o => \R1test[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N30
\R1test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(3),
	devoe => ww_devoe,
	o => \R1test[3]~output_o\);

-- Location: IOOBUF_X52_Y43_N2
\R1test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(4),
	devoe => ww_devoe,
	o => \R1test[4]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\R1test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(5),
	devoe => ww_devoe,
	o => \R1test[5]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\R1test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(6),
	devoe => ww_devoe,
	o => \R1test[6]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\R1test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(7),
	devoe => ww_devoe,
	o => \R1test[7]~output_o\);

-- Location: IOOBUF_X67_Y20_N9
\R1test[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(8),
	devoe => ww_devoe,
	o => \R1test[8]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\R1test[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(9),
	devoe => ww_devoe,
	o => \R1test[9]~output_o\);

-- Location: IOOBUF_X50_Y43_N9
\R1test[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(10),
	devoe => ww_devoe,
	o => \R1test[10]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\R1test[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(11),
	devoe => ww_devoe,
	o => \R1test[11]~output_o\);

-- Location: IOOBUF_X67_Y34_N23
\R1test[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(12),
	devoe => ww_devoe,
	o => \R1test[12]~output_o\);

-- Location: IOOBUF_X67_Y32_N16
\R1test[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(13),
	devoe => ww_devoe,
	o => \R1test[13]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\R1test[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(14),
	devoe => ww_devoe,
	o => \R1test[14]~output_o\);

-- Location: IOOBUF_X61_Y43_N9
\R1test[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(15),
	devoe => ww_devoe,
	o => \R1test[15]~output_o\);

-- Location: IOOBUF_X52_Y43_N30
\R2test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(0),
	devoe => ww_devoe,
	o => \R2test[0]~output_o\);

-- Location: IOOBUF_X56_Y43_N2
\R2test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(1),
	devoe => ww_devoe,
	o => \R2test[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\R2test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(2),
	devoe => ww_devoe,
	o => \R2test[2]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\R2test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(3),
	devoe => ww_devoe,
	o => \R2test[3]~output_o\);

-- Location: IOOBUF_X52_Y43_N16
\R2test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(4),
	devoe => ww_devoe,
	o => \R2test[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N2
\R2test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(5),
	devoe => ww_devoe,
	o => \R2test[5]~output_o\);

-- Location: IOOBUF_X67_Y25_N2
\R2test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(6),
	devoe => ww_devoe,
	o => \R2test[6]~output_o\);

-- Location: IOOBUF_X52_Y43_N9
\R2test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(7),
	devoe => ww_devoe,
	o => \R2test[7]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\R2test[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(8),
	devoe => ww_devoe,
	o => \R2test[8]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\R2test[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(9),
	devoe => ww_devoe,
	o => \R2test[9]~output_o\);

-- Location: IOOBUF_X54_Y43_N23
\R2test[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(10),
	devoe => ww_devoe,
	o => \R2test[10]~output_o\);

-- Location: IOOBUF_X48_Y43_N30
\R2test[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(11),
	devoe => ww_devoe,
	o => \R2test[11]~output_o\);

-- Location: IOOBUF_X67_Y29_N9
\R2test[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(12),
	devoe => ww_devoe,
	o => \R2test[12]~output_o\);

-- Location: IOOBUF_X67_Y41_N2
\R2test[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(13),
	devoe => ww_devoe,
	o => \R2test[13]~output_o\);

-- Location: IOOBUF_X61_Y43_N23
\R2test[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(14),
	devoe => ww_devoe,
	o => \R2test[14]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\R2test[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(15),
	devoe => ww_devoe,
	o => \R2test[15]~output_o\);

-- Location: IOOBUF_X52_Y43_N23
\R3test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(0),
	devoe => ww_devoe,
	o => \R3test[0]~output_o\);

-- Location: IOOBUF_X67_Y32_N9
\R3test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(1),
	devoe => ww_devoe,
	o => \R3test[1]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\R3test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(2),
	devoe => ww_devoe,
	o => \R3test[2]~output_o\);

-- Location: IOOBUF_X54_Y43_N2
\R3test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(3),
	devoe => ww_devoe,
	o => \R3test[3]~output_o\);

-- Location: IOOBUF_X67_Y39_N2
\R3test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(4),
	devoe => ww_devoe,
	o => \R3test[4]~output_o\);

-- Location: IOOBUF_X67_Y31_N23
\R3test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(5),
	devoe => ww_devoe,
	o => \R3test[5]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\R3test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(6),
	devoe => ww_devoe,
	o => \R3test[6]~output_o\);

-- Location: IOOBUF_X67_Y34_N16
\R3test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(7),
	devoe => ww_devoe,
	o => \R3test[7]~output_o\);

-- Location: IOOBUF_X67_Y26_N9
\R3test[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(8),
	devoe => ww_devoe,
	o => \R3test[8]~output_o\);

-- Location: IOOBUF_X67_Y32_N23
\R3test[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(9),
	devoe => ww_devoe,
	o => \R3test[9]~output_o\);

-- Location: IOOBUF_X67_Y32_N2
\R3test[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(10),
	devoe => ww_devoe,
	o => \R3test[10]~output_o\);

-- Location: IOOBUF_X67_Y19_N16
\R3test[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(11),
	devoe => ww_devoe,
	o => \R3test[11]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\R3test[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(12),
	devoe => ww_devoe,
	o => \R3test[12]~output_o\);

-- Location: IOOBUF_X67_Y33_N16
\R3test[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(13),
	devoe => ww_devoe,
	o => \R3test[13]~output_o\);

-- Location: IOOBUF_X67_Y28_N2
\R3test[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(14),
	devoe => ww_devoe,
	o => \R3test[14]~output_o\);

-- Location: IOOBUF_X67_Y38_N16
\R3test[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(15),
	devoe => ww_devoe,
	o => \R3test[15]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\R4test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(0),
	devoe => ww_devoe,
	o => \R4test[0]~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\R4test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(1),
	devoe => ww_devoe,
	o => \R4test[1]~output_o\);

-- Location: IOOBUF_X67_Y31_N9
\R4test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(2),
	devoe => ww_devoe,
	o => \R4test[2]~output_o\);

-- Location: IOOBUF_X63_Y43_N23
\R4test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(3),
	devoe => ww_devoe,
	o => \R4test[3]~output_o\);

-- Location: IOOBUF_X67_Y25_N9
\R4test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(4),
	devoe => ww_devoe,
	o => \R4test[4]~output_o\);

-- Location: IOOBUF_X67_Y30_N16
\R4test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(5),
	devoe => ww_devoe,
	o => \R4test[5]~output_o\);

-- Location: IOOBUF_X54_Y43_N9
\R4test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(6),
	devoe => ww_devoe,
	o => \R4test[6]~output_o\);

-- Location: IOOBUF_X67_Y34_N2
\R4test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(7),
	devoe => ww_devoe,
	o => \R4test[7]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\R4test[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(8),
	devoe => ww_devoe,
	o => \R4test[8]~output_o\);

-- Location: IOOBUF_X67_Y24_N2
\R4test[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(9),
	devoe => ww_devoe,
	o => \R4test[9]~output_o\);

-- Location: IOOBUF_X56_Y43_N30
\R4test[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(10),
	devoe => ww_devoe,
	o => \R4test[10]~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\R4test[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(11),
	devoe => ww_devoe,
	o => \R4test[11]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\R4test[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(12),
	devoe => ww_devoe,
	o => \R4test[12]~output_o\);

-- Location: IOOBUF_X67_Y25_N16
\R4test[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(13),
	devoe => ww_devoe,
	o => \R4test[13]~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\R4test[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(14),
	devoe => ww_devoe,
	o => \R4test[14]~output_o\);

-- Location: IOOBUF_X67_Y30_N2
\R4test[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|Q\(15),
	devoe => ww_devoe,
	o => \R4test[15]~output_o\);

-- Location: IOOBUF_X67_Y33_N23
\R0intest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg0in~q\,
	devoe => ww_devoe,
	o => \R0intest~output_o\);

-- Location: IOOBUF_X67_Y33_N9
\R1intest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg1in~q\,
	devoe => ww_devoe,
	o => \R1intest~output_o\);

-- Location: IOOBUF_X67_Y36_N16
\R2intest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg2in~q\,
	devoe => ww_devoe,
	o => \R2intest~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\R3intest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg3in~q\,
	devoe => ww_devoe,
	o => \R3intest~output_o\);

-- Location: IOOBUF_X67_Y35_N23
\R4intest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg4in~q\,
	devoe => ww_devoe,
	o => \R4intest~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\R0outtest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg0out~q\,
	devoe => ww_devoe,
	o => \R0outtest~output_o\);

-- Location: IOOBUF_X67_Y37_N2
\R1outtest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg1out~q\,
	devoe => ww_devoe,
	o => \R1outtest~output_o\);

-- Location: IOOBUF_X67_Y33_N2
\R2outtest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg2out~q\,
	devoe => ww_devoe,
	o => \R2outtest~output_o\);

-- Location: IOOBUF_X67_Y36_N9
\R3outtest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg3out~q\,
	devoe => ww_devoe,
	o => \R3outtest~output_o\);

-- Location: IOOBUF_X67_Y35_N16
\R4outtest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidadeControle|reg4out~q\,
	devoe => ww_devoe,
	o => \R4outtest~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X67_Y20_N1
\Instruction[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(3),
	o => \Instruction[3]~input_o\);

-- Location: IOIBUF_X67_Y29_N1
\Instruction[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(1),
	o => \Instruction[1]~input_o\);

-- Location: IOIBUF_X67_Y29_N15
\Instruction[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(0),
	o => \Instruction[0]~input_o\);

-- Location: IOIBUF_X67_Y29_N22
\Instruction[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(2),
	o => \Instruction[2]~input_o\);

-- Location: LCCOMB_X63_Y37_N20
\unidadeControle|current_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~14_combout\ = (!\Instruction[1]~input_o\ & (\Instruction[0]~input_o\ & (\Instruction[3]~input_o\ & \Instruction[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datac => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|current_state~14_combout\);

-- Location: LCCOMB_X62_Y37_N12
\unidadeControle|current_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~15_combout\ = (\unidadeControle|current_state~14_combout\ & !\unidadeControle|current_state.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state~14_combout\,
	datac => \unidadeControle|current_state.DECODE~q\,
	combout => \unidadeControle|current_state~15_combout\);

-- Location: FF_X62_Y37_N13
\unidadeControle|current_state.XCHG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|current_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.XCHG0~q\);

-- Location: FF_X63_Y37_N11
\unidadeControle|current_state.XCHG1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \unidadeControle|current_state.XCHG0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.XCHG1~q\);

-- Location: FF_X62_Y37_N17
\unidadeControle|current_state.XCHG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \unidadeControle|current_state.XCHG1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.XCHG2~q\);

-- Location: LCCOMB_X63_Y37_N28
\unidadeControle|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Mux0~0_combout\ = (\Instruction[1]~input_o\ & (!\Instruction[0]~input_o\)) # (!\Instruction[1]~input_o\ & ((\Instruction[0]~input_o\) # ((\Instruction[3]~input_o\) # (\Instruction[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datac => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y37_N10
\unidadeControle|current_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~11_combout\ = (\Instruction[1]~input_o\ & (!\Instruction[0]~input_o\ & !\unidadeControle|current_state.DECODE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datad => \unidadeControle|current_state.DECODE~q\,
	combout => \unidadeControle|current_state~11_combout\);

-- Location: LCCOMB_X63_Y37_N26
\unidadeControle|current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~13_combout\ = (\unidadeControle|current_state~11_combout\ & (!\Instruction[3]~input_o\ & \Instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state~11_combout\,
	datab => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|current_state~13_combout\);

-- Location: FF_X63_Y37_N27
\unidadeControle|current_state.MOVi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.MOVi~q\);

-- Location: LCCOMB_X63_Y37_N30
\unidadeControle|current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~12_combout\ = (\unidadeControle|current_state~11_combout\ & (\Instruction[3]~input_o\ & !\Instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state~11_combout\,
	datab => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|current_state~12_combout\);

-- Location: FF_X63_Y37_N31
\unidadeControle|current_state.MOV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.MOV~q\);

-- Location: FF_X63_Y39_N3
\unidadeControle|current_state.ARITH2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \unidadeControle|current_state.ARITH1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.ARITH2~q\);

-- Location: LCCOMB_X63_Y37_N16
\unidadeControle|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector14~0_combout\ = (!\unidadeControle|current_state.MOVi~q\ & (!\unidadeControle|current_state.MOV~q\ & !\unidadeControle|current_state.ARITH2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.MOVi~q\,
	datab => \unidadeControle|current_state.MOV~q\,
	datad => \unidadeControle|current_state.ARITH2~q\,
	combout => \unidadeControle|Selector14~0_combout\);

-- Location: LCCOMB_X62_Y37_N20
\unidadeControle|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector14~1_combout\ = (!\unidadeControle|current_state.XCHG2~q\ & (\unidadeControle|Selector14~0_combout\ & ((\unidadeControle|Mux0~0_combout\) # (\unidadeControle|current_state.DECODE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG2~q\,
	datab => \unidadeControle|Mux0~0_combout\,
	datac => \unidadeControle|current_state.DECODE~q\,
	datad => \unidadeControle|Selector14~0_combout\,
	combout => \unidadeControle|Selector14~1_combout\);

-- Location: FF_X62_Y37_N21
\unidadeControle|current_state.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.DECODE~q\);

-- Location: LCCOMB_X63_Y37_N0
\unidadeControle|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Mux4~0_combout\ = (\Instruction[3]~input_o\ & ((\Instruction[2]~input_o\ & ((!\Instruction[0]~input_o\))) # (!\Instruction[2]~input_o\ & (!\Instruction[1]~input_o\)))) # (!\Instruction[3]~input_o\ & (\Instruction[1]~input_o\ $ 
-- (((\Instruction[0]~input_o\) # (\Instruction[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datac => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y37_N22
\unidadeControle|current_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|current_state~16_combout\ = (!\unidadeControle|current_state.DECODE~q\ & \unidadeControle|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|current_state.DECODE~q\,
	datad => \unidadeControle|Mux4~0_combout\,
	combout => \unidadeControle|current_state~16_combout\);

-- Location: FF_X63_Y37_N23
\unidadeControle|current_state.ARITH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|current_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.ARITH0~q\);

-- Location: FF_X63_Y37_N9
\unidadeControle|current_state.ARITH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \unidadeControle|current_state.ARITH0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|current_state.ARITH1~q\);

-- Location: LCCOMB_X63_Y37_N6
\unidadeControle|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector13~0_combout\ = (\unidadeControle|current_state.MOVi~q\) # ((\unidadeControle|Li~q\ & (\unidadeControle|current_state.DECODE~q\ & !\unidadeControle|current_state.ARITH2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \unidadeControle|current_state.DECODE~q\,
	datac => \unidadeControle|current_state.MOVi~q\,
	datad => \unidadeControle|current_state.ARITH2~q\,
	combout => \unidadeControle|Selector13~0_combout\);

-- Location: LCCOMB_X63_Y39_N12
\unidadeControle|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector13~1_combout\ = (\unidadeControle|Selector13~0_combout\) # ((\unidadeControle|current_state.ARITH1~q\ & ((\unidadeControle|Li~q\) # (!\Instruction[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[3]~input_o\,
	datab => \unidadeControle|current_state.ARITH1~q\,
	datac => \unidadeControle|Li~q\,
	datad => \unidadeControle|Selector13~0_combout\,
	combout => \unidadeControle|Selector13~1_combout\);

-- Location: FF_X63_Y39_N13
\unidadeControle|Li\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|Li~q\);

-- Location: IOIBUF_X50_Y43_N22
\Instruction[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(6),
	o => \Instruction[6]~input_o\);

-- Location: LCCOMB_X63_Y37_N12
\unidadeControle|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector3~0_combout\ = (\unidadeControle|current_state.MOV~q\) # ((\unidadeControle|current_state.XCHG1~q\) # ((\Instruction[3]~input_o\ & \unidadeControle|current_state.ARITH1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.MOV~q\,
	datab => \Instruction[3]~input_o\,
	datac => \unidadeControle|current_state.ARITH1~q\,
	datad => \unidadeControle|current_state.XCHG1~q\,
	combout => \unidadeControle|Selector3~0_combout\);

-- Location: IOIBUF_X45_Y43_N15
\Instruction[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(7),
	o => \Instruction[7]~input_o\);

-- Location: IOIBUF_X48_Y43_N22
\Instruction[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(4),
	o => \Instruction[4]~input_o\);

-- Location: IOIBUF_X67_Y19_N22
\Instruction[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(5),
	o => \Instruction[5]~input_o\);

-- Location: LCCOMB_X62_Y37_N18
\unidadeControle|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector1~2_combout\ = (!\unidadeControle|current_state.XCHG0~q\ & !\unidadeControle|current_state.ARITH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG0~q\,
	datad => \unidadeControle|current_state.ARITH0~q\,
	combout => \unidadeControle|Selector1~2_combout\);

-- Location: LCCOMB_X60_Y39_N2
\unidadeControle|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector1~3_combout\ = (!\unidadeControle|Selector1~2_combout\ & ((\unidadeControle|reg0out~q\) # ((!\Instruction[4]~input_o\ & !\Instruction[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \unidadeControle|reg0out~q\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector1~2_combout\,
	combout => \unidadeControle|Selector1~3_combout\);

-- Location: LCCOMB_X60_Y39_N8
\unidadeControle|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector1~4_combout\ = (\unidadeControle|Selector1~3_combout\) # ((!\Instruction[6]~input_o\ & (\unidadeControle|Selector3~0_combout\ & !\Instruction[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[6]~input_o\,
	datab => \unidadeControle|Selector3~0_combout\,
	datac => \Instruction[7]~input_o\,
	datad => \unidadeControle|Selector1~3_combout\,
	combout => \unidadeControle|Selector1~4_combout\);

-- Location: LCCOMB_X64_Y39_N20
\unidadeControle|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector1~6_combout\ = (\unidadeControle|Selector1~4_combout\) # ((\unidadeControle|reg0out~q\ & ((\unidadeControle|current_state.MOV~q\) # (\unidadeControle|current_state.MOVi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.MOV~q\,
	datab => \unidadeControle|current_state.MOVi~q\,
	datac => \unidadeControle|reg0out~q\,
	datad => \unidadeControle|Selector1~4_combout\,
	combout => \unidadeControle|Selector1~6_combout\);

-- Location: FF_X64_Y39_N21
\unidadeControle|reg0out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg0out~q\);

-- Location: LCCOMB_X60_Y39_N6
\unidadeControle|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector3~2_combout\ = (!\Instruction[6]~input_o\ & (\unidadeControle|Selector3~0_combout\ & \Instruction[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[6]~input_o\,
	datab => \unidadeControle|Selector3~0_combout\,
	datac => \Instruction[7]~input_o\,
	combout => \unidadeControle|Selector3~2_combout\);

-- Location: LCCOMB_X60_Y39_N28
\unidadeControle|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector3~1_combout\ = (!\unidadeControle|Selector1~2_combout\ & ((\unidadeControle|reg1out~q\) # ((!\Instruction[4]~input_o\ & \Instruction[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \unidadeControle|reg1out~q\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector1~2_combout\,
	combout => \unidadeControle|Selector3~1_combout\);

-- Location: LCCOMB_X60_Y39_N26
\unidadeControle|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector1~5_combout\ = (!\unidadeControle|current_state.MOVi~q\ & !\unidadeControle|current_state.MOV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidadeControle|current_state.MOVi~q\,
	datad => \unidadeControle|current_state.MOV~q\,
	combout => \unidadeControle|Selector1~5_combout\);

-- Location: LCCOMB_X60_Y39_N14
\unidadeControle|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector3~3_combout\ = (\unidadeControle|Selector3~2_combout\) # ((\unidadeControle|Selector3~1_combout\) # ((\unidadeControle|reg1out~q\ & !\unidadeControle|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Selector3~2_combout\,
	datab => \unidadeControle|Selector3~1_combout\,
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|Selector1~5_combout\,
	combout => \unidadeControle|Selector3~3_combout\);

-- Location: FF_X60_Y39_N15
\unidadeControle|reg1out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg1out~q\);

-- Location: LCCOMB_X60_Y39_N12
\unidadeControle|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector5~2_combout\ = (!\unidadeControle|Selector1~2_combout\ & ((\unidadeControle|reg2out~q\) # ((\Instruction[4]~input_o\ & !\Instruction[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \unidadeControle|reg2out~q\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector1~2_combout\,
	combout => \unidadeControle|Selector5~2_combout\);

-- Location: LCCOMB_X60_Y39_N30
\unidadeControle|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector5~3_combout\ = (\unidadeControle|Selector5~2_combout\) # ((\Instruction[6]~input_o\ & (\unidadeControle|Selector3~0_combout\ & !\Instruction[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[6]~input_o\,
	datab => \unidadeControle|Selector3~0_combout\,
	datac => \Instruction[7]~input_o\,
	datad => \unidadeControle|Selector5~2_combout\,
	combout => \unidadeControle|Selector5~3_combout\);

-- Location: LCCOMB_X60_Y39_N20
\unidadeControle|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector5~4_combout\ = (\unidadeControle|Selector5~3_combout\) # ((\unidadeControle|reg2out~q\ & ((\unidadeControle|current_state.MOVi~q\) # (\unidadeControle|current_state.MOV~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Selector5~3_combout\,
	datab => \unidadeControle|current_state.MOVi~q\,
	datac => \unidadeControle|reg2out~q\,
	datad => \unidadeControle|current_state.MOV~q\,
	combout => \unidadeControle|Selector5~4_combout\);

-- Location: FF_X60_Y39_N21
\unidadeControle|reg2out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg2out~q\);

-- Location: LCCOMB_X63_Y39_N30
\unidadeControle|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector9~0_combout\ = (\unidadeControle|current_state.XCHG2~q\) # ((!\unidadeControle|current_state.XCHG1~q\ & (\unidadeControle|reg4out~q\ & \unidadeControle|current_state.DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG2~q\,
	datab => \unidadeControle|current_state.XCHG1~q\,
	datac => \unidadeControle|reg4out~q\,
	datad => \unidadeControle|current_state.DECODE~q\,
	combout => \unidadeControle|Selector9~0_combout\);

-- Location: FF_X63_Y39_N31
\unidadeControle|reg4out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg4out~q\);

-- Location: LCCOMB_X60_Y39_N18
\unidadeControle|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector7~1_combout\ = (\Instruction[6]~input_o\ & (\unidadeControle|Selector3~0_combout\ & \Instruction[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[6]~input_o\,
	datab => \unidadeControle|Selector3~0_combout\,
	datac => \Instruction[7]~input_o\,
	combout => \unidadeControle|Selector7~1_combout\);

-- Location: LCCOMB_X60_Y39_N16
\unidadeControle|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector7~0_combout\ = (!\unidadeControle|Selector1~2_combout\ & ((\unidadeControle|reg3out~q\) # ((\Instruction[4]~input_o\ & \Instruction[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \unidadeControle|reg3out~q\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector1~2_combout\,
	combout => \unidadeControle|Selector7~0_combout\);

-- Location: LCCOMB_X63_Y39_N20
\unidadeControle|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector7~2_combout\ = (\unidadeControle|Selector7~1_combout\) # ((\unidadeControle|Selector7~0_combout\) # ((!\unidadeControle|Selector1~5_combout\ & \unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Selector1~5_combout\,
	datab => \unidadeControle|Selector7~1_combout\,
	datac => \unidadeControle|reg3out~q\,
	datad => \unidadeControle|Selector7~0_combout\,
	combout => \unidadeControle|Selector7~2_combout\);

-- Location: FF_X63_Y39_N21
\unidadeControle|reg3out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg3out~q\);

-- Location: LCCOMB_X63_Y39_N14
\unidadeControle|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector12~0_combout\ = (\unidadeControle|current_state.ARITH2~q\) # ((\unidadeControle|aux2out~q\ & \unidadeControle|current_state.DECODE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|current_state.ARITH2~q\,
	datac => \unidadeControle|aux2out~q\,
	datad => \unidadeControle|current_state.DECODE~q\,
	combout => \unidadeControle|Selector12~0_combout\);

-- Location: FF_X63_Y39_N15
\unidadeControle|aux2out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|aux2out~q\);

-- Location: LCCOMB_X63_Y39_N28
\triState0|F[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~7_combout\ = (\unidadeControle|reg4out~q\) # ((\unidadeControle|reg3out~q\) # ((\unidadeControle|aux2out~q\) # (\unidadeControle|Li~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \unidadeControle|aux2out~q\,
	datad => \unidadeControle|Li~q\,
	combout => \triState0|F[0]~7_combout\);

-- Location: LCCOMB_X63_Y39_N10
\triState0|F[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~8_combout\ = (\unidadeControle|reg0out~q\) # ((\unidadeControle|reg1out~q\) # ((\unidadeControle|reg2out~q\) # (\triState0|F[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \unidadeControle|reg1out~q\,
	datac => \unidadeControle|reg2out~q\,
	datad => \triState0|F[0]~7_combout\,
	combout => \triState0|F[0]~8_combout\);

-- Location: LCCOMB_X62_Y38_N4
\triState0|F[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~9_combout\ = (\triState0|F[0]~6_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datad => \triState0|F[0]~6_combout\,
	combout => \triState0|F[0]~9_combout\);

-- Location: LCCOMB_X62_Y38_N8
\temp1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[0]~feeder_combout\ = \triState0|F[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~9_combout\,
	combout => \temp1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y37_N18
\unidadeControle|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector10~0_combout\ = (\unidadeControle|current_state.ARITH0~q\) # ((\unidadeControle|current_state.DECODE~q\ & (\unidadeControle|aux1in~q\ & !\unidadeControle|current_state.ARITH1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.ARITH0~q\,
	datab => \unidadeControle|current_state.DECODE~q\,
	datac => \unidadeControle|aux1in~q\,
	datad => \unidadeControle|current_state.ARITH1~q\,
	combout => \unidadeControle|Selector10~0_combout\);

-- Location: FF_X63_Y37_N19
\unidadeControle|aux1in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|aux1in~q\);

-- Location: FF_X62_Y38_N9
\temp1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp1|Q[0]~feeder_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(0));

-- Location: LCCOMB_X63_Y37_N14
\unidadeControle|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Mux14~0_combout\ = (\Instruction[1]~input_o\ & (!\Instruction[0]~input_o\ & (!\Instruction[3]~input_o\ & !\Instruction[2]~input_o\))) # (!\Instruction[1]~input_o\ & ((\Instruction[0]~input_o\ & (\Instruction[3]~input_o\ $ 
-- (\Instruction[2]~input_o\))) # (!\Instruction[0]~input_o\ & (\Instruction[3]~input_o\ & \Instruction[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datac => \Instruction[3]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|Mux14~0_combout\);

-- Location: LCCOMB_X64_Y37_N24
\unidadeControle|ULA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|ULA[2]~feeder_combout\ = \unidadeControle|Mux14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unidadeControle|Mux14~0_combout\,
	combout => \unidadeControle|ULA[2]~feeder_combout\);

-- Location: FF_X64_Y37_N25
\unidadeControle|ULA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|ULA[2]~feeder_combout\,
	ena => \unidadeControle|current_state.ARITH1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|ULA\(2));

-- Location: LCCOMB_X65_Y39_N4
\UndLA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~0_combout\ = \unidadeControle|ULA\(2) $ (((\triState0|F[0]~6_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triState0|F[0]~6_combout\,
	combout => \UndLA|Add0~0_combout\);

-- Location: LCCOMB_X65_Y39_N16
\temp2|Q[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[0]~17_cout\ = CARRY(\unidadeControle|ULA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datad => VCC,
	cout => \temp2|Q[0]~17_cout\);

-- Location: LCCOMB_X65_Y39_N18
\temp2|Q[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[0]~18_combout\ = (\temp1|Q\(0) & ((\UndLA|Add0~0_combout\ & (\temp2|Q[0]~17_cout\ & VCC)) # (!\UndLA|Add0~0_combout\ & (!\temp2|Q[0]~17_cout\)))) # (!\temp1|Q\(0) & ((\UndLA|Add0~0_combout\ & (!\temp2|Q[0]~17_cout\)) # (!\UndLA|Add0~0_combout\ & 
-- ((\temp2|Q[0]~17_cout\) # (GND)))))
-- \temp2|Q[0]~19\ = CARRY((\temp1|Q\(0) & (!\UndLA|Add0~0_combout\ & !\temp2|Q[0]~17_cout\)) # (!\temp1|Q\(0) & ((!\temp2|Q[0]~17_cout\) # (!\UndLA|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(0),
	datab => \UndLA|Add0~0_combout\,
	datad => VCC,
	cin => \temp2|Q[0]~17_cout\,
	combout => \temp2|Q[0]~18_combout\,
	cout => \temp2|Q[0]~19\);

-- Location: LCCOMB_X66_Y39_N14
\UndLA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux15~0_combout\ = (\temp1|Q\(0) & (((\triState0|F[0]~6_combout\) # (\unidadeControle|ULA\(2))) # (!\triState0|F[0]~8_combout\))) # (!\temp1|Q\(0) & (\unidadeControle|ULA\(2) & ((\triState0|F[0]~6_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(0),
	datab => \triState0|F[0]~8_combout\,
	datac => \triState0|F[0]~6_combout\,
	datad => \unidadeControle|ULA\(2),
	combout => \UndLA|Mux15~0_combout\);

-- Location: LCCOMB_X63_Y37_N8
\unidadeControle|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Mux13~0_combout\ = (\Instruction[0]~input_o\) # ((\Instruction[1]~input_o\ & \Instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[1]~input_o\,
	datab => \Instruction[0]~input_o\,
	datad => \Instruction[2]~input_o\,
	combout => \unidadeControle|Mux13~0_combout\);

-- Location: FF_X63_Y37_N17
\unidadeControle|ULA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \unidadeControle|Mux13~0_combout\,
	sload => VCC,
	ena => \unidadeControle|current_state.ARITH1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|ULA\(1));

-- Location: LCCOMB_X63_Y37_N2
\unidadeControle|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector11~0_combout\ = (\unidadeControle|current_state.ARITH1~q\) # ((\unidadeControle|current_state.DECODE~q\ & (\unidadeControle|aux2in~q\ & !\unidadeControle|current_state.ARITH2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.ARITH1~q\,
	datab => \unidadeControle|current_state.DECODE~q\,
	datac => \unidadeControle|aux2in~q\,
	datad => \unidadeControle|current_state.ARITH2~q\,
	combout => \unidadeControle|Selector11~0_combout\);

-- Location: FF_X63_Y37_N3
\unidadeControle|aux2in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|aux2in~q\);

-- Location: FF_X65_Y39_N19
\temp2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[0]~18_combout\,
	asdata => \UndLA|Mux15~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(0));

-- Location: LCCOMB_X65_Y39_N12
\triState0|F[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~5_combout\ = (\unidadeControle|Li~q\ & (\Instruction[7]~input_o\ & ((\temp2|Q\(0)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|Li~q\ & ((\temp2|Q\(0)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \temp2|Q\(0),
	datac => \Instruction[7]~input_o\,
	datad => \unidadeControle|aux2out~q\,
	combout => \triState0|F[0]~5_combout\);

-- Location: LCCOMB_X62_Y37_N30
\unidadeControle|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector0~4_combout\ = (\unidadeControle|current_state.XCHG2~q\ & (!\Instruction[6]~input_o\ & !\Instruction[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG2~q\,
	datab => \Instruction[6]~input_o\,
	datac => \Instruction[7]~input_o\,
	combout => \unidadeControle|Selector0~4_combout\);

-- Location: LCCOMB_X63_Y37_N24
\unidadeControle|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector0~2_combout\ = (\unidadeControle|current_state.XCHG1~q\) # ((\unidadeControle|current_state.MOVi~q\) # ((\unidadeControle|current_state.MOV~q\) # (\unidadeControle|current_state.ARITH2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG1~q\,
	datab => \unidadeControle|current_state.MOVi~q\,
	datac => \unidadeControle|current_state.MOV~q\,
	datad => \unidadeControle|current_state.ARITH2~q\,
	combout => \unidadeControle|Selector0~2_combout\);

-- Location: LCCOMB_X62_Y37_N2
\unidadeControle|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector0~3_combout\ = (!\Instruction[4]~input_o\ & (!\Instruction[5]~input_o\ & \unidadeControle|Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector0~2_combout\,
	combout => \unidadeControle|Selector0~3_combout\);

-- Location: LCCOMB_X63_Y37_N4
\unidadeControle|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector0~6_combout\ = (\unidadeControle|current_state.XCHG0~q\) # ((\unidadeControle|current_state.ARITH1~q\) # ((\unidadeControle|current_state.ARITH0~q\) # (!\unidadeControle|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG0~q\,
	datab => \unidadeControle|current_state.ARITH1~q\,
	datac => \unidadeControle|current_state.ARITH0~q\,
	datad => \unidadeControle|Selector14~0_combout\,
	combout => \unidadeControle|Selector0~6_combout\);

-- Location: LCCOMB_X62_Y37_N28
\unidadeControle|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector0~5_combout\ = (\unidadeControle|Selector0~4_combout\) # ((\unidadeControle|Selector0~3_combout\) # ((\unidadeControle|reg0in~q\ & \unidadeControle|Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Selector0~4_combout\,
	datab => \unidadeControle|Selector0~3_combout\,
	datac => \unidadeControle|reg0in~q\,
	datad => \unidadeControle|Selector0~6_combout\,
	combout => \unidadeControle|Selector0~5_combout\);

-- Location: FF_X62_Y37_N29
\unidadeControle|reg0in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg0in~q\);

-- Location: FF_X64_Y39_N1
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[0]~9_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: LCCOMB_X64_Y39_N18
\triState0|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~4_combout\ = (\reg0|Q\(0)) # (!\unidadeControle|reg0out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|Q\(0),
	datad => \unidadeControle|reg0out~q\,
	combout => \triState0|F[0]~4_combout\);

-- Location: LCCOMB_X62_Y37_N14
\unidadeControle|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector8~0_combout\ = (\unidadeControle|current_state.DECODE~q\ & (\unidadeControle|reg4in~q\ & (!\unidadeControle|current_state.XCHG2~q\ & !\unidadeControle|current_state.XCHG1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.DECODE~q\,
	datab => \unidadeControle|reg4in~q\,
	datac => \unidadeControle|current_state.XCHG2~q\,
	datad => \unidadeControle|current_state.XCHG1~q\,
	combout => \unidadeControle|Selector8~0_combout\);

-- Location: LCCOMB_X62_Y37_N0
\unidadeControle|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector8~1_combout\ = (\unidadeControle|Selector8~0_combout\) # (\unidadeControle|current_state.XCHG0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidadeControle|Selector8~0_combout\,
	datad => \unidadeControle|current_state.XCHG0~q\,
	combout => \unidadeControle|Selector8~1_combout\);

-- Location: FF_X62_Y37_N1
\unidadeControle|reg4in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg4in~q\);

-- Location: FF_X63_Y39_N25
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[0]~9_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LCCOMB_X62_Y38_N0
\reg3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[0]~feeder_combout\ = \triState0|F[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~9_combout\,
	combout => \reg3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y37_N16
\unidadeControle|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector6~0_combout\ = (\Instruction[7]~input_o\ & \unidadeControle|current_state.XCHG2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[7]~input_o\,
	datac => \unidadeControle|current_state.XCHG2~q\,
	combout => \unidadeControle|Selector6~0_combout\);

-- Location: LCCOMB_X62_Y37_N22
\unidadeControle|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector6~1_combout\ = (\unidadeControle|reg3in~q\ & ((\unidadeControle|Selector0~6_combout\) # ((\unidadeControle|Selector6~0_combout\ & \Instruction[6]~input_o\)))) # (!\unidadeControle|reg3in~q\ & (\unidadeControle|Selector6~0_combout\ 
-- & (\Instruction[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg3in~q\,
	datab => \unidadeControle|Selector6~0_combout\,
	datac => \Instruction[6]~input_o\,
	datad => \unidadeControle|Selector0~6_combout\,
	combout => \unidadeControle|Selector6~1_combout\);

-- Location: LCCOMB_X62_Y37_N6
\unidadeControle|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector6~2_combout\ = (\unidadeControle|Selector6~1_combout\) # ((\Instruction[4]~input_o\ & (\Instruction[5]~input_o\ & \unidadeControle|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \Instruction[5]~input_o\,
	datac => \unidadeControle|Selector6~1_combout\,
	datad => \unidadeControle|Selector0~2_combout\,
	combout => \unidadeControle|Selector6~2_combout\);

-- Location: FF_X62_Y37_N7
\unidadeControle|reg3in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg3in~q\);

-- Location: FF_X62_Y38_N1
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[0]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LCCOMB_X63_Y39_N24
\triState0|F[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~3_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(0) & ((\reg3|Q\(0)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(0))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(0),
	datad => \reg3|Q\(0),
	combout => \triState0|F[0]~3_combout\);

-- Location: LCCOMB_X61_Y39_N4
\reg2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[0]~feeder_combout\ = \triState0|F[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triState0|F[0]~9_combout\,
	combout => \reg2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y37_N26
\unidadeControle|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector4~0_combout\ = (\Instruction[4]~input_o\ & (!\Instruction[5]~input_o\ & \unidadeControle|Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datac => \Instruction[5]~input_o\,
	datad => \unidadeControle|Selector0~2_combout\,
	combout => \unidadeControle|Selector4~0_combout\);

-- Location: LCCOMB_X62_Y37_N24
\unidadeControle|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector4~1_combout\ = (\unidadeControle|current_state.XCHG2~q\ & (\Instruction[6]~input_o\ & !\Instruction[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|current_state.XCHG2~q\,
	datab => \Instruction[6]~input_o\,
	datac => \Instruction[7]~input_o\,
	combout => \unidadeControle|Selector4~1_combout\);

-- Location: LCCOMB_X62_Y37_N4
\unidadeControle|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector4~2_combout\ = (\unidadeControle|Selector4~0_combout\) # ((\unidadeControle|Selector4~1_combout\) # ((\unidadeControle|reg2in~q\ & \unidadeControle|Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Selector4~0_combout\,
	datab => \unidadeControle|Selector4~1_combout\,
	datac => \unidadeControle|reg2in~q\,
	datad => \unidadeControle|Selector0~6_combout\,
	combout => \unidadeControle|Selector4~2_combout\);

-- Location: FF_X62_Y37_N5
\unidadeControle|reg2in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg2in~q\);

-- Location: FF_X61_Y39_N5
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[0]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: LCCOMB_X62_Y37_N8
\unidadeControle|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector2~0_combout\ = (\unidadeControle|reg1in~q\ & ((\unidadeControle|Selector0~6_combout\) # ((\unidadeControle|Selector6~0_combout\ & !\Instruction[6]~input_o\)))) # (!\unidadeControle|reg1in~q\ & 
-- (\unidadeControle|Selector6~0_combout\ & (!\Instruction[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1in~q\,
	datab => \unidadeControle|Selector6~0_combout\,
	datac => \Instruction[6]~input_o\,
	datad => \unidadeControle|Selector0~6_combout\,
	combout => \unidadeControle|Selector2~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\unidadeControle|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidadeControle|Selector2~1_combout\ = (\unidadeControle|Selector2~0_combout\) # ((!\Instruction[4]~input_o\ & (\Instruction[5]~input_o\ & \unidadeControle|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[4]~input_o\,
	datab => \Instruction[5]~input_o\,
	datac => \unidadeControle|Selector2~0_combout\,
	datad => \unidadeControle|Selector0~2_combout\,
	combout => \unidadeControle|Selector2~1_combout\);

-- Location: FF_X62_Y37_N11
\unidadeControle|reg1in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \unidadeControle|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidadeControle|reg1in~q\);

-- Location: FF_X61_Y39_N29
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[0]~9_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LCCOMB_X61_Y39_N28
\triState0|F[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~2_combout\ = (\reg2|Q\(0) & (((\reg1|Q\(0)) # (!\unidadeControle|reg1out~q\)))) # (!\reg2|Q\(0) & (!\unidadeControle|reg2out~q\ & ((\reg1|Q\(0)) # (!\unidadeControle|reg1out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(0),
	datab => \unidadeControle|reg2out~q\,
	datac => \reg1|Q\(0),
	datad => \unidadeControle|reg1out~q\,
	combout => \triState0|F[0]~2_combout\);

-- Location: LCCOMB_X65_Y39_N6
\triState0|F[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[0]~6_combout\ = (\triState0|F[0]~5_combout\ & (\triState0|F[0]~4_combout\ & (\triState0|F[0]~3_combout\ & \triState0|F[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~5_combout\,
	datab => \triState0|F[0]~4_combout\,
	datac => \triState0|F[0]~3_combout\,
	datad => \triState0|F[0]~2_combout\,
	combout => \triState0|F[0]~6_combout\);

-- Location: LCCOMB_X66_Y39_N4
\triState0|F[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~15_combout\ = (\triState0|F[1]~14_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[1]~14_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \triState0|F[1]~15_combout\);

-- Location: FF_X63_Y39_N23
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[1]~15_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: LCCOMB_X66_Y39_N24
\reg3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[1]~feeder_combout\ = \triState0|F[1]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triState0|F[1]~15_combout\,
	combout => \reg3|Q[1]~feeder_combout\);

-- Location: FF_X66_Y39_N25
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[1]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: LCCOMB_X63_Y39_N22
\triState0|F[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~11_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(1) & ((\reg3|Q\(1)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(1))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(1),
	datad => \reg3|Q\(1),
	combout => \triState0|F[1]~11_combout\);

-- Location: FF_X64_Y39_N19
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[1]~15_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: LCCOMB_X64_Y39_N0
\triState0|F[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~12_combout\ = (\reg0|Q\(1)) # (!\unidadeControle|reg0out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|Q\(1),
	datad => \unidadeControle|reg0out~q\,
	combout => \triState0|F[1]~12_combout\);

-- Location: FF_X66_Y39_N5
\temp1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triState0|F[1]~15_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(1));

-- Location: LCCOMB_X63_Y39_N2
\UndLA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~1_combout\ = \unidadeControle|ULA\(2) $ (((\triState0|F[1]~14_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \unidadeControle|ULA\(2),
	datad => \triState0|F[1]~14_combout\,
	combout => \UndLA|Add0~1_combout\);

-- Location: LCCOMB_X65_Y39_N20
\temp2|Q[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[1]~20_combout\ = ((\temp1|Q\(1) $ (\UndLA|Add0~1_combout\ $ (!\temp2|Q[0]~19\)))) # (GND)
-- \temp2|Q[1]~21\ = CARRY((\temp1|Q\(1) & ((\UndLA|Add0~1_combout\) # (!\temp2|Q[0]~19\))) # (!\temp1|Q\(1) & (\UndLA|Add0~1_combout\ & !\temp2|Q[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(1),
	datab => \UndLA|Add0~1_combout\,
	datad => VCC,
	cin => \temp2|Q[0]~19\,
	combout => \temp2|Q[1]~20_combout\,
	cout => \temp2|Q[1]~21\);

-- Location: LCCOMB_X66_Y39_N0
\UndLA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux14~0_combout\ = (\unidadeControle|ULA\(2) & ((\triState0|F[1]~14_combout\) # ((\temp1|Q\(1)) # (!\triState0|F[0]~8_combout\)))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(1) & ((\triState0|F[1]~14_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \triState0|F[1]~14_combout\,
	datac => \temp1|Q\(1),
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux14~0_combout\);

-- Location: FF_X65_Y39_N21
\temp2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[1]~20_combout\,
	asdata => \UndLA|Mux14~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(1));

-- Location: LCCOMB_X63_Y39_N4
\triState0|F[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~13_combout\ = (\unidadeControle|Li~q\ & (\Instruction[6]~input_o\ & ((\temp2|Q\(1)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|Li~q\ & (((\temp2|Q\(1)) # (!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \Instruction[6]~input_o\,
	datac => \unidadeControle|aux2out~q\,
	datad => \temp2|Q\(1),
	combout => \triState0|F[1]~13_combout\);

-- Location: LCCOMB_X61_Y39_N6
\reg2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[1]~feeder_combout\ = \triState0|F[1]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triState0|F[1]~15_combout\,
	combout => \reg2|Q[1]~feeder_combout\);

-- Location: FF_X61_Y39_N7
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[1]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: FF_X61_Y39_N15
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triState0|F[1]~15_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: LCCOMB_X61_Y39_N14
\triState0|F[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~10_combout\ = (\unidadeControle|reg1out~q\ & (\reg1|Q\(1) & ((\reg2|Q\(1)) # (!\unidadeControle|reg2out~q\)))) # (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(1)) # ((!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1out~q\,
	datab => \reg2|Q\(1),
	datac => \reg1|Q\(1),
	datad => \unidadeControle|reg2out~q\,
	combout => \triState0|F[1]~10_combout\);

-- Location: LCCOMB_X63_Y39_N6
\triState0|F[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \triState0|F[1]~14_combout\ = (\triState0|F[1]~11_combout\ & (\triState0|F[1]~12_combout\ & (\triState0|F[1]~13_combout\ & \triState0|F[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[1]~11_combout\,
	datab => \triState0|F[1]~12_combout\,
	datac => \triState0|F[1]~13_combout\,
	datad => \triState0|F[1]~10_combout\,
	combout => \triState0|F[1]~14_combout\);

-- Location: LCCOMB_X65_Y39_N10
\UndLA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~2_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[2]~17_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[2]~17_combout\,
	combout => \UndLA|Add0~2_combout\);

-- Location: LCCOMB_X66_Y39_N18
\triUPCODE|F[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[2]~18_combout\ = (\triUPCODE|F[2]~17_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[2]~17_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \triUPCODE|F[2]~18_combout\);

-- Location: FF_X66_Y39_N19
\temp1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[2]~18_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(2));

-- Location: LCCOMB_X65_Y39_N22
\temp2|Q[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[2]~22_combout\ = (\UndLA|Add0~2_combout\ & ((\temp1|Q\(2) & (\temp2|Q[1]~21\ & VCC)) # (!\temp1|Q\(2) & (!\temp2|Q[1]~21\)))) # (!\UndLA|Add0~2_combout\ & ((\temp1|Q\(2) & (!\temp2|Q[1]~21\)) # (!\temp1|Q\(2) & ((\temp2|Q[1]~21\) # (GND)))))
-- \temp2|Q[2]~23\ = CARRY((\UndLA|Add0~2_combout\ & (!\temp1|Q\(2) & !\temp2|Q[1]~21\)) # (!\UndLA|Add0~2_combout\ & ((!\temp2|Q[1]~21\) # (!\temp1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~2_combout\,
	datab => \temp1|Q\(2),
	datad => VCC,
	cin => \temp2|Q[1]~21\,
	combout => \temp2|Q[2]~22_combout\,
	cout => \temp2|Q[2]~23\);

-- Location: LCCOMB_X66_Y39_N30
\UndLA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux13~0_combout\ = (\unidadeControle|ULA\(2) & ((\temp1|Q\(2)) # ((\triUPCODE|F[2]~17_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(2) & ((\triUPCODE|F[2]~17_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \temp1|Q\(2),
	datac => \triUPCODE|F[2]~17_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux13~0_combout\);

-- Location: FF_X65_Y39_N23
\temp2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[2]~22_combout\,
	asdata => \UndLA|Mux13~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(2));

-- Location: FF_X64_Y39_N9
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[2]~18_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: LCCOMB_X64_Y39_N8
\triUPCODE|F[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[2]~16_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(2) & ((\temp2|Q\(2)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(2)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \temp2|Q\(2),
	datac => \reg0|Q\(2),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[2]~16_combout\);

-- Location: LCCOMB_X61_Y39_N24
\reg2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[2]~feeder_combout\ = \triUPCODE|F[2]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[2]~18_combout\,
	combout => \reg2|Q[2]~feeder_combout\);

-- Location: FF_X61_Y39_N25
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[2]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: FF_X61_Y39_N1
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[2]~18_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: LCCOMB_X61_Y39_N0
\triUPCODE|F[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[2]~14_combout\ = (\unidadeControle|reg1out~q\ & (\reg1|Q\(2) & ((\reg2|Q\(2)) # (!\unidadeControle|reg2out~q\)))) # (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(2)) # ((!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1out~q\,
	datab => \reg2|Q\(2),
	datac => \reg1|Q\(2),
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[2]~14_combout\);

-- Location: FF_X64_Y38_N19
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[2]~18_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: FF_X64_Y38_N1
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[2]~18_combout\,
	sload => VCC,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: LCCOMB_X64_Y38_N0
\triUPCODE|F[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[2]~15_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(2) & ((\reg3|Q\(2)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(2)) # (!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg4|Q\(2),
	datac => \reg3|Q\(2),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[2]~15_combout\);

-- Location: LCCOMB_X65_Y39_N0
\triUPCODE|F[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[2]~17_combout\ = (\triUPCODE|F[2]~16_combout\ & (\triUPCODE|F[2]~14_combout\ & (\triUPCODE|F[2]~15_combout\ & !\unidadeControle|Li~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triUPCODE|F[2]~16_combout\,
	datab => \triUPCODE|F[2]~14_combout\,
	datac => \triUPCODE|F[2]~15_combout\,
	datad => \unidadeControle|Li~q\,
	combout => \triUPCODE|F[2]~17_combout\);

-- Location: LCCOMB_X66_Y39_N8
\triUPCODE|F[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[3]~23_combout\ = (\triUPCODE|F[3]~22_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[3]~22_combout\,
	combout => \triUPCODE|F[3]~23_combout\);

-- Location: FF_X64_Y39_N3
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[3]~23_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: FF_X66_Y39_N9
\temp1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[3]~23_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(3));

-- Location: LCCOMB_X65_Y39_N8
\UndLA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~3_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[3]~22_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[3]~22_combout\,
	combout => \UndLA|Add0~3_combout\);

-- Location: LCCOMB_X65_Y39_N24
\temp2|Q[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[3]~24_combout\ = ((\temp1|Q\(3) $ (\UndLA|Add0~3_combout\ $ (!\temp2|Q[2]~23\)))) # (GND)
-- \temp2|Q[3]~25\ = CARRY((\temp1|Q\(3) & ((\UndLA|Add0~3_combout\) # (!\temp2|Q[2]~23\))) # (!\temp1|Q\(3) & (\UndLA|Add0~3_combout\ & !\temp2|Q[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(3),
	datab => \UndLA|Add0~3_combout\,
	datad => VCC,
	cin => \temp2|Q[2]~23\,
	combout => \temp2|Q[3]~24_combout\,
	cout => \temp2|Q[3]~25\);

-- Location: LCCOMB_X66_Y39_N12
\UndLA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux12~0_combout\ = (\unidadeControle|ULA\(2) & (((\temp1|Q\(3)) # (\triUPCODE|F[3]~22_combout\)) # (!\triState0|F[0]~8_combout\))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(3) & ((\triUPCODE|F[3]~22_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \triState0|F[0]~8_combout\,
	datac => \temp1|Q\(3),
	datad => \triUPCODE|F[3]~22_combout\,
	combout => \UndLA|Mux12~0_combout\);

-- Location: FF_X65_Y39_N25
\temp2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[3]~24_combout\,
	asdata => \UndLA|Mux12~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(3));

-- Location: LCCOMB_X64_Y39_N2
\triUPCODE|F[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[3]~21_combout\ = (\unidadeControle|aux2out~q\ & (\temp2|Q\(3) & ((\reg0|Q\(3)) # (!\unidadeControle|reg0out~q\)))) # (!\unidadeControle|aux2out~q\ & (((\reg0|Q\(3))) # (!\unidadeControle|reg0out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|aux2out~q\,
	datab => \unidadeControle|reg0out~q\,
	datac => \reg0|Q\(3),
	datad => \temp2|Q\(3),
	combout => \triUPCODE|F[3]~21_combout\);

-- Location: LCCOMB_X61_Y39_N26
\reg2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[3]~feeder_combout\ = \triUPCODE|F[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[3]~23_combout\,
	combout => \reg2|Q[3]~feeder_combout\);

-- Location: FF_X61_Y39_N27
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[3]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: FF_X61_Y39_N3
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[3]~23_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: LCCOMB_X61_Y39_N2
\triUPCODE|F[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[3]~19_combout\ = (\reg2|Q\(3) & (((\reg1|Q\(3)) # (!\unidadeControle|reg1out~q\)))) # (!\reg2|Q\(3) & (!\unidadeControle|reg2out~q\ & ((\reg1|Q\(3)) # (!\unidadeControle|reg1out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(3),
	datab => \unidadeControle|reg2out~q\,
	datac => \reg1|Q\(3),
	datad => \unidadeControle|reg1out~q\,
	combout => \triUPCODE|F[3]~19_combout\);

-- Location: FF_X63_Y39_N9
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[3]~23_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: LCCOMB_X60_Y39_N24
\reg3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[3]~feeder_combout\ = \triUPCODE|F[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[3]~23_combout\,
	combout => \reg3|Q[3]~feeder_combout\);

-- Location: FF_X60_Y39_N25
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[3]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: LCCOMB_X63_Y39_N8
\triUPCODE|F[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[3]~20_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(3) & ((\reg3|Q\(3)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(3))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(3),
	datad => \reg3|Q\(3),
	combout => \triUPCODE|F[3]~20_combout\);

-- Location: LCCOMB_X65_Y39_N2
\triUPCODE|F[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[3]~22_combout\ = (\triUPCODE|F[3]~21_combout\ & (!\unidadeControle|Li~q\ & (\triUPCODE|F[3]~19_combout\ & \triUPCODE|F[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triUPCODE|F[3]~21_combout\,
	datab => \unidadeControle|Li~q\,
	datac => \triUPCODE|F[3]~19_combout\,
	datad => \triUPCODE|F[3]~20_combout\,
	combout => \triUPCODE|F[3]~22_combout\);

-- Location: LCCOMB_X66_Y39_N22
\triUPCODE|F[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[4]~28_combout\ = (\triUPCODE|F[4]~27_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[4]~27_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \triUPCODE|F[4]~28_combout\);

-- Location: FF_X66_Y39_N23
\temp1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[4]~28_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(4));

-- Location: LCCOMB_X65_Y39_N14
\UndLA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~4_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[4]~27_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[4]~27_combout\,
	combout => \UndLA|Add0~4_combout\);

-- Location: LCCOMB_X65_Y39_N26
\temp2|Q[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[4]~26_combout\ = (\temp1|Q\(4) & ((\UndLA|Add0~4_combout\ & (\temp2|Q[3]~25\ & VCC)) # (!\UndLA|Add0~4_combout\ & (!\temp2|Q[3]~25\)))) # (!\temp1|Q\(4) & ((\UndLA|Add0~4_combout\ & (!\temp2|Q[3]~25\)) # (!\UndLA|Add0~4_combout\ & 
-- ((\temp2|Q[3]~25\) # (GND)))))
-- \temp2|Q[4]~27\ = CARRY((\temp1|Q\(4) & (!\UndLA|Add0~4_combout\ & !\temp2|Q[3]~25\)) # (!\temp1|Q\(4) & ((!\temp2|Q[3]~25\) # (!\UndLA|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(4),
	datab => \UndLA|Add0~4_combout\,
	datad => VCC,
	cin => \temp2|Q[3]~25\,
	combout => \temp2|Q[4]~26_combout\,
	cout => \temp2|Q[4]~27\);

-- Location: LCCOMB_X66_Y39_N10
\UndLA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux11~0_combout\ = (\unidadeControle|ULA\(2) & ((\temp1|Q\(4)) # ((\triUPCODE|F[4]~27_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(4) & ((\triUPCODE|F[4]~27_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \temp1|Q\(4),
	datac => \triUPCODE|F[4]~27_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux11~0_combout\);

-- Location: FF_X65_Y39_N27
\temp2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[4]~26_combout\,
	asdata => \UndLA|Mux11~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(4));

-- Location: FF_X64_Y39_N5
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[4]~28_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: LCCOMB_X64_Y39_N4
\triUPCODE|F[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[4]~26_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(4) & ((\temp2|Q\(4)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(4)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \temp2|Q\(4),
	datac => \reg0|Q\(4),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[4]~26_combout\);

-- Location: FF_X63_Y39_N27
\reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[4]~28_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(4));

-- Location: LCCOMB_X66_Y39_N6
\reg3|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[4]~feeder_combout\ = \triUPCODE|F[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[4]~28_combout\,
	combout => \reg3|Q[4]~feeder_combout\);

-- Location: FF_X66_Y39_N7
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[4]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: LCCOMB_X63_Y39_N26
\triUPCODE|F[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[4]~25_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(4) & ((\reg3|Q\(4)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(4))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(4),
	datad => \reg3|Q\(4),
	combout => \triUPCODE|F[4]~25_combout\);

-- Location: LCCOMB_X61_Y39_N20
\reg2|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[4]~feeder_combout\ = \triUPCODE|F[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[4]~28_combout\,
	combout => \reg2|Q[4]~feeder_combout\);

-- Location: FF_X61_Y39_N21
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[4]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: FF_X61_Y39_N13
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[4]~28_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: LCCOMB_X61_Y39_N12
\triUPCODE|F[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[4]~24_combout\ = (\unidadeControle|reg1out~q\ & (\reg1|Q\(4) & ((\reg2|Q\(4)) # (!\unidadeControle|reg2out~q\)))) # (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(4)) # ((!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1out~q\,
	datab => \reg2|Q\(4),
	datac => \reg1|Q\(4),
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[4]~24_combout\);

-- Location: LCCOMB_X63_Y39_N16
\triUPCODE|F[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[4]~27_combout\ = (\triUPCODE|F[4]~26_combout\ & (!\unidadeControle|Li~q\ & (\triUPCODE|F[4]~25_combout\ & \triUPCODE|F[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triUPCODE|F[4]~26_combout\,
	datab => \unidadeControle|Li~q\,
	datac => \triUPCODE|F[4]~25_combout\,
	datad => \triUPCODE|F[4]~24_combout\,
	combout => \triUPCODE|F[4]~27_combout\);

-- Location: LCCOMB_X66_Y39_N16
\triUPCODE|F[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[5]~33_combout\ = (\triUPCODE|F[5]~32_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[5]~32_combout\,
	combout => \triUPCODE|F[5]~33_combout\);

-- Location: LCCOMB_X61_Y39_N18
\reg2|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[5]~feeder_combout\ = \triUPCODE|F[5]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[5]~33_combout\,
	combout => \reg2|Q[5]~feeder_combout\);

-- Location: FF_X61_Y39_N19
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[5]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: FF_X61_Y39_N23
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[5]~33_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: LCCOMB_X61_Y39_N22
\triUPCODE|F[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[5]~29_combout\ = (\unidadeControle|reg1out~q\ & (\reg1|Q\(5) & ((\reg2|Q\(5)) # (!\unidadeControle|reg2out~q\)))) # (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(5)) # ((!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1out~q\,
	datab => \reg2|Q\(5),
	datac => \reg1|Q\(5),
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[5]~29_combout\);

-- Location: LCCOMB_X64_Y39_N16
\UndLA|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~5_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[5]~32_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \unidadeControle|ULA\(2),
	datad => \triUPCODE|F[5]~32_combout\,
	combout => \UndLA|Add0~5_combout\);

-- Location: FF_X66_Y39_N17
\temp1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[5]~33_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(5));

-- Location: LCCOMB_X65_Y39_N28
\temp2|Q[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[5]~28_combout\ = ((\UndLA|Add0~5_combout\ $ (\temp1|Q\(5) $ (!\temp2|Q[4]~27\)))) # (GND)
-- \temp2|Q[5]~29\ = CARRY((\UndLA|Add0~5_combout\ & ((\temp1|Q\(5)) # (!\temp2|Q[4]~27\))) # (!\UndLA|Add0~5_combout\ & (\temp1|Q\(5) & !\temp2|Q[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~5_combout\,
	datab => \temp1|Q\(5),
	datad => VCC,
	cin => \temp2|Q[4]~27\,
	combout => \temp2|Q[5]~28_combout\,
	cout => \temp2|Q[5]~29\);

-- Location: LCCOMB_X66_Y39_N20
\UndLA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux10~0_combout\ = (\unidadeControle|ULA\(2) & ((\temp1|Q\(5)) # ((\triUPCODE|F[5]~32_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(5) & ((\triUPCODE|F[5]~32_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \temp1|Q\(5),
	datac => \triUPCODE|F[5]~32_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux10~0_combout\);

-- Location: FF_X65_Y39_N29
\temp2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[5]~28_combout\,
	asdata => \UndLA|Mux10~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(5));

-- Location: FF_X64_Y39_N23
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[5]~33_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: LCCOMB_X64_Y39_N22
\triUPCODE|F[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[5]~31_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(5) & ((\temp2|Q\(5)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(5)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \temp2|Q\(5),
	datac => \reg0|Q\(5),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[5]~31_combout\);

-- Location: LCCOMB_X64_Y38_N28
\reg4|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg4|Q[5]~feeder_combout\ = \triUPCODE|F[5]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[5]~33_combout\,
	combout => \reg4|Q[5]~feeder_combout\);

-- Location: FF_X64_Y38_N29
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg4|Q[5]~feeder_combout\,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: FF_X64_Y38_N11
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[5]~33_combout\,
	sload => VCC,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: LCCOMB_X64_Y38_N10
\triUPCODE|F[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[5]~30_combout\ = (\reg4|Q\(5) & (((\reg3|Q\(5)) # (!\unidadeControle|reg3out~q\)))) # (!\reg4|Q\(5) & (!\unidadeControle|reg4out~q\ & ((\reg3|Q\(5)) # (!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|Q\(5),
	datab => \unidadeControle|reg4out~q\,
	datac => \reg3|Q\(5),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[5]~30_combout\);

-- Location: LCCOMB_X64_Y39_N10
\triUPCODE|F[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[5]~32_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[5]~29_combout\ & (\triUPCODE|F[5]~31_combout\ & \triUPCODE|F[5]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[5]~29_combout\,
	datac => \triUPCODE|F[5]~31_combout\,
	datad => \triUPCODE|F[5]~30_combout\,
	combout => \triUPCODE|F[5]~32_combout\);

-- Location: LCCOMB_X64_Y39_N26
\UndLA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~6_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[6]~37_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \unidadeControle|ULA\(2),
	datad => \triUPCODE|F[6]~37_combout\,
	combout => \UndLA|Add0~6_combout\);

-- Location: LCCOMB_X66_Y39_N26
\triUPCODE|F[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[6]~38_combout\ = (\triUPCODE|F[6]~37_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[6]~37_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \triUPCODE|F[6]~38_combout\);

-- Location: FF_X66_Y39_N27
\temp1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[6]~38_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(6));

-- Location: LCCOMB_X65_Y39_N30
\temp2|Q[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[6]~30_combout\ = (\UndLA|Add0~6_combout\ & ((\temp1|Q\(6) & (\temp2|Q[5]~29\ & VCC)) # (!\temp1|Q\(6) & (!\temp2|Q[5]~29\)))) # (!\UndLA|Add0~6_combout\ & ((\temp1|Q\(6) & (!\temp2|Q[5]~29\)) # (!\temp1|Q\(6) & ((\temp2|Q[5]~29\) # (GND)))))
-- \temp2|Q[6]~31\ = CARRY((\UndLA|Add0~6_combout\ & (!\temp1|Q\(6) & !\temp2|Q[5]~29\)) # (!\UndLA|Add0~6_combout\ & ((!\temp2|Q[5]~29\) # (!\temp1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~6_combout\,
	datab => \temp1|Q\(6),
	datad => VCC,
	cin => \temp2|Q[5]~29\,
	combout => \temp2|Q[6]~30_combout\,
	cout => \temp2|Q[6]~31\);

-- Location: LCCOMB_X66_Y39_N2
\UndLA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux9~0_combout\ = (\temp1|Q\(6) & (((\triUPCODE|F[6]~37_combout\) # (\unidadeControle|ULA\(2))) # (!\triState0|F[0]~8_combout\))) # (!\temp1|Q\(6) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[6]~37_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(6),
	datab => \triState0|F[0]~8_combout\,
	datac => \triUPCODE|F[6]~37_combout\,
	datad => \unidadeControle|ULA\(2),
	combout => \UndLA|Mux9~0_combout\);

-- Location: FF_X65_Y39_N31
\temp2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[6]~30_combout\,
	asdata => \UndLA|Mux9~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(6));

-- Location: FF_X64_Y39_N25
\reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[6]~38_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: LCCOMB_X64_Y39_N24
\triUPCODE|F[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[6]~36_combout\ = (\temp2|Q\(6) & (((\reg0|Q\(6))) # (!\unidadeControle|reg0out~q\))) # (!\temp2|Q\(6) & (!\unidadeControle|aux2out~q\ & ((\reg0|Q\(6)) # (!\unidadeControle|reg0out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp2|Q\(6),
	datab => \unidadeControle|reg0out~q\,
	datac => \reg0|Q\(6),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[6]~36_combout\);

-- Location: FF_X63_Y39_N1
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[6]~38_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: LCCOMB_X60_Y39_N10
\reg3|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[6]~feeder_combout\ = \triUPCODE|F[6]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[6]~38_combout\,
	combout => \reg3|Q[6]~feeder_combout\);

-- Location: FF_X60_Y39_N11
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[6]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: LCCOMB_X63_Y39_N0
\triUPCODE|F[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[6]~35_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(6) & ((\reg3|Q\(6)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(6))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(6),
	datad => \reg3|Q\(6),
	combout => \triUPCODE|F[6]~35_combout\);

-- Location: LCCOMB_X61_Y39_N16
\reg2|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[6]~feeder_combout\ = \triUPCODE|F[6]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[6]~38_combout\,
	combout => \reg2|Q[6]~feeder_combout\);

-- Location: FF_X61_Y39_N17
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[6]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: FF_X61_Y39_N9
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[6]~38_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: LCCOMB_X61_Y39_N8
\triUPCODE|F[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[6]~34_combout\ = (\reg2|Q\(6) & (((\reg1|Q\(6)) # (!\unidadeControle|reg1out~q\)))) # (!\reg2|Q\(6) & (!\unidadeControle|reg2out~q\ & ((\reg1|Q\(6)) # (!\unidadeControle|reg1out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(6),
	datab => \unidadeControle|reg2out~q\,
	datac => \reg1|Q\(6),
	datad => \unidadeControle|reg1out~q\,
	combout => \triUPCODE|F[6]~34_combout\);

-- Location: LCCOMB_X64_Y39_N28
\triUPCODE|F[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[6]~37_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[6]~36_combout\ & (\triUPCODE|F[6]~35_combout\ & \triUPCODE|F[6]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[6]~36_combout\,
	datac => \triUPCODE|F[6]~35_combout\,
	datad => \triUPCODE|F[6]~34_combout\,
	combout => \triUPCODE|F[6]~37_combout\);

-- Location: LCCOMB_X62_Y38_N10
\triUPCODE|F[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[7]~43_combout\ = (\triUPCODE|F[7]~42_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[7]~42_combout\,
	combout => \triUPCODE|F[7]~43_combout\);

-- Location: FF_X64_Y38_N3
\reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[7]~43_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(7));

-- Location: FF_X64_Y38_N17
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[7]~43_combout\,
	sload => VCC,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: LCCOMB_X64_Y38_N16
\triUPCODE|F[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[7]~40_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(7) & ((\reg3|Q\(7)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(7)) # (!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg4|Q\(7),
	datac => \reg3|Q\(7),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[7]~40_combout\);

-- Location: LCCOMB_X61_Y39_N10
\reg2|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[7]~feeder_combout\ = \triUPCODE|F[7]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[7]~43_combout\,
	combout => \reg2|Q[7]~feeder_combout\);

-- Location: FF_X61_Y39_N11
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[7]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: FF_X61_Y39_N31
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[7]~43_combout\,
	sload => VCC,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: LCCOMB_X61_Y39_N30
\triUPCODE|F[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[7]~39_combout\ = (\unidadeControle|reg1out~q\ & (\reg1|Q\(7) & ((\reg2|Q\(7)) # (!\unidadeControle|reg2out~q\)))) # (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(7)) # ((!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg1out~q\,
	datab => \reg2|Q\(7),
	datac => \reg1|Q\(7),
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[7]~39_combout\);

-- Location: FF_X64_Y39_N7
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[7]~43_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

-- Location: LCCOMB_X65_Y38_N22
\UndLA|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~7_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[7]~42_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[7]~42_combout\,
	combout => \UndLA|Add0~7_combout\);

-- Location: FF_X62_Y38_N11
\temp1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[7]~43_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(7));

-- Location: LCCOMB_X65_Y38_N0
\temp2|Q[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[7]~32_combout\ = ((\UndLA|Add0~7_combout\ $ (\temp1|Q\(7) $ (!\temp2|Q[6]~31\)))) # (GND)
-- \temp2|Q[7]~33\ = CARRY((\UndLA|Add0~7_combout\ & ((\temp1|Q\(7)) # (!\temp2|Q[6]~31\))) # (!\UndLA|Add0~7_combout\ & (\temp1|Q\(7) & !\temp2|Q[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~7_combout\,
	datab => \temp1|Q\(7),
	datad => VCC,
	cin => \temp2|Q[6]~31\,
	combout => \temp2|Q[7]~32_combout\,
	cout => \temp2|Q[7]~33\);

-- Location: LCCOMB_X66_Y38_N8
\UndLA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux8~0_combout\ = (\unidadeControle|ULA\(2) & (((\temp1|Q\(7)) # (\triUPCODE|F[7]~42_combout\)) # (!\triState0|F[0]~8_combout\))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(7) & ((\triUPCODE|F[7]~42_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \unidadeControle|ULA\(2),
	datac => \temp1|Q\(7),
	datad => \triUPCODE|F[7]~42_combout\,
	combout => \UndLA|Mux8~0_combout\);

-- Location: FF_X65_Y38_N1
\temp2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[7]~32_combout\,
	asdata => \UndLA|Mux8~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(7));

-- Location: LCCOMB_X64_Y39_N6
\triUPCODE|F[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[7]~41_combout\ = (\unidadeControle|aux2out~q\ & (\temp2|Q\(7) & ((\reg0|Q\(7)) # (!\unidadeControle|reg0out~q\)))) # (!\unidadeControle|aux2out~q\ & (((\reg0|Q\(7))) # (!\unidadeControle|reg0out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|aux2out~q\,
	datab => \unidadeControle|reg0out~q\,
	datac => \reg0|Q\(7),
	datad => \temp2|Q\(7),
	combout => \triUPCODE|F[7]~41_combout\);

-- Location: LCCOMB_X65_Y38_N18
\triUPCODE|F[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[7]~42_combout\ = (\triUPCODE|F[7]~40_combout\ & (!\unidadeControle|Li~q\ & (\triUPCODE|F[7]~39_combout\ & \triUPCODE|F[7]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triUPCODE|F[7]~40_combout\,
	datab => \unidadeControle|Li~q\,
	datac => \triUPCODE|F[7]~39_combout\,
	datad => \triUPCODE|F[7]~41_combout\,
	combout => \triUPCODE|F[7]~42_combout\);

-- Location: LCCOMB_X64_Y38_N22
\triUPCODE|F[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[8]~48_combout\ = (\triUPCODE|F[8]~47_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[8]~47_combout\,
	combout => \triUPCODE|F[8]~48_combout\);

-- Location: FF_X64_Y38_N23
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[8]~48_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: FF_X64_Y38_N25
\reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[8]~48_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(8));

-- Location: LCCOMB_X64_Y38_N24
\triUPCODE|F[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[8]~45_combout\ = (\unidadeControle|reg3out~q\ & (\reg3|Q\(8) & ((\reg4|Q\(8)) # (!\unidadeControle|reg4out~q\)))) # (!\unidadeControle|reg3out~q\ & (((\reg4|Q\(8)) # (!\unidadeControle|reg4out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg3out~q\,
	datab => \reg3|Q\(8),
	datac => \reg4|Q\(8),
	datad => \unidadeControle|reg4out~q\,
	combout => \triUPCODE|F[8]~45_combout\);

-- Location: LCCOMB_X61_Y38_N12
\reg1|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[8]~feeder_combout\ = \triUPCODE|F[8]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[8]~48_combout\,
	combout => \reg1|Q[8]~feeder_combout\);

-- Location: FF_X61_Y38_N13
\reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[8]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(8));

-- Location: LCCOMB_X61_Y38_N24
\reg2|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[8]~feeder_combout\ = \triUPCODE|F[8]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[8]~48_combout\,
	combout => \reg2|Q[8]~feeder_combout\);

-- Location: FF_X61_Y38_N25
\reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[8]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(8));

-- Location: LCCOMB_X61_Y38_N16
\triUPCODE|F[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[8]~44_combout\ = (\reg1|Q\(8) & ((\reg2|Q\(8)) # ((!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(8) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(8)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(8),
	datab => \reg2|Q\(8),
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[8]~44_combout\);

-- Location: LCCOMB_X62_Y38_N2
\temp1|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[8]~feeder_combout\ = \triUPCODE|F[8]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[8]~48_combout\,
	combout => \temp1|Q[8]~feeder_combout\);

-- Location: FF_X62_Y38_N3
\temp1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp1|Q[8]~feeder_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(8));

-- Location: LCCOMB_X65_Y38_N20
\UndLA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~8_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[8]~47_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[8]~47_combout\,
	combout => \UndLA|Add0~8_combout\);

-- Location: LCCOMB_X65_Y38_N2
\temp2|Q[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[8]~34_combout\ = (\temp1|Q\(8) & ((\UndLA|Add0~8_combout\ & (\temp2|Q[7]~33\ & VCC)) # (!\UndLA|Add0~8_combout\ & (!\temp2|Q[7]~33\)))) # (!\temp1|Q\(8) & ((\UndLA|Add0~8_combout\ & (!\temp2|Q[7]~33\)) # (!\UndLA|Add0~8_combout\ & 
-- ((\temp2|Q[7]~33\) # (GND)))))
-- \temp2|Q[8]~35\ = CARRY((\temp1|Q\(8) & (!\UndLA|Add0~8_combout\ & !\temp2|Q[7]~33\)) # (!\temp1|Q\(8) & ((!\temp2|Q[7]~33\) # (!\UndLA|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(8),
	datab => \UndLA|Add0~8_combout\,
	datad => VCC,
	cin => \temp2|Q[7]~33\,
	combout => \temp2|Q[8]~34_combout\,
	cout => \temp2|Q[8]~35\);

-- Location: LCCOMB_X65_Y38_N26
\UndLA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux7~0_combout\ = (\temp1|Q\(8) & ((\unidadeControle|ULA\(2)) # ((\triUPCODE|F[8]~47_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\temp1|Q\(8) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[8]~47_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(8),
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[8]~47_combout\,
	combout => \UndLA|Mux7~0_combout\);

-- Location: FF_X65_Y38_N3
\temp2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[8]~34_combout\,
	asdata => \UndLA|Mux7~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(8));

-- Location: FF_X64_Y39_N13
\reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[8]~48_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(8));

-- Location: LCCOMB_X64_Y39_N12
\triUPCODE|F[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[8]~46_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(8) & ((\temp2|Q\(8)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(8)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \temp2|Q\(8),
	datac => \reg0|Q\(8),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[8]~46_combout\);

-- Location: LCCOMB_X65_Y38_N28
\triUPCODE|F[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[8]~47_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[8]~45_combout\ & (\triUPCODE|F[8]~44_combout\ & \triUPCODE|F[8]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[8]~45_combout\,
	datac => \triUPCODE|F[8]~44_combout\,
	datad => \triUPCODE|F[8]~46_combout\,
	combout => \triUPCODE|F[8]~47_combout\);

-- Location: LCCOMB_X63_Y38_N4
\triUPCODE|F[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[9]~53_combout\ = (\triUPCODE|F[9]~52_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triUPCODE|F[9]~52_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \triUPCODE|F[9]~53_combout\);

-- Location: FF_X62_Y38_N5
\temp1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[9]~53_combout\,
	sload => VCC,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(9));

-- Location: LCCOMB_X65_Y38_N24
\UndLA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~9_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[9]~52_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[9]~52_combout\,
	combout => \UndLA|Add0~9_combout\);

-- Location: LCCOMB_X65_Y38_N4
\temp2|Q[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[9]~36_combout\ = ((\temp1|Q\(9) $ (\UndLA|Add0~9_combout\ $ (!\temp2|Q[8]~35\)))) # (GND)
-- \temp2|Q[9]~37\ = CARRY((\temp1|Q\(9) & ((\UndLA|Add0~9_combout\) # (!\temp2|Q[8]~35\))) # (!\temp1|Q\(9) & (\UndLA|Add0~9_combout\ & !\temp2|Q[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(9),
	datab => \UndLA|Add0~9_combout\,
	datad => VCC,
	cin => \temp2|Q[8]~35\,
	combout => \temp2|Q[9]~36_combout\,
	cout => \temp2|Q[9]~37\);

-- Location: LCCOMB_X64_Y38_N6
\UndLA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux6~0_combout\ = (\temp1|Q\(9) & (((\unidadeControle|ULA\(2)) # (\triUPCODE|F[9]~52_combout\)) # (!\triState0|F[0]~8_combout\))) # (!\temp1|Q\(9) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[9]~52_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(9),
	datab => \triState0|F[0]~8_combout\,
	datac => \unidadeControle|ULA\(2),
	datad => \triUPCODE|F[9]~52_combout\,
	combout => \UndLA|Mux6~0_combout\);

-- Location: FF_X65_Y38_N5
\temp2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[9]~36_combout\,
	asdata => \UndLA|Mux6~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(9));

-- Location: FF_X63_Y38_N25
\reg0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[9]~53_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(9));

-- Location: LCCOMB_X63_Y38_N24
\triUPCODE|F[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[9]~51_combout\ = (\temp2|Q\(9) & (((\reg0|Q\(9)) # (!\unidadeControle|reg0out~q\)))) # (!\temp2|Q\(9) & (!\unidadeControle|aux2out~q\ & ((\reg0|Q\(9)) # (!\unidadeControle|reg0out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp2|Q\(9),
	datab => \unidadeControle|aux2out~q\,
	datac => \reg0|Q\(9),
	datad => \unidadeControle|reg0out~q\,
	combout => \triUPCODE|F[9]~51_combout\);

-- Location: LCCOMB_X62_Y38_N18
\reg3|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[9]~feeder_combout\ = \triUPCODE|F[9]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[9]~53_combout\,
	combout => \reg3|Q[9]~feeder_combout\);

-- Location: FF_X62_Y38_N19
\reg3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[9]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(9));

-- Location: FF_X63_Y38_N9
\reg4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[9]~53_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(9));

-- Location: LCCOMB_X63_Y38_N8
\triUPCODE|F[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[9]~50_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(9) & ((\reg3|Q\(9)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & ((\reg3|Q\(9)) # ((!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg3|Q\(9),
	datac => \reg4|Q\(9),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[9]~50_combout\);

-- Location: LCCOMB_X62_Y39_N24
\reg2|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[9]~feeder_combout\ = \triUPCODE|F[9]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[9]~53_combout\,
	combout => \reg2|Q[9]~feeder_combout\);

-- Location: FF_X62_Y39_N25
\reg2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[9]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(9));

-- Location: LCCOMB_X62_Y39_N8
\reg1|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[9]~feeder_combout\ = \triUPCODE|F[9]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[9]~53_combout\,
	combout => \reg1|Q[9]~feeder_combout\);

-- Location: FF_X62_Y39_N9
\reg1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[9]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(9));

-- Location: LCCOMB_X62_Y39_N20
\triUPCODE|F[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[9]~49_combout\ = (\reg2|Q\(9) & ((\reg1|Q\(9)) # ((!\unidadeControle|reg1out~q\)))) # (!\reg2|Q\(9) & (!\unidadeControle|reg2out~q\ & ((\reg1|Q\(9)) # (!\unidadeControle|reg1out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(9),
	datab => \reg1|Q\(9),
	datac => \unidadeControle|reg2out~q\,
	datad => \unidadeControle|reg1out~q\,
	combout => \triUPCODE|F[9]~49_combout\);

-- Location: LCCOMB_X63_Y38_N6
\triUPCODE|F[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[9]~52_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[9]~51_combout\ & (\triUPCODE|F[9]~50_combout\ & \triUPCODE|F[9]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[9]~51_combout\,
	datac => \triUPCODE|F[9]~50_combout\,
	datad => \triUPCODE|F[9]~49_combout\,
	combout => \triUPCODE|F[9]~52_combout\);

-- Location: LCCOMB_X66_Y39_N28
\triUPCODE|F[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[10]~58_combout\ = (\triUPCODE|F[10]~57_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[10]~57_combout\,
	combout => \triUPCODE|F[10]~58_combout\);

-- Location: FF_X63_Y39_N19
\reg4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[10]~58_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(10));

-- Location: LCCOMB_X60_Y39_N4
\reg3|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[10]~feeder_combout\ = \triUPCODE|F[10]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[10]~58_combout\,
	combout => \reg3|Q[10]~feeder_combout\);

-- Location: FF_X60_Y39_N5
\reg3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[10]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(10));

-- Location: LCCOMB_X63_Y39_N18
\triUPCODE|F[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[10]~55_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(10) & ((\reg3|Q\(10)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(10))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(10),
	datad => \reg3|Q\(10),
	combout => \triUPCODE|F[10]~55_combout\);

-- Location: LCCOMB_X65_Y38_N30
\UndLA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~10_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[10]~57_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[10]~57_combout\,
	combout => \UndLA|Add0~10_combout\);

-- Location: FF_X66_Y39_N29
\temp1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[10]~58_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(10));

-- Location: LCCOMB_X65_Y38_N6
\temp2|Q[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[10]~38_combout\ = (\UndLA|Add0~10_combout\ & ((\temp1|Q\(10) & (\temp2|Q[9]~37\ & VCC)) # (!\temp1|Q\(10) & (!\temp2|Q[9]~37\)))) # (!\UndLA|Add0~10_combout\ & ((\temp1|Q\(10) & (!\temp2|Q[9]~37\)) # (!\temp1|Q\(10) & ((\temp2|Q[9]~37\) # 
-- (GND)))))
-- \temp2|Q[10]~39\ = CARRY((\UndLA|Add0~10_combout\ & (!\temp1|Q\(10) & !\temp2|Q[9]~37\)) # (!\UndLA|Add0~10_combout\ & ((!\temp2|Q[9]~37\) # (!\temp1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~10_combout\,
	datab => \temp1|Q\(10),
	datad => VCC,
	cin => \temp2|Q[9]~37\,
	combout => \temp2|Q[10]~38_combout\,
	cout => \temp2|Q[10]~39\);

-- Location: LCCOMB_X64_Y38_N4
\UndLA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux5~0_combout\ = (\temp1|Q\(10) & (((\triUPCODE|F[10]~57_combout\) # (\unidadeControle|ULA\(2))) # (!\triState0|F[0]~8_combout\))) # (!\temp1|Q\(10) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[10]~57_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \temp1|Q\(10),
	datac => \triUPCODE|F[10]~57_combout\,
	datad => \unidadeControle|ULA\(2),
	combout => \UndLA|Mux5~0_combout\);

-- Location: FF_X65_Y38_N7
\temp2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[10]~38_combout\,
	asdata => \UndLA|Mux5~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(10));

-- Location: FF_X64_Y39_N15
\reg0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[10]~58_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(10));

-- Location: LCCOMB_X64_Y39_N14
\triUPCODE|F[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[10]~56_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(10) & ((\temp2|Q\(10)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(10)) # ((!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \temp2|Q\(10),
	datac => \reg0|Q\(10),
	datad => \unidadeControle|aux2out~q\,
	combout => \triUPCODE|F[10]~56_combout\);

-- Location: LCCOMB_X62_Y39_N22
\reg1|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[10]~feeder_combout\ = \triUPCODE|F[10]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[10]~58_combout\,
	combout => \reg1|Q[10]~feeder_combout\);

-- Location: FF_X62_Y39_N23
\reg1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[10]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(10));

-- Location: LCCOMB_X62_Y39_N14
\reg2|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[10]~feeder_combout\ = \triUPCODE|F[10]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[10]~58_combout\,
	combout => \reg2|Q[10]~feeder_combout\);

-- Location: FF_X62_Y39_N15
\reg2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[10]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(10));

-- Location: LCCOMB_X62_Y39_N6
\triUPCODE|F[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[10]~54_combout\ = (\reg1|Q\(10) & ((\reg2|Q\(10)) # ((!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(10) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(10)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(10),
	datab => \reg2|Q\(10),
	datac => \unidadeControle|reg2out~q\,
	datad => \unidadeControle|reg1out~q\,
	combout => \triUPCODE|F[10]~54_combout\);

-- Location: LCCOMB_X64_Y39_N30
\triUPCODE|F[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[10]~57_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[10]~55_combout\ & (\triUPCODE|F[10]~56_combout\ & \triUPCODE|F[10]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[10]~55_combout\,
	datac => \triUPCODE|F[10]~56_combout\,
	datad => \triUPCODE|F[10]~54_combout\,
	combout => \triUPCODE|F[10]~57_combout\);

-- Location: LCCOMB_X64_Y38_N2
\triUPCODE|F[11]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[11]~63_combout\ = (\triUPCODE|F[11]~62_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[11]~62_combout\,
	combout => \triUPCODE|F[11]~63_combout\);

-- Location: FF_X64_Y38_N9
\reg3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[11]~63_combout\,
	sload => VCC,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(11));

-- Location: FF_X64_Y38_N15
\reg4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[11]~63_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(11));

-- Location: LCCOMB_X64_Y38_N14
\triUPCODE|F[11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[11]~60_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(11) & ((\reg3|Q\(11)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & ((\reg3|Q\(11)) # ((!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg3|Q\(11),
	datac => \reg4|Q\(11),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[11]~60_combout\);

-- Location: LCCOMB_X61_Y38_N22
\reg1|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[11]~feeder_combout\ = \triUPCODE|F[11]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[11]~63_combout\,
	combout => \reg1|Q[11]~feeder_combout\);

-- Location: FF_X61_Y38_N23
\reg1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[11]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(11));

-- Location: LCCOMB_X61_Y38_N18
\reg2|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[11]~feeder_combout\ = \triUPCODE|F[11]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[11]~63_combout\,
	combout => \reg2|Q[11]~feeder_combout\);

-- Location: FF_X61_Y38_N19
\reg2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[11]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(11));

-- Location: LCCOMB_X61_Y38_N14
\triUPCODE|F[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[11]~59_combout\ = (\reg1|Q\(11) & ((\reg2|Q\(11)) # ((!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(11) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(11)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(11),
	datab => \reg2|Q\(11),
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[11]~59_combout\);

-- Location: LCCOMB_X64_Y38_N8
\UndLA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~11_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[11]~62_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[11]~62_combout\,
	combout => \UndLA|Add0~11_combout\);

-- Location: LCCOMB_X62_Y38_N20
\temp1|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[11]~feeder_combout\ = \triUPCODE|F[11]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[11]~63_combout\,
	combout => \temp1|Q[11]~feeder_combout\);

-- Location: FF_X62_Y38_N21
\temp1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp1|Q[11]~feeder_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(11));

-- Location: LCCOMB_X65_Y38_N8
\temp2|Q[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[11]~40_combout\ = ((\UndLA|Add0~11_combout\ $ (\temp1|Q\(11) $ (!\temp2|Q[10]~39\)))) # (GND)
-- \temp2|Q[11]~41\ = CARRY((\UndLA|Add0~11_combout\ & ((\temp1|Q\(11)) # (!\temp2|Q[10]~39\))) # (!\UndLA|Add0~11_combout\ & (\temp1|Q\(11) & !\temp2|Q[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~11_combout\,
	datab => \temp1|Q\(11),
	datad => VCC,
	cin => \temp2|Q[10]~39\,
	combout => \temp2|Q[11]~40_combout\,
	cout => \temp2|Q[11]~41\);

-- Location: LCCOMB_X64_Y38_N26
\UndLA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux4~0_combout\ = (\temp1|Q\(11) & ((\triUPCODE|F[11]~62_combout\) # ((\unidadeControle|ULA\(2)) # (!\triState0|F[0]~8_combout\)))) # (!\temp1|Q\(11) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[11]~62_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(11),
	datab => \triUPCODE|F[11]~62_combout\,
	datac => \unidadeControle|ULA\(2),
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux4~0_combout\);

-- Location: FF_X65_Y38_N9
\temp2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[11]~40_combout\,
	asdata => \UndLA|Mux4~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(11));

-- Location: FF_X63_Y38_N11
\reg0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[11]~63_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(11));

-- Location: LCCOMB_X63_Y38_N10
\triUPCODE|F[11]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[11]~61_combout\ = (\unidadeControle|aux2out~q\ & (\temp2|Q\(11) & ((\reg0|Q\(11)) # (!\unidadeControle|reg0out~q\)))) # (!\unidadeControle|aux2out~q\ & (((\reg0|Q\(11)) # (!\unidadeControle|reg0out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|aux2out~q\,
	datab => \temp2|Q\(11),
	datac => \reg0|Q\(11),
	datad => \unidadeControle|reg0out~q\,
	combout => \triUPCODE|F[11]~61_combout\);

-- Location: LCCOMB_X64_Y38_N20
\triUPCODE|F[11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[11]~62_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[11]~60_combout\ & (\triUPCODE|F[11]~59_combout\ & \triUPCODE|F[11]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[11]~60_combout\,
	datac => \triUPCODE|F[11]~59_combout\,
	datad => \triUPCODE|F[11]~61_combout\,
	combout => \triUPCODE|F[11]~62_combout\);

-- Location: LCCOMB_X62_Y38_N28
\triUPCODE|F[12]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[12]~68_combout\ = (\triUPCODE|F[12]~67_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[12]~67_combout\,
	combout => \triUPCODE|F[12]~68_combout\);

-- Location: LCCOMB_X66_Y38_N0
\reg1|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[12]~feeder_combout\ = \triUPCODE|F[12]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[12]~68_combout\,
	combout => \reg1|Q[12]~feeder_combout\);

-- Location: FF_X66_Y38_N1
\reg1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[12]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(12));

-- Location: LCCOMB_X66_Y38_N16
\reg2|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[12]~feeder_combout\ = \triUPCODE|F[12]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[12]~68_combout\,
	combout => \reg2|Q[12]~feeder_combout\);

-- Location: FF_X66_Y38_N17
\reg2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[12]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(12));

-- Location: LCCOMB_X66_Y38_N24
\triUPCODE|F[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[12]~64_combout\ = (\reg1|Q\(12) & ((\reg2|Q\(12)) # ((!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(12) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(12)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(12),
	datab => \reg2|Q\(12),
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[12]~64_combout\);

-- Location: FF_X63_Y38_N5
\reg0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[12]~68_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(12));

-- Location: FF_X62_Y38_N29
\temp1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[12]~68_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(12));

-- Location: LCCOMB_X66_Y38_N22
\UndLA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~12_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[12]~67_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[12]~67_combout\,
	combout => \UndLA|Add0~12_combout\);

-- Location: LCCOMB_X65_Y38_N10
\temp2|Q[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[12]~42_combout\ = (\temp1|Q\(12) & ((\UndLA|Add0~12_combout\ & (\temp2|Q[11]~41\ & VCC)) # (!\UndLA|Add0~12_combout\ & (!\temp2|Q[11]~41\)))) # (!\temp1|Q\(12) & ((\UndLA|Add0~12_combout\ & (!\temp2|Q[11]~41\)) # (!\UndLA|Add0~12_combout\ & 
-- ((\temp2|Q[11]~41\) # (GND)))))
-- \temp2|Q[12]~43\ = CARRY((\temp1|Q\(12) & (!\UndLA|Add0~12_combout\ & !\temp2|Q[11]~41\)) # (!\temp1|Q\(12) & ((!\temp2|Q[11]~41\) # (!\UndLA|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(12),
	datab => \UndLA|Add0~12_combout\,
	datad => VCC,
	cin => \temp2|Q[11]~41\,
	combout => \temp2|Q[12]~42_combout\,
	cout => \temp2|Q[12]~43\);

-- Location: LCCOMB_X66_Y38_N12
\UndLA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux3~0_combout\ = (\temp1|Q\(12) & ((\unidadeControle|ULA\(2)) # ((\triUPCODE|F[12]~67_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\temp1|Q\(12) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[12]~67_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(12),
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[12]~67_combout\,
	combout => \UndLA|Mux3~0_combout\);

-- Location: FF_X65_Y38_N11
\temp2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[12]~42_combout\,
	asdata => \UndLA|Mux3~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(12));

-- Location: LCCOMB_X63_Y38_N20
\triUPCODE|F[12]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[12]~66_combout\ = (\reg0|Q\(12) & ((\temp2|Q\(12)) # ((!\unidadeControle|aux2out~q\)))) # (!\reg0|Q\(12) & (!\unidadeControle|reg0out~q\ & ((\temp2|Q\(12)) # (!\unidadeControle|aux2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|Q\(12),
	datab => \temp2|Q\(12),
	datac => \unidadeControle|aux2out~q\,
	datad => \unidadeControle|reg0out~q\,
	combout => \triUPCODE|F[12]~66_combout\);

-- Location: LCCOMB_X62_Y38_N24
\reg3|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[12]~feeder_combout\ = \triUPCODE|F[12]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[12]~68_combout\,
	combout => \reg3|Q[12]~feeder_combout\);

-- Location: FF_X62_Y38_N25
\reg3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[12]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(12));

-- Location: FF_X63_Y38_N15
\reg4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[12]~68_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(12));

-- Location: LCCOMB_X63_Y38_N14
\triUPCODE|F[12]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[12]~65_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(12) & ((\reg3|Q\(12)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & ((\reg3|Q\(12)) # ((!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg3|Q\(12),
	datac => \reg4|Q\(12),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[12]~65_combout\);

-- Location: LCCOMB_X66_Y38_N2
\triUPCODE|F[12]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[12]~67_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[12]~64_combout\ & (\triUPCODE|F[12]~66_combout\ & \triUPCODE|F[12]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[12]~64_combout\,
	datac => \triUPCODE|F[12]~66_combout\,
	datad => \triUPCODE|F[12]~65_combout\,
	combout => \triUPCODE|F[12]~67_combout\);

-- Location: LCCOMB_X62_Y38_N22
\triUPCODE|F[13]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[13]~73_combout\ = (\triUPCODE|F[13]~72_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[13]~72_combout\,
	combout => \triUPCODE|F[13]~73_combout\);

-- Location: LCCOMB_X62_Y38_N30
\reg3|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[13]~feeder_combout\ = \triUPCODE|F[13]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[13]~73_combout\,
	combout => \reg3|Q[13]~feeder_combout\);

-- Location: FF_X62_Y38_N31
\reg3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[13]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(13));

-- Location: FF_X63_Y38_N1
\reg4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[13]~73_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(13));

-- Location: LCCOMB_X63_Y38_N0
\triUPCODE|F[13]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[13]~70_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(13) & ((\reg3|Q\(13)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & ((\reg3|Q\(13)) # ((!\unidadeControle|reg3out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \reg3|Q\(13),
	datac => \reg4|Q\(13),
	datad => \unidadeControle|reg3out~q\,
	combout => \triUPCODE|F[13]~70_combout\);

-- Location: FF_X62_Y38_N23
\temp1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[13]~73_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(13));

-- Location: LCCOMB_X66_Y38_N10
\UndLA|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~13_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[13]~72_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[13]~72_combout\,
	combout => \UndLA|Add0~13_combout\);

-- Location: LCCOMB_X65_Y38_N12
\temp2|Q[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[13]~44_combout\ = ((\temp1|Q\(13) $ (\UndLA|Add0~13_combout\ $ (!\temp2|Q[12]~43\)))) # (GND)
-- \temp2|Q[13]~45\ = CARRY((\temp1|Q\(13) & ((\UndLA|Add0~13_combout\) # (!\temp2|Q[12]~43\))) # (!\temp1|Q\(13) & (\UndLA|Add0~13_combout\ & !\temp2|Q[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(13),
	datab => \UndLA|Add0~13_combout\,
	datad => VCC,
	cin => \temp2|Q[12]~43\,
	combout => \temp2|Q[13]~44_combout\,
	cout => \temp2|Q[13]~45\);

-- Location: LCCOMB_X66_Y38_N20
\UndLA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux2~0_combout\ = (\temp1|Q\(13) & ((\unidadeControle|ULA\(2)) # ((\triUPCODE|F[13]~72_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\temp1|Q\(13) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[13]~72_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(13),
	datab => \unidadeControle|ULA\(2),
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[13]~72_combout\,
	combout => \UndLA|Mux2~0_combout\);

-- Location: FF_X65_Y38_N13
\temp2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[13]~44_combout\,
	asdata => \UndLA|Mux2~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(13));

-- Location: FF_X63_Y38_N27
\reg0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[13]~73_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(13));

-- Location: LCCOMB_X63_Y38_N26
\triUPCODE|F[13]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[13]~71_combout\ = (\unidadeControle|aux2out~q\ & (\temp2|Q\(13) & ((\reg0|Q\(13)) # (!\unidadeControle|reg0out~q\)))) # (!\unidadeControle|aux2out~q\ & (((\reg0|Q\(13)) # (!\unidadeControle|reg0out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|aux2out~q\,
	datab => \temp2|Q\(13),
	datac => \reg0|Q\(13),
	datad => \unidadeControle|reg0out~q\,
	combout => \triUPCODE|F[13]~71_combout\);

-- Location: LCCOMB_X66_Y38_N6
\reg1|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[13]~feeder_combout\ = \triUPCODE|F[13]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[13]~73_combout\,
	combout => \reg1|Q[13]~feeder_combout\);

-- Location: FF_X66_Y38_N7
\reg1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[13]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(13));

-- Location: LCCOMB_X66_Y38_N26
\reg2|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[13]~feeder_combout\ = \triUPCODE|F[13]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[13]~73_combout\,
	combout => \reg2|Q[13]~feeder_combout\);

-- Location: FF_X66_Y38_N27
\reg2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[13]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(13));

-- Location: LCCOMB_X66_Y38_N28
\triUPCODE|F[13]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[13]~69_combout\ = (\reg1|Q\(13) & (((\reg2|Q\(13)) # (!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(13) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(13)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(13),
	datab => \unidadeControle|reg1out~q\,
	datac => \reg2|Q\(13),
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[13]~69_combout\);

-- Location: LCCOMB_X66_Y38_N18
\triUPCODE|F[13]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[13]~72_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[13]~70_combout\ & (\triUPCODE|F[13]~71_combout\ & \triUPCODE|F[13]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[13]~70_combout\,
	datac => \triUPCODE|F[13]~71_combout\,
	datad => \triUPCODE|F[13]~69_combout\,
	combout => \triUPCODE|F[13]~72_combout\);

-- Location: LCCOMB_X62_Y38_N16
\triUPCODE|F[14]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[14]~78_combout\ = (\triUPCODE|F[14]~77_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[14]~77_combout\,
	combout => \triUPCODE|F[14]~78_combout\);

-- Location: FF_X63_Y38_N17
\reg0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[14]~78_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(14));

-- Location: LCCOMB_X64_Y38_N12
\UndLA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~14_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[14]~77_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \triState0|F[0]~8_combout\,
	datac => \unidadeControle|ULA\(2),
	datad => \triUPCODE|F[14]~77_combout\,
	combout => \UndLA|Add0~14_combout\);

-- Location: FF_X62_Y38_N17
\temp1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[14]~78_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(14));

-- Location: LCCOMB_X65_Y38_N14
\temp2|Q[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[14]~46_combout\ = (\UndLA|Add0~14_combout\ & ((\temp1|Q\(14) & (\temp2|Q[13]~45\ & VCC)) # (!\temp1|Q\(14) & (!\temp2|Q[13]~45\)))) # (!\UndLA|Add0~14_combout\ & ((\temp1|Q\(14) & (!\temp2|Q[13]~45\)) # (!\temp1|Q\(14) & ((\temp2|Q[13]~45\) # 
-- (GND)))))
-- \temp2|Q[14]~47\ = CARRY((\UndLA|Add0~14_combout\ & (!\temp1|Q\(14) & !\temp2|Q[13]~45\)) # (!\UndLA|Add0~14_combout\ & ((!\temp2|Q[13]~45\) # (!\temp1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~14_combout\,
	datab => \temp1|Q\(14),
	datad => VCC,
	cin => \temp2|Q[13]~45\,
	combout => \temp2|Q[14]~46_combout\,
	cout => \temp2|Q[14]~47\);

-- Location: LCCOMB_X63_Y38_N22
\UndLA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux1~0_combout\ = (\unidadeControle|ULA\(2) & ((\temp1|Q\(14)) # ((\triUPCODE|F[14]~77_combout\) # (!\triState0|F[0]~8_combout\)))) # (!\unidadeControle|ULA\(2) & (\temp1|Q\(14) & ((\triUPCODE|F[14]~77_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|ULA\(2),
	datab => \temp1|Q\(14),
	datac => \triUPCODE|F[14]~77_combout\,
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux1~0_combout\);

-- Location: FF_X65_Y38_N15
\temp2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[14]~46_combout\,
	asdata => \UndLA|Mux1~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(14));

-- Location: LCCOMB_X63_Y38_N16
\triUPCODE|F[14]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[14]~76_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(14) & ((\temp2|Q\(14)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & (((\temp2|Q\(14))) # (!\unidadeControle|aux2out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \unidadeControle|aux2out~q\,
	datac => \reg0|Q\(14),
	datad => \temp2|Q\(14),
	combout => \triUPCODE|F[14]~76_combout\);

-- Location: LCCOMB_X62_Y39_N12
\reg2|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[14]~feeder_combout\ = \triUPCODE|F[14]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[14]~78_combout\,
	combout => \reg2|Q[14]~feeder_combout\);

-- Location: FF_X62_Y39_N13
\reg2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[14]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(14));

-- Location: LCCOMB_X62_Y39_N4
\reg1|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[14]~feeder_combout\ = \triUPCODE|F[14]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[14]~78_combout\,
	combout => \reg1|Q[14]~feeder_combout\);

-- Location: FF_X62_Y39_N5
\reg1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[14]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(14));

-- Location: LCCOMB_X62_Y39_N16
\triUPCODE|F[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[14]~74_combout\ = (\reg2|Q\(14) & ((\reg1|Q\(14)) # ((!\unidadeControle|reg1out~q\)))) # (!\reg2|Q\(14) & (!\unidadeControle|reg2out~q\ & ((\reg1|Q\(14)) # (!\unidadeControle|reg1out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(14),
	datab => \reg1|Q\(14),
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[14]~74_combout\);

-- Location: FF_X63_Y38_N19
\reg4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[14]~78_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(14));

-- Location: LCCOMB_X62_Y38_N12
\reg3|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[14]~feeder_combout\ = \triUPCODE|F[14]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[14]~78_combout\,
	combout => \reg3|Q[14]~feeder_combout\);

-- Location: FF_X62_Y38_N13
\reg3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[14]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(14));

-- Location: LCCOMB_X63_Y38_N18
\triUPCODE|F[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[14]~75_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(14) & ((\reg3|Q\(14)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(14))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(14),
	datad => \reg3|Q\(14),
	combout => \triUPCODE|F[14]~75_combout\);

-- Location: LCCOMB_X63_Y38_N30
\triUPCODE|F[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[14]~77_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[14]~76_combout\ & (\triUPCODE|F[14]~74_combout\ & \triUPCODE|F[14]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[14]~76_combout\,
	datac => \triUPCODE|F[14]~74_combout\,
	datad => \triUPCODE|F[14]~75_combout\,
	combout => \triUPCODE|F[14]~77_combout\);

-- Location: LCCOMB_X62_Y38_N26
\triUPCODE|F[15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[15]~83_combout\ = (\triUPCODE|F[15]~82_combout\) # (!\triState0|F[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triState0|F[0]~8_combout\,
	datad => \triUPCODE|F[15]~82_combout\,
	combout => \triUPCODE|F[15]~83_combout\);

-- Location: FF_X63_Y38_N3
\reg0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[15]~83_combout\,
	sload => VCC,
	ena => \unidadeControle|reg0in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(15));

-- Location: LCCOMB_X64_Y38_N18
\UndLA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Add0~15_combout\ = \unidadeControle|ULA\(2) $ (((\triUPCODE|F[15]~82_combout\) # (!\triState0|F[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triState0|F[0]~8_combout\,
	datab => \unidadeControle|ULA\(2),
	datad => \triUPCODE|F[15]~82_combout\,
	combout => \UndLA|Add0~15_combout\);

-- Location: FF_X62_Y38_N27
\temp1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \triUPCODE|F[15]~83_combout\,
	ena => \unidadeControle|aux1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(15));

-- Location: LCCOMB_X65_Y38_N16
\temp2|Q[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp2|Q[15]~48_combout\ = \UndLA|Add0~15_combout\ $ (\temp1|Q\(15) $ (!\temp2|Q[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UndLA|Add0~15_combout\,
	datab => \temp1|Q\(15),
	cin => \temp2|Q[14]~47\,
	combout => \temp2|Q[15]~48_combout\);

-- Location: LCCOMB_X64_Y38_N30
\UndLA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UndLA|Mux0~0_combout\ = (\temp1|Q\(15) & ((\triUPCODE|F[15]~82_combout\) # ((\unidadeControle|ULA\(2)) # (!\triState0|F[0]~8_combout\)))) # (!\temp1|Q\(15) & (\unidadeControle|ULA\(2) & ((\triUPCODE|F[15]~82_combout\) # (!\triState0|F[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(15),
	datab => \triUPCODE|F[15]~82_combout\,
	datac => \unidadeControle|ULA\(2),
	datad => \triState0|F[0]~8_combout\,
	combout => \UndLA|Mux0~0_combout\);

-- Location: FF_X65_Y38_N17
\temp2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp2|Q[15]~48_combout\,
	asdata => \UndLA|Mux0~0_combout\,
	sload => \unidadeControle|ULA\(1),
	ena => \unidadeControle|aux2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(15));

-- Location: LCCOMB_X63_Y38_N2
\triUPCODE|F[15]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[15]~81_combout\ = (\unidadeControle|reg0out~q\ & (\reg0|Q\(15) & ((\temp2|Q\(15)) # (!\unidadeControle|aux2out~q\)))) # (!\unidadeControle|reg0out~q\ & (((\temp2|Q\(15))) # (!\unidadeControle|aux2out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg0out~q\,
	datab => \unidadeControle|aux2out~q\,
	datac => \reg0|Q\(15),
	datad => \temp2|Q\(15),
	combout => \triUPCODE|F[15]~81_combout\);

-- Location: LCCOMB_X62_Y39_N30
\reg1|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[15]~feeder_combout\ = \triUPCODE|F[15]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[15]~83_combout\,
	combout => \reg1|Q[15]~feeder_combout\);

-- Location: FF_X62_Y39_N31
\reg1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg1|Q[15]~feeder_combout\,
	ena => \unidadeControle|reg1in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(15));

-- Location: LCCOMB_X62_Y39_N2
\reg2|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[15]~feeder_combout\ = \triUPCODE|F[15]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \triUPCODE|F[15]~83_combout\,
	combout => \reg2|Q[15]~feeder_combout\);

-- Location: FF_X62_Y39_N3
\reg2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg2|Q[15]~feeder_combout\,
	ena => \unidadeControle|reg2in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(15));

-- Location: LCCOMB_X62_Y39_N26
\triUPCODE|F[15]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[15]~79_combout\ = (\reg1|Q\(15) & ((\reg2|Q\(15)) # ((!\unidadeControle|reg2out~q\)))) # (!\reg1|Q\(15) & (!\unidadeControle|reg1out~q\ & ((\reg2|Q\(15)) # (!\unidadeControle|reg2out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(15),
	datab => \reg2|Q\(15),
	datac => \unidadeControle|reg1out~q\,
	datad => \unidadeControle|reg2out~q\,
	combout => \triUPCODE|F[15]~79_combout\);

-- Location: FF_X63_Y38_N13
\reg4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \triUPCODE|F[15]~83_combout\,
	sload => VCC,
	ena => \unidadeControle|reg4in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(15));

-- Location: LCCOMB_X62_Y38_N14
\reg3|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[15]~feeder_combout\ = \triUPCODE|F[15]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \triUPCODE|F[15]~83_combout\,
	combout => \reg3|Q[15]~feeder_combout\);

-- Location: FF_X62_Y38_N15
\reg3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|Q[15]~feeder_combout\,
	ena => \unidadeControle|reg3in~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(15));

-- Location: LCCOMB_X63_Y38_N12
\triUPCODE|F[15]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[15]~80_combout\ = (\unidadeControle|reg4out~q\ & (\reg4|Q\(15) & ((\reg3|Q\(15)) # (!\unidadeControle|reg3out~q\)))) # (!\unidadeControle|reg4out~q\ & (((\reg3|Q\(15))) # (!\unidadeControle|reg3out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|reg4out~q\,
	datab => \unidadeControle|reg3out~q\,
	datac => \reg4|Q\(15),
	datad => \reg3|Q\(15),
	combout => \triUPCODE|F[15]~80_combout\);

-- Location: LCCOMB_X63_Y38_N28
\triUPCODE|F[15]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \triUPCODE|F[15]~82_combout\ = (!\unidadeControle|Li~q\ & (\triUPCODE|F[15]~81_combout\ & (\triUPCODE|F[15]~79_combout\ & \triUPCODE|F[15]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidadeControle|Li~q\,
	datab => \triUPCODE|F[15]~81_combout\,
	datac => \triUPCODE|F[15]~79_combout\,
	datad => \triUPCODE|F[15]~80_combout\,
	combout => \triUPCODE|F[15]~82_combout\);

ww_Li <= \Li~output_o\;

ww_ULA(2) <= \ULA[2]~output_o\;

ww_ULA(1) <= \ULA[1]~output_o\;

ww_ULA(0) <= \ULA[0]~output_o\;

ww_R0test(0) <= \R0test[0]~output_o\;

ww_R0test(1) <= \R0test[1]~output_o\;

ww_R0test(2) <= \R0test[2]~output_o\;

ww_R0test(3) <= \R0test[3]~output_o\;

ww_R0test(4) <= \R0test[4]~output_o\;

ww_R0test(5) <= \R0test[5]~output_o\;

ww_R0test(6) <= \R0test[6]~output_o\;

ww_R0test(7) <= \R0test[7]~output_o\;

ww_R0test(8) <= \R0test[8]~output_o\;

ww_R0test(9) <= \R0test[9]~output_o\;

ww_R0test(10) <= \R0test[10]~output_o\;

ww_R0test(11) <= \R0test[11]~output_o\;

ww_R0test(12) <= \R0test[12]~output_o\;

ww_R0test(13) <= \R0test[13]~output_o\;

ww_R0test(14) <= \R0test[14]~output_o\;

ww_R0test(15) <= \R0test[15]~output_o\;

ww_R1test(0) <= \R1test[0]~output_o\;

ww_R1test(1) <= \R1test[1]~output_o\;

ww_R1test(2) <= \R1test[2]~output_o\;

ww_R1test(3) <= \R1test[3]~output_o\;

ww_R1test(4) <= \R1test[4]~output_o\;

ww_R1test(5) <= \R1test[5]~output_o\;

ww_R1test(6) <= \R1test[6]~output_o\;

ww_R1test(7) <= \R1test[7]~output_o\;

ww_R1test(8) <= \R1test[8]~output_o\;

ww_R1test(9) <= \R1test[9]~output_o\;

ww_R1test(10) <= \R1test[10]~output_o\;

ww_R1test(11) <= \R1test[11]~output_o\;

ww_R1test(12) <= \R1test[12]~output_o\;

ww_R1test(13) <= \R1test[13]~output_o\;

ww_R1test(14) <= \R1test[14]~output_o\;

ww_R1test(15) <= \R1test[15]~output_o\;

ww_R2test(0) <= \R2test[0]~output_o\;

ww_R2test(1) <= \R2test[1]~output_o\;

ww_R2test(2) <= \R2test[2]~output_o\;

ww_R2test(3) <= \R2test[3]~output_o\;

ww_R2test(4) <= \R2test[4]~output_o\;

ww_R2test(5) <= \R2test[5]~output_o\;

ww_R2test(6) <= \R2test[6]~output_o\;

ww_R2test(7) <= \R2test[7]~output_o\;

ww_R2test(8) <= \R2test[8]~output_o\;

ww_R2test(9) <= \R2test[9]~output_o\;

ww_R2test(10) <= \R2test[10]~output_o\;

ww_R2test(11) <= \R2test[11]~output_o\;

ww_R2test(12) <= \R2test[12]~output_o\;

ww_R2test(13) <= \R2test[13]~output_o\;

ww_R2test(14) <= \R2test[14]~output_o\;

ww_R2test(15) <= \R2test[15]~output_o\;

ww_R3test(0) <= \R3test[0]~output_o\;

ww_R3test(1) <= \R3test[1]~output_o\;

ww_R3test(2) <= \R3test[2]~output_o\;

ww_R3test(3) <= \R3test[3]~output_o\;

ww_R3test(4) <= \R3test[4]~output_o\;

ww_R3test(5) <= \R3test[5]~output_o\;

ww_R3test(6) <= \R3test[6]~output_o\;

ww_R3test(7) <= \R3test[7]~output_o\;

ww_R3test(8) <= \R3test[8]~output_o\;

ww_R3test(9) <= \R3test[9]~output_o\;

ww_R3test(10) <= \R3test[10]~output_o\;

ww_R3test(11) <= \R3test[11]~output_o\;

ww_R3test(12) <= \R3test[12]~output_o\;

ww_R3test(13) <= \R3test[13]~output_o\;

ww_R3test(14) <= \R3test[14]~output_o\;

ww_R3test(15) <= \R3test[15]~output_o\;

ww_R4test(0) <= \R4test[0]~output_o\;

ww_R4test(1) <= \R4test[1]~output_o\;

ww_R4test(2) <= \R4test[2]~output_o\;

ww_R4test(3) <= \R4test[3]~output_o\;

ww_R4test(4) <= \R4test[4]~output_o\;

ww_R4test(5) <= \R4test[5]~output_o\;

ww_R4test(6) <= \R4test[6]~output_o\;

ww_R4test(7) <= \R4test[7]~output_o\;

ww_R4test(8) <= \R4test[8]~output_o\;

ww_R4test(9) <= \R4test[9]~output_o\;

ww_R4test(10) <= \R4test[10]~output_o\;

ww_R4test(11) <= \R4test[11]~output_o\;

ww_R4test(12) <= \R4test[12]~output_o\;

ww_R4test(13) <= \R4test[13]~output_o\;

ww_R4test(14) <= \R4test[14]~output_o\;

ww_R4test(15) <= \R4test[15]~output_o\;

ww_Bustest(0) <= \Bustest[0]~output_o\;

ww_Bustest(1) <= \Bustest[1]~output_o\;

ww_Bustest(2) <= \Bustest[2]~output_o\;

ww_Bustest(3) <= \Bustest[3]~output_o\;

ww_Bustest(4) <= \Bustest[4]~output_o\;

ww_Bustest(5) <= \Bustest[5]~output_o\;

ww_Bustest(6) <= \Bustest[6]~output_o\;

ww_Bustest(7) <= \Bustest[7]~output_o\;

ww_Bustest(8) <= \Bustest[8]~output_o\;

ww_Bustest(9) <= \Bustest[9]~output_o\;

ww_Bustest(10) <= \Bustest[10]~output_o\;

ww_Bustest(11) <= \Bustest[11]~output_o\;

ww_Bustest(12) <= \Bustest[12]~output_o\;

ww_Bustest(13) <= \Bustest[13]~output_o\;

ww_Bustest(14) <= \Bustest[14]~output_o\;

ww_Bustest(15) <= \Bustest[15]~output_o\;

ww_R0intest <= \R0intest~output_o\;

ww_R1intest <= \R1intest~output_o\;

ww_R2intest <= \R2intest~output_o\;

ww_R3intest <= \R3intest~output_o\;

ww_R4intest <= \R4intest~output_o\;

ww_R0outtest <= \R0outtest~output_o\;

ww_R1outtest <= \R1outtest~output_o\;

ww_R2outtest <= \R2outtest~output_o\;

ww_R3outtest <= \R3outtest~output_o\;

ww_R4outtest <= \R4outtest~output_o\;
END structure;


